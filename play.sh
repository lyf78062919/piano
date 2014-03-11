#
#for i in `ls *.wav`
#do
#{
#play $i
#echo 1
#}&
#sleep 0.1
#done

#:<<BLOCK‘
#H JLO  E ILN  F HJM  C GIL  D FHK  A EHJ  D FHK  E GIL  
str="H JLO E ILN F HJM C GIL D FHK A EHJ D FHK E GIL (HQ) JLO (EP) GIL (OF) HJM (NC) GJL (MD) FHK (LA) CEH (MD) FHK (NE) GIL ONOH (GB)LIJ (CH)ONM (CN)QST (DR)QPR (QA)PON (DM)LKJ (EI)KJI (EH)IJK (EG)ILK (FJ)MLK (CL)KJI (DH)FMN (AO)NML (DK)JIM LML (SJ)QRS QR(SE)LMNOPQR (FQ)OPQ JK(GL)MLKLJKL (FK)MLK JI(JE)IHIJKLM (FK)MLM NO(GL)MNOPQRS (SI)QRS QR(SE)LMNOPQR (FQ)OPQ JK(GL)MLKLJKL (FK)MLK JI(EJ)IHIJKLM (FK)MLM NO(GL)MNOPQRS"
#str="ABCDE"
key="o"
for ((i=0;i<${#str};i++))
do
{

if [ -z ${str:i:1} ]
then echo "";
else 
play `echo ${str:i:1}".wav"  | tr '[A-Z]' '[a-z]'` 
#echo ${str:i:1}
fi

}&

if [[ ${str:i:1} == "(" ]]
then key="x"
elif [[ ${str:i:1} == ")" ]]
then key="o"
fi

#echo "==================================="${key}
#sleep 0.2
if [[ ${key} == "o" ]]
then sleep 0.2
else echo " "
fi
#sleep 0.2
done
#BLOCK‘



