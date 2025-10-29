# 📸 Como Adicionar Screenshots

## Instruções para adicionar a imagem do aplicativo

1. **Salve a screenshot**:
   - Salve a imagem que você tem como `app_screenshot.png` nesta pasta
   - O arquivo deve ter o nome exato: `app_screenshot.png`

2. **Formatos recomendados**:
   - **Formato**: PNG (para melhor qualidade)
   - **Largura recomendada**: 300-400px (para não ficar muito grande no README)
   - **Proporção**: Mantenha a proporção original da tela do seu dispositivo

3. **Como fazer o commit**:
   ```bash
   git add images/screenshots/app_screenshot.png
   git commit -m "docs: adiciona screenshot da interface principal"
   git push
   ```

4. **Verificação**:
   - Após fazer o push, a imagem aparecerá automaticamente no README do GitHub
   - Se a imagem não aparecer, verifique se o nome do arquivo está correto

## Estrutura atual do README

A imagem foi configurada para aparecer na seção "Screenshots" do README, entre as características principais e as tecnologias utilizadas.

**Referência no README**:
```markdown
<img src="images/screenshots/app_screenshot.png" alt="Gerador de Números - Interface Principal" width="300">
```

## Dicas adicionais

- Você pode adicionar mais screenshots criando arquivos como:
  - `app_screenshot_light.png` (se tiver tema claro)
  - `app_screenshot_form_validation.png` (validação de formulário)
  - `app_screenshot_history.png` (histórico de números)

- Para múltiplas imagens, você pode criar uma galeria no README:
```markdown
<div align="center">
  <img src="images/screenshots/app_screenshot.png" width="250">
  <img src="images/screenshots/app_screenshot_2.png" width="250">
  <img src="images/screenshots/app_screenshot_3.png" width="250">
</div>
```