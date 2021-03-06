      subroutine read_twedon
c
c --- ------------------------------------------------------------------
c --- Read tidal wave energy dissipation divided by bottom buoyancy
c --- frequency
c --- ------------------------------------------------------------------
c
      use mod_xc
      use netcdf
c
      implicit none
c
#include "common_blocks.h"
c
      real, dimension(itdm,jtdm) :: tmpg
      integer i,j,l,status,ncid,dimid,varid
c
      if (mnproc.eq.1) then
        write (lp,'(2a)') ' reading tidal dissipation data from ',
     .                    path(1:path_len)//'tidal_dissipation.nc'
        call flush(lp)
c
c --- - open netcdf file
        status=nf90_open(path(1:path_len)//'tidal_dissipation.nc',
     .                   nf90_nowrite,ncid)
        if (status.ne.nf90_noerr) then
          write(lp,'(2a)') 'nf90_open: tidal_dissipation.nc: ',
     .                     nf90_strerror(status)
          call xchalt('(read_twedon)')
                 stop '(read_twedon)'
        endif
c
c --- - check dimensions
        status=nf90_inq_dimid(ncid,'x',dimid)
        if (status.ne.nf90_noerr) then
          write(lp,'(2a)') 'nf90_inq_dimid: x: ',nf90_strerror(status)
          call xchalt('(read_twedon)')
                 stop '(read_twedon)'
        endif
        status=nf90_inquire_dimension(ncid,dimid,len=i)
        if (status.ne.nf90_noerr) then
          write(lp,'(2a)') 'nf90_inquire_dimension: x: ',
     .                     nf90_strerror(status)
          call xchalt('(read_twedon)')
                 stop '(read_twedon)'
        endif
        status=nf90_inq_dimid(ncid,'y',dimid)
        if (status.ne.nf90_noerr) then
          write(lp,'(2a)') 'nf90_inq_dimid: y: ',nf90_strerror(status)
          call xchalt('(read_twedon)')
                 stop '(read_twedon)'
        endif
        status=nf90_inquire_dimension(ncid,dimid,len=j)
        if (status.ne.nf90_noerr) then
          write(lp,'(2a)') 'nf90_inquire_dimension: y: ',
     .                     nf90_strerror(status)
          call xchalt('(read_twedon)')
                 stop '(read_twedon)'
        endif
        if (i.ne.itdm.or.j.ne.jtdm) then
          write (lp,*) 'wrong dimensions in tidal_dissipation.nc'
          call xchalt('(read_twedon)')
                 stop '(read_twedon)'
        endif
c
c --- - read tidal dissipation data
        status=nf90_inq_varid(ncid,'twedon',varid)
        if (status.ne.nf90_noerr) then
          write(lp,'(2a)') 'nf90_inq_varid: twedon: ',
     .                     nf90_strerror(status)
          call xchalt('(read_twedon)')
                 stop '(read_twedon)'
        endif
        status=nf90_get_var(ncid,varid,tmpg)
        if (status.ne.nf90_noerr) then
          write(lp,'(2a)') 'nf90_get_var: twedon: ',
     .                     nf90_strerror(status)
          call xchalt('(read_twedon)')
                 stop '(read_twedon)'
        endif
c
        status=nf90_close(ncid)
        if (status.ne.nf90_noerr) then
          write(lp,'(2a)') 'nf90_close: tidal_dissipation.nc: ',
     .                     nf90_strerror(status)
          call xchalt('(read_twedon)')
                 stop '(read_twedon)'
        endif
      endif
c
      call xcaput(tmpg,twedon,1)
c
c --- change units from W*s/m**2=kg/s**2 to g/s**2
c$OMP PARALLEL DO PRIVATE(l,i)
      do j=1,jj
        do l=1,isp(j)
        do i=max(1,ifp(j,l)),min(ii,ilp(j,l))
          twedon(i,j)=twedon(i,j)*1.e3
        enddo
        enddo
      enddo
c$OMP END PARALLEL DO
c
      call xctilr(twedon, 1,1, nbdy,nbdy, halo_ps)
c
      if (csdiag) then
        if (mnproc.eq.1) then
          write (lp,*) 'read_twedon:'
        endif
        call chksummsk(twedon,ip,1,'twedon')
      endif
c
      return
      end
