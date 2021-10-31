set ff=UNIX
mkdir runContain
find ./src -name "*.java" -print0|xargs -0 javac -d runContain -cp ./src/Parser/antlr-4.9-complete.jar