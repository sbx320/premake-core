FROM sbx320/clang

RUN ls
RUN find | grep premake5
RUN make -f Bootstrap.mak linux 
RUN premake5 gmake 
RUN premake5 embed
