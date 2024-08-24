# Calculadora de Metabolismo Basal

Esta é uma simples aplicação em Ruby que calcula o seu Metabolismo Basal (TMB) e estima o seu consumo diário de calorias com base em seu nível de atividade física.

## Como Funciona

1. **Entrada de Dados**: O programa solicita informações como nome, peso, altura, idade e nível de atividade física.
2. **Cálculo do Metabolismo Basal**: Baseado na fórmula de Harris-Benedict, o programa calcula o TMB.
3. **Estimativa de Calorias Diárias**: Dependendo do nível de atividade física informado, o programa multiplica o TMB por um fator correspondente para estimar o consumo diário de calorias.

## Fórmula Utilizada

A fórmula utilizada para calcular o Metabolismo Basal é:


Metabolismo Basal (TMB) = 88.362 + (13.397 * peso em kg) + (4.799 * altura em cm) - (5.677 * idade em anos)

## Fatores de Atividade Física

- **1 - Sedentário**: Pouca ou nenhuma atividade física (TMB x 1.2)
- **2 - Levemente ativo**: Atividade leve (exercício leve 1-3 dias por semana) (TMB x 1.375)
- **3 - Moderadamente ativo**: Atividade moderada (exercício moderado 3-5 dias por semana) (TMB x 1.55)
- **4 - Altamente ativo**: Atividade intensa (exercício intenso 6-7 dias por semana) (TMB x 1.725)
- **5 - Extremamente ativo**: Atividade muito intensa (trabalho físico pesado, treinamento atlético) (TMB x 1.9)

## Exemplo de Uso

Ao rodar a aplicação, o usuário é solicitado a inserir:

- Nome
- Peso em quilogramas
- Altura em centímetros
- Idade em anos
- Nível de atividade física (1-5)

O programa então calcula e exibe o metabolismo basal e o consumo diário de calorias recomendado.

### Exemplo de Entrada

Nome: João; Peso - kg: 70; Altura - cm: 175; Idade - anos: 30
Níveis de atividade: 1 - Sedentário 2 - Levemente ativo 3 - Moderadamente ativo 4 - Altamente ativo 5 - Extremamente ativo
Opção: 3

Metabolismo basal: 1695.6670000000001
João, seu consumo diário de calorias
deve ser 2628.2838500000003


## Como Executar

1. Certifique-se de ter o Ruby instalado em seu sistema.
2. Copie o código para um arquivo chamado `calculadora_metabolismo.rb`.
3. Execute o programa no terminal com o comando:

```bash
ruby calculadora_metabolismo.rb


Este `README.md` fornece uma descrição clara da funcionalidade da aplicação, instruções sobre como usá-la e sugestões para melhorias futuras.

