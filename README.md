
# PETSc ... 

PETSc is 3.9 \\ MSVC 14 \\ Intel 18

В общем долго пытался найти точки соприкосновения с данным продуктом, но никак не мог сконфигурировать, то питон ему подавай с цигвина, то строки не верны, то ... в общем создание конфигурации занимает ну очень продолжительное время, в отличии сборки, которая длится минуты

сразу обмолвлюсь, конфигуратор не любит длинные имена и пробелы в путях, надо сокращать до 8.3 символов
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


п.с. кидаем два батника в папку с цингвином \х64\, у меня он установлен на диск H, H:/cygwin, редактируем батник, если х86, нужно отредактировать батники под нужную архитектуру
запускаем Cygwin.bat, конфигурируем, и да, в цингвине должны быть установлены все зависимости, как в офф мануале

как пример

http://www.mcs.anl.gov/petsc/documentation/installation.html#windows

https://github.com/petsc/petsc/blob/master/config/examples/arch-mswin-opt-impi.py

https://www.gridpack.org/wiki/index.php/Building_on_Windowsс

https://github.com/INMOST-DEV/INMOST/wiki/0206-Compilation-PETSc-Windows

http://documentation.pflotran.org/user_guide/how_to/installation/windows_visual_studio.html

https://docs.google.com/document/d/19oFOjK1B_p2D2ZEvWHVTngno_-g3SPi4PBwcF4mm4Yc/edit#heading=h.55m9zfhq3sqa

http://www.oofem.org/wiki/doku.php?id=installing_optional

http://math-atlas.sourceforge.net/atlas_install/node56.html

http://math-atlas.sourceforge.net/atlas_install/node60.html

https://www.sharcnet.ca/help/index.php/PETSC_SLEPC
