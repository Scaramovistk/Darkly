# Inspecting the Albatros Page

While inspecting the Albatros page, we found two comments that said:
- "You must come from: `https://www.nsa.gov/`."
- "Let's use this browser: `ft_bornToSec`. It will help you a lot."

We made a request to the page, changing the referrer and the browser user agent:

```sh
curl -H "User-Agent: ft_bornToSec" -H "Referer: https://www.nsa.gov/" http://10.10.250.159/?page=b7e44c7a40c5f80139f0a50f3650fb2bd8d00b0d24667c4c2ca32c88e13b758f
```

We found the flag on the page.
