# XSS Advanced

On the feedback page, the field to enter your name is not protected against XSS (Cross-Site Scripting) injections.

This means that any JavaScript code entered in this field will be accepted and executed. For example:
```html
<script>alert("TEST");</script>
```

## How to prevent?
Sanitize the frontend and backend with reliable libraries
