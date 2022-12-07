Cells Convert Tools is a ready-to-use docker image that provides file formats conversion via a REST API. This flow will extract observes files creation/modification and call Convert Tools API to extract thumbnails.

As it [hosted on Docker Hub](https://hub.docker.com/r/pydio/cells-convert-tools), you can simply run Cells Convert Tools with the following command:
```
docker run --name cells-convert-tools -it -d -p 9997:9997 pydio/cells-convert-tools
```
This flow currently supports : 
 - Office to PDF export (unoconv)
 - PDF to Image thumbnails (pdf2ppm)
 - Movies frame extraction for thumbnails (ffmpeg)
 - Other images thumbnails (ImageMagick).

This is a great add-on to Cells Enterprise for providing previews for most documents directly inside Cells interface.