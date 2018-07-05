
```sh
# Retrieve the code
git clone https://github.com/pydio/cells-front.git
# From this line on, we assume you are in Pydio Cells Front’s code root directory
cd cells-front
# Build the php and the javascript
find . -maxdepth 3 -name composer.json -execdir composer install \;
sudo find . -maxdepth 3 -name Gruntfile.js -execdir bash -c "npm install && grunt" \;
```

The latest step might be quite long.

Once built, copy the whole front directory to replace the existing pydio directory that is under:

`$GOPATH/src/github.com/pydio/cells/assets/src/`
