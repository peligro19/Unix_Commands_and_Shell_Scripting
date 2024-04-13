# Unix Commands


1. ```ls```: List directory contents.

   ```Syntax: ls [OPTION]... [FILE]...```

        Options:
            -l, --format=long: List in long format, displaying detailed information about each file or directory.
            -a, --all: List all files and directories, including hidden ones (those whose names start with a dot ".").
            -h, --human-readable: Display file sizes in human-readable format (e.g., 1K, 2M).
            -r, --reverse: Reverse the order of the listing.
            -t: Sort files by modification time, newest first.
            -R, --recursive: List subdirectories recursively.
            -s, --size: Display allocated blocks for each file.
            -i, --inode: Print the index number of each file.
            -G, --no-group: Inhibit display of group information in long format.
            -p, --indicator-style=slash: Append a slash '/' to directories.
            -F, --classify: Append a character to each file indicating its type (e.g., '/' for directories, '*' for executables).

        Examples:
            ls (List files and directories in the current directory)
            ls /path/to/directory (List files and directories in a specific directory)
            ls -l (List files in long format)
            ls -a (List all files and directories, including hidden ones)
            ls -lt (List files sorted by modification time, newest first)
            ls -R (List files and directories recursively)
            ls -lh (List file sizes in human-readable format)
            ls -F (List files with indicators (e.g., '/' for directories))


2. ```cd```: Change directory.

   ```Syntax: cd [DIRECTORY]```

        Options:
            -: Change to the previous directory (equivalent to cd -).
            --: Treat subsequent arguments as directories, even if they begin with a hyphen.

        Examples: 
            cd 
            cd Documents (change to the "Documents" directory)
            cd ../Downloads
            cd /usr/local/bin (Change to a specific directory)
            cd - (Change to the previous directory)
            cd -- -directory_name (Change to a directory with a hyphen in its name) 
            cd ~
            cd ..
            cd ../.. 
            cd -P symbolic_link_to_directory (This command will resolve symbolic links and change to the actual directory they point to)
        

3. ```pwd```: Print working directory.

   ```Syntax: pwd [OPTION]```

        Options:
            -L, --logical: Display the logical current working directory, which doesn't necessarily reflect symbolic links in the path.
            -P, --physical: Display the physical current working directory, which resolves symbolic links in the path.

        Examples:
            pwd (displays the current directory path)
            pwd -L (Print the logical current working directory)
            pwd -P (Print the physical current working directory)
            

