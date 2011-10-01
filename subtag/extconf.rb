require 'mkmf'

$CFLAGS << " -DSWIG_TYPE_TABLE=foo -DSWIGRUNTIME_DEBUG"

have_library('stdc++')
create_makefile('subtag')
