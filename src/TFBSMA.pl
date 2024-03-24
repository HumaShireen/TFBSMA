$start_run = time();

 %map = (
A => 'A',
G => 'G',
C => 'C',
T => 'T',
N => '[AGCT]', 
R => '[AG]',
U => '[U]',
Y => '[CT]',
W => '[AT]',
S => '[GC]',
M => '[AC]',
K => '[GT]',
O => '[GCT]',
H => '[ACT]',
D => '[AGT]',
V => '[AGC]',);
%hash = (
BARHL1 => ["NANAACCAATTARNNN"],
FOXB1=> ["TGTAAAYAN", "GAATGACACRGCGA", "ANAGATMWWA"],
GATA3=> ["NNGATARNG", "NGAGATAANA", "ANAGATMWWA"],
IRX5 => [ "NNNNWACATGTWNNWNW"],
NF1B=> ["CTGGCASGV"],
NKX21 => ["NNANCCACTTGAMNTT", "ANTCAAGTNT"],
OTX1 => ["NNNRGGGATTAATWNNN", "WASTAATCC" , "NTAATCCN"],
OTX2 => ["NRANGGATTARNN" , "NTAATCCN", "NRANGGATTARNN" , ],
PBX1 => ["NYAYMCATCAAWNWNNN" , "NNATCAATCANN", ],
PEA3 => ["RCCGGAAGYN", "AGGAAGT" ],
PITX2 => ["WNTAATCCCAR", "NNTAAWCCCA"],	
SMAD3 => ["NGNCAGACASNNN" , "TGTCTGTCT"],	
TBR1 => ["AAGGTGTGAAA" , "TTNACACCTR"],
ZIC => ["GACCCCCYGCTGTG", "KGGGTGGTC"],	
Foxp2 => ["CAAATT"],
Irx3 => ["GTTAATTG"],
Hes5 => ["CACNAG"],
Ngn2 => ["NCANATGG"],
TBR2 =>["AGGTGTGAA" , "TTNACACCTR"],
FOXH1 => ["NNSAATCCACA" , "SAATACACAT"],
NKX22 => ["NNNRCCACTTGARANNN" , "TTAAGTRSTT"],
SOX1 => ["TRAATATTWAA"],
HEN1 => ["NNNGGNCNCAGCTGCGNCCCNN"],
);
$filename= "fatima_enhancer.txt";
open INPUT, $filename;
 undef $/;
 $dna = <INPUT>;
chomp $dna;
 $len= length ($dna);
 print "Length of fTrain_patch1 rev.txt is : $len\n";
open ($Fh, '>>vista_data_fatima.txt');

 for $key (keys %hash) {
       
       foreach $tf (@{$hash {$key}}){
    $tf=~ s/([NRAGCTUYWSMKBHDV])/$map{$1}/gi;
# print "$tf \n";
while  ($dna=~/$tf/gi){
 chomp $n;
# print $F,  "@";
 @start_tf=@-;

      $final_pat_pos[$i] = $start_sub_string[$i] + $start_tf[$i];
      $final_pat[$i]=  $final_pat_pos[$i]+length($tf);
      
      print $Fh  "chrX\t$final_pat_pos[$i]\t$final_pat[$i]\t$key\telement1746\n";

    
      
} } } print $Fh "\n";




$end_run = time();
$run_time = $end_run - $start_run;
print "Job took $run_time seconds\n";
 
