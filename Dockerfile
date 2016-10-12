FROM sbx320/clang

RUN make -f Bootstrap.mak linux 
RUN premake5 gmake 
RUN premake5 embed
