plans = [
  {place: "沖縄", price: 10000},
  {place: "北海道", price: 20000},
  {place: "九州", price: 15000},
]

  puts "旅行プランを選択してください。"
  plans.each.with_index(1) do |plan, i|
  puts "#{i}.#{plan[:place]}(#{plan[:price]}円)"
end

while true
  print "プランの番号を選択 >"
  select_plan_num = gets.to_i
  chosen_plan = plans[select_plan_num -1]
  break if (1..3).include?(select_plan_num)
  puts "1~3の番号を選択して下さい。"
end

  puts "#{chosen_plan[:place]}旅行ですね"
  puts "何名で予約されますか?"

while true
  print "人数を入力 >"
  people_num = gets.to_i
  break if people_num >= 1
  puts "1名以上選択して下さい。"
end

  puts "#{people_num}名ですね"

total_price = chosen_plan[:price] * people_num

if people_num >= 5
  puts "5名以上ですので10%割引となります。"
  total_price*= 0.9
end
  puts "合計料金は#{total_price.floor}円になります。"