coffee -c files/index.coffee
uglifyjs files/index.js > compiled/index.min.js
node_modules/.bin/jsfuck compiled/index.min.js > compiled/index.fuck.js
gzip -c9 compiled/index.fuck.js > compiled/index.fuck.gz
gzip -c9 compiled/index.min.js > compiled/index.min.gz

uglifyjs files/jquery.js > compiled/jquery.min.js
node_modules/.bin/jsfuck compiled/jquery.min.js > compiled/jquery.fuck.js
gzip -c9 compiled/jquery.fuck.js > compiled/jquery.fuck.gz
gzip -c9 compiled/jquery.min.js > compiled/jquery.min.gz

uglifyjs files/underscore.js > compiled/underscore.min.js
node_modules/.bin/jsfuck compiled/underscore.min.js > compiled/underscore.fuck.js
gzip -c9 compiled/underscore.fuck.js > compiled/underscore.fuck.gz
gzip -c9 compiled/underscore.min.js > compiled/underscore.min.gz

du -h files/*
du -h compiled/*
