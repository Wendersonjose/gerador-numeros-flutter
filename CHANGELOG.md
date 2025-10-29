# Changelog

Todas as mudanças notáveis neste projeto serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/),
e este projeto adere ao [Versionamento Semântico](https://semver.org/lang/pt-BR/spec/v2.0.0.html).

## [2.0.0] - 2025-10-29

### 🔥 Refatoração Completa
- **BREAKING CHANGE**: Reformulação completa da aplicação
- Migração de "Sorteador" para "Gerador" com funcionalidades avançadas
- Arquitetura completamente redesenhada

### ✨ Novos Recursos
- **Intervalos Personalizáveis**: Definição livre de valores mínimo e máximo
- **Tema Escuro Premium**: Interface moderna com Material Design 3
- **Sistema de Validação**: Validação robusta de formulários com feedback visual
- **Histórico Inteligente**: Lista persistente dos últimos números gerados
- **Animações Suaves**: TransIções elegantes com AnimatedSwitcher
- **Design Responsivo**: Layout adaptável com ConstrainedBox (max 420px)
- **Controle de Entrada**: FilteringTextInputFormatter apenas para números

### 🎨 Interface Redesenhada
- **Tema Escuro**: 
  - Background principal: #121212
  - Card container: #1E1E1E
  - Cor primária: #7C4DFF (roxo vibrante)
- **Layout Moderno**:
  - Card principal com bordas arredondadas (16px)
  - Sombras sutis para profundidade
  - Campos de texto com underline personalizado
  - Botão full-width com padding otimizado
- **Tipografia Aprimorada**:
  - Título: 22px, FontWeight.w600
  - Resultado: 48px, FontWeight.w600 com animação
  - Histórico: 18px com bullets personalizados

### 🛠️ Melhorias Técnicas
- **Separação de Widgets**: GeradorApp + Home para melhor organização
- **Gerenciamento de Estado Otimizado**: FormKey + TextEditingController
- **Validação em Múltiplas Camadas**:
  - Validação de formulário
  - Validação lógica (min ≤ max)
  - Feedback via SnackBar
- **Performance**: Uso de const constructors e otimizações

### 🧪 Testes Atualizados
- Suite completa de testes para nova funcionalidade
- Teste de interface com novos elementos
- Teste de validação de formulários
- Teste de intervalos personalizados
- Teste de FloatingActionButton
- Cobertura de casos extremos

### 📚 Documentação Atualizada
- README.md completamente reescrito
- DOCUMENTATION.md com análise das novas funcionalidades
- Testes documentados e comentados
- Changelog detalhado das mudanças

### � Migrações
- `main()` agora inicializa `GeradorApp` em vez de `MaterialApp` direto
- `Home` migrou de widget único para arquitetura com formulários
- Estado da aplicação expandido para incluir histórico e validação

## [1.0.0] - 2025-10-29 (Versão Anterior)

### ✨ Implementação Inicial
- Sorteador básico de números entre 1 e 100
- Interface simples com Material Design
- Botão único para sorteio
- FloatingActionButton alternativo
- Imagem decorativa estática
- Suporte multiplataforma básico

### 🎨 Interface Original
- AppBar com título "Sorteador de Números"
- Paleta: Cyan + Pink Accent
- Layout com Column simples
- Texto estático para exibição do resultado

### ⚙️ Implementação Técnica Inicial
- StatefulWidget básico
- String para armazenar resultado
- Geração aleatória simples (1-100)
- setState() para atualizações de UI

## [Unreleased] - Próximas Versões

### 📋 Planejado para v1.1.0
- [ ] Histórico de números sorteados
- [ ] Configuração de intervalos personalizados (min/max)
- [ ] Estatísticas de números gerados
- [ ] Animações de transição
- [ ] Modo escuro/claro

### 📋 Planejado para v1.2.0
- [ ] Internacionalização (i18n)
- [ ] Melhor suporte à acessibilidade
- [ ] Testes de integração
- [ ] Performance profiling

### 📋 Planejado para v2.0.0
- [ ] Refatoração para arquitetura mais robusta (BLoC/Provider)
- [ ] Múltiplos tipos de sorteio
- [ ] Sincronização em nuvem
- [ ] Compartilhamento social

---

## Convenções de Versionamento

- **MAJOR**: Mudanças incompatíveis na API
- **MINOR**: Funcionalidades adicionadas de forma retrocompatível
- **PATCH**: Correções de bugs retrocompatíveis

## Tipos de Mudanças

- **✨ Adicionado** para novas funcionalidades
- **🔄 Alterado** para mudanças em funcionalidades existentes
- **❌ Removido** para funcionalidades removidas
- **🐛 Corrigido** para correções de bugs
- **🔒 Segurança** para correções de vulnerabilidades

---

**Mantido por**: Wenderson  
**Projeto**: Sorteador de Números Flutter  
**Disciplina**: Sistemas de Computação Móvel - 4º Período ADS