#include "foo.h"

namespace Foo {

namespace Sub {

class Bar : public Foo::Bar {
};

Foo::Bar *bar();
Bar *subbar();

}

}
