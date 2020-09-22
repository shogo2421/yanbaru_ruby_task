#旅行プラン一覧
def plan_index
  @plans = [
   {place: "沖縄旅行", price: 10000}, 
   {place: "北海道旅行", price: 20000}, 
   {place: "九州旅行", price: 15000}
 ]
end

#プランメニュー表示・選択
def plan_menu
 @plans.each.with_index(1) do |plan, i|
   puts "#{i}. #{plan[:place]} (¥#{plan[:price]})"
 end
end

#選択されたプランを決定するメソッド
def select_plan(plan_num)
 case plan_num
 when 1..@plans.size
   puts "#{@plans[plan_num - 1][:place]}ですね、何人で行きますか？"
   @price = @plans[plan_num - 1][:price]
 else
   puts "入力が無効です：入力値 #{plan_num}"
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

#以下、表示画面用
#-------------------------------------------------------------------------------------------------

plan_index
puts "旅行プランを選択してください"
plan_menu

puts "プランを選択"
select_plan(gets.to_i)

puts "人数を入力"
select_people(gets.to_i)

puts "合計料金：¥#{@total.floor}円"
