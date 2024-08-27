// Pegasus Frontend
// Copyright (C) 2017-2018  Mátyás Mustoha
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

#include "CliArgs.h"
#include "GamepadManager.h"
#include "Meta.h"
#include "System.h"
#include "settings/Recalbox.h"
#include "netplay/Netplay.h"
#include "singleplay/Singleplay.h"
#include "updates/Updates.h"
#include "bios/Bios.h"
#include "settings/Settings.h"
#include "utils/QmlHelpers.h"

#include <QObject>


namespace model {
class Internal : public QObject {
    Q_OBJECT

    QML_CONST_PROPERTY(model::Meta, meta)
    QML_CONST_PROPERTY(model::Settings, settings)
    QML_CONST_PROPERTY(model::System, system)
    QML_CONST_PROPERTY(model::GamepadManager, gamepad)
    QML_CONST_PROPERTY(model::Recalbox, recalbox)
    QML_CONST_PROPERTY(model::Netplay, netplay)
	QML_CONST_PROPERTY(model::Singleplay, singleplay)
	QML_CONST_PROPERTY(model::Updates, updates)
	QML_CONST_PROPERTY(model::Bios, bios)
    
public:
    explicit Internal(const backend::CliArgs& args, QObject* parent = nullptr);
};
} // namespace model
