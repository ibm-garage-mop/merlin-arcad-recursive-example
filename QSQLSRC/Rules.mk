SQLs := ART801.PGM ARTLSTDAT.FILE ORD701.PGM ARTIINF.FILE CUSSEQ.DTAARA  ORDERCUS.FILE
# ISOTODATE.SRVPGM ISOTODATE4.SRVPGM
ART801.PGM: ART801.SQLPRC
ARTLSTDAT.FILE: ARTLSTDAT.VIEW
ISOTODATE.SRVPGM: ISOTODATE.SQLUDF
ORD701.PGM: ORD701.SQLTRG
ARTIINF.FILE: ARTIINF.TABLE
CUSSEQ.DTAARA: CUSSEQ.SQLSEQ
ISOTODATE4.SRVPGM: ISOTODATE4.SQLUDF
ORDERCUS.FILE: ORDERCUS.VIEW