# spec/cpf_validator_gem_spec.rb
require 'cpf_validator_gem'
require 'json'

RSpec.describe CpfValidatorGem do
  describe ".validate" do
    context "com CPF válido" do
      it "retorna status true e mensagem de sucesso" do
        cpf = "111.444.777-35"
        result = JSON.parse(CpfValidatorGem.valid?(cpf))

        expect(result["status"]).to eq(true)
        expect(result["message"]).to eq("🟢 O CPF 11144477735 informado é válido.")
      end
    end

    context "com CPF inválido" do
      it "retorna status false e mensagem de erro para CPF com dígitos inválidos" do
        cpf = "123.456.789-00"
        result = JSON.parse(CpfValidatorGem.valid?(cpf))

        expect(result["status"]).to eq(false)
        expect(result["message"]).to eq("🔴 O CPF 12345678900 informado é inválido.")
      end

      it "retorna status false para CPF com todos os dígitos iguais" do
        cpf = "111.111.111-11"
        result = JSON.parse(CpfValidatorGem.valid?(cpf))

        expect(result["status"]).to eq(false)
        expect(result["message"]).to eq("🔴 O CPF 11111111111 informado é inválido.")
      end

      it "retorna status false para CPF com menos de 11 dígitos" do
        cpf = "123.456.789"
        result = JSON.parse(CpfValidatorGem.valid?(cpf))

        expect(result["status"]).to eq(false)
        expect(result["message"]).to eq("🔴 O CPF 123456789 informado é inválido.")
      end
    end
  end
end
