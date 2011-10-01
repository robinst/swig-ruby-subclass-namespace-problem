swig=swig2.0
swigopts="-c++ -ruby -autorename"

(cd base;
 $swig $swigopts -initname base -I. base.i;
 ruby extconf.rb && make;
)
(cd sub;
 $swig $swigopts -initname sub -I. -I../base sub.i;
 g++ -I../base -c -fPIC sub.cpp
 ruby extconf.rb --with-opt-include=../base && make;
)
cp base/base.so sub/sub.so .
