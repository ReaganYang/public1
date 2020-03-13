.\crt0.o: tgt\libstartup\crt0.ppc tgt\libsys\indsyscl.h \
 tgt\libsys\ppc_regs.ppc

:cmdList=ccppc -c -MD -Itgt\libsys -Itgt\libsys -IC:\ghs\comp_201516\src\libsys -G -Odebug -object_dir=objs\debug -bsp mpc563,563xM --ee -DEMBEDDED -filetype.assembly tgt\libstartup\crt0.ppc -o .\crt0.o ; 
:cmdHash=0x746108e1

:installDir=c:\ghs\comp_201516
:installDirHash=0x9d4d044d

:config=DBG
