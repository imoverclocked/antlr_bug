# antlr_bug
Illustration of an ANTLR+Gradle bug

## Project Structure

  - README.md
  - build.gradle (minimally reproducible build failure)
  - src/main/antlr/com/example/foo
    - Foo.g4 (Parser Grammar)
    - FooLexer.g4 (Top-Level Lexer Grammar)
    - FooTokens.g4 (imported by FooLexer.g4)
  - build/generated-src/antlr/main/com/example/foo
    - generated content (*.tokens, *.interp, *.java, ...)
    
## Build notes

One can reproduce any build errors by uncommenting the appropriate config snippet:

`vim build.gradle`

followed by:

`./gradlew clean generateGrammarSource`
