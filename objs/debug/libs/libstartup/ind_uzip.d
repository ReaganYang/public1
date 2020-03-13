objs\debug\libs\libstartup\ind_uzip.o: tgt\libstartup\ind_uzip.c \
 tgt\libstartup\ind_startup.h

:cmdList=ccppc -c  -MD -Itgt\libsys -IC:\ghs\comp_201516\src\libsys -G -Odebug -object_dir=objs\debug -bsp mpc563,563xM --ee -DEMBEDDED -ansi --incorrect_pragma_warnings --unknown_pragma_warnings --prototype_warnings --diag_error 236 --no_coverage_analysis -check=nomemory -fnone -inline_prologue -pnone -filetype.c tgt\libstartup\ind_uzip.c -o objs\debug\libs\libstartup\ind_uzip.o ; 
:cmdHash=0xfb56697f

:installDir=c:\ghs\comp_201516
:installDirHash=0x9d4d044d

:config=DBG
