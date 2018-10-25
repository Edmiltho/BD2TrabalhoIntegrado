# TRABALHO 01:  Flanelinha Express.

Trabalho desenvolvido durante a disciplina de BD

    O referido projeto poderá ser:
        a) Um novo sistema/projeto 
        b) Uma expansão de sistema/projeto previamente desenvolvido em disciplinas anteriores 
        (ex: Expansão dos módulos do sistema desenvolvidos em BD1 - incremento mínimo de 50% nos 
        requisitos/complexidade)
        c) Nas avaliações parciais do professor, o grupo deverá anotar todas as observaçoes que forem feitas pelo professor 
        e pelo proprio grupo, enviar uma cópia das atividades por e-mail para o grupo e postar imediatamente estas observaçõe
        como tarefas a serem realizadas como tarefas por meio do gerenciador de projetos do git.
        d) Todas as tarefas devem ser realizadas e deve-se atentar para distribuição igualitária de atividades levando-se 
        em consideração o peso destas.
        e) Os tópicos numerados para cada atividade no devem ser removidos do trabalho. Entretanto, os conteúdos de exemplo 
        em cada tópico devem ser substituídos pelo conteúdo do trabalho em desenvolvimento.
        f) sprints de entrega serão quinzenais ou mensais definidos em aula juntamente com o professor
    
    OBS Importantes: 
        a) Os projetos/sistemas propostos serão validados pelo professor e pela turma
        b) Se possível é interessante que os novos sistemas estejam correlacionados com alguma área 
        previamente estudada pelo aluno
        c) Caso dependa de alguma instituição/parceiro externo, a base de dados e informações pertinentes 
        a esta devem ser obtidas no prazo de até 15 dias apos aprovação da proposta do trabalho 
        (caso contrário, nova proposta deverá ser apresentada a turma implicando logicamente em um prazo 
        mais curto para realização das atividades e conclusão do trabalho)
    
DICA: 
    O kickstart normalmente lança inovaçôes em termos de Sofwares e Apps, portanto pode ser interessante 
    olhar os lançamentos recentes para incrementar as possibilidades e aguçar a criatividade, o que pode 
    auxiliar o grupo com novas ideias na solução proposta. Acesse os links abaixo do para explorar sobre apps e softwares no Kickstarter.
    <br>
    https://www.kickstarter.com/discover/categories/technology/software
    <br>
    https://www.kickstarter.com/discover/categories/technology/apps


# Sumário

### 1. COMPONENTES<br>

Edmiltho dos A. Santos<br>
Caio Pupolin Antonio<br>
Matheus Barbosa<br>
José Guilherme Lima<br>


### 2.INTRODUÇÃO E MOTIVAÇAO<br>

> A grande necessidade dos motoristas em estacionar seus carros nos grandes centros, somada a grande concorrência das vagas, que por sua vez geram uma perda de tempo e estresse aos motoristas. Essa situação nos dá uma oportunidade de negócio junto aos estacionamentos privativos, na qual um cliente poderá pagar pela reserva de uma vaga, garantindo-a e evitando possíveis transtornos para se achar uma vaga posteriormente, com a comodidade de realizar essa tarefa pelo seu smartphone. <br>
>Facilitar a vida das pessoas que precisam estacionar seus veículos em grandes centros urbanos, onde há grande concorrência por vagas de estacionamento, através da reserva de vagas em estacionamentos privativos por meio de um aplicativo em seus smartphones. <br>

 

### 3.MINI-MUNDO <br>

> 
##### O Sistema proposto ao usuário apresenta as seguintes informações: 
O Flanelinha Express é um sistema desenvolvido para atender empresas de estacionamento privadas, localizadas em grandes centros urbanos, as quais possuem características comuns como funcionários administradores, que poderão gerenciar os estacionamentos registrando novos estacionamentos e vagas para cada um deles, e guardas, que permanecerão em cada um dos estacionamentos para vigiá-los e resolver problemas que porventura possam ocorrer, e estes poderão visualizar as vagas livres e ocupadas do estacionamento em que trabalham.

O Flanelinha Express permitirá que os clientes (motoristas) escolham um dos estacionamentos cadastrados no sistema e então visualizem as vagas livres e ocupadas desse estacionamento. A partir daí, os clientes poderão escolher uma das vagas livres e efetuar uma reserva, tudo isso de maneira remota através de aplicativo em seus smartphones.

