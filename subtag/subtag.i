%module "Foo::Subtag"
%{
#include "subtag.h"
%}

%import(module="base") "../base/base.i"

%include "subtag.h"
