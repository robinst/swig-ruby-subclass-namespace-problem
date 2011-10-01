#include "subtag.h"
#include "subfile.h"

namespace Foo {
namespace Subfile {

Tag *File::tag() const {
	return new Subtag::Tag();
}

Subtag::Tag *File::subtag() const {
	return new Subtag::Tag();
}

}
}
