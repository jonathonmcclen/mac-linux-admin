# The name of the Ruby script
RUBY_SCRIPT="my_script.rb"
# The full path to the Ruby script
SCRIPT_PATH="/path/to/my_script.rb"
# Function to check if the Ruby script is running
is_running() {
    pgrep -f "$RUBY_SCRIPT" > /dev/null
}
# Function to start the Ruby script
start_script() {
    ruby "$SCRIPT_PATH" &
}
# Infinite loop to keep the script running
while true; do
    if ! is_running; then
        echo "Starting the Ruby script..."
        start_script
    else
        echo "The Ruby script is already running."
    fi
    # Check every 60 seconds
    sleep 60
done