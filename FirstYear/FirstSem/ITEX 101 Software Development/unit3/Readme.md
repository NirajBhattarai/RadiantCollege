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

# 3.2 File Editing

## NANO

**Definition:**
- The `nano` command is a simple, user-friendly text editor for Unix-like systems.

**Syntax:**
- `nano [options] <file>`

**Basic Navigation Commands:**
- `Ctrl + P` or `↑`: Move cursor up one line
- `Ctrl + N` or `↓`: Move cursor down one line  
- `Ctrl + F` or `→`: Move cursor forward one character
- `Ctrl + B` or `←`: Move cursor back one character
- `Ctrl + A`: Move to beginning of line
- `Ctrl + E`: Move to end of line
- `Ctrl + V`: Move down one page
- `Ctrl + Y`: Move up one page

**Editing Commands:**
- `Ctrl + O`: Save file
- `Ctrl + X`: Exit nano
- `Ctrl + K`: Cut current line
- `Ctrl + U`: Paste cut text
- `Ctrl + J`: Justify current paragraph
- `Alt + U`: Undo last action
- `Alt + E`: Redo last action
- `Ctrl + I`: Insert tab
- `Ctrl + M`: Insert new line

**Examples:**
- `nano file.txt`
  - Output: `Opens file.txt in nano editor`
  - Description: Opens `file.txt` for editing in the nano text editor.
- `nano -B file.txt`
  - Output: `Creates a backup of file.txt`
  - Description: Opens `file.txt` in nano and creates a backup before editing.
- `nano +10 file.txt`
  - Output: `Opens file.txt at line 10`
  - Description: Opens `file.txt` and places the cursor at line 10.
- `nano -m file.txt`
  - Output: `Opens file.txt with mouse support`
  - Description: Opens `file.txt` with mouse support enabled for easier navigation.
- `nano -l file.txt`
  - Output: `Opens file.txt with line numbers`
  - Description: Opens `file.txt` displaying line numbers for easier reference.

## VIM

**Definition:**
- The `vim` command is a highly configurable text editor built to enable efficient text editing.

**Syntax:**
- `vim [options] <file>`

**Basic Navigation Commands:**
- `h`: Move cursor left
- `j`: Move cursor down
- `k`: Move cursor up
- `l`: Move cursor right
- `gg`: Go to the first line of the file
- `G`: Go to the last line of the file
- `0`: Move to the beginning of the line
- `$`: Move to the end of the line
- `w`: Move to the next word
- `b`: Move to the previous word

**Editing Commands:**
- `i`: Enter insert mode before the cursor
- `a`: Enter insert mode after the cursor
- `o`: Open a new line below the current line and enter insert mode
- `dd`: Delete the current line
- `yy`: Yank (copy) the current line
- `p`: Paste the yanked or deleted text after the cursor
- `u`: Undo the last change
- `Ctrl + r`: Redo the last undone change
- `:w`: Save the file
- `:q`: Quit vim
- `:wq`: Save and quit vim
- `:q!`: Quit vim without saving changes

**Examples:**
- `vim file.txt`
  - Output: `Opens file.txt in vim editor`
  - Description: Opens `file.txt` for editing in the vim text editor.
- `vim +/pattern file.txt`
  - Output: `Opens file.txt and searches for pattern`
  - Description: Opens `file.txt` and places the cursor at the first occurrence of "pattern".
- `vim -R file.txt`
  - Output: `Opens file.txt in read-only mode`
  - Description: Opens `file.txt` in read-only mode to prevent accidental changes.
- `vim -c "set number" file.txt`
  - Output: `Opens file.txt with line numbers`
  - Description: Opens `file.txt` with line numbers displayed.
- `vim -c "normal gg=G" file.txt`
  - Output: `Opens file.txt and auto-indents the entire file`
  - Description: Opens `file.txt` and automatically indents all lines for better readability.

## EMACS

**Definition:**
- The `emacs` command is a powerful, extensible text editor with a wide range of features.

**Syntax:**
- `emacs [options] <file>`

**Basic Navigation Commands:**
- `Ctrl + f`: Move cursor forward one character
- `Ctrl + b`: Move cursor backward one character
- `Ctrl + n`: Move cursor to the next line
- `Ctrl + p`: Move cursor to the previous line
- `Alt + f`: Move cursor forward one word
- `Alt + b`: Move cursor backward one word
- `Ctrl + a`: Move to the beginning of the line
- `Ctrl + e`: Move to the end of the line
- `Alt + <`: Move to the beginning of the buffer
- `Alt + >`: Move to the end of the buffer

