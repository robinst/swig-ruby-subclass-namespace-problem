#include "foo.h"

namespace Foo {

namespace Subtag { class Tag; }

namespace Subfile {

class File : public Foo::File {
public:
	virtual Tag *tag() const;
	Subtag::Tag *subtag() const;
};

}

}
