# Makefile created by mkmf $Id: mkmf,v 14.0 2007/03/20 22:13:27 fms Exp $ 

include Makefile.config

CPPDEFS = -DMPI -DICEDYN -DLEVITUS2X -DTRC -DTKE -DTKEADV -DIDLAGE -DPNETCDF

.DEFAULT:
	-touch $@
all: micom
advect.o: ../phy/advect.F ../phy/common_blocks.h ../trc/param_trc.h ../trc/common_trc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/advect.F
barotp.o: ../phy/barotp.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/barotp.F
bcoef.o: ../icedyn/bcoef.F ../icedyn/param_icedyn.h ../icedyn/common_icedyn.h
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../icedyn	../icedyn/bcoef.F
bigrid.o: ../phy/bigrid.F mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/bigrid.F
blkdat.o: ../phy/blkdat.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/blkdat.F
chksum.o: ../phy/chksum.F mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/chksum.F
chksummsk.o: ../phy/chksummsk.F mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/chksummsk.F
chkvar.o: ../phy/chkvar.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/chkvar.F
clndr.o: ../phy/clndr.F ../phy/common_blocks.h ../phy/common_clndr.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/clndr.F
cmnfld.o: ../phy/cmnfld.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/cmnfld.F
cmnfld_bfsqf.o: ../phy/cmnfld_bfsqf.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/cmnfld_bfsqf.F
cmnfld_nslope.o: ../phy/cmnfld_nslope.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/cmnfld_nslope.F
convec.o: ../phy/convec.F ../phy/common_blocks.h ../trc/param_trc.h ../trc/common_trc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/convec.F
crc.o: ../phy/crc.c ../phy/crc.h
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/crc.c
data_mct.o: ../cesm/data_mct.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../cesm/data_mct.F
diapfl.o: ../phy/diapfl.F ../phy/common_blocks.h ../trc/param_trc.h ../trc/common_trc.h ../phy/param_tke.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/diapfl.F
difest.o: ../phy/difest.F ../phy/common_blocks.h ../phy/common_seaice.h ../phy/common_forc.h ../phy/common_geo.h ../trc/param_trc.h ../trc/common_trc.h ../phy/param_tke.h ../phy/common_tke.h mod_xc.o mod_nctools.o mod_dia.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/difest.F
diffus.o: ../phy/diffus.F ../phy/common_blocks.h ../trc/param_trc.h ../trc/common_trc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/diffus.F
dimensions.o: ../phy/dimensions.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/dimensions.F
drift.o: ../icedyn/drift.F ../icedyn/param_icedyn.h ../icedyn/common_icedyn.h
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../icedyn	../icedyn/drift.F
eddtra.o: ../phy/eddtra.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/eddtra.F
eddtra_gm.o: ../phy/eddtra_gm.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/eddtra_gm.F
eddtra_intdif.o: ../phy/eddtra_intdif.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/eddtra_intdif.F
eosdat.o: ../phy/eosdat.F ../phy/common_eos.h
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/eosdat.F
eosfun.o: ../phy/eosfun.F ../phy/common_blocks.h ../phy/common_eos.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/eosfun.F
external_abort.o: ../drivers/nocoupler/external_abort.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../drivers/nocoupler/external_abort.F
fill_global.o: ../phy/fill_global.F mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/fill_global.F
frcdat.o: ../phy/frcdat.F ../phy/common_forc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/frcdat.F
fwbbal.o: ../phy/fwbbal.F ../phy/common_blocks.h ../phy/common_clndr.h ../phy/common_forc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/fwbbal.F
geoenv_cesmextra.o: ../cesm/geoenv_cesmextra.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../cesm/geoenv_cesmextra.F
geoenv_file.o: ../phy/geoenv_file.F ../phy/common_blocks.h ../phy/common_geo.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/geoenv_file.F
geoenv_test.o: ../phy/geoenv_test.F ../phy/common_blocks.h ../phy/common_geo.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/geoenv_test.F
getfrc.o: ../phy/getfrc.F ../phy/common_blocks.h mod_xc.o mod_ben02.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/getfrc.F
getfrc_cesm.o: ../cesm/getfrc_cesm.F ../phy/common_blocks.h ../phy/common_forc.h ../phy/common_seaice.h ../cesm/common_cesm.h ../phy/common_clndr.h mod_xc.o mod_nctools.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../cesm	../cesm/getfrc_cesm.F
getlpi.o: ../phy/getlpi.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/getlpi.F
gettime.o: ../phy/gettime.F ../phy/timing.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/gettime.F
hfharm.o: ../phy/hfharm.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/hfharm.F
iadvdf.o: ../icedyn/iadvdf.F ../phy/common_blocks.h ../phy/common_seaice.h mod_xc.o mod_thdysi.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../icedyn/iadvdf.F
icaux_ben02.o: ../ben02/icaux_ben02.F ../phy/common_blocks.h ../phy/common_forc.h ../phy/common_seaice.h mod_xc.o mod_ben02.o mod_thdysi.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../ben02/icaux_ben02.F
icaux_cesm.o: ../cesm/icaux_cesm.F ../phy/common_forc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../cesm/icaux_cesm.F
ice2mod.o: ../icedyn/ice2mod.F ../icedyn/param_icedyn.h ../icedyn/common_icedyn.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../icedyn	../icedyn/ice2mod.F
iceadv.o: ../icedyn/iceadv.F mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../icedyn/iceadv.F
icedif.o: ../icedyn/icedif.F mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../icedyn/icedif.F
icedyn.o: ../icedyn/icedyn.F ../phy/common_blocks.h ../phy/common_forc.h ../phy/common_seaice.h ../phy/common_clndr.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../icedyn/icedyn.F
ictsz_file.o: ../phy/ictsz_file.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/ictsz_file.F
idarlx.o: ../phy/idarlx.F ../phy/common_blocks.h ../phy/common_forc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/idarlx.F
idlage_init.o: ../idlage/idlage_init.F ../trc/param_trc.h ../trc/common_trc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../trc	../idlage/idlage_init.F
idlage_step.o: ../idlage/idlage_step.F ../phy/common_blocks.h ../trc/param_trc.h ../trc/common_trc.h ../phy/common_clndr.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../idlage/idlage_step.F
inicon.o: ../phy/inicon.F ../phy/common_blocks.h ../phy/common_forc.h ../phy/common_seaice.h mod_xc.o mod_swtfrz.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/inicon.F
iniconicedyn.o: ../icedyn/iniconicedyn.F ../icedyn/param_icedyn.h ../icedyn/common_icedyn.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../icedyn	../icedyn/iniconicedyn.F
inifrc.o: ../phy/inifrc.F ../phy/common_blocks.h mod_xc.o mod_ben02.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/inifrc.F
inifrc_cesm.o: ../cesm/inifrc_cesm.F ../phy/common_forc.h ../cesm/common_cesm.h mod_xc.o mod_ben02.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../cesm	../cesm/inifrc_cesm.F
inigeo.o: ../phy/inigeo.F ../phy/common_blocks.h ../phy/common_geo.h mod_xc.o mod_nctools.o mod_dia.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/inigeo.F
iniicedyn.o: ../icedyn/iniicedyn.F ../icedyn/param_icedyn.h ../icedyn/common_icedyn.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../icedyn	../icedyn/iniicedyn.F
iniphy.o: ../phy/iniphy.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/iniphy.F
initime.o: ../phy/initime.F ../phy/timing.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/initime.F
initke.o: ../phy/initke.F ../phy/common_blocks.h ../trc/param_trc.h ../trc/common_trc.h ../phy/param_tke.h ../phy/common_tke.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/initke.F
initrc.o: ../trc/initrc.F mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../trc/initrc.F
inivar.o: ../phy/inivar.F ../phy/common_blocks.h ../phy/common_forc.h ../phy/common_seaice.h ../trc/param_trc.h ../trc/common_trc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/inivar.F
intp1d.o: ../phy/intp1d.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/intp1d.F
intpmi.o: ../icedyn/intpmi.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../icedyn/intpmi.F
isinf.o: ../phy/isinf.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/isinf.F
isnan.o: ../phy/isnan.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/isnan.F
micom.o: ../drivers/nocoupler/micom.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../drivers/nocoupler/micom.F
micom_init.o: ../phy/micom_init.F ../phy/common_blocks.h ../phy/common_clndr.h ../phy/param_bud.h ../phy/common_bud.h mod_xc.o mod_swabs.o mod_dia.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/micom_init.F
micom_step.o: ../phy/micom_step.F ../phy/common_blocks.h ../phy/common_clndr.h ../phy/common_forc.h ../trc/param_trc.h ../trc/common_trc.h ../phy/param_bud.h ../phy/common_bud.h ../phy/timing.h mod_xc.o mod_swabs.o mod_dia.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/micom_step.F
mod2ice.o: ../icedyn/mod2ice.F ../icedyn/param_icedyn.h ../icedyn/common_icedyn.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../icedyn	../icedyn/mod2ice.F
mod_ben02.o: ../ben02/mod_ben02.F ../phy/common_blocks.h ../phy/common_geo.h ../phy/common_clndr.h ../phy/common_forc.h mod_xc.o mod_ben02func.o mod_bulktf.o mod_swtfrz.o mod_thdysi.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../ben02/mod_ben02.F
mod_ben02func.o: ../ben02/mod_ben02func.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../ben02/mod_ben02func.F
mod_bulktf.o: ../ben02/mod_bulktf.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../ben02/mod_bulktf.F
mod_dia.o: ../phy/mod_dia.F ../phy/common_clndr.h ../phy/common_blocks.h ../phy/common_forc.h ../phy/common_seaice.h ../trc/param_trc.h ../trc/common_trc.h mod_xc.o mod_nctools.o mod_thdysi.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/mod_dia.F
mod_nctools.o: ../phy/mod_nctools.F mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/mod_nctools.F
mod_swabs.o: ../phy/mod_swabs.F ../phy/common_blocks.h ../phy/common_forc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/mod_swabs.F
mod_swtfrz.o: ../drivers/nocoupler/mod_swtfrz.F ../phy/common_eos.h
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../drivers/nocoupler/mod_swtfrz.F
mod_thdysi.o: ../ben02/mod_thdysi.F mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../ben02/mod_thdysi.F
mod_xc.o: ../phy/mod_xc.F ../phy/mod_xc_mp.inc ../phy/mod_xc_sm.inc dimensions.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/mod_xc.F
momtum.o: ../phy/momtum.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/momtum.F
mxlayr.o: ../phy/mxlayr.F ../phy/common_blocks.h ../phy/common_eos.h ../trc/param_trc.h ../trc/common_trc.h ../phy/param_tke.h mod_xc.o mod_swabs.o mod_nctools.o mod_dia.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/mxlayr.F
ocntrc_init.o: ../trc/ocntrc_init.F ../trc/param_trc.h ../trc/common_trc.h ../phy/common_geo.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../trc -I../phy	../trc/ocntrc_init.F
pbtcor.o: ../phy/pbtcor.F ../phy/common_blocks.h ../trc/param_trc.h ../trc/common_trc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/pbtcor.F
penint.o: ../phy/penint.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/penint.F
pgforc.o: ../phy/pgforc.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/pgforc.F
plast.o: ../icedyn/plast.F ../icedyn/param_icedyn.h ../icedyn/common_icedyn.h
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../icedyn	../icedyn/plast.F
rdcsss.o: ../phy/rdcsss.F ../phy/common_blocks.h ../phy/common_forc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/rdcsss.F
rdlim.o: ../phy/rdlim.F ../phy/common_blocks.h ../phy/common_clndr.h ../phy/common_forc.h mod_xc.o mod_swabs.o mod_dia.o mod_ben02.o data_mct.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/rdlim.F
read_twedon.o: ../phy/read_twedon.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/read_twedon.F
relcon.o: ../icedyn/relcon.F ../icedyn/param_icedyn.h ../icedyn/common_icedyn.h
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../icedyn	../icedyn/relcon.F
remap_eitflx.o: ../phy/remap_eitflx.F ../trc/param_trc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../trc	../phy/remap_eitflx.F
remap_eitvel.o: ../phy/remap_eitvel.F ../trc/param_trc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../trc	../phy/remap_eitvel.F
restart_icerd.o: ../icedyn/restart_icerd.F ../icedyn/param_icedyn.h ../icedyn/common_icedyn.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../icedyn	../icedyn/restart_icerd.F
restart_icewt.o: ../icedyn/restart_icewt.F ../icedyn/param_icedyn.h ../icedyn/common_icedyn.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../icedyn	../icedyn/restart_icewt.F
restart_ocntrcrd.o: ../trc/restart_ocntrcrd.F ../phy/common_blocks.h ../phy/common_clndr.h ../trc/param_trc.h ../trc/common_trc.h mod_xc.o mod_dia.o mod_nctools.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../trc/restart_ocntrcrd.F
restart_ocntrcwt.o: ../trc/restart_ocntrcwt.F ../phy/common_blocks.h ../phy/common_clndr.h ../trc/param_trc.h ../trc/common_trc.h mod_xc.o mod_dia.o mod_nctools.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../trc/restart_ocntrcwt.F
restart_rd.o: ../phy/restart_rd.F ../phy/common_blocks.h ../phy/common_clndr.h ../phy/common_forc.h ../cesm/common_cesm.h ../phy/common_seaice.h ../trc/param_trc.h ../trc/common_trc.h ../phy/common_tke.h mod_xc.o mod_dia.o mod_ben02.o mod_thdysi.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../cesm -I../trc	../phy/restart_rd.F
restart_trcrd.o: ../trc/restart_trcrd.F mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../trc/restart_trcrd.F
restart_trcwt.o: ../trc/restart_trcwt.F mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../trc/restart_trcwt.F
restart_wt.o: ../phy/restart_wt.F ../phy/common_blocks.h ../phy/common_clndr.h ../phy/common_forc.h ../cesm/common_cesm.h ../phy/common_seaice.h ../trc/param_trc.h ../trc/common_trc.h ../phy/common_tke.h mod_xc.o mod_dia.o mod_ben02.o mod_thdysi.o        \
mod_nctools.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../cesm -I../trc	../phy/restart_wt.F
seaice.o: ../icedyn/seaice.F ../icedyn/param_icedyn.h ../icedyn/common_icedyn.h
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../icedyn	../icedyn/seaice.F
setlogunit.o: ../drivers/nocoupler/setlogunit.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../drivers/nocoupler/setlogunit.F
settemmin.o: ../phy/settemmin.F ../phy/common_blocks.h ../phy/common_eos.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/settemmin.F
sfcstr.o: ../phy/sfcstr.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/sfcstr.F
sfcstr_ben02.o: ../ben02/sfcstr_ben02.F ../phy/common_blocks.h ../phy/common_forc.h ../phy/common_seaice.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../ben02/sfcstr_ben02.F
sfcstr_cesm.o: ../cesm/sfcstr_cesm.F ../phy/common_blocks.h ../phy/common_forc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../cesm/sfcstr_cesm.F
stdbud.o: ../phy/stdbud.F ../phy/common_blocks.h ../phy/param_bud.h ../phy/common_bud.h ../trc/param_trc.h ../trc/common_trc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/stdbud.F
tavocf.o: ../icedyn/tavocf.F ../icedyn/param_icedyn.h ../icedyn/common_icedyn.h
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../icedyn	../icedyn/tavocf.F
thermf.o: ../phy/thermf.F ../phy/common_blocks.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/thermf.F
thermf_ben02.o: ../ben02/thermf_ben02.F ../phy/common_blocks.h ../phy/common_seaice.h ../phy/common_forc.h ../phy/common_geo.h ../phy/common_clndr.h ../trc/param_trc.h ../trc/common_trc.h ../phy/param_tke.h mod_xc.o mod_swtfrz.o mod_swabs.o mod_ben02.o   \
mod_thdysi.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../ben02/thermf_ben02.F
thermf_cesm.o: ../cesm/thermf_cesm.F ../phy/common_blocks.h ../phy/common_forc.h ../phy/common_geo.h ../phy/common_clndr.h ../trc/param_trc.h ../trc/common_trc.h ../phy/param_tke.h mod_xc.o mod_swtfrz.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../cesm/thermf_cesm.F
tmsmt1.o: ../phy/tmsmt1.F ../phy/common_blocks.h ../trc/param_trc.h ../trc/common_trc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/tmsmt1.F
tmsmt2.o: ../phy/tmsmt2.F ../phy/common_blocks.h ../trc/param_trc.h ../trc/common_trc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy -I../trc	../phy/tmsmt2.F
triint.o: ../phy/triint.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/triint.F
types.o: ../phy/types.F90
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SF90FLAGS) $(OTHERFLAGS) -c	../phy/types.F90
updtrc.o: ../trc/updtrc.F ../trc/param_trc.h ../trc/common_trc.h mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../trc	../trc/updtrc.F
wdiflx.o: ../phy/wdiflx.F ../phy/common_blocks.h ../phy/common_clndr.h ../phy/common_forc.h mod_xc.o mod_nctools.o mod_dia.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c -I../phy	../phy/wdiflx.F
weno3pd.o: ../icedyn/weno3pd.F mod_xc.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../icedyn/weno3pd.F
wtime.o: ../phy/wtime.F
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FFLAGS) $(SFFLAGS) $(OTHERFLAGS) -c	../phy/wtime.F
./hfharm.F: ../phy/hfharm.F
	cp ../phy/hfharm.F .
