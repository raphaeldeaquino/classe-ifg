# Template classe-ifg

Modelo de documentos acadêmicos em LaTeX do Instituto Federal de Goiás (IFG).

Modelo canônico para Trabalho de Conclusão de Curso (TCC), monografia de especialização, dissertação de mestrado, tese de doutorado e qualificações.

Esse projeto não está vinculado a nenhum órgão do IFG.

Qualquer problema com a utilização ou com o modelo em si, basta criar um issue aqui no GitHub no nosso issue tracker: [issues](../../issues).


## Modelo em PDF

Se você quer ter uma ideia de como é o modelo, a compilação deve resultar no seguinte [PDF](../../../classe-ifg/blob/master/modelo-ifg.pdf).


## Material de apoio

Para aprender a utilizar o modelo assista o minicurso ministrado em 10/02/2021 disponível [aqui](https://drive.google.com/file/d/1T36KlAAG79cMF4r0tCW3uirqEbTuoB11/view?usp=sharing).

Consulte também os [slides](https://www.dropbox.com/s/vet8s4kcp9nbt0c/slides-minicurso-latex.pdf?dl=0) do minicurso.


## Baixando diretamente modelo IFG

Caso queria, pode baixar diretamente o arquivo `zip` em [releases](../../releases) e descompacte o arquivo.


## Utilizando `git` para baixar o modelo IFG

No diretório do seu projeto faça um clone (recursivo) dos arquivos do repositório:
```bash
git clone --recursive https://github.com/raphaeldeaquino/classe-ifg
```

Este repositório já contém um exemplo de dissertação com uso avançado de conceitos e LaTeX. 

Se você tiver interesse em utilizar esse **template**, você precisa preencher os seus dados como nome do orientador, coorientador, seu nome, nome do seu curso, câmpus, etc.

Para isso altere os dados fictícios para os corretos no arquivo `modelo-ifg.tex`, que é o arquivo principal do **template** utilizado, carrega todos os pacotes necessários e inclui os arquivos LaTeX que contém as partes da sua dissertação.


## Utilizando Overleaf para digitar seu documento com modelo IFG

Se você quiser, pode utilizar o [Overleaf](https://www.overleaf.com), um sistema de editoração *online* de textos em LaTeX.

Se você já tiver uma conta no Overleaf pode fazer o *upload* do arquivo `.zip` baixado em [releases](../../releases).

Você também pode fazer o *upload* automaticamente para Overleaf com a última versão disponível clicando [aqui](https://overleaf.com/docs?snip_uri=https://github.com/raphaeldeaquino/classe-ifg/archive/main.zip).

## Mudanças

Para ver as mudanças, acesse o histórico do `git` no endereço [commits/main](../../commits/main).

Ou clone este repositório e execute seguinte comando do cliente git:
```bash
# https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History
git log
```


# Licença

```
Licença MIT

Copyright (c) 2020 Raphael Gomes

A permissão é concedida, gratuitamente, a qualquer pessoa que obtenha uma cópia desta 
classe e arquivos de documentação associados, para usar sem restrição, incluindo, sem 
limitação, os direitos para usar, copiar, modificar, mesclar, publicar, distribuir, 
sublicenciar e/ou vender cópias da classe, e para permitir as pessoas a quem a classe é 
fornecida para fazê-lo, sujeito às seguintes condições:

O aviso de direitos autorais acima e este aviso de permissão devem ser incluídos em todos 
cópias ou partes substanciais da classe.

A CLASSE É FORNECIDA "COMO ESTÁ", SEM GARANTIA DE QUALQUER TIPO, EXPRESSA OU IMPLÍCITA, 
INCLUINDO, MAS NÃO SE LIMITANDO ÀS GARANTIAS DE COMERCIALIZAÇÃO, ADEQUAÇÃO A UMA 
FINALIDADE ESPECÍFICA E NÃO VIOLAÇÃO. EM NENHUMA HIPÓTESE O AUTORES OU TITULARES DE 
DIREITOS AUTORAIS SÃO RESPONSÁVEIS POR QUALQUER RECLAMAÇÃO, DANOS OU OUTROS 
RESPONSABILIDADE, SEJA EM AÇÃO DE CONTRATO, DELITO OU DE OUTRA FORMA, DECORRENTE DE, FORA 
DE OU EM CONEXÃO COM A CLASSE OU O USO OU OUTRAS NEGOCIAÇÕES NO PROJETO.
```

