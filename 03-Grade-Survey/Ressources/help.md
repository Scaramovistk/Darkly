# Grade Manipulation Vulnerability

An attacker can manipulate the POST request to change the value in the grade field to any number of their choice. This can lead to unauthorized grade changes.

## How to Prevent Grade Manipulation

1. **Validate Input:** Ensure that all input data conforms to expected formats and types.
2. **Use Server-Side Validation:** Check and enforce the validity of the grade values on the backend.
