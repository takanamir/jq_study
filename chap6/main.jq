# .[] # 値の方だけを取り出す

# キーを指定して値を取り出す
# .["name"]
# .name

# 複数の値を一度に取り出す
# .id, .name

# 新しくオブジェクトを作る
# キーは myid にして、値のほうは id の値をそのまま引っ張ってくる
# { myid: .id, name, title: "Engineer" }

# keys # キーを全て引っ張ってくる

has("name") # キーがあるか調べる(ここではtrue)
