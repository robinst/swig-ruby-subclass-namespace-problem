#include "sub.h"

namespace Foo {
namespace Sub {

Foo::Bar *bar() {
	return new Sub::Bar();
}

Foo::Sub::Bar *subbar() {
	return new Sub::Bar();
}

}
}
