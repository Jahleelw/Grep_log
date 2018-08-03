Dir=${PWD}

if [ $# != 1 ];then
	grep_str="GUI"
else 
	grep_str=$1
fi

for log_file in ${Dir}/log*
do
	temp=`basename $log_file`
	output=${grep_str}_${temp}
	echo $temp "---grep" $grep_str "to--->" $output
	cat $temp | grep $grep_str > $output
done

 >  ${Dir}/All_${grep_str}*

for log_file in ${Dir}/${grep_str}_log*
do
	temp_1=`basename $log_file`
	log_all=All_${temp_1:0:16}.txt
	echo $temp_1 "---all" $grep_str "log to--->" $log_all

	cat $temp_1 >> $log_all
done
