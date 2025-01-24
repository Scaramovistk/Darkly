# Using Dirb to Find Hidden Pages

We used the tool `dirb` to test requests on a URL to discover hidden pages. This allowed us to find two hidden pages: `/admin` and `/whatever/htpasswd`.

On the `/whatever/htpasswd` page, we found the following credentials:

```
root:437394baff5aa33daa618be47b75cb49
```

By entering `437394baff5aa33daa618be47b75cb49` on [MD5 Decrypt](https://md5decrypt.net/), we found the password `qwerty123@`.

Next, we navigated to the `/admin` page and logged in with the username `root` and the password `qwerty123@`, which revealed the flag.