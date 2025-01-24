# Finding the Hidden Key

By accessing `/robots.txt`, we discovered a hidden folder named `.hidden`. Inside this folder, there was a complex directory structure, with each directory containing another set of directories, and so on. Each directory contained a README file, all of which were 34 bytes in size.

We noticed that the directory names were the same in each structure. Therefore, we compiled all these directory names into a file called `word-list.txt` and used `dirb` to explore the files more efficiently with the following command:

```
dirb http://xx.xx.xx.xx/.hidden/ word-list.txt | grep README | grep -v 34
```

This command helped us find the unique README file that was not 34 bytes in size (`/.hidden/whtccjokayshttvxycsvykxcfm/igeemtxnvexvxezqwntmzjltkt/lmpanswobhwcozdqixbowvbrhw`). Inside this file, we found the key.