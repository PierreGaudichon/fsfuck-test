coffee -c index.coffee
uglifyjs index.js > index.min.js
node_modules/.bin/jsfuck index.min.js > index.fuck.js

coffee index.coffee
echo "--------------"
node index.fuck.js
