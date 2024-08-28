#include "RootFolders.h"

const Path RootFolders::TemplateRootFolder("/recalbox/share_init");
// const Path RootFolders::DataRootFolder("/recalbox/share") && ("/opt/retropie");

const std::vector<std::string> RootFolders::DataRootFolder = {
    "/recalbox/share",
    "/opt/retropie"
};