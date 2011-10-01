%module "Foo::Subfile"
%{
#include "subfile.h"
%}

%import(module="base") "../base/base.i"

%include "subfile.h"
