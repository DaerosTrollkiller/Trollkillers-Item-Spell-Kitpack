EXTEND_BOTTOM TRSKIN04 8

IF ~Global("BD_HAVE_SOD","GLOBAL",1)
    Global("K0_SOD_IMPORT_50","GLOBAL",1)~

THEN DO ~GiveItemCreate("bdbrac15",LastTalkedToBy,0,0,0)
SetGlobal ("K0_SOD_IMPORT_50","GLOBAL",2)~ GOTO K0SODIMP
END

APPEND TRSKIN04

IF ~~ THEN BEGIN K0SODIMP
    SAY @80007
    COPY_TRANS TRSKIN04 8
END
END
