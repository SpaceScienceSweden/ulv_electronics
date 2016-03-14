set -e  # Stop on errors
LIBRARIES="d2105ccce4f5848686eea311310c87ca04f51d9c"

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

