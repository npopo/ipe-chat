# ユーザーが商品を登録できるアプリ。レビューを一覧で見れるようにする。

def register_review(reviews)    # レビューを登録するメソッドを完成させてください。引数も利用しましょう。
    puts "商品名を入力してください"
    input_name = gets.chomp # ユーザーの入力を受け付けてください
    puts "感想を入力してください"
    input_review = gets.chomp # ユーザーの入力を受け付けてください

   review = { name: input_name,  review: input_review }   # ユーザーの入力をハッシュにまとめましょう
    reviews << review  # ハッシュにしたものを、whileの前に定義したreviewsという配列に格納しましょう
    puts "登録しました！"
end

def show_reviews(reviews)     # レビューを全て表示するメソッドを完成させてください。引数も利用しましょう。
    reviews.each_with_index do |review, index|# ループを使ってレビューを全て表示させましょう。
        puts "----------------------------"
        puts "商品名 : [#{index + 1}] #{review[:name]}"
        puts "感想 : [#{index + 1}] #{review[:review]}"
        
    end
        # 下記のように表示されるようにしてください。
    # 【】はコードに直してください
    # puts "----------------------------"
    # puts "商品名：【ユーザーが入力した商品名をここに表示】"
    # puts "感想：【ユーザーが入力した感想をここに表示】"
    
end

reviews = []
while true do
    puts "番号を入力してください"
    puts "[1] レビューを登録する"
    puts "[2] レビューの一覧を見る"
    puts "[3] アプリを終了する。"

    input = gets.to_i

    case input
    when 1
        register_review(reviews)  # レビューを登録するメソッドを呼び出してください

    when 2
        show_reviews(reviews)   # レビュー一覧を表示するメソッドを呼び出してください

    when 3
      exit  # アプリケーションを終了する処理を書いてください

    end
end



#  アホになるやつ

num = 1

while num <= 50
    
    case
    
    when num % 3 == 0
         puts "Aho"
    when num.to_s.include?("3")
        puts "Aho"    
        
    else     
     puts num
     end
  num += 1
 end


#  ランダムに数えるやつ

result =  rand(0..9)    # 0～9の中からランダムで数字が選ばれたものを変数resultに格納してください


 input = ""   # ループの条件でユーザーからの入力値を使いたい場合はここで空の変数として先に定義しておく。



while true do # ユーザーの入力が答えと一致するまで処理を繰り返すループ文を書いてください
    # 以下ループ内処理
    puts "0～9の数字を入力してください"
    input = gets.chomp.to_i         # ユーザーから入力を受けましょう


case  # ユーザーが入力した値と変数resultの値を比べた場合の条件分岐を書きましょう
    when input > result
        puts  "#{ input }より小さい数字です"
        
    when input < result
        puts  "#{ input }より大きい数字です"    

    when input =  result  
        puts  "正解！#{ result }でした"
   　 exit # もし正解だった場合は、アプリケーションが終了するようにしてください
    
 end

end    
