set -e  # Stop on errors
LIBRARIES="e79e12ca4beb3d82dcab3d3b0e4ad8ec3a15147d"

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

