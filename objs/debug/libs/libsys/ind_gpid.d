objs\debug\libs\libsys\ind_gpid.o: tgt\libsys\ind_gpid.c tgt\libsys\ind_io.h

:cmdList=ccppc -c  -MD -G -Odebug -object_dir=objs\debug -bsp mpc563,563xM --ee -ansi --incorrect_pragma_warnings --unknown_pragma_warnings --prototype_warnings --diag_error 236 --no_coverage_analysis -check=nomemory -fnone -pnone -Onoinline -DEMBEDDED -filetype.c tgt\libsys\ind_gpid.c -o objs\debug\libs\libsys\ind_gpid.o ; 
:cmdHash=0x839d66b8

:installDir=c:\ghs\comp_201516
:installDirHash=0x9d4d044d

:config=DBG
