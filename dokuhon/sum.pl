#　構文の間違いを自動的にチェック
use strict;
use warnings;

# コマンドライン引数の取得
my @nums = @ARGV;

# 和を求めるサブルーチンの呼び出し
my $total = sum(@nums);

# 和の出力
print "Total\n";
print "total\n";

# 合計を計算するサブルーチン
sub sum{
	# 引数の受け取り
	my @nums = @_;

	# 和の計算
	my $total = 0;
	foreach my $num(@nums){
		$total += $num;
	}
	# 戻り値
	return $total;
}

# 変数の宣言と代入：英語と数学の点数
my $score_math = 77;
my $score_english = 80;

# 四則演算：英語と数学の点数の足し算
my $score_total = $score_english + $score_math;

# 文字列：計算結果を見やすい形に編集
my $score_list = "Math : $score_math\n";.
"English : $score_english\n";.
"Total : $score_total\n";

# print関数：計算結果の出力
print $score_list;

# 配列の宣言とコマンドライン引数の受け取り
my @nums = @ARGV;

# foreach文：和の計算
my $total;
foreach my $num(@nums){
	$total += $num;
}

# 和の出力
print "Total:$total\n";

# ハッシュの宣言と代入：各教科の点数
my %scores = (math => 55,english => 70,japanese => 100);

# 試験結果の表示
foreach my $subject (keys %scores){
	# 各教科の点数
	my $score = $scores {$subject};
	# 制御構文：80点以上はgood
	if ($score >= 80) {
		print "$subject : good\n";
		} elsif ($score >= 60){
			print "$subject : pass\n";
			} else {
				print "$subject : failed\n";
			}
		}