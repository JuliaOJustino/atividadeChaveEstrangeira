# AtividadeChaveEstrangeira
A atividade de bancos do dia 10/03/2023

<p>1. No exercício BD-03-Exercicio da Tabela Revista e da Tabela Editora:<br>
<ul><li>Acrescentar a coluna fkEditora na tabela Revista, com o tipo int e de forma que essa
coluna seja uma chave estrangeira que referencia a tabela Editora</li>
<li>Atualizar os dados da coluna fkEditora.</li>
<li>Exibir os dados da tabela Revista.</li>
<li>Exibir os dados das revistas e das editoras correspondentes.</li>
<li>Exibir os dados das revistas e das editoras, porém apenas de uma editora.</li></ul></p>

<p>2. Em BD-02-Exercicio, vocês fizeram um exercício em que criaram uma tabela Atleta.
Essa tabela deveria ter os campos: 
    <ul><li>idAtleta (int e chave primária da tabela),</li>
    <li>nome (varchar, tamanho 40),</li>
   <li> modalidade (varchar, tamanho 40), </li>
   <li> qtdMedalha (int, representando a quantidade de medalhas que o atleta possui)</li></ul><p>
  <p>No mesmo banco de dados dessa tabela, crie a tabela Pais (Não precisa por acento no nome
da tabela). Essa tabela representa o país de origem do atleta e terá os campos: 
     <ul><li>idPais (int,chave primária),</li>
     <li>nome,</li>
     <li>capital.</li>
     <li>Insira dados na tabela Pais.</li>
 <li> Na tabela Atleta, adicione uma coluna chamada fkPais, e configure essa coluna para ser uma chave estrangeira para a coluna idPais, da tabela Pais.
Coloque valores nessa coluna, de forma que cada atleta inserido na tabela Atleta tenha um país de origem correspondente.</li>
  <li> Exiba os dados dos atletas e dos países correspondentes.</li>
  <li> Exiba os dados dos atletas e do país, mas somente de um determinado país (especifique o nome do país na consulta)</li>
  </ul>
  </p>
<p> 3. Em BD-02-Exercicio, também havia um exercício em que vocês criaram uma tabela Musica.
   Essa tabela tinha os campos: 
  <ul><li> idMusica, titulo (tamanho 40), sendo que idMusica é a chave primária da tabela.</li>
   <li>artista (tamanho 40), </li>
   <li>genero(tamanho 40),</li></ul>
 <p> No mesmo banco de dados dessa tabela, crie a tabela Album, com os campos: 
  <ul><li>idAlbum (chave primária),</li> 
 <li> nome, </li>
  <li>gravadora.</li>
  </li> Insira dados na tabela Album.</li></ul></p>
  <p> Na tabela Musica, adicione uma coluna chamada fkAlbum, e configure essa coluna para que ela seja uma chave estrangeira para a coluna idAlbum, da tabela Album.
<ul><li>Coloque valores nessa coluna, de forma que cada música inserida na tabela Musica tenha um
álbum correspondente.</li>
<li>Exiba os dados das músicas e dos álbuns correspondentes.</li>
<li>Exiba os dados das músicas e dos álbuns, mas somente de um determinado álbum
(especifique o nome do álbum na consulta).</li>
<li>Exiba os dados das músicas e dos álbuns, mas somente de uma determinada gravadora.</li></ul></p>
<p> 4. Em BD-01-Exercicio, vocês criaram em planilhas 3 tabelas (Aluno, Instituicao, Empresa),
colocando dados da sua escolha.
<ul><li>Implemente agora no MySQL essas 3 tabelas, uma vez que agora vocês já sabem como
configurar as chaves estrangeiras.</li>
<li>Nesse caso, a tabela Aluno terá 2 chaves estrangeiras, uma para Instituicao e outra para
Empresa.</li>
<li>Insira os dados nas tabelas, conforme você tinha feito nas planilhas.</li>
<li>Exiba os dados dos alunos e das instituições correspondentes.</li>
<li>Exiba os dados dos alunos e das empresas correspondentes.</li>
<li>Exiba os dados dos alunos, das instituições e das empresas correspondentes.</li></ul> </p>
