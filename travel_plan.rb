#旅行プラン一覧
plans = [
	{place: "沖縄旅行", price: 10000}, 
	{place: "北海道旅行", price: 20000}, 
	{place: "九州旅行", price: 15000}
]

#プランメニュー表示・選択
plans.each.with_index(1) do |plan, i|
  puts "#{i}. #{plan[:place]}"
end

puts "プランを選択"
select_plan = gets.to_i

#プラン選択による条件分岐
case select_plan
when 1..plans.size
	puts "#{plans[select_plan - 1][:place]}ですね、何人で行きますか？"
	price = plans[select_plan - 1][:price]
else
	puts "入力が無効です：入力値 #{select_plan}"
	exit
end

#人数の選択
puts "人数を選択"
people = gets.to_i

#人数選択による条件分岐
if people >= 5
	puts "5人以上なので10%割引となります"
	total = price * people * 0.9
elsif people >= 1
  total = price * people
else
  puts "入力が無効です：入力値 #{people}"
  exit
end

puts "合計料金：¥#{total.floor}円"


