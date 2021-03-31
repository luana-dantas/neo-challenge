from Bio import SeqIO
tamanho = [len(rec) for rec in SeqIO.parse("banco.fasta", "fasta")]
print(len(tamanho), min(tamanho), max(tamanho))

from matplotlib import pylab

pylab.hist(tamanho, bins=20)
pylab.title(
    "%i Sequencias presentes no banco de dados \nTamanho varia de %i a %i" % (len(tamanho), min(tamanho), max(tamanho))
)
pylab.xlabel("Sequence length (bp)")
pylab.ylabel("Count")
pylab.show()

