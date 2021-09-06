Send to reMarkable...
=====================

Creates a **`Send to reMarkable...`** drop folder on the Desktop on MacOS.

![](send-to-remarkable.png)

Installation
------------

```
$ make install
```

Usage
-----

Copy or save files to the **`Send to reMarkable...`** folder. Files that have been successfully transfered to reMarkable are moved to Trash.  Any files that cannot be transfered to reMarkable are left in the folder.

Currently only **`.pdf`** files are supported.

Activity is logged to `/usr/local/var/log/send2remarkable.log`

How it works
------------

- **[folderify](https://github.com/lgarron/folderify)** is used to add the reMarkable logo to the drop folder.

- **[Automator](https://support.apple.com/en-ca/guide/automator/welcome/mac)** is used to trigger an action when new files are added to the drop folder.

- **[rmapi](https://github.com/juruen/rmapi)** is used to upload the files to reMarkable.

- **[safe-rm](https://launchpad.net/safe-rm)** is used to safely move files to Trash.





