      subroutine rdlim
c
c --- ------------------------------------------------------------------
c --- Read limits file
c --- ------------------------------------------------------------------
c
      use mod_xc
      use mod_swabs, only: swamth, jwtype, chlopt
      use mod_dia
      use mod_ben02, only: atm_path, atm_path_len
      use data_mct, only: runid_mct, ocn_cpl_dt_mct
c
      implicit none
c
#include "common_blocks.h"
#include "common_clndr.h"
#include "common_forc.h"
c
      integer :: i,j,m,n,nd0rst,nm0rst,ny0rst
      character*256 :: runtyp,rstfnm
      logical :: fexist
      integer :: idate,idate0,nstep_in_cpl
      namelist /limits/ nday1,nday2,idate,idate0,runid,expcnf,runtyp,
     .  icfile,baclin,batrop,mdv2hi,mdv2lo,mdv4hi,mdv4lo,mdc2hi,mdc2lo,
     .  vsc2hi,vsc2lo,vsc4hi,vsc4lo,cbar,cb,cwbdts,cwbdls,mommth,eitmth,
     .  edritp,bmcmth,rmpmth,edwmth,mlrttp,edsprs,egc,eggam,eglsmn,
     .  egmndf,egmxdf,egidfq,ri0,rm0,rm5,ce,bdmtyp,bdmc1,bdmc2,tkepf,
     .  niwgf,niwbf,niwlf,swamth,jwtype,chlopt,trxday,srxday,trxdpt,
     .  srxdpt,trxlim,srxlim,aptflx,apsflx,ditflx,disflx,srxbal,srxsrc,
     .  smtfrc,sprfac,path,atm_path,rstfrq,rstfmt,rstcmp,iotype
c
c --- read namelists
      if (mnproc.eq.1) then
c
        GLB_AVEPERIO=-999
        inquire(file='ocn_in',exist=fexist)
        if (fexist) then
          open (unit=nfu,file='ocn_in',status='old',action='read',
     .          recl=80)
        else
          inquire(file='limits',exist=fexist)
          if (fexist) then
            open (unit=nfu,file='limits',status='old',action='read',
     .            recl=80)
          else
            write (lp,*) 'rdlim: could not find namelist file!'
            call xchalt('(rdlim)')
                   stop '(rdlim)'
          endif
        endif
        read (unit=nfu,nml=LIMITS)
        read (unit=nfu,nml=DIAPHY)
        close (unit=nfu)
c
c --- - print namelist on stdout 
        write (lp,*)
        write (lp,*) 'rdlim: MICOM LIMITS NAMELIST GROUP:' 
        write (lp,*) 'NDAY1',NDAY1
        write (lp,*) 'NDAY2',NDAY2
        write (lp,*) 'IDATE',IDATE
        write (lp,*) 'IDATE0',IDATE0
        write (lp,*) 'RUNID ',trim(RUNID)
        write (lp,*) 'EXPCNF ',trim(EXPCNF)
        write (lp,*) 'RUNTYP ',trim(RUNTYP)
        write (lp,*) 'ICFILE ',trim(ICFILE)
        write (lp,*) 'BACLIN',BACLIN
        write (lp,*) 'BATROP',BATROP
        write (lp,*) 'MDV2HI',MDV2HI
        write (lp,*) 'MDV2LO',MDV2LO
        write (lp,*) 'MDV4HI',MDV4HI
        write (lp,*) 'MDV4LO',MDV4LO
        write (lp,*) 'MDC2HI',MDC2HI
        write (lp,*) 'MDC2LO',MDC2LO
        write (lp,*) 'VSC2HI',VSC2HI
        write (lp,*) 'VSC2LO',VSC2LO
        write (lp,*) 'VSC4HI',VSC4HI
        write (lp,*) 'VSC4LO',VSC4LO
        write (lp,*) 'CBAR',CBAR
        write (lp,*) 'CB',CB
        write (lp,*) 'CWBDTS',CWBDTS
        write (lp,*) 'CWBDLS',CWBDLS
        write (lp,*) 'MOMMTH ',trim(MOMMTH)
        write (lp,*) 'EITMTH ',trim(EITMTH)
        write (lp,*) 'EDRITP ',trim(EDRITP)
        write (lp,*) 'BMCMTH ',trim(BMCMTH)
        write (lp,*) 'RMPMTH ',trim(RMPMTH)
        write (lp,*) 'EDWMTH ',trim(EDWMTH)
        write (lp,*) 'EDSPRS ',EDSPRS
        write (lp,*) 'EGC',EGC
        write (lp,*) 'EGGAM',EGGAM
        write (lp,*) 'EGLSMN',EGLSMN
        write (lp,*) 'EGMNDF',EGMNDF
        write (lp,*) 'EGMXDF',EGMXDF
        write (lp,*) 'EGIDFQ',EGIDFQ
        write (lp,*) 'RI0',RI0
        write (lp,*) 'RM0',RM0
        write (lp,*) 'RM5',RM5
        write (lp,*) 'CE',CE
        write (lp,*) 'BDMTYP',BDMTYP
        write (lp,*) 'BDMC1',BDMC1
        write (lp,*) 'BDMC2',BDMC2
        write (lp,*) 'TKEPF',TKEPF
        write (lp,*) 'NIWGF',NIWGF
        write (lp,*) 'NIWBF',NIWBF
        write (lp,*) 'NIWLF',NIWLF
        write (lp,*) 'SWAMTH ',trim(SWAMTH)
        write (lp,*) 'JWTYPE',JWTYPE
        write (lp,*) 'CHLOPT ',trim(CHLOPT)
        write (lp,*) 'TRXDAY',TRXDAY
        write (lp,*) 'SRXDAY',SRXDAY
        write (lp,*) 'TRXDPT',TRXDPT
        write (lp,*) 'SRXDPT',SRXDPT
        write (lp,*) 'TRXLIM',TRXLIM
        write (lp,*) 'SRXLIM',SRXLIM
        write (lp,*) 'APTFLX',APTFLX
        write (lp,*) 'APSFLX',APSFLX
        write (lp,*) 'DITFLX',DITFLX
        write (lp,*) 'DISFLX',DISFLX
        write (lp,*) 'SRXBAL',SRXBAL
        write (lp,*) 'SRXSRC ',trim(SRXSRC)
        write (lp,*) 'SMTFRC',SMTFRC
        write (lp,*) 'SPRFAC',SPRFAC
        write (lp,*) 'PATH ',trim(PATH)
        write (lp,*) 'ATM_PATH ',trim(ATM_PATH)
        write (lp,*) 'RSTFRQ',RSTFRQ
        write (lp,*) 'RSTFMT',RSTFMT
        write (lp,*) 'RSTCMP',RSTCMP
        write (lp,*) 'IOTYPE',IOTYPE
