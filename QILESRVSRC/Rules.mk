SRVPGMs := FARTICLE.SRVPGM FPARAMETER.SRVPGM LOG.SRVPGM

FARTICLE.SRVPGM: $(d)/farticle.ilesrvpgm ART300.MODULE ART301.MODULE FFAMILLY.SRVPGM
FPARAMETER.SRVPGM: $(d)/fparameter.ilesrvpgm PAR300.MODULE
LOG.SRVPGM: $(d)/log.ilesrvpgm LOG300.MODULE