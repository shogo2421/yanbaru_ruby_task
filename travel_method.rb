#旅行プラン一覧
plan_index = [
    {place: "沖縄旅行", price: 10000}, 
    {place: "北海道旅行", price: 20000}, 
    {place: "九州旅行", price: 15000}
  ]

#プランメニュー表示・選択
def plan_menu(plan_index)
  plan_index.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]} (¥#{plan[:price]})"
  end
end

#選択されたプランを決定するメソッド
def select_plan(plan_index)
  plan_num = gets.to_i
  case plan_num
  when 1..plan_index.size
    puts "#{plan_index[plan_num - 1][:place]}ですね、何人で行きますか？"
    price = plan_index[plan_num - 1][:price]
  else
    puts "入力が無効です：入力値 #{plan_num}"
    exit
  end
end

#選択された人数に応じて料金を計算するメソッド
def select_people(price)
  people = gets.to_i
  if people >= 5
    puts "5人以上なので10%割引となります"
    total = price * people * 0.9
  elsif people >= 1
    total = price * people
  else
    puts "入力が無効です：入力値 #{people}"
    exit
  end
end

#以下、表示画面用
#-------------------------------------------------------------------------------------------------

puts "旅行プランを選択してください"
plan_menu(plan_index)

puts "プランを選択"
price = select_plan(plan_index)

puts "人数を入力"
total = select_people(price)

puts "合計料金：¥#{total.floor}円"
