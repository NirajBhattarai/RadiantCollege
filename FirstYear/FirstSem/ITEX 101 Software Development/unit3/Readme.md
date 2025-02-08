# Command-Line Utilities

## PWD

**Definition:**
- The `pwd` command stands for "print working directory." It outputs the full path of the current working directory.

**Syntax:**
- `pwd`

**Example:**
- `pwd`
- Output: 
  ```
  /home/user/project
  ```

## LS

**Definition:**
- The `ls` command is the most frequently used command in Linux to list directories.

**Syntax:**
- `ls [option] [directory]`

**Examples:**
- `ls`
  - Output: `file1.txt file2.txt`
  - Description: Lists files and directories in the current directory.
- `ls -l`
  - Output: 
    ```
    -rw-r--r-- 1 user group 1234 Jan 01 12:34 file1.txt
    -rw-r--r-- 1 user group 5678 Jan 01 12:34 file2.txt
    ```
  - Description: Lists files and directories in long format, showing permissions, number of links, owner, group, size, and timestamp.
- `ls -a`
  - Output: 
    ```
    .  ..  .hiddenfile  file1.txt  file2.txt
    ```
  - Description: Lists all files and directories, including hidden files (those starting with a dot).
- `ls -lh`
  - Output: 
    ```
    -rw-r--r-- 1 user group 1.2K Jan 01 12:34 file1.txt
    -rw-r--r-- 1 user group 5.6K Jan 01 12:34 file2.txt
    ```
  - Description: Lists files and directories in long format with human-readable file sizes.
- `ls -R`
  - Output: 
    ```
    .:
    file1.txt  file2.txt  subdir/

    ./subdir:
    file3.txt
    ```
  - Description: Lists all files and directories recursively, including those in subdirectories.

## CD

**Definition:**
- The `cd` command is used to navigate through directories.

**Syntax:**
- `cd <directory>`

**Examples:**
- `cd Documents`
  - Output: `Navigated to /home/user/Documents`
  - Description: Changes the current directory to `Documents` within the current path.
- `cd ..`
  - Output: `Navigated to /home/user`
  - Description: Moves up one directory level.
- `cd /`
  - Output: `Navigated to root directory`
  - Description: Changes the current directory to the root directory.
- `cd ~`
  - Output: `Navigated to /home/user`
  - Description: Changes the current directory to the user's home directory.
- `cd -`
  - Output: `Navigated to previous directory`
  - Description: Switches back to the last directory you were in.

## MKDIR

**Definition:**
- The `mkdir` command is used to create directories.

**Syntax:**
- `mkdir [option] <directory>`

**Examples:**
- `mkdir new_directory`
  - Output: `Created new_directory`
  - Description: Creates a new directory named `new_directory` in the current path.
- `mkdir -p /path/to/new_directory`
  - Output: `Created /path/to/new_directory`
  - Description: Creates a new directory and any necessary parent directories specified in the path.
- `mkdir -v new_directory`
  - Output: `mkdir: created directory 'new_directory'`
  - Description: Creates a new directory and provides verbose output.

## MV

**Definition:**
- The `mv` command is used to move or rename files.

**Syntax:**
- `mv <source> <destination>`

**Examples:**
- `mv file1.txt Documents`
  - Output: `Moved file1.txt to /home/user/Documents`
  - Description: Moves `file1.txt` to the `Documents` directory.
- `mv file1.txt file2.txt`
  - Output: `Renamed file1.txt to file2.txt`
  - Description: Renames `file1.txt` to `file2.txt` in the current directory.
- `mv -i file1.txt Documents`
  - Output: `Prompt before overwriting file1.txt in Documents`
  - Description: Moves `file1.txt` to `Documents`, prompting before overwriting any existing file.
- `mv *.txt backup/`
  - Output: `Moved all .txt files to backup directory`
  - Description: Moves all text files in the current directory to the `backup` directory.
- `mv -v file1.txt Documents`
  - Output: `file1.txt -> Documents/file1.txt`
  - Description: Moves `file1.txt` to `Documents` with verbose output showing the move operation.

## CP

**Definition:**
- The `cp` command is used for copying files and directories.

**Syntax:**
- `cp [option] <source> <destination>`

**Examples:**
- `cp file1.txt Documents`
  - Output: `Copied file1.txt to /home/user/Documents`
  - Description: Copies `file1.txt` to the `Documents` directory.
- `cp file1.txt file2.txt`
  - Output: `Copied file1.txt to file2.txt`
  - Description: Copies `file1.txt` to `file2.txt`, effectively duplicating the file.
