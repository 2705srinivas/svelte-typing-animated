#echo "yarn"
#!/bin/bash
set -e
# set -x
echo $@
if ! [ "$(command -v yarn)" ]; then
    sh ./scripts/install-yarn.sh
else
    echo "yarn installed"
fi

yarn $@
