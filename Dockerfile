FROM sbx320/clang

WORKDIR /src

COPY . /src

RUN make -f Bootstrap.mak linux 
RUN premake5 gmake 
RUN premake5 embed
