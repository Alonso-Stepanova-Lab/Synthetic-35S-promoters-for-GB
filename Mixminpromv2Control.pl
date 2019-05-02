open (OUT,">random35Scontrol.txt");
use List::Util qw(shuffle);
$contador=0;
@data = ("a","a","a","a","a","a","a","a","a","a","a","c","c","c","c","c","c","c","c","c","c","c","c","g","g","g","g","g","g","g","g","g","g","g","g","t","t","t","t","t","t","t","t","t","t","t","t","g","c","g","c","c","g","t","c","t","c","g","c","t","c","g","t","c","c","c","t","a","t","a","t","a","a","a","a","t","g","t","g","a","g","c","g","a","g","a","c","g","g","c","g","c");

for ($i=1;$i<500000000;$i++){
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
        if ($string=~m/tatataa/) {$test=1}

        
        if ($string=~m/cg/) {$test=1}
        if ($string=~m/c[a,c,g,t]g/) {$test=1}
    #if ($string=~m/gc/) {$test=1}
    #if ($string=~m/g[a,c,g,t]c/) {$test=1}

   # if ($test==0){$contador++;$firstpart=substr($string,0,15); $secondpart=substr($string,15); print OUT ">35Smp$contador\n"; print OUT"GCGCCGTCTCGCTCGTCCC"; print OUT"$firstpart";print OUT"TATATAA"; print OUT"$secondpart"; print OUT"AATGTGAGCGAGACGGCGC\n"}
     if ($test==0){$contador++;print OUT ">35Smp$contador\n"; print OUT"$string\n"}
}
