#!/bin/bash
function simple_test(){
	echo "I401.out $2 $3 $4"
	./I401.out $2 $3 $4 --debug
	local re=$?
	echo "return pos:"$re
	if [ $1 -ne $re ] ; then
		echo $1
		echo "test fail"
		exit 1
	fi
	return 0
}

# main

pwd
ls
cp book.csv I401
cd I401
pwd
ls
simple_test 99 NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNBNNNNNNNNNNNNNNWBBWWNNNNNNNNNNNBNBNNNNNNNNNNNWWBNWNNNNNNNNNNNBNBNNNNNNNNNNNWNNNWNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN B 0
# h8,g8,g9,f8,i9,fA,g7,f6,g6,i6,h6,j6,f5,jA,i7,j8,i8,h7,**,
simple_test -2 NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNBNNNNNNNNNNNNNNWBBWWNNNNNNNNNNNBWBNNNNNNNNNNNWWBBWNNNNNNNNNNNBNBNNNNNNNNNNNWNNNWNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN B 0
# h8,h7,i8,i7,j8,**,
simple_test 111 NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNWWNNNNNNNNNNNNNBBBNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN W 0
# h8,h7,i7,i8,j7,j8,i9,j9,kA,k9,jA,**,
simple_test 96 NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNWBBNNNNNNNNNNNNBWWNNNNNNNNNNNNNBWWNNNNNNNNNNNNNBBNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN W 0
# h8,g8,g9,f8,i9,fA,g7,f6,g6,i6,h6,j6,f5,jA,i7,j8,**,
simple_test 99 NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNBNNNNNNNNNNNNNNWBBWWNNNNNNNNNNNBNBNNNNNNNNNNNWWBNWNNNNNNNNNNNBNBNNNNNNNNNNNWNNNWNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN B 0
# h8,h7,h6,i7,j7,g7,f7,g6,g8,i8,j9,i9,i6,j8,h9,e6,g9,iA,iB,jA,hA,f8,gA,jB,hB,hC,iC,f9,gB,gC,fB,eB,fA,k9,jC,kD,iD,kA,lA,kB,kC,jD,a1,**,
simple_test 49 BNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNWNWBBNNNNNNNNNNNBWWWBNNNNNNNNNNWBBWWNNNNNNNNNNWBBWBWNNNNNNNNNBBBWWWBNNNNNNNWBBBBWWNNNNNNNNNNWWBBBNNNNNNNNNNNNBWWNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN W 0
# h8,h7,h6,i7,j7,g7,f7,g6,g8,i8,j9,i9,i6,j8,h9,e6,g9,iA,iB,jA,hA,f8,gA,jB,hB,hC,iC,f9,gB,gC,fB,eB,fA,k9,jC,kD,iD,kA,lA,kB,kC,jD,a1,k8,k7,m8,l8,n7,l9,l7,**,
simple_test 161 BNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNWNWBBNNNNNNNNNNNBWWWBBWNWNNNNNNWBBWWWBWNNNNNNNWBBWBWBNNNNNNNNBBBWWWBNNNNNNNWBBBBWWNNNNNNNNNNWWBBBNNNNNNNNNNNNBWWNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN B 0
# b3,h8,b4,j8,b5,b6,c1,i5,d1,d5,**,
simple_test 1 NNBBNNNNNNNNNNNNNNNNNNNNNNNNNNNBNNNNNNNNNNNNNNBNNNNNNNNNNNNNNBNWNNNNWNNNNNNNWNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNWNWNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN B 0
# h8,i7,i9,i8,g7,f6,hA,h9,gB,fC,gA,iA,gD,g9,hC,jA,fA,e9,hD,iD,**,
simple_test 100 NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNWNNNNNNNNNNNNNNNBNWNNNNNNNNNNNNNBWNNNNNNNNNNWNWWBNNNNNNNNNNNBBBWWNNNNNNNNNNNBNNNNNNNNNNNNNWNBNNNNNNNNNNNNNBBWNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN B 0
# h8,i7,i9,i8,g7,f6,hA,h9,gB,fC,gA,iA,gD,g9,hC,jA,fA,e9,hD,iD,k7,j8,**,
simple_test 139 NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNWNNNNNNNNNNNNNNNBNWNBNNNNNNNNNNNBWWNNNNNNNNNWNWWBNNNNNNNNNNNBBBWWNNNNNNNNNNNBNNNNNNNNNNNNNWNBNNNNNNNNNNNNNBBWNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN B 0
echo "test finish."