**Editing Commands:**
- `Ctrl + d`: Delete the character under the cursor
- `Ctrl + k`: Kill (cut) text from the cursor to the end of the line
- `Ctrl + y`: Yank (paste) the last killed text
- `Ctrl + _`: Undo the last change
- `Ctrl + x Ctrl + s`: Save the current buffer
- `Ctrl + x Ctrl + c`: Exit emacs
- `Ctrl + x u`: Undo the last change
- `Alt + x replace-string`: Replace a string in the buffer
- `Ctrl + x Ctrl + f`: Open a file

**Examples:**
- `emacs file.txt`
  - Output: `Opens file.txt in emacs editor`
  - Description: Opens `file.txt` for editing in the emacs text editor.
- `emacs -nw file.txt`
  - Output: `Opens file.txt in emacs without GUI`
  - Description: Opens `file.txt` in emacs in the terminal without the graphical interface.
- `emacs --batch -l script.el`
  - Output: `Runs script.el in batch mode`
  - Description: Executes the emacs lisp script `script.el` in batch mode.
- `emacs -q file.txt`
  - Output: `Opens file.txt without loading init file`
  - Description: Opens `file.txt` without loading the user's init file for a clean session.
- `emacs -r file.txt`
  - Output: `Opens file.txt in read-only mode`
  - Description: Opens `file.txt` in read-only mode to prevent accidental changes.

## SED

**Definition:**
- The `sed` command is a stream editor used to perform basic text transformations on an input stream.

**Syntax:**
- `sed [options] 'command' <file>`

**Basic Commands:**
- `s/old/new/`: Substitute the first occurrence of "old" with "new" in each line.
- `s/old/new/g`: Substitute all occurrences of "old" with "new" in each line.
- `d`: Delete lines matching a pattern.
- `p`: Print lines matching a pattern.
- `-n`: Suppress automatic printing of pattern space.

**Examples:**
- `sed 's/old/new/' file.txt`
  - Output: `Replaces the first occurrence of old with new in each line of file.txt`
  - Description: Performs a substitution of "old" with "new" for the first occurrence in each line of `file.txt`.
- `sed 's/old/new/g' file.txt`
  - Output: `Replaces all occurrences of old with new in file.txt`
  - Description: Performs a global substitution of "old" with "new" in `file.txt`.
- `sed -n '5,10p' file.txt`
  - Output: `Prints lines 5 to 10 of file.txt`
  - Description: Displays lines 5 through 10 of `file.txt`.
- `sed '/pattern/d' file.txt`
  - Output: `Deletes lines containing pattern`
  - Description: Removes lines containing "pattern" from `file.txt`.
- `sed '2d' file.txt`
  - Output: `Deletes the second line of file.txt`
  - Description: Deletes the second line from `file.txt`.
- `sed 's/^/Prefix: /' file.txt`
  - Output: `Adds "Prefix: " to the beginning of each line in file.txt`
  - Description: Adds a prefix to each line in `file.txt`.
- `sed 's/$/ :Suffix/' file.txt`
  - Output: `Adds " :Suffix" to the end of each line in file.txt`
  - Description: Appends a suffix to each line in `file.txt`.

## VI

**Definition:**
- The `vi` command is a screen-oriented text editor originally created for the Unix operating system.

**Syntax:**
- `vi [options] <file>`

**Basic Navigation Commands:**
- `h`: Move cursor left
- `j`: Move cursor down
- `k`: Move cursor up
- `l`: Move cursor right
- `gg`: Go to the first line of the file
- `G`: Go to the last line of the file
- `0`: Move to the beginning of the line
- `$`: Move to the end of the line
- `w`: Move to the next word
- `b`: Move to the previous word

**Editing Commands:**
- `i`: Enter insert mode before the cursor
- `a`: Enter insert mode after the cursor
- `o`: Open a new line below the current line and enter insert mode
- `dd`: Delete the current line
- `yy`: Yank (copy) the current line
- `p`: Paste the yanked or deleted text after the cursor
- `u`: Undo the last change
- `Ctrl + r`: Redo the last undone change
- `:w`: Save the file
- `:q`: Quit vi
- `:wq`: Save and quit vi
- `:q!`: Quit vi without saving changes

**Examples:**
- `vi file.txt`
  - Output: `Opens file.txt in vi editor`
  - Description: Opens `file.txt` for editing in the vi text editor.
- `vi +/pattern file.txt`
  - Output: `Opens file.txt and searches for pattern`
  - Description: Opens `file.txt` and places the cursor at the first occurrence of "pattern".
- `vi -R file.txt`
  - Output: `Opens file.txt in read-only mode`
  - Description: Opens `file.txt` in read-only mode to prevent accidental changes.
- `vi -c "set number" file.txt`
  - Output: `Opens file.txt with line numbers`
  - Description: Opens `file.txt` with line numbers displayed.