./intp1d.F: ../phy/intp1d.F
	cp ../phy/intp1d.F .
./cmnfld_nslope.F: ../phy/cmnfld_nslope.F
	cp ../phy/cmnfld_nslope.F .
./momtum.F: ../phy/momtum.F
	cp ../phy/momtum.F .
./getfrc.F: ../phy/getfrc.F
	cp ../phy/getfrc.F .
./thermf.F: ../phy/thermf.F
	cp ../phy/thermf.F .
./settemmin.F: ../phy/settemmin.F
	cp ../phy/settemmin.F .
./eddtra_intdif.F: ../phy/eddtra_intdif.F
	cp ../phy/eddtra_intdif.F .
./idlage_init.F: ../idlage/idlage_init.F
	cp ../idlage/idlage_init.F .
./bcoef.F: ../icedyn/bcoef.F
	cp ../icedyn/bcoef.F .
./micom_step.F: ../phy/micom_step.F
	cp ../phy/micom_step.F .
./chkvar.F: ../phy/chkvar.F
	cp ../phy/chkvar.F .
./idarlx.F: ../phy/idarlx.F
	cp ../phy/idarlx.F .
./plast.F: ../icedyn/plast.F
	cp ../icedyn/plast.F .
./iniicedyn.F: ../icedyn/iniicedyn.F
	cp ../icedyn/iniicedyn.F .
