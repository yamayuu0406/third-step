require 'numo/narray'
include Numo
def show(data, name)
  puts "#{name}の平均点は#{data.mean}点"
  puts "#{name}の標準偏差は#{data.stddev}"
  puts "#{name}の合計点は#{data.sum}点"
  data.each do |d|
    puts "#{d}点の人の偏差値は#{50 + (d - data.mean) / 2}"
  end
end
scinece = SFloat[65,80,67,35,58,60,72,75,68,92,36,50,2,58.5,46,42,78,62,84,70]
english = SFloat[44,87,100,63,52,60,58,73,55,86,29,56,89,23,65,84,64,27,86,84]
show(scinece, "科学")
show(english, "英語")
