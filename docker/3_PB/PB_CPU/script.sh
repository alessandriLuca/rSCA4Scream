docker build --platform linux/amd64 . -t  repbioinfo/pseudobulk_cpu
if test -f "./configurationFile.txt"; then
echo "$FILE exists."
else
pwd > configurationFile.txt
fi
tt=$(head configurationFile.txt)
mkdir $tt
cp ./configurationFile.txt $tt
rm $tt/id.txt
docker run --platform linux/amd64 -itv $tt:/scratch -v /var/run/docker.sock:/var/run/docker.sock --cidfile  $tt/id.txt repbioinfo/pseudobulk_cpu
