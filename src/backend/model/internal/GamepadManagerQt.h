// Pegasus Frontend
// Copyright (C) 2017-2019  Mátyás Mustoha
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

#include "GamepadManagerBackend.h"

#include <QGamepadManager>
#ifdef Q_OS_ANDROID
#include <QGamepadKeyNavigation>
#endif


namespace model {

class GamepadManagerQt : public GamepadManagerBackend {
public:
    explicit GamepadManagerQt(QObject* parent);

    void start(const backend::CliArgs&) final;

private slots:
    void fwd_connection(int);
    void fwd_button_press(int, QGamepadManager::GamepadButton);
    void fwd_button_release(int, QGamepadManager::GamepadButton);
    void fwd_axis_event(int, QGamepadManager::GamepadAxis, double);
    void fwd_button_cfg(int, QGamepadManager::GamepadButton);
    void fwd_axis_cfg(int, QGamepadManager::GamepadAxis);

private:
#ifdef Q_OS_ANDROID
    QGamepadKeyNavigation padkeynav;
#endif
};

} // namespace model
