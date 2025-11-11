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
- [2025-11-09 15:51:21 PST] I created you, the github auto activity commiter!
- [2025-11-09 16:15:54 PST] Custom shell 'slugterm' to take in either a command or a string of commands to pipe in output of one command into the next
- [2025-11-09 22:17:12 PST] Picked up three new books, two oreily and one from openai
- [2025-11-10 11:15:41 PST] Figured out how to use my capture card on the switch
- [2025-11-10 17:00:27 PST] Started reading Software Reliabillity Engineering by Oreily
- [2025-11-10 17:01:19 PST] attended all classes, prepared schedule for next quarter, likely oging to be much harder than the current, taknig a prereq class so I can focus ML on my electives
