# 全ての要素を取り出して .skills の項目をみる
# .[] | .skills

# まだ配列の中に入っているのでとりあえずこれらを取り出してあげる

# # 配列から外れて全部出てきたので、level を取ってあげる
# .[] | .skills[] | .level

# 誰のスキルか区切りがわからないので、[] で適切に囲ってあげる
# .[] | [ .skills[] | .level ]

# レベルがひとまとまりになったので、あとは平均を出せばよい
# .[] | [ .skills[] | .level ] | add / length | round

# 誰のレベルかがわからないので、オブジェクトにまとめる
.[] | { name, skill: ([ .skills[] | .level ] | add / length | round) }
