# DOMACI 1.

1. Iz fajla mgat_genes.gb sačuvajte samo sortirane nazive svih lokusa u jedan fajl nazvan imena.lokusa. Tip: šta radi funkcija tr uz parametar -s?
2. Koja je dužina (u bp) najduže sekvence sadržane u fajlu mgat_genes.gb? Treba
napisati pajplajn u jednoj liniji koda, koji će kao rezultat imati dužinu najduže sekvence.

## resenje:
1. grep LOCUS mgat_genes.gb |sort|tr -s ' '|cut -d ' ' -f2>locus.txt
2. grep LOCUS mgat_genes.gb |tr -s ' '|cut -d ' ' -f3|sort -n|tail -n1>duzina_sekvence_max.txt




# DOMACI 2.
1.Pre nego pogledamo detaljno sadržaj, da li biste mogli da iz terminala odredite koliki je broj readova u svakom od dva downloadovana fajla.

## resenje:
1. za prvi read>  zcat SRR7167438_1.fastq.gz|grep '^@'|sort|uniq|wc -l>broj_readova1.txt
2. za drugi read> zcat SRR7167438_2.fastq.gz|grep '^@'|sort|uniq|wc -l>broj_readova2.txt


# DOMACI 3.
1. prebrojte koliko readova je savrseno poravnato sa genomom, bez greske.
2. prebrojte koliko readova je jedinstveno mapirano, samo na jedan lokus.

## resenje:
1.  samtools view SRR7167438.bam|grep 'NM:i:0'|wc -l > zadatak4.txt
2. samtools view -F 260  SRR7167438.bam|grep 'NH:i:1'|wc -l >zadatak5.txt