c
c --- - determine number of io groups and print namelist
        nphy=0  
        do n=1,nphymax 
          if (GLB_AVEPERIO(n).ne.-999) nphy=nphy+1 
        end do     
        if (trxday.eq.0.) then
          SRF_SURRLX(1:nphy)=0
        endif
        if (srxday.eq.0.) then
          SRF_SALRLX(1:nphy)=0
        endif
        write (lp,*)
        write (lp,*) 'rdlim: MICOM DIAPHY NAMELIST GROUP:' 
        write (lp,*) 'GLB_FNAMETAG',GLB_FNAMETAG(1:nphy)
        write (lp,*) 'GLB_AVEPERIO',GLB_AVEPERIO(1:nphy)
        write (lp,*) 'GLB_FILEFREQ',GLB_FILEFREQ(1:nphy)
        write (lp,*) 'GLB_COMPFLAG',GLB_COMPFLAG(1:nphy)
        write (lp,*) 'GLB_NCFORMAT',GLB_NCFORMAT(1:nphy)
        write (lp,*) 'SRF_ABSWND  ',SRF_ABSWND(1:nphy)
        write (lp,*) 'SRF_ALB     ',SRF_ALB(1:nphy)
        write (lp,*) 'SRF_BRNFLX  ',SRF_BRNFLX(1:nphy)
        write (lp,*) 'SRF_BRNPD   ',SRF_BRNPD(1:nphy)
        write (lp,*) 'SRF_DFL     ',SRF_DFL(1:nphy)
        write (lp,*) 'SRF_EVA     ',SRF_EVA(1:nphy)
        write (lp,*) 'SRF_FMLTFZ  ',SRF_FMLTFZ(1:nphy)
        write (lp,*) 'SRF_FICE    ',SRF_FICE(1:nphy)
        write (lp,*) 'SRF_HICE    ',SRF_HICE(1:nphy)
        write (lp,*) 'SRF_HMLTFZ  ',SRF_HMLTFZ(1:nphy)
        write (lp,*) 'SRF_HSNW    ',SRF_HSNW(1:nphy)
        write (lp,*) 'SRF_IAGE    ',SRF_IAGE(1:nphy)
        write (lp,*) 'SRF_IDKEDT  ',SRF_IDKEDT(1:nphy)
        write (lp,*) 'SRF_LIP     ',SRF_LIP(1:nphy)
        write (lp,*) 'SRF_MAXMLD  ',SRF_MAXMLD(1:nphy)
        write (lp,*) 'SRF_MLD     ',SRF_MLD(1:nphy)
        write (lp,*) 'SRF_MLDU    ',SRF_MLDU(1:nphy)
        write (lp,*) 'SRF_MLDV    ',SRF_MLDV(1:nphy)
        write (lp,*) 'SRF_MTKEUS  ',SRF_MTKEUS(1:nphy)
        write (lp,*) 'SRF_MTKENI  ',SRF_MTKENI(1:nphy)
        write (lp,*) 'SRF_MTKEBF  ',SRF_MTKEBF(1:nphy)
        write (lp,*) 'SRF_MTKERS  ',SRF_MTKERS(1:nphy)
        write (lp,*) 'SRF_MTKEPE  ',SRF_MTKEPE(1:nphy)
        write (lp,*) 'SRF_MTKEKE  ',SRF_MTKEKE(1:nphy)
        write (lp,*) 'SRF_MTY     ',SRF_MTY(1:nphy)
        write (lp,*) 'SRF_MXLU    ',SRF_MXLU(1:nphy)
        write (lp,*) 'SRF_MXLV    ',SRF_MXLV(1:nphy)
        write (lp,*) 'SRF_NSF     ',SRF_NSF(1:nphy)
        write (lp,*) 'SRF_RFIFLX  ',SRF_RFIFLX(1:nphy)
        write (lp,*) 'SRF_RNFFLX  ',SRF_RNFFLX(1:nphy)
        write (lp,*) 'SRF_SALFLX  ',SRF_SALFLX(1:nphy)
        write (lp,*) 'SRF_SALRLX  ',SRF_SALRLX(1:nphy)
        write (lp,*) 'SRF_SEALV   ',SRF_SEALV(1:nphy)
        write (lp,*) 'SRF_SFL     ',SRF_SFL(1:nphy)
        write (lp,*) 'SRF_SIGMX   ',SRF_SIGMX(1:nphy)
        write (lp,*) 'SRF_SOP     ',SRF_SOP(1:nphy)
        write (lp,*) 'SRF_SSS     ',SRF_SSS(1:nphy)
        write (lp,*) 'SRF_SST     ',SRF_SST(1:nphy)
        write (lp,*) 'SRF_SURFLX  ',SRF_SURFLX(1:nphy)
        write (lp,*) 'SRF_SURRLX  ',SRF_SURRLX(1:nphy)
        write (lp,*) 'SRF_SWA     ',SRF_SWA(1:nphy)
        write (lp,*) 'SRF_TAUX    ',SRF_TAUX(1:nphy)
        write (lp,*) 'SRF_TAUY    ',SRF_TAUY(1:nphy)
        write (lp,*) 'SRF_TICE    ',SRF_TICE(1:nphy)
        write (lp,*) 'SRF_TSRF    ',SRF_TSRF(1:nphy)
        write (lp,*) 'SRF_UB      ',SRF_UB(1:nphy)
        write (lp,*) 'SRF_UICE    ',SRF_UICE(1:nphy)
        write (lp,*) 'SRF_USTAR   ',SRF_USTAR(1:nphy)
        write (lp,*) 'SRF_USTAR3  ',SRF_USTAR3(1:nphy)
        write (lp,*) 'SRF_VB      ',SRF_VB(1:nphy)
        write (lp,*) 'SRF_VICE    ',SRF_VICE(1:nphy)
        write (lp,*) 'SRF_ZTX     ',SRF_ZTX(1:nphy)
        write (lp,*) 'LYR_DIAFLX  ',LYR_DIAFLX(1:nphy)
        write (lp,*) 'LYR_DIFDIA  ',LYR_DIFDIA(1:nphy)
        write (lp,*) 'LYR_DIFINT  ',LYR_DIFINT(1:nphy)
        write (lp,*) 'LYR_DIFISO  ',LYR_DIFISO(1:nphy)
        write (lp,*) 'LYR_DP      ',LYR_DP(1:nphy)
        write (lp,*) 'LYR_DZ      ',LYR_DZ(1:nphy)
        write (lp,*) 'LYR_SALN    ',LYR_SALN(1:nphy)
        write (lp,*) 'LYR_TEMP    ',LYR_TEMP(1:nphy)
        write (lp,*) 'LYR_TRC     ',LYR_TRC(1:nphy)
        write (lp,*) 'LYR_UFLX    ',LYR_UFLX(1:nphy)
        write (lp,*) 'LYR_UTFLX   ',LYR_UTFLX(1:nphy)
        write (lp,*) 'LYR_USFLX   ',LYR_USFLX(1:nphy)
        write (lp,*) 'LYR_UMFLTD  ',LYR_UMFLTD(1:nphy)
        write (lp,*) 'LYR_UTFLTD  ',LYR_UTFLTD(1:nphy)
        write (lp,*) 'LYR_UTFLLD  ',LYR_UTFLLD(1:nphy)
        write (lp,*) 'LYR_USFLTD  ',LYR_USFLTD(1:nphy)
        write (lp,*) 'LYR_USFLLD  ',LYR_USFLLD(1:nphy)
        write (lp,*) 'LYR_UVEL    ',LYR_UVEL(1:nphy)
        write (lp,*) 'LYR_VFLX    ',LYR_VFLX(1:nphy)
        write (lp,*) 'LYR_VTFLX   ',LYR_VTFLX(1:nphy)
        write (lp,*) 'LYR_VSFLX   ',LYR_VSFLX(1:nphy)
        write (lp,*) 'LYR_VMFLTD  ',LYR_VMFLTD(1:nphy)
        write (lp,*) 'LYR_VTFLTD  ',LYR_VTFLTD(1:nphy)
        write (lp,*) 'LYR_VTFLLD  ',LYR_VTFLLD(1:nphy)
        write (lp,*) 'LYR_VSFLTD  ',LYR_VSFLTD(1:nphy)
        write (lp,*) 'LYR_VSFLLD  ',LYR_VSFLLD(1:nphy)
        write (lp,*) 'LYR_VVEL    ',LYR_VVEL(1:nphy)
        write (lp,*) 'LYR_WFLX    ',LYR_WFLX(1:nphy)
        write (lp,*) 'LYR_WFLX2   ',LYR_WFLX2(1:nphy)
        write (lp,*) 'LYR_PV      ',LYR_PV(1:nphy)
        write (lp,*) 'LYR_TKE     ',LYR_TKE(1:nphy)
        write (lp,*) 'LYR_GLS_PSI ',LYR_GLS_PSI(1:nphy)
        write (lp,*) 'LYR_IDLAGE  ',LYR_IDLAGE(1:nphy)
        write (lp,*) 'LVL_SALN    ',LVL_SALN(1:nphy)
        write (lp,*) 'LVL_TEMP    ',LVL_TEMP(1:nphy)
        write (lp,*) 'LVL_TRC     ',LVL_TRC(1:nphy)
        write (lp,*) 'LVL_UFLX    ',LVL_UFLX(1:nphy)
        write (lp,*) 'LVL_UTFLX   ',LVL_UTFLX(1:nphy)
        write (lp,*) 'LVL_USFLX   ',LVL_USFLX(1:nphy)
        write (lp,*) 'LVL_UMFLTD  ',LVL_UMFLTD(1:nphy)
        write (lp,*) 'LVL_UTFLTD  ',LVL_UTFLTD(1:nphy)
        write (lp,*) 'LVL_UTFLLD  ',LVL_UTFLLD(1:nphy)
        write (lp,*) 'LVL_USFLTD  ',LVL_USFLTD(1:nphy)
        write (lp,*) 'LVL_USFLLD  ',LVL_USFLLD(1:nphy)
        write (lp,*) 'LVL_UVEL    ',LVL_UVEL(1:nphy)
        write (lp,*) 'LVL_VFLX    ',LVL_VFLX(1:nphy)
        write (lp,*) 'LVL_VTFLX   ',LVL_VTFLX(1:nphy)
        write (lp,*) 'LVL_VSFLX   ',LVL_VSFLX(1:nphy)
        write (lp,*) 'LVL_VMFLTD  ',LVL_VMFLTD(1:nphy)
        write (lp,*) 'LVL_VTFLTD  ',LVL_VTFLTD(1:nphy)
        write (lp,*) 'LVL_VTFLLD  ',LVL_VTFLLD(1:nphy)
        write (lp,*) 'LVL_VSFLTD  ',LVL_VSFLTD(1:nphy)
        write (lp,*) 'LVL_VSFLLD  ',LVL_VSFLLD(1:nphy)
        write (lp,*) 'LVL_VVEL    ',LVL_VVEL(1:nphy)
        write (lp,*) 'LVL_WFLX    ',LVL_WFLX(1:nphy)
        write (lp,*) 'LVL_WFLX2   ',LVL_WFLX2(1:nphy)
        write (lp,*) 'LVL_PV      ',LVL_PV(1:nphy)
        write (lp,*) 'LVL_TKE     ',LVL_TKE(1:nphy)
        write (lp,*) 'LVL_GLS_PSI ',LVL_GLS_PSI(1:nphy)
        write (lp,*) 'LVL_IDLAGE  ',LVL_IDLAGE(1:nphy)
        write (lp,*) 'MSC_MMFLXL  ',MSC_MMFLXL(1:nphy)
        write (lp,*) 'MSC_MMFLXD  ',MSC_MMFLXD(1:nphy)
        write (lp,*) 'MSC_MMFTDL  ',MSC_MMFTDL(1:nphy)
        write (lp,*) 'MSC_MMFTDD  ',MSC_MMFTDD(1:nphy)
        write (lp,*) 'MSC_MHFLX   ',MSC_MHFLX(1:nphy)
        write (lp,*) 'MSC_MHFTD   ',MSC_MHFTD(1:nphy)
        write (lp,*) 'MSC_MHFLD   ',MSC_MHFLD(1:nphy)
        write (lp,*) 'MSC_MSFLX   ',MSC_MSFLX(1:nphy)
        write (lp,*) 'MSC_MSFTD   ',MSC_MSFTD(1:nphy)
        write (lp,*) 'MSC_MSFLD   ',MSC_MSFLD(1:nphy)
        write (lp,*) 'MSC_VOLTR   ',MSC_VOLTR(1:nphy)
        write (lp,*)
