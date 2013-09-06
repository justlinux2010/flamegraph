if [ $# != 2 ];then
    echo "Usage $0 exec_path pid"
    exit 1
fi

stap --ldd -d $1 \
         --all-modules -D MAXMAPENTRIES=10240 \
         -D MAXACTION=20000  \
         -D MAXTRACE=100  \
         -D MAXSTRINGLEN=4096  \
         -D MAXBACKTRACE=100 -x $2 fire.stp >a.out

perl stackcollapse-stap.pl a.out > a.out2
perl flamegraph.pl a.out2 > a.svg
