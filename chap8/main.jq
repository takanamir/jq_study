# 平均点を求める
# .[] | .scores | add / length | round

# 誰が何点かわかりやすくする
# .[] | { name, avg: (.scores | add / length | round) }

# 50 点以上の人だけにする
# .[] | { name, avg: (.scores | add / length | round) } | select(.avg >= 50)

# スコアの高い順に並べる
# sort は配列でしか使えないので、いったん全体を [] で囲ってあげる
# sort は小さい順に並べ替えるので、reverse する
# [ .[] | { name, avg: (.scores | add / length | round) } | select(.avg >= 50) ] | sort_by(.avg) | reverse

map({ name, avg: (.scores | add / length | round) } | select(.avg >= 50)) | sort_by(.avg) | reverse
