//
//  Documentacao.swift
//  Etropus
//
//  Created by David Lima de Oliveira 07/01/24.
//
/*

#### - DADOS E INFORMACOES SOBRE O PROJETO, MOTIVO, TEMPO, E RECURSOS UTILIZADOS - ####
 
 O nome Etropus vem da palavra SuportE ao contrario.
 
 Na teoria seria Suporte a Blockchain (Contatos/Usuarios de Criptomoedas).
 
 Aplicativo destinado para armazenar cadastro de clientes, com conhecimento, potencial e faz uso de criptomoedas. Dados que podem ser salvos e informacoes importante para um futuro contato para investimento em criptomoedas.
 
 Projeto elaborado para finalidade em participar no processo seletivo para programacao IOS.
 
 Iniciado no dia 13/12/23 termino no dia 07/01/2013
 
 Tempo de 26 dias. *Pelo fato de utilizar o mac emprestado. Hoje nao possuo MAC.
 
 No total em horas foi utilizada: 112 horas produtivas codando.
 
 Espero que tenha alcancado o que foi requisitado pela recrutadora, conforme orientacao da empresa.
 
 Obrigado pela oportunidade!
 
 David Lima de Oliveira.
 
 
 ### SOBRE O PROJETO, TESTES E DEMAIS INFORMACOES ###
 
 Nao foi utilizado nenhuma imagem externa, somente dados e informacoes nativas do proprio xcod e suas ferramentas e boas praticas da programacao.
 
 Teste Unitatio - EtropusBlockchainTests
 
 XCTest
 
 Os códigos que foram gerados e realizado o teste unitario para a classe `EtropusData`, foi o CoreData para uso de armazenamento da informacoes de contatos com procedencia para investimento em Criptomoedas.

 Levantamento de alguns pontos sobre o teste;
 
 1. **`MockPersistenceController`:**
    - Uma classe 'MOCK' que simula o controlador com uso de persistência junto ao CoreData.
    - Utiliza store em memória, `NSInMemoryStoreType`, facilitador dos testes sem alterar dados e infomracoes do banco principal.
 

 2. **`MockEtropusData`:**
    - Uma subclasse de `EtropusData` criada para os testes.
    - Substitui o contexto do CoreData pela instância da classe MOCK `MockPersistenceController.shared.container.viewContext`.
    - Implementa os métodos de manipulação dos dados na lista de contatos, para adicionar, atualizar, excluir e ver os detalhes.

 3. ** Métodos na Classe Mock: **
    - `updateEtropus`: Atualiza informações dos dados de um contato na lista.
    - `addEtropus`: Adiciona novo contato à lista.
    - `deleteEtropus`: Exclui contato da lista.

 Esses MOCKS serve para isolar o código do aplicativo real no processo de testes, desta forma garante que os testes não afetem o banco de dados principal. Alem de proporcionar um ambiente controlado para os testes unitários.
 Essa abordagem é comum em um desenvolvimento iOS quando se trabalha com CoreData e outros frameworks.
 
 4. **`EtropusApp`**
    - Estrutura criada para trazer o inicio do app com uso do SwiftUI e PersistenceController.
 
 5. **`EtropusData`**
    - Classe Data para uso do fetch e ativar entidades do CoreData
 
 6. **`EtropusListView`**
    - Estrutura para criacao do NavigationView, tela inicial do app mostrando dados iniciais e limpos das principais informacoes.
 
 7. **`AddEtropusView`**
    - Estrutura utilizada para criacao de um novo contato.
    - Possui a declaracao das variaveis com tipos.
    - Criacao de um array no com funao picker, facilitando a escolha: tipo de blockchain, moedas, valores, numero de contato e nome do contato.
 
 8. **`EditEtropusView`**
    - Estrutura criada para editar dados e informacoes do contato ja criado.
    - Onde tambem possui a declaracao das variaveis com seus tipos.
    - Foi realizada a criacao do mesmo array com mesmo dados e com as mesmas expecificacoes de quando acionado opcao de adicionar.
 
 9. **`EtropusDetailView`**
    - Estrutura feita para visualizar todos os dados que foram criados e/ou ja editado com novas informacoes.
    - Carregando os dados e trazendo a opcao de editar e/ou deletar o cadastro realizado.
 
 10. **`PersistenceController`**
    - Classe que e criada para uso de container e identificacao do banco de dados CoreData.
 
 11. **`Etropus.xcdatamodeld`**
    -  Banco de dados do CoreData com entidades, atributos e tipos.
    - Criando e ja determinando o que sera necessario para armazenamento de dados adicionados, editados do contato dentro do projeto.
 
 */