Após escolher uma vaga livre, para reservá-la, o motorista deverá dar informações do veículo que vai ocupar a vaga, informar o horário de sua entrada na vaga e efetuar o pagamento da reserva com seu cartão de crédito cadastrado, garantindo assim sua vaga por uma hora. A reserva faz com que o motorista garanta a utilização de uma determinada vaga por uma hora, a contar a partir da hora de entrada na vaga que ele informou. Qualquer reserva tem duração de uma hora.

Quando um motorista sair de sua vaga, o sistema verificará sua situação que poderá ser uma das duas:
    1. O motorista utilizou a vaga dentro do tempo da reserva (uma hora), então o sistema entende que este motorista não possui débitos com o estacionamento e então pode ser liberado.
    2. O motorista utilizou a vaga além do tempo da reserva (mais de uma hora), então o sistema gerará uma cobrança com o valor que este motorista terá que pagar. Após o pagamento desta cobrança, também feita pelo aplicativo (através de cartão de crédito), o sistema reconhecerá que a saída do motorista do estacionamento está permitida.

Funcionários administradores poderão cadastrar, editar e excluir vagas e estacionamentos e saber quais vagas estão ocupadas ou livres de forma visual. O guarda poderá apenas visualizar as vagas livres e ocupadas do estacionamento que está vigiando.

De funcionários e motoristas serão armazenados nome, telefone, email, endereço e CPF. Especificamente, serão armazenados para um motorista o número da sua CNH e informações de cartão de crédito (número, código de segurança, titular e validade).

Quanto às informações de cada estacionamento, serão armazenadas: quantidade de vagas, endereço, valor da hora de utilização de uma vaga e sua localização para o GPS (latitude e longitude).

Sobre a vaga, é importante saber a qual estacionamento ela pertence, o seu número identificador, e sua localização para o GPS (latitude e longitude).

<br>

