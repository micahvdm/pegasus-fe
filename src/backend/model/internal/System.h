// Pegasus Frontend
// Copyright (C) 2017  Mátyás Mustoha
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

#include "types/AppCloseType.h"
#include <utils/Strings.h>
#include <QObject>


namespace model {

/// Provides a set of system calls for the frontend
class System : public QObject {
    Q_OBJECT

public:
    explicit System(QObject* parent = nullptr);

    Q_INVOKABLE void quit();
    Q_INVOKABLE void reboot();
    Q_INVOKABLE void shutdown();
	Q_INVOKABLE void restart();

    Q_INVOKABLE QString run(const QString& Command);

    Q_INVOKABLE void runAsync(const QString& Command);
    Q_INVOKABLE QString getRunAsyncResult();

    Q_INVOKABLE bool runBoolResult(const QString& Command, bool escaped = true);

private slots:
    void runAsync_slot();

signals:
    void appCloseRequested(AppCloseType);

private:
    QString  m_Command;
    QString m_Result;
    bool m_bResult;
};

} // namespace model
