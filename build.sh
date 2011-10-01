(cd base;
 swig2.0 -c++ -ruby -autorename -initname base -I. base.i;
 ruby extconf.rb && make;
)
(cd sub;
 swig2.0 -c++ -ruby -autorename -initname sub -I. -I../base sub.i;
 g++ -I../base -c -fPIC sub.cpp
 ruby extconf.rb --with-opt-include=../base && make;
)
cp base/base.so sub/sub.so .
