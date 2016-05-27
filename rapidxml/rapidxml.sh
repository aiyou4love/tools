#!/bin/sh
git clone https://github.com/valnoel/rapidxml.git
mkdir include/rapidxml
cp rapidxml/*.hpp include/rapidxml/
rm -rf rapidxml
