$n = 10000000;
$mc = 0;

for($i = 0; $i < $n; $i++){
    $x = rand(1);
    $y = rand(1);

    if($x ** 2 + $y ** 2 <= 1){
        $mc++
    }
}

$pi = 4 * $mc / $n;

print "pi = $pi";