# Java

## Code

- prefer `Optional` and checked exceptions over nulls or unchecked exceptions
- streams over loops for collection processing
- immutable objects: records, final fields, no setters
- lambdas and method references over anonymous classes
- builder pattern for object construction (especially multi-field DTOs)
- fluent API chains (`this.do().andThis()`) over sequential calls (`this.do(); this.andThis()`)

## Logging

- match the project's existing logging setup; default to SLF4J API if none configured
- `ERROR` for unrecoverable failures or errors requiring operator attention
- `WARN` for handled exceptions and degraded-but-functional states (fallback used, retry triggered)
- `INFO` for significant business events and lifecycle transitions (job started, user authenticated, integration called)
- `DEBUG` for request/response payloads, internal state, and detailed flow in complex paths — always present, filtered by config; use SLF4J fluent API (`logger.atDebug().log(...)`) for lazy evaluation

## Conventions

- always use explicit imports; never use star imports (`import foo.*`) or fully qualified class names inline
- type-based package structure (e.g. `service/`, `controller/`, `repository/`)
- test classes follow Maven Surefire (`*Test.java`, `Test*.java`, `*Tests.java`) and Failsafe (`*IT.java`, `IT*.java`) naming patterns

## Testing

- run `mvn verify` before committing
- run a single test with `mvn verify -Dtest=<ClassName>` when possible
- JUnit 5 when already configured by the project, JUnit 4 otherwise
- AssertJ for assertions when already configured by the project, Hamcrest otherwise
