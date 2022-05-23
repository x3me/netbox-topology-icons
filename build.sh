#!/bin/bash -e

DIRNAME=$(dirname $(realpath $0))
OUTPUT_DIR="$DIRNAME/netbox_topology_icons/static/netbox_topology_views/img"

mkdir -p $(dirname $OUTPUT_DIR)

DIRS=$(ls -a | grep ^icons-)

VERSION=$(poetry version | cut -d ' ' -f 2)
NAME=$(poetry version | cut -d ' ' -f 1)
if [ -f $OUTPUT_DIR ]; then
    rm -rf $OUTPUT_DIR
fi

for TARGET in $DIRS; do
    TARGET_NAME=$(echo "$TARGET" | sed 's/icons-//g')
    echo "Generating $TARGET_NAME"

    rsync -r "$DIRNAME/$TARGET" $OUTPUT_DIR
    poetry build -f sdist -q

    mv "$DIRNAME/dist/$NAME-$VERSION.tar.gz" "$DIRNAME/dist/$NAME-$TARGET_NAME-$VERSION.tar.gz"
    rm -rf $OUTPUT_DIR
done
