# PETSc ... 

В общем долго пытался найти точки соприкосновения с данным продуктом, но никак не мог сконфигурировать, то питон ему подавай с цигвина, то строки не верны, то ... в общем создание конфигурации занимает ну очень продолжительное время, в отличии сборки, которая длится минуты

сразу обмолвлюсь, конфигуратор не любит длинные имена и пробелы в путях, надо сокращать до 8 символов
полный путь
E:\tools\MPICH2\1.4.1p1\x64
короткий
/e/tools/MPICH2/14AFCB~1.1P1/x64

полный путь
c:\Program Files (x86)\IntelSWTools\compilers_and_libraries_2018.2.185\windows\mkl\lib\intel64_win
короткий
/c/PROGRA~2/INTELS~1/COMPIL~1.185/windows/mkl/lib/INTEL6~1

и т.д.

на таких путях, как в некотрых мануалах, будет ошибка
/c/Program\ Files\ \(x86\)/Microsoft\ SDKs/MPI/Include

с фортран у меня только mpich2 заработал, другим чего то да не хватало, пробывал от intel, от msmpi и openmpi
здесь опции обязательны, иначе конфигуратор не может найти хидеры от Х
--with-windows-graphics=0 --with-x11=0

./configure --with-cc='win32fe cl' --with-fc='win32fe ifort' --with-cxx='win32fe cl' --with-mpi-dir=/cygdrive/e/tools/MPICH2/14AFCB~1.1P1/x64 --with-blas-lapack-dir=/c/PROGRA~2/INTELS~1/COMPIL~1.185/windows/mkl/lib/INTEL6~1 --with-clanguage=c --CFLAGS='-D_CRT_SECURE_NO_DEPRECATE -MTd' --FFLAGS='-MTd' --CXXFLAGS='-MTd' --with-debugging=yes --with-numdiff=0 --with-valgrind=0 --ignore-cygwin-link --with-c2html=0 --download-sowing=0 --with-windows-graphics=0 --with-x11=0

без фортран, норм подцепились msmpi
--with-fortran=0 --with-fc=0

./configure --with-cc='win32fe cl' --with-cxx='win32fe cl' --with-mpi-include=/cygdrive/e/tools/MSMPIV~1.1/Include --with-mpi-lib='/cygdrive/e/tools/MSMPIV~1.1/Lib/x64/msmpi.lib' --with-mpi-mpiexec='/cygdrive/e/tools/MSMPIV~1.1/Bin/mpiexec.exe' --with-debugging=0 --with-blas-lapack-dir=/c/PROGRA~2/INTELS~1/COMPIL~1.185/windows/mkl/lib/INTEL6~1 --with-clanguage=c --CFLAGS='-D_CRT_SECURE_NO_DEPRECATE -MTd' --FFLAGS='-MTd' --CXXFLAGS='-MTd' --with-numdiff=0 --with-valgrind=0 --ignore-cygwin-link --with-c2html=0 --download-sowing=0 --with-fortran=0 --with-fc=0 --with-windows-graphics=0 --with-x11=0

