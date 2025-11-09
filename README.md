# github-autocommiter

Tiny helper script that keeps your GitHub contribution graph green by creating
timestamped commits against `README.md`.

## Usage

```bash
./autocommit.sh
```

1. Run the script in the repo root.
2. When prompted, type a quick note about what you worked on.
3. The script appends the note with a timestamp to the activity log, commits
   the change, and pushes it to GitHub so the update counts toward your streak.

Schedule it with cron or a launch agent if you want a daily reminder to jot
down something you shipped or learned.

## Activity Log