c
      endif
c
c --- broadcast variables set by namelists
c
      call xcbcst(nday1)
      call xcbcst(nday2)
      call xcbcst(idate)
      call xcbcst(idate0)
      call xcbcst(runid)
      call xcbcst(expcnf)
      call xcbcst(runtyp)
      call xcbcst(icfile)
      call xcbcst(baclin)
      call xcbcst(batrop)
      call xcbcst(mdv2hi)
      call xcbcst(mdv2lo)
      call xcbcst(mdv4hi)
      call xcbcst(mdv4lo)
      call xcbcst(mdc2hi)
      call xcbcst(mdc2lo)
      call xcbcst(vsc2hi)
      call xcbcst(vsc2lo)
      call xcbcst(vsc4hi)
      call xcbcst(vsc4lo)
      call xcbcst(cbar)
      call xcbcst(cb)
      call xcbcst(cwbdts)
      call xcbcst(cwbdls)
      call xcbcst(mommth)
      call xcbcst(eitmth)
      call xcbcst(edritp)
      call xcbcst(bmcmth)
      call xcbcst(rmpmth)
      call xcbcst(edwmth)
      call xcbcst(mlrttp)
      call xcbcst(edsprs)
      call xcbcst(egc)
      call xcbcst(eggam)
      call xcbcst(eglsmn)
      call xcbcst(egmndf)
      call xcbcst(egmxdf)
      call xcbcst(egidfq)
      call xcbcst(ri0)
      call xcbcst(rm0)
      call xcbcst(rm5)
      call xcbcst(ce)
      call xcbcst(bdmtyp)
      call xcbcst(bdmc1)
      call xcbcst(bdmc2)
      call xcbcst(tkepf)
      call xcbcst(niwgf)
      call xcbcst(niwbf)
      call xcbcst(niwlf)
      call xcbcst(swamth)
      call xcbcst(jwtype)
      call xcbcst(chlopt)
      call xcbcst(trxday)
      call xcbcst(srxday)
      call xcbcst(trxdpt)
      call xcbcst(srxdpt)
      call xcbcst(trxlim)
      call xcbcst(srxlim)
      call xcbcst(aptflx)
      call xcbcst(apsflx)
      call xcbcst(ditflx)
      call xcbcst(disflx)
      call xcbcst(srxbal)
      call xcbcst(srxsrc)
      call xcbcst(smtfrc)
      call xcbcst(sprfac)
      call xcbcst(path)
      call xcbcst(atm_path)
      call xcbcst(rstfrq)
      call xcbcst(rstfmt)
      call xcbcst(rstcmp)
      call xcbcst(iotype)
