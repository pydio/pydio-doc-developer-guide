Based on the internal gRPC API of the activity service, this flow is useful for housekeeping and maintaining activity DB size
under control. Run regularly, it allows you to prune activities (either files/folders activities displayed in the right-hand panel of the interface or users notifications) on 
a regular basis, based on various rules : 

 - **Updated** : remove records registered before a given date. It can be combined with **KeepAtLeast** parameter to still make
   sure to keep a given number of rows, even if they were older than the purge dates (avoid empty feeds!).
 - **KeepMax** : remove records based on a maximum number of rows.