- `vi -c "normal gg=G" file.txt`
  - Output: `Opens file.txt and auto-indents the entire file`
  - Description: Opens `file.txt` and automatically indents all lines for better readability.

# Shell Scripting

## Why Shell Scripting is Required

**Definition:**
- Shell scripting is a powerful way to automate tasks, manage system operations, and streamline repetitive processes in Unix-like operating systems. It allows users to write scripts that can execute a series of commands, making it easier to perform complex tasks efficiently.

**Benefits:**
- **Automation:** Automates repetitive tasks, reducing manual effort and minimizing errors.
- **Efficiency:** Executes multiple commands in a sequence, saving time and resources.
- **Flexibility:** Can be used for a wide range of tasks, from simple file operations to complex system administration.
- **Portability:** Scripts can be run on any system with a compatible shell, making them highly portable.
- **Integration:** Easily integrates with other tools and applications, enhancing functionality.

## Data Types in Shell Scripting

Shell scripting primarily deals with strings and numbers. Here are some common data types:

| Data Type | Description |
|-----------|-------------|
| String    | A sequence of characters. |
| Integer   | Whole numbers, used for arithmetic operations. |
| Array     | A collection of values indexed by numbers. |

## Special Variables in Shell Scripting

Shell scripting provides several special variables that are used to access information about the script's execution environment and parameters. Here are some of the most commonly used special variables:

| Variable | Description |
|----------|-------------|
| `$0`     | The name of the script being executed. |
| `$1, $2, ...` | Positional parameters representing arguments passed to the script. |
| `$#`     | The number of positional parameters passed to the script. |
| `$@`     | All the positional parameters as separate words. |
| `$*`     | All the positional parameters as a single word. |
| `$?`     | The exit status of the last executed command. |
| `$$`     | The process ID of the current shell. |
| `$!`     | The process ID of the last background command. |
| `$_`     | The last argument to the previous command. |

### Examples

**Example Script: special_vars.sh**
```bash
#!/bin/bash
# This script demonstrates the use of special variables

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "Number of arguments: $#"
echo "All arguments (individually): $@"
echo "All arguments (as a single string): $*"
echo "Process ID of the script: $$"

# Run a background command
sleep 5 &
echo "Process ID of the last background command: $!"

# Exit with a specific status
exit 0
```

**Running the Script**
```bash
./special_vars.sh arg1 arg2
```

**Expected Output**
```
Script name: ./special_vars.sh
First argument: arg1
Second argument: arg2
Number of arguments: 2
All arguments (individually): arg1 arg2
All arguments (as a single string): arg1 arg2
Process ID of the script: 12345
Process ID of the last background command: 12346
```

**Description:**
- This script demonstrates how to use special variables to access script metadata and parameters. It prints the script name, arguments, and process IDs, showcasing the utility of these variables in managing script execution.

## Using Variables in Shell Scripting

Variables in shell scripting are used to store data that can be referenced and manipulated throughout the script. They are essential for creating dynamic and flexible scripts.

### Declaring Variables

- **Syntax**: Variables are declared without a `$` sign and are assigned using the `=` operator. There should be no spaces around the `=` sign.
  ```bash
  my_variable="Hello, World!"
  ```

### Accessing Variables

- **Syntax**: Use the `$` sign to access the value of a variable.
  ```bash
  echo $my_variable
  ```

### Variable Operations

- **String Concatenation**: Combine strings using variables.
  ```bash
  first="Hello"
  second="World"
  greeting="$first, $second!"
  echo $greeting
  ```

- **Arithmetic Operations**: Use `expr` or `$(( ))` for arithmetic operations.
  ```bash
  num1=5
  num2=10
  sum=$(expr $num1 + $num2)
  echo "Sum using expr: $sum"

  sum=$((num1 + num2))
  echo "Sum using arithmetic expansion: $sum"
  ```

### Example Script: using_vars.sh

```bash
#!/bin/bash
# This script demonstrates the use of variables

# Declare variables
name="Alice"
age=30

# Access variables
echo "Name: $name"
echo "Age: $age"

# Modify variables
age=$((age + 1))
echo "Next year, $name will be $age years old."

# Use environment variable
export GREETING="Hello"
echo "$GREETING, $name!"
```

**Running the Script**
```bash
./using_vars.sh
```

**Expected Output**
```
Name: Alice
Age: 30
Next year, Alice will be 31 years old.
Hello, Alice!
```

**Description:**
- This script demonstrates how to declare, access, and modify variables. It also shows how to use environment variables and perform arithmetic operations.

## Creating and Running Shell Scripts

### Creating a Shell Script

1. **Create a new file**: Use a text editor like `nano`, `vim`, or `emacs` to create a new file with a `.sh` extension.
   ```bash
   nano myscript.sh
   ```

