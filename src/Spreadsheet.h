#ifndef SPREADSHEET_H
#define SPREADSHEET_H

#include <QObject>
#include <QVariant>

class Spreadsheet : public QObject {
  Q_OBJECT
public:
  explicit Spreadsheet(QObject *parent = nullptr);
  Q_INVOKABLE QVariant evaluateFormula(const QString &formula);

signals:
  void cellChanged(int row, int column, const QString &value);
};

#endif // SPREADSHEET_H