users = [
  {name: "田中", age: 30, height: 160},
  {name: "佐藤", age: 70, height: 150},
  {name: "鈴木", age: 10, height: 120}
]

users.each do |user|
  judge_age = user[:age] <= 64 ? "OK" : "NG"
  judge_height = user[:height] >= 130 ? "OK" : "NG"
  final_judge = judge_age == "OK" && judge_height == "OK" ? "ご利用いただけます" : "ご利用いただけません"

  puts <<~TEXT
    ------------------------------
    #{user[:name]}さん
    年齢 #{user[:age]}歳 : 年齢確認#{judge_age}
    身長 #{user[:height]}cm : 身長確認#{judge_height}

    #{final_judge}
  TEXT
end
puts "------------------------------"
