Used in conjunction with security policies and other jobs that can modify metadata, this job is a good start to setup validation workflow scenarios:

 - A specific user has the right to see all new files and tag them as "valid"
 - When the tag is modified, send an email to administrator to inform that a new file is valid
 - Setup a security policy that hide files that do not have this specific tag value
