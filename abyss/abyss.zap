	.NEW 6
; Low core locations
%ZVERSION::	.BYTE	6
		.BYTE	FLAGS
%ZORKID::	ZORKID
%ENDLOD::	ENDLOD
%START::	GO
%VOCAB::	VOCAB
%OBJECT::	OBJECT
%GLOBAL::	GLOBAL
%PURBOT::	IMPURE
%FLAGS::	.WORD 112
%SERIAL::	.WORD	0
%SERI1::	.WORD	0
%SERI2::	.WORD	0
%FWORDS::	WORDS
%PLENTH::	.WORD	0
%PCHKSM::	.WORD	0
%INTWRD::	.WORD	0
%SCRWRD::	.WORD	0
%HWRD::	.WORD	0
%VWRD::	.WORD	0
%FWRD::	.WORD	0
%FOFF::	FOFF
%SOFF::	SOFF
%CLRWRD::	.WORD	0
%TCHAR::	TCHARS
%TWID::	.WORD	0
%CRFUNC::	.WORD	0
%CHRSET::	.WORD	0
%EXTAB::	LOWCORE-TABLE
	.WORD	0
	.WORD	0
	.WORD	0
	.WORD	0
	.INSERT "ABYSSFREQ"	;Frequent word table
	.INSERT "ABYSSDAT"	; Data file
	.INSERT "ABYSSPUR"
	.INSERT "PSTACK"
	.INSERT "PMEM"
	.INSERT "PARSER"
	.INSERT "FIND"
	.INSERT "REDS"
	.INSERT "BREDS"
	.INSERT "TOP"
	.INSERT "PRARE"
	.INSERT "MISC"
	.INSERT "GAS-MIX"
	.INSERT "VERBS"
	.INSERT "BE"
	.INSERT "SUB-BAY"
	.INSERT "COMMAND"
	.INSERT "MONTANA"
	.INSERT "RETURN1"
	.INSERT "RETURN2"
	.INSERT "OCEAN"
	.INSERT "CRANE"
	.INSERT "GLOBAL"
	.INSERT "UTIL"
	.INSERT "STOPPER"
	.INSERT "ALIEN"
	.INSERT "ENDGAME"

	.INSERT "ABYSSSTR"

	.END
