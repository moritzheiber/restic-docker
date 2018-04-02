# Restic inside Docker

A Docker image to run the [restic](https://github.com/restic/restic) engine.

I realize there is an official image, however, at the time of writing this it used an outdated version of Alpine and didn't come with `ssh` pre-installed (which you need in order to run it against SFTP targets).
