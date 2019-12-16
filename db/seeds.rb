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
lady_yukata = lady.children.create(name: "浴衣/水着")
lady_dress = lady.children.create(name: "スーツ/ドレス")
lady_maternity = lady.children.create(name: "マタニティ")


lady_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"},{name: "その他"}])
lady_jacket.children.create([{name: ""}, {name: ""}, {name: ""}])
lady_pants.children.create([{name: ""}, {name: ""}, {name: ""}])
lady_skirt.children.create([{name: ""}, {name: ""}, {name: ""}])
lady_onepiece.children.create([{name: ""}, {name: ""}, {name: ""}])
lady_shoes.children.create([{name: ""}, {name: ""}, {name: ""}])
lady_bag.children.create([{name: ""}, {name: ""}, {name: ""}])
lady_accessories.children.create([{name: ""}, {name: ""}, {name: ""}])
lady_hairaccessory.children.create([{name: ""}, {name: ""}, {name: ""}])
lady_accesmini.children.create([{name: ""}, {name: ""}, {name: ""}])
lady_clock.children.create([{name: ""}, {name: ""}, {name: ""}])
lady_wig.children.create([{name: ""}, {name: ""}, {name: ""}])
lady_yukata.children.create([{name: ""}, {name: ""}, {name: ""}])
lady_dress.children.create([{name: ""}, {name: ""}, {name: ""}])
lady_maternity.children.create([{name: ""}, {name: ""}, {name: ""}])


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


mens_tops.children.create([{name: "すべて"}, {name: "Tシャツ/カットソー（半袖/袖なし）"},{name: "Tシャツ/カットソー（七分/長袖）"}])
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
.children.create([{name: ""}, {name: ""}, {name: ""}])

.children.create([{name: ""}, {name: ""}, {name: ""}])

interior = Category.create(name:"インテリア・住まい・小物")
.children.create(name: "")

.children.create([{name: ""}, {name: ""}, {name: ""}])

book = Category.create(name:"本・音楽・ゲーム")
.children.create(name: "")

.children.create([{name: ""}, {name: ""}, {name: ""}])

toy = Category.create(name:"おもちゃ・ホビー・グッズ")
.children.create(name: "")

.children.create([{name: ""}, {name: ""}, {name: ""}])

perfume = Category.create(name:"コスメ・香水・美容")
.children.create(name: "")

.children.create([{name: ""}, {name: ""}, {name: ""}])

homeappliance = Category.create(name:"家電・スマホ・カメラ")
.children.create(name: "")

.children.create([{name: ""}, {name: ""}, {name: ""}])

sports = Category.create(name:"スポーツ・レジャー")
.children.create(name: "")

.children.create([{name: ""}, {name: ""}, {name: ""}])

handmade = Category.create(name:"ハンドメイド")
.children.create(name: "")

.children.create([{name: ""}, {name: ""}, {name: ""}])

tiket = Category.create(name:"チケット")
.children.create(name: "")

.children.create([{name: ""}, {name: ""}, {name: ""}])

car = Category.create(name:"自動車・オートバイ")
.children.create(name: "")

.children.create([{name: ""}, {name: ""}, {name: ""}])

other = Category.create(name:"その他")
.children.create(name: "")

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
