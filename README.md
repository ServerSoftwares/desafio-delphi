# Desafio Delphi

## Passos para realizar o desafio

- Você deverá realizar o fork deste projeto e desenvolver o aplicativo conforme descrito abaixo
- Faça o checkout do fork e desenvolva sua aplicação localmente
- Após finalizar o desenvolvimento, realize um pull request para o nosso repositório

# Descritivo do desafio

## Aplicativo "Clientes"

## Objetivo:
Fazer um cadastro de clientes simples, porém completamente funcional e com bom acabamento.
Usando banco de dados postgres e técnicas de orientação a objetos.


Campos: ID, Nome, CPF/CNPJ, Tipo de Pessoa (Física,Jurídica), Telefone, Email, Data de Cadastro (Data/Hora), Ativo (Booleano)

## Especificações:

O cadastro deve ser orientado a objetos, de forma que as rotinas de gravação e consulta 
de clientes possam ser reutilizadas em um outro projeto ou em um outro contexto de rotina.Para isso, deve-se criar classes que contenham as rotinas de gravação e consulta de cliente de forma a separar essas rotinas do form(tela/ui). Pode-se utilizar qualquer padrão de modelagem que preferir, como por exemplo MVC. O importante é que as classes sejam criadas pelo candidato e essas classes possam ser reutilizadas. 


Não é permitido utilizar técnicas RAD no projeto, o programa deverá utilizar mapeamento objeto-relacional e representar 
os dados dos clientes através de classes e não através de Datasets. Querys devem ser utilizadas apenas para executar o SQL, 
e o resultado da consulta do banco deve ser "transferido" para uma lista ou collection de objetos de cliente. Somente a rotina que consulta os clientes no banco de dados irá utilizar o dataset, a UI deverá acessar apenas as classes de dados que representam os clientes.


## Funcionalidades:
- O programa tem que permitir consultar os clientes, filtrando por nome ("começando com" ou "contento"), por CPF, por Ativo e por data de cadastro.

- O programa tem que permitir incluir, editar e deletar um cliente.

- O programa deve ser bem simples. Não tem necessidade de fazer login, Ajuda ou telas de configuração ou tela de menus ou telas não relacionadas 
  ao cadastro de clientes.

- O programa tem que ser simples, porém completamente funcional e bem acabado. O programa não pode ter situações onde o usuário fique sem entender o que aconteceu ou tenha que reiniciar o programa.
  Também não pode em nenhuma situação exibir uma mensagem de erro estranha pro usuário que não seja tratada e com mensagem clara do que aconteceu. 
   Access violations em qualquer situação não será aceito e será solicitado que se realize o tratamento correto.

- o programa tem que ser bem usável e funcional, cuidar boas práticas de criação de UI. Por exemplo, no campo de telefone e 
  no campo de data, colocar máscaras  em vez de deixar um campo onde o usuário pode digitar qualquer coisa. no campo do Tipo de pessoa, 
  fazer uma lista (ComboBox ou Radio Buttons) onde ele seleciona entre Física ou Jurídica. 

- A tela principal da aplicação tem que exibir a lista de clientes do banco e um painel onde ele possa informar os filtros da consulta. 
  Deve abrir consultando todos os clientes da base e exibindo os clientes num Grid que possa ser mapeado para utilizar diretamente os dados dos objetos de cliente, 
  sem a necessidade de carregá-los 

- Ao clicar num cliente na tela, o programa deve habilitar os botões para editar ou excluir e somente depois de clicar nesses botões, a aplicação deve abrir uma segunda tela para o usuário visualizar os dados do cliente e poder editar. 

- Após incluir um cliente, o mesmo já tem que aparecer na lista, não precisando o usuário consultar novamente. Mesma coisa após excluir o cliente, 
o mesmo tem que sair da tela sem precisar re-consultar os clientes. Na edição, mesma coisa, se editar o nome, pode exemplo, o nome no cliente selecionado na 
grade tem que trocar na hora, sem a necessidade de realizar uma nova consulta no banco de dados.

- Não colocar todos os campos no grid na tela principal, somente os principais. O resto dos campos o usuário vê quando abrir o cliente (dando um duplo clique no cliente ou clicando em "Editar").

- Evite usar bibliotecas de componentes de terceiros, de forma que o programa possa ser compilado para avaliação sem a necessidade de ter que instalar componentes 
  (com exceção da biblioteca DevExpress, que já utilizamos aqui e esta não teria problema)

## O que será analisado:
- Basicamente, o acabamento geral da aplicação (tratamento de erros, validações e usabilidade da aplicação)
- A UI pode ser simples, mas tem que ter o mínimo de apresentação visual, como por exemplo, cuidar os "tab orders", 
  alinhar e distribuir bem os componentes na tela e fazer uma apresentação com aparência simples, porém que pareça profissional e 
  bem acabado e não pareça um programa feito por um amador.
- Código Fonte: Organização do fonte, cuidado na hora de nomear elementos, endentação, preocupação com criar 
  Um código que seja de fácil leitura e fácil manutenção, bem modularizado e bem organizado.
- Técnicas de orientação a objetos. O código da aplicação tem que estar todo em classes. Nos Forms deve conter 
  apenas a lógica e funcionalidade que são pertinentes a UI e interação com o usuário. Por exemplo, não coloque regras 
  de validações de campo no form e, sim, nas classes de dados, assim evita que se em outro momento essas validações 
  precisarem ser reutilizadas, não precise copiar e colar o código que está no form. ou se, por exemplo , na hipótese de um dia precisar fazer 
  uma interface WEB para o cadastro, se possa reutilizar o máximo possível do código já escrito nas classes. 
- Não deixe "leaks" de memória. Verificar se o programa está destruindo todos os elementos e instâncias que ele criou.​


## O que não será analisado
- Beleza da aplicação,Design gráfico de UI, uso de ícones, imagens,animações, etc... Apesar de ser importante, não é o foco deste exercício.
- Coisas extras implementadas que não foram solicitadas. Exemplo, perder tempo com "Firulas" não solicitadas.  
- Não precisa fazer relatório nem opções adicionais no cadastro. Focar no pedido no exercício. O programa tem que ser focado em visualizar, 
  filtrar e editar os clientes.
  
## Entrega
o programa deverá ser entregue o executável, que deve abrir sem erros, o fonte zipado e os scripts para criar a base de dados. Após a entrega, o programa será analisado e 
poderei solicitar alterações a fim de avaliar o entendimento do candidato referente ao que foi desenvolvido bem como avaliar como o candidato 
Responde e recebe críticas ao seu trabalho.

## Prazo: O prazo deverá ser calculado pelo candidato antes de iniciar o trabalho.


