#ifndef FOO_H
#define FOO_H

namespace Foo {

class Tag {
public:
	virtual int foo() const = 0;
};

class File {
public:
	virtual Tag *tag() const = 0;
};

}

#endif