- `cp -i file1.txt Documents`
  - Output: `Prompt before overwriting file1.txt in Documents`
  - Description: Copies `file1.txt` to `Documents`, prompting before overwriting any existing file.
- `cp -r dir1/ dir2/`
  - Output: `Copied directory dir1 to dir2`
  - Description: Recursively copies the directory `dir1` and its contents to `dir2`.
- `cp -v file1.txt Documents`
  - Output: `file1.txt -> Documents/file1.txt`
  - Description: Copies `file1.txt` to `Documents` with verbose output showing the copy operation.

## RM

**Definition:**
- The `rm` command is used to delete files or directories.

**Syntax:**
- `rm [option] <file>`

**Examples:**
- `rm file1.txt`
  - Output: `Removed file1.txt`
  - Description: Deletes the file `file1.txt`.
- `rm -i file1.txt`
  - Output: `Prompt before removing file1.txt`
  - Description: Deletes `file1.txt` with a prompt for confirmation.
- `rm -f file1.txt`
  - Output: `Removed file1.txt without prompt`
  - Description: Forcefully deletes `file1.txt` without any prompt.
- `rm -r directory/`
  - Output: `Removed directory and its contents`
  - Description: Recursively deletes the directory `directory` and all its contents.
- `rm -rf directory/`
  - Output: `Forcefully removed directory and its contents`
  - Description: Forcefully and recursively deletes the directory `directory` and all its contents without any prompts.

## TOUCH

**Definition:**
- The `touch` command is used to create blank/empty files or update the timestamps of existing files.

**Syntax:**
- `touch [option] <file>`

**Examples:**
- `touch new_file.txt`
  - Output: `Created new_file.txt`
  - Description: Creates a new, empty file named `new_file.txt`.
- `touch -c existing_file.txt`
  - Output: `No output if file does not exist`
  - Description: Updates the timestamp of `existing_file.txt` without creating it if it doesn't exist.
- `touch -a file1.txt`
  - Output: `Updated access time of file1.txt`
  - Description: Updates only the access time of `file1.txt`.
- `touch -m file1.txt`
  - Output: `Updated modification time of file1.txt`
  - Description: Updates only the modification time of `file1.txt`.
- `touch -t 202310101200 file1.txt`
  - Output: `Set timestamp of file1.txt to Oct 10, 2023, 12:00`
  - Description: Sets the access and modification times of `file1.txt` to a specific date and time.


## CLEAR

**Definition:**
- The `clear` command clears the terminal display, removing all previous commands and outputs from view.

**Syntax:**
- `clear`

**Examples:**
- `clear`
  - Output: `Terminal display cleared`
  - Description: Clears the terminal screen, providing a clean workspace for new commands.
- `clear && echo "Screen cleared"`
  - Output: `Screen cleared`
  - Description: Clears the terminal and then prints a confirmation message.
- `alias cls='clear'`
  - Output: `Created alias cls for clear`
  - Description: Creates an alias `cls` for the `clear` command, allowing for quicker access.

## CAT

**Definition:**
- The `cat` command displays file contents on the terminal and can also be used to concatenate files.

**Syntax:**
- `cat [option] <file>`

**Examples:**
- `cat file1.txt`
  - Output: `This is the content of file1.txt`
  - Description: Displays the contents of `file1.txt` on the terminal.
- `cat file1.txt file2.txt`
  - Output: `Contents of file1.txt followed by contents of file2.txt`
  - Description: Concatenates and displays the contents of `file1.txt` and `file2.txt`.
- `cat > newfile.txt`
  - Input: `Type your text here and press Ctrl+D to save`
  - Description: Creates a new file `newfile.txt` and writes input from the terminal to it.
- `cat file1.txt >> file2.txt`
  - Output: `Appended contents of file1.txt to file2.txt`
  - Description: Appends the contents of `file1.txt` to the end of `file2.txt`.
- `cat -n file1.txt`
  - Output: `1  This is the first line of file1.txt`
  - Description: Displays the contents of `file1.txt` with line numbers.

## ECHO

**Definition:**
- The `echo` command prints any text that follows the command and can be used to display variables and formatted text.

**Syntax:**
- `echo [option] <message>`

**Examples:**
- `echo "Hello, World!"`
  - Output: `Hello, World!`
  - Description: Prints the string "Hello, World!" to the terminal.
- `echo $HOME`
  - Output: `/home/user`
  - Description: Displays the value of the `HOME` environment variable.
- `echo -n "Hello"`
  - Output: `Hello`
  - Description: Prints "Hello" without a trailing newline.
