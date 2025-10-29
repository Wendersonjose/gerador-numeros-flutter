// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Gerador de Números - Teste de Interface', (
    WidgetTester tester,
  ) async {
    // Build da aplicação
    await tester.pumpWidget(const GeradorApp());

    // Verifica se o título está presente
    expect(find.text('Gerador de Números'), findsOneWidget);

    // Verifica se os campos de entrada estão presentes
    expect(find.text('Min:'), findsOneWidget);
    expect(find.text('Máx:'), findsOneWidget);

    // Verifica se o botão "Gerar" está presente
    expect(find.text('Gerar'), findsOneWidget);

    // Verifica se o FloatingActionButton está presente
    expect(find.byIcon(Icons.casino), findsOneWidget);

    // Verifica valores padrão nos campos
    expect(find.text('1'), findsOneWidget); // valor padrão mín
    expect(find.text('10'), findsOneWidget); // valor padrão máx
  });

  testWidgets('Gerador de Números - Teste de Funcionalidade', (
    WidgetTester tester,
  ) async {
    // Build da aplicação
    await tester.pumpWidget(const GeradorApp());

    // Testa geração com valores padrão
    await tester.tap(find.text('Gerar'));
    await tester.pump();

    // Procura por qualquer texto que seja um número válido
    final textWidgets = tester.widgetList<Text>(find.byType(Text));
    bool numeroEncontrado = false;

    for (final textWidget in textWidgets) {
      final text = textWidget.data;
      if (text != null && text.isNotEmpty) {
        final numero = int.tryParse(text);
        if (numero != null && numero >= 1 && numero <= 10) {
          numeroEncontrado = true;
          break;
        }
      }
    }

    expect(numeroEncontrado, true, reason: 'Deve gerar um número entre 1 e 10');
  });

  testWidgets('Gerador de Números - Teste de Validação', (
    WidgetTester tester,
  ) async {
    // Build da aplicação
    await tester.pumpWidget(const GeradorApp());

    // Limpa o campo mínimo
    await tester.tap(find.widgetWithText(TextFormField, '1'));
    await tester.pump();
    await tester.enterText(find.widgetWithText(TextFormField, '1'), '');

    // Tenta gerar sem valor mínimo
    await tester.tap(find.text('Gerar'));
    await tester.pump();

    // Deve aparecer mensagem de erro
    expect(find.text('Obrigatório'), findsOneWidget);
  });

  testWidgets('Gerador de Números - Teste de Intervalo Personalizado', (
    WidgetTester tester,
  ) async {
    // Build da aplicação
    await tester.pumpWidget(const GeradorApp());

    // Altera os valores dos campos
    await tester.enterText(find.widgetWithText(TextFormField, '1'), '5');
    await tester.enterText(find.widgetWithText(TextFormField, '10'), '15');

    // Gera número
    await tester.tap(find.text('Gerar'));
    await tester.pump();

    // Verifica se o número está no intervalo [5, 15]
    final resultText = tester.widget<Text>(find.byType(Text).last).data;
    if (resultText != null && resultText.isNotEmpty) {
      final numero = int.tryParse(resultText);
      if (numero != null) {
        expect(numero >= 5 && numero <= 15, true);
      }
    }
  });

  testWidgets('Gerador de Números - Teste do FloatingActionButton', (
    WidgetTester tester,
  ) async {
    // Build da aplicação
    await tester.pumpWidget(const GeradorApp());

    // Testa o FloatingActionButton
    await tester.tap(find.byIcon(Icons.casino));
    await tester.pump();

    // Deve gerar um número
    final allTexts = tester.widgetList<Text>(find.byType(Text));
    bool hasNumber = false;

    for (final textWidget in allTexts) {
      final text = textWidget.data;
      if (text != null) {
        final numero = int.tryParse(text);
        if (numero != null && numero >= 1 && numero <= 10) {
          hasNumber = true;
          break;
        }
      }
    }

    expect(hasNumber, true);
  });
}
