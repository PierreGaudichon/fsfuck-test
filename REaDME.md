JSFuck
======

Test if a gzipped [jsfuck](http://www.jsfuck.com/) is lighter than a regular
gzipped file.

Fichier (ko)| .js | .min.ms | .fuck.js | .min.gz | .fuck.gz
------------|-----|---------|----------|---------|---------
index       | 4   | 4       | 12       | 4       | 4
jquery      | 244 | 84      | 56.4M    | 32      | 600
underscore  | 48  | 24      | 12.0M    | 8       | 12

 - index : Same size.
 - Jquery : 19 times heavier,
 - Underscore : 1.5 times heavier.

It's a **fail**.

The idea was that jsfuck transform JS programms into only 6 chars `[]()+!`. And
thoses files could be lighter when gzipped. They're not.


Sources
-------

 - uglify : [The uglify-js package](https://www.npmjs.com/package/uglify-js)
 - jsfuck : [The official repo](https://github.com/aemkei/jsfuck)
 - gzip : [Gzip](http://www.gzip.org/)
