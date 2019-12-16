# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lady = Category.create(name:"レディース")

lady_tops = lady.children.create(name: "トップス")
lady_jacket = lady.children.create(name: "ジャケット/アウター")
lady_pants= lady.children.create(name: "パンツ")
lady_skirt = lady.children.create(name: "スカート")
lady_onepiece = lady.children.create(name: "ワンピース")
lady_shoes = lady.children.create(name: "靴")
lady_bag = lady.children.create(name: "バッグ")
lady_accessories = lady.children.create(name: "アクセサリー")
lady_hairaccessory = lady.children.create(name: "ヘアアクセサリー")
lady_accesmini = lady.children.create(name: "小物")
lady_clock = lady.children.create(name: "時計")
lady_wig = lady.children.create(name: "ウィッグ/エステ")


lady_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"},{name: "シャツ/ブラウス（半袖/袖なし）"}, {name: "シャツ/ブラウス（七分/長袖)"}, {name: "ポロシャツ"}, {name: "キャミソール"}, {name: "タンクトップ"}, {name: "ホルターネック"}, {name: "ニット/セーター"}, {name: "チュニック"}, {name: "カーディガン/ボレロ"}, {name: "アンサンブル"}, {name: "ベスト/ジレ"}, {name: "パーカー"}])
lady_jacket.children.create([{name: "テーラードジャケット"}, {name: "ノーカラカージャケット"}, {name: "デニムジャケット"}, {name: "レザージャケット"}, {name: "ダウンジャケット"}, {name: "ライダージャケット"}, {name: "ライダースジャケット"}, {name: "ミリタリージャケット"}, {name: "ダウンベスト"}, {name: "ジャンバー/ブルゾン"}, {name: "ポンチョ"}, {name: "ロングコート"}, {name: "トレンチコート"}, {name: "ダッフルコート"}, {name: "ピーコート"}])
lady_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"}, {name: "カジュアルパンツ"}, {name: "ハーフパンツ"}, {name: "チノパン"}, {name: "ワークパンツ/カーゴパンツ"}, {name: "クロップドパンツ"}, {name: "サロペット/オーバーオール"}, {name: "オールインワン"}, {name: "サルエルパンツ"}, {name: "ガウチョパンツ"}])
lady_skirt.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"}, {name: "キュロット"}])
lady_onepiece.children.create([{name: "ミニワンピース"}, {name: "ひざ丈ワンピース"}, {name: "ロングワンピース"}])
lady_shoes.children.create([{name: "ハイヒール/パンプス"}, {name: "ブーツ"}, {name: "サンダル"}, {name: "スニーカー"}, {name: "ミュール"}, {name: "モカシン"}, {name: "ローファー/革靴"}, {name: "フラットシューズ/バレエシューズ"}, {name: "長靴/レインシューズ"}])
lady_bag.children.create([{name: "パジャマ"}, {name: "ルームウェア"}])
lady_accessories.children.create([{name: "ソックス"}, {name: "スパッツ/レギンス"}, {name: "ストッキング/タイツ"}, {name: "レッグウォーマー"}])
lady_hairaccessory.children.create([{name: "ニットキャップ/ビーニー"}, {name: "ハット"}, {name: "ハンチング/ベレー帽"}, {name: "キャップ"}, {name: "キャスケット"}, {name: "麦わら帽子"}])
lady_accesmini.children.create([{name: "ハンドバッグ"}, {name: "トートバッグ"}, {name: "エコバッグ"}, {name: "リュック/バックパッグ"}, {name: "ボストンバッグ"}, {name: "スポーツバッグ"}, {name: "ショルダーバッグ"}, {name: "クラッチバッグ"}, {name: "ポーチ/バニティ"}, {name: "ボディバック/ウェストバッグ"}, {name: "マザーズバッグ"}, {name: "メッセンジャーバッグ"}, {name: "ビジネスバッグ"}, {name: "旅行用バッグ/キャリーバッグ"}])
lady_clock.children.create([{name: "アナログ"}, {name: "デジタル"}, {name: "ラバーベルト"}, {name: "レザーベルト"}, {name: "金属ベルト"}])
lady_wig.children.create([{name: "ヘアゴム/シュシュ"}, {name: "ヘアバンド/カチューシャ"}, {name: "ヘアピン"}])

mens = Category.create(name: "メンズ")

mens_tops = mens.children.create(name: "トップス")
mens_jacket = lady.children.create(name: "ジャケット/アウター")
mens_pants = lady.children.create(name: "パンツ")
mens_shoes = lady.children.create(name: "靴")
mens_bag = lady.children.create(name: "バッグ")
mens_suit = lady.children.create(name: "スーツ")
mens_hat = lady.children.create(name: "帽子")
mens_accessories = lady.children.create(name: "アクセサリー")
mens_accesmini = lady.children.create(name: "小物")
mens_clock = lady.children.create(name: "時計")
mens_swimsuit = lady.children.create(name: "水着")
mens_legwear = lady.children.create(name: "レッグウェア")
mens_underwear = lady.children.create(name: "アンダーウェア")


