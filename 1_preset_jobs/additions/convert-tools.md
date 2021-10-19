Cells Convert Tools is a ready-to-use docker image embedding file formats conversion tools that are accessed via a REST API. 
While it's running inside your environment, this job will extract thumbnails for various file formats using REST calls.

As it [hosted on Docker Hub](https://hub.docker.com/r/pydio/cells-convert-tools), you can simply run Cells Convert Tools with the following command:
```
docker run --name cells-convert-tools -it -d -p 9997:9997 pydio/cells-convert-tools
```
This job currently supports : 
 - Office to PDF export
 - PDF to Image thumbnails
 - Movies frame extraction for thumbnails

This is a great add-on to Cells Enterprise for providing previews for most documents directly inside Cells interface.