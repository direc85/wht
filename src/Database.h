/*
Copyright (C) 2016 Olavi Haapala.
<harbourwht@gmail.com>
Twitter: @0lpeh
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

* Neither the name of wht nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#ifndef DATABASE_H
#define DATABASE_H

#include <QCoreApplication>
#include <QLocale>
#include <QObject>
#include <QtSql>
#include <QFile>
#include <QFileInfo>
#include "Logger.h"

class Database : public QObject
{
  Q_OBJECT

public:
  explicit Database(QObject *parent = 0);
  ~Database();

  static QString DB_NAME;

public slots:
  QString saveHourRow(QVariantMap values);

  double getDurationForPeriod(QString period, int timeOffset = 0, QString projectId = NULL);

  QVariantList getHoursForPeriod(QString period, int timeOffset = 0, QList<QString> sorting = QList<QString>(), QString projectId = NULL);

  QVariantMap getLastUsedInput(QString projectId = NULL, QString taskId = NULL);

  QVariantList getProjects();

  QString insertInitialProject(QString labelColor);

  QString saveProject(QVariantMap values);

  QVariantList getTasks(QString projectId = NULL);

  QString saveTask(QVariantMap values);

  bool remove(QString table, QString id);

  void resetDatabase();

  QUuid getUniqueId();

private:
  QSqlDatabase *db;

  Q_DISABLE_COPY(Database)

  bool fileExists(QString path);

  bool init();

  void upgradeIfNeeded();

  bool createTables();

  void queryBuilder(QSqlQuery *query, QString select, QString from, QList<QString> where = QList<QString>(), QList<QString> sorting = QList<QString>(), int limit = 0);

  bool periodQueryBuilder(QSqlQuery *query, QString select, QString period, int timeOffset, QList<QString> sorting = QList<QString>(), QString projectId = NULL);
};

#endif // DATABASE_H
