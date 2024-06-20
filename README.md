# Getting Started

Pull fork or copy the scripts of your choice.

Most of the scripts in this repo work out of the box but can be modified to your liking.

# How to make executable

# how to run on with CRON jobs

bash
Copy code

# Triggering a Python Script on a Cron Schedule with a Bash Script

## Step 1: Write the Bash Script

Create a file named `trigger_python_script.sh` with the following content:

```bash
#!/bin/bash
# Navigate to the directory containing the Python script
cd /path/to/your/python/script

# Execute the Python script
/usr/bin/python3 your_script.py
Replace /path/to/your/python/script with the actual path to your Python script and /usr/bin/python3 with the path to your Python interpreter if it's different. Replace your_script.py with the name of your Python script.

Step 2: Make the Bash Script Executable
Open a terminal and run the following command:

sh
Copy code
chmod +x /path/to/your/trigger_python_script.sh
Replace /path/to/your/trigger_python_script.sh with the actual path to your Bash script.

Step 3: Schedule the Script Using Cron
Edit your crontab file by running:

sh
Copy code
crontab -e
Add a line to the crontab file to schedule your Bash script. For example, to run the script every day at 3 AM, you would add:

sh
Copy code
0 3 * * * /path/to/your/trigger_python_script.sh
Save and close the crontab file.

Example Cron Schedule
Here are some examples of cron schedule expressions:

0 3 * * * - Every day at 3 AM
0 */2 * * * - Every 2 hours
0 0 * * 0 - Every Sunday at midnight
*/5 * * * * - Every 5 minutes
Complete Example
Bash Script (trigger_python_script.sh):
bash
Copy code
#!/bin/bash
# Navigate to the directory containing the Python script
cd /home/user/scripts

# Execute the Python script
/usr/bin/python3 my_script.py
Make it Executable:
sh
Copy code
chmod +x /home/user/scripts/trigger_python_script.sh
Crontab Entry:
Run:

sh
Copy code
crontab -e
Add the line:

sh
Copy code
0 3 * * * /home/user/scripts/trigger_python_script.sh
This setup will run my_script.py every day at 3 AM. Make sure to replace paths and script names with your actual file locations and names.

rust
Copy code

Copy the entire block and paste it into your Markdown editor or text editor for use.

# auto-sync.sh

auto-sync is used to sync two folders to be duplicates of one another.

in order to run this at startup on on a CRON schedule read

# backup.sh

backup.sh is a bash script that is used to back up a directory of your choice to a destination. the script wil label the backup with a date. so if you run it mor than once it will create a new backup with the new timestamp

if you are looking for continuous back up in a single folder you are looking for auto-sync.sh

# clean-desktop.sh

clean desktop is a simple script to clean your desktop of standard file extensions. jpg, png, mp4, pdf, etc... will be moved to files of your choosing ( mac standard folders music, pictures, movies, documents recommended )

# desktop2.sh

when first run will create a new directory called desktop2 that will be a sibling of the standard desktop. the script will then move all filed from desktop to desktop2

# How to make exicuteable

# how to run on with CRON jobs
```
