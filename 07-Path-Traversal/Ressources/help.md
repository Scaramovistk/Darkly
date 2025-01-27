# Directory Traversal Vulnerability

When trying to navigate in the server directories, we find that it is not protected against directory traversal attacks. This allows an attacker to access sensitive files on the server.

For example, the following URL can be used to access the `/etc/passwd` file:

```html
https://xxx.xxx.xxx.xxx/?page=../../../../../../../etc/passwd
```

## How to Prevent Directory Traversal

To prevent directory traversal attacks, it is essential to:

1. **Validate Input:** Ensure that all input data conforms to expected formats and types.
2. **Sanitize Input:** Remove any potentially dangerous characters or patterns from user input.
3. **Use Whitelisting:** Only allow specific, known-safe file paths and names.

By implementing these measures, you can significantly reduce the risk of directory traversal vulnerabilities in your application.
```