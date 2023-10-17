def janken
  puts "最初はグー、じゃんけん..."
  puts " [0]:グー\n [1]:チョキ\n [2]:パー"
  player_hand = gets.to_i

  if (0..2).include?(player_hand) # 入力が0から2の範囲内か確認
    program_hand = rand(3)
  
    jankens = ["グー", "チョキ", "パー"]
  
    puts "ポンっ"
    puts "あなたの手：#{jankens[player_hand]}, わたしの手: #{jankens[program_hand]}"
  
    if player_hand == program_hand
      puts "あいこです あいこで..."
      janken
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0) 
      puts "あなたの勝ちです"
      player_wins
      return false
    else
      puts "あなたの負けです"
      program_wins
      return false
    end
  else
    puts "無効な入力です。[0]から[2]のキーを選んでください。"
    janken # 無効な入力の場合、再度入力を促す
    return true
  end
end

def player_wins
  puts "あっち向いて〜"
  puts "[0]: 上\n[1]: 下\n[2]: 左\n[3]: 右"
  user_choice = gets.to_i

  if (0..3).include?(user_choice) # 入力が0から3の範囲内か確認
    program_choice = rand(4)
    directions = ["上", "下", "左", "右"]
    
    puts "ホイっ"
    puts "あなたの選択: #{directions[user_choice]}, わたしの選択: #{directions[program_choice]}"
    
    if user_choice == program_choice
      puts "あなたの勝ちです"
    else
      puts "再度じゃんけんに戻ります"
      janken # ジャンケンを再度プレイ
    end
  else
    puts "無効な入力です。[0]から[3]のキーを選んでください。"
    player_wins # 無効な入力の場合、再度入力を促す
  end
end

def program_wins
  puts "あっち向いて〜"
  puts "[0]: 上\n[1]: 下\n[2]: 左\n[3]: 右"
  user_choice = gets.to_i
  
  if (0..3).include?(user_choice) # 入力が0から3の範囲内か確認
    program_choice = rand(4)
    directions = ["上", "下", "左", "右"]
    
    puts "ホイっ"
    puts "あなたの選択: #{directions[user_choice]}, わたしの選択: #{directions[program_choice]}"
    
    if user_choice == program_choice
      puts "あなたの負けです"
    else
      puts "再度じゃんけんに戻ります"
      janken # ジャンケンを再度プレイ
    end
  else
    puts "無効な入力です。[0]から[3]のキーを選んでください。"
    program_wins # 無効な入力の場合、再度入力を促す
  end
end

next_game = true

while next_game do
  next_game = janken
end
