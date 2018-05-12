@echo off

C:
chdir c:\Program Files (x86)/Microsoft Visual Studio 14.0/VC/
call vcvarsall.bat x86_amd64 

:: chdir c:\Program Files (x86)/Intel/Composer XE 2011 SP1/bin

:: chdir C:\Program Files (x86)/Intel/Composer XE 2013 SP1/bin
:: call ipsxe-comp-vars.bat intel64
:: call ifortvars.bat intel64

chdir C:\Program Files (x86)/IntelSWTools/compilers_and_libraries_2018.2.185/windows/bin
call ipsxe-comp-vars.bat intel64 vs2015 
call ifortvars.bat intel64 vs2015 


:: chdir C:\Program Files (x86)/Intel/Composer XE 2013 SP1/mkl/bin
:: call mklvars.bat intel64

:: chdir C:\Program Files (x86)/IntelSWTools/compilers_and_libraries_2018.2.185/windows/mkl/bin
:: call mklvars.bat intel64

:: chdir C:\Program Files (x86)/IntelSWTools/compilers_and_libraries_2018.2.185/windows/mpi/intel64/bin
:: call mpivars.bat 

:: e:
:: chdir e:\tools/Silverfrost/FTN95
:: call fvars.bat

H:
chdir H:/cygwin

:: bash --login -i
bash.bat --login -i
