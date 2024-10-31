#!/bin/bash
# 指定要修改的文件夹路径
folder="/Users/anchenlin/Desktop/1/【英音】A.Short.History.of.Nearly.Everything"
# 遍历文件夹中的每个文件

#find $folder -type f -name "*.mp3" 
find $folder -type f -name "*.mp3" > temp01.txt

#cat temp01.txt
#IFS,内置分隔符  set|grep IFS，可以查看默认值
while IFS= read -r line
do
    echo "5555-$line"
    new_str=${line//【微信公众号：牛娃养成训练营】/}  # 将a字符替换为空字符串，即删除
    echo "0---$new_str"
    new_str1=${new_str//​.牛娃养成训练营/} 
    echo "1---$new_str1"
    new_str5=${new_str1//【牛娃养成训练营】/} 
   
    
    echo "5--$new_str5"
    
    echo $new_str5 >> tesmdd.txt
   # mv "$line" "$new_str5"

done < temp01.txt

#以下方法不适用当前脚本，因为文件名中有空格，不能用cat，空格会被当成下一行。
#for line in $(cat $folder/temp01.txt)
#do
   #   echo $line
   
#done