[Mockup App](https://github.com/GrupoDaVaga/trab01/blob/david/mockups/ESTACIONA%20APP.pdf)<br>
[Mockup App 2](https://github.com/Edmiltho/BD2TrabalhoIntegrado/blob/master/Prot%C3%B3tipo%20telas/prototipoTelasEstaciona.pdf)<br>
[Mockup Web](https://github.com/GrupoDaVaga/trab01/blob/david/mockups/ESTACIONA%20WEB.pdf)  

OBS: Os mockup's podem estar desatualizados devido a mudanças que ocorreram durante o projeto após a licensa do mesmo ter expirado, e como podem ver nesta [imagem](https://github.com/GrupoDaVaga/trab01/blob/master/mockups/balsamiq.png), a licença gratuita não permite edições nos mockups após 30 dias de uso

#### 4.1 TABELA DE DADOS DO SISTEMA:
[Tabela de dados Flanelinha Express](https://github.com/GrupoDaVaga/trab01/blob/master/Planilha/Tabela%20de%20Dados%20EstacIonAfinal.xlsx)
    
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?<br>
   > O sistema fornecerá relatórios sobre a vaga que foi reservada e as informações do cliente, da empresa responsável pela vaga, da reserva (preço, data) e do veículo do cliente. Os principais relatórios obtidos serão: <br><br>
   - Vagas disponíveis;<br>
   - Relatório sobre determinada vaga;<br>
   - Relatório sobre a reserva da vaga;<br>
   - Relatório sobre determinado cliente;<br>
   - Histórico de reservas de determinado cliente;<br>
   - Créditos restantes de um determinado cliente;<br>
   - Relatório da empresa responsável pela vaga;<br>
   - Relatório sobre o veículo de determinada reserva;<br>
   - Histórico de veículos estacionados em determinada vaga.
    

### 5.MODELO CONCEITUAL<br>
       
![Modelo conceitual - PNG](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/Modelos_%20Conceitual%20-%20L%C3%B3gico%20-%20F%C3%ADsico%20-%20Inserts/Alteracao%2011-10/modConceitual_4V2.png)

[Modelo Conceitual - Formato BrModelo](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/Modelos_%20Conceitual%20-%20L%C3%B3gico%20-%20F%C3%ADsico%20-%20Inserts/Alteracao%2011-10/modConceitual_4V2.brM3)    

    
#### 5.1 Validação do Modelo Conceitual
    [Grupo do Blackcard]: Matheus Pinto, Pedro Cruz, Andre Phelipe, Herbert Wander, Jack Johnson.
    [Grupo EstacIonA (Analise)]: Caicke Pinheiro, Andreangelo Patuzzo, Emanuel Gloria, Anne Caroline.

#### 5.2 DECISÕES DE PROJETO    
 * **Dos preços e taxas**: Decidimos que cada estacionamento poderá cobrar um preço diferenciado na primeira hora em relação as demais, por exemplo: primeira hora: R$7,00, demais horas: R$2,00
 * **Da autenticação e autorização**: será feita por outro sistema isolado que terá sua própria base de dados, por isso campos como "login" e "senha" não serão armazenados neste banco.
 * **Do campo varchar**: 
   1. Optamos por não utilizarmos um limitador no campo varchar (Ex: varchar(45)), tendo consciência que este limitador é uma questão de boas práticas, porém sabemos também que, como utilizaremos Postgres neste caso o banco cuida de armazenar somente os byts utilizados, sendo assim não disperdiça recursos, que para este momento seria mais interessante, visto que ainda estamos passando por fortes alterações de estrutura do banco e esta flexibilidade diminui consideravelmente o retrabalho constante. Informação encontrada em: [Postgres documentation](https://www.postgresql.org/docs/9.3/static/datatype-character.html)
   2. Campos como CPF, CNH, número do cartão e similares consideramos que o formato destes dados serão tratados no front-end, enviando para o banco o padrão correto, por isso, decidimos manter o tipo varchar para os mesmos. Descartamos as opções integer ou outro tipo numérico visto que estes dados são apenas identificadores e não quantitativos, além de serem campos muito grandes o que necessitaria de mais recurso de aramzenamento. 
    

>## Data de Entrega: (23/08/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    vaga : Tabela que armazena informações referente as vagas.
    id_vaga: Campo que contem o ID de armazenamento da vaga.
    Pagamento_Estacionamento: Tabela que armazena os dados referentes aos pagamentos.
    Cartao: Tabela que armazena dados do cartão de crédito do cliente.
    Motorista: Tabela onde armazena dados referentes ao motorista.
    cpf: Campo onde fica armazenado o Cadastro de Pessoa Fisica de cada cliente.
    email: Campo onde é armazenado o email de cada cliente.
    tel: Campo onde fica armazenado o telefone do cliente.
    cnh:Campo com numero do CNH do cliente.
    veiculo: Tabela onde fica armazenado dados referentes aos veiculos dos condutores.
    placa: Tabela onde armazena o numero da placa de cada veiculo.
    estacionamento: Tabela onde fica armazenado dados referentes a reserva feita pelo usuario.
    val_hora: Campo onde fica armazenado o valor/hora.
    validade:Campo com dados referente a data de validade do cartão do cliente
    nome_impressão: Campo com dados referente ao nome do cliente no cartão.
    numero: Campo que armazena o numero do cartão do cliente.
    endereco: Tabela com dados do endereço em relação ao estacionamento.


### 6	MODELO LÓGICO<br>
[Modelo Lógico - BrModelo](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/Modelos_%20Conceitual%20-%20L%C3%B3gico%20-%20F%C3%ADsico%20-%20Inserts/Alteracao%2011-10/modConceitual_4V2.brM3)

![Modelo Lógico - PNG](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/Modelos_%20Conceitual%20-%20L%C3%B3gico%20-%20F%C3%ADsico%20-%20Inserts/Alteracao%2011-10/L%C3%B3gico_1V2.png)

### 7	MODELO FÍSICO<br>
[Modelo Físico - SQL](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/Modelos_%20Conceitual%20-%20L%C3%B3gico%20-%20F%C3%ADsico%20-%20Inserts/Alteracao%2011-10/ModeloFisico.txt)

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a:
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
Utilizamos o PDI para gerar aleatóriamente os dados para o banco e através de alguns scripts em javascript ( dentro do PDI ) conseguimos gerar todos os dados e todas as relações, como o código abaixo.<br>
![Codigo](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Dados%208.1/codigoReserva.PNG)
    
    
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS (ARQUIVO ÚNICO COM):
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários

[SQL Criação de tabelas](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/Modelos_%20Conceitual%20-%20L%C3%B3gico%20-%20F%C3%ADsico%20-%20Inserts/Alteracao%2011-10/ModeloFisico.txt)

[Jobs de população](https://github.com/Edmiltho/FlanelinhaExpress/tree/master/Job)

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	GERACAO DE DADOS (MÍNIMO DE 10 REGISTROS PARA CADA TABELA NO BANCO DE DADOS)<br>

## Data de Entrega: (06/09/2018)

<br>
OBS: Incluir para os tópicos 9.2 e 9.3 as instruções SQL + imagens (print da tela) mostrando os resultados.<br>

#### 9.2	SELECT DAS TABELAS COM PRIMEIROS 10 REGISTROS INSERIDOS <br> 
   `Select * from estacionamento limit 10`
   <br>
   ![Select Estacionamento](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Select%209.2/estacionamento2.PNG)
   <br>
   `Select * from vaga limit 10`
   <br>
   ![Select vaga](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Select%209.2/vaga.PNG)
   <br>
   `Select * from veiculo limit 10`
   <br>
   ![Select veiculo](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Select%209.2/veiculo.PNG)
   <br>
   `Select * from pagamento_estacionamento limit 10`
   <br>
   ![Select pagamento_estacionamento](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Select%209.2/pagamento_estacionamento.PNG)
   <br>
   `Select * from reserva limit 10`
   <br>
   ![Select reserva](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Select%209.2/reserva.PNG)
   <br>

#### 9.3	SELECT DAS VISÕES COM PRIMEIROS 10 REGISTROS DA VIEW <br>
        a) Descrição da view sobre que grupos de usuários (operacional/estratégico) <br>
        e necessidade ela contempla.
        b) Descrição das permissões de acesso e usuários correlacionados (após definição <br>
        destas características)
        c) as funcionalidades informadas no minimundo ou nos mockups(protótipos), que representarem 
        views do sistema (relatórios, informações disponíveis para os usuários, etc) devem estar 
        presentes aqui. 

**View Pessoa Juridica**<br>
Essa view tem o objetivo de juntar as informações de pessoa com pessoa juridica<br>
![View Pessoa Juridica](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Views%209.3/view_pessoa_juridica.PNG)<br>

**View Pessoa Fisica**<br>
Essa view tem o objetivo de juntar as informações de pessoa com pessoa física<br>
![View Pessoa Fisica](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Views%209.3/view_pessoa_fisica.PNG)<br>


**View Estacionamento**<br>
Essa view tem o objetivo de mostrar todas as informações relacionadas ao estacionamento que são importantes para o cliente<br>
![View estacionamento](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Views%209.3/view_estacionamento.PNG)<br>

**View Pagamento**<br>
Essa view tem o objetivo de mostrar as informações relacionadas as reservas e pagamentos de uma vaga<br>
![View Pagamento](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Views%209.3/view_pagamento.PNG)<br>
#### 9.4	LISTA DE CODIGOS DAS FUNÇÕES, ASSERÇOES E TRIGGERS<br>
        Detalhamento sobre funcionalidade de cada código.
        a) Objetivo
        b) Código do objeto (função/trigger/asserção)
        c) exemplo de dados para aplicação
        d) resultados em forma de tabela/imagem