- `echo -e "Line1\nLine2"`
  - Output: 
    ```
    Line1
    Line2
    ```
  - Description: Enables interpretation of backslash escapes, printing "Line1" and "Line2" on separate lines.
- `echo "The current user is $USER"`
  - Output: `The current user is user`
  - Description: Prints a message with the current username by expanding the `USER` variable.

## LESS

**Definition:**
- The `less` command displays paged outputs in the terminal, allowing for easy navigation through large files.

**Syntax:**
- `less [option] <file>`

**Examples:**
- `less file1.txt`
  - Output: `Paged view of file1.txt`
  - Description: Opens `file1.txt` in a paged view, allowing navigation with arrow keys.
- `less +F file1.txt`
  - Output: `Follow mode for file1.txt`
  - Description: Opens `file1.txt` and continuously displays new lines as they are added, similar to `tail -f`.
- `less -N file1.txt`
  - Output: `Paged view of file1.txt with line numbers`
  - Description: Displays `file1.txt` with line numbers on the left.
- `less -S file1.txt`
  - Output: `Paged view of file1.txt with long lines truncated`
  - Description: Truncates long lines instead of wrapping them, allowing horizontal scrolling.
- `less -p "pattern" file1.txt`
  - Output: `Paged view of file1.txt starting at the first occurrence of "pattern"`
  - Description: Opens `file1.txt` and jumps to the first occurrence of "pattern".

## MAN

**Definition:**
- The `man` command accesses manual pages for all Linux commands, providing detailed information about command usage, options, and examples.

**Syntax:**
- `man [section] <command>`

**Examples:**
- `man ls`
  - Output: `Manual page for ls command`
  - Description: Displays the manual page for the `ls` command, detailing its options and usage.
- `man 5 passwd`
  - Output: `Manual page for passwd file format`
  - Description: Displays the manual page for the `passwd` file format, found in section 5 of the manual.
- `man -k network`
  - Output: `List of manual pages related to network`
  - Description: Searches the manual page descriptions for the keyword "network" and lists relevant pages.
- `man -f ls`
  - Output: `ls (1) - list directory contents`
  - Description: Displays a short description of the `ls` command, similar to the `whatis` command.
- `man -P cat ls`
  - Output: `Manual page for ls command displayed using cat`
  - Description: Uses `cat` to display the manual page for `ls`, instead of the default pager.


## WHOAMI

**Definition:**
- The `whoami` command gets the active username of the current user session.

**Syntax:**
- `whoami`

**Examples:**
- `whoami`
  - Output: `user`
  - Description: Displays the username of the current user.
- `echo "You are logged in as $(whoami)"`
  - Output: `You are logged in as user`
  - Description: Uses command substitution to include the output of `whoami` in a message.
- `sudo -u anotheruser whoami`
  - Output: `anotheruser`
  - Description: Runs the `whoami` command as `anotheruser` using `sudo`.
- `ssh user@remotehost "whoami"`
  - Output: `user`
  - Description: Executes the `whoami` command on a remote host via SSH to determine the remote user.
- `if [ "$(whoami)" = "root" ]; then echo "You are root"; else echo "You are not root"; fi`
  - Output: `You are not root`
  - Description: Checks if the current user is `root` and prints a message accordingly.

## TAR

**Definition:**
- The `tar` command is used to create, extract, and manipulate archive files in Linux.

**Syntax:**
- `tar [options] [archive] [files]`

**Examples:**
- `tar -cvf archive.tar files/`
  - Output: `Created archive.tar from files`
  - Description: Creates a new archive `archive.tar` containing the contents of the `files` directory.
- `tar -xvf archive.tar`
  - Output: `Extracted files from archive.tar`
  - Description: Extracts all files from `archive.tar` into the current directory.
- `tar -tvf archive.tar`
  - Output: `List of files in archive.tar`
  - Description: Lists the contents of `archive.tar` without extracting them.
- `tar -czvf archive.tar.gz files/`
  - Output: `Created compressed archive archive.tar.gz`
  - Description: Creates a compressed archive `archive.tar.gz` using gzip compression.
- `tar -xzvf archive.tar.gz`
  - Output: `Extracted files from archive.tar.gz`
  - Description: Extracts files from a gzip-compressed archive `archive.tar.gz`.

## GREP

**Definition:**
- The `grep` command searches for a string or pattern within files and outputs the matching lines.

**Syntax:**
- `grep [option] <pattern> <file>`

**Examples:**
- `grep "hello" file1.txt`
  - Output: `This is a hello message`
  - Description: Searches for the string "hello" in `file1.txt` and displays matching lines.
