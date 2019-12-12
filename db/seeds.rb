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

.children.create([{name: ""}, {name: ""}, {name: ""}])