start=`date +%s%N` # %s可以计算的是1970年以来的秒数
python main.py
end=`date +%s%N`

time=$((end-start))
time=`expr $time / 1000000`
echo $time