./geoenv_file.F: ../phy/geoenv_file.F
	cp ../phy/geoenv_file.F .
./geoenv_test.F: ../phy/geoenv_test.F
	cp ../phy/geoenv_test.F .
./initime.F: ../phy/initime.F
	cp ../phy/initime.F .
./blkdat.F: ../phy/blkdat.F
	cp ../phy/blkdat.F .
./cmnfld_bfsqf.F: ../phy/cmnfld_bfsqf.F
	cp ../phy/cmnfld_bfsqf.F .
./mod_dia.F: ../phy/mod_dia.F
	cp ../phy/mod_dia.F .
./tmsmt1.F: ../phy/tmsmt1.F
	cp ../phy/tmsmt1.F .
./common_bud.h: ../phy/common_bud.h
	cp ../phy/common_bud.h .
./mod_swabs.F: ../phy/mod_swabs.F
	cp ../phy/mod_swabs.F .
./crc.h: ../phy/crc.h
	cp ../phy/crc.h .
./fwbbal.F: ../phy/fwbbal.F
	cp ../phy/fwbbal.F .
./inifrc.F: ../phy/inifrc.F
	cp ../phy/inifrc.F .
./ictsz_file.F: ../phy/ictsz_file.F
	cp ../phy/ictsz_file.F .
