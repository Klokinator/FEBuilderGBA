「スキルの書パッチ」
スキル部分が無いと意味ないのでほぼFE8N専用
拙作の上限突破パッチも当てないと、スキル習得状態がセーブされません

◆作り方
・アイテムリストを増加させて作った新規アイテムか元々ある武器を、スキルの書に出来ます。(アイテムや杖はスキルの書に出来ません)

・アイテムの効果をメティスの書と一緒の"0x2E"にして、攻撃力を覚えさせたいスキルIDにすると、そのスキルIDのスキルの書になります。
書に出来るスキルは、スキルID"63(0x3F)"以下までです。それ以上を指定しても異常動作します
・攻撃力255にするとスキル書ではなく、習得したスキルを消してそのスキルのスキル書に変化するアイテムになります


◆補足
・スキル書・スキル抽出アイテムを使用した後に表示されるテキストを変えたい場合は、"config.txt"を編集してください
・兵種スキルと同種の個人スキルを覚えさせてもまったく意味はありません。個人スキルはゲーム内で止めてくれますが、兵種は止めてくれないうえに、無意味なのにスキル習得枠は食い潰すので産廃化します

◆スキル制限について
書のスキルは最大で2つまで習得出来ます。書以外の個人スキルや兵種スキル含めた総スキル上限はありません。

◆2つスキルを習得しているユニットが、スキル抽出アイテムを使った場合
常に先に使ったスキルが抽出されます。どっちのスキルが先に習得したスキルかは判別できません。抽出して確かめましょう
後から習得したスキルを抽出したい場合は、もう一度スキル抽出アイテムを使うしかありません


