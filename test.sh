set -e  # Stop on errors
LIBRARIES="c4f8ab79a81315e859af9297f28c5d6179aee187"

for d in ulv_*
do
    (
    echo "Checking $d"
    cd $d

    # First check if libraries submodule is dirty
    git diff --exit-code ulv_libraries

    # OK, make sure we're on the right commit
    cd ulv_libraries
    COMMIT="$(git rev-parse HEAD)"
    if [ "$LIBRARIES" != "$COMMIT" ]
    then
        echo "$d uses wrong libraries: found $COMMIT expected $LIBRARIES"
        exit 1
    fi
    )
done

(cd ulv_beacon && ./test.sh)
