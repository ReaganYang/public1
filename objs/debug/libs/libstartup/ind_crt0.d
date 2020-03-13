objs\debug\libs\libstartup\ind_crt0.o: tgt\libstartup\ind_crt0.c \
 tgt\libstartup\ind_startup.h

:cmdList=ccppc -c  -MD -Itgt\libsys -IC:\ghs\comp_201516\src\libsys -G -Odebug -object_dir=objs\debug -bsp mpc563,563xM --ee -DEMBEDDED -ansi --incorrect_pragma_warnings --unknown_pragma_warnings --prototype_warnings --diag_error 236 --no_coverage_analysis -check=nomemory -fnone -inline_prologue -pnone -globalreg=99 -gtws -filetype.c tgt\libstartup\ind_crt0.c -o objs\debug\libs\libstartup\ind_crt0.o ; 
:cmdHash=0x89677e58

:installDir=c:\ghs\comp_201516
:installDirHash=0x9d4d044d

:config=DBG
