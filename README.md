# peekfile
Create a bash script peek.sh in a new github repository called peekfile, that prints the first three and last three lines of an input file specified on the command line, with a "..." line in the middle. Next, edit peek.sh so that it requires two arguments: (1) a file and (2) the number of lines to display on each end. If the user does not provide the second argument (number of lines), it must default to 3. if the input text file (provided as first argument) contains 2X lines or less (where X is the number of lines requested), it displays its full content; otherwise, it prints a warning message followed by the first X, then "...", then the last X lines.

To create the peek.sh file, first I had to create a .sh file by writing on the terminal:

`nano ./peek.sh` This is the path folder in which peek.sh is found: (/desktop/Master/BIOINFO/1st_TERM/alg/github/peekfile)

Then, once inside nano, I wrote:

```
#! /bin/bash

filename=$1
num_lines=$2

total_file_lines=$(wc -l < "$filename")

if [[ -z $num_lines ]]; then num_lines=3; fi

if [[ $total_file_lines -le $((2*num_lines)) ]]; then cat $filename; else
echo ""
echo "Warning: file has $total_file_lines lines in total, so as it contains more lines, it is only shown the first 3 and last 3 lines :)"
echo ""
head -n $num_lines $filename
echo ...
tail -n $num_lines $filename
fi

```



^O + enter + ^X

Then writting on the terminal any type of file (in my case):
`bash peek.sh ../../dataset1/tables/target_prokaryotes.txt 3`

The output is:

```
Warning: file has       13 lines in total, so as it contains more lines, it is only shown the first 3 and last 3 lines :)

Archaeoglobus fulgidus
Desulfurococcus amylolyticus
Fervidicoccus fontis
...
Staphylothermus hellenicus
Thermococcus cleftensis
Zestosphaera tikiterensis

```

If I type :

`bash peek.sh ../../dataset1/tables/target_prokaryotes.txt`

The output is:

```
Warning: file has       13 lines in total, so as it contains more lines, it is only shown the first 3 and last 3 lines :)

Archaeoglobus fulgidus
Desulfurococcus amylolyticus
Fervidicoccus fontis
...
Staphylothermus hellenicus
Thermococcus cleftensis
Zestosphaera tikiterensis

```

If I type:

`bash peek.sh ../../dataset1/tables/target_prokaryotes.txt 14`

The output is:

```
Archaeoglobus fulgidus
Desulfurococcus amylolyticus
Fervidicoccus fontis
Hadesarchaea archaeon
Halobacterium salinarum
Haloterrigena limicola
Methanococcus vannielii
Methanoregula boonei
Natrialba asiatica
Saccharolobus shibatae
Staphylothermus hellenicus
Thermococcus cleftensis
Zestosphaera tikiterensis

```
If I type another file, such as:

```
bash peek.sh ../../dataset1/proteins/selenodb.fasta

Warning: file has     1003 lines in total, so as it contains more lines, it is only shown the first 3 and last 3 lines :)

>SPP00000067_2.0  Protein  15 kDa selenoprotein (Sel15)  Human (Homo sapiens)
MAAGPSGCLVPAFGLRLLLATVLQAVSAFGAEFSSEACRELGFSSNLLCSSCDLLGQFNL
LQLDPDCRGCCQEEAQFETKKLYAGAILEVCGUKLGRFPQVQAFVRSDKPKLFRGLQIKY
...
PSCRGGKVVLDQTGVSKGYGFVKFTDELEQKRALTECQGAVGLGSKPVRLSVAIPKASRV
KPVEYSQMYSYSYNQYYQQYQNYYAQWGYDQNTGSYSYSYPQYGYTQSTMQTYEEVGDDA
LEDPMPQLDVTEANKEFMEQSEELYDALMDCHWQPLDTVSSEIPAMM

```

And finally, if I type:

```
bash peek.sh ../../dataset1/proteins/selenodb.fasta 506

```
The output will be all the content of the selenodb.fasta :)