./pbtcor.F: ../phy/pbtcor.F
	cp ../phy/pbtcor.F .
./isnan.F: ../phy/isnan.F
	cp ../phy/isnan.F .
./iniconicedyn.F: ../icedyn/iniconicedyn.F
	cp ../icedyn/iniconicedyn.F .
./micom.F: ../drivers/nocoupler/micom.F
	cp ../drivers/nocoupler/micom.F .
./advect.F: ../phy/advect.F
	cp ../phy/advect.F .
./timing.h: ../phy/timing.h
	cp ../phy/timing.h .
./restart_ocntrcwt.F: ../trc/restart_ocntrcwt.F
	cp ../trc/restart_ocntrcwt.F .
./icedif.F: ../icedyn/icedif.F
	cp ../icedyn/icedif.F .
./ocntrc_init.F: ../trc/ocntrc_init.F
	cp ../trc/ocntrc_init.F .
./updtrc.F: ../trc/updtrc.F
	cp ../trc/updtrc.F .
./setlogunit.F: ../drivers/nocoupler/setlogunit.F
	cp ../drivers/nocoupler/setlogunit.F .
./remap_eitvel.F: ../phy/remap_eitvel.F
	cp ../phy/remap_eitvel.F .
./param_bud.h: ../phy/param_bud.h
	cp ../phy/param_bud.h .
