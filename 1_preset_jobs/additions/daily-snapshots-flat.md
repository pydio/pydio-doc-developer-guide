As "flat" storage datasource store the document using UUID's, one may be afraid of loosing files and folders tree information by loosing their database. 

This job secures eventual backup/recovery operations by daily snapshoting the index directly inside the storage. By default, it keeps snapshots for ten days (then deletes the oldest ones), but this can be changed using the job parameters. 