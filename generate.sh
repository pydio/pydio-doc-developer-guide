#!/usr/bin/env bash
MENU_NAME="menu-dev-guide-v7"
CWD=$PWD

echo "# Generating Cells commands docs"
cd $GOPATH/src/github.com/pydio/cells
./cells doc commands --path=${CWD}/2_cli_references/1_cells --menu=${MENU_NAME}

echo "# Generating Cells Client commands docs"
cd $GOPATH/src/github.com/pydio/cells-client
./cec doc commands --path=${CWD}/2_cli_references/2_cells-client --menu=${MENU_NAME}

echo "# Generating CellsSync commands docs"
cd $GOPATH/src/github.com/pydio/cells-sync
./cells-sync doc commands --path=${CWD}/2_cli_references/3_cells-sync --menu=${MENU_NAME}

cd $GOPATH/src/github.com/pydio/cells-enterprise
echo "# Generating Cells ED commands docs"
./cells-enterprise doc commands --path=${CWD}/2_cli_references/4_cells-enterprise --menu=${MENU_NAME}
echo "# Generating API docs from Cells Enterprise"
./cells-enterprise doc openapi --path=${CWD} --menu=${MENU_NAME}