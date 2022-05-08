var n = 10000000
var mc = 0

for(var i = 0; i < n; i++) {

    var x = Math.random()
    var y = Math.random()

    if(x**2 + y**2 < 1) {
        mc++;
    }
    
}

var pi = 4 * mc / n;

console.log(pi);