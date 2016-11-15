// universalPath.cpp

#include <boost/filesystem.hpp>
#include <iostream>
#include <string>

void buildPath()
{
	boost::filesystem::path root = "/root";
	boost::filesystem::path fname = "sample";
	root /= fname;
	std::cout << root.string().c_str() << std::endl;
}