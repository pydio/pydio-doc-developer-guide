Like for the License Stats, this flow is a good demonstration of using gRPC request to an internal Cells service, which result is returned in JSON format,
then using Go Template with `gval` function to compute percentage of storage usage. Note that "storage" here is seens as Cells "objects" service running for each (or shared by) datasources. 

By default, the "Send Email" action at the end (to alert administrator that storage limits are soon to be reached) is in Bypass mode and has to be activated.