mens_tops.children.create([{name: "Tシャツ/カットソー（半袖/袖なし）"},{name: "Tシャツ/カットソー（七分/長袖）"}])
mens_jacket.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケット"},{name: "その他"}])
mens_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"}, {name: "カジュアルパンツ"}])
mens_shoes.children.create([{name: "スニーカー"}, {name: "サンダル"}, {name: "ブーツ"}])
mens_bag.children.create([{name: "ショルダーバッグ"}, {name: "トートバッグ"}, {name: "ボストンバッグ"}])
mens_suit.children.create([{name: "スーツジャケット"}, {name: "スーツベスト"}, {name: "スラックス"}])
mens_hat.children.create([{name: "キャップ"}, {name: "ハット"}, {name: "ハットキャップ/ビーニー"}])
mens_accessories.children.create([{name: "ネックレス"}, {name: "ブレスレット"}, {name: "バングル"}])
mens_accesmini.children.create([{name: "長財布"}, {name: "折り財布"}, {name: "マネークリップ"}])
mens_clock.children.create([{name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}, {name: "ラバーベルト"}])
mens_swimsuit.children.create([{name: "一般水着"}, {name: "スポーツ用"}, {name: "アクセサリー"}])
mens_legwear.children.create([{name: "ソックス"}, {name: "レギンス/スパッツ"}, {name: "レッグウォーマー"}])
mens_underwear.children.create([{name: "トランクス"}, {name: "ボクサーパンツ"}])






babyh = Category.create(name:"ベビー・キッズ")

babyh_clothes1 = babyh.children.create(name: "ベビー服(女の子用)〜95cm")
babyh_clothes2 = babyh.children.create(name: "ベビー服(男の子用)〜95cm")
babyh_clothes3 = babyh.children.create(name: "ベビー服(男女兼用)〜95cm")
babyh_clothes4 = babyh.children.create(name: "キッズ服(女の子用)100cm〜")
babyh_clothes5 = babyh.children.create(name: "キッズ服(男の子用)100cm〜")
babyh_clothes6 = babyh.children.create(name: "キッズ服(男女兼用)100cm〜")
babyh_shoes = babyh.children.create(name: "キッズ靴")
babyh_accessory = babyh.children.create(name: "子ども用ファッション小物")
babyh_diapers = babyh.children.create(name: "おむつ//")
babyh_goout = babyh.children.create(name: "外出/移動用品")
babyh_meal = babyh.children.create(name: "授乳/食事")
babyh_furniture = babyh.children.create(name: "ベビー家具/寝具/室内用品")
babyh_toy = babyh.children.create(name: "おもちゃ")
babyh_event = babyh.children.create(name: "行事/記念品")

 

