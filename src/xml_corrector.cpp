/*
 * xml_corrector.cpp
 *
 *  Created on: Nov 23, 2012
 *      Author: monfee
 */

#include <iostream>
#include <string.h>
#include <stdlib.h>

#include <string>

#include <stpl/stpl_stream.h>
#include <stpl/xml/stpl_xml.h>

using namespace std;
using namespace stpl;

void usage(char *program) {
	cerr << program << ": /a/path/to/a/xml/file" << endl;
	exit(-1);
}

void process(const char *xml_file) {
	FileStream<string, char *> fs(xml_file);
	string str = string(fs.begin(), fs.end());

	XML::XParser<string> parser(str.begin(), str.end());
	parser.parse();

//	string text;
//	parser.root()->all_text(text);
	parser.root()->flush();
	cout << parser.root()->ref();
//	cout << text;
}

int main(int argc, char **argv)
{
	if (argc < 2)
		usage(argv[0]);

	process(argv[1]);
	return 1;
}


