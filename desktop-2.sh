# Creates desktop2 if it doesnt exist 
# Adds all files from desktop to desktop2 and deletes them from directroy to another

# Check if Desktop and Desktop2 directories exist
if [ ! -d "$HOME/Desktop" ]; then
    echo "Error: $HOME/Desktop directory does not exist."
    exit 1
fi

if [ ! -d "$HOME/Desktop2" ]; then
    echo "Error: $HOME/Desktop2 directory does not exist."
    exit 1
fi

# Function to move contents based on direction
move_contents() {
    local source="$1"
    local destination="$2"
    
    mv "$source"/* "$destination/"
    echo "Files moved from $source to $destination."
}

# Check command line argument
if [ "$1" == "to-desktop2" ]; then
    move_contents "$HOME/Desktop" "$HOME/Desktop2"
elif [ "$1" == "to-desktop" ]; then
    move_contents "$HOME/Desktop2" "$HOME/Desktop"
else
    echo "Usage: $0 [to-desktop2 | to-desktop]"
    exit 1
fi


# chmod +x move_to_desktop2.sh move_to_desktop.sh move_toggle.sh

#./move_toggle.sh to-desktop2  
# Move contents from Desktop to Desktop2
# ./move_toggle.sh to-desktop 
# Move contents from Desktop2 to Desktop