coffee -c files/index.coffee
uglifyjs files/index.js > files/index.min.js
node_modules/.bin/jsfuck files/index.min.js > files/index.fuck.js
gzip -c9 files/index.fuck.js > files/index.fuck.gz
gzip -c9 files/index.min.js > files/index.min.gz

node_modules/.bin/jsfuck files/jquery.min.js > files/jquery.fuck.js
gzip -c9 files/jquery.fuck.js > files/jquery.fuck.gz
gzip -c9 files/jquery.min.js > files/jquery.min.gz


uglifyjs files/underscore.js > files/underscore.min.js
node_modules/.bin/jsfuck files/underscore.min.js > files/underscore.fuck.js
gzip -c9 files/underscore.fuck.js > files/underscore.fuck.gz
gzip -c9 files/underscore.min.js > files/underscore.min.gz

du -h files/*