./mod2ice.F: ../icedyn/mod2ice.F
	cp ../icedyn/mod2ice.F .
./eddtra_gm.F: ../phy/eddtra_gm.F
	cp ../phy/eddtra_gm.F .
./getlpi.F: ../phy/getlpi.F
	cp ../phy/getlpi.F .
./penint.F: ../phy/penint.F
	cp ../phy/penint.F .
./bigrid.F: ../phy/bigrid.F
	cp ../phy/bigrid.F .
./dimensions.F: ../phy/dimensions.F
	cp ../phy/dimensions.F .
./inicon.F: ../phy/inicon.F
	cp ../phy/inicon.F .
./sfcstr_ben02.F: ../ben02/sfcstr_ben02.F
	cp ../ben02/sfcstr_ben02.F .
./restart_ocntrcrd.F: ../trc/restart_ocntrcrd.F
	cp ../trc/restart_ocntrcrd.F .
./rdcsss.F: ../phy/rdcsss.F
	cp ../phy/rdcsss.F .
./types.F90: ../phy/types.F90
	cp ../phy/types.F90 .
./common_icedyn.h: ../icedyn/common_icedyn.h
	cp ../icedyn/common_icedyn.h .
./remap_eitflx.F: ../phy/remap_eitflx.F
	cp ../phy/remap_eitflx.F .
./icedyn.F: ../icedyn/icedyn.F
	cp ../icedyn/icedyn.F .
./thermf_cesm.F: ../cesm/thermf_cesm.F
	cp ../cesm/thermf_cesm.F .
./common_tke.h: ../phy/common_tke.h
	cp ../phy/common_tke.h .
./common_forc.h: ../phy/common_forc.h
	cp ../phy/common_forc.h .
./crc.c: ../phy/crc.c
	cp ../phy/crc.c .
./inivar.F: ../phy/inivar.F
	cp ../phy/inivar.F .
./common_trc.h: ../trc/common_trc.h
	cp ../trc/common_trc.h .
./difest.F: ../phy/difest.F
	cp ../phy/difest.F .
./mod_xc_sm.inc: ../phy/mod_xc_sm.inc
	cp ../phy/mod_xc_sm.inc .
./gettime.F: ../phy/gettime.F
	cp ../phy/gettime.F .
./common_geo.h: ../phy/common_geo.h
	cp ../phy/common_geo.h .
./frcdat.F: ../phy/frcdat.F
	cp ../phy/frcdat.F .
./stdbud.F: ../phy/stdbud.F
	cp ../phy/stdbud.F .
./mod_thdysi.F: ../ben02/mod_thdysi.F
	cp ../ben02/mod_thdysi.F .
./inigeo.F: ../phy/inigeo.F
	cp ../phy/inigeo.F .
./data_mct.F: ../cesm/data_mct.F
	cp ../cesm/data_mct.F .
./restart_icewt.F: ../icedyn/restart_icewt.F
	cp ../icedyn/restart_icewt.F .
./common_seaice.h: ../phy/common_seaice.h
	cp ../phy/common_seaice.h .
./common_blocks.h: ../phy/common_blocks.h
	cp ../phy/common_blocks.h .
./diapfl.F: ../phy/diapfl.F
	cp ../phy/diapfl.F .
./initke.F: ../phy/initke.F
	cp ../phy/initke.F .
./idlage_step.F: ../idlage/idlage_step.F
	cp ../idlage/idlage_step.F .
./eddtra.F: ../phy/eddtra.F
	cp ../phy/eddtra.F .
./triint.F: ../phy/triint.F
	cp ../phy/triint.F .
./fill_global.F: ../phy/fill_global.F
	cp ../phy/fill_global.F .
./chksum.F: ../phy/chksum.F
	cp ../phy/chksum.F .
./mod_swtfrz.F: ../drivers/nocoupler/mod_swtfrz.F
	cp ../drivers/nocoupler/mod_swtfrz.F .
./wdiflx.F: ../phy/wdiflx.F
	cp ../phy/wdiflx.F .
./diffus.F: ../phy/diffus.F
	cp ../phy/diffus.F .
./mod_xc.F: ../phy/mod_xc.F
	cp ../phy/mod_xc.F .
./mod_xc_mp.inc: ../phy/mod_xc_mp.inc
	cp ../phy/mod_xc_mp.inc .
./sfcstr.F: ../phy/sfcstr.F
	cp ../phy/sfcstr.F .
./restart_rd.F: ../phy/restart_rd.F
	cp ../phy/restart_rd.F .
./iadvdf.F: ../icedyn/iadvdf.F
	cp ../icedyn/iadvdf.F .
