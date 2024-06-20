# Getting Started

Pull fork or copy the scripts of your choice.

Most of the scripts in this repo work out of the box but can be modified to your liking.

1. **Create a Bash Script**: Create a new file with a `.sh` extension. For example, `clean-desktop.sh`.

   ```bash
   #!/bin/bash
   # Example script: Navigate to a directory and execute a Python script
   cd /path/to/your/python/script
   /usr/bin/python3 your_script.py
   ```

   Replace `/path/to/your/python/script` with the actual path to your Python script, and `/usr/bin/python3` with your Python interpreter path.

# How to make executable

**Make the Script Executable**: Open a terminal and run:

```sh
chmod +x /path/to/your/trigger_python_script.sh
```

Replace `/path/to/your/trigger_python_script.sh` with your actual script path.

## Scheduling the Script with Cron

1. **Edit Cron Jobs**: Open your crontab for editing:

   ```sh
   crontab -e
   ```

2. **Add Cron Job**: Add a line to schedule your Bash script. For example, to run the script every day at 3 AM:

   ```sh
   0 3 * * * /path/to/your/trigger_python_script.sh
   ```

   This line specifies the minute (0), hour (3), every day of the month (_), every month (_), and every day of the week (\*).

3. **Save and Exit**: Save your crontab file and exit the editor.

### Example Cron Schedule Expressions

- `0 3 * * *` - Every day at 3 AM
- `0 */2 * * *` - Every 2 hours
- `0 0 * * 0` - Every Sunday at midnight
- `*/5 * * * *` - Every 5 minutes

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
