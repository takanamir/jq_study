# .[] | . + 100 # 出力結果をそれぞれの入力として 100 足

# .[] | . >= 10 # 10 以上のものについては true を出力

# .[] | select(. >= 10) # true になったものだけ抽出

.[] | "Value: \(.)" # 全部取り出した後に、文字列の中にその値を埋め込む