2. **Add the shebang**: At the top of the file, add the shebang line to specify the script interpreter.
   ```bash
   #!/bin/bash
   ```

3. **Write your script**: Add your shell commands below the shebang line.

4. **Save and exit**: Save the file and exit the editor.

### Running a Shell Script

1. **Make the script executable**: Use the `chmod` command to make the script executable.
   ```bash
   chmod +x myscript.sh
   ```

2. **Execute the script**: Run the script using the following command.
   ```bash
   ./myscript.sh
   ```

## Shell Scripting Elements

### Declaring Variables

- **Syntax**: Variables are declared without a `$` sign and are assigned using the `=` operator.
  ```bash
  my_variable="Hello, World!"
  ```

- **Accessing Variables**: Use the `$` sign to access the value of a variable.
  ```bash
  echo $my_variable
  ```

### Conditional Statements

- **If-Else Statement**:
  ```bash
  if [ condition ]; then
    # commands
  elif [ another_condition ]; then
    # commands
  else
    # commands
  fi
  ```

### Loops

- **For Loop**:
  ```bash
  for i in {1..5}; do
    echo "Iteration $i"
  done
  ```

- **While Loop**:
  ```bash
  while [ condition ]; do
    # commands
  done
  ```

### Functions

- **Defining a Function**:
  ```bash
  my_function() {
    echo "This is a function"
  }
  ```

- **Calling a Function**:
  ```bash
  my_function
  ```

## Example Shell Script

```bash
#!/bin/bash
# This script demonstrates basic shell scripting elements

# Declare a variable
greeting="Hello, World!"

# Function definition
print_greeting() {
  echo $greeting
}

# Conditional statement
if [ -n "$greeting" ]; then
  print_greeting
else
  echo "No greeting found."
fi

# Loop
for i in {1..3}; do
  echo "Loop iteration $i"
done
```

## String Processing in Shell Scripting

String processing is a crucial part of shell scripting, allowing you to manipulate and analyze text data. Here are some common techniques and examples for processing strings in shell scripts.

### String Length

- **Syntax**: Use `${#variable}` to get the length of a string.
  ```bash
  str="Hello, World!"
  echo "Length of string: ${#str}"
  ```

### Substring Extraction

- **Syntax**: Use `${variable:position:length}` to extract a substring.
  ```bash
  str="Hello, World!"
  echo "Substring: ${str:7:5}"  # Outputs "World"
  ```

### String Replacement

- **Syntax**: Use `${variable/old/new}` for replacing the first occurrence and `${variable//old/new}` for replacing all occurrences.
  ```bash
  str="Hello, World!"
  echo "${str/World/Shell}"  # Outputs "Hello, Shell!"
  echo "${str//o/O}"         # Outputs "HellO, WOrld!"
  ```

### String Concatenation

- **Syntax**: Simply place variables or strings next to each other.
  ```bash
  str1="Hello"
  str2="World"
  combined="$str1, $str2!"
  echo $combined  # Outputs "Hello, World!"
  ```

### String Splitting

- **Example**: Use `IFS` (Internal Field Separator) to split a string into an array.
  ```bash
  str="apple,banana,cherry"
  IFS=',' read -r -a fruits <<< "$str"
  echo "First fruit: ${fruits[0]}"  # Outputs "apple"
  ```

### String Comparison

- **Syntax**: Use `=` for equality and `!=` for inequality in conditional statements.
  ```bash
  str1="Hello"
  str2="World"
  if [ "$str1" = "$str2" ]; then
    echo "Strings are equal"
  else
    echo "Strings are not equal"
  fi
  ```

### Example Script: string_processing.sh

```bash
#!/bin/bash
# This script demonstrates string processing techniques

# String length
str="Hello, World!"
echo "Length of string: ${#str}"

# Substring extraction
echo "Substring: ${str:7:5}"

# String replacement
echo "Replace 'World' with 'Shell': ${str/World/Shell}"
echo "Replace all 'o' with 'O': ${str//o/O}"

# String concatenation
str1="Hello"
str2="World"
combined="$str1, $str2!"
echo "Concatenated string: $combined"

# String splitting
str="apple,banana,cherry"
IFS=',' read -r -a fruits <<< "$str"
echo "First fruit: ${fruits[0]}"

# String comparison
if [ "$str1" = "$str2" ]; then
  echo "Strings are equal"
else
  echo "Strings are not equal"
fi
```

**Running the Script**
```bash
./string_processing.sh
```

**Expected Output**
```
Length of string: 13
Substring: World
Replace 'World' with 'Shell': Hello, Shell!
Replace all 'o' with 'O': HellO, WOrld!
Concatenated string: Hello, World!
First fruit: apple
Strings are not equal
```

