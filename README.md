# 🛡️ Contrato Solidity com Modificador

Este projeto contém um contrato inteligente simples escrito em Solidity, que demonstra o uso de **modificadores** — uma funcionalidade poderosa usada para adicionar validações reutilizáveis.

## 📁 Estrutura do Projeto


## ⚙️ Sobre o Contrato

O contrato `modificador.sol` inclui:

- ✅ Um **modificador personalizado** para restringir o acesso a determinadas funções;
- 🔐 Um sistema simples de controle de proprietário (owner);
- ✍️ Funções protegidas pelo modificador.

### ✨ Funcionalidades

- Definição automática do `owner` no deploy;
- Função `apenasDono()` que só pode ser chamada pelo proprietário;
- Modificador `somenteDono` para limitar acesso.

## 🧪 Exemplo de uso

```solidity
modifier somenteDono() {
    require(msg.sender == dono, "Apenas o dono pode executar esta funcao");
    _;
}
