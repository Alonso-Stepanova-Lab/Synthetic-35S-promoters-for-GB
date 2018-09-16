open (OUT,">random35S.txt");
use List::Util qw(shuffle);
$contador=0;
@data = ("a","a","a","a","a","a","a","a","a","a","a","c","c","c","c","c","c","c","c","c","c","c","c","g","g","g","g","g","g","g","g","g","g","g","g","t","t","t","t","t","t","t","t","t","t","t","t");

for ($i=1;$i<5000000;$i++){
@cards = shuffle @data;
 $string=join("",@cards);
    $test=0;
    
    
        if ($string=~m/cgtctc/) {$test=1}
        if ($string=~m/gagacg/) {$test=1}
        if ($string=~m/ggtctc/) {$test=1}
        if ($string=~m/gagacc/) {$test=1}
        if ($string=~m/gcgatg/) {$test=1}
        if ($string=~m/catcgc/) {$test=1}
        if ($string=~m/gaagac/) {$test=1}
        if ($string=~m/gtcttc/) {$test=1}
        if ($string=~m/cg/) {$test=1}
        if ($string=~m/c[a,c,g,t]g/) {$test=1}
    #if ($string=~m/gc/) {$test=1}
    #if ($string=~m/g[a,c,g,t]c/) {$test=1}

    if ($test==0){$contador++;$firstpart=substr($string,0,15); $secondpart=substr($string,15); print OUT ">35Smp$contador\n"; print OUT"GCGCCGTCTCGCTCGTCCC"; print OUT"$firstpart";print OUT"TATATAA"; print OUT"$secondpart"; print OUT"AATGTGAGCGAGACGGCGC\n"}

}
