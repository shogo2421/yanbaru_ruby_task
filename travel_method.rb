#選択されたプランを決定するメソッド
def select_plan(plan)
  case plan
  when 1..@plans.size
    puts "#{@plans[plan - 1][:place]}ですね、何人で行きますか？"
    @price = @plans[plan - 1][:price]
  else
    puts "入力が無効です：入力値 #{plan}"
    exit
  end
end

#選択された人数に応じて料金を計算するメソッド
def select_people(people)
  if people >= 5
    puts "5人以上なので10%割引となります"
    @total = @price * people * 0.9
  elsif people >= 1
    @total = @price * people
  else
    puts "入力が無効です：入力値 #{people}"
    exit
  end
end

#旅行プラン一覧
@plans = [
	{place: "沖縄旅行", price: 10000}, 
	{place: "北海道旅行", price: 20000}, 
	{place: "九州旅行", price: 15000}
]

#プランメニュー表示・選択
@plans.each.with_index(1) do |plan, i|
  puts "#{i}. #{plan[:place]} (¥#{plan[:price]})"
end

#以下、表示画面用
#-------------------------------------------------------------------------------------------------
puts "プランを選択"
select_plan(gets.to_i)

puts "人数を選択"
select_people(gets.to_i)

puts "合計料金：¥#{@total.floor}円"
