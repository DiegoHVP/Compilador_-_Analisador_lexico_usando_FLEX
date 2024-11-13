# Compilador - Analisador Léxico usando FLEX

Este projeto foi desenvolvido no contexto do Laboratório 04 da disciplina de Compiladores e implementa um analisador léxico usando FLEX, com base no código do Laboratório 14 de Compiladores fornecido pelo professor Judson Santos Santiago. [Código original disponível aqui](https://github.com/JudsonSS/Compiladores/tree/2e1b81ba859e18e938ea149d1cef2edea04dde36/Labs/Lab14/Sample).

## Funcionalidades adicionadas

- **Suporte a Strings**: Reconhecimento de strings delimitadas por aspas duplas.
- **Identificadores com Sublinhado**: Permite que identificadores contenham o caractere `_` em qualquer posição.
- **Operadores Relacionais do C++**: Reconhecimento dos operadores relacionais `==`, `!=`, `<`, `<=`, `>`, `>=`.

## Instruções de Compilação e Execução

Para compilar o projeto usando CMake, siga estes passos:

```bash
mkdir build
cd build
cmake ..
make
```


Para executar o analisador léxico em um arquivo de teste, use o comando:
```bash
./sample < ../test.txt
```
