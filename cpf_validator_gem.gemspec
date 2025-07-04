Gem::Specification.new do |spec|
  spec.name          = "cpf_validator_gem"
  spec.version       = "0.1.0"
  spec.authors       = ["Pedro Leonardo"]
  spec.email         = ["pedroleon.pc@outlook.com"]

  spec.summary       = "Validador de CPF em Ruby"
  spec.description   = "Valide CPF (Cadastro de Pessoas Físicas) com facilidade usando esta gem Ruby. Inclui métodos para validação, formatação e geração de CPF válido."
  spec.homepage      = "https://github.com/pedrosrc/cpf_validator_gem"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.7.0"
end