c
      call xcbcst(SRF_ABSWND)
      call xcbcst(SRF_ALB)
      call xcbcst(SRF_BRNFLX)
      call xcbcst(SRF_BRNPD)
      call xcbcst(SRF_DFL)
      call xcbcst(SRF_EVA)
      call xcbcst(SRF_FICE)
      call xcbcst(SRF_FMLTFZ)
      call xcbcst(SRF_HICE)
      call xcbcst(SRF_HMLTFZ)
      call xcbcst(SRF_HSNW)
      call xcbcst(SRF_IAGE)
      call xcbcst(SRF_IDKEDT)
      call xcbcst(SRF_LIP)
      call xcbcst(SRF_MAXMLD)
      call xcbcst(SRF_MLD)
      call xcbcst(SRF_MLDU)
      call xcbcst(SRF_MLDV)
      call xcbcst(SRF_MTKEUS)
      call xcbcst(SRF_MTKENI)
      call xcbcst(SRF_MTKEBF)
      call xcbcst(SRF_MTKERS)
      call xcbcst(SRF_MTKEPE)
      call xcbcst(SRF_MTKEKE)
      call xcbcst(SRF_MTY)
      call xcbcst(SRF_MXLU)
      call xcbcst(SRF_MXLV)
      call xcbcst(SRF_NSF)
      call xcbcst(SRF_RFIFLX)
      call xcbcst(SRF_RNFFLX)
      call xcbcst(SRF_SALFLX)
      call xcbcst(SRF_SALRLX)
      call xcbcst(SRF_SEALV)
      call xcbcst(SRF_SFL)
      call xcbcst(SRF_SOP)
      call xcbcst(SRF_SIGMX)
      call xcbcst(SRF_SSS)
      call xcbcst(SRF_SST)
      call xcbcst(SRF_SURFLX)
      call xcbcst(SRF_SURRLX)
      call xcbcst(SRF_SWA)
      call xcbcst(SRF_TAUX)
      call xcbcst(SRF_TAUY)
      call xcbcst(SRF_TICE)
      call xcbcst(SRF_TSRF)
      call xcbcst(SRF_UB)
      call xcbcst(SRF_UICE)
      call xcbcst(SRF_USTAR)
      call xcbcst(SRF_USTAR3)
      call xcbcst(SRF_VB)
      call xcbcst(SRF_VICE)
      call xcbcst(SRF_ZTX)
      call xcbcst(LYR_DIAFLX)
      call xcbcst(LYR_DIFDIA)
      call xcbcst(LYR_DIFINT)
      call xcbcst(LYR_DIFISO)
      call xcbcst(LYR_DP)
      call xcbcst(LYR_DPU)
      call xcbcst(LYR_DPV)
      call xcbcst(LYR_DZ)
      call xcbcst(LYR_SALN)
      call xcbcst(LYR_TEMP)
      call xcbcst(LYR_TRC)
      call xcbcst(LYR_UFLX)
      call xcbcst(LYR_UTFLX)
      call xcbcst(LYR_USFLX)
      call xcbcst(LYR_UMFLTD)
      call xcbcst(LYR_UTFLTD)
      call xcbcst(LYR_UTFLLD)
      call xcbcst(LYR_USFLTD)
      call xcbcst(LYR_USFLLD)
      call xcbcst(LYR_UVEL)
      call xcbcst(LYR_VFLX)
      call xcbcst(LYR_VTFLX)
      call xcbcst(LYR_VSFLX)
      call xcbcst(LYR_VMFLTD)
      call xcbcst(LYR_VTFLTD)
      call xcbcst(LYR_VTFLLD)
      call xcbcst(LYR_VSFLTD)
      call xcbcst(LYR_VSFLLD)
      call xcbcst(LYR_VVEL)
      call xcbcst(LYR_WFLX)
      call xcbcst(LYR_WFLX2)
      call xcbcst(LYR_PV)
      call xcbcst(LYR_TKE)
      call xcbcst(LYR_GLS_PSI)
      call xcbcst(LYR_IDLAGE)
      call xcbcst(LVL_DIAFLX)
      call xcbcst(LVL_DIFDIA)
      call xcbcst(LVL_DIFINT)
      call xcbcst(LVL_DIFISO)
      call xcbcst(LVL_DZ)
      call xcbcst(LVL_SALN)
      call xcbcst(LVL_TEMP)
      call xcbcst(LVL_TRC)
      call xcbcst(LVL_UFLX)
      call xcbcst(LVL_UTFLX)
      call xcbcst(LVL_USFLX)
      call xcbcst(LVL_UMFLTD)
      call xcbcst(LVL_UTFLTD)
      call xcbcst(LVL_UTFLLD)
      call xcbcst(LVL_USFLTD)
      call xcbcst(LVL_USFLLD)
      call xcbcst(LVL_UVEL)
      call xcbcst(LVL_VFLX)
      call xcbcst(LVL_VTFLX)
      call xcbcst(LVL_VSFLX)
      call xcbcst(LVL_VMFLTD)
      call xcbcst(LVL_VTFLTD)
      call xcbcst(LVL_VTFLLD)
      call xcbcst(LVL_VSFLTD)
      call xcbcst(LVL_VSFLLD)
      call xcbcst(LVL_VVEL)
      call xcbcst(LVL_WFLX)
      call xcbcst(LVL_WFLX2)
      call xcbcst(LVL_PV)
      call xcbcst(LVL_TKE)
      call xcbcst(LVL_GLS_PSI)
      call xcbcst(LVL_IDLAGE)
      call xcbcst(MSC_MMFLXL)
      call xcbcst(MSC_MMFLXD)
      call xcbcst(MSC_MMFTDL)
      call xcbcst(MSC_MMFTDD)
      call xcbcst(MSC_MHFLX)
      call xcbcst(MSC_MHFTD)
      call xcbcst(MSC_MHFLD)
      call xcbcst(MSC_MSFLX)
      call xcbcst(MSC_MSFTD)
      call xcbcst(MSC_MSFLD)
      call xcbcst(MSC_VOLTR)
      call xcbcst(GLB_AVEPERIO)
      call xcbcst(GLB_FILEFREQ)
      call xcbcst(GLB_COMPFLAG)
      call xcbcst(GLB_NCFORMAT)
      do n=1,nphymax 
        call xcbcst(GLB_FNAMETAG(n))
      enddo
