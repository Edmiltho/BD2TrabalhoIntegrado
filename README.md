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