<br>

## Data de Entrega: (27/09/2018)

#### 9.5	Administração do banco de dados<br>
        Descrição detalhada sobre como serão executadas no banco de dados as <br>
        seguintes atividades.
        a) Segurança e autorização de acesso: especificação básica de configurações de acesso remoto
        b) Estimativas de aquisição de recursos para armazenamento e processamento da informação
        c) Planejamento de rotinas de manutenção e monitoramento do banco
        d) Plano com frequencia de análises visando otimização de performance
<br>

#### 9.6	GERACAO DE DADOS (MÍNIMO DE 1,5 MILHÃO DE REGISTROS PARA PRINCIPAL RELAÇAO)<br>
        a) principal tabela do sistema deve ter no mínimo 1,5 milhão de registros
        b) tabelas diretamente relacionadas a tabela principal 100 mil registros
        c) tabelas auxiliares de relacao multivalorada mínimo de 10 registros
        d) registrar o tempo 
        
Nosso principal fluxo é composto pelas tabelas reserva, estacionamento, vaga, veiculo, pagamento_estacionamento. Fizemos um count para demonstrar a quantidade de linhas em cada tabela

- Tabela estacionamento<br>
![estacionamento](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Popular%209.6/quantidadeEstacionamento.PNG)<br>
- Tabela vaga<br>
![vaga](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Popular%209.6/quantidadeVaga.PNG)<br>
- Tabela pagamento_estacionamento<br>
![pagamento_estacionamento](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Popular%209.6/quantidadePagamentoEstacionamento.PNG)<br>
- Tabela veiculo<br>
![veiculo](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Popular%209.6/quantidadeVeiculo.PNG)<br>
- Tabela reserva<br>
![reserva](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Popular%209.6/quantidadeReserva.PNG)<br>

    Utilizamos o PDI para criar jobs para popular as tabelas do banco de dados. 
    Populamos as tabelas com as seguintes quantidades:<br>
    Bairro - 150<br>
    Cargo - 3<br>
    Cartao - 50.000<br>
    Cidade - 100<br>
    Contato - 150.000<br>
    Endereco - 1.000<br>
    Estacionamento - 100.000<br>
    Estado - 10<br>
    Marca - 50<br>
    Modelo - 200<br>
    Motorista - 20.000<br>
    Pagamento Estacionamento - 500.000<br>
    Pessoa - 100.000<br>
    Pessoa Fisica - 99.000<br>
    Pessoa Juridica - 1.000<br>
    Tipo_contato - 3<br>
    Trabalha - 2.000<br>
    Vaga - 500.000<br>
    Veiculo - 500.000<br>
    Reserva - 1.500.000<br>
    Funcionario - 2.000
    
