# peekfile
To create the peek.sh file, first I had to create a .sh file by writing on the terminal:

`nano ./peek.sh` (/desktop/Master/BIOINFO/1st_TERM/alg/github/peekfile)

Then, once inside nano, I wrote:

```
#! /bin/bash
filename=$1
num_lines=$2

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 <file> <num_lines>"
  exit 1
fi

head -n 3 $(find ../../dataset1/tables -type f -name "target_prokaryotes.txt")
echo ...
tail -n 3 $(find ../../dataset1/tables -type f -name "target_prokaryotes.txt")
```



^O + enter + ^X

Then writting on the terminal (in my case):
`bash peek.sh ../../dataset1/tables/target_prokaryotes.txt 3`

The output was:

```Archaeoglobus fulgidu
Desulfurococcus amylolyticus
Fervidicoccus fontis
...
Staphylothermus hellenicus
Thermococcus cleftensis
Zestosphaera tikiterensis
```