./convec.F: ../phy/convec.F
	cp ../phy/convec.F .
./common_eos.h: ../phy/common_eos.h
	cp ../phy/common_eos.h .
./eosfun.F: ../phy/eosfun.F
	cp ../phy/eosfun.F .
./restart_trcrd.F: ../trc/restart_trcrd.F
	cp ../trc/restart_trcrd.F .
./mod_ben02func.F: ../ben02/mod_ben02func.F
	cp ../ben02/mod_ben02func.F .
./eosdat.F: ../phy/eosdat.F
	cp ../phy/eosdat.F .
./barotp.F: ../phy/barotp.F
	cp ../phy/barotp.F .
./wtime.F: ../phy/wtime.F
	cp ../phy/wtime.F .
./iniphy.F: ../phy/iniphy.F
	cp ../phy/iniphy.F .
./icaux_cesm.F: ../cesm/icaux_cesm.F
	cp ../cesm/icaux_cesm.F .
./inifrc_cesm.F: ../cesm/inifrc_cesm.F
	cp ../cesm/inifrc_cesm.F .
./getfrc_cesm.F: ../cesm/getfrc_cesm.F
	cp ../cesm/getfrc_cesm.F .
./rdlim.F: ../phy/rdlim.F
	cp ../phy/rdlim.F .
./weno3pd.F: ../icedyn/weno3pd.F
	cp ../icedyn/weno3pd.F .
./isinf.F: ../phy/isinf.F
	cp ../phy/isinf.F .
./param_trc.h: ../trc/param_trc.h
	cp ../trc/param_trc.h .
./intpmi.F: ../icedyn/intpmi.F
	cp ../icedyn/intpmi.F .
./initrc.F: ../trc/initrc.F
	cp ../trc/initrc.F .
./read_twedon.F: ../phy/read_twedon.F
	cp ../phy/read_twedon.F .
./sfcstr_cesm.F: ../cesm/sfcstr_cesm.F
	cp ../cesm/sfcstr_cesm.F .
./micom_init.F: ../phy/micom_init.F
	cp ../phy/micom_init.F .
./mxlayr.F: ../phy/mxlayr.F
	cp ../phy/mxlayr.F .
./restart_wt.F: ../phy/restart_wt.F
	cp ../phy/restart_wt.F .
./param_icedyn.h: ../icedyn/param_icedyn.h
	cp ../icedyn/param_icedyn.h .
./tavocf.F: ../icedyn/tavocf.F
	cp ../icedyn/tavocf.F .
./pgforc.F: ../phy/pgforc.F
	cp ../phy/pgforc.F .
./restart_icerd.F: ../icedyn/restart_icerd.F
	cp ../icedyn/restart_icerd.F .
./cmnfld.F: ../phy/cmnfld.F
	cp ../phy/cmnfld.F .
./restart_trcwt.F: ../trc/restart_trcwt.F
	cp ../trc/restart_trcwt.F .
./common_clndr.h: ../phy/common_clndr.h
	cp ../phy/common_clndr.h .
./iceadv.F: ../icedyn/iceadv.F
	cp ../icedyn/iceadv.F .
./mod_ben02.F: ../ben02/mod_ben02.F
	cp ../ben02/mod_ben02.F .
./drift.F: ../icedyn/drift.F
	cp ../icedyn/drift.F .
./mod_bulktf.F: ../ben02/mod_bulktf.F
	cp ../ben02/mod_bulktf.F .
./mod_nctools.F: ../phy/mod_nctools.F
	cp ../phy/mod_nctools.F .
./icaux_ben02.F: ../ben02/icaux_ben02.F
	cp ../ben02/icaux_ben02.F .
./external_abort.F: ../drivers/nocoupler/external_abort.F
	cp ../drivers/nocoupler/external_abort.F .
./seaice.F: ../icedyn/seaice.F
	cp ../icedyn/seaice.F .
./thermf_ben02.F: ../ben02/thermf_ben02.F
	cp ../ben02/thermf_ben02.F .
./tmsmt2.F: ../phy/tmsmt2.F
	cp ../phy/tmsmt2.F .
./geoenv_cesmextra.F: ../cesm/geoenv_cesmextra.F
	cp ../cesm/geoenv_cesmextra.F .
./chksummsk.F: ../phy/chksummsk.F
	cp ../phy/chksummsk.F .
./common_cesm.h: ../cesm/common_cesm.h
	cp ../cesm/common_cesm.h .
./ice2mod.F: ../icedyn/ice2mod.F
	cp ../icedyn/ice2mod.F .
./clndr.F: ../phy/clndr.F
	cp ../phy/clndr.F .
./relcon.F: ../icedyn/relcon.F
	cp ../icedyn/relcon.F .
./param_tke.h: ../phy/param_tke.h
	cp ../phy/param_tke.h .
