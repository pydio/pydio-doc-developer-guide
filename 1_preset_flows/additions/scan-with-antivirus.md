Clamd is a de-facto open source standard for antivirus scanning. This flow assumes a Clamd server is running and can be accessed
either locally (unix socket) or remotely (tcp socket). 

Once scanned, infected files can be put in a dedicated Quarantine folder. If scan fails for other reasons, files are tagged to alert that
they could not be scanned properly.
