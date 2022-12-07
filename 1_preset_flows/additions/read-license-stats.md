This flow is a good demonstration of using gRPC request to an internal Cells service, which result is returned in JSON format, 
then using Go Template with `gval` function to compute percentage of license usage. 

One can eventually append a "Send Email" action
at the end to alert administrator that license limits are soon to be reached.