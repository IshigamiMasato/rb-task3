coin = 100
point = 0
coin_selects = [10, 30, 50, "やめとく"]

first_game = true

while first_game

  if coin == 0
    break
  end

  select_pattern = true

  #コインの選択
  while select_pattern

      puts "残りコイン数 :#{coin}"
      puts "ポイント:#{point}"
      puts "1(10コイン) 2(30コイン) 3(50コイン) 4(やめとく)"
      puts "____________________________________________"

      player_coin_select = gets.to_i

       if   player_coin_select == 1 || player_coin_select == 2 || player_coin_select == 3
          puts "#{coin_selects[player_coin_select - 1]}コイン使います"

       elsif player_coin_select == 4
          break

       else
          select_pattern == true
          puts "もう一度選択してください"
          next
       end

      case player_coin_select
        when 1
            coin = coin - 10
        when 2
            coin = coin - 30
        when 3
            coin = coin - 50
        end

        if coin < 0
            if player_coin_select == 1
                coin = coin + 10
             elsif player_coin_select == 2
                coin = coin + 30
             elsif player_coin_select == 3
                coin = coin + 50
            end

           select_pattern = true
           puts "コインが足りません、もう一度選択してください"
           puts "____________________________________________"
        else
            select_pattern = false
        end
    end

    if player_coin_select == 4
        break
    end

  #スロットスタート
  puts "1列目:enterをおしてください"
  start = gets

  number1 = rand(1..9)
  number2 = rand(1..9)
  number3 = rand(1..9)

  puts "|#{number1}|||||"
  puts "|#{number2}|||||"
  puts "|#{number3}|||||"
  
  puts "2列目:enterをおしてください"
  start = gets

  number4 = rand(1..9)
  number5 = rand(1..9)
  number6 = rand(1..9)

  puts "|#{number1}||#{number4}|||"
  puts "|#{number2}||#{number5}|||"
  puts "|#{number3}||#{number6}|||"
  
  puts "3列目:enterをおしてください"
  start = gets

  number7 = rand(1..9)
  number8 = rand(1..9)
  number9 = rand(1..9)

  puts "|#{number1}||#{number4}||#{number7}|"
  puts "|#{number2}||#{number5}||#{number8}|"
  puts "|#{number3}||#{number6}||#{number9}|"

  #結果判定
    if number2 == 7 && number5 == 7 && number8 == 7
        if player_coin_select == 1
            coin = coin +70
        elsif player_coin_select == 2
            coin = coin + 210
        elsif player_coin_select == 3
            coin = coin + 350
        end
        
        point = point + 100

        puts "大当たり!!"

    elsif number1 == 7 && number4 == 7 && number7 == 7
        if player_coin_select == 1
            coin = coin +70
        elsif player_coin_select == 2
            coin = coin + 210
        elsif player_coin_select == 3
            coin = coin + 350
        end
        
        point = point + 100

        puts "大当たり!!"

    elsif number3 == 7 && number6 == 7 && number9 == 7
        if player_coin_select == 1
            coin = coin +70
        elsif player_coin_select == 2
            coin = coin + 210
        elsif player_coin_select == 3
            coin = coin + 350
        end
        
        point = point + 100

        puts "大当たり!!"

    elsif number1 == 7 && number5 == 7 && number9 == 7
        if player_coin_select == 1
            coin = coin +70
        elsif player_coin_select == 2
            coin = coin + 210
        elsif player_coin_select == 3
            coin = coin + 350
        end
        
        point = point + 100

        puts "大当たり!!"
 
    elsif number3 == 7 && number5 == 7 && number7 == 7
        if player_coin_select == 1
            coin = coin +70
        elsif player_coin_select == 2
            coin = coin + 210
        elsif player_coin_select == 3
            coin = coin + 350
        end
        
        point = point + 100

        puts "大当たり!!"

    elsif number2 == number5 && number5 == number8
        if player_coin_select == 1
            coin = coin + 20
        elsif player_coin_select == 2
            coin = coin + 60
        elsif player_coin_select == 3
            coin = coin + 100
        end
        
        point = point + 50

        puts "当たり!"

    elsif number1 == number4 && number4 == number7
        if player_coin_select == 1
            coin = coin + 20
        elsif player_coin_select == 2
            coin = coin + 60
        elsif player_coin_select == 3
            coin = coin + 100
        end
        
        point = point + 50

        puts "当たり!"

    elsif number3 == number6 && number6 == number9
        if player_coin_select == 1
            coin = coin + 20
        elsif player_coin_select == 2
            coin = coin + 60
        elsif player_coin_select == 3
            coin = coin + 100
        end
        
        point = point + 50

        puts "当たり!"

    elsif number1 == number5 && number5 == number9
        if player_coin_select == 1
            coin = coin + 20
        elsif player_coin_select == 2
            coin = coin + 60
        elsif player_coin_select == 3
            coin = coin + 100
        end
        
        point = point + 50

        puts "当たり!"

    elsif number3 == number5 && number5 == number7
        if player_coin_select == 1
            coin = coin + 20
        elsif player_coin_select == 2
            coin = coin + 60
        elsif player_coin_select == 3
            coin = coin + 100
        end
        
        point = point + 50

        puts "当たり!"
    end

  first_game = true

  puts "____________________________________________"
 
end

puts "終了"