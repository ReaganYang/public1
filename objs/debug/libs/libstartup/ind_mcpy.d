objs\debug\libs\libstartup\ind_mcpy.o: tgt\libstartup\ind_mcpy.ppc \
 tgt\libsys\ppc_regs.ppc

:cmdList=ccppc -c -MD -Itgt\libsys -IC:\ghs\comp_201516\src\libsys -G -Odebug -object_dir=objs\debug -bsp mpc563,563xM --ee -DEMBEDDED -ansi --incorrect_pragma_warnings --unknown_pragma_warnings --prototype_warnings --diag_error 236 --no_coverage_analysis -check=nomemory -fnone -inline_prologue -pnone -filetype.assembly tgt\libstartup\ind_mcpy.ppc -o objs\debug\libs\libstartup\ind_mcpy.o ; 
:cmdHash=0x5bad706a

:installDir=c:\ghs\comp_201516
:installDirHash=0x9d4d044d

:config=DBG
