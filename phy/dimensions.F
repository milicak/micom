      module dimensions
c
c --- itdm  = total grid dimension in i direction
c --- jtdm  = total grid dimension in j direction
c --- kdm   =       grid dimension in k direction
      integer    itdm,jtdm,kdm
      parameter (itdm=163,jtdm=150,kdm=53)
c
c --- ijqr  = total number of active tiles
c --- iqr   = maximum number of tiles in i direction
c --- jqr   = maximum number of tiles in j direction
c --- idm   = maximum single tile grid dimension in i direction
c --- jdm   = maximum single tile grid dimension in j direction
      integer    ijqr,iqr,jqr,idm,jdm
      parameter (ijqr=8,iqr=2,jqr=4,idm=108,jdm=47)
c
c --- region type (nreg=-1: unknown,
c ---              nreg= 0:   closed/closed,
c ---              nreg= 1: periodic/closed,
c ---              nreg= 2: periodic/arctic,
c ---              nreg= 3: periodic/periodic
c ---              nreg= 4:   closed/periodic)
      integer    nreg
      data nreg/4/
c
c --- i0_pe = 1st dimension tile offsets
c --- ii_pe = 1st dimension tile extents
c --- j0_pe = 2nd dimension tile offsets
c --- jj_pe = 2nd dimension tile extents
      integer, dimension(iqr,jqr) :: i0_pe,ii_pe,j0_pe,jj_pe
      data i0_pe/
     .  6,93,0,80,0,108,24,95/
      data ii_pe/
     .  87,70,80,83,108,55,71,68/
      data j0_pe/
     .  0,0,30,30,62,62,109,109/
      data jj_pe/
     .  30,30,32,32,47,47,41,41/
c
      end module dimensions
