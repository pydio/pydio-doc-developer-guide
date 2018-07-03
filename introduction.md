
Pydio Cells is a full rewrite of Pydio backend using Go, a modern server language developed and used by Google. Although still relying on PHP for the frontend part, most of the core features are now running in microservice architecture. Microservices are small pieces of software that can run independently, scale-out easily by running on a distributed infrastructure, and they communicate using gRPC.

## Audience

This documentation is for developers that are willing to submit bug fixes or extend some of the features of Pydio Cells. It is also intended for DevOps that want to have a deeper understanding of the app and/or are willing to integrate it in a larger IT ecosystem. 
For regular users, the Pydio Cells distribution comes in the form of precompiled binaries for Linux and MacOS X and there is no need to re-compile the code nor to understand the concepts that are presented in the current document.

## References

The current document is not exhaustive and the reader might also refer to other Pydio Cells documentation sources to get a complete understanding of the application, namely:

* The [admin guide](https://pydio.com/en/docs/cells/v1/installation-guides): this is a must-read to understand the application before starting to hack.

* The in-line documentation within the User Interface: we always try to have a self-explanatory and intuitive UI, with a lot of hints directly visible in the interface. Furthermore, a complete documentation of the REST APIs and services is accessible from the admin dashboard under All Plugins `>>` REST APIs. It is automatically generated with Swagger.

* [The code on Github](https://github.com/pydio/cells).

* [The on-line Go Documentation](https://godoc.org/github.com/pydio/cells).

* [The Pydio forum](https://forum.pydio.com): if your question is not answered in any of the documentation, somebody might have asked it for you in the forum.
