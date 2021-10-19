This job provides a full-featured, customizable validation workflow. It uses files metadata and specific roles to achieve the following approval scenario: 

 - **Alert Reviewers**: when a file is created, tag it as "pending" and send an alert to all users with "reviewer" role.
 - **Inform Owner**: when a reviewer changes its metadata from "pending" to another status ("In Review" or "Validated"), notify the original creator that his file is being looked at.
 - **Reminder**: A scheduled task look for "pending" files that were not reviewed since a specific period, and proactively notify reviewers that they still have some work to do.

At job creation, "reviewer" role and specific metadata are created with the correct policies, making sure that only reviewers can manually change the status. 