**Description:**
- This script demonstrates various string processing techniques, including length calculation, substring extraction, replacement, concatenation, splitting, and comparison. These operations are essential for handling text data in shell scripts.

## Regular Expressions in Shell Scripting

Regular expressions (regex) are powerful tools for pattern matching and text processing. They are used in various commands and programming languages to search, match, and manipulate text.

### Common Regular Expression Patterns

| Pattern | Description |
|---------|-------------|
| `.`     | Matches any single character except a newline. |
| `*`     | Matches zero or more occurrences of the preceding element. |
| `+`     | Matches one or more occurrences of the preceding element. |
| `?`     | Matches zero or one occurrence of the preceding element. |
| `^`     | Matches the start of a line. |
| `$`     | Matches the end of a line. |
| `[abc]` | Matches any one of the characters a, b, or c. |
| `[^abc]`| Matches any character except a, b, or c. |
| `(a|b)` | Matches either a or b. |
| `\d`    | Matches any digit (equivalent to `[0-9]`). |
| `\w`    | Matches any word character (equivalent to `[a-zA-Z0-9_]`). |
| `\s`    | Matches any whitespace character. |

### Regular Expression Examples

#### 1. Single Character (`.`)

**Definition:** The dot (.) is a special metacharacter in regular expressions that matches exactly one occurrence of any character except a newline character. It is often called a "wildcard" character.

| Pattern | Matches | Description |
|---------|---------|-------------|
| `c.t`   | cat, cot, cut | Any character between 'c' and 't' |
| `h.t`   | hat, hot, hit | Any character between 'h' and 't' |
| `d.g`   | dog, dig, dug | Any character between 'd' and 'g' |
| `b.d`   | bad, bid, bud | Any character between 'b' and 'd' |
| `r.n`   | run, ran, rin | Any character between 'r' and 'n' |

#### 2. Zero or More (`*`)

**Definition:** The asterisk (*) matches zero or more occurrences of the preceding character or group. It's useful when you want to match something that may or may not appear multiple times.

| Pattern | Matches | Description |
|---------|---------|-------------|
| `ab*c`  | ac, abc, abbc | Zero or more 'b's between 'a' and 'c' |
| `hi*`   | h, hi, hiii | Zero or more 'i's after 'h' |
| `do*g`  | dg, dog, dooog | Zero or more 'o's between 'd' and 'g' |
| `ca*t`  | ct, cat, caaat | Zero or more 'a's between 'c' and 't' |
| `mo*n`  | mn, mon, mooon | Zero or more 'o's between 'm' and 'n' |

#### 3. One or More (`+`)

**Definition:** The plus sign (+) matches one or more occurrences of the preceding character or group. Similar to *, but requires at least one occurrence.

| Pattern | Matches | Description |
|---------|---------|-------------|
| `ab+c`  | abc, abbc, abbbc | One or more 'b's between 'a' and 'c' |
| `hi+`   | hi, hii, hiii | One or more 'i's after 'h' |
| `do+g`  | dog, doog, dooog | One or more 'o's between 'd' and 'g' |
| `ca+t`  | cat, caat, caaat | One or more 'a's between 'c' and 't' |
| `mo+n`  | mon, moon, mooon | One or more 'o's between 'm' and 'n' |

#### 4. Zero or One (`?`)

**Definition:** The question mark (?) makes the preceding character or group optional by matching zero or one occurrence. It's particularly useful for handling variations in spelling or optional parts of a pattern.

| Pattern | Matches | Description |
|---------|---------|-------------|
| `colou?r` | color, colour | Optional 'u' in color/colour |
| `https?` | http, https | Optional 's' in http/https |
| `Feb?ruary` | February, February | Optional 'b' in February |
| `who?le` | whole, wole | Optional 'h' in whole |
| `tho?ught` | thought, thoght | Optional 'o' in thought |

#### 5. Start of Line (`^`)

**Definition:** The caret (^) asserts the position at the start of a line. When used at the beginning of a pattern, it ensures that the match occurs at the start of the line.

| Pattern | Matches | Description |
|---------|---------|-------------|
| `^Hello` | Hello world | Lines starting with "Hello" |
| `^The` | The cat | Lines starting with "The" |
| `^[0-9]` | 1st line | Lines starting with a digit |
| `^A` | Apple pie | Lines starting with 'A' |
| `^Start` | Start here | Lines starting with "Start" |

#### 6. End of Line (`$`)

**Definition:** The dollar sign ($) asserts the position at the end of a line. When used at the end of a pattern, it ensures that the match occurs at the end of the line.

| Pattern | Matches | Description |
|---------|---------|-------------|
| `end$` | The end | Lines ending with "end" |
| `!$` | Hello! | Lines ending with "!" |
| `[0-9]$` | Room 5 | Lines ending with a digit |
| `ing$` | running | Lines ending with "ing" |
| `\.txt$` | file.txt | Lines ending with ".txt" |