c
      call xcbcst(nphy)
c
c --- convert integer dates 
      nyear=sign(abs(idate)/10000,idate)
      nmonth=abs(idate)/100-abs(nyear)*100
      nday=abs(idate)-abs(nyear)*10000-nmonth*100
      nyear0=sign(abs(idate0)/10000,idate0)
      nmonth0=abs(idate0)/100-abs(nyear0)*100
      nday0=abs(idate0)-abs(nyear0)*10000-nmonth0*100
c
c --- set path lengths
      path_len=1
      do while (path_len.lt.80.and.path(path_len:path_len).ne.' ')
        path_len=path_len+1
      enddo
      path_len=path_len-1
      if (expcnf.eq.'ben02syn') then
        atm_path_len=1
        do while (atm_path_len.lt.80.and.
     .            atm_path(atm_path_len:atm_path_len).ne.' ')
          atm_path_len=atm_path_len+1
        enddo
        atm_path_len=atm_path_len-1
      endif
c
c --- verify integer number of baroclinic time steps per day
      if (mod(86400.+epsil,baclin).gt.2.*epsil) then
        if (mnproc.eq.1) then
          write (lp,*) 'rdlim: must have an integer number of '//
     .                 'baroclinic time steps pr. day!'
        endif
        call xcstop('(rdlim)')
               stop '(rdlim)'
      endif
