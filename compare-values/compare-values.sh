#!/bin/bash

# A 배열 = "aaa" "bbb" "ccc"
# B 배열 = "aaa" "bbb" "ddd"
# 결과 = 비교결과 A 배열에 없는 데이터 "ddd" 출력

echo -e "\n[INFO] A,B 비교 시작\n"


	# A 배열(기준값)
	list=("aaa" "bbb" "ccc")

	# B 배열 (tmp.txt는 임시저장파일)
	ls ./data/ -p | grep -v '/$' > ./tmp.txt



# 배열 값 출력
	echo -e "── A 데이터 ────────\n"${list[0]}"\n"${list[1]}"\n"${list[2]}"\n"
	echo "── B 데이터 ────────"
	cat ./tmp.txt
	echo ""



# 비교값 데이터 배열에 저장
	while read line; do 
		readData+=("$line")
	done < ./tmp.txt

# 임시파일 정리
	rm -rf ./tmp.txt



# 데이터 비교
	for str1 in ${readData[*]} 
	do

		# 데이터가 같지 않을 경우 카운트를 올린다
		cnt=0
		for str2 in ${list[*]} 
		do
		
			if [ ${str1} != ${str2} ]; then
				#echo ${str1} " !=" ${str2}
				cnt=$(($cnt+1))
			fi
			
		done
		
		# 결과출력
		if [ ${cnt} -eq ${#list[*]} ]; then
			echo "[WARN] A 배열 기준 다른 값=" ${str1}
		fi
		
	done

echo "[INFO] A,B 비교 종료"