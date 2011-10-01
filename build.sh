(cd base;
 swig2.0 -c++ -ruby -autorename -initname base -I. base.i;
 ruby extconf.rb && make;
)
(cd subtag;
 swig2.0 -c++ -ruby -autorename -initname subtag -I. -I../base subtag.i;
 g++ -I../base -c -fPIC subtag.cpp
 ruby extconf.rb --with-opt-include=../base && make;
)
(cd subfile;
 swig2.0 -c++ -ruby -autorename -initname subfile -I. -I../base subfile.i;
 g++ -I../base -I../subtag -c -fPIC subfile.cpp
 ruby extconf.rb --with-opt-include=../base:../subtag && make;
)
cp base/base.so subtag/subtag.so subfile/subfile.so .