#### 7. Character Class (`[abc]`)

**Definition:** Square brackets define a character class that matches any single character from the specified set. You can include individual characters or ranges (e.g., a-z, 0-9).

| Pattern | Matches | Description |
|---------|---------|-------------|
| `[aeiou]` | cat, dog, pig | Any vowel |
| `[0-9]` | 123, 456 | Any digit |
| `[RGB]` | Red, Green, Blue | Any of R, G, or B |
| `[xyz]at` | xat, yat, zat | x, y, or z followed by "at" |
| `[123]00` | 100, 200, 300 | 1, 2, or 3 followed by "00" |

#### 8. Negated Character Class (`[^abc]`)

**Definition:** A caret (^) inside square brackets negates the character class, matching any single character NOT in the specified set. This is useful for excluding specific characters.

| Pattern | Matches | Description |
|---------|---------|-------------|
| `[^0-9]` | abc, xyz | Any non-digit character |
| `[^aeiou]` | bcd, fgh | Any non-vowel character |
| `[^xyz]` | abc, def | Any character except x, y, z |
| `[^A-Z]` | abc, 123 | Any non-uppercase letter |
| `[^!@#]` | abc, 123 | Any character except !, @, # |

#### 9. Alternation (`(a|b)`)

**Definition:** The vertical bar (|) within parentheses creates an alternation, allowing you to match one pattern OR another. It acts like a logical OR operator for patterns.

| Pattern | Matches | Description |
|---------|---------|-------------|
| `(cat\|dog)` | cat, dog | Either "cat" or "dog" |
| `(yes\|no)` | yes, no | Either "yes" or "no" |
| `(up\|down)` | up, down | Either "up" or "down" |
| `(left\|right)` | left, right | Either "left" or "right" |
| `(on\|off)` | on, off | Either "on" or "off" |

#### 10. Digit (`\d`)

**Definition:** The \d metacharacter matches any single digit (0-9). It's equivalent to the character class [0-9] and is commonly used for matching numeric values.

| Pattern | Matches | Description |
|---------|---------|-------------|
| `\d{3}` | 123, 456 | Exactly three digits |
| `\d-\d` | 1-2, 3-4 | Digit, hyphen, digit |
| `\d{2}:\d{2}` | 12:34, 00:00 | Time format (HH:MM) |
| `\d{4}` | 2024, 1999 | Four-digit year |
| `\d+\.\d+` | 1.23, 456.789 | Decimal numbers |

#### 11. Word Character (`\w`)

**Definition:** The \w metacharacter matches any word character including letters, digits, and underscores. It's equivalent to the character class [a-zA-Z0-9_] and is useful for matching parts of words.

| Pattern | Matches | Description |
|---------|---------|-------------|
| `\w+` | Hello123, Test_1 | One or more word characters |
| `\w{5}` | Hello, World | Exactly 5 word characters |
| `\w+_\w+` | first_name | Words connected by underscore |
| `\w{2}\d{2}` | AB12, XY34 | 2 letters followed by 2 digits |
| `\w+@\w+` | user@domain | Simple email format |

#### 12. Whitespace (`\s`)

**Definition:** The \s metacharacter matches any whitespace character including spaces, tabs, and newlines. It's useful for matching spacing between words or parts of a pattern.

| Pattern | Matches | Description |
|---------|---------|-------------|
| `word\sword` | word word | Words separated by whitespace |
| `\s{2,}` | "  " | Two or more whitespace characters |
| `name:\svalue` | name: value | Name-value pair with space |
| `\w+\s\w+` | John Doe | Two words separated by space |
| `\d+\s\w+` | 5 apples | Number followed by word |

### Complex Pattern Examples

Here are examples combining multiple regular expression patterns to solve common matching scenarios:

#### Combined Pattern Examples

