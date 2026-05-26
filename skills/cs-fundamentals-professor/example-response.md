# Example response (reference only)

Use this shape when teaching. Adapt facts to the user's actual code—this example is illustrative.

**User prompt:** "Cursor added Redis for rate limiting—why?"

---

### 1. The Fundamental Concept

Rate limiting is a **distributed counting** problem. Each server could keep a local counter, but a client could exceed the limit by spreading requests across instances. You need a counter that every instance reads and updates **atomically**, with latency low enough to sit on the hot request path—faster than a disk-backed database for this job.

### 2. Mental Model / Data Flow

```text
[User Request] ──> [ Load Balancer ]
                        │
         ┌──────────────┴──────────────┐
         ▼                             ▼
   [ Server A ]                  [ Server B ]
         │                             │
         └───────► [ REDIS ] ◄─────────┘
              (Atomic INCR / EXPIRE)
              "Is User X > 100 req/min?"
```

### 3. Trade-Off Analysis

- **Why Redis here:** In-memory key operations are typically **O(1)** per check—sub-millisecond on a LAN—so rate limiting does not dominate request latency.
- **Trade-off:** You introduced **operational dependency**. If Redis is down, do you fail closed (block traffic) or fail open (allow traffic)? Many apps fail open for UX; security-sensitive APIs fail closed.
- **At 100× scale:** Hot keys (one IP or one API key) can become a **single-shard bottleneck**; you may shard counters, use local token buckets with sync, or move to a dedicated edge rate limiter.
- **vs PostgreSQL:** A relational row update per request adds lock/contention risk under concurrent increments from many workers; Redis `INCR` + `EXPIRE` is built for this access pattern.

### 4. Code Context

In your `middleware.ts` (example):

```ts
const [count] = await redis.multi().incr(ip).expire(ip, 60).exec();
```

`MULTI`/`EXEC` batches increment and TTL so they run as one **atomic** unit—reducing races where the key exists without expiry or expires before the count reflects the window.

### 5. Professor's Pop Quiz

If two requests from the same IP hit Server A and Server B in the same millisecond, why can a naive per-request `SELECT … UPDATE` counter in PostgreSQL create correctness or contention issues that a centralized Redis `INCR` avoids?

---

*(Stop here. Do not answer the quiz until the user responds.)*
