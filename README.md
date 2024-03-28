# Grimblast

This fork is a minimal version of Grimblast that removes features I don't need
and changes a few things:
- Clicking on notifications will open the screenshot in gthumb
- Area mode doesn't highlight windows
- Added a window mode for selecting a specific window to screenshot
- Copy mode saves the image to /tmp to enable editing by clicking on the
notification (the image is deleted if the notification is not clicked)
- Save mode always copies the image to clipboard in addition to saving

A Hyprland version of Grimshot.

Install by running the Makefile or just copying the `grimblast` script in your
`~/.bin`.