4. ```mkdir```: Make directory.

   ```Syntax: mkdir [OPTION]... DIRECTORY...```

        Options:
            -m, --mode=MODE: Set the file permission bits (mode) for the newly-created directories.
            -p, --parents: Create parent directories as needed. If the parent directory doesn't exist, mkdir creates it along with the target directory. This option avoids errors if the directory already exists.
            --verbose (-v): Print a message for each created directory.

        Examples:
            mkdir new_folder (creates a new directory named "new_folder")
            mkdir news_folder/another_folder
            mkdir -p path/to/new_directory (Create a directory and its parent directories if they don't exist)
            mkdir -m 755 directory_name (Create a directory with specific permissions)
            mkdir folder1 folder2 folder3 (Create multiple directories)
            mkdir --verbose directory_name (Create a directory and print a message for each creation)


5. ```rmdir```: Remove the Specified Empty directories.

   ```Syntax: rmdir [OPTION]... DIRECTORY...```

        Options:
            -p, --parents: Remove DIRECTORY and its ancestors; if all are empty, remove them.
            --ignore-fail-on-non-empty: Ignore each failure that is solely because a directory is non-empty.
            --no-preserve-root: Do not treat '/' specially.
            --verbose (-v): Print a message for each removed directory.

        Examples:
            rmdir directory_to_remove (Remove a single empty directory)
            rmdir dir1 dir2 dir3 (Remove multiple empty directories)
            rmdir -p parent_directory/child_directory (Remove a directory and its ancestors if empty)
            rmdir --verbose directory_name (Remove a directory and print a message for each removal)


6. ```rm```: Remove files or directories.
    
   ```Syntax: rm [OPTION]... [FILE]...```

        Options:
            -f, --force: Force removal without prompting, Ignore nonexistent files.
            -i, --interactive: Prompt before every removal.
            -r, --recursive: Remove directories and their contents recursively.
            -v, --verbose: Explain what is being done.
            -d, --dir: Remove empty directories.

        Examples:
            rm file.txt (Remove a single file)
            rm file1.txt file2.txt file3.txt (Remove multiple files)
            rm -r directory_name (Remove a directory and its contents recursively)
            rm -f file.txt (Forcefully remove a file without prompting)
            rm -i file.txt (Prompt before removing each file)
            rm -d empty_directory (Remove an empty directory)


7. ```cp```: Copy files or directories. 
     
   ```Syntax: cp [OPTION]... SOURCE... DESTINATION```

        Options:
            -r, --recursive: Copy directories recursively, including their contents.
            -i, --interactive: Prompt before overwriting existing files.
            -u, --update: Copy only when the SOURCE file is newer than the destination file or when the destination file is missing.
            -v, --verbose: Explain what is being done.
            -a, --archive: Preserve the specified attributes (mode, ownership, timestamps) when copying.
            -n, --no-clobber: Do not overwrite an existing file (equivalent to -i without the prompt).

        Examples:
            cp file.txt destination_folder/ (Copy a single file to a destination)
            cp file1.txt file2.txt destination_folder/ (Copy multiple files to a destination)
            cp -r directory_name destination_folder/ (Copy a directory and its contents recursively)
            cp -i file.txt destination_folder/ (Prompt before overwriting existing files)
            cp -u file.txt destination_folder/ (Copy only if source file is newer or destination file is missing)
            cp -a source_folder/ destination_folder/ (Preserve file attributes (mode, ownership, timestamps))
            cp -n file.txt destination_folder/ (Do not overwrite existing files)


8. ```mv```: Move or rename files or directories.

   ```Syntax: mv [OPTION]... SOURCE... DESTINATION```

        Options:
            -i, --interactive: Prompt before overwriting existing files.
            -v, --verbose: Explain what is being done.
            -f, --force: Do not prompt before overwriting.
            -u, --update: Move only when the SOURCE file is newer than the destination file or when the destination file is missing.
            -t, --target-directory=DIRECTORY: Move all SOURCE arguments into DIRECTORY.

        Examples:
            mv file.txt destination_folder/ (Move a single file to a destination)
            mv file1.txt file2.txt destination_folder/ (Move multiple files to a destination)
            mv directory_name destination_folder/ (Move a directory and its contents to a destination)
            mv old_file.txt new_file.txt (Rename a file)
            mv -i file.txt destination_folder/ (Prompt before overwriting existing files)
            mv -u file.txt destination_folder/ (Move only if source file is newer or destination file is missing)
            mv * destination_folder/ (Move all files to a target directory)
            mv -v file.txt destination_folder/ (Move files with verbose output)


9. ```cat```: Concatenate and display files.

   ```Syntax: cat [OPTION]... [FILE]...```

        Options:
            -b, --number-nonblank: Number non-blank output lines, starting at 1.
            -n, --number: Number all output lines, starting at 1.
            -s, --squeeze-blank: Suppress repeated empty output lines.
            -E, --show-ends: Display a $ character at the end of each line.
            -T, --show-tabs: Display TAB characters as ^I.
            -v, --show-nonprinting: Display non-printing characters as ^ followed by a letter or symbol.
            -A, --show-all: Equivalent to -vET.

        Examples:
            cat file.txt (Display the contents of a single file)
            cat file1.txt file2.txt (Display the contents of multiple files)
            cat file1.txt file2.txt > combined_file.txt (Concatenate multiple files and output to a new file)
            cat -n file.txt (Display line numbers for all output lines)
            cat -b file.txt (Display line numbers for non-blank output lines)
            cat -vET file.txt (Display non-printing characters and line endings)


10. ```touch```: It is used to create or update the timestamps (access and modification times) of files and directories. It is also commonly used to create empty files quickly.

    ```Syntax: touch [options] file...```

    When used with existing files, touch updates the access and modification times of the specified files to the current time, without modifying the file contents.

    If the specified files do not exist, touch creates empty files with the specified names.

    `touch` is often used in shell scripts, automation tasks, and file system management operations.

        Options:
            -a: Update only the access time of the file.
            -c: Do not create the file if it does not exist. This option suppresses the creation of new files.
            -m: Update only the modification time of the file.
            -d: Use the specified time instead of the current time. This option is used to set a specific timestamp.
            -r reference: Use the access and modification times of the reference file instead of the current time.
            --help: Display a help message and exit.
            --version: Display version information and exit.

        Examples:
            touch filename (Update the access and modification times of a file to the current time)
            touch file1 file2 file3 (Create multiple empty files)
            touch -a filename (Update only the access time of a file)
            touch -m filename (Update only the modification time of a file)
            touch -d "2022-04-01 12:00:00" filename (Use a specific timestamp to update a file)
            touch -r referencefile filename (Use the access and modification times of a reference file)
            touch -c filename (Suppress the creation of a file if it does not exist)
   

11. ```grep```: Search for patterns in files.

    ```Syntax: grep [OPTIONS] PATTERN [FILE...]```

        Options:
            -i, --ignore-case: Ignore case distinctions in patterns and input data.
            -v, --invert-match: Invert the sense of matching, displaying non-matching lines.
            -n, --line-number: Prefix each line of output with the line number within its input file.
            -r, --recursive: Recursively search subdirectories listed.
            -l, --files-with-matches: Print only the names of files containing matches, not the matching lines.
            -w, --word-regexp: Match only whole words.
            -E, --extended-regexp: Interpret PATTERN as an extended regular expression (ERE).
            -o, --only-matching: Print only the matched (non-empty) parts of matching lines.
            -c, --count: Suppress normal output; instead, print a count of matching lines for each input file.

        Examples:
            grep pattern file.txt (Search for a pattern in a file)
            grep pattern file1.txt file2.txt (Search for a pattern in multiple files)
            grep -r pattern directory/ (Search for a pattern in all files in a directory recursively)
            grep -i pattern file.txt (Search for a pattern ignoring case)
            grep -v pattern file.txt (Search for lines not containing a pattern)
            grep -n pattern file.txt (Search for a pattern and print line numbers)
            grep -l pattern file1.txt file2.txt (Print only the names of files containing matches)
            grep -c pattern file.txt (Count the number of lines containing matches)


12. ```find```: It is a powerful utility used to search for files and directories within a directory hierarchy based on various criteria. It allows users to locate files by name, size, type, modification time, and other attributes. 

    ```Syntax: find [path...] [expression]```

    The find command searches for files and directories recursively within the specified path(s) and evaluates expressions to determine matches.

    It can search based on various criteria such as file name, size, type, ownership, permissions, and timestamps.

    find supports a wide range of options and expressions, making it a versatile tool for file system operations and management.

        Options:
            -H: Follow symbolic links given on the command line.
            -L: Follow all symbolic links.
            -P: Never follow symbolic links.
            -type: Specifies the type of the file to search for (e.g., -type f for regular files, -type d for directories).
            -name: Searches for files and directories with the specified name (supports glob patterns).
            -size: Searches for files based on size (e.g., -size +10M for files larger than 10 megabytes).
            -mtime, -ctime, -atime: Searches for files based on modification, creation, or access time.
            -user, -group: Searches for files owned by a specific user or group.
            -perm: Searches for files with specific permissions.
            -exec: Executes a command on each matched file or directory.
            -print: Prints the matched file or directory path (default action if no other action is specified).

        Examples:
            find . (Search for all files and directories under the current directory)
            find . -type d -name "docs" (Search for all directories named "docs" under the current directory)
            find . -type f -size +10M (Search for all files larger than 10 megabytes under the current directory)
            find . -type f -mtime -7 (Search for files modified in the last 7 days under the current directory)
            find . -type f -user username (Search for all files owned by a specific user under the current directory)
            find . -type f -exec echo {} \; (Execute a command on each matched file (e.g., print file paths))
            find . -type f -perm /u=r (Search for files matching a specific permission (e.g., read-only))

    `find` is an essential command-line tool for searching and locating files and directories in Unix-like systems. It provides flexible options and expressions to meet various search requirements, making it a valuable asset for system administrators, developers, and users alike.


13. ```less```: Display contents of a file one screen at a time (similar to more, but with extended capabilities).


    ```Syntax: less [OPTIONS] [FILE]```

        Options:
            -N, --line-numbers: Display line numbers
            -i, --ignore-case: Ignore case when searching
            -F, --quit-if-one-screen: Exit immediately if the entire file fits on one screen
            /pattern: Search for a pattern within the file
            q: Quit less
            SPACE: Scroll forward one screen
            b: Scroll backward one screen
            g: Move to the beginning of the file
            G: Move to the end of the file

        Examples:
            less filename.txt (View a file with less)
            less -N filename.txt (View a file with line numbers)
            less filename.txt /pattern (Search for a pattern within a file)
            q (Exit less)


14. ```more```: A command to view (but not modify) the contents of a text file one screen at a time. A command to view (but not modify) the contents of a text file one screen at a time.
    
    ```Syntax: more [OPTIONS] [FILE]```

        Options:
            -num, +num: Start at line number num
            -d: Display help message
            q: Quit more
            SPACE: Scroll forward one screen
            b: Scroll backward one screen
            ENTER: Scroll forward one line

        Examples:
            more filename.txt (View a file with more)
            more +10 filename.txt (View a file starting from a specific line number)
            q (Exit more)


15. ```head```: Display the beginning/end of a file. (Output the first part of files)

    ```Syntax: head [OPTIONS]... [FILE]...```

        Options:
            -n, --lines=[-]NUM: Output the first NUM lines. With the leading '-', print all but the last NUM lines of each file.

        Examples:
            head file.txt (Display the first 10 lines of a file)
            head -n 20 file1.txt file2.txt (Display the first 20 lines of multiple files)
            head -n -5 file.txt (Display all but the last 5 lines of a file)


16. ```tail```: Output the last part of files.

    ```Syntax: tail [OPTIONS]... [FILE]...```

        Options:
            -n, --lines=[+]NUM: Output the last NUM lines. With the leading '+', display starting with line NUM of each file.
            -f, --follow: Output appended data as the file grows (like tail -f).

        Examples:
            tail file.txt (Display the last 10 lines of a file)
            tail -n 20 file1.txt file2.txt (Display the last 20 lines of multiple files)
            tail -n +5 file.txt (Display lines starting with line number 5 of a file)
            tail -f file.log (Display appended data as the file grows)


17. ```chmod```: Change file permissions. (Change file mode bits)

    ```Syntax: chmod [OPTION]... MODE[,MODE]... FILE...```

        Options:
            Symbolic Mode:
                u: User/Owner
                g: Group
                o: Others
                a: All (equivalent to ugo)
                +: Add permission
                -: Remove permission
                =: Set permission explicitly

            Absolute Mode:
                0: No permission
                1: Execute permission
                2: Write permission
                3: Write and execute permissions
                4: Read permission
                5: Read and execute permissions
                6: Read and write permissions
                7: Read, write, and execute permissions

        Examples:
            Symbolic Mode:
                Grant read and write permissions to the owner: chmod u+rw file.txt
                Remove execute permission for the group: chmod g-x file.txt
                Set permissions to read-only for all: chmod a=r file.txt
                
            Absolute Mode:
                Set permissions to 755 (rwxr-xr-x): chmod 755 file.txt
                Set permissions to 644 (rw-r--r--): chmod 644 file.txt


18. ```chown```: Change file owner and group.

    ```Syntax: chown [OPTION]... [OWNER][:GROUP] FILE...```

        Options:
            -R, --recursive: Recursively change ownership of directories and their contents.
            -c, --changes: Verbosely report changes.
            -v, --verbose: Output a diagnostic for every file processed.
            --from=CURRENT_OWNER[:CURRENT_GROUP]: Change the owner and/or group only if the file's current owner and/or group match the specified values.
            --no-dereference: Do not dereference symbolic links.

        Examples:
            chown newowner file.txt (Change the owner of a file)
            chown newowner:newgroup file.txt (Change the owner and group of a file)
            chown -R newowner directory/ (Change the owner of a directory and its contents recursively)
            chown newowner:newgroup -h symlink (Change the owner and group of a symbolic link)
            chown --from=oldowner newowner file.txt (Change the owner of a file only if its current owner is a specific user)
            chown -v newowner file.txt (Change the owner of a file and report changes)


19. ```ln```: Create links. (Tape archive)

    ```Syntax: ln [OPTION]... [-T] TARGET LINK_NAME   (1st form)```

    ```Syntax: ln [OPTION]... TARGET                  (2nd form)```

    ```Syntax: ln [OPTION]... TARGET... DIRECTORY     (3rd form)```

    ```Syntax: ln [OPTION]... -t DIRECTORY TARGET... (4th form)```

        Options:
            -s, --symbolic: Create symbolic links instead of hard links.
            -f, --force: Remove existing destination files.
            -i, --interactive: Prompt whether to remove existing destination files.
            -n, --no-dereference: Treat destination that is a symlink to a directory as if it were a normal file.
            -v, --verbose: Print the name of each linked file.

        Examples:
            ln file.txt hardlink.txt (Create a hard link)
            ln -s target_file symbolic_link (Create a symbolic link)
            ln -s file1.txt file2.txt directory/ (Create symbolic links for multiple files)
            ln -s -t directory/ file1.txt file2.txt (Create symbolic links in a different directory)
            ln -sf source_file link_name (Remove existing destination files without prompting)
            ln -v file.txt hardlink.txt (Create a hard link and print verbose output)


20. ```diff```: It is used to compare the contents of two files line by line and display the differences between them. It is particularly useful for identifying changes made to text files, configuration files, and source code files. 

    ```Syntax: diff [options] file1 file2```

    diff compares the contents of two files (file1 and file2) line by line and displays the differences between them.

    It identifies lines that are unique to each file, lines that are common to both files, and lines that differ between the files.

    diff outputs a list of changes needed to transform file1 into file2, using specific symbols to represent different types of changes.

        Options:
            -q, --brief: Output only whether the files differ, without displaying the actual differences.
            -i, --ignore-case: Ignore differences in case when comparing lines.
            -u, --unified: Output a unified diff format, which includes some context lines before and after each change.
            -r, --recursive: Recursively compare directories and their contents.
            -w, --ignore-all-space: Ignore all white space when comparing lines.
            -B, --ignore-blank-lines: Ignore changes that only involve blank lines.
            --color: Enable colorized output to highlight differences.
            -h, --help: Display a help message and exit.
            -v, --version: Display version information and exit.

        Examples:
            diff file1.txt file2.txt (Compare two text files and display differences)
            diff -r directory1 directory2 (Compare two directories and display differences)
            diff -u file1.txt file2.txt (Output differences in unified diff format)
            diff -i file1.txt file2.txt (Ignore differences in case when comparing lines)
            diff -w file1.txt file2.txt (Ignore all white space when comparing lines)
            diff -B file1.txt file2.txt (Ignore changes that only involve blank lines)
            diff --color file1.txt file2.txt (Enable colorized output to highlight differences)
            diff -q file1.txt file2.txt (Output only whether the files differ, without displaying the actual differences)


21. ```wc```: Print newline, word, and byte counts for files.

    ```Syntax: wc [OPTION]... [FILE]...```

    The wc command is used to count the number of newlines, words, and bytes in one or more files or standard input. It can be used to provide basic statistics about the content of text files.

        Options:
            -c, --bytes: Print the byte count.
            -m, --chars: Print the character count.
            -l, --lines: Print the newline count.
            -w, --words: Print the word count.
            --help: Display help message and exit.
            --version: Display version information and exit.

        Examples:
            wc filename (Display the line, word, and byte counts for a file)
            wc -l filename (Display only the line count)
            wc file1 file2 file3 (Display the total line, word, and byte counts for multiple files)
            wc -c * (Display the total byte count for all files in a directory)


22. ```cut```: Remove sections from each line of files.

    ```Syntax: cut OPTION... [FILE]...```

    The cut command is used to extract sections from each line of one or more files or from standard input. It is particularly useful for manipulating delimited text files, such as CSV (comma-separated values) or TSV (tab-separated values) files.

        Options:
            -b, --bytes=LIST: Select only these bytes.
            -c, --characters=LIST: Select only these characters.
            -d, --delimiter=DELIM: Use DELIM as the field delimiter character instead of TAB.
            -f, --fields=LIST: Select only these fields.
            --complement: Select characters, bytes, or fields not in LIST.
            -n: Do not split multi-byte characters. Treat each byte as a separate character.
        
        Examples:
            cut -b 1-10 filename.txt (Extract specific bytes from a file)
            cut -c 1-5,10-15 filename.txt (Extract specific characters from a file)
            cut -d ',' -f 1,3 filename.csv (Extract fields from a delimited file)
            cut -d ':' -f 1,2 filename.txt (Extract fields using a different delimiter)
            cut -d ',' --complement -f 2 filename.csv (Extract fields complementing a list)

    The `cut` command is commonly used to extract specific sections of text from files or input streams based on byte positions, character positions, or fields delimited by a specified delimiter. It is often used in combination with other commands or in shell scripts to process and manipulate text data efficiently.

        
23. ```sort```: Sort lines of text files

    ```Syntax: sort [OPTION]... [FILE]...```
    
    The sort command is used to sort the lines of one or more text files or standard input and display the result on standard output. By default, sort performs a case-sensitive lexicographical sort.

        Options:
            -r, --reverse: Reverse the result of comparisons.
            -n, --numeric-sort: Compare according to string numerical value.
            -h, --human-numeric-sort: Compare human-readable numbers (e.g., 2K, 1G).
            -f, --ignore-case: Perform case-insensitive sorting.
            -u, --unique: Suppress lines that are duplicates of the immediately preceding line.
            -t, --field-separator=SEP: Use SEP as the field separator character.
            -k, --key=KEYDEF: Sort by a key field, where KEYDEF is 'START[.END][OPTS]', where START and END are field numbers and OPTS is a combination of sorting options ('n' for numeric, 'r' for reverse).

        Examples:
            sort filename.txt (Sort lines in a file)
            sort -r filename.txt (Sort lines in reverse order)
            sort -n numbers.txt (Sort lines numerically)
            sort -f names.txt (Sort lines ignoring case)
            sort -t ':' -k 2,2 filename.txt (Sort lines using a custom field separator)

    The `sort` command is commonly used to arrange lines of text in a specified order. It offers various options for customizing the sorting behavior, such as sorting in reverse order (-r), sorting numerically (-n), ignoring case (-f), and specifying a custom field separator (-t). Additionally, the -u option can be used to remove duplicate lines, and the -k option allows sorting based on specific fields within each line. sort is often used in combination with other commands or in shell scripts to process and analyze text data effectively.


24. ```sed```: Stream editor for filtering and transforming text

    ```Syntax: sed [OPTION]... {script-only-if-no-other-script} [input-file]...```

    `sed` is a powerful text processing tool used for filtering and transforming text. It operates on streams of text input, making it suitable for use in pipelines. sed reads input line by line, applies the specified editing commands to each line, and outputs the result.

        Options:
            -e script, --expression=script: Add the script to the commands to be executed.
            -f script-file, --file=script-file: Add the contents of the script-file to the commands to be executed.
            -i[SUFFIX], --in-place[=SUFFIX]: Edit files in place (make backup if SUFFIX supplied).
            -n, --quiet, --silent: Suppress automatic printing of pattern space.
            -r, --regexp-extended: Use extended regular expressions in the script.
            -i, --ignore-case: Ignore case distinctions in the script.
            -s, --separate: Consider files as separate rather than as a single, continuous long stream.

        Examples:
            sed 's/old/new/' filename.txt (Substitute "old" with "new" in a file)
            sed '/pattern/d' filename.txt (Delete lines matching a pattern)
            sed '/pattern/i\New Line' filename.txt (Add a line before matching pattern)
            sed '/pattern/a\New Line' filename.txt (Add a line after matching pattern)
            sed -n '5,10p' filename.txt (Print specific lines)
            sed -f script.sed filename.txt (Perform multiple operations with a script file)

    `sed` is an essential tool for text manipulation in Unix-like environments. It supports various editing commands, including substitution (s), deletion (d), insertion (i), appending (a), printing (p), and more. Regular expressions can be used to specify patterns for matching and editing text. sed is often used in shell scripts, one-liners, and text processing pipelines for tasks such as search and replace, text filtering, and data transformation. Its flexibility and efficiency make it a valuable tool for working with text data.


25. ```awk```: A versatile programming language for text processing

    ```Syntax: awk [OPTIONS] 'program' file(s)```

    `awk` is a powerful text processing tool and programming language used for manipulating and analyzing text data. It operates on records (typically lines) and fields within those records. awk reads input line by line, applies the specified program to each line, and produces output based on the program's instructions.

        Options:
            -F, --field-separator: Specifies the input field separator.
            -f, --file: Specifies a file containing the awk program.
            -v, --assign: Assigns a value to a variable.

        Program Structure:
            pattern { action }: Specifies a pattern-action pair. If the pattern matches the current record, the associated action is executed.
            BEGIN { action }: Specifies an action to be performed before processing input.
            END { action }: Specifies an action to be performed after processing input.

        Examples:
            awk '{ print $1 }' filename.txt (Print the first field of each line)
            awk '$2 > 10' filename.txt (Print lines where the second field is greater than 10)
            awk 'END { print NR }' filename.txt (Print the total number of lines)
            awk '{ sum += $3 } END { print sum }' filename.txt (Print the sum of the third column)
            awk '/pattern/' filename.txt (Print lines containing a specific pattern)
            awk -F',' '{ print $1 }' filename.csv (Use a custom field separator)
            awk -f script.awk filename.txt (Execute an awk program stored in a file)
    
    `awk` is widely used for text processing tasks such as data extraction, reporting, and transformation. It provides a concise and expressive syntax for working with text data, making it suitable for both simple one-liners and complex data processing tasks. awk programs can include arithmetic operations, conditional statements, loops, and user-defined functions, allowing for sophisticated text manipulation and analysis.


26. ```uniq```: Report or omit repeated lines

    ```Syntax: uniq [OPTION]... [INPUT [OUTPUT]]```

    The uniq command is used to report or omit repeated lines in a sorted input. By default, it compares adjacent lines, removing duplicates that are adjacent to each other. It is commonly used in conjunction with the sort command.
            
        Options:
            -c, --count: Prefix lines by the number of occurrences.
            -d, --repeated: Only print duplicate lines.
            -i, --ignore-case: Ignore differences in case when comparing lines.
            -u, --unique: Only print unique lines (discard duplicates).
            -f N, --skip-fields=N: Avoid comparing the first N fields.
            -s N, --skip-chars=N: Avoid comparing the first N characters.
            -w N, --check-chars=N: Compare no more than N characters in lines.
        
        Examples:
            uniq filename.txt (Remove adjacent duplicate lines)
            uniq -c filename.txt (Count the number of occurrences of each line)
            uniq -d filename.txt (Only print duplicate lines)
            uniq -u filename.txt (Only print unique lines)
            uniq -i filename.txt (Ignore case when comparing lines)
            uniq -f 2 filename.txt (Skip the first two fields when comparing lines)
            uniq -s 10 filename.txt (Skip the first 10 characters when comparing lines)
        
    The `uniq` command is commonly used to process and analyze text data by removing or identifying duplicate lines. It is often used in conjunction with the `sort` command to remove duplicate lines from sorted input. The -c option is useful for counting the number of occurrences of each line, while the -d and -u options allow you to selectively print duplicate or unique lines, respectively. Additionally, options like -i allow you to ignore case differences when comparing lines, and -f, -s, and -w provide flexibility in specifying fields or characters to skip when comparing lines. Overall, uniq is a versatile tool for handling duplicate lines in text files.


27. ```tar```: Archive files.

    ```Syntax: tar [OPTION...] [FILE]...```

        Options:
            Create Options:
                -c, --create: Create a new archive.
                -f, --file=ARCHIVE: Specify the archive file.
                -v, --verbose: Verbosely list files processed.
                -z, --gzip: Compress the archive using gzip.
                -j, --bzip2: Compress the archive using bzip2.
                -t, --list: List the contents of the archive.

            Extract Options:
                -x, --extract, --get: Extract files from an archive.
                -C, --directory=DIR: Extract files to DIR.

            Other Options:
                -r, --append: Append files to the end of an archive.
                -u, --update: Only append files that are newer than the existing ones in the archive.
                -d, --diff, --compare: Find differences between archive and file system.
                -A, --catenate, --concatenate: Append tar files to an archive.
                -W, --verify: Check for archive consistency.

        Examples:
            tar -cvf archive.tar file1 file2 directory (Create an Archive)
            tar -xvf archive.tar (Extract an Archive)
            tar -czvf archive.tar.gz file1 file2 directory (Create a Gzipped Archive) or
            tar -czvf archive.tar.gz directory (creates a compressed archive of "directory")
            tar -xzvf archive.tar.gz (Extract a Gzipped Archive)
            tar -tvf archive.tar (List the Contents of an Archive)


28. ```gzip```: Compress files.

    It is used to compress files. It replaces the original file with a compressed version, appending the .gz extension to the filename.

    Compressed files typically have a smaller size, making them easier to transfer and store.

    Multiple files can be compressed at once, and gzip preserves the original files by default.

    ```Syntax: gzip [options] [file(s)]```

        Options:
            -d, --decompress: Decompress the specified gzip file(s) instead of compressing.
            -f, --force: Force compression or decompression, even if it would overwrite existing files.
            -r, --recursive: Recursively compress or decompress files in directories.
            -t, --test: Test the integrity of the compressed file(s) without decompressing.
            -v, --verbose: Display verbose output, showing the compression ratio for each file.

        Examples:
            gzip file.txt (Compress a single file)
            gzip file1.txt file2.txt (Compress multiple files)
            gzip -d file.txt.gz (Decompress a gzip file)
            gzip -r directory (Compress a directory and its contents recursively)


29. ```gunzip```: Decompress files.

    gunzip is used to decompress gzip-compressed files. It restores the original file(s) by removing the .gz extension.

    `gunzip` is essentially `equivalent` to `gzip -d`.

    ```Syntax: gunzip [options] [file(s)]```

        Options:
            -c, --stdout: Write decompressed data to standard output instead of overwriting the original file.
            -f, --force: Force decompression, even if it would overwrite existing files.
            -k, --keep: Keep the original gzip file(s) after decompression.
            -r, --recursive: Recursively decompress files in directories.
            -t, --test: Test the integrity of the compressed file(s) without decompressing.
            -v, --verbose: Display verbose output, showing the decompression progress.

        Examples:
            gunzip file.txt.gz (Decompress a single gzip file)
            gunzip file1.txt.gz file2.txt.gz (Decompress multiple gzip files)
            gunzip -c file.txt.gz > file.txt (Decompress a gzip file and write the output to standard output)
            gunzip -r directory (Decompress a directory and its contents recursively)


30. ```ps```: The ps command in Unix-like operating systems is used to provide information about currently running processes. It stands for `"process status"`.

    ```Syntax: ps [options]```

    Without any options, ps displays information about processes owned by the current user and associated with the current terminal.

    It provides a snapshot of currently running processes, including their process IDs (PIDs), CPU and memory usage, command name, and other attributes.

    The output of ps can vary based on the options used and the operating system's implementation.

    `ps` is a versatile command that provides valuable insights into the system's current process activity. It is commonly used for process monitoring, troubleshooting, and performance analysis in Unix-like operating systems.

        Options:
            -a: Displays information about all processes on the system except session leaders and processes not associated with a terminal.
            -e: Displays information about all processes on the system.
            -f: Provides a full-format listing, displaying additional information such as the UID, PPID (parent process ID), CPU and memory usage, start time, and command.
            -l: Provides a long-format listing, displaying detailed information about processes, including process state codes, CPU time, and controlling terminal.
            -u: Displays the user-oriented format, showing the user's processes.
            -x: Includes processes without a controlling terminal.
            -C command: Displays information about processes with the specified command name.
            -p pidlist: Displays information about processes with the specified process IDs.
            -k: Sorts the output by processes' start time (youngest first).
            -r: Sorts the output by CPU usage (highest first).
            -n: Limits the number of processes displayed.
            --forest: Displays processes in a tree-like format, showing parent-child relationships.

        Examples:
            ps (Display information about processes owned by the current user)
            ps -ef (Display detailed information about all processes on the system)
            ps -ax (Display information about all processes, including those without a controlling terminal)
            ps -C nginx (Display information about processes with a specific command name)
            ps -p 1234 (Display information about a specific process ID)
            ps --forest (Display processes in a tree-like format)
            ps -u username (Display information about processes using the user-oriented format)


31. ```kill```: The kill command in Unix-like operating systems is used to terminate or send signals to processes. It allows users to control running processes by sending specific signals to them.

    ```Syntax: kill [options] pid(s)```

    The kill command is primarily used to terminate processes by sending them signals.
    By default, kill sends the TERM signal (signal number 15) to the specified processes, which typically results in a graceful termination.

    If a process does not respond to the TERM signal, the KILL signal (signal number 9) can be sent, which forcefully terminates the process.

    kill can also be used to send other signals to processes, allowing users to perform various actions, such as suspending, resuming, or reloading processes.

        Options:
            -s signal, --signal=signal: Specifies the signal to send to the process. This can be specified either by name (e.g., TERM, KILL) or by signal number (e.g., 15, 9).
            -l, --list: Lists available signal names.
            -n, --no-cleanup: Does not remove the killed processes from the process table. This option is useful for scripts.
            -p: Interprets the arguments as process IDs (PIDs) instead of command names or job IDs.
            -h, --help: Displays a help message and exits.
            -V, --version: Displays version information and exits.
            -9: is a forceful way to terminate a process
                The -9 option sends the SIGKILL signal to the specified process, which immediately terminates it without allowing it to perform any cleanup or graceful shutdown procedures. 

        Examples:
            kill 1234 (Terminate a process with a specific PID using the default TERM signal)
            kill 1234 5678 91011 (Terminate multiple processes by specifying their PIDs)
            kill -s KILL 1234 (Send a specific signal (e.g., SIGKILL) to a process)
            kill -s TERM -1234 (Send a signal to a process group by specifying a negative PID)
            kill -l (List available signal names)
            kill -n 1234 (Send a signal to a process without removing it from the process table)
            kill -TERM $(pgrep nginx) (Send a signal to a process by name using the -p option)
            kill -9 1234 (orceful way to terminate a process)

    kill is a powerful command that provides users with control over running processes. It is commonly used for process management, troubleshooting, and system administration tasks in Unix-like operating systems. When used with caution, kill can help maintain system stability and performance.

    While kill -9 ensures that the process is terminated promptly, it may leave behind temporary files, lock files, or other resources in an inconsistent state. Therefore, it's generally recommended to try terminating a process gracefully first using the kill command without the -9 option (e.g., kill PID), allowing the process to clean up after itself if possible. If the process does not respond to the TERM signal, then using kill -9 may be necessary as a last resort.


32. ```whoami```: It is used to print the username of the current user. It simply outputs the username associated with the current effective user ID.

    ```Syntax: whoami```

    The whoami command is a simple utility that prints the effective username of the current user.

    It does not take any arguments or options and provides a quick way to determine the username of the user running the command.

        Examples:
            whoami (Print the username of the current user)

            Use whoami in a script to perform actions based on the current user
            #!/bin/bash
            current_user=$(whoami)
            echo "Hello, $current_user!"

            echo "You are $(whoami)" (Determine the current user in a shell session)

            ls -l $(which $(whoami)) (Use whoami in combination with other commands)


33. ```who```: It used to display information about users who are currently logged into the system. It provides details such as usernames, terminal names, login times, and other session-related information.

    ```Syntax: who [options]```

    The who command displays information about users who are currently logged in to the system.

    It retrieves data from various system files, including `/var/run/utmp`, `/var/log/wtmp`, and `/var/log/lastlog`.

    who is commonly used by system administrators to monitor active user sessions, identify users who are logged in remotely, and troubleshoot login-related issues.

        Options:
            -a, --all: Equivalent to -b -d --login -p -r -t -T -u.
            -b, --boot: Displays information about the time of the last system boot.
            -d, --dead: Displays information about dead processes (obsolete; use ps instead).
            -H, --heading: Displays column headings before the output.
            -i, --idle: Displays idle time for each user session.
            -l, --login: Displays information about login processes.
            -m, --message: Displays information about currently logged-in users.
            -p, --process: Displays information about active processes.
            -r, --runlevel: Displays information about the current runlevel.
            -s, --short: Displays a shorter output format.
            -T, --mesg: Displays information about terminal messages (obsolete; use mesg command instead).
            -t, --time: Displays time of last system activity (obsolete; use last command instead).
            -u, --users: Displays information about currently logged-in users.
            --version: Displays version information and exits.
            --help: Displays a help message and exits.

        Examples:
            who (Display information about currently logged-in users)
            who -b (Display information about the time of the last system boot)
            who -u (Display information about currently logged-in users and their idle times)
            who -s (Display a shorter output format)
            who -l (Display information about login processes)
            who -p (Display information about active processes)
            who -r (Display information about the current runlevel)


34. ```sudo```: It is used to execute commands with elevated privileges. It allows users to perform tasks that require administrative permissions, such as installing software, modifying system configuration files, and managing system services.

    ```Syntax: sudo [options] command [arguments]```

    sudo stands for "superuser do" or "substitute user do".

    By default, sudo allows a permitted user to execute a command as the superuser (root), but it can also be configured to allow users to execute commands as other users or groups.

    Running commands with sudo requires users to authenticate themselves by entering their own password (or the root password, depending on configuration).

    sudo logs all user commands and can provide a record of administrative activity for auditing purposes.

        Options:
            -h, --help: Displays a help message and exits.
            -l, --list: Lists the allowed (or forbidden) commands for the invoking user.
            -v, --version: Displays version information and exits.
            -k, --reset-timestamp: Invalidates the user's cached credentials, prompting for password authentication on the next sudo invocation.
            -i, --login: Starts a login shell as the target user (root by default).
            -u user, --user=user: Specifies the user as whom the command should be run.
            -g group, --group=group: Specifies the group as whom the command should be run.
            -s, --set-home: Sets the HOME environment variable to the home directory of the target user.
            -E, --preserve-env: Preserves the user's environment variables when running the command.
            -H, --set-home: Sets the HOME environment variable to the home directory of the target user.

        Examples:
            sudo apt-get update (Run a command as root)
            sudo systemctl restart nginx (Run a command with elevated privileges)
            sudo -l (List the allowed commands for the invoking user)
            sudo -i (Start a login shell as the root user)
            sudo -u username command (Run a command as a specific user)
            sudo -g groupname command (Run a command as a specific group)
            sudo -k (Reset the sudo timestamp, prompting for password authentication on the next invocation)

    `sudo` is a powerful tool for managing system resources and executing privileged commands in Unix-like operating systems. It helps ensure that administrative tasks are performed securely and with appropriate oversight. However, it should be used with caution to prevent unintended system modifications or security vulnerabilities.


35. ```ssh```: It is used to establish secure shell connections to remote systems. It stands for "Secure Shell" and provides encrypted communication sessions over a network.

    ```Syntax: ssh [OPTIONS] [USER@]HOST [COMMAND]```

    ssh allows users to connect to remote systems securely and execute commands on those systems.

    It provides strong encryption of data transmitted over the network, ensuring confidentiality and integrity.

    ssh can be used for various purposes, including remote administration, file transfer (with tools like `SCP` or `SFTP`), and tunneling of network connections (with options like port forwarding).

        Options:
            -l user, --login=user: Specifies the username to use when connecting to the remote system.
            -p port, --port=port: Specifies the port number to connect to on the remote system (default is 22).
            -i identity_file, --identity=identity_file: Specifies the path to the private key file for authentication.
            -L [bind_address:]port:host:hostport, --local-port=port:host:hostport: Specifies local port forwarding.
            -R [bind_address:]port:host:hostport, --remote-port=port:host:hostport: Specifies remote port forwarding.
            -X, --X11-forwarding: Enables X11 forwarding, allowing graphical applications to be displayed on the local machine.
            -C, --compression: Enables compression of data during transmission.
            -v, --verbose: Displays verbose output, providing more detailed information about the connection process.
            -q, --quiet: Suppresses warning and diagnostic messages.
            -T, --no-pty: Disables pseudo-terminal allocation, useful for running commands without interactive shell access.

        Examples:
            ssh username@hostname (Connect to a remote system)
            ssh -p 2222 username@hostname (Connect to a remote system on a specific port)
            ssh -i /path/to/private_key username@hostname (Connect to a remote system using a specific private key)
            ssh -L 8080:localhost:80 username@hostname (Forward a local port to a remote system)
            ssh -X username@hostname (Enable X11 forwarding to run graphical applications)
            ssh username@hostname "ls -l" (Connect to a remote system and execute a command)
            ssh -T username@hostname (Connect to a remote system and start a remote shell without allocating a pseudo-terminal)

    ssh is a versatile and widely-used tool for securely accessing and managing remote systems. It provides powerful encryption and authentication mechanisms, making it a preferred method for remote administration and communication in Unix-like environments.


36. ```hostname```: It is used to display or set the hostname of the system. The hostname is the label assigned to a device on a network and is used to identify it in various network operations.

    ```Syntax: hostname [options] [new_hostname]```

    When used without any options or arguments, hostname simply prints the hostname of the system.

    If provided with a new hostname as an argument, hostname sets the hostname of the system to the specified value.

    The hostname is typically a short alphanumeric label and can include dots (.) and hyphens (-) but not spaces.

    The hostname is used by various network services and applications to identify the system on the network.

        Options:
            -a, --alias: Display the aliases for the hostname (additional names by which the host is known).
            -d, --domain: Display the domain name associated with the hostname.
            -f, --fqdn: Display the fully qualified domain name (hostname plus domain name).
            -i, --ip-address: Display the IP address(es) associated with the hostname.
            -s, --short: Display the short hostname (the part of the hostname before the first period).
            -y, --yp: Display the NIS/YP domainname.

        Examples:
            hostname (Print the hostname of the system)
            hostname -f (Print the fully qualified domain name (FQDN) of the system)
            sudo hostname newhostname (Set the hostname of the system to a new value)
            hostname -i (Display the IP address associated with the hostname)
            hostname -a (Display the aliases for the hostname)


37. ```uname```: Print system information.

    ```Syntax: uname [OPTION]...```

    The uname command prints system information about the current operating system.

        Options:
            -a, --all: Display all available information.
            -s, --kernel-name: Display the kernel name.
            -n, --nodename: Display the network node hostname.
            -r, --kernel-release: Display the kernel release.
            -v, --kernel-version: Display the kernel version.
            -m, --machine: Display the machine hardware name.
            -p, --processor: Display the processor type (non-portable).
            -i, --hardware-platform: Display the hardware platform (non-portable).
            -o, --operating-system: Display the operating system.

        Examples:
            uname -a (Display all system information)
            uname -s (Display the kernel name)
            uname -n (Display the network node hostname)
            uname -r (Display the kernel release)
            uname -m (Display the machine hardware name)

    The `uname` command is useful for retrieving basic system information such as the kernel name, release, version, machine hardware name, and more. It is commonly used in shell scripts and system administration tasks to determine system characteristics and to write scripts that behave differently based on the system's configuration. The -a option is often used to display all available system information at once.


38. ```uptime```: Show how long the system has been running.

    ```Syntax: uptime [OPTION]...```

    The `uptime` command displays how long the system has been running, along with other information such as the current time, the number of users logged in, and system load averages.

        Options:
            -p, --pretty: Display uptime in a more human-readable format.
            -s, --since: Display the time since the system was last booted.
            -h, --help: Display help message and exit.
            -V, --version: Display version information and exit.
        
        Examples:
            uptime (Display uptime in a simple format)
            uptime -p (Display uptime in a more human-readable format)
            uptime -s (Display the time since the system was last booted)
    
    The `uptime` command is commonly used to check the system's uptime, which indicates how long the system has been running since it was last booted. It also provides information about the system's load averages over the last 1, 5, and 15 minutes. The -p option displays uptime in a more human-readable format, such as "up 1 day, 2 hours, 30 minutes", while the -s option shows the exact time since the system was last booted.


39. ```du```: It is used to estimate file space usage. It recursively summarizes disk usage of files and directories in a filesystem hierarchy.

    ```Syntax: du [options] [file(s) or directory]```

    The du command calculates the disk usage of files and directories, including the space used by their subdirectories.

    By default, it displays the disk space usage in kilobytes (KB).

    It is useful for identifying large files or directories consuming significant disk space.

    du traverses the filesystem hierarchy from the specified file(s) or directory downward unless limited by the -d option.

        Options:
            -h, --human-readable: Print sizes in human-readable format (e.g., 1K, 234M, 2G).
            -s, --summarize: Display only the total disk space usage of each argument.
            -c, -total: Display a grand total of the disk space usage.
            -a, --all: Include all files and directories, not just directories.
            -d depth, --max-depth=depth: Limit the depth of the directory traversal to the specified level.
            -k, --kilobytes: Display disk usage in kilobytes (default).
            -m, --megabytes: Display disk usage in megabytes.
            -g, --gigabytes: Display disk usage in gigabytes.
            --block-size=size: Set the block size for disk usage calculation.
            --exclude=glob: Exclude files that match the specified pattern from the calculation.

        Examples:
            du directory/ (Display disk usage of a directory)
            du -h directory/ (Display disk usage in human-readable format)
            du -sh directory/ (Display total disk usage of a directory)
            du -ch directory1/ directory2/ (Display total disk usage of multiple directories and calculate the grand total)
            du -d 2 directory/ (Limit the depth of the directory traversal to two levels)
            du --exclude='*.log' directory/ (Exclude certain files or directories from the calculation)
            du -m directory/ (Display disk usage in megabytes)
            du --block-size=1K directory/ (Set a custom block size for disk usage calculation)


40. ```df```: Report file system disk space usage.

    ```Syntax: df [OPTION]... [FILE]...```

    `df` is a command-line utility used to display information about the disk space usage of file systems mounted on the system. It shows the total size, used space, available space, and percentage usage for each file system.

        Options:
            -a, --all: Include pseudo, duplicate, inaccessible file systems.
            -B, --block-size=SIZE: Set the block size to SIZE.
            -h, --human-readable: Print sizes in human-readable format (e.g., 1K, 234M, 2G).
            -H, --si: Print sizes in human-readable format using powers of 1000 (e.g., 1K, 1.1M, 1.2G).
            -i, --inodes: Display inode information instead of block usage.
            -l, --local: Limit listing to local file systems.
            -T, --print-type: Print file system type.
            -t, --type=TYPE: Limit listing to file systems of type TYPE.
            --total: Display a grand total.

        Examples:
            df (Display disk space usage for all file systems)
            df -h (Display disk space usage in human-readable format)
            df /dev/sda1 (Display disk space usage for a specific file system)
            df -i (Display disk space usage with inode information)
            df -l (Display disk space usage for local file systems only)
            df --total (Display a grand total of disk space usage)
    
    `df` provides essential information about disk space usage, which is useful for monitoring and managing file systems. It displays information such as the total size, used space, available space, and percentage usage for each file system mounted on the system. The -h option is particularly useful for displaying sizes in a human-readable format, making it easier to understand the disk space usage at a glance. Additionally, options like -i allow you to display inode information instead of block usage, and -l limits the listing to local file systems only.


41. ```htop```: It is an interactive process viewer for Unix-like systems. It provides a more user-friendly and feature-rich alternative to the traditional top command.

    ```Syntax: htop```,
    ```htop - Interactive process viewer```

    htop is a command-line utility used to monitor system processes in real-time. It displays a list of processes running on the system, along with detailed information about CPU, memory, and other system resources usage. htop offers a user-friendly interface with features like scrolling, searching, sorting, tree view, and color-coded display.

        Features:
            Interactive Interface: htop provides an interactive interface with mouse support and keyboard shortcuts for navigating and interacting with the process list.

            Color-coded Display: Processes are color-coded based on their resource usage, making it easier to identify CPU-intensive or memory-hungry processes.

            Column Sorting: Processes can be sorted based on various criteria such as CPU usage, memory usage, process ID, and more.

            Tree View: htop can display processes in a hierarchical tree view, showing parent-child relationships between processes.

            Process Actions: htop allows you to perform various actions on processes, such as killing, renicing, and changing priority.

            Detailed Process Information: Detailed information about each process, including process ID, user, CPU usage, memory usage, command, and more, is displayed.

            Customizable Display: Users can customize the display by selecting which columns to show, changing the update interval, and configuring colors and themes.

            Search Functionality: htop provides a search functionality to filter processes based on specific criteria.

        Keyboard Shortcuts:
            Up/Down Arrow Keys: Navigate through the process list.
            Left/Right Arrow Keys: Change the selected column for sorting.
            Spacebar: Mark/unmark a process for action (e.g., killing).
            F1: Display help.
            F2: Setup options.
            F3: Search.
            F4: Filter by process.
            F5: Tree view.
            F6: Sort by.
            F7: Nice process.
            F8: Kill process.
            F9: Change priority.
            F10: Quit htop.

        Example:
            Run htop in the terminal:
            `htop`

    `htop` provides a comprehensive and user-friendly interface for monitoring system processes, making it a valuable tool for system administrators, developers, and anyone else needing to monitor system resource usage in real-time. Its interactive features, color-coded display, and customization options make it a popular choice for process monitoring on Unix-like systems.


42. ```findmnt```: It is used to list mounted file systems. It displays information about currently mounted filesystems and their mount points in a tree-like format.

    ```Syntax: findmnt [options] [filter]```

    The findmnt command lists mounted filesystems, including those mounted by the kernel, the user, or the system administrator.

    It provides a comprehensive view of mounted filesystems, including their device, mount point, file system type, mount options, and other details.

    findmnt can be used to filter and display specific mounted filesystems based on various criteria.

        Options:
            -h, --help: Displays a help message and exits.
            -V, --version: Displays version information and exits.
            -l, --list: Lists all mounted filesystems.
            -o, --output list: Specifies the output columns to be displayed (e.g., SOURCE, TARGET, FSTYPE, OPTIONS).
            -n, --noheadings: Suppresses column headings in the output.
            -t, --types list: Specifies the filesystem types to be displayed.
            -R, --raw: Displays the output in a raw format without any alignment.
            -r, --output-all: Outputs all fields, even if they are empty.
            -P, --pairs: Outputs key-value pairs separated by a newline.
            -s, --source source: Displays information about the specified source device or mount point.
            -S, --nofsroot: Does not show the filesystem root mount point.

        Examples:
            findmnt (List all mounted filesystems)
            findmnt -R (List all mounted filesystems in a raw format)
            findmnt /mnt/data (Display information about a specific mount point)
            findmnt -t nfs (List only NFS-mounted filesystems)
            findmnt -n (List mounted filesystems without column headings)
            findmnt -P (Show key-value pairs for each mounted filesystem)
            findmnt -s /dev/sda1 (Display information about a specific device)

    `findmnt` is a versatile command for listing and displaying information about mounted filesystems in Unix-like systems. It provides valuable insights into the system's storage configuration, aiding in system administration, troubleshooting, and disk management tasks.


43. ```ncdu```: (NCurses Disk Usage) is a command-line disk usage analyzer tool for Unix-like operating systems. It provides a simple and interactive way to visualize disk space usage and identify large files and directories.

    ```Syntax: ncdu [options] [directory]```

    ncdu recursively scans the specified directory (or the current directory if none is provided) and displays disk usage information in a hierarchical format.

    It presents the disk usage data in a user-friendly NCurses-based interface, allowing users to navigate through directories, view file sizes, and perform various actions.

    ncdu is particularly useful for identifying space-consuming files and directories, allowing users to manage disk space more efficiently.

        Options:
            -q, --quick: Fast mode. Do not calculate sizes of individual files and directories.
            -o, --order: Sort output by specified criteria (e.g., size, name).
            -x, --exclude: Exclude files or directories matching the specified pattern from the analysis.
            -r, --read-only: Read-only mode. Prevents deletion or modification of files.
            -f, --foreground: Run in foreground. Useful when ncdu is executed within scripts.
            -x, --exclude: Exclude files or directories matching the specified pattern from the analysis.
            -o, --order: Sort output by specified criteria (e.g., size, name).
            -a, --all: Include hidden files and directories in the analysis.
            -t, --color: Enable colorized output.
    -e, --si: Use SI units (e.g., MB, GB) instead of binary units (e.g., MiB, GiB).

        Examples:
            ncdu (Analyze disk usage of the current directory)
            ncdu /path/to/directory (Analyze disk usage of a specific directory)
            ncdu --exclude '*.log' (Exclude files or directories matching a specific pattern)
            ncdu --order size (Sort output by file size)
            ncdu --color (Enable colorized output)
            ncdu --si (Analyze disk usage in SI units)
            ncdu --read-only (Run ncdu in read-only mode to prevent accidental modifications)

    `ncdu` is a powerful and convenient tool for analyzing disk space usage on Unix-like systems. Its interactive interface and various options make it easy to identify large files and directories, helping users efficiently manage disk space.


44. ```ifconfig```: It is used to configure network interfaces and display information about network interfaces. It allows users to view, configure, and manage network settings such as IP addresses, netmasks, broadcast addresses, and more. 

    ```Syntax: ifconfig [interface] [options]```

    Without any options, ifconfig displays the configuration details of all active network interfaces.

    When provided with an interface name, ifconfig displays information specific to that interface.

    `ifconfig` requires superuser privileges (e.g., running with sudo) to modify network configurations.

        Options:
            -a, --all: Displays information about all interfaces, including those that are currently down.
            interface: Specifies the network interface to configure or display information about.
            inet: Specifies the IPv4 address to assign to the interface.
            netmask: Specifies the subnet mask for the interface.
            broadcast: Specifies the broadcast address for the interface.
            up: Activates the specified interface.
            down: Deactivates the specified interface.
            hw ether: Specifies the MAC address (hardware address) for the interface.
            promisc: Puts the specified interface into promiscuous mode (capture all packets on the network).
            mtu: Specifies the Maximum Transmission Unit (MTU) size for the interface.
            add, del: Adds or deletes an IP address from the interface.
            pointopoint: Specifies a point-to-point connection.
            arp: Manipulates the ARP cache for the interface.
            vlan: Specifies VLAN-related options for the interface.
            tunnel: Specifies tunneling options for the interface.

        Examples:
            ifconfig (Display configuration details of all active network interfaces)
            ifconfig eth0 (Display configuration details of a specific network interface (e.g., eth0))
            sudo ifconfig eth0 inet 192.168.1.100 (Assign an IPv4 address to a network interface)
            sudo ifconfig eth0 up (Activate a network interface)
            sudo ifconfig eth0 down (Deactivate a network interface)
            sudo ifconfig eth0 promisc (Put a network interface into promiscuous mode)
            sudo ifconfig eth0 hw ether 00:11:22:33:44:55 (Change the MAC address of a network interface)
            sudo ifconfig eth0 mtu 1500 (Change the MTU size of a network interface)

    `ifconfig` is a versatile command-line tool for configuring and managing network interfaces in Unix-like systems. It is widely used by system administrators, network engineers, and users to configure network settings and troubleshoot network-related issues. However, note that ifconfig has largely been superseded by ip command in modern Linux distributions.


45. ```echo```: It is used to display text or variables on the standard output (usually the terminal). It is one of the most basic and frequently used commands in shell scripting.

    ```Syntax: echo [options] [text or variables]```

    The echo command simply prints its arguments (text or variables) to the standard output.

    It is commonly used to display messages, variables, or command outputs on the terminal.

    echo does not interpret backslashes unless the -e option is used, which enables interpretation of backslash escapes (such as \n for newline).

    Unlike `printf`, echo automatically appends a newline character to the end of its output.

        Options:
            -e: Enables interpretation of backslash escapes in the input string.
            -n: Suppresses the trailing newline that echo normally outputs.
            -E: Disables interpretation of backslash escapes in the input string (enabled by default).
        
        Examples:
            echo "Hello, world!" (Print a simple message)

            name="John"
            echo "Hello, $name!" (Print the value of a variable)

            age=30
            echo "My name is $name, and I am $age years old." (Print multiple variables and text)

            echo -e "Line 1\nLine 2" (Use escape sequences to format the output (with -e option))

            echo -n "This is a message "
            echo "without a newline." (Suppress the trailing newline)

            #!/bin/bash
            echo "This is a script." (Use echo in a script to display a message)


46. ```read```: Read a line from standard input.

    ```Syntax: read [OPTIONS] [VARIABLES...]```

    The read command reads a line of text from standard input or from a file descriptor and assigns it to one or more variables. It waits for the user to input text followed by the Enter key.

        Options:
            -p PROMPT: Display PROMPT before reading input.
            -r: Do not allow backslashes to escape any characters in the input (raw mode).
            -a ARRAY: Read input into an array variable.
            -d DELIMITER: Use DELIMITER to terminate the input line instead of newline.
            -t TIMEOUT: Set a timeout for reading input in seconds.
            -u FILE_DESCRIPTOR: Read from the specified file descriptor instead of standard input.
        
        Examples:
            read variable_name (Read input into a variable)
            read -p "Enter your name: " name (Display a prompt and read input)
            read -a array_name (Read input into an array)
            read -u 3 variable_name <&3 (Read input from a file descriptor)
            read -t 5 variable_name (Read input with a timeout)

    The read command is commonly used in shell scripts to interact with users, allowing them to provide input that can be used as variables in subsequent commands. It can also be used to read input from files or other sources using file descriptors.


47. ```printf```: It is used to format and print text on the standard output (usually the terminal) according to specified format specifications. It is similar to the printf function in programming languages like C.

    ```Syntax: printf format [arguments...]```

    printf prints formatted text to the standard output based on the format specifications provided.

    The format string can contain ordinary characters and format specifiers, which are placeholders for inserting the values of additional arguments.

    Format specifiers begin with a percent sign (%) followed by a conversion character indicating the type of data to be printed (e.g., %s for strings, %d for integers).

    Additional arguments are optional and provide values to be inserted into the format string according to the format specifiers.

        Options:
            None. printf does not have any command-line options.
        
        Format Specifiers:
            %s: String
            %d, %i: Signed decimal integer
            %u: Unsigned decimal integer
            %x, %X: Hexadecimal integer (lowercase/uppercase)
            %o: Octal integer
            %f, %F: Floating-point number
            %e, %E: Floating-point number in scientific notation
            %c: Character
        
        Examples:
            printf "Hello, world!\n" (Print a simple message)

            name="John"
            printf "Hello, %s!\n" "$name" (Print a formatted message with a variable)

            name="John"
            age=30
            printf "Name: %s, Age: %d\n" "$name" "$age" (Print formatted output with multiple variables)

            printf "Number: %05d\n" 42 (Pad a number with leading zeros)

            pi=3.14159
            printf "Pi: %.2f\n" "$pi" (Print output with specific field width and precision)

            printf "Line 1\nLine 2\nLine 3\n" (Print output in multiple lines)

            #!/bin/bash
            printf "Today's date: %s\n" "$(date)" (Use printf in a script to format output)
