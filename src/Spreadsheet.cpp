#include "Spreadsheet.h"
#include <QRegularExpression>

Spreadsheet::Spreadsheet(QObject *parent) : QObject(parent) {}

QVariant Spreadsheet::evaluateFormula(const QString &formula) {
  if (formula.startsWith("=")) {
    // Basic formula parser
    QString trimmedFormula = formula.mid(1);
    if (trimmedFormula.startsWith("SUM")) {
      // Simple SUM parser for MVP
      return QVariant(0); // Placeholder logic
    }
  }
  return QVariant();
}