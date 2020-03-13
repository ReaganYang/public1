objs\debug\libs\libsys\ind_gcnt.o: tgt\libsys\ind_gcnt.ppc \
 tgt\libsys\ppc_regs.ppc

:cmdList=ccppc -c -MD -G -Odebug -object_dir=objs\debug -bsp mpc563,563xM --ee -ansi --incorrect_pragma_warnings --unknown_pragma_warnings --prototype_warnings --diag_error 236 --no_coverage_analysis -check=nomemory -fnone -pnone -Onoinline -DEMBEDDED -filetype.assembly tgt\libsys\ind_gcnt.ppc -o objs\debug\libs\libsys\ind_gcnt.o ; 
:cmdHash=0x627b896b

:installDir=c:\ghs\comp_201516
:installDirHash=0x9d4d044d

:config=DBG
