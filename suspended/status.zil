"STATUS for
			      SUSPENDED
	(c) Copyright 1985 Infocom, Inc.  All Rights Reserved.
"

<CONSTANT H-NORMAL 0>
<CONSTANT H-INVERSE 1>

<CONSTANT D-NORMAL 0>
<CONSTANT D-TABLE 1>

<ROUTINE INIT-STATUS-LINE ()
	 <CLEAR -1>
	 <SPLIT 3>
	 <SCREEN 1>
	 <BUFOUT <>>
	 <INVERSE-LINE 1>
	 <INVERSE-LINE 2>
	 <INVERSE-LINE 3>
	 <HLIGHT ,H-INVERSE>
	 <CURSET 1 1>
	 <TELL "Cryolink to:">
	 <CURSET 1 30>
	 <TELL "Casualties this Cycle:">
	 <CURSET 1 60>
	 <TELL "Cycle:">
	 <CURSET 2 1>
	 <TELL "Auda:">
	 <CURSET 2 30>
	 <TELL "Iris:">
	 <CURSET 2 60>
	 <TELL "Poet:">
	 <CURSET 3 1>
	 <TELL "Sensa:">
	 <CURSET 3 30>
	 <TELL "Waldo:">
	 <CURSET 3 60>
	 <TELL "Whiz:">
	 <BUFOUT T>
	 <HLIGHT ,H-NORMAL>
	 <SCREEN 0>>

<ROUTINE INVERSE-LINE (LIN "AUX" (CNT 79))
	 <CURSET .LIN 1>
	 <HLIGHT ,H-INVERSE>
	 <PRINT-SPACES .CNT>
	 <HLIGHT ,H-NORMAL>>

<ROUTINE PRINT-SPACES (CNT)
	 <REPEAT ()
		 <COND (<L? <SET CNT <- .CNT 1>> 0>
			<RETURN>)
		       (T
			<PRINTC 32>)>>>

<GLOBAL SL-BUFFER <ITABLE NONE 80>>

<ROUTINE STATUS-LINE ("AUX" LEN)
	 <BUFOUT <>>
	 <DIROUT ,D-TABLE ,SL-BUFFER>
	 <TELL D ,HERE>
	 <DIROUT ,D-NORMAL>
	 <SET LEN <GET ,SL-BUFFER 0>>
	 <SCREEN 1>
	 <CURSET 1 15>
	 <HLIGHT ,H-INVERSE>
	 <TELL D ,HERE>
	 <PRINT-SPACES <- 25 .LEN>>
	 <CURSET 1 57>
	 <TELL N ,SCORE "  ">
	 <CURSET 1 71>
	 <TELL N ,MOVES "  ">
	 <CURSET 2 8>
	 <SL-LOC ,AUDA>
	 <CURSET 2 37>
	 <SL-LOC ,IRIS>
	 <CURSET 2 67>
	 <SL-LOC ,POET>
	 <CURSET 3 8>
	 <SL-LOC ,SENSA>
	 <CURSET 3 37>
	 <SL-LOC ,WALDO>
	 <CURSET 3 67>
	 <SL-LOC ,WHIZ>
	 <SCREEN 0>
	 <CURSET 23 1>
	 <BUFOUT T>
	 <HLIGHT ,H-NORMAL>>

<ROUTINE SL-LOC (RBT "AUX" (L <LOC .RBT>) LEN)
	 <DIROUT ,D-TABLE ,SL-BUFFER>
	 <TELL D .L>
	 <DIROUT ,D-NORMAL>
	 <SET LEN <GET ,SL-BUFFER 0>>
	 <TELL D .L>
	 <PRINT-SPACES <- 20 .LEN>>>
	 



			