SRC = ../phy/mxlayr.F ../phy/diffus.F ../ben02/icaux_ben02.F ../phy/chksummsk.F ../phy/types.F90 ../phy/eddtra_intdif.F ../phy/inivar.F ../drivers/nocoupler/setlogunit.F ../trc/updtrc.F ../phy/restart_rd.F ../phy/settemmin.F ../phy/gettime.F              \
../phy/mod_xc.F ../phy/cmnfld.F ../icedyn/relcon.F ../icedyn/mod2ice.F ../phy/mod_swabs.F ../phy/blkdat.F ../trc/restart_trcwt.F ../drivers/nocoupler/micom.F ../phy/geoenv_file.F ../phy/rdlim.F ../idlage/idlage_init.F ../phy/getfrc.F ../phy/bigrid.F      \
../phy/isnan.F ../phy/pbtcor.F ../trc/restart_ocntrcwt.F ../icedyn/intpmi.F ../drivers/nocoupler/external_abort.F ../phy/chksum.F ../icedyn/weno3pd.F ../ben02/thermf_ben02.F ../ben02/mod_ben02.F ../phy/fill_global.F ../phy/wdiflx.F ../icedyn/iniicedyn.F  \
../trc/restart_trcrd.F ../phy/inigeo.F ../phy/advect.F ../idlage/idlage_step.F ../phy/thermf.F ../phy/idarlx.F ../phy/initime.F ../trc/initrc.F ../phy/remap_eitflx.F ../phy/convec.F ../drivers/nocoupler/mod_swtfrz.F ../phy/frcdat.F ../phy/barotp.F        \
../phy/inifrc.F ../phy/wtime.F ../phy/getlpi.F ../icedyn/restart_icerd.F ../phy/cmnfld_bfsqf.F ../cesm/sfcstr_cesm.F ../phy/tmsmt2.F ../cesm/inifrc_cesm.F ../phy/mod_nctools.F ../phy/crc.c ../phy/micom_init.F ../icedyn/icedyn.F ../phy/stdbud.F            \
../phy/dimensions.F ../trc/restart_ocntrcrd.F ../phy/ictsz_file.F ../icedyn/plast.F ../phy/remap_eitvel.F ../ben02/mod_thdysi.F ../phy/restart_wt.F ../phy/eddtra_gm.F ../phy/cmnfld_nslope.F ../phy/iniphy.F ../phy/tmsmt1.F ../icedyn/restart_icewt.F        \
../icedyn/tavocf.F ../phy/pgforc.F ../phy/mod_dia.F ../phy/rdcsss.F ../phy/chkvar.F ../ben02/mod_bulktf.F ../trc/ocntrc_init.F ../phy/diapfl.F ../icedyn/seaice.F ../cesm/getfrc_cesm.F ../phy/geoenv_test.F ../icedyn/bcoef.F ../phy/clndr.F                  \
../icedyn/ice2mod.F ../cesm/geoenv_cesmextra.F ../phy/difest.F ../ben02/sfcstr_ben02.F ../phy/inicon.F ../cesm/data_mct.F ../phy/eosfun.F ../icedyn/icedif.F ../cesm/thermf_cesm.F ../phy/hfharm.F ../icedyn/iniconicedyn.F ../ben02/mod_ben02func.F           \
../phy/intp1d.F ../phy/penint.F ../phy/momtum.F ../cesm/icaux_cesm.F ../phy/eosdat.F ../icedyn/drift.F ../phy/read_twedon.F ../phy/micom_step.F ../phy/initke.F ../phy/sfcstr.F ../phy/triint.F ../icedyn/iceadv.F ../icedyn/iadvdf.F ../phy/eddtra.F          \
../phy/isinf.F ../phy/fwbbal.F ../phy/common_seaice.h ../phy/timing.h ../phy/common_blocks.h ../phy/mod_xc_mp.inc ../trc/param_trc.h ../phy/common_eos.h ../icedyn/common_icedyn.h ../phy/common_tke.h ../phy/common_forc.h ../phy/common_bud.h                \
../trc/common_trc.h ../icedyn/param_icedyn.h ../phy/param_bud.h ../phy/crc.h ../phy/mod_xc_sm.inc ../cesm/common_cesm.h ../phy/common_geo.h ../phy/param_tke.h ../phy/common_clndr.h
OBJ = mxlayr.o diffus.o icaux_ben02.o chksummsk.o types.o eddtra_intdif.o inivar.o setlogunit.o updtrc.o restart_rd.o settemmin.o gettime.o mod_xc.o cmnfld.o relcon.o mod2ice.o mod_swabs.o blkdat.o restart_trcwt.o micom.o geoenv_file.o rdlim.o            \
idlage_init.o getfrc.o bigrid.o isnan.o pbtcor.o restart_ocntrcwt.o intpmi.o external_abort.o chksum.o weno3pd.o thermf_ben02.o mod_ben02.o fill_global.o wdiflx.o iniicedyn.o restart_trcrd.o inigeo.o advect.o idlage_step.o thermf.o idarlx.o initime.o     \
initrc.o remap_eitflx.o convec.o mod_swtfrz.o frcdat.o barotp.o inifrc.o wtime.o getlpi.o restart_icerd.o cmnfld_bfsqf.o sfcstr_cesm.o tmsmt2.o inifrc_cesm.o mod_nctools.o crc.o micom_init.o icedyn.o stdbud.o dimensions.o restart_ocntrcrd.o ictsz_file.o  \
plast.o remap_eitvel.o mod_thdysi.o restart_wt.o eddtra_gm.o cmnfld_nslope.o iniphy.o tmsmt1.o restart_icewt.o tavocf.o pgforc.o mod_dia.o rdcsss.o chkvar.o mod_bulktf.o ocntrc_init.o diapfl.o seaice.o getfrc_cesm.o geoenv_test.o bcoef.o clndr.o          \
ice2mod.o geoenv_cesmextra.o difest.o sfcstr_ben02.o inicon.o data_mct.o eosfun.o icedif.o thermf_cesm.o hfharm.o iniconicedyn.o mod_ben02func.o intp1d.o penint.o momtum.o icaux_cesm.o eosdat.o drift.o read_twedon.o micom_step.o initke.o sfcstr.o         \
triint.o iceadv.o iadvdf.o eddtra.o isinf.o fwbbal.o
OFF = ../phy/hfharm.F ../phy/intp1d.F ../phy/cmnfld_nslope.F ../phy/momtum.F ../phy/getfrc.F ../phy/thermf.F ../phy/settemmin.F ../phy/eddtra_intdif.F ../idlage/idlage_init.F ../icedyn/bcoef.F ../phy/micom_step.F ../phy/chkvar.F ../phy/idarlx.F           \
../icedyn/plast.F ../icedyn/iniicedyn.F ../phy/geoenv_file.F ../phy/geoenv_test.F ../phy/initime.F ../phy/blkdat.F ../phy/cmnfld_bfsqf.F ../phy/mod_dia.F ../phy/tmsmt1.F ../phy/common_bud.h ../phy/mod_swabs.F ../phy/crc.h ../phy/fwbbal.F ../phy/inifrc.F  \
../phy/ictsz_file.F ../phy/pbtcor.F ../phy/isnan.F ../icedyn/iniconicedyn.F ../drivers/nocoupler/micom.F ../phy/advect.F ../phy/timing.h ../trc/restart_ocntrcwt.F ../icedyn/icedif.F ../trc/ocntrc_init.F ../trc/updtrc.F ../drivers/nocoupler/setlogunit.F   \
../phy/remap_eitvel.F ../phy/param_bud.h ../icedyn/mod2ice.F ../phy/eddtra_gm.F ../phy/getlpi.F ../phy/penint.F ../phy/bigrid.F ../phy/dimensions.F ../phy/inicon.F ../ben02/sfcstr_ben02.F ../trc/restart_ocntrcrd.F ../phy/rdcsss.F ../phy/types.F90         \
../icedyn/common_icedyn.h ../phy/remap_eitflx.F ../icedyn/icedyn.F ../cesm/thermf_cesm.F ../phy/common_tke.h ../phy/common_forc.h ../phy/crc.c ../phy/inivar.F ../trc/common_trc.h ../phy/difest.F ../phy/mod_xc_sm.inc ../phy/gettime.F ../phy/common_geo.h   \
../phy/frcdat.F ../phy/stdbud.F ../ben02/mod_thdysi.F ../phy/inigeo.F ../cesm/data_mct.F ../icedyn/restart_icewt.F ../phy/common_seaice.h ../phy/common_blocks.h ../phy/diapfl.F ../phy/initke.F ../idlage/idlage_step.F ../phy/eddtra.F ../phy/triint.F       \
../phy/fill_global.F ../phy/chksum.F ../drivers/nocoupler/mod_swtfrz.F ../phy/wdiflx.F ../phy/diffus.F ../phy/mod_xc.F ../phy/mod_xc_mp.inc ../phy/sfcstr.F ../phy/restart_rd.F ../icedyn/iadvdf.F ../phy/convec.F ../phy/common_eos.h ../phy/eosfun.F         \
../trc/restart_trcrd.F ../ben02/mod_ben02func.F ../phy/eosdat.F ../phy/barotp.F ../phy/wtime.F ../phy/iniphy.F ../cesm/icaux_cesm.F ../cesm/inifrc_cesm.F ../cesm/getfrc_cesm.F ../phy/rdlim.F ../icedyn/weno3pd.F ../phy/isinf.F ../trc/param_trc.h           \
../icedyn/intpmi.F ../trc/initrc.F ../phy/read_twedon.F ../cesm/sfcstr_cesm.F ../phy/micom_init.F ../phy/mxlayr.F ../phy/restart_wt.F ../icedyn/param_icedyn.h ../icedyn/tavocf.F ../phy/pgforc.F ../icedyn/restart_icerd.F ../phy/cmnfld.F                    \
../trc/restart_trcwt.F ../phy/common_clndr.h ../icedyn/iceadv.F ../ben02/mod_ben02.F ../icedyn/drift.F ../ben02/mod_bulktf.F ../phy/mod_nctools.F ../ben02/icaux_ben02.F ../drivers/nocoupler/external_abort.F ../icedyn/seaice.F ../ben02/thermf_ben02.F      \
../phy/tmsmt2.F ../cesm/geoenv_cesmextra.F ../phy/chksummsk.F ../cesm/common_cesm.h ../icedyn/ice2mod.F ../phy/clndr.F ../icedyn/relcon.F ../phy/param_tke.h
clean: neat
	-rm -f .cppdefs $(OBJ) micom
neat:
	-rm -f $(TMPFILES)
localize: $(OFF)
	cp $(OFF) .
TAGS: $(SRC)
	etags $(SRC)
tags: $(SRC)
	ctags $(SRC)
micom: $(OBJ) 
	$(LD) $(OBJ) -o micom  $(LDFLAGS)
