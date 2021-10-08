
/ constants
pi:3.14159265359
abc:`c$"a"+!26 / lower-case letters
ABC:`c$"A"+!26 / upper-case letters
q:"\""

/ helpers
sq:{x*x}
ave:{(+/x)%#x}
gcd:*|(*:)(|!\)/,
ctr:{?[x$"";-2!x-:#y;y]}  / center string y in width x, padding with spaces, where ~x>#y
rot:{@[x;(2!)#!#x;|:]}    / flip pairs at odd indices

/ Solutions for https://problems.tryapl.org/psets/2013.html

p131:-1+1_2*!1+                                      / 1: https://problems.tryapl.org/psets/2013.html?goto=P1_Seems_a_Bit_Odd_To_Me
p132:{100*(+/x>64)%#x}                               / 2: https://problems.tryapl.org/psets/2013.html?goto=P2_Making_The_Grade
p133:+/~0=#'" "\                                     / 3: https://problems.tryapl.org/psets/2013.html?goto=P3_What_Is_In_a_Word
p134:{(0=#x)|(~*|m)&&/~0>m:+\0^1 -1"()"?x}           / 4: https://problems.tryapl.org/psets/2013.html?goto=P4_Keeping_Things_In_Balance
p135:=                                               / 5: https://problems.tryapl.org/psets/2013.html?goto=P5_Identity_Crisis
p136:{$[x~!0;0;{x|-x}(&/d)-|/d:,/x]}                 / 6: https://problems.tryapl.org/psets/2013.html?goto=P6_Home_On_The_Range
p137:{x=_x}_                                         / 7: https://problems.tryapl.org/psets/2013.html?goto=P7_Float_Your_Boat
p138:{v*/:v:1+!x}                                    / 8: https://problems.tryapl.org/psets/2013.html?goto=P8_Go_Forth_And_Multiply
p139:{(+/'x'y)%x}                                    / 9: https://problems.tryapl.org/psets/2013.html?goto=P9_It_Is_a_Moving_Experience

/ https://problems.tryapl.org/psets/2014.html

p141:{~-/*/2#,|x,y,z}                                /  1: https://problems.tryapl.org/psets/2014.html?goto=P1_It_Is_All_Right
p142:{(2(|1|':)/"0">x)|^"aeiou"?_x}#                 /  2: https://problems.tryapl.org/psets/2014.html?goto=P2_How_Tweet_It_Is (via @chrispsn, @coltim)
p143:{-1_*|+x(|+\)\1 1}                              /  3: https://problems.tryapl.org/psets/2014.html?goto=P3_Tell_a_Fib
p144:" "/(~#:')_" "\                                 /  4: https://problems.tryapl.org/psets/2014.html?goto=P4_Space_The_Final_Frontier
p145:1=#|:\(~"a{"')#_:                               /  5: https://problems.tryapl.org/psets/2014.html?goto=P5_Mirror_Mirror
p146:{+(!x;.x)}@#'=+/1+!(),                          /  6: https://problems.tryapl.org/psets/2014.html?goto=P6_Roll_The_Dice
p147:%/gcd\,                                         /  7: https://problems.tryapl.org/psets/2014.html?goto=P7_Revolutionary_Thinking
p148:%+/*/2#,-/                                      /  8: https://problems.tryapl.org/psets/2014.html?goto=P8_Go_The_Distance
p149:{(x*x*`sin@2*y*pi%180)%9.8}                     /  9: https://problems.tryapl.org/psets/2014.html?goto=P9_Going_Ballistic
p1410:100*|/1_-1+%':                                 / 10: https://problems.tryapl.org/psets/2014.html?goto=P10_Sales_Are_Up

/ https://problems.tryapl.org/psets/2015.html

p151:~/{v@<v:l^(l:_x)^abc}'                          / 1: https://problems.tryapl.org/psets/2015.html?goto=P1_Nag_A_Ram
p152:|/{y*x+y}\>':(!0),                              / 2: https://problems.tryapl.org/psets/2015.html?goto=P2_Longest_Streak (via @coltim)
p153:{?(,!2),x@*'<==%/'x}1_+&+|\=1+                  / 3: https://problems.tryapl.org/psets/2015.html?goto=P3_Farey_Tale (via @coltim)
p154:{((#x)#<<x,y)?(#y)#<<y,x}                       / 4: https://problems.tryapl.org/psets/2015.html?goto=P4_PDI_Progessive_Dyadic_Iota
p155:{%(ave sq x)-sq ave x}                          / 5: https://problems.tryapl.org/psets/2015.html?goto=P5_Hes_so_mean_he_has_no_standard_deviation
p156:&/~=/2#+-2!<'+,/                                / 6: https://problems.tryapl.org/psets/2015.html?goto=P6_Hey_This_is_My_Space (via @ngn)
p157:~^?/_|:                                         / 7: https://problems.tryapl.org/psets/2015.html?goto=P7_Just_In_Upper_Case
p158:{@[x;&13=x;:;12.99]}                            / 8: https://problems.tryapl.org/psets/2015.html?goto=P8_Unlucky_13
p159:{(""/x@0,(|'0N 2#1+!-2+#x),-1+#x)^" "}          / 9: https://problems.tryapl.org/psets/2015.html?goto=P9_Id_Like_Mine_Scrambled_Please
p1510:{(--2!l+|/l:#'t)$t:`k'x(+':|0,)\1}             / 10: https://problems.tryapl.org/psets/2015.html?goto=P10_Blaiseing_a_Trail (via @ngn)

/ https://problems.tryapl.org/psets/2016.html

p161:{(+/x)%#x}                                      / 1: https://problems.tryapl.org/psets/2016.html?goto=P1_Statistics_Mean
p162:{{(+/x)%#x}x[<x]@-2!(#x)-!2}                    / 2: https://problems.tryapl.org/psets/2016.html?goto=P2_Statistics_Median (via @coltim)
p163:{&d=|/d:#'=x}                                   / 3: https://problems.tryapl.org/psets/2016.html?goto=P3_Statistics_Mode
p164:{(,/x)@<,/(!#)'x}                               / 4: https://problems.tryapl.org/psets/2016.html?goto=P4_Just_Meshing_Around
p165:&1=#'=:                                         / 5: https://problems.tryapl.org/psets/2016.html?goto=P5_Youre_Unique_Just_Like_Everyone_Else
p166:{<x!#'x}                                        / 6: https://problems.tryapl.org/psets/2016.html?goto=P6_Shorter_Ones_to_the_Front
p167:(|/~3 5!\:)#                                    / 7: https://problems.tryapl.org/psets/2016.html?goto=P7_3s_and_5s (via @traws)
p168:{.|x@=x<0}                                      / 8: https://problems.tryapl.org/psets/2016.html?goto=P8_Separating_Out_the_Negative (@coltim)
p169:{x\y}                                           / 9: https://problems.tryapl.org/psets/2016.html?goto=P9_Delimited_Text
p1610:+/*/                                           / 10: https://problems.tryapl.org/psets/2016.html?goto=P10_Order_Total_Dot_Product

/ https://problems.tryapl.org/psets/2017.html

p171:1+2*!:                                          / 1: https://problems.tryapl.org/psets/2017.html?goto=P1_What_an_Odd_Bunch (via @razetime)
p172:{x+2!x}                                         / 2: https://problems.tryapl.org/psets/2017.html?goto=P2_Good_Evening
p173:(q;q)/{2!!#x}_q\                                / 3: https://problems.tryapl.org/psets/2017.html?goto=P3_Miss_Quoted (@coltim)
p174:{(pi*r*r:y%2.0)%360.0%x}                        / 4: https://problems.tryapl.org/psets/2017.html?goto=P4_Slices_of_Pies
p175:{~#x^"ACGT"}                                    / 5: https://problems.tryapl.org/psets/2017.html?goto=P5_DNA
p176:{?x'y}                                          / 6: https://problems.tryapl.org/psets/2017.html?goto=P6_k_mers
p177:+/'"ACGT"=\:                                    / 7: https://problems.tryapl.org/psets/2017.html?goto=P7_Counting_DNA_Nucleotides
p178:{(!#x)=x?1}                                     / 8: https://problems.tryapl.org/psets/2017.html?goto=P8_Be_the_First_1 (via @chrispsn)
p179:|=':|"",                                        / 9: https://problems.tryapl.org/psets/2017.html?goto=P9_Double_Trouble (via @coltim)
p1710:{(s;s)#x@!s*s:-_-%#x}                          / 10: https://problems.tryapl.org/psets/2017.html?goto=P10_Squaring_Off (via @traws)

/ https://problems.tryapl.org/psets/2018.html

signsc:`Monkey`Rooster`Dog`Pig`Rat`Ox`Tiger`Rabbit`Dragon`Snake`Horse`Goat
cutoffs:+((1+!12);20 19 21 20 21 21 23 23 10 23 22 22)
signsw:`Capricorn`Aquarius`Pisces`Aries`Taurus`Gemini`Cancer`Leo`Virgo`Libra`Scorpio`Sagittarius`Capricorn

p181:#?|\                                            / 1: https://problems.tryapl.org/psets/2018.html?goto=P1_Oh_Say_Can_You_See
p182:{(f;x-f:_x)}                                    / 2: https://problems.tryapl.org/psets/2018.html?goto=P2_Number_Splitting
p183:{" "/'+($'!m;.{x#"*"}'m:#'=+/1+!(),x)}          / 3: https://problems.tryapl.org/psets/2018.html?goto=P3_Rolling_Along
p184:{signsc@12!x+0>x}                               / 4: https://problems.tryapl.org/psets/2018.html?goto=P4_Whats_Your_Sign
p185:{signsw@({x@<x}cutoffs,,x)?x}                   / 5: https://problems.tryapl.org/psets/2018.html?goto=P5_Whats_Your_Sign_Revisited
p186:{(~*|m)&&/~0>m:+\0^1 -1"<>"?x}                  / 6: https://problems.tryapl.org/psets/2018.html?goto=P6_Whats_Your_Angle
p187:{0^y[(-x)+!#y]}                                 / 7: https://problems.tryapl.org/psets/2018.html?goto=P7_Unconditionally_Shifty
/p8: very APL-specific; skipping                     / 8: https://problems.tryapl.org/psets/2018.html?goto=P8_Making_a_Good_Argument
p189:{*(-/0<-:\(-/x)^0),0}                           / 9: https://problems.tryapl.org/psets/2018.html?goto=P9_Earlier_Later_or_the_Same
p1810:~/{{=x@<x}x^" "}'                              / 10: https://problems.tryapl.org/psets/2018.html?goto=P10_Anagrammatically_Correct

/ https://problems.tryapl.org/psets/2019.html

km:+,/'|:\2 1*1 -1@!2 2 / knight moves offsets (via @Traws)
tel:ABC!({3 3 3 3 3 4 3 4}#2_!10)
nums:(`c$"0"+!10)!(!10)

p191:{(0N,x)#y}                                      / 1: https://problems.tryapl.org/psets/2019.html?goto=P1_Chunky_Monkey
p192:"FDCBA"@0 65 70 80 90'          / binsearch     / 2: https://problems.tryapl.org/psets/2019.html?goto=P2_Making_the_Grade (-4 via @coltim)
p193:{+(!t;.t;.0.1*_0.5+1000*t%+/t:0^"ABCDF"##'=x)}  / 3: https://problems.tryapl.org/psets/2019.html?goto=P3_Grade_Distribution (-10, @coltim, @chrispsn)
p194:(&/'0<)#km+\:                                   / 4: https://problems.tryapl.org/psets/2019.html?goto=P4_Knight_Moves
p195:(|/=':" ",)'                                    / 5: https://problems.tryapl.org/psets/2019.html?goto=P5_Doubling_Up
p196:(tel,nums)@                                     / 6: https://problems.tryapl.org/psets/2019.html?goto=P6_Telephone_Names
p197:{ctr[x]'{(x&#y)#y}[x]'y}                        / 7: https://problems.tryapl.org/psets/2019.html?goto=P7_In_the_Center_of_It_All
p198:{+/%+/'{x*x}(*|x)-':x}                          / 8: https://problems.tryapl.org/psets/2019.html?goto=P8_Going_the_Distance (-4 via @coltim)
p199:{{x|-x}0.5*-/+/rot 1_*':rot (1+#x)#x}           / 9: https://problems.tryapl.org/psets/2019.html?goto=P9_Area_Code_a_la_Gauss
p1910:{(#;_)[;2!#:';x]}                              / 10: https://problems.tryapl.org/psets/2019.html?goto=P10_Odd_and_Evens (via @coltim)

/ https://problems.tryapl.org/psets/2020.html

p201:{$[x<0;o[x+#y;y];(x;x-#y)#\:y]}                 / 1: https://problems.tryapl.org/psets/2020.html?goto=P1_Lets_Split
p202:{(&~{(~x<128)&~x>191}x)_x}                      / 2: https://problems.tryapl.org/psets/2020.html?goto=P2_Characters
p203:{26/1+ABC?x}                                    / 3: https://problems.tryapl.org/psets/2020.html?goto=P3_Columns
p204:{(~400!x)|(~4!x)&100!x}                         / 4: https://problems.tryapl.org/psets/2020.html?goto=P4_Take_a_Leap
p205:{(x<y)|:/(x-!x-y),x&y}                          / 5: https://problems.tryapl.org/psets/2020.html?goto=P5_Integer_Range (-4 via @bubbler)
p206:{,/(#;_)[;x=;y]}                                / 6: https://problems.tryapl.org/psets/2020.html?goto=P6_Move_To_Front
p207:{|/&/((#2\|/x)#2)\'x}                           / 7: https://problems.tryapl.org/psets/2020.html?goto=P7_Bits
p208:~|/1_+':-/0<-:\-':10\                           / 8: https://problems.tryapl.org/psets/2020.html?goto=P8_Zigzag
p209:{$[|/m:<':x;&/(m?1)_m;1]}                       / 9: https://problems.tryapl.org/psets/2020.html?goto=P9_Rise_and_Fall
p2010:`k@    / very APL-specific                     / 10: https://problems.tryapl.org/psets/2020.html?goto=P10_Stacking_It_Up

/ https://www.dyalogaplcompetition.com/?goto=P1Intro

p211:{100*(+/|/"GC"=\:x)%#x}                         / 1: https://www.dyalogaplcompetition.com/?goto=P11
p212:?                                               / 2: https://www.dyalogaplcompetition.com/?goto=P12
p213:{y@&'~x!\:y}                                    / 3: https://www.dyalogaplcompetition.com/?goto=P13
p214:{(pi*r*r:x%2)-s*s:x%%2}                         / 4: https://www.dyalogaplcompetition.com/?goto=P14
p215:{a,_x%a:![;x](-1+)/_%x}                         / 5: https://www.dyalogaplcompetition.com/?goto=P15 (@ngn)
p216:{(2!+/p"B")&~(<,/(p:=x)"KR")1}                  / 6: https://www.dyalogaplcompetition.com/?goto=P16
p217:{1=#=+/'x,(+x),(,/'x*/:(i;|i:=#x))^\:0}         / 7: https://www.dyalogaplcompetition.com/?goto=P17
p218:{x|-x}@-/0 24 60/'-3#'(&3),/:                   / 8: https://www.dyalogaplcompetition.com/?goto=P18
p219:|/#'{(&~=':x)_x}@1_-/0<-:\-':                   / 9: https://www.dyalogaplcompetition.com/?goto=P19
p2110:{(-x)$y}                                       / 10: https://www.dyalogaplcompetition.com/?goto=P110
