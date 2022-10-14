This flow combines various Queries to first list all "internal" users logins, then compute their personal 
folder and pass this location as input to the "Compress" action. Last action is parametrized to select the archive format, its location. 

This flow can be useful for automatic backups, by pointing the final archive generation to e.g. an external S3 encrypted datasource.