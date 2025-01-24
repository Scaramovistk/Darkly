# Password Recovery Vulnerability

When the password is not found, the site offers to send a recovery email. We notice that the email link is directly in the page:

```html
<input type="hidden" name="mail" value="webmaster@borntosec.com" maxlength="15">
```

By changing the value and clicking submit, we can find the flag.

## Risk Explanation

This vulnerability allows an attacker to manipulate the email address used for password recovery, potentially leading to unauthorized access to user accounts.