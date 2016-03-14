set -e  # Stop on errors
LIBRARIES="adf067572c300bc0388f4bf47d6bdf4ec7839862"

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

