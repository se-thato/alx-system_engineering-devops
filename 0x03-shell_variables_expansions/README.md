# 0x03. Shell, init files, variables and expansions

## Task: 0-alias

### Description

This task demonstrates how to create a script that defines an alias in a shell environment.

### Filename

`0-alias`

### Objective

Create a shell script that defines a new alias.

### Alias Details

- **Name:** `ls`
- **Value:** `rm *`

This means after sourcing the script, running `ls` will actually execute `rm *`, which removes all files in the current directory.

⚠️**WARNING:** This alias is dangerous. It will delete all files in the directory. Use it only for learning purposes in a safe environment like `/tmp`.

### Usage

1. Navigate to the directory:
   ```bash
   cd /tmp
