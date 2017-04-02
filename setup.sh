cp lib/anttasks.jar ~
pushd ~
jar xf anttasks.jar
pushd -0
git submodule init
git submodule update --init --recursive
