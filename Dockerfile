FROM sbx320/clang

WORKDIR /src

RUN git submodule init
RUN git submodule update
RUN make -f Bootstrap.mak linux 
RUN premake5 gmake 
RUN premake5 embed
