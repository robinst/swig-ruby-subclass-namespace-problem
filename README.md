SWIG Ruby problem with subclass in other namespace
==================================================

This is an example showing a bug in SWIG Ruby, where the Ruby class is
wrong in the following situation:

module base.i:

    class Foo::Bar;

module sub.i:

    class Foo::Sub::Bar;
    Foo::Bar *bar();
    Foo::Sub::Bar *subbar();

Now, when calling `bar()` from Ruby, the Ruby class of the returned
object is `Foo::Sub::Bar`, where instead it should be `Foo::Bar`. The
class of `subbar()` is `Foo::Sub::Bar` (which is correct):

    bar: Foo::Sub::Bar
    subbar: Foo::Sub::Bar

Running the example
-------------------

To build and run the example, do the following:

    ./build.sh
    ruby test.rb

Then have a look at the output.

You may have to configure the path to the SWIG binary in `build.sh`.
