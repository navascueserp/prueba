FROM windev/webdev-base:US270103s

COPY GestionERP.ZIP ${WEBDEVConfiguration}comptes/ftp_webdev/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/gestionerp

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/gestionerp/