%module "Foo::Sub"
%{
#include "sub.h"
%}

%import(module="base") "../base/base.i"

%include "sub.h"
