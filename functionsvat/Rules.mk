PFs := VATDEF.FILE
MODULEs := VAT300.MODULE
SRVPGMs := FVAT.SRVPGM

VAT300.MODULE: $(d)/vat300.rpgle

FVAT.SRVPGM: $(d)/fvat.bnd VAT300.module
FVAT.SRVPGM: TEXT = 'functions vat'

VATDEF.FILE: $(d)/vatdef.pf SAMREF.file