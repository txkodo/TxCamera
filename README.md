# TxCamera
カメラワークを記録、再生するデータパック
Cancel changes
複数のカメラワークの同時記録、同時再生にも対応

※ 記録と再生合わせ最大512チャンネル



## 1. とりあえず使ってみる

データパックを導入すると以下のようなログが出る

> TxCamera was successfully installed!

```mcfunction
/function txcw:api/ui
```

を実行すると手元にクロスボウがやってくる

カメラワークを始めたい場所&向きでクロスボウを右クリック

通過点でもおなじように右クリック

マウスホイールで通過速度も調整できる(Shift 押下で1ずつ)



好きな数だけ通過点を追加したら、チャット欄の**[ TestPlay ]** をクリック

すると記録中のデータが再生される

再生後にさらに経由地点を追加することもできる



## 2. 記録したデータを保存する

テストプレイに満足したら、チャット欄の**[ Exit ]** をクリック

これで記録が終了し保存できるようになる

※満足しなくても一度終了してもう一度記録しよう

チャット欄の**[ Save ]** をクリックすると

```mcfunction
/data modify storage <namespace> <path> set from storage txcw:api record
```

というコマンドが入力候補に表れるので、好きなストレージに録画データを保存しておこう

`storage txcw:api record`は記録するたびに上書きされるので記録終了後は早めにデータを保存すること



## 3. 保存したデータを再生する

まず、2.で保存したデータを`storage txcw:api play`にコピーする

```mcfunction
/data modify storage txcw:api play set from storage <namespace> <path>
```

コピーした録画データは三種類のコマンドで再生できる

```mcfunction
/function txcw:api/play.me
# コマンド実行者だけがカメラに追従する

/function txcw:api/play.everyone
# ワールド内の全員がカメラに追従する

/function txcw:api/play
# txcw.camera のタグが付いたプレイヤーがカメラに追従する
```

複数のカメラを並行して再生もできるので、プレイヤーごとに別のカメラを再生することも可能



## 4. 再生終了時にコマンドを実行する

#### 4.1. コールバック用ファンクションタグ

配布マップなどの場合、再生が終わった時にファンクションを実行したいケースがあるだろう

そのためにカメラワーク再生後に実行される2つのコールバックが用意してある

`function #txcw:callback/on_finished` 　カメラワーク再生後にServerを実行者として実行される

`function #txcw:callback/on_finished_each` 　カメラワーク再生後に追従していた各プレイヤーを実行者として実行される

ここに任意のファンクションを追加して、コールバックを実現する



#### 4.2. カメラワークid

コールバックファンクションはすべてのカメラワーク終了時に必ず実行されてしまう

しかし、特定のカメラワークが終了したときに特定のファンクションを実行したいことがほとんどだろう

そこでカメラワークそれぞれに固有のidを設定することで、どのカメラワークが終了したときのコールバックなのかを区別できる



3.で保存したデータを再生するときに`storage txcw:api play.id`に任意のidを指定する

idは文字列でも数値でもコンパウンドでも任意のデータで構わない

```mcfunction
/data modify storage txcw:api play set from storage <namespace> <path>
/data modify storage txcw:api play.id set value <any data>
```

この時指定したidがコールバックファンクション呼び出し時に`storage txcw:api callback.id`に格納される

コールバック先で以下のようにに分岐することで特定のカメラワーク終了時にのみ実行するようにできる

```mcfunction
/execute if data storage txcw:api callback{id:<any data>} run ...
```



### ライセンス

MITライセンスを使用している　詳細はLICENCEファイルを確認

以下超要約

改変再配布OK　

何が起きても責任はとらない

再配布時にLICENCEファイルの中の "Copyright (c) 2022 txkodo" の一行上に自分の著作者表示を追加すること



### さいごに

配布マップや動画制作等でぜひ役立ててください

バグ、要望等あれば[twitter](https://mobile.twitter.com/txkodo)までお願いします！



##### 現状わかっている問題点

位置は滑らかに補間されるが、マイクラの仕様上(？)視線の角度が若干カクカクする

透明化アーマースタンドにspectateしているので再生中に別の透明化アーマースタンドがあるとうっすら見えてしまう

何か解決策知っている方がいたら教えてください
