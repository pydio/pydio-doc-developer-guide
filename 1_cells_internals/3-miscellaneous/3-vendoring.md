## Vendoring

Third party dependency management is done within Pydio Cells with Govendor. See [their Github page](https://github.com/kardianos/govendor) and this [very useful cheatsheet](https://github.com/kardianos/govendor/wiki/Govendor-CheatSheet).

Thus when you clone Pydio Cells repository, you also retrieve all the Go code of the third parties that is used by the app and that is bundled within the binary that is shipped to end clients.

You can find these codes in the  `cells/vendor` sub folder.