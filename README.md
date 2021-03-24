# neo-challenge

Esse repositório é referente as informações e resultados solicitados para o processo seletivo para estagio em Bioinformática. 

A avaliação possui o objetivo de avaliar quatro frentes de conhecimento

1) a curadoria de bancos de dados de sequencias biológicas; 
2) análise de bancos de dados de sequencias de DNA; 
3) análise de dados de comunidades microbianas; e 
4) questões de conhecimentos em bioinformática.

--------
## Observações

# Desafio 1: Curadoria de banco de dados.

Esse foi o mais frustrante porquê foi o que eu mais gastei tempo e praticamente tive nenhum resultado por dois motivos: 
  a) gastei muito tempo lendo lendo aprendendo sobre python/biopython; 
  b) pensei na estratégia errada dshdushdusasa
Inicialmente eu me baseei em alguns artigos e trabalhos sobre 16S onde eles utilizavam uma sequencia consenso a partir de bancos de dados públicos. 
A partir disso eu pensei em filtrar RefSeq do NCBI do gene 16S e usar o EMBOSS para gerar uma sequencia consensus que serviria de base para filtrar as sequencias do banco de dados e das possíveis sequencias que fossem adicionadas posteriormente. Não consegui gerar nenhuma sequencia descente, até gerei um phylotree usando o ClustalW, mas nada da sequencia consensu. Só depois eu fui perceber que poderia ter usado um dos parametros de resultado de alinhamento do BLAST (hits, por exemplo) e a partir dele ter descartado as sequencias do banco de dados. Nesse sentido, sequencia com menos de 97% de similaridade seriam descartadas. 

# Desafio 2: Análise do banco de dados 

Fiz o stript em python usando a biblioteca Matplotlib + biopython (so faltou concluir a primeira etapa). Em relação a árvore filogenética, gerei uma no próprio Clustal Omega no site do EMBL-EBI, mas optem por não fazer o upload pq não faz muito sentido pois o objetivo era a frequência taxonômica, não a relação filogenética entre as sequências. Pensei em fazer no python mas posteriormente percebi que no R seria mais facil, mas fica para a próxima. 

# Desafio 3: análise de dados de comunidades microbianas

Esse foi o mais inusitado pois eu nunca tinha se quer visto um arquivo desses. Até eu entender o que era, como funcionava e achar uma biblioteca no R já era tarde. Eu segui o tutorial, mas não consegui plotar o gráfico. Acredito que tenha sido no momento de fazer o dataframe com os períodos, generos e frequências, mas não tenho certeza. 

# Desafio 4: Questões de bioinformática 

Esssa eu tinha relativamente mais afinidade para solucionar. Depois que verifiquei a qualidade das sequências, percebi que todas apresentação superrepresentação e duplicações de sequencias. Muito provavelmente, as regiões finais das sequências deviam conter artefatos de PCR. Inicialmente tentei trimmar uma sequencia no Trimmomatic com foco em otimizar as sequencias e minimizar os erros com o parâmetro MAXINFO. O resultado foi que menos de 0.2% das sequencias foram modificadas, e por conta disso optei por não filtrar nenhuma sequencia. A qualidade estão boas, mas poderia realizar leves ajustes para melhorar. 
