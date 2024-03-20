( Default programs )
: stack .s ;
: show dup . ;
: help words ;

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

: factorial		1 swap 1 do i 1+ * loop ;
: sum-integers	0 swap 1 do i + loop ;
: fibonacci		0 1 2dup 0 do over over + swap 2 pick 1+ loop drop ;

( Print text on startup )
asciiforth cr

( Yes, gForth supports an internal BLOCK editor. Start gforth )

( type: use blocked.fb )
( type: 1 load )
( type editor )
( `words` will show the editor words: )
( s b n bx nx qx dl il f y r d i t 'par 'line 'rest c a m  ok )
( type: 0 l to list screen 0 which describes the editor, )
