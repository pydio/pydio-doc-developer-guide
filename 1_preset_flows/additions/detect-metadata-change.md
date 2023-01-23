Used in conjunction with security policies and other jobs that can modify metadata, this flow is a good start to set up validation workflow scenarios:

 - A specific user has the right to see all new files and tag them as "valid"
 - When the tag is modified, email administrator to inform that a new file is valid
 - Set up a security policy that hide files that do not have this specific tag value