- `grep -i "hello" file1.txt`
  - Output: `This is a Hello message`
  - Description: Performs a case-insensitive search for "hello" in `file1.txt`.
- `grep -r "hello" /path/to/directory`
  - Output: `file1.txt:This is a hello message`
  - Description: Recursively searches for "hello" in all files within the specified directory.
- `grep -v "hello" file1.txt`
  - Output: `This is a goodbye message`
  - Description: Displays lines in `file1.txt` that do not contain the string "hello".
- `grep -n "hello" file1.txt`
  - Output: `3:This is a hello message`
  - Description: Displays matching lines with line numbers in `file1.txt`.

## PS

**Definition:**
- The `ps` command reports a snapshot of current processes.

**Syntax:**
- `ps [options]`

**Examples:**
- `ps`
  - Output: `List of current processes`
  - Description: Displays a snapshot of the current processes for the current user.
- `ps aux`
  - Output: `Detailed list of all running processes`
  - Description: Displays detailed information about all running processes.
- `ps -ef`
  - Output: `Full-format listing of all processes`
  - Description: Provides a full-format listing of all processes.
- `ps -u username`
  - Output: `Processes for a specific user`
  - Description: Displays processes owned by the specified user.
- `ps -p 1234`
  - Output: `Information about process with PID 1234`
  - Description: Displays information about a specific process by its PID.

## TOP

**Definition:**
- The `top` command displays real-time system summary information and a list of processes.

**Syntax:**
- `top`

**Examples:**
- `top`
  - Output: `Live view of active processes`
  - Description: Opens the top interface showing system resource usage.
- `top -u username`
  - Output: `Processes for a specific user`
  - Description: Displays processes owned by the specified user.
- `top -n 1`
  - Output: `Single snapshot of processes`
  - Description: Displays a single snapshot of processes and exits.
- `top -b -n 1 > top_output.txt`
  - Output: `Saves top output to a file`
  - Description: Runs top in batch mode and saves the output to a file.

## KILL

**Definition:**
- The `kill` command sends a signal to a process, usually to terminate it.

**Syntax:**
- `kill <PID>`

**Examples:**
- `kill 1234`
  - Output: `Killed process with PID 1234`
  - Description: Terminates the process with the specified PID.
- `kill -9 1234`
  - Output: `Forcefully killed process with PID 1234`
  - Description: Forcefully terminates the process with the specified PID.
- `kill -l`
  - Output: `List of all available signals`
  - Description: Displays a list of all available signals that can be sent to processes.

## CHMOD

**Definition:**
- The `chmod` command changes file permissions.

**Syntax:**
- `chmod <mode> <file>`

**Examples:**
- `chmod 755 script.sh`
  - Output: `Changed permissions of script.sh`
  - Description: Sets the permissions of `script.sh` to be executable by the owner, group, and others.
- `chmod +x script.sh`
  - Output: `Made script.sh executable`
  - Description: Adds execute permission to `script.sh`.
- `chmod -R 644 /path/to/directory`
  - Output: `Changed permissions of all files in directory`
  - Description: Recursively sets the permissions of all files in the directory to `644`.

## CHOWN

**Definition:**
- The `chown` command changes the ownership of files and directories.

**Syntax:**
- `chown <owner>:<group> <file>`

**Examples:**
- `chown user:group file.txt`
  - Output: `Changed owner of file.txt`
  - Description: Changes the owner and group of `file.txt`.
- `chown -R user:group /path/to/directory`
  - Output: `Changed owner of all files in directory`
  - Description: Recursively changes the owner and group of all files in the directory.
- `chown user file.txt`
  - Output: `Changed owner of file.txt to user`
  - Description: Changes the owner of `file.txt` to `user`.

## FIND

**Definition:**
- The `find` command searches for files in a directory hierarchy.

**Syntax:**
- `find <path> [options] [expression]`

**Examples:**
- `find /home/user -name "*.txt"`
  - Output: `List of .txt files`
  - Description: Finds all `.txt` files in `/home/user`.
- `find / -type d -name "backup"`
  - Output: `List of directories named backup`
  - Description: Finds all directories named `backup` starting from the root directory.
- `find /path/to/search -mtime -1`
  - Output: `Files modified in the last 24 hours`
  - Description: Finds files modified in the last 24 hours.
- `find /path/to/search -size +100M`
  - Output: `Files larger than 100MB`
  - Description: Finds files larger than 100MB.
- `find /path/to/search -exec rm {} \;`
  - Output: `Deleted files`
  - Description: Finds and deletes files matching the search criteria.