| Pattern | Description | Matches | Doesn't Match |
|---------|-------------|---------|---------------|
| `^[A-Z][a-z]+$` | Properly capitalized word | "Hello", "John", "Mary" | "hello", "JOHN", "mary" |
| `\d{3}[-\s]?\d{3}[-\s]?\d{4}` | Phone number formats | "123-456-7890", "123 456 7890", "1234567890" | "123-45-6789", "12345", "abc-def-ghij" |
| `[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}` | Email address | "user@domain.com", "john.doe@company.co.uk" | "@domain.com", "user@.com", "user@domain" |
| `^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$` | URL | "https://website.com", "domain.co.uk/path" | "http:/website", ".com", "https://" |
| `^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$` | Password validation | "Pass1word", "1Security" | "password", "12345678", "Pass" |
| `^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$` | 24-hour time format | "23:59", "00:00", "9:30" | "24:00", "12:60", "9:99" |
| `^\$\d{1,3}(,\d{3})*(\.\d{2})?$` | Currency format | "$123.45", "$1,234.56", "$1,234,567.89" | "$12345", "1234.56", "$123.456" |
| `^(19\|20)\d\d[- /.](0[1-9]\|1[012])[- /.](0[1-9]\|[12][0-9]\|3[01])$` | Date format (YYYY-MM-DD) | "2023-12-31", "1999/01/01" | "2023-13-01", "99-12-31", "2023-12-32" |
| `^[A-Z]{2}\d{2}[A-Z]{2}\d{4}$` | Vehicle registration | "AB12CD3456", "XY98ZW1234" | "A12CD3456", "AB1234", "12ABCD3456" |
| `^#([A-Fa-f0-9]{6}\|[A-Fa-f0-9]{3})$` | Hex color code | "#FF0000", "#f00", "#BADA55" | "FF0000", "#XYZ", "#GGHH11" |

#### Explanation of Complex Patterns:

1. **Capitalized Word**
   - `^` - Start of string
   - `[A-Z]` - First letter capital
   - `[a-z]+` - Followed by lowercase letters
   - `$` - End of string

2. **Phone Number**
   - `\d{3}` - Three digits
   - `[-\s]?` - Optional hyphen or space
   - Repeated pattern for area code, prefix, and line number

3. **Email Address**
   - Username: `[A-Za-z0-9._%+-]+`
   - `@` symbol
   - Domain: `[A-Za-z0-9.-]+`
   - TLD: `\.[A-Za-z]{2,}`

4. **URL**
   - Optional protocol: `(https?:\/\/)?`
   - Domain: `[\da-z\.-]+`
   - TLD: `([a-z\.]{2,6})`
   - Optional path: `([\/\w \.-]*)*\/?`

5. **Password Validation**
   - `(?=.*[A-Za-z])` - At least one letter
   - `(?=.*\d)` - At least one digit
   - `[A-Za-z\d]{8,}` - Minimum 8 characters

6. **24-hour Time**
   - Hours: `([0-1]?[0-9]|2[0-3])`
   - Minutes: `:[0-5][0-9]`

7. **Currency Format**
   - `^\$` - Starts with dollar sign
   - `\d{1,3}` - 1-3 digits
   - `(,\d{3})*` - Optional groups of 3 digits
   - `(\.\d{2})?` - Optional decimal places

8. **Date Format**
   - Year: `(19|20)\d\d`
   - Month: `(0[1-9]|1[012])`
   - Day: `(0[1-9]|[12][0-9]|3[01])`
   - Separated by `-`, `/`, or `.`

9. **Vehicle Registration**
   - Two letters: `[A-Z]{2}`
   - Two numbers: `\d{2}`
   - Two more letters: `[A-Z]{2}`
   - Four numbers: `\d{4}`

10. **Hex Color Code**
    - Starts with #: `^#`
    - Either 6 or 3 characters: `([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})`
    - Valid hex digits only

These complex patterns demonstrate how different regex elements can be combined to create powerful matching patterns for real-world scenarios.

# Web Scripting (CGI, HTTP, HTML)

## Common Gateway Interface (CGI)

### Definition
CGI is a standard protocol that enables web servers to execute programs and scripts, generating dynamic content for web pages.

### Basic CGI Script Structure
```bash
#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "<html>"
echo "<head><title>CGI Script</title></head>"
echo "<body>"
echo "<h1>Hello from CGI!</h1>"
echo "</body>"
echo "</html>"
```

### Common CGI Environment Variables
| Variable | Description | Example |
|----------|-------------|---------|
| `REQUEST_METHOD` | HTTP method used | GET, POST |
| `QUERY_STRING` | URL parameters | name=value&other=data |
| `REMOTE_ADDR` | Client's IP address | 192.168.1.1 |
| `HTTP_USER_AGENT` | Browser information | Mozilla/5.0... |
| `CONTENT_LENGTH` | Length of POST data | 1024 |
| `CONTENT_TYPE` | Type of POST data | application/x-www-form-urlencoded |

### Processing Form Data
```bash
#!/bin/bash
echo "Content-type: text/html"
echo ""

# Process GET data
if [ "$REQUEST_METHOD" = "GET" ]; then
    # Parse QUERY_STRING
    IFS='&' read -ra PARAMS <<< "$QUERY_STRING"
    for param in "${PARAMS[@]}"; do
        IFS='=' read -r key value <<< "$param"
        echo "Parameter $key = $value<br>"
    done
fi

# Process POST data
if [ "$REQUEST_METHOD" = "POST" ]; then
    read -n "$CONTENT_LENGTH" POST_DATA
    echo "Received POST data: $POST_DATA<br>"
fi
```

