
git clone $1
cp GradingTests.java markdown-parse/
cd markdown-parse

if [ -e MarkdownParse.java ]
	then
		echo "file exists"
fi

javac -cp lib/*:. GradingTests.java MarkdownParse.java
java -cp lib/*:. org.junit.runner.JUnitCore GradingTests
cd ..
rm -rf markdown-parse
