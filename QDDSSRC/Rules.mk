PFs := DETORD.FILE ORDER.FILE ARTICLE.FILE FAMILLY.FILE PROVIDER.FILE ARTIPROV.FILE CUSTOMER.FILE PARAMETER.FILE COUNTRY.FILE
LFs := DETORD1.FILE COUNTR1.FILE FAMILL1.FILE PROVIDE1.FILE ORDER1.FILE ARTICLE1.FILE ORDER2.FILE ARTICLE2.FILE CUSTOME1.FILE ORDER3.FILE ARTIPRO1.FILE CUSTOME2.FILE
DSPFs := ART200D.FILE COU200D.FILE ORD201D.FILE PRO200D.FILE ART201D.FILE COU301D.FILE ORD202D.FILE PRO201D.FILE ART202D.FILE FAM301D.FILE PRO202D.FILE ART301D.FILE CUS200D.FILE CUS301D.FILE ORD100D.FILE ORD101D.FILE PAR200D.FILE ORD200D.FILE
PRTFs := ORD500O.FILE

ARTICLE.FILE:  $(d)/ARTICLE-Article_File.PF SAMREF.FILE
ARTICLE1.FILE: $(d)/ARTICLE1-Article_File.LF ARTICLE.FILE
ARTICLE2.FILE: $(d)/ARTICLE2.LF ARTICLE.FILE
ART200D.FILE:  $(d)/ART200D-Work_with_Article.DSPF ARTICLE.FILE
ART301D.FILE:  $(d)/ART301D-Function_Select_an_article.DSPF ARTICLE.FILE
 
CUSTOMER.FILE: $(d)/CUSTOMER.PF SAMREF.PF
CUSTOME1.FILE: $(d)/CUSTOME1.LF CUSTOMER.FILE
CUSTOME2.FILE: $(d)/CUSTOME2.LF CUSTOMER.FILE
CUS200D.FILE:  $(d)/CUS200D.DSPF CUSTOMER.FILE SAMMSGF.MSGF
CUS301D.FILE:  $(d)/CUS301D.DSPF CUSTOMER.FILE

COUNTRY.FILE: $(d)/COUNTRY.PF SAMREF.FILE
COUNTR1.FILE: $(d)/COUNTR1.LF COUNTRY.FILE
COU200D.FILE: $(d)/COU200D.DSPF CUSTOMER.FILE SAMMSGF.MSGF
COU301D.FILE: $(d)/COU301D.DSPF

ORDER.FILE:   $(d)/ORDER.PF ORDER.FILE
ORDER1.FILE:  $(d)/ORDER1.LF ORDER.FILE
ORDER2.FILE:  $(d)/ORDER2.LF ORDER.FILE
ORDER3.FILE:  $(d)/ORDER3.LF ORDER.FILE
DETORD.FILE:  $(d)/DETORD.PF SAMREF.FILE
DETORD1.FILE: $(d)/DETORD1.LF DETORD.FILE
ORD100D.FILE: $(d)/ORD100D.DSPF DETORD.FILE
ORD101D.FILE: $(d)/ORD101D.DSPF DETORD.FILE ORDER.FILE SAMMSG.MSGF
ORD200D.FILE: $(d)/ORD200D.DSPF ORDER.FILE CUSTOMER.FILE
ORD201D.FILE: $(d)/ORD201D.DSPF ORDER.FILE CUSTOMER.FILE
ORD202D.FILE: $(d)/ORD202D.DSPF DETORD.FILE ARTICLE.FILE CUSTOMER.FILE
ORD500O.FILE: $(d)/ORD500O.PRTF ORDER.FILE CUSTOMER.FILE DETORD.FILE ARTICLE.FILE
#TMPDETORD.FILE: DETORD.FILE
#	system -i "CPYF FROMFILE($objlib/DETORD.FILE) TOFILE($objlib/TMPDETORD.FILE)"

FAMILLY.FILE: $(d)/FAMILLY.PF SAMREF.FILE
FAMILL1.FILE: $(d)/FAMILL1.LF FAMILLY.FILE
FAM301D.FILE: $(d)/FAM301D.DSPF FAMILLY.FILE

PROVIDER.FILE: $(d)/PROVIDER.PF SAMREF.FILE
PROVIDE1.FILE: $(d)/PROVIDE1.LF PROVIDER.FILE
PRO200D.FILE:  $(d)/PRO200D.DSPF PROVIDER.FILE SAMMSGF.FILE
PRO201D.FILE:  $(d)/PRO201D.DSPF

ARTIPROV.FILE: $(d)/ARTIPROV.PF SAMREF.FILE
ARTIPRO1.FILE: $(d)/ARTIPRO1.LF ARTIPROV.FILE
ART201D.FILE:  $(d)/ART201D-Work_with_Article.DSPF ARTIPROV.FILE PROVIDER.FILE ARTICLE.FILE
ART202D.FILE:  $(d)/ART202D-Work_with_Article.DSPF
PRO202D.FILE:  $(d)/PRO202D.DSPF ARTIPROV.FILE

PARAMETER.FILE: $(d)/PARAMETER.PF
PAR200D.FILE: $(d)/PAR200D.DSPF PARAMETER.FILE