Popular todas essas tabelas demorou cerca de 5 minutos conforme as imagens abaixo<br>
Inicio<br>
![Inicio](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Popular%209.6/StartTimePopula.PNG)<br>
Fim<br>
![fim](https://github.com/Edmiltho/FlanelinhaExpress/blob/master/SQL/Popular%209.6/EndTimePopula.PNG)<br>
## Data de Entrega: (31/10/2018)

#### 9.7	Backup do Banco de Dados<br>
        Detalhamento do backup.
        a) Tempo
        b) Tamanho
        c) Teste de restauração (backup)
        d) Tempo para restauração
        e) Teste de restauração (script sql)
        f) Tempo para restauração (script sql)
<br>


#### 9.8	APLICAÇAO DE ÍNDICES E TESTES DE PERFORMANCE<br>
    a) Lista de índices, tipos de índices com explicação de porque foram implementados nas consultas 
    b) Performance esperada VS Resultados obtidos
    c) Tabela de resultados comparando velocidades antes e depois da aplicação dos índices (constando velocidade esperada com planejamento, sem indice e com índice Vs velocidade de execucao real com índice e sem índice).
    d) Escolher as consultas mais complexas para serem analisadas (consultas com menos de 2 joins não serão aceitas)
    e) As imagens do Explain devem ser inclusas no trabalho, bem como explicações sobre os resultados obtidos.
    f) Inclusão de tabela mostrando as 10 execuções, excluindo-se o maior e menor tempos para cada consulta e 
    obtendo-se a media dos outros valores como resultado médio final.
<br>

## Data de Entrega: (22/11/2018)

<br>   

#### 9.9 TRABALHO EM DUPLA - Machine Learning e Data Mining
### Estudar algum dos algoritmos abaixo
### Incluir no trabalho os seguintes tópicos: 
* Explicação/Fundamentação teórica sobre o método, objetivos e restrições! (formato doc/odt ou PDF)
* Onde/quando aplicar 
> ##### Estudar e explicar artigo que aplique o método de mineração de dados/machine learning escolhido
* exemplo de uso/aplicação 
> ##### a) Implementar algoritmo de básico de exemplo obtido na literatura (enviar código executável junto do trabalho com detalhamento de explicação para uso passo a passo)
> #####  b) Aplicar em alguma base de dados aberta (governamental ou sites de datasets disponíveis), registrar e apresentar resultados e algoritmo desenvolvido.

Exemplos de métodos/algoritmos a serem estudados
* "Nearest Neighbors" 
* "Linear SVM" 
* "RBF SVM" 
* "Decision Tree" 
* "Random Forest"
* Pca  
* "Naive Bayes"
<br>
Referência: http://scikit-learn.org/stable/index.html
<br>
Referências adicionais:
Scikit learning Map : http://scikit-learn.org/stable/tutorial/machine_learning_map/index.html
Machine learning in Python with scikit-learn: https://www.youtube.com/playlist?list=PL5-da3qGB5ICeMbQuqbbCOQWcS6OYBr5A



<br>

## Data de Entrega: (06/12/2018)


### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO/ SLIDES E ENTREGA FINAL<br>
       
### 11  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")