c
c --- get baroclinic time steps in a day
      nstep_in_day=nint(86400./baclin)
      if (mnproc.eq.1) then
        write (lp,*) 'rdlim: number of baroclinic time steps per '//
     .               'day:              ',nstep_in_day
      endif
c
c --- Initialize the calendar
      call inicln
c
      if (expcnf.eq.'cesm') then
c
c --- - override namelist experiment id with the one received from
c --- - coupler
        runid=runid_mct
c
c --- - verify integer number of baroclinic time steps per coupling
c --- - interval
        if (mod(ocn_cpl_dt_mct+epsil,baclin).gt.2.*epsil) then
          if (mnproc.eq.1) then
            write (lp,*) 'rdlim: must have an integer number of '//
     .                   'baroclinic time steps pr. coupling'
            write (lp,*) '       interval!'
          endif
          call xcstop('(rdlim)')
                 stop '(rdlim)'
        endif
c
c --- - get time step and correct model date after first coupling
c --- - interval
        nstep_in_cpl=nint(ocn_cpl_dt_mct/baclin)
        if (mnproc.eq.1) then
          write (lp,*) 'rdlim: number of baroclinic time steps per '//
     .                 'coupling interval:',nstep_in_cpl
        endif
        nstep0=0
        do
          nstep0=nstep0+1
          call updcln(nstep0)
          if (nstep0.eq.nstep_in_cpl) exit
        enddo
