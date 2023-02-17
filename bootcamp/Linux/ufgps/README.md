# Users, Folders, Groups and Permissions Structure

Neste diretório, estão armazenadas as soluções do projeto:
- Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões (__Bootcamp: Linux do Zero__)


Como pode ser visto, existem dois diretórios:
- __Done__: referente a tentativa realizada por conta própria, sem correção a correção do __Desafio__;
- __Adjusted__: script ajustado/modificado, conforme visualização da correção e testes realizados.

<hr>

## Scripts __DONE__
Seguindo as orientações do desafio, foi gerado um único script, nomeado como __config.sh__. Esse script, já iria realizar todo o processo de implementação da Estrutura, conforme abaixo:
- Remoção de usuários dos grupos
- Exclusão dos grupos
- Exclusão dos usuários
- Exclusão dos diretórios
- Criação dos diretórios
- Definição de permissões dos diretórios
- Criação dos grupos
- Definição de proprietários e grupos dos diretórios
- Criação de usuários
- Definição de grupos para usuários

<hr>

## Scripts __ADJUSTED__
Após visualização das correções do __Desafio__, além da execução de alguns testes com o Script, foi necessário fazer uma alteração do mesmo, buscando uma melhor estrutura para execução do script.

Inicialmente, o arquivo __config.sh__, foi separado, para melhor organização e performance na execução, ficando da seguindo forma:
- __config.sh__: arquivo executável, que irá realizar o gerenciamento do processo
- __configdel.sh__: arquivo executável, que irá realizar a exclusão de grupos, usuários e diretórios
- __configadd.sh__: arquivo executável, que irá realizar a criação de grupos, usuários e diretórios, além ds configurações de permissões, definidas no desafio

