objs\debug\libs\libstartup\ind_reset.o: tgt\libstartup\ind_reset.ppc \
 tgt\libsys\ppc_regs.ppc

:cmdList=ccppc -c -MD -Itgt\libsys -IC:\ghs\comp_201516\src\libsys -G -Odebug -object_dir=objs\debug -bsp mpc563,563xM --ee -DEMBEDDED -ansi --incorrect_pragma_warnings --unknown_pragma_warnings --prototype_warnings --diag_error 236 --no_coverage_analysis -check=nomemory -fnone -inline_prologue -pnone -filetype.assembly tgt\libstartup\ind_reset.ppc -o objs\debug\libs\libstartup\ind_reset.o ; 
:cmdHash=0x93c9b1e6

:installDir=c:\ghs\comp_201516
:installDirHash=0x9d4d044d

:config=DBG
