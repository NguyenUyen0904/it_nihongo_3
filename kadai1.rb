puts "好きな年を好きな西暦を変数に代入してください"
year =gets.chomp.to_i
if year<1896 or year>2020
  puts"#{year}年にオリンピックは開催されませんでした"
elsif year==1916 or year==1940 or year==1944
    puts"#{year}年にオリンピックは開催されませんでした"
elsif year%4==0
    puts"#{year}年には夏季オリンピックが開催されました"
else  
    puts"#{year}年にオリンピックは開催されませんでした"
end 