c
        if (runtyp.eq.'startup') then
c
c --- --- when runtyp equal 'startup' the ocean integration start after
c --- --- first coupling interval
c
          time0=0.
          nday1=0
          nstep1=nstep0
          nstep2=nstep1
c
        else
c
c --- --- for runtyp equal 'hybrid', 'branch' or 'continue' a
c --- --- 'rpointer.ocn' file containing the path to a valid restart
c --- --- file is expected and integration time is retrieved from
c --- --- restart file
c
          if (mnproc.eq.1) inquire(file='rpointer.ocn',exist=fexist)
          call xcbcst(fexist)
          if (.not.fexist) then
            if (mnproc.eq.1) then
              write (lp,*) 'rdlim: could not find rpointer.ocn file!'
            endif
            call xcstop('(rdlim)')
                   stop '(rdlim)'
          endif
          if (mnproc.eq.1) then
            open (unit=nfu,file='rpointer.ocn')
            read (nfu,'(a)') rstfnm
            close (unit=nfu)
            inquire(file=rstfnm,exist=fexist)
          endif
          call xcbcst(fexist)
          if (.not.fexist) then
            if (mnproc.eq.1) then
              write (lp,*) 'rdlim: could not find restart file!'
            endif
            call xcstop('(rdlim)')
                   stop '(rdlim)'
          endif
          call xcbcst(rstfnm)
          call ncfopn(rstfnm,'r',' ',1,iotype)
          call ncgeti('nday0',nd0rst)
          call ncgeti('nmonth0',nm0rst)
          call ncgeti('nyear0',ny0rst)
          call ncgetr('time0',time0)
          call ncgetr('time',time)
          nday1=nint(time-time0)
c
          if (runtyp.eq.'hybrid') then
c 
c --- ----- When runtyp equal 'hybrid' the ocean integration starts
c --- ----- after first coupling interval. If integration start date
c --- ----- differ in restart file and namelist, keep the latter and
c --- ----- modify integration time corresponding to start date.
            if (ny0rst.eq.nyear0.and.
     .          nm0rst.eq.nmonth0.and.
     .          nd0rst.eq.nday0) then
              nstep1=nday1*nstep_in_day+nstep0
            else
              time0=time
              nday1=0
              nstep1=nstep0
              nstep2=nstep1
            endif
c
          else
c
            nday0=nd0rst
            nmonth0=nm0rst
            nyear0=ny0rst
            nstep1=nday1*nstep_in_day
c
c --- ----- For runtypes 'branch' or 'continue' override namelist date
c --- ----- with date extracted from restart file name
c
            n=1
            do while (n.lt.256.and.rstfnm(n:n).ne.' ')
              n=n+1
            enddo
            n=n-1
            read (rstfnm(n-18:n-15),'(i4)') nyear
            read (rstfnm(n-13:n-12),'(i2)') nmonth
            read (rstfnm(n-10:n-9 ),'(i2)') nday
            call inicln
c
          endif
c
          call ncfcls
c
          nstep2=nstep1
c
        endif
c
      else
c
        if (nday1.lt.0.or.nday2.lt.0) then
          if (mnproc.eq.1) then
            write (lp,*) 'rdlim: integrations days must be positive!'
          endif
          call xcstop('(rdlim)')
                 stop '(rdlim)'
        endif
c
        if (nday2.lt.nday1) then
          if (mnproc.eq.1) then
            write (lp,*) 'rdlim: first day of integration must be '//
     .                   'less than or equal to last day!'
          endif
          call xcstop('(rdlim)')
                 stop '(rdlim)'
        endif
c
        if (nday1.eq.0.and.
     .      (nyear.ne.nyear0.or.nmonth.ne.nmonth0.or.
     .       nday.ne.nday0)) then
          if (mnproc.eq.1) then
            write (lp,*) 'rdlim: when first integration day is zero, '//
     .                   'model date and initial '
            write (lp,*) '       experiment date must be equal!'
          endif
          call xcstop('(rdlim)')
                 stop '(rdlim)'
        endif
