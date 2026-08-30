adding new datta to the file

#!/bin/bash
# The line above is the 'shebang'. It tells Linux to use the Bash interpreter.

# 1. Variables
SCRIPT_VERSION="1.0"
CURRENT_USER=$(whoami)

echo "=========================================="
echo " Welcome to the System Info Script v$SCRIPT_VERSION"
echo " Current User: $CURRENT_USER"
echo "=========================================="

# 2. Taking User Input
echo "Would you like to see your system uptime? (yes/no)"
read user_choice

# 3. Conditional Statements (If/Else)
if [ "$user_choice" = "yes" ] || [ "$user_choice" = "y" ]; then
    echo "Gathering system uptime..."
    # 4. Command Substitution (running a Linux command inside a script)
    echo "Uptime Details: $(uptime -p)"
else
    echo "Skipping uptime details."
fi

echo "=========================================="
echo "Script execution completed successfully!"

