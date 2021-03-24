# neo-challenge

Esse repositório é referente as informações e resultados solicitados para o processo seletivo para estagio em Bioinformática. 

A avaliação possui o objetivo de avaliar quatro frentes de conhecimento

1) a curadoria de bancos de dados de sequencias biológicas; 
2) análise de bancos de dados de sequencias de DNA; 
3) análise de dados de comunidades microbianas; e 
4) questões de conhecimentos em bioinformática.

--------
## Observações

Desafio 1: Curadoria de banco de dados.
Esse foi o mais frustrante porque foi o que eu mais gastei tempo e praticamente tive nenhum resultado por dois motivos: 
  a) gastei muito tempo lendo lendo aprendendo sobre python/biopython; 
  b) pensei na estratégia errada dshdushdusasa
Inicialmente eu me baseei em alguns artigos e trabalhos sobre 16S onde eles utilizavam uma sequencia consenso a partir de bancos de dados públicos. 
A partir disso eu pensei em filtrar RefSeq do NCBI do gene 16S e usar o EMBOSS para gerar uma sequencia consensus que serviria de base para filtrar as sequencias do banco de dados e das possíveis sequencias que fossem adicionadas posteriormente. Não consegui gerar nenhuma sequencia descente, até gerei um phylotree usando o ClustalW, mas nada da sequencia consensu. Só depois eu fui perceber que poderia ter usado um dos parametros de resultado de alinhamento do BLAST (hits, por exemplo) e a partir dele ter descartado as sequencias do banco de dados. Nesse sentido, sequências com similaridade menor que 97% 