c
        if (nyear.lt.nyear0.or.
     .      (nyear.eq.nyear0.and.nmonth.lt.nmonth0).or.
     .      (nyear.eq.nyear0.and.nmonth.eq.nmonth0.and.
     .       nday.lt.nday0)) then
          if (mnproc.eq.1) then
            write (lp,*) 'rdlim: model date must be greater or equal '//
     .                   'to initial experiment date!'
          endif
          call xcstop('(rdlim)')
                 stop '(rdlim)'
        endif
c
c --- - model is to be integrated from time step 'nstep1' to 'nstep2'
        time0=0.
        nstep1=nday1*nstep_in_day
        nstep2=nday2*nstep_in_day
c
        if (csdiag) then
          nstep2=nstep1+2
        endif
c
      endif
c
c --- set experiment id length
      runid_len=1
      do while (runid_len.lt.256.and.runid(runid_len:runid_len).ne.' ')
        runid_len=runid_len+1
      enddo
      runid_len=runid_len-1
c
      if (trxday.eq.0.and.ditflx) then
        if (mnproc.eq.1) then
          write (lp,*)
     .      'rdlim: trxday=0. and ditflx=.true.. Inconsistent!'
        endif
        call xcstop('(rdlim)')
               stop '(rdlim)'
      endif
c
      if (srxday.eq.0.and.disflx) then
        if (mnproc.eq.1) then
          write (lp,*)
     .      'rdlim: srxday=0. and disflx=.true.. Inconsistent!'
        endif
        call xcstop('(rdlim)')
               stop '(rdlim)'
      endif
c
      if (srxsrc.ne.'PHC3.0'.and.srxsrc.ne.'CORE') then
        if (mnproc.eq.1) then
          write (lp,*)
     .      'rdlim: srxsrc must be either ''PHC3.0'' or ''CORE''!'
        endif
        call xcstop('(rdlim)')
               stop '(rdlim)'
      endif
c
c --- represent time between restarts in time steps
      rstmon=.false.
      rstann=.false.
      if (nint(rstfrq).eq.30) then
        rstmon=.true.
      elseif (nint(rstfrq).eq.365) then
        rstann=.true.
      endif
      rstfrq=nstep_in_day*max(1.,rstfrq)
c
c --- represent time between diagnostics in time steps
      do n=1,nphy 
        GLB_FILEFREQ(n)=max(GLB_AVEPERIO(n),GLB_FILEFREQ(n))
c
        if (GLB_AVEPERIO(n).lt.0) then
          diagfq_phy(n)=-real(nstep_in_day)/GLB_AVEPERIO(n)
        else
          diagfq_phy(n)=nstep_in_day*max(1,GLB_AVEPERIO(n))
        endif
        diagmon_phy(n)=.false.
        diagann_phy(n)=.false.
        if (GLB_AVEPERIO(n).eq.30) then
          diagmon_phy(n)=.true.
        elseif (GLB_AVEPERIO(n).eq.365) then
          diagann_phy(n)=.true.
        endif
c
        if (GLB_FILEFREQ(n).lt.0) then
          filefq_phy(n)=-real(nstep_in_day)/GLB_FILEFREQ(n)
        else
          filefq_phy(n)=nstep_in_day*max(1,GLB_FILEFREQ(n))
        endif
        filemon_phy(n)=.false.
        fileann_phy(n)=.false.
        if (GLB_FILEFREQ(n).eq.30) then
          filemon_phy(n)=.true.
        elseif (GLB_FILEFREQ(n).eq.365) then
          fileann_phy(n)=.true.
        endif
      enddo
c
c
c --- 'lstep' = number of barotropic time steps per baroclinic time step.
c --- lstep   m u s t   be even.
      lstep=2*ceiling(.5*baclin/batrop)
      dlt=baclin/lstep
c
      if (mnproc.eq.1) then
        write (lp,*)
        write (lp,*) 'rdlim: resolved parameters:'
        write (lp,'(a,i10)') ' nday1:                          ',nday1
        write (lp,'(a,i10)') ' nday2:                          ',nday2
        write (lp,'(a,i4.4,a,i2.2,a,i2.2,a,i5.5)')
     .    ' nyear ,nmonth ,nday ,nsec :     ',
     .     nyear ,' ,',nmonth ,' ,',nday ,' ,',
     .     nint(mod(nstep1,nstep_in_day)*baclin)
        write (lp,'(a,i4.4,a,i2.2,a,i2.2,a,i5.5)')
     .    ' nyear0,nmonth0,nday0,nsec0:     ',
     .     nyear0,' ,',nmonth0,' ,',nday0,' ,',0
        write (lp,'(a,i10)') ' barotr. steps per barocl. step: ',lstep
        write (lp,'(2a)') ' runid:                          ',
     .    trim(runid)
        write (lp,'(a,f10.4)') ' rstfrq:                         ',
     .    rstfrq
        write (lp,'(a,l10)') ' rstmon:                         ',rstmon
        write (lp,'(a,l10)') ' rstann:                         ',rstann
        write (lp,*)
        call flush(lp)
      endif
c
      return
      end