## HTTP Protocol

### HTTP Methods
| Method | Description | Example Usage |
|--------|-------------|---------------|
| GET | Retrieve data | `GET /page.html HTTP/1.1` |
| POST | Submit data | `POST /submit.php HTTP/1.1` |
| PUT | Update resource | `PUT /update.php HTTP/1.1` |
| DELETE | Remove resource | `DELETE /remove.php HTTP/1.1` |
| HEAD | Get headers only | `HEAD /status.html HTTP/1.1` |

### HTTP Status Codes
| Code | Category | Examples |
|------|----------|----------|
| 2xx | Success | 200 OK, 201 Created |
| 3xx | Redirection | 301 Moved, 304 Not Modified |
| 4xx | Client Error | 404 Not Found, 403 Forbidden |
| 5xx | Server Error | 500 Internal Error, 503 Service Unavailable |

### HTTP Headers
```bash
# Request Headers
GET /index.html HTTP/1.1
Host: www.example.com
User-Agent: Mozilla/5.0
Accept: text/html
Cookie: session=abc123

# Response Headers
HTTP/1.1 200 OK
Content-Type: text/html
Content-Length: 1234
Set-Cookie: session=xyz789
```

## HTML Generation

### Basic HTML Structure
```bash
#!/bin/bash

generate_html() {
    cat << EOF
<!DOCTYPE html>
<html>
<head>
    <title>$1</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>$2</h1>
    $3
</body>
</html>
EOF
}

# Usage
generate_html "Page Title" "Welcome" "<p>Content goes here</p>"
```

### Common HTML Elements Generation
```bash
# Generate a table
generate_table() {
    echo "<table border='1'>"
    echo "<tr><th>Header 1</th><th>Header 2</th></tr>"
    while IFS=',' read -r col1 col2; do
        echo "<tr><td>$col1</td><td>$col2</td></tr>"
    done
    echo "</table>"
}

# Generate a form
generate_form() {
    cat << EOF
<form method="post" action="$1">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name"><br>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email"><br>
    <input type="submit" value="Submit">
</form>
EOF
}
```

### Dynamic Content Generation
```bash
#!/bin/bash

# Generate dynamic list from directory contents
generate_file_list() {
    echo "<ul>"
    for file in *; do
        echo "<li>$file</li>"
    done
    echo "</ul>"
}

# Generate dynamic table from data file
generate_data_table() {
    echo "<table border='1'>"
    echo "<tr><th>Name</th><th>Value</th></tr>"
    while IFS='=' read -r key value; do
        echo "<tr><td>$key</td><td>$value</td></tr>"
    done < "$1"
    echo "</table>"
}
```

### Error Handling
```bash
#!/bin/bash

handle_error() {
    cat << EOF
Content-type: text/html

<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
</head>
<body>
    <h1>Error</h1>
    <p style="color: red;">$1</p>
    <a href="javascript:history.back()">Go Back</a>
</body>
</html>
EOF
    exit 1
}

# Usage
[ -f "$FILE" ] || handle_error "File not found!"
```

### Security Considerations

#### Input Validation
```bash
validate_input() {
    # Remove special characters
    local clean_input=$(echo "$1" | sed 's/[^a-zA-Z0-9 ]//g')
    echo "$clean_input"
}

# HTML Escaping
html_escape() {
    echo "$1" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&#39;/g'
}
```

#### File Upload Handling
```bash
handle_file_upload() {
    # Check file size
    [ "$CONTENT_LENGTH" -gt 1048576 ] && handle_error "File too large!"

    # Check file type
    content_type=$(file -b --mime-type "$1")
    case "$content_type" in
        image/jpeg|image/png|image/gif)
            # Process allowed file type
            ;;
        *)
            handle_error "Invalid file type!"
            ;;
    esac
}
```

### Example Complete CGI Script
```bash
#!/bin/bash

# Set content type
echo "Content-type: text/html"
echo ""

# Include common functions
source "/path/to/common_functions.sh"

# Handle different request methods
case "$REQUEST_METHOD" in
    GET)
        # Display form
        generate_form "/cgi-bin/script.cgi"
        ;;
    POST)
        # Process form data
        read -n "$CONTENT_LENGTH" POST_DATA
        
        # Validate and process input
        name=$(echo "$POST_DATA" | grep -o 'name=[^&]*' | cut -d= -f2)
        name=$(validate_input "$name")
        name=$(html_escape "$name")
        
        # Generate response
        generate_html "Success" "Thank you, $name!" "<p>Form processed successfully.</p>"
        ;;
    *)
        handle_error "Invalid request method!"
        ;;
esac
```

This section provides a comprehensive overview of web scripting using shell scripts, covering CGI, HTTP, and HTML generation, with practical examples and security considerations.

