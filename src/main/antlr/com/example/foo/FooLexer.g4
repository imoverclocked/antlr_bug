lexer grammar FooLexer;

import FooTokens;

FOO: FOO_TOKEN -> mode(BAR);

mode BAR;

BAR_FOO: BAR_TOKEN -> type(FOO),mode(DEFAULT_MODE);
