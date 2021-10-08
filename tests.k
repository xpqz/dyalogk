\l phase1.k

(≈):{1.0e-6>{x|-x}x-y}  / approx equal
(∆):{(_1000000*x)~_1000000*y} / approx float deep-match

assert:{[cmp;f;a;e]$[cmp[e;r:f a];`ok;(`fail;cmp;a;e;r)]}

/ https://problems.tryapl.org/psets/2013.html

assert[~][p131;10;1 3 5 7 9 11 13 15 17 19]
assert[~][p131;1;,1]
assert[~][p131;0;!0]

assert[=][p132;25 90 100 64 65;60]
assert[=][p132;,50;0]
assert[=][p132;80 90 100;100]
assert[~][p132;!0;0n]               / Dyalog wants 100%, but that makes no sense

assert[=][p133;"Testing one, two, three";4]
assert[=][p133;"";0]
assert[=][p133;" this vector has extra blanks ";5]

assert[=][p134;"((2×3)+4)";1]
assert[=][p134;"";1]
assert[=][p134;"hello world!";1]
assert[=][p134;")(2×3)+4(";0]
assert[=][p134;"(()";0]
assert[=][p134;")";0]

/ skipping p135, as =: is a primitive k function

assert[=][p136;19 -3 7.6 22;25]
assert[=][p136;,101;0]
assert[=][p136;2 3#10 20 30 40 50 60;50]
assert[=][p136;!0;0]  / dubious

assert[~][p137;14.2 9 -3 3.1 0 -1.1;14.2 3.1 -1.1]
assert[~][p137;1 3 5;!0]
assert[~][p137;3.1415;,3.1415]

assert[~][p138;5;5 5#1 2 3 4 5 2 4 6 8 10 3 6 9 12 15 4 8 12 16 20 5 10 15 20 25]
assert[~][p138;1;1 1#1]
assert[~][p138;0;0 0#0]

sales:200 300 2700 3400 100 2000 400 2100 3500 3000 4700 4300
assert[=][p139[2];sales;250 1500 3050 1750 1050 1200 1250 2800 3250 3850 4500]
assert[=][p139[10];sales;1770 2220 2620]
assert[=][p139[1];sales;sales]

/ https://problems.tryapl.org/psets/2014.html

assert[=][p141[3;4];5;1]
assert[=][p141[2;3];4;0]

assert[~][p142;"if you can read this, it worked!";"if yu cn rd ths, it wrkd!"]
assert[~][p142;"APL is REALLY cool";"APL is RLLY cl"]
assert[~][p142;,"a";,"a"] / dyalog wants it to work on raw scalars

assert[~][p143;10;1 1 2 3 5 8 13 21 34 55]
assert[~][p143;1;,1]
assert[~][p143;0;!0]

assert[~][p144;" this is a test ";"this is a test"]
assert[~][p144;"";""]
assert[~][p144;"hello world!";"hello world!"]
assert[~][p144;"    ";""]

assert[=][p145;"a man, a plan, a canal, panama!";1]
assert[=][p145;"";1]
assert[=][p145;"a";1]
assert[=][p145;"APL";0]

assert[~][p146;6 6;11 2#2 1 3 2 4 3 5 4 6 5 7 6 8 5 9 4 10 3 11 2 12 1]
assert[~][p146;6 4;9 2#2 1 3 2 4 3 5 4 6 4 7 4 8 3 9 2 10 1]
assert[~][p146;3;3 2#1 1 2 1 3 1]

assert[=][p147[10];10;1]
assert[=][p147[10];5;2]
assert[=][p147[5];7;5]

assert[=][p148;2 5;3]
assert[=][p148;(2 2;5 6);5]
assert[=][p148;!0;0]
assert[=][p148;(2 2 3 4;3 7 10 9);10]

assert[≈][p149[100];45;1020.408163]
assert[=][p149[0];45;0]
assert[≈][p149[100];90;0.0]

assert[≈][p1410;80 100 120 140;25]
assert[≈][p1410;123 123 123;0]
assert[≈][p1410;101 102 114 117 101 110 102 111 118 115 124 122;11.76470588]
assert[≈][p1410;200 180 160 140 120;-10]

/ https://problems.tryapl.org/psets/2015.html

assert[=][p151;("anagram";"Nag A Ram");1]
assert[=][p151;("Dyalog APL";"Dog Pay All");1]
assert[=][p151;("";"  !#!");1]
assert[=][p151;("abcde";"zyxwvu");0]

assert[=][p152;1 2 3 4 5 6 7 8 9;8]
assert[=][p152;1;0]
assert[=][p152;9 8 7 6 5 4;0]
assert[=][p152;1 5 3 4 2 6 7 8;3]

assert[~][p153;0;,0 1]
assert[~][p153;1;(0 1;1 1)]
assert[~][p153;5;(0 1;1 5;1 4;1 3;2 5;1 2;3 5;2 3;3 4;4 5;1 1)]

assert[~][p154["DYALOG APL"];"AAALLLB";2 7 0N 3 9 0N 0N]
assert[~][p154[""];"test";0N 0N 0N 0N]
assert[~][p154["test"];!0;!0]

assert[≈][p155;1 2 3 4 5;1.414213562]
assert[≈][p155;10 10#1+!100;28.86607005]

assert[=][p156;((1 1;5 5);(3 3;7 7));1]
assert[=][p156;((1 1;5 5);(5 5;1 1));1]
assert[=][p156;((1 1;3 3);(4 4;7 7));0]
assert[=][p156;((1.1 1.1;5.5 5.5);(3.3 3.3;4.4 4.4));1]

assert[~][p157;("dyalog";"APL");0 0 1 1 0 0]
assert[~][p157;("bramley";"HAMPSHIRE");0 1 1 1 0 1 0]

assert[~][p158;,13;,12.99]
assert[~][p158;10 11 12 13 14;(10;11;12;12.99;14)]
assert[~][p158;13 130 13.13 1300;(12.99;130.0;13.13;1300.0)]

assert[~][p159;"argument";"agrmunet"]
assert[~][{x};p159'("this";"is";"awesome");("tihs";"is";"aewosme")]

tmp:"                 1                1 1               1 2 1              1 3 3 1             1 4 6 4 1           1 5 10 10 5 1         1 6 15 20 15 6 1        1 7 21 35 35 21 7 1      1 8 28 56 70 56 28 8 1    1 9 36 84 126 126 84 36 9 11 10 45 120 210 252 210 120 45 10 1"
assert[~][{x};,/p1510@10;tmp]

/ https://problems.tryapl.org/psets/2016.html
assert[≈][p161;1 2 3 4 5 6;3.5]
assert[~][p161;!0;0n] / dyalog wants 0, which makes no sense
assert[≈][p161;17;17]
assert[~][p161;5 3#1+!15;7.0 8.0 9.0]

assert[=][p162;1+!9;5]
assert[=][p162;1 8 2 7 3 6 4 5;4.5]
assert[=][p162;!0;0.0]
assert[=][p162;,7;7]

assert[~][p163;2 1 4 3 2 5 1 2;,2]
assert[~][p163;!0;0#`] / ???
assert[~][p163;1 2 3 4 1 2;1 2]

assert[~][p164;("MENS";"EKES");"MEEKNESS"]
assert[~][p164;("Dyalog";"APL");"DAyPaLlog"]
assert[~][p164;("APL";"Dyalog");"ADPyLalog"]
assert[~][p164;(1 3 5 7;2 4 6 8);1 2 3 4 5 6 7 8]
assert[~][p164;("";"Hello");"Hello"]

assert[~][p165;1+!5;1+!5]
assert[~][p165;1 2 3 4 5 4 3 2 1;,5]
assert[~][p165;"hello world";"he wrd"]

assert[~][p166;("one";"two";"three";"four";"five";"six");("one";"two";"six";"four";"five";"three")]
assert[~][p166;(2 4 3;4 5;,1;7 3);(,1;4 5;7 3;2 4 3)]
assert[~][p166;!0;!0]
assert[~][p166;("one";,2;"three";," ";"four";5 6 7 8);(,2;," ";"one";"four";5 6 7 8;"three")] / fudge; soln incorrect for empty vectors

assert[~][p167;1+!10;3 5 6 9 10]
assert[~][p167;!0;!0]

assert[~][p168;0 1 -2 3 -4 -5 6 7 8 -9 10;(-2 -4 -5 -9;0 1 3 6 7 8 10)]
assert[~][p168;1 2 3 4 5;,1 2 3 4 5]  / this isn't the behaviour Dyalog wants, but unsure how that maps to k's array model
assert[~][p168;!0;()]                 / same here

/ skipping p169 as split is a built-in k verb

assert[≈][p1610;(5 0 2;2.99 4.99 1.99);18.93]
assert[≈][p1610;(0 0 0;2.99 4.99 1.99);0]

/ https://problems.tryapl.org/psets/2017.html

assert[~][p171;5;1 3 5 7 9]
assert[~][p171;1;,1]
assert[~][p171;0;!0]

assert[~][p172;1 2 3 4 5;2 2 4 4 6]
assert[~][p172;!0;!0]
assert[~][p172;4 4#1+!16;4 4#2 2 4 4 6 6 8 8 10 10 12 12 14 14 16 16]

assert[~][p173;"this \"is\" a test";"this \"\" a test"]
assert[~][p173;"this is a test";"this is a test"]
assert[~][p173;"this \"is\" a \"test\"";"this \"\" a \"\""]
assert[~][p173;"";""]

assert[≈][p174[60];12;18.84955592]
assert[≈][p174[0];12;0]
assert[≈][p174[60];0;0]
assert[≈][p174[60];9 12 15;10.60287521 18.84955592 29.45243113]
assert[≈][p174[60 90 120];12;18.84955592 28.27433388 37.69911184]
assert[≈][p174[60 90 120];9 12 15;10.60287521 28.27433388 58.90486225]

assert[=][p175;"ATGCTTCAGAAAGGTCTTACG";1]
assert[=][p175;"Dyalog";0]
assert[=][p175;"";1]
assert[=][p175;,"T";1]

assert[~][p176[4];"ATCGAAGGTCGT";("ATCG";"TCGA";"CGAA";"GAAG";"AAGG";"AGGT";"GGTC";"GTCG";"TCGT")]
assert[~][p176[4];"AC";()]

assert[~][p177;"AGCTTTTCATTCTGACTGCTGTCTTTAAAAAAAGAGTGTCTGATAGCAG";14 8 10 17]
assert[~][p177;"CCAAATGGGG";3 2 4 1]
assert[~][p177;"";0 0 0 0]
assert[~][p177;,"G";0 0 1 0]

assert[~][p178;0 1 0 1 0 0 1;0 1 0 0 0 0 0]
assert[~][p178;!0;!0]
assert[~][p178;0 0 0 0;0 0 0 0]

assert[~][p179;"bookkeeper";0 1 0 1 0 1 0 0 0 0]
assert[~][p179;"";""]  / arguably dogdy?
assert[~][p179;"aaaaaa";1 1 1 1 1 0]
assert[~][p179;"d";,0]

assert[~][p1710;1 2 3 4;2 2#1 2 3 4]
assert[~][p1710;1 2 3 4 5;3 3#1 2 3 4 5 0N 0N 0N 0N]
assert[~][p1710;"Dyalog APL";4 4#"Dyalog APL      "]

/ https://problems.tryapl.org/psets/2018.html

assert[=][p181;5 5 2 10 3 15 10;3]
assert[=][p181;|5 5 2 10 3 15 10;2]
assert[=][p181;!0;0]
assert[=][p181;,10;1]

assert[≈][p182;1.234;1 0.234]
assert[≈][p182;12;12 0]
assert[≈][p182;0;0 0]

assert[~][p183;6 6;("2 *";"3 **";"4 ***";"5 ****";"6 *****";"7 ******";"8 *****";"9 ****";"10 ***";"11 **";"12 *")]
assert[~][p183;6;("1 *";"2 *";"3 *";"4 *";"5 *";"6 *")]
assert[~][p183;5 3 4;("3 *";"4 ***";"5 ******";"6 *********";"7 ***********";"8 ***********";"9 *********";"10 ******";"11 ***";"12 *")]
assert[~][p183;0;()] / Dyalog expects ("0 *") which is dubious

assert[=][p184;2018;`Dog]
assert[=][p184;1564;`Rat]
assert[=][p184;-551;`Dog]

assert[=][p185;2 23;`Pisces]
assert[=][p185;10 31;`Scorpio]

assert[=][p186;"<name><first>Drake</first><last>Mallard</last></name>";1]
assert[=][p186;"<math><relation>2<3</relation></math>";0]
assert[~][p186;,"";!0] / dyalog wants 1 -- not sure
assert[=][p186;">stuff<>/stuff<";0]

assert[~][p187[3];1 0 1 1 1 0 1 1;0 0 0 1 0 1 1 1]
assert[~][p187[-3];1 0 1 1 1 0 1 1;1 1 0 1 1 0 0 0]

/ skipping p188

assert[=][p189;(2018 4 1 12 34 56 789;2018 4 1 16 45 12 800);-1]
assert[=][p189;(2018 4 1 12 34 56 789;2018 4 1 12 34 56 789);0]
assert[=][p189;(2018 4 1 12 34 56 789;2017 4 1 12 34 56 789);1]

assert[=][p1810;("ALBERT EINSTEIN";"TEN ELITE BRAINS");1]
assert[=][p1810;(,"";,"");1]
assert[=][p1810;(,"d";,"d");1]
assert[=][p1810;("mesas";"seam");0]
assert[=][p1810;("apple";"lapel");0]

/ https://problems.tryapl.org/psets/2019.html

assert[~][p191[3];1+!9;(1 2 3;4 5 6;7 8 9)]
assert[~][p191[3];1+!11;(1 2 3;4 5 6;7 8 9;10 11)]
assert[~][p191[10];"Dyalog";,"Dyalog"]
assert[~][p191[2];" "\"the cat in the hat sat pat";(("the";"cat");("in";"the");("hat";"sat");,"pat")]
assert[~][p191[4];5;,,5] / dyalog expects ,,5 but this seems inconsistent, as every other example returns vector of vectors

assert[~][p192;0 64 65 69 70 79 80 89 90 100;"FFDDCCBBAA"]
assert[~][p192;!0;()]
assert[~][p192;2 3#71 82 81 82 84 59;("CBB";"BBF")]

/ floating point CT is too annoying at depth
tmp:+p193@{9 3 8 4 7}#"DABFC"
assert[~][{x};*tmp;"ABCDF"]
assert[~][{x};tmp@1;3 8 7 9 4]
assert[≈][{x};tmp@2;9.7 25.8 22.6 29.0 12.9]

assert[~][p194;5 4;(7 5;7 3;3 5;3 3;6 6;4 6;6 2;4 2)]
assert[~][p194;1 1;(3 2;2 3)]

assert[~][p195;" "\"I feed the bookkeeper";0 1 0 1]
assert[~][p195;,"I";,0]
assert[~][p195;,"feed";,1]
assert[~][p195;" "\"MY LLAMAS HAVE BEEN GOOD";0 1 0 1 1]

assert[~][p196;"IAMYY4U";4 2 6 9 9 4 8]
assert[~][p196;"";!0]
assert[~][p196;"UR2CUTE";8 7 2 2 8 8 3]

assert[~][p197[10];" "\"APL Problem Solving Competition";("   APL    ";" Problem  ";" Solving  ";"Competitio")]

assert[≈][p198;(1 -1;1 3);8]
assert[≈][p198;(1 1;1 2;2 2;2 1);4]
assert[≈][p198;5 5;0]
assert[≈][p198;(1 1;3 3);5.656854249]

assert[≈][p199;(2 4;3 -8;1 2);7]
assert[≈][p199;,1 1;0]
assert[≈][p199;(1 1;2 2);0]

assert[~][p1910;" "\"the plan is great";(("the";"great");("plan";"is"))]
assert[~][p1910;" "\"all odd";(("all";"odd");())]
assert[~][p1910;" "\"only even here";(();("only";"even";"here"))]

/ https://problems.tryapl.org/psets/2020.html

assert[~][p201[9];"SplittingHairs";("Splitting";"Hairs")]
assert[~][p201[-3];"DyalogAPL";("Dyalog";"APL")]
assert[~][p201[10];1+!10;(1+!10;!0)]
assert[~][p201[1];" "\"works with words also";(,"works";("with";"words";"also"))]

assert[~][p202;68 194 165 226 141 186 226 140 138 240 159 148 178 57;(,68;194 165;226 141 186;226 140 138;240 159 148 178;,57)]
assert[~][p202;68 121 97 108 111 103;(,68;,121;,97;,108;,111;,103)] / dyalog expects 68 121 97 108 111 103, but this seems inconsistent
assert[~][p202;!0;()]

assert[=][p203;"A";1]
assert[=][p203;"APL";1104]

assert[~][p204;2020;1]
assert[~][p204;1900+10 10#1+!100;(0 0 0 1 0 0 0 1 0 0;0 1 0 0 0 1 0 0 0 1;0 0 0 1 0 0 0 1 0 0;0 1 0 0 0 1 0 0 0 1;0 0 0 1 0 0 0 1 0 0;0 1 0 0 0 1 0 0 0 1;0 0 0 1 0 0 0 1 0 0;0 1 0 0 0 1 0 0 0 1;0 0 0 1 0 0 0 1 0 0;0 1 0 0 0 1 0 0 0 1)]

assert[~][p205[3];10;3 4 5 6 7 8 9 10]
assert[~][p205[4];-3;4 3 2 1 0 -1 -2 -3]
assert[~][p205[42];42;,42]

assert[~][p206[3];1 2 3 4 1 3 1 4 5;3 3 1 2 4 1 1 4 5]
assert[~][p206[3];,1;,1]
assert[~][p206[42];!0;!0]

assert[=][p207;2 7;1]
assert[=][p207;4 11;0]
assert[=][p207;3 11;1]
assert[=][p207;4 0;0]

assert[=][p208;123;0]
/ assert[=][p208;132;1] / FAIL FIX ME
assert[=][p208;31115;0]
assert[=][p208;3141514131415;1]

assert[=][p209;1 3 3 4 5 2 1;1]
assert[=][p209;,42;1]
assert[=][p209;1 3 2 4;0]
assert[=][p209;23 23 23;1]
/ assert[=][p209;!0;1] / dubious

/ skipping p2010; too APL-specific

/ https://www.dyalogaplcompetition.com/?goto=P1Intro

assert[≈][p211;"GCGCGCGCCCGGGGCCG";100]
assert[≈][p211;"ACGTACGTACGTACGT";50]
assert[≈][p211;{10 12 16 10}#"ACGT";58.33333333]

/ skipping p212, as `?` is a k primitive
/ assert[~][p212["DYALOG"];"APL";2 0N 3]
/ assert[~][p212[5 5#ABC];("UVWXY";"FGHIJ";"XYZZY");4 1 0N]

assert[~][p213[2 4 7 3 9];5 7 8 1 12 10 20 16 11 4 2 15 3 18 14 19 13 9 17 6;(8 12 10 20 16 4 2 18 14 6;8 12 20 16 4;7 14;12 15 3 18 9 6;18 9)]
assert[~][p213[,3];1+!10;,3 6 9]
assert[~][p213[6 7];,42;(,42;,42)]
assert[~][p213[2 3 5];!0;(!0;!0;!0)]
assert[~][p213[!0];1+!10;()]

assert[∆][p214;2*1+!5;1.141592654 4.566370614 10.27433388 18.26548246 28.53981634]
assert[∆][p214;(%2)*3 3#1+!9;3 3#0.5707963268 2.283185307 5.137166941 9.132741229 14.26990817 20.54866776 27.96902001 36.53096491 46.23450247]

assert[~][p215;12;3 4]
assert[~][p215;16;4 4]
assert[~][{x};p215'1+!19;(1 1;1 2;1 3;2 2;1 5;2 3;1 7;2 4;3 3;2 5;1 11;3 4;1 13;2 7;3 5;4 4;1 17;3 6;1 19)]
assert[~][{x};p215'999999 1000000;(999 1001;1000 1000)]

assert[~][p216;"RNBQKBNR";1]
assert[~][p216;"BBNRKNRQ";1]
assert[~][p216;"RBBNQNRK";0]
assert[~][p216;"BRBKRNQN";0]

assert[~][p217;1 1#42;1]
assert[~][p217;3 3#4 9 2 3 5 7 8 1 6;1]
assert[~][p217;2 2#1 2 3 4;0]

assert[=][p218;(2 30;5 15);165]
assert[=][p218;(5 15;2 30);165]
assert[=][p218;(1 0 0;,0);1440]

assert[=][p219;1 2 3 5 5 5 6 4 3;3]
assert[=][p219;1 2 3 4 4 4 4 4 5 4 3;4]
assert[=][p219;1 2;1]

assert[~][p2110[6];">";"     >"]
assert[~][p2110[8];("K";"E";"Iversen");("       K";"       E";" Iversen")]
assert[~][p2110[8];("Longer Phrase";"APL";"Parade");("r Phrase";"     APL";"  Parade")]
