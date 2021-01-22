def disp_plans(plans)
  puts "旅行プランを選択してください。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}.#{plan[:place]}(#{plan[:price]}円)"
  end
end

def choose_plan(plans)
  while true
    print "プランの番号を選択 >"
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)
    puts "1~3の番号を選択して下さい。"
end
plans[select_plan_num -1]
end



def decide_number_of_people(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね"
  puts "何名で予約されますか?"
  while true
    print "人数を入力 >"
    number_of_people = gets.to_i
    break if number_of_people>= 1
    puts "1名以上選択して下さい。"
end
number_of_people
end

def calculate_charges(chosen_plan,number_of_people)
  puts "#{number_of_people}名ですね"
  total_price = chosen_plan[:price] * number_of_people
  if number_of_people >= 5
    puts "5名以上ですので10%割引となります。"
    total_price*= 0.9
  end
  puts "合計料金は#{total_price.floor}円になります。"
end
