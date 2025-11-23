# Disciplina Modelagem de Dados - Experiência Prática IV

Este repositório apresentará o que foi desenvolvido pelo aluno Bruno para a Experiência Prática IV da disciplina de Modelagem de Dados que cursa no momento.

Primeiro, modelou-se o funcionamento de uma biblioteca de universidade pública. Segue abaixo uma imagem que apresenta as entidades (tabelas), atributos, relacionamentos e cardinalidades que foram definidos para o modelo em questão.

<img width="1771" height="1281" alt="image" src="https://github.com/user-attachments/assets/3a165363-165f-4d50-805d-fded5f0ec9c5" />

Resumo das tabelas:
  1. Acervo
      - Informações sobre um item do acervo da biblioteca.
  2. Material
      - Informações sobre um material da biblioteca.
  3. Consulta
      - Informações sobre uma consulta realizada de um material do acervo da biblioteca.
  4. Estudante
      - Informações dos estudantes da universidade.
  5. Reserva
      - Informações sobre uma reserva de material.
  6. Cobranca
      - Informações sobre uma cobrança realizada por um funcionário para que o estudante, que apresenta alguma pendência, solucione a questão pendente.
  7. Pendencia
      - Informações sobre a pendência que um estudante possui com a biblioteca.
  8. Emprestimo
      - Informações sobre o empréstimo que foi autorizado por um funcionário.
  9. Cargo
      - Descrição dos cargos profissionais relacionados ao funcionamento da biblioteca.
  10. Funcionario
      - Informações dos funcionários da biblioteca.
  11. Endereco
      - Endereços dos Estudantes e Funcionários relacionados a universidade.
  
Na sequência, com comandos SQL, as atividades consistiram em criar os elementos definidos dentro do modelo, elaborar e executar comandos de inserção de dados (INSERT) e consulta (SELECT) no banco de dados do projeto, garantindo coerência com o modelo lógico e os tipos de dados que foram definidos no processo. 

Além disso, buscou-se aprofundar o uso da DML com comandos de UPDATE e DELETE, garantindo a integridade dos dados e respeitando as restrições impostas pelas chaves e relacionamentos.

Por fim, segue os arquivos gerados ao final das atividades.

  1. Script_create.sql : Contêm os comandos de criação das tabelas com a definição dos atributos e relacionamentos;  
  2. Script_insert.sql : Contêm os comandos de inserção de dados nas tabelas para povoar as mesmas;  
  3. Script_select.sql : Contêm os comandos de consulta com o uso de cláusulas como ORDER BY, LIMIT, JOIN;
  4. Script_update.sql : Contêm os comandos de atualização dos dados com o uso de condições em algumas tabelas;
  5. Script_delete.sql : Contêm os comandos de remoção de dados com o uso de condições em algumas tabelas.

Todos os arquivos estão disponíveis neste repositório.
