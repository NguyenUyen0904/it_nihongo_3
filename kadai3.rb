
puts "第1~10回大会のオリンピックについて"

olympics=[
  {year:1896,city:'アテネ',ect:''},
  {year:1900,city:'パリ',ect:''},
  {year:1904,city:'セントルイス',ect:''},
  {year:1908,city:'ロンドン',ect:''},
  {year:1912,city:'ストック',ect:''},
  {year:1916,city:'ベルリン',ect:''},
  {year:1920,city:'アンドワーク',ect:''},
  {year:1924,city:'パリ',ect:''},
  {year:1928,city:'アムステルタム',ect:''},
  {year:1932,city:'ロサンゼルス',ect:''}
]
olympics.each do |olympic|
    #|olympic| là  các phần tử của mảng olympics 
  puts"------"
  puts"#{olympic[:year]}年#{olympic[:city]}大会"
  puts "豆知識:#{olympic[:ect]}"
  
end