( Default programs )
: stack .s ;

( Define Stars )
: star			42 emit ;
: stars			0 do star loop ; 

( Define margin and padding )
: margin		cr 10 spaces ;
: padding		3 spaces ;

( Define ascii parst of text )
: blip			star 4 spaces padding ;
: op			star 3 spaces star padding ;
: bar			5 stars padding ;
: 2slide		2 stars 3 spaces padding ;
: slideend		star space 3 stars padding ;
: line			2 spaces star 2 spaces padding ;

( Define lines of text )
: forthl1		margin bar bar bar bar op ;
: forthl2		margin blip op op line op ;
: forthl3		margin bar op bar line bar ;
: forthl4		margin blip op 2slide line op ;
: forthl5		margin blip bar slideend line op ." Jv.";

( Define full ascii text )
: asciiforth	forthl1 forthl2 forthl3 forthl4 forthl5 cr ;

( Print text on startup )
asciiforth cr
