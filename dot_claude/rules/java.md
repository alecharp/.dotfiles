# Java

## Code

- prefer `Optional` and checked exceptions over nulls or unchecked exceptions

## Logging

- Logback
- `WARN` for caught exceptions
- `INFO` for branching decisions
- `DEBUG` only when actively debugging

## Conventions

- type-based package structure (e.g. `service/`, `controller/`, `repository/`)
- test classes follow Maven Surefire (`*Test.java`, `Test*.java`, `*Tests.java`) and Failsafe (`*IT.java`, `IT*.java`) naming patterns

## Testing

- run `mvn verify` before committing
- run a single test with `mvn verify -Dtest=<ClassName>` when possible
- JUnit 5 when already configured by the project, JUnit 4 otherwise
- AssertJ for assertions when already configured by the project, Hamcrest otherwise
