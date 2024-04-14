# Shell Scripting

Shell scripting involves using a variety of commands to perform tasks within a Unix-like shell environment. Here are some essential commands frequently used in shell scripting:

---

### 1. ```Variables:```

Used to store data.

* __Assignment:__ Variables are assigned using the = operator, without spaces around it. Variable names can contain letters, digits, and underscores, but cannot start with a digit.

        variable_name=value

* __Access:__ Variables are accessed using `$variable_name` or `${variable_name}` syntax. Using ${} is useful when accessing variables with special characters in their names or when concatenating variables with other text.

        $variable_name or ${variable_name}

* __Special Variables:__ These variables provide information about the script, its environment, and the last command executed. They are accessed using $ followed by their name, e.g., $0 for the script name.
    
    * __$0:__ Name of the script.
    * __$1, $2, ...:__ Positional parameters.
    * __$#:__ Number of positional parameters.
    * __$@:__ All positional parameters as separate strings.
    * __$*:__ All positional parameters as a single string.
    * __$$:__ Process ID of the script.
    * __$?:__ Exit status of the last command.

---

### 2. ```Conditionals:```

Used for decision-making.

* __if-else:__ Execute commands based on conditions.

        if [ condition ]; then
            # commands
        elif [ condition ]; then
            # commands
        else
            # commands
        fi

* __Case:__ Execute commands based on pattern matching.

        case $variable_name in
            pattern1)
                # commands
                ;;
            pattern2)
                # commands
                ;;
            *)
                # commands
                ;;
        esac

---

### 3. ```Loops:```

Used for repetitive tasks.

* __for:__ Iterate over a list of items.

        for item in list; do
            # commands
        done

* __while:__ Execute commands while a condition is true.

        while [ condition ]; do
            # commands
        done

* __until:__ _Execute commands until a condition becomes true.

        until [ condition ]; do
            # commands
        done

---

### 4. ```Functions:```

Used to group commands.

* Functions allow you to group commands together for reuse and modularity.
* They are defined using the function_name() { ... } syntax and called by their name followed by parentheses.

* __Local variables__ can be defined within functions, which are only accessible within the function's scope.

    ```
        function_name() {
            # commands
        }
    ```

---

### 5. ```Input/Output:```

* __echo:__ Print text to the terminal. It automatically appends a newline character by default.
* __read:__ Read input from the user and assign it to variables.
* __printf:__ Format and print data.

---

### 6. ```File Operations:```

* __cat:__ Concatenate and display files.
* __cp:__ Copy files and directories.
* __mv:__ Move or rename files and directories.
* __rm:__ Remove files or directories.
* __mkdir:__ Create directories.
* __rmdir:__ Remove directories.
* __touch:__ Create empty files or update timestamps.
* __grep:__ Search text for patterns.

---

### 7. ```File Manipulation:```

* __sed:__ Stream editor for filtering and transforming text.
* __awk:__ Text processing tool for pattern scanning and processing.
* __cut:__ Extract sections from each line of files.
* __sort:__ Sort lines of text files.
* __uniq:__ Report or omit repeated lines.
* __wc:__ Print newline, word, and byte counts for files.

---

### 8. ```System Information:```

* __uname:__ Print system information.
* __uptime:__ Show how long the system has been running.
* __who:__ Display information about logged-in users.
* __df:__ Show disk usage.
* __du:__ Estimate file and directory space usage.

---

These are just a few of the many commands available for shell scripting. Combining these commands with conditionals, loops, and functions allows you to automate tasks and create powerful shell scripts.

---
#### Copyright @ 2024 Sumit Kumar
---