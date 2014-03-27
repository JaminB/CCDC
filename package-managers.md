# Package manager tricks

## RPM

List all installed RPM packages

    rpm -qa


List all files that belong to package "mypackage"

    rpm -ql mypackage

Show which package that a file belongs to

    rpm -qf /path/to/file

## dpkg

List all installed packages

    dpkg -l

List all files the belong to the package "mypackage"

    dpkg -L mypackage

Show which package that a file belongs to

    dpkg --search /path/to/file

or

    dpkg -S /path/to/file
