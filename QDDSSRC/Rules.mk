PFs := DETORD.FILE ORDER.FILE ARTICLE.FILE FAMILLY.FILE PROVIDER.FILE ARTIPROV.FILE CUSTOMER.FILE PARAMETER.FILE COUNTRY.FILE TMPDETORD.FILE
LFs := DETORD1.FILE COUNTR1.FILE FAMILL1.FILE PROVIDE1.FILE ORDER1.FILE ARTICLE1.FILE ORDER2.FILE ARTICLE2.FILE CUSTOME1.FILE ORDER3.FILE ARTIPRO1.FILE CUSTOME2.FILE
DSPFs := ART200D.FILE COU200D.FILE ORD201D.FILE PRO200D.FILE ART201D.FILE COU301D.FILE ORD202D.FILE PRO201D.FILE ART202D.FILE FAM301D.FILE PRO202D.FILE ART301D.FILE CUS200D.FILE CUS301D.FILE ORD100D.FILE ORD101D.FILE PAR200D.FILE ORD200D.FILE
PRTFs := ORD500O.FILE

ARTICLE.FILE:  $(d)/article-article_file.pf SAMREF.FILE
ARTICLE1.FILE: $(d)/article1-article_file.lf ARTICLE.FILE
ARTICLE2.FILE: $(d)/article2.lf article.file
ART200D.FILE:  $(d)/art200d-work_with_article.dspf ARTICLE.FILE
ART301D.FILE:  $(d)/art301d-function_select_an_article.dspf ARTICLE.FILE
 
CUSTOMER.FILE: $(d)/customer.pf SAMREF.FILE
CUSTOME1.FILE: $(d)/custome1.lf CUSTOMER.FILE
CUSTOME2.FILE: $(d)/custome2.lf CUSTOMER.FILE
CUS200D.FILE:  $(d)/cus200d.dspf CUSTOMER.FILE SAMMSGF.MSGF
CUS301D.FILE:  $(d)/cus301d.dspf CUSTOMER.FILE

COUNTRY.FILE: $(d)/country.pf SAMREF.FILE
COUNTR1.FILE: $(d)/countr1.lf COUNTRY.FILE
COU200D.FILE: $(d)/cou200d.dspf SAMREF.FILE CUSTOMER.FILE SAMMSGF.MSGF
COU301D.FILE: $(d)/cou301d.dspf

ORDER.FILE:   $(d)/order.pf SAMREF.FILE
ORDER1.FILE:  $(d)/order1.lf ORDER.FILE
ORDER2.FILE:  $(d)/order2.lf ORDER.FILE
ORDER3.FILE:  $(d)/order3.lf ORDER.FILE
DETORD.FILE:  $(d)/detord.pf SAMREF.FILE
DETORD1.FILE: $(d)/detord1.lf DETORD.FILE
ORD100D.FILE: $(d)/ord100d.dspf DETORD.FILE
ORD101D.FILE: $(d)/ord101d.dspf DETORD.FILE ORDER.FILE SAMMSGF.MSGF
ORD200D.FILE: $(d)/ord200d.dspf ORDER.FILE CUSTOMER.FILE
ORD201D.FILE: $(d)/ord201d.dspf ORDER.FILE CUSTOMER.FILE
ORD202D.FILE: $(d)/ord202d.dspf DETORD.FILE ARTICLE.FILE CUSTOMER.FILE
ORD500O.FILE: $(d)/ord500o.prtf ORDER.FILE CUSTOMER.FILE DETORD.FILE ARTICLE.FILE
TMPDETORD.FILE: DETORD.FILE
	system -i "CPYF FROMFILE($(OBJLIB)/DETORD) TOFILE($(OBJLIB)/TMPDETORD) CRTFILE(*YES)"

FAMILLY.FILE: $(d)/familly.pf SAMREF.FILE
FAMILL1.FILE: $(d)/famill1.lf FAMILLY.FILE
FAM301D.FILE: $(d)/fam301d.dspf FAMILLY.FILE

PROVIDER.FILE: $(d)/provider.pf SAMREF.FILE
PROVIDE1.FILE: $(d)/provide1.lf PROVIDER.FILE
PRO200D.FILE:  $(d)/pro200d.dspf PROVIDER.FILE SAMMSGF.MSGF
PRO201D.FILE:  $(d)/pro201d.dspf

ARTIPROV.FILE: $(d)/artiprov.pf SAMREF.FILE
ARTIPRO1.FILE: $(d)/artipro1.lf ARTIPROV.FILE
ART201D.FILE:  $(d)/art201d-work_with_article.dspf ARTIPROV.FILE PROVIDER.FILE ARTICLE.FILE
ART202D.FILE:  $(d)/art202d-work_with_article.dspf
PRO202D.FILE:  $(d)/pro202d.dspf ARTIPROV.FILE

PARAMETER.FILE: $(d)/parameter.pf
PAR200D.FILE: $(d)/par200d.dspf PARAMETER.FILE