babyh_clothes1.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "スカート"}, {name: "ワンピース"}, {name: "ベビードレス"}, {name: "おくるみ"}, {name: "下着/肌着"}, {name: "パジャマ"}, {name: "ロンパース"}])
babyh_clothes2.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "おくるみ"}, {name: "下着/肌着"}, {name: "パジャマ"}, {name: "ロンパース"}])
babyh_clothes3.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "おくるみ"}, {name: "下着/肌着"}, {name: "パジャマ"}, {name: "ロンパース"}])
babyh_clothes4.children.create([{name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス/トレーナー"}, {name: "トップス/チュニック"}, {name: "トップス/タンクトップ"}, {name: "スカート"}, {name: "パンツ"}, {name: "ワンピース"}, {name: "セットアップ"}, {name: "パジャマ"}, {name: "フォーマル/ドレス"}, {name: "和服"}])
babyh_clothes5.children.create([{name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス/トレーナー"}, {name: "パンツ"}, {name: "セットアップ"}, {name: "パジャマ"}, {name: "フォーマル/ドレス"}, {name: "和服"}, {name: "浴衣"}, {name: "水着"}])
babyh_clothes6.children.create([{name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス/トレーナー"}, {name: "ボトムズ"}, {name: "パジャマ"}])
babyh_shoes.children.create([{name: "スニーカー"}, {name: "サンダル"}, {name: "ブーツ"}, {name: "長靴"}])
babyh_accessory.children.create([{name: "靴下/スパッツ"}, {name: "帽子"}, {name: "エプロン"}, {name: "サスペンダー"}, {name: "タイツ"}, {name: "ハンカチ"}, {name: "バンダナ"}, {name: "ベルト"}, {name: "マフラー"}, {name: "傘"}, {name: "手袋"}, {name: "スタイ"}, {name: "バッグ"}])
babyh_diapers.children.create([{name: "おむつ用品"}, {name: "おまる"}, {name: "トレーニングパンツ"}, {name: "ベビーバス"}, {name: "お風呂用品"}])
babyh_goout.children.create([{name: "ベビーカー"}, {name: "抱っこひも/スリング"}, {name: "チャイルドシート"}])
babyh_meal.children.create([{name: "ミルク"}, {name: "ベビーフード"}, {name: "ベビー用食器"}])
babyh_furniture.children.create([{name: "ベッド"}, {name: "布団/毛布"}, {name: "イス"}, {name: "たんす"}])
babyh_toy.children.create([{name: "おふろのおもちゃ"}, {name: "がらがら"}, {name: "オルゴール"}, {name: "ベビージム"}, {name: "手押し車/カタカタ"}, {name: "知育玩具"}])
babyh_event.children.create([{name: "お参り用品"}, {name: "お食い初め用品"}, {name: "アルバム"}, {name: "手形/足形"}])


interior = Category.create(name:"インテリア・住まい・小物")

interior_kitcen = interior.children.create(name: "キッチン/食事")
interior_bed = interior.children.create(name: "ベッド/マットレス")
interior_sofa = interior.children.create(name: "ソファ/ソファベッド")
interior_chair = interior.children.create(name: "椅子/チェア")
interior_desk = interior.children.create(name: "机/テーブル")
interior_storage = interior.children.create(name: "収納家具")
interior_mat = interior.children.create(name: "ラグ/カーペット/マット")
interior_curtain = interior.children.create(name: "カーテン/ブラインド")
interior_light = interior.children.create(name: "ライト/照明")
interior_bedding = interior.children.create(name: "寝具")
interior_snall = interior.children.create(name: "インテリア小物")
interior_season = interior.children.create(name: "季節/年中行事")



interior_kitcen.children.create([{name: "食器"}, {name: "調理器具"}, {name: "収納/キッチン雑貨"}, {name: "弁当用品"}, {name: "カトラリー(スプーン等)"}, {name: "テーブル用品"}, {name: "容器"}, {name: "エプロン"}, {name: "アルコールグッズ"}, {name: "浄水器"}])
interior_bed.children.create([{name: "セミシングベッド"}, {name: "シングルベッド"}, {name: "セミダブルベッド"}, {name: "ダブルベッド"}, {name: "ワイドダブルベッド"}, {name: "クイーンベッド"}, {name: "キングベッド"}, {name: "脚付きマットレスベッド"}, {name: "マットレス"}, {name: "簀子ベッド"}, {name: "ロフトベッド/システムベッド"}, {name: "簡易ベッド/折りたたみベッド"}, {name: "収納付き"}])
interior_sofa.children.create([{name: "ソファセット"}, {name: "シングルソファ"}, {name: "ラブソファ"}, {name: "トリプルソファ"}, {name: "オットマン"}, {name: "コーナーソファ"}, {name: "ビーズソファ/クッションソファ"}, {name: "ローソファ/フロアソファ"}, {name: "ソファベッド"}, {name: "応接セット"}, {name: "ソファカバー"}, {name: "リクライニングソファ"}])
interior_chair.children.create([{name: "一般"}, {name: "スツール"}, {name: "ダイニングチェア"}, {name: "ハイバックチェア"}, {name: "ロッキングチェア"}, {name: "座椅子"}, {name: "折り畳みイス"}, {name: "デスクチェア"}])
interior_desk.children.create([{name: "こたつ"}, {name: "カウンターテーブル"}, {name: "サイドテーブル"}, {name: "センターテーブル"}, {name: "ダイニングテーブル"}, {name: "座卓/ちゃぶ台"}, {name: "アウトドア用"}, {name: "パソコン用"}, {name: "事務机/学習机"}])
interior_storage.children.create([{name: "リビング収納"}, {name: "キッチン収納"}, {name: "玄関/屋外収納"}, {name: "バス/トイレ収納"}, {name: "本収納"}, {name: "本/CD/DVD収納"}, {name: "洋服タンス/押入れ収納"}, {name: "電話台/ファックス台"}, {name: "ドレッサー/鏡台"}, {name: "棚/ラック"}, {name: "ケース/ボックス"}])
interior_mat.children.create([{name: "ラグ"}, {name: "カーペット"}, {name: "ホットカーペット"}, {name: "玄関/キッチンマット"}, {name: "トイレ/バスマット"}])
interior_curtain.children.create([{name: "カーテン"}, {name: "ブラインド"}, {name: "ロールスクリーン"}, {name: "のれん"}])
interior_light.children.create([{name: "蛍光灯/電球"}, {name: "天井照明"}, {name: "フロアスタンド"}])
interior_bedding.children.create([{name: "布団/毛布"}, {name: "枕"}, {name: "シーツ/カバー"}])
interior_snall.children.create([{name: "ごみ箱"}, {name: "ウェルカムボード"}, {name: "オルゴール"}, {name: "クッション"}, {name: "クッションカバー"}, {name: "スリッパラック"}, {name: "ティッシュボックス"}, {name: "バスケット/かご"}, {name: "フォトフレーム"}, {name: "マガジンラック"}, {name: "モビール"}, {name: "花瓶"}, {name: "灰皿"}, {name: "傘立て"}])
interior_season.children.create([{name: "正月"}, {name: "成人式"}, {name: "バレンタインデー"}, {name: "ひな祭り"}, {name: "子どもの日"}, {name: "母の日"}, {name: "父の日"}, {name: "サマーギフト/お中元"}, {name: "夏/夏休み"}, {name: "ハロウィン"}, {name: "敬老の日"}, {name: "七五三"}, {name: "お歳暮"}, {name: "クリスマス"}])



book = Category.create(name:"本・音楽・ゲーム")

book_books = book.children.create(name: "本")
book_manga = book.children.create(name: "漫画")
book_magazine = book.children.create(name: "雑誌")
book_cd = book.children.create(name: "CD")
book_dvd = book.children.create(name: "DVD/ブルーレイ")
book_record = book.children.create(name: "レコード")
book_tvgame = book.children.create(name: "テレビゲーム")


book_books.children.create([{name: "文学/小説"}, {name: "人文/社会"}, {name: "ノンフィクション/教養"}, {name: "地図/旅行ガイド"}, {name: "ビジネス/経済"}, {name: "健康/医学"}, {name: "コンピュータ/IT"}, {name: "趣味/スポーツ/実用"}, {name: "住まい/暮らし/子育て"}, {name: "アート/エンタメ"}, {name: "洋書"}, {name: "絵本"}, {name: "参考書"}])
book_manga.children.create([{name: "全巻セット"}, {name: "少年漫画"}, {name: "少女漫画"}, {name: "青年漫画"}, {name: "女性漫画"}, {name: "同人誌"}])
book_magazine.children.create([{name: "アート/エンタメ"}, {name: "ファッション"}, {name: "ニュース/総合"}, {name: "趣味/スポーツ"}])
book_cd.children.create([{name: "邦楽"}, {name: "洋楽"}, {name: "アニメ"}, {name: "クラシック"}, {name: "K-POP/アジア"}, {name: "キッズ/ファミリー"}])
book_dvd.children.create([{name: "外国映画"}, {name: "日本映画"}, {name: "アニメ"}, {name: "TVドラマ"}, {name: "ミュージック"}, {name: "お笑い/バラエティ"}, {name: "スポーツ/フィットネス"}, {name: "キッズ/ファミリー"}])
book_record.children.create([{name: "邦楽"}, {name: "洋楽"}])
book_record.children.create([{name: "家庭用ゲーム機"}, {name: "家庭用ゲームソフト"}, {name: "携帯用ゲーム本体"}, {name: "携帯用ゲームソフト"}, {name: "PCゲーム"}])

toy = Category.create(name:"おもちゃ・ホビー・グッズ")

toy_toys = toy.children.create(name: "おもちゃ")
toy_talent = toy.children.create(name: "タレントグッズ")
toy_comic = toy.children.create(name: "コミック/アニメグッズ")
toy_card = toy.children.create(name: "トレーディングカード")
toy_figia = toy.children.create(name: "フィギア")
toy_musical = toy.children.create(name: "楽器/器材")
toy_collection = toy.children.create(name: "コレクション")
toy_military = toy.children.create(name: "ミリタリー")
toy_art = toy.children.create(name: "美術品")
toy_forart = toy.children.create(name: "アート用品")


toy_toys.children.create([{name: "キャラクターグッズ"}, {name: "ぬいぐるみ"}, {name: "小物/アクセサリー"}, {name: "模型/プラモデル"}, {name: "ミニカー"}, {name: "トイラジコン"}, {name: "プラモデル"}, {name: "ホビーラジコン"}, {name: "鉄道模型"}])
toy_talent.children.create([{name: "アイドル"}, {name: "ミュージシャン"}, {name: "タレント/お笑い芸人"}, {name: "スポーツ選手"}])
toy_comic.children.create([{name: "ストラップ"}, {name: "キーホルダー"}, {name: "バッジ"}, {name: "カード"}, {name: "クリアファイル"}, {name: "ポスター"}, {name: "タオル"}])
toy_card.children.create([{name: "遊戯王"}, {name: "マジック：ザ・ギャザリング"}, {name: "ポケモンカードゲーム"}, {name: "デュエル・マスターズ"}, {name: "バトルスピリッツ"}, {name: "プリパラ"}, {name: "アイカツ"}, {name: "カードふぁいと！！ヴァンガード"}, {name: "ヴァイスシュヴァルツ"}, {name: "プロ野球オーナーズリーグ"}, {name: "ベースボールヒーローズ"}, {name: "ドラゴンボール"}, {name: "スリーブ"}])
toy_figia.children.create([{name: "コミック/アニメ"}, {name: "特撮"}, {name: "ゲームキャラクター"}, {name: "SF/ファンタジー/ホラー"}, {name: "アメコミ"}, {name: "スポーツ"}, {name: "ミリタリー"}])
toy_musical.children.create([{name: "エレキギター"}, {name: "アコースティックギター"}, {name: "ベース"}, {name: "エフェクター"}, {name: "アンプ"}, {name: "弦楽器"}, {name: "管楽器"}, {name: "鍵盤楽器"}, {name: "打楽器"}, {name: "和楽器"}, {name: "楽譜/スコア"}, {name: "レコーディング/PA機器"}, {name: "DJ機器"}, {name: "DTM/DAW"}])
toy_collection.children.create([{name: "武具"}, {name: "使用済切手/官製はがき"}, {name: "旧貨幣/金貨/銀貨/記念硬貨"}, {name: "印刷物"}, {name: "ノベルティグッズ"}])
toy_military.children.create([{name: "トイガン"}, {name: "個人装備"}])
toy_art.children.create([{name: "陶芸"}, {name: "ガラス"}, {name: "漆芸"}, {name: "金属工芸"}, {name: "絵画/タペストリ"}, {name: "版画"}, {name: "彫刻/オブジェクト"}, {name: "書"}, {name: "写真"}])
toy_forart.children.create([{name: "画材"}, {name: "額縁"}])


perfume = Category.create(name:"コスメ・香水・美容")

perfume_base = perfume.children.create(name: "ベースメイク")
perfume_make = perfume.children.create(name: "メイクアップ")
perfume_nail = perfume.children.create(name: "ネイルケア")
perfume_perfumes = perfume.children.create(name: "香水")
perfume_skin = perfume.children.create(name: "スキンヘア/基礎化粧品")
perfume_hair = perfume.children.create(name: "ヘアケア")
perfume_body = perfume.children.create(name: "ボディケア")
perfume_oral = perfume.children.create(name: "オーラルケア")
perfume_relacation = perfume.children.create(name: "リラクゼーション")
perfume_diet = perfume.children.create(name: "ダイエット")


perfume_base.children.create([{name: "ファンデーション"}, {name: "化粧下地"}, {name: "コントロールカラー"}, {name: "BBクリーム"}, {name: "CCクリーム"}, {name: "コンシーラー"}, {name: "フェイスパウダー"}, {name: "トライアルセット/サンプル"}])
perfume_make.children.create([{name: "アイシャドウ"}, {name: "口紅"}, {name: "リップグロス"}, {name: "リップライナー"}, {name: "チーク"}, {name: "フェイスカラー"}, {name: "マスカラ"}, {name: "アイライナー"}, {name: "つけまつげ"}, {name: "アイブロウペンシル"}, {name: "パウダーアイブロウ"}, {name: "眉マスカラ"}, {name: "トライアルセット/サンプル"}, {name: "メイク道具/化粧小物"}])
perfume_nail.children.create([{name: "ネイルカラー"}, {name: "カラージェル"}, {name: "ネイルベースコート/トップコート"}, {name: "ネイルアート用品"}, {name: "ネイルパーツ"}, {name: "ネイルチップ/付け爪"}, {name: "手入れ道具"}, {name: "除光液"}])
perfume_perfumes.children.create([{name: "香水(女性用)"}, {name: "香水(男性用)"}, {name: "ユニセックス"}, {name: "ボディミスト"}])
perfume_skin.children.create([{name: "化粧水/ローション"}, {name: "乳液/ミルク"}, {name: "美容液"}, {name: "フェイスクリーム"}, {name: "洗顔料"}, {name: "クレンジング/メイク落とし"}, {name: "パック/フェイスマスク"}, {name: "ジェル/ゲル"}, {name: "ブースター/導入液"}, {name: "アイケア"}, {name: "リップケア"}, {name: "トライアル/サンプル"}, {name: "洗顔グッズ"}])
perfume_hair.children.create([{name: "シャンプー"}, {name: "トリートメント"}, {name: "コンディショナー"}, {name: "リンス"}, {name: "スタイリング剤"}, {name: "カラーリング剤"}, {name: "ブラシ"}])
perfume_body.children.create([{name: "オイル/クリーム"}, {name: "ハンドクリーム"}, {name: "ローション"}, {name: "日焼け止め/サンオイル"}, {name: "ボディソープ"}, {name: "入浴剤"}, {name: "制汁/デオドラント"}, {name: "フットケア"}])
perfume_oral.children.create([{name: "口臭防止/エチケット用品"}, {name: "歯ブラシ"}])
perfume_relacation.children.create([{name: "エッセンシャルオイル"}, {name: "芳香器"}, {name: "お香/香炉"}, {name: "キャンドル"}, {name: "リラクゼーショングッズ"}])
perfume_diet.children.create([{name: "ダイエット食品"}, {name: "エクササイズ用品"}, {name: "体重計"}, {name: "体脂肪計"}])


homeappliance = Category.create(name:"家電・スマホ・カメラ")

homeappliance_mobile = homeappliance.children.create(name: "スマートフォン/携帯電話")
homeappliance_accessories = homeappliance.children.create(name: "スマホアクセサリー")
homeappliance_pc = homeappliance.children.create(name: "PC/タブレット")
homeappliance_camera = homeappliance.children.create(name: "カメラ")
homeappliance_tv = homeappliance.children.create(name: "テレビ/映像機器")
homeappliance_audio = homeappliance.children.create(name: "オーディオ機器")
homeappliance_beauty = homeappliance.children.create(name: "美容/健康")
homeappliance_air = homeappliance.children.create(name: "冷暖房/空調")
homeappliance_home = homeappliance.children.create(name: "生活家電")


homeappliance_mobile.children.create([{name: "スマートフォン本体"}, {name: "バッテリー/充電器"}, {name: "携帯電話本体"}, {name: "PHS本体"}])
homeappliance_accessories.children.create([{name: "Android用ケース"}, {name: "iPhone用ケース"}, {name: "カバー"}, {name: "イヤホンジャック"}, {name: "ストラップ"}, {name: "フィルム"}, {name: "自撮り棒"}])
homeappliance_pc.children.create([{name: "タブレット"}, {name: "ノートPC"}, {name: "デスクトップ型PC"}, {name: "ディスプレイ"}, {name: "電子ブックリーダー"}, {name: "PC周辺機器"}, {name: "PCパーツ"}])
homeappliance_camera.children.create([{name: "デジタルカメラ"}, {name: "ビデオカメラ"}, {name: "レンズ(単焦点)"}, {name: "レンズ(ズーム)"}, {name: "フィルムカメラ"}, {name: "防犯カメラ"}])
homeappliance_tv.children.create([{name: "テレビ"}, {name: "プロジェクター"}, {name: "ブルーレイレコーダー"}, {name: "DVDレコーダー"}, {name: "ブルーレイレコーダー"}, {name: "DVDプレーヤー"}, {name: "映像用ケーブル"}])
homeappliance_audio.children.create([{name: "ポータブルプレーヤー"}, {name: "イヤフォン"}, {name: "ヘッドフォン"}, {name: "アンプ"}, {name: "スピーカー"}, {name: "ケーブル/シールド"}, {name: "ラジオ"}])
homeappliance_beauty.children.create([{name: "ヘアドライヤー"}, {name: "ヘアアイロン"}, {name: "美容機器"}, {name: "電気シェーバー"}, {name: "電動歯ブラシ"}])
homeappliance_air.children.create([{name: "エアコン"}, {name: "空気清浄機"}, {name: "加湿器"}, {name: "扇風機"}, {name: "除湿機"}, {name: "ファンヒーター"}, {name: "電気ヒーター"}, {name: "オイルヒーター"}, {name: "ストーブ"}, {name: "ホットカーペット"}, {name: "こたつ"}, {name: "電気毛布"}])
homeappliance_home.children.create([{name: "冷蔵庫"}, {name: "洗濯機"}, {name: "炊飯器"}, {name: "電子レンジ/オーブン"}, {name: "調理機器"}, {name: "アイロン"}, {name: "掃除機"}, {name: "エスプレッソマシン"}, {name: "コーヒーメーカー"}, {name: "衣類乾燥機"}])


sports = Category.create(name:"スポーツ・レジャー")

sports_golf = sports.children.create(name: "ゴルフ")
sports_phishing = sports.children.create(name: "フィッシング")
sports_bicycle = sports.children.create(name: "自転車")
sports_training = sports.children.create(name: "トレーニング/エクササイズ")
sports_baseball = sports.children.create(name: "野球")
sports_football = sports.children.create(name: "サッカー/フットサル")
sports_tennis = sports.children.create(name: "テニス")
sports_snow = sports.children.create(name: "スノーボード")
sports_sukiing = sports.children.create(name: "スキー")
sports_other = sports.children.create(name: "その他スポーツ")
sports_autoua = sports.children.create(name: "アウトドア")


sports_golf.children.create([{name: "クラブ"}, {name: "ウエア(男性用)"}, {name: "ウエア(女性用)"}, {name: "バッグ"}, {name: "シューズ(男性用)"}, {name: "シューズ(女性用)"}, {name: "アクセサリー"}])
sports_phishing.children.create([{name: "ロッド"}, {name: "リール"}, {name: "ルアー用品"}, {name: "ウエア"}, {name: "釣り糸/ライン"}])
sports_bicycle.children.create([{name: "自転車本体"}, {name: "ウエア"}, {name: "パーツ"}, {name: "アクセサリー"}, {name: "バッグ"}, {name: "工具/メンテナンス"}])
sports_training.children.create([{name: "ランキング"}, {name: "ウォーキング"}, {name: "ヨガ"}, {name: "トレーニング用品"}])
sports_baseball.children.create([{name: "ウェア"}, {name: "シューズ"}, {name: "グローブ"}, {name: "バッド"}, {name: "アクセサリー"}, {name: "防具"}, {name: "練習機器"}, {name: "記念グッズ"}, {name: "応援グッズ"}])
sports_football.children.create([{name: "ウェア"}, {name: "シューズ"}, {name: "ボール"}, {name: "アクセサリー"}, {name: "記念グッズ"}, {name: "応援グッズ"}])
sports_tennis.children.create([{name: "ラケット(硬式用)"}, {name: "ラケット(軟式用)"}, {name: "ウェア"}, {name: "シューズ"}, {name: "ボール"}, {name: "アクセサリー"}, {name: "記念グッズ"}, {name: "応援グッズ"}])
sports_snow.children.create([{name: "ボード"}, {name: "バインディング"}, {name: "ブーツ(男性用)"}, {name: "ブーツ(女性用)"}, {name: "ブーツ(子ども用)"}, {name: "ウエア/装備(男性用)"}, {name: "ウエア/装備(女性用)"}, {name: "ウエア/装備(子ども用)"}, {name: "アクセサリー"}, {name: "バッグ"}])
sports_sukiing.children.create([{name: "板"}, {name: "ブーツ(男性用)"}, {name: "ブーツ(女性用)"}, {name: "ブーツ(子ども用)"}, {name: "ビンディング"}, {name: "ウエア(男性用)"}, {name: "ウエア(女性用)"}, {name: "ウエア(子ども用)"}, {name: "ストック"}])
sports_other.children.create([{name: "ダンス/バレエ"}, {name: "サーフィン"}, {name: "バスケットボール"}, {name: "バドミントン"}, {name: "バレーボール"}, {name: "スケートボード"}, {name: "陸上競技"}, {name: "ラグビー"}, {name: "アメリカンフットボール"}, {name: "ボクシング"}, {name: "ボウリング"}])
sports_autoua.children.create([{name: "テント/タープ"}, {name: "ライト/ランタン"}, {name: "寝袋/寝具"}, {name: "テーブル/チェア"}, {name: "ストーブ/コンロ"}, {name: "調理器具"}, {name: "食器"}, {name: "登山用品"}])


handmade = Category.create(name:"ハンドメイド")

handmade_accessory = handmade.children.create(name: "アクセサリー(女性用)")
handmade_fashion = handmade.children.create(name: "ファッション/小物")
handmade_clock = handmade.children.create(name: "アクセサリー/時計")
handmade_daily = handmade.children.create(name: "日用品/インテリア")
handmade_hobby = handmade.children.create(name: "趣味/おもちゃ")
handmade_kids = handmade.children.create(name: "キッズ/ベビー")
handmade_material = handmade.children.create(name: "素材/材料")
handmade_creation = handmade.children.create(name: "二次創作物")

handmade_accessory.children.create([{name: "ピアス"}, {name: "イヤリング"}, {name: "ネックレス"}, {name: "ブレスレット"}, {name: "リング"}, {name: "チャーム"}, {name: "ヘアゴム"}, {name: "アンクレット"}])
handmade_fashion.children.create([{name: "バッグ(女性用)"}, {name: "バッグ(男性用)"}, {name: "財布(女性用)"}, {name: "財布(男性用)"}, {name: "ファッション雑貨"}])
handmade_clock.children.create([{name: "アクセサリー(男性用)"}, {name: "時計(女性用)"}, {name: "時計(男性用)"}])
handmade_daily.children.create([{name: "キッチン用品"}, {name: "家具"}, {name: "文房具"}, {name: "アート/写真"}, {name: "アロマ/キャンドル"}, {name: "フラワー/ガーデン"}])
handmade_hobby.children.create([{name: "クラフト/布製品"}, {name: "おもちゃ/人間"}])
handmade_kids.children.create([{name: "ファッション雑貨"}, {name: "スタイ/よだれかけ"}, {name: "外出用品"}, {name: "ネームタグ"}])
handmade_material.children.create([{name: "各種パーツ"}, {name: "生地/糸"}, {name: "型紙/パターン"}])
handmade_creation.children.create([{name: "ingress"}, {name: "クリエイターズ宇宙旅行"}, {name: "シンデレラガールズCPグッズ"}])


tiket = Category.create(name:"チケット")

tiket_musics = tiket.children.create(name: "音楽")
tiket_sports = tiket.children.create(name: "スポーツ")
tiket_theater = tiket.children.create(name: "演劇/芸能")
tiket_event = tiket.children.create(name: "イベント")
tiket_movies = tiket.children.create(name: "映画")
tiket_facilities = tiket.children.create(name: "施設利用券")
tiket_discount = tiket.children.create(name: "優待券/割引券")

tiket_musics.children.create([{name: "男性アイドル"}, {name: "女性アイドル"}, {name: "韓流"}, {name: "国内アーティスト"}, {name: "海外アーティスト"}, {name: "音楽フェス"}, {name: "声優/アニメ"}])
tiket_sports.children.create([{name: "サッカー"}, {name: "野球"}, {name: "テニス"}, {name: "格闘技/プロレス"}, {name: "相撲/武道"}, {name: "ゴルフ"}, {name: "バレーボール"}, {name: "バスケットボール"}, {name: "モータースポーツ"}, {name: "ウィンタースポーツ"}])
tiket_theater.children.create([{name: "ミュージカル"}, {name: "演劇"}, {name: "伝統芸能"}, {name: "落語"}, {name: "お笑い"}, {name: "オペラ"}, {name: "サーカス"}, {name: "バレエ"}])
tiket_event.children.create([{name: "声優/アニメ"}, {name: "キッズ/ファミリー"}, {name: "トークショー/講演会"}])
tiket_movies.children.create([{name: "邦画"}, {name: "洋画"}])
tiket_facilities.children.create([{name: "遊園地/テーマパーク"}, {name: "美術館/博物館"}, {name: "スキー場"}, {name: "ゴルフ場"}, {name: "フィットネスクラブ"}, {name: "プール"}, {name: "ボウリング場"}, {name: "水族館"}, {name: "動物園"}])
tiket_discount.children.create([{name: "ショッピング"}, {name: "レストラン/食事券"}, {name: "フード/ドリンク券"}, {name: "宿泊券"}])

car = Category.create(name:"自動車・オートバイ")

car_body = car.children.create(name: "自転車本体")
car_tire = car.children.create(name: "自転車タイヤ/ホイール")
car_parts = car.children.create(name: "自転車パーツ")
car_accessory = car.children.create(name: "自転車アクセサリー")
car_autobody = car.children.create(name: "オートバイ車体")
car_autoparts = car.children.create(name: "オートバイパーツ")
car_autoaccessory = car.children.create(name: "オートバイアクセサリー")

car_body.children.create([{name: "国内自動車本体"}, {name: "外国自動車本体"}])
car_tire.children.create([{name: "タイヤ/ホイールセット"}, {name: "タイヤ"}, {name: "ホイール"}])
car_parts.children.create([{name: "サスペンション"}, {name: "ブレーキ"}, {name: "外装、エアロパーツ"}, {name: "ライト"}, {name: "内装品、シート"}, {name: "ステアリング"}, {name: "マフラー・排気系"}, {name: "エンジン、過給器、冷却装置"}, {name: "クラッチ、ミッション、駆動系"}, {name: "電装品"}, {name: "補充パーツ"}, {name: "凡用パーツ"}, {name: "外国自動車用パーツ"}])
car_accessory.children.create([{name: "車内アクセサリー"}, {name: "カーナビ"}, {name: "カーオーディオ"}, {name: "車外アクセサリー"}, {name: "メンテナンス用品"}, {name: "チャイルドシート"}, {name: "ドライブレコーダー"}, {name: "レーダー探知機"}, {name: "カタログ/マニュアル"}, {name: "セキュリティ"}, {name: "ETC"}])
car_autobody.children.create([{name: ""}])
car_autoparts.children.create([{name: "タイヤ"}, {name: "マフラー"}, {name: "エンジン、冷却装置"}, {name: "カウル、フェンダー、外装"}, {name: "サスペンション"}, {name: "ホイール"}, {name: "シート"}, {name: "ブレーキ"}, {name: "タンク"}, {name: "ライト、ウィンカー"}, {name: "チェーン、スプロケット、駆動系"}, {name: "メーター"}, {name: "電装系"}, {name: "ミラー"}])
car_autoaccessory.children.create([{name: "ヘルメット/シールド"}, {name: "バイクウエア/装備"}, {name: "アクセサリー"}, {name: "メンテナンス"}, {name: "カタログ/マニュアル"}])


other = Category.create(name:"その他")

other_bulksale = other.children.create(name: "まとめ売り")
other_pet = other.children.create(name: "ペット用品")
other_food = other.children.create(name: "食品")
other_liquor = other.children.create(name: "飲料/酒")
other_travel = other.children.create(name: "日用品/生活雑貨/旅行")
other_antique = other.children.create(name: "アンティーク/コレクション")
other_atationery = other.children.create(name: "文房具/事務用品")
other_office = other.children.create(name: "事務/店舗用品")

other_bulksale.children.create([{name: ""}])
other_pet.children.create([{name: "ペットフード"}, {name: "犬用品"}, {name: "猫用品"}, {name: "魚用品/水草"}, {name: "小動物用品"}, {name: "爬虫類/両生類用品"}, {name: "かご/おり"}, {name: "鳥用品"}, {name: "虫類用品"}])
other_food.children.create([{name: "菓子"}, {name: "米"}, {name: "野菜"}, {name: "果物"}, {name: "調味料"}, {name: "魚介類(加工食品)"}, {name: "肉類(加工食品)"}, {name: "その他 加工食品"}])
other_liquor.children.create([{name: "コーヒー"}, {name: "ソフトドリンク"}, {name: "ミネラルウォーター"}, {name: "茶"}, {name: "ウイスキー"}, {name: "ワイン"}, {name: "ブランデー"}, {name: "焼酎"}, {name: "日本酒"}, {name: "ビール、発泡酒"}])
other_travel.children.create([{name: "タオル/バス用品"}, {name: "日用品/生活雑貨"}, {name: "洗剤/柔軟剤"}, {name: "旅行用品"}, {name: "防災関連グッズ"}])
other_antique.children.create([{name: "雑貨"}, {name: "工芸品"}, {name: "家具"}, {name: "印刷物"}])
other_atationery.children.create([{name: "筆記具"}, {name: "ノート/メモ帳"}, {name: "テープ/マスキングテープ"}, {name: "カレンダー/スケジュール"}, {name: "アルバム/スクラップ"}, {name: "ファイル/バインダー"}, {name: "はさみ/カッター"}, {name: "カードホルダー/名刺管理"}, {name: "のり/ホッチキス"}])
other_office.children.create([{name: "オフィス用品一般"}, {name: "オフィス家具"}, {name: "店舗用品"}, {name: "OA機器"}, {name: "ラッピング/包装"}])
