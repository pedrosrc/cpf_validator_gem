# 📛 CPF Validator Gem

Valide números de CPF de forma simples e eficiente com Ruby puro.

---

## ✨ Instalação

Adicione esta linha ao seu `Gemfile`:

```ruby
gem 'cpf_validator_gem', git: 'https://github.com/pedrosrc/cpf_validator_gem'
```
Execute
```
bundle install
```
Ou instale diretamente:

```ruby
gem install specific_install
gem specific_install https://github.com/pedrosrc/cpf_validator_gem
```

## 💡 Uso

```ruby
require 'cpf_validator_gem'

# Forma direta
CpfValidatorGem.valid?('123.456.789-09') # => { status: false, message: "🔴 O CPF 123.456.789-09 informado é inválido." }

CpfValidatorGem.valid?('11144477735')    # => { status: true, message: "🟢 O CPF 11144477735 informado é válido." }
```

## ✅ Métodos disponíveis
`CpfValidatorGem.valid?(cpf_string)`
- Valida se o CPF informado é válido.
- Aceita strings com ou sem formatação (pontos e traço).
- Retorna true se o CPF é válido, false caso contrário.