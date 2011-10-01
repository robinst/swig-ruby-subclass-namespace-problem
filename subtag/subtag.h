#include "foo.h"

namespace Foo {

namespace Subtag {

class Tag : public Foo::Tag {
public:
	virtual int foo() const;
};

}

}
