// Pegasus Frontend
// Copyright (C) 2017-2020  Mátyás Mustoha
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.


#pragma once

#include "providers/Provider.h"
#include "providers/android_apps/AndroidAppsMetadata.h"


namespace providers {
namespace android {

class AndroidAppsProvider : public Provider {
    Q_OBJECT

public:
    AndroidAppsProvider(QObject* parent = nullptr);

    Provider& run(SearchContext&) final;

private:
    const MetadataHelper m_metahelper;
};

} // namespace android
} // namespace providers
