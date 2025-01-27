# URI Injection

URI Injection occurs when variables (src=) in the URI can be manipulated to inject malicious code into the server. For example, the following URL can be exploited to execute arbitrary JavaScript code:

```html
http://xxx.x.x.x:1080/?page=media&src=nsa
```

```html
http://xxx.x.x.x:1080/index.php?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydCgnb2xhJyk8L3NjcmlwdD4=
```

## How to prevent?
1. **Validating Input:** Ensure that all input data conforms to expected formats and types.
2. **Escaping Output:** Properly escape any data that is included in the HTML output to prevent script execution.
3. **Using Security Libraries:** Utilize libraries and frameworks that provide built-in protection against XSS and other injection 