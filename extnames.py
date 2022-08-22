#get names from file
with open ("16S-names.txt") as namin:
    names = namin.readlines()
namin.close
namesplit = []
for i in names:
    namesplit.append(i[1:].split(" ", 1))
#parse the blast output
with open ("dz/alins/concat_6-10.stats") as blastin:
    blast = blastin.readlines()
blastin.close
blastsplit = []
for i in blast:
    blastsplit.append(i.split("\t", 1))
#extend the names
blastex = []
for i in blastsplit:
    for j in namesplit:
        if (j[0]==i[0]):
            line = [" ".join(j), i[1]]
            line[0] = line[0].replace("\n", "")
            blastex.append("\t".join(line))
with open ("dz/alins/6-10.tsv", "w") as out:
    for i in blastex:
        out.write(i)
out.close
