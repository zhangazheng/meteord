# Install PhantomJS
set -e
apt-get -y install libfreetype6 libfreetype6-dev fontconfig
ARCH=`uname -m`
PHANTOMJS_VERSION=1.9.8
PHANTOMJS_TAR_FILE=phantomjs-${PHANTOMJS_VERSION}-linux-${ARCH}.tar.bz2

cp $METEORD_DIR/lib/phantomjs-1.9.8-linux-x86_64.tar.bz2 /usr/local/share/
cd /usr/local/share/
#curl -L -O https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-${PHANTOMJS_VERSION}-linux-${ARCH}.tar.bz2
tar xjf $PHANTOMJS_TAR_FILE
ln -s -f /usr/local/share/phantomjs-${PHANTOMJS_VERSION}-linux-${ARCH}/bin/phantomjs /usr/local/share/phantomjs
ln -s -f /usr/local/share/phantomjs-${PHANTOMJS_VERSION}-linux-${ARCH}/bin/phantomjs /usr/local/bin/phantomjs
ln -s -f /usr/local/share/phantomjs-${PHANTOMJS_VERSION}-linux-${ARCH}/bin/phantomjs /usr/bin/phantomjs

rm $PHANTOMJS_TAR_FILE
