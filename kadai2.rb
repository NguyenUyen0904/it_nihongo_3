puts "第1~10回大会のオリンピックについて"

olympics=[
  {year:1896,city:'アテネ'},
  {year:1900,city:'パリ'},
  {year:1904,city:'セントルイス'},
  {year:1908,city:'ロンドン'},
  {year:1912,city:'ストック'},
  {year:1916,city:'ベルリン'},
  {year:1920,city:'アンドワーク'},
  {year:1924,city:'パリ'},
  {year:1928,city:'アムステルタム'},
  {year:1932,city:'ロサンゼルス'}
]
olympics.each do 
  #|olympic| là  các phần tử của mảng olympics 
  puts"------------"
  puts"#{olympic[:year]}年#{olympic[:city]}大会"
  
end