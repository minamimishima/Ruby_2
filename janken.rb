class GameStart
  def initialize
    puts "じゃんけんをしましょう！"
    puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
    puts "じゃんけんぽん！"
    puts "-------------------------"
    
    @challenger_hand = gets.to_i
    @player_hand = rand(0..2)
    
    janken
  end
  
  def janken
    if @challenger_hand == 0
      puts "あなた：グー"
      
      if @player_hand == 0
        @result = "あいこ"
        puts "相手：グー"
        puts "-------------------------"
      elsif @player_hand == 1
        @result = "勝ち"
        puts "相手：チョキ"
        puts "-------------------------"
      else
        @result = "負け"
        puts "相手：パー"
        puts "-------------------------"
      end
      
    elsif @challenger_hand == 1
      puts "あなた：チョキ"
      
      if @player_hand == 0
        @result = "負け"
        puts "相手：グー"
        puts "-------------------------"
      elsif @player_hand == 1
        @result = "あいこ"
        puts "相手：チョキ"
        puts "-------------------------"
      else
        @result ="勝ち"
        puts "相手：パー"
        puts "-------------------------"
      end
      
    elsif @challenger_hand == 2
      puts "あなた：パー"
        
      if @player_hand == 0
        @result = "勝ち"
        puts "相手：グー"
        puts "-------------------------"
      elsif @player_hand == 1
        @result = "負け"
        puts "相手：チョキ"
        puts "-------------------------"
      else
        @result = "あいこ"
        puts "相手：パー"
        puts "-------------------------"
      end
      
    elsif @challenger_hand == 3
      @result = "戦わない"
      
    else
      @result = "エラー"
    end
    
    case @result
    when "勝ち"
      puts "あなたの勝ちです！"
      hoi
    when "あいこ"
      puts "あいこです！"
      GameStart.new
    when "負け" 
      puts "あなたの負けです…"
      hoi
    when "戦わない"
      puts "また遊びましょう！"
    else
      puts "0〜3で入力してください"
    end
  end
  
  def hoi
    puts "あっちむいてホイをしましょう！"
    puts "0(上) 1(下) 2(右) 3(左)"
    puts "あっちむいてホイ！"
    puts "-------------------------"
    
    faces = ["上","下","右","左"]
    @challenger_select = gets.to_i
    @player_select = rand(0..3)
    
    puts "あなた：#{faces[@challenger_select]}"
    puts "相手：#{faces[@player_select]}"
    
    if @challenger_select != 0 && @challenger_select != 1 && @challenger_select != 2 && @challenger_select != 3
      puts "0〜3で入力してください"
      
    elsif @result == "勝ち"
      if @challenger_select == @player_select
        puts "あなたの勝ちです！"
        puts "-------------------------"
      else
        puts "引き分け"
        puts "-------------------------"
        GameStart.new
      end
      
    elsif @result == "負け"
      if @challenger_select == @player_select
        puts "あなたの負けです…"
        puts "-------------------------"
      else
        puts "引き分け"
        puts "-------------------------"
        GameStart.new
      end
      
    else
      puts "引き分け"
      puts "-------------------------"
      GameStart.new
    end
  end
end

GameStart.new
