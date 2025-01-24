# Admin Cookie Exploit

While inspecting the site storage, we find the cookie `I_am_admin` with the value `68934a3e9455fa72420237eb05902327`. After some research, we discover that this is an MD5 hash, which is known for its vulnerabilities, including the ease of finding the original value for certain hashes.

We quickly find that `68934a3e9455fa72420237eb05902327` corresponds to `false`. Similarly, we find that `true` is represented by `b326b5062b2f0e69046810717534cb09`.

[MD5 Decrypt](https://md5decrypt.net/)

By changing the cookie value to the hash for `true`, we gain admin access.