
�
data/pdf/README.md�# 商品スペックシートPDF 置き場

このフォルダに、商品スペックシートのPDF(5商品分)を配置します。
Part4 の Cortex Search セクションで `AI_PARSE_DOCUMENT` によるテキスト抽出 → チャンク分割 → Cortex Search Service 構築に使用します。

## ステータス

**作成済み(2026/9/8)**。5商品分のPDFを配置済みです。元テキスト(Markdown)は `drafts/` に保管しています。

## ファイル命名規則

商品IDをファイル名に含めます(チャンクへの `product_id` メタデータ付与時に、ファイル名から商品IDを抽出するため)。

| ファイル名 | 商品ID | 商品名 | カテゴリ | 価格 |
|---|---|---|---|---|
| `spec_PROD-001.pdf` | PROD-001 | UltraLight Carry-On 36L | スーツケース | 29,800円 |
| `spec_PROD-002.pdf` | PROD-002 | トラベルオーガナイザー 3点セット | ポーチ | 4,980円 |
| `spec_PROD-003.pdf` | PROD-003 | 低反発ネックピロー FitRest | ネックピロー | 5,980円 |
| `spec_PROD-004.pdf` | PROD-004 | GaN急速充電器 65W | 充電器 | 4,980円 |
| `spec_PROD-005.pdf` | PROD-005 | 本革パスポートケース | パスポートケース | 6,980円 |

※ 上記は `data/csv/products.csv` の内容に基づきます。

## 共通見出し構成

各PDFは以下の見出し構成を共通テンプレートとし、内容はカテゴリごとに変えます(スーツケースとネックピローで記載する仕様項目が違うのは自然なため、無理に揃えません)。

1. **概要** — 商品名・コンセプト・想定ユーザー
2. **仕様** — カテゴリごとの仕様値(下表参照)
3. **使用シーン** — どんな旅行・場面で使うか
4. **こだわりポイント** — 開発上こだわった点・差別化要素

### カテゴリごとの仕様項目の例

| カテゴリ | 記載する仕様の例 |
|---|---|
| スーツケース | サイズ・容量・重さ・素材・ロック機能・キャスター |
| ポーチ | サイズ(S/M/L)・素材・収納ポケット数・防水性 |
| ネックピロー | 素材・形状・洗濯可否・収納方法・重さ |
| 充電器 | 出力(W)・ポート数・対応機種・急速充電規格・サイズ |
| パスポートケース | 素材(革の種類)・カードポケット数・スキミング防止・サイズ |

## 注意点

- 各PDFの**情報量・詳細さのレベル感は揃える**こと(1商品だけ内容が薄いとデモで見劣りするため)
- 内容は `data/csv/products.csv` の `description` 列と矛盾しないようにする
- 横断質問デモで使うため、**構造化データ側(売上・画像特徴量)からは分からない情報**(素材・サイズ・機能の詳細)をPDF側に記載すること
*
��� 11ee569d7224cc78a9ed8a2325683358
�
.snowflake/settings.json�{
  "notebookSettings": {
    "idleAutoShutdownTimeSeconds": 900,
    "externalAccessIntegrations": [],
    "serviceDefaults": {
      "runtime": "V3-CPU-PY3.12",
      "runtimeImage": "",
      "computePool": "SYSTEM_COMPUTE_POOL_CPU",
      "idleTimeoutSec": 86400,
      "externalAccessIntegrations": [],
      "artifactRepositories": [
        "SNOWFLAKE.SNOWPARK.PYPI_SHARED_REPOSITORY"
      ],
      "isGpuRuntime": false,
      "pythonVersion": "3.12"
    }
  }
}*
��� 4954ea70afc6bfddcde299087aff56cf
��

data/json/sns_logs.json��
[
  {
    "post_id": "SNS-IG-2024-00086",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@room_yuki",
    "display_name": "お部屋づくりYuki",
    "content": "スマートスピーカーのサイズ感が知りたい。実際に使ってる人教えて〜",
    "posted_at": "2024-12-01T08:09:00+09:00",
    "likes": 90,
    "retweets": 0,
    "replies": 15,
    "hashtags": [
      "シンプルコーデ",
      "ファッション",
      "グレイシャースタイル",
      "テック"
    ],
    "mentioned_products": [
      "スマートスピーカー"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00192",
    "platform": "instagram",
    "post_type": "post",
    "username": "@room_daiki",
    "display_name": "お部屋づくりDaiki",
    "content": "オーガニックコットンTシャツ、期待以上でした✨ リピート決定 #グレイシャースタイル #買ってよかった",
    "posted_at": "2024-12-01T10:31:00+09:00",
    "likes": 1907,
    "retweets": 0,
    "replies": 69,
    "hashtags": [
      "デスク周り",
      "ファッション",
      "在宅ワーク",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "オーガニックコットンTシャツ"
    ],
    "media_urls": [
      "https://example.com/img/user_post_192.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00208",
    "platform": "twitter",
    "post_type": "post",
    "username": "@simple_life_misaki",
    "display_name": "シンプルライフMisaki",
    "content": "【レビュー】グレイシャースタイルの北欧風フロアライト使ってみた。\n\n良い点👍\n・デザインが良い\n・機能性◎\n\n気になる点👎\n・サイズがちょっと大きい\n\n総合: 4/5 #グレイシャースタイル #レビュー",
    "posted_at": "2024-12-01T10:37:00+09:00",
    "likes": 502,
    "retweets": 49,
    "replies": 62,
    "hashtags": [
      "休日の過ごし方",
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "ステイホーム",
      "レビュー"
    ],
    "mentioned_products": [
      "北欧風フロアライト"
    ],
    "media_urls": [
      "https://example.com/img/review_208.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00008",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@gift_yuji",
    "display_name": "ギフト探しYuji",
    "content": "オーガニックコットンTシャツって重さはどのくらいですか？ 誰か知ってる人いますか？ #グレイシャースタイル",
    "posted_at": "2024-12-01T10:56:00+09:00",
    "likes": 2,
    "retweets": 0,
    "replies": 1,
    "hashtags": [],
    "mentioned_products": [
      "オーガニックコットンTシャツ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00203",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@gift_mai",
    "display_name": "ギフト探しMai",
    "content": "グレイシャースタイルの収納ボックスセットと収納付きデスクで悩み中…アドバイス求む！",
    "posted_at": "2024-12-01T13:49:00+09:00",
    "likes": 20,
    "retweets": 12,
    "replies": 17,
    "hashtags": [
      "暮らし",
      "インテリア",
      "部屋づくり",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00134",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@review_akiko",
    "display_name": "レビュワーAkiko",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-79417832の件で問い合わせです。返品の手続きについて教えてください",
    "posted_at": "2024-12-01T13:54:00+09:00",
    "likes": 18,
    "retweets": 0,
    "replies": 4,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00042",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@office_takeshi",
    "display_name": "オフィスワークTakeshi",
    "content": "プレミアムカシミヤセーター、どうしようか迷ってる🤔 使ってる人いる？ #グレイシャースタイル",
    "posted_at": "2024-12-01T16:38:00+09:00",
    "likes": 48,
    "retweets": 0,
    "replies": 6,
    "hashtags": [
      "カジュアル",
      "ファッション",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "プレミアムカシミヤセーター"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00189",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@home_yuji",
    "display_name": "Yujiのマイホーム記録",
    "content": "グレイシャースタイルの吊り下げペンダントライト、デザインも機能も◎ 毎日使うのが楽しみ",
    "posted_at": "2024-12-01T19:02:00+09:00",
    "likes": 2778,
    "retweets": 154,
    "replies": 46,
    "hashtags": [
      "暮らし",
      "グレイシャースタイル",
      "テック",
      "インテリア",
      "ガジェット"
    ],
    "mentioned_products": [
      "吊り下げペンダントライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_189.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00255",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@fashion_hiroshi",
    "display_name": "ファッションHiroshi",
    "content": "リネンシャツのサイズ感が知りたい。実際に使ってる人教えて〜",
    "posted_at": "2024-12-01T22:05:00+09:00",
    "likes": 99,
    "retweets": 2,
    "replies": 23,
    "hashtags": [
      "スカンジナビアン",
      "シンプルコーデ",
      "グレイシャースタイル",
      "北欧インテリア"
    ],
    "mentioned_products": [
      "リネンシャツ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00089",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@modern_emi",
    "display_name": "モダンリビングEmi",
    "content": "グレイシャースタイルのサイト、ページが重いで困ってる😭",
    "posted_at": "2024-12-01T22:34:00+09:00",
    "likes": 83,
    "retweets": 0,
    "replies": 7,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00029",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@gadget_satoshi",
    "display_name": "ガジェットSatoshi",
    "content": "@GlacierStyle_JP リネンシャツの耐久性について質問です。ギフトラッピングはできますか？",
    "posted_at": "2024-12-02T07:50:00+09:00",
    "likes": 6,
    "retweets": 0,
    "replies": 10,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00038",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@minimal_daiki",
    "display_name": "ミニマリストDaiki",
    "content": "グレイシャースタイルでLED調光デスクライト買って正解だった👏 買って本当によかった",
    "posted_at": "2024-12-02T08:27:00+09:00",
    "likes": 594,
    "retweets": 61,
    "replies": 30,
    "hashtags": [
      "シンプルライフ",
      "暮らし",
      "グレイシャースタイル",
      "ミニマリスト",
      "インテリア"
    ],
    "mentioned_products": [
      "LED調光デスクライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_038.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00145",
    "platform": "instagram",
    "post_type": "post",
    "username": "@minimal_akiko",
    "display_name": "ミニマリストAkiko",
    "content": "【購入レビュー】モダンデスクライト ⭐5\nデザインがシンプルで使いやすい #GlacierStyle",
    "posted_at": "2024-12-02T10:49:00+09:00",
    "likes": 857,
    "retweets": 0,
    "replies": 75,
    "hashtags": [
      "暮らし",
      "グレイシャースタイル",
      "テック",
      "インテリア",
      "ガジェット",
      "レビュー"
    ],
    "mentioned_products": [
      "モダンデスクライト"
    ],
    "media_urls": [
      "https://example.com/img/review_145.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00221",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@design_rina",
    "display_name": "デザイン好きRina",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-65685109の件で問い合わせです。配送状況を確認したいです",
    "posted_at": "2024-12-02T12:41:00+09:00",
    "likes": 25,
    "retweets": 0,
    "replies": 5,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00012",
    "platform": "instagram",
    "post_type": "post",
    "username": "@gadget_emi",
    "display_name": "ガジェットEmi",
    "content": "母の日に北欧風ペンダントライトをプレゼント🎁 想像以上のクオリティ #グレイシャースタイル #ギフト",
    "posted_at": "2024-12-02T13:45:00+09:00",
    "likes": 750,
    "retweets": 0,
    "replies": 11,
    "hashtags": [
      "ネットショッピング",
      "暮らし",
      "購入品",
      "グレイシャースタイル",
      "インテリア",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "北欧風ペンダントライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00222",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@design_rina お問い合わせありがとうございます。ご満足いただけて嬉しいです！素敵なお写真もありがとうございます📸",
    "posted_at": "2024-12-02T13:47:00+09:00",
    "likes": 10,
    "retweets": 0,
    "replies": 2,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00130",
    "platform": "twitter",
    "post_type": "post",
    "username": "@simple_life_kenji",
    "display_name": "シンプルライフKenji",
    "content": "グレイシャースタイルでオーガニックコットンTシャツ買って正解だった👏 部屋の雰囲気がガラッと変わった！",
    "posted_at": "2024-12-02T13:57:00+09:00",
    "likes": 1338,
    "retweets": 154,
    "replies": 28,
    "hashtags": [
      "シンプルコーデ",
      "収納",
      "シンプルライフ",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "オーガニックコットンTシャツ"
    ],
    "media_urls": [
      "https://example.com/img/user_post_130.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00223",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@work_from_home_yuko",
    "display_name": "在宅ワーカーYuko",
    "content": "グレイシャースタイルのスマートスピーカー、デザインも機能も◎ SNSで見て気になってた",
    "posted_at": "2024-12-02T14:04:00+09:00",
    "likes": 1077,
    "retweets": 146,
    "replies": 15,
    "hashtags": [
      "ガジェット",
      "ライト",
      "おしゃれ照明",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "スマートスピーカー"
    ],
    "media_urls": [
      "https://example.com/img/user_post_223.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00097",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@nordic_hiroshi",
    "display_name": "北欧好きHiroshi",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-96405909の件で問い合わせです。キャンセルは可能でしょうか",
    "posted_at": "2024-12-02T14:58:00+09:00",
    "likes": 16,
    "retweets": 0,
    "replies": 8,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00227",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@lifestyle_satoshi",
    "display_name": "Satoshi｜暮らしを楽しむ",
    "content": "収納付きデスクの取っ手がすぐ外れたになった。品質大丈夫？",
    "posted_at": "2024-12-02T16:27:00+09:00",
    "likes": 80,
    "retweets": 0,
    "replies": 3,
    "hashtags": [],
    "mentioned_products": [
      "収納付きデスク"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00009",
    "platform": "twitter",
    "post_type": "post",
    "username": "@room_yuki",
    "display_name": "お部屋づくりYuki",
    "content": "【購入レビュー】デザインシーリングライト ⭐4\n買って本当によかった #GlacierStyle",
    "posted_at": "2024-12-02T16:57:00+09:00",
    "likes": 994,
    "retweets": 67,
    "replies": 22,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "購入品",
      "グレイシャースタイル",
      "お買い物",
      "レビュー"
    ],
    "mentioned_products": [
      "デザインシーリングライト"
    ],
    "media_urls": [
      "https://example.com/img/review_009.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00013",
    "platform": "twitter",
    "post_type": "post",
    "username": "@gadget_kazuki",
    "display_name": "ガジェットKazuki",
    "content": "ワイヤレスイヤホンProが届いた！ 思ってた以上にクオリティ高くて大満足😊 #GlacierStyle #グレイシャースタイル",
    "posted_at": "2024-12-02T17:28:00+09:00",
    "likes": 663,
    "retweets": 131,
    "replies": 26,
    "hashtags": [
      "ガジェット",
      "グレイシャースタイル",
      "テック"
    ],
    "mentioned_products": [
      "ワイヤレスイヤホンPro"
    ],
    "media_urls": [
      "https://example.com/img/user_post_013.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00209",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@minimal_daiki",
    "display_name": "ミニマリストDaiki",
    "content": "デザインシーリングライトのサイズ感が知りたい。実際に使ってる人教えて〜",
    "posted_at": "2024-12-02T19:13:00+09:00",
    "likes": 89,
    "retweets": 14,
    "replies": 13,
    "hashtags": [
      "暮らし",
      "グレイシャースタイル",
      "おうち時間",
      "ステイホーム",
      "インテリア"
    ],
    "mentioned_products": [
      "デザインシーリングライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00202",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@home_daiki",
    "display_name": "Daikiのマイホーム記録",
    "content": "グレイシャースタイルで買った収納ボックスセット、めちゃくちゃ良い✨ コスパ最高 #グレイシャースタイル",
    "posted_at": "2024-12-02T19:37:00+09:00",
    "likes": 116,
    "retweets": 0,
    "replies": 62,
    "hashtags": [
      "部屋づくり",
      "収納",
      "グレイシャースタイル",
      "ミニマリスト",
      "インテリア"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_202.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00046",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@cozy_mami",
    "display_name": "コージーライフMami",
    "content": "グレイシャースタイルでオーガニックコットンTシャツ買って正解だった👏 友達にも褒められた",
    "posted_at": "2024-12-02T22:10:00+09:00",
    "likes": 1271,
    "retweets": 169,
    "replies": 53,
    "hashtags": [
      "ファッション",
      "テック",
      "グレイシャースタイル",
      "スマートホーム"
    ],
    "mentioned_products": [
      "オーガニックコットンTシャツ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00094",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@tech_emi",
    "display_name": "テック好きEmi",
    "content": "グレイシャースタイルの北欧インテリア図鑑、デザインも機能も◎ ずっと探してたやつ",
    "posted_at": "2024-12-02T22:23:00+09:00",
    "likes": 240,
    "retweets": 120,
    "replies": 29,
    "hashtags": [
      "ガジェット",
      "グレイシャースタイル",
      "テック"
    ],
    "mentioned_products": [
      "北欧インテリア図鑑"
    ],
    "media_urls": [
      "https://example.com/img/user_post_094.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00177",
    "platform": "instagram",
    "post_type": "post",
    "username": "@simple_life_emi",
    "display_name": "シンプルライフEmi",
    "content": "ずっと気になってた耐熱ガラスポット、ついにゲット🎉 家族も気に入ってる #グレイシャースタイル",
    "posted_at": "2024-12-02T23:56:00+09:00",
    "likes": 2818,
    "retweets": 0,
    "replies": 31,
    "hashtags": [
      "おしゃれ照明",
      "照明",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "耐熱ガラスポット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_177.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00117",
    "platform": "instagram",
    "post_type": "post",
    "username": "@office_yuko",
    "display_name": "オフィスワークYuko",
    "content": "新築祝いにプレミアムカシミヤセーターをプレゼント🎁 コスパ最高 #グレイシャースタイル #ギフト",
    "posted_at": "2024-12-03T07:19:00+09:00",
    "likes": 730,
    "retweets": 0,
    "replies": 27,
    "hashtags": [
      "ステイホーム",
      "シンプルコーデ",
      "休日の過ごし方",
      "グレイシャースタイル",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "プレミアムカシミヤセーター"
    ],
    "media_urls": [
      "https://example.com/img/gift_117.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00081",
    "platform": "twitter",
    "post_type": "post",
    "username": "@modern_sho",
    "display_name": "モダンリビングSho",
    "content": "グレイシャースタイルのスマートスピーカー、デザインも機能も◎ 一目惚れして買った",
    "posted_at": "2024-12-03T07:48:00+09:00",
    "likes": 106,
    "retweets": 35,
    "replies": 11,
    "hashtags": [
      "ガジェット",
      "暮らし",
      "丁寧な暮らし",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "スマートスピーカー"
    ],
    "media_urls": [
      "https://example.com/img/user_post_081.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00006",
    "platform": "instagram",
    "post_type": "post",
    "username": "@design_megumi",
    "display_name": "デザイン好きMegumi",
    "content": "セールで吊り下げペンダントライトをお得にゲット！ ずっと探してたやつ #グレイシャースタイル #お買い得",
    "posted_at": "2024-12-03T08:41:00+09:00",
    "likes": 183,
    "retweets": 0,
    "replies": 67,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "ライト",
      "おしゃれ照明"
    ],
    "mentioned_products": [
      "吊り下げペンダントライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00167",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@coffee_kazuki",
    "display_name": "コーヒー好きKazuki",
    "content": "グレイシャースタイルのセールっていつ始まる？スタイリッシュデスクライト狙ってる",
    "posted_at": "2024-12-03T08:51:00+09:00",
    "likes": 142,
    "retweets": 0,
    "replies": 17,
    "hashtags": [
      "部屋づくり",
      "ネットショッピング",
      "購入品",
      "グレイシャースタイル",
      "インテリア"
    ],
    "mentioned_products": [
      "スタイリッシュデスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00010",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@minimal_naomi",
    "display_name": "ミニマリストNaomi",
    "content": "ずっと気になってたLED調光デスクライト、ついにゲット🎉 買って本当によかった #グレイシャースタイル",
    "posted_at": "2024-12-03T11:07:00+09:00",
    "likes": 2275,
    "retweets": 177,
    "replies": 56,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "EC",
      "お買い物"
    ],
    "mentioned_products": [
      "LED調光デスクライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_010.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00019",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@tech_mami",
    "display_name": "テック好きMami",
    "content": "グレイシャースタイルのコーヒーメーカー、本当におすすめ！ 想像以上のクオリティ #インテリア好き",
    "posted_at": "2024-12-03T11:44:00+09:00",
    "likes": 1347,
    "retweets": 162,
    "replies": 73,
    "hashtags": [
      "収納",
      "整理整頓",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "コーヒーメーカー"
    ],
    "media_urls": [
      "https://example.com/img/user_post_019.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00027",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@modern_taro",
    "display_name": "モダンリビングTaro",
    "content": "デザインシーリングライトのおかげで毎日が楽しくなった✨ グレイシャースタイル最高！",
    "posted_at": "2024-12-03T13:15:00+09:00",
    "likes": 1914,
    "retweets": 138,
    "replies": 72,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "間接照明",
      "おしゃれ照明"
    ],
    "mentioned_products": [
      "デザインシーリングライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_027.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00135",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@tech_mami",
    "display_name": "テック好きMami",
    "content": "ずっと気になってたワイヤレスイヤホンPro、ついにゲット🎉 ずっと探してたやつ #グレイシャースタイル",
    "posted_at": "2024-12-03T13:48:00+09:00",
    "likes": 139,
    "retweets": 0,
    "replies": 80,
    "hashtags": [
      "ガジェット",
      "カジュアル",
      "ファッション",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "ワイヤレスイヤホンPro"
    ],
    "media_urls": [
      "https://example.com/img/user_post_135.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00163",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@interior_kazuki",
    "display_name": "Kazukiのインテリア日記",
    "content": "北欧インテリア図鑑って他の色はありますか？ 誰か知ってる人いますか？ #グレイシャースタイル",
    "posted_at": "2024-12-03T14:26:00+09:00",
    "likes": 5,
    "retweets": 0,
    "replies": 7,
    "hashtags": [],
    "mentioned_products": [
      "北欧インテリア図鑑"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00181",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@gift_daiki",
    "display_name": "ギフト探しDaiki",
    "content": "収納付きデスクのサイズ感が知りたい。実際に使ってる人教えて〜",
    "posted_at": "2024-12-03T14:26:00+09:00",
    "likes": 78,
    "retweets": 0,
    "replies": 29,
    "hashtags": [
      "部屋づくり",
      "グレイシャースタイル",
      "北欧好き",
      "インテリア",
      "北欧"
    ],
    "mentioned_products": [
      "収納付きデスク"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00164",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@interior_kazuki ご不便をおかけし申し訳ございません。ご不明点がございましたら、いつでもお問い合わせください。",
    "posted_at": "2024-12-03T16:09:00+09:00",
    "likes": 17,
    "retweets": 0,
    "replies": 3,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00182",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@room_yuki",
    "display_name": "お部屋づくりYuki",
    "content": "グレイシャースタイルでコーヒーメーカー買って正解だった👏 部屋の雰囲気がガラッと変わった！",
    "posted_at": "2024-12-03T16:32:00+09:00",
    "likes": 1959,
    "retweets": 0,
    "replies": 11,
    "hashtags": [
      "ライト",
      "間接照明",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "コーヒーメーカー"
    ],
    "media_urls": [
      "https://example.com/img/user_post_182.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00088",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@minimal_mami",
    "display_name": "ミニマリストMami",
    "content": "配送遅延でメリノウールカーディガンが届くの遅れてる。連絡もないし不安",
    "posted_at": "2024-12-03T18:58:00+09:00",
    "likes": 15,
    "retweets": 4,
    "replies": 14,
    "hashtags": [],
    "mentioned_products": [
      "メリノウールカーディガン"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00156",
    "platform": "twitter",
    "post_type": "post",
    "username": "@design_akiko",
    "display_name": "デザイン好きAkiko",
    "content": "耐熱ガラスポットがお気に入りすぎる🥰 ずっと探してたやつ #GlacierStyle",
    "posted_at": "2024-12-03T20:15:00+09:00",
    "likes": 2431,
    "retweets": 11,
    "replies": 23,
    "hashtags": [
      "間接照明",
      "照明",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "耐熱ガラスポット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_156.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00160",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@interior_sho",
    "display_name": "Shoのインテリア日記",
    "content": "グレイシャースタイルって送料いくらだっけ？北欧インテリア図鑑買いたいんだけど",
    "posted_at": "2024-12-03T20:28:00+09:00",
    "likes": 65,
    "retweets": 11,
    "replies": 31,
    "hashtags": [
      "グレイシャースタイル",
      "GlacierStyle"
    ],
    "mentioned_products": [
      "北欧インテリア図鑑"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00247",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@nordic_yuki",
    "display_name": "北欧好きYuki",
    "content": "ウォールシェルフ、思ってたのと違った…返品できるかな",
    "posted_at": "2024-12-03T20:35:00+09:00",
    "likes": 28,
    "retweets": 0,
    "replies": 12,
    "hashtags": [],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00043",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@lifestyle_yuji",
    "display_name": "Yuji｜暮らしを楽しむ",
    "content": "ステンレスキッチンツールセット届いたけど、商品に欠品があった。対応してもらえるかな…",
    "posted_at": "2024-12-03T22:11:00+09:00",
    "likes": 83,
    "retweets": 0,
    "replies": 9,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00091",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@coffee_kazuki",
    "display_name": "コーヒー好きKazuki",
    "content": "メリノウールカーディガン、在庫切れになってた…入荷いつかな",
    "posted_at": "2024-12-03T23:19:00+09:00",
    "likes": 112,
    "retweets": 18,
    "replies": 21,
    "hashtags": [
      "ホームオフィス",
      "デスク周り",
      "ファッション",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "メリノウールカーディガン"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00044",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@lifestyle_yuji この度はご連絡いただきありがとうございます。またのご利用をお待ちしております✨",
    "posted_at": "2024-12-03T23:27:00+09:00",
    "likes": 3,
    "retweets": 0,
    "replies": 2,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00150",
    "platform": "twitter",
    "post_type": "post",
    "username": "@tech_yuki",
    "display_name": "テック好きYuki",
    "content": "グレイシャースタイルで彼氏への新築祝いプレゼント選び中💝 耐熱ガラスポット良さそう！",
    "posted_at": "2024-12-03T23:33:00+09:00",
    "likes": 459,
    "retweets": 7,
    "replies": 29,
    "hashtags": [
      "インテリア",
      "丁寧な暮らし",
      "グレイシャースタイル",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "耐熱ガラスポット"
    ],
    "media_urls": [
      "https://example.com/img/gift_150.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00239",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@nordic_hiroshi",
    "display_name": "北欧好きHiroshi",
    "content": "グレイシャースタイルのモダンデスクライト、設置は簡単ですか？",
    "posted_at": "2024-12-04T07:45:00+09:00",
    "likes": 20,
    "retweets": 0,
    "replies": 9,
    "hashtags": [],
    "mentioned_products": [
      "モダンデスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00144",
    "platform": "twitter",
    "post_type": "post",
    "username": "@gift_emi",
    "display_name": "ギフト探しEmi",
    "content": "ウォールシェルフが届いた！ 思ってた以上にクオリティ高くて大満足😊 #GlacierStyle #グレイシャースタイル",
    "posted_at": "2024-12-04T08:07:00+09:00",
    "likes": 1842,
    "retweets": 21,
    "replies": 71,
    "hashtags": [
      "シンプルライフ",
      "暮らし",
      "収納",
      "グレイシャースタイル",
      "インテリア"
    ],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00107",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@coffee_akiko",
    "display_name": "コーヒー好きAkiko",
    "content": "グレイシャースタイルのワイヤレスイヤホンPro、本当におすすめ！ SNSで見て気になってた #インテリア好き",
    "posted_at": "2024-12-04T14:25:00+09:00",
    "likes": 2123,
    "retweets": 0,
    "replies": 25,
    "hashtags": [
      "間接照明",
      "ライト",
      "グレイシャースタイル",
      "テック"
    ],
    "mentioned_products": [
      "ワイヤレスイヤホンPro"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00241",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@office_emi",
    "display_name": "オフィスワークEmi",
    "content": "リネンシャツ、期待以上でした✨ コスパ最高 #グレイシャースタイル #買ってよかった",
    "posted_at": "2024-12-04T16:49:00+09:00",
    "likes": 1971,
    "retweets": 0,
    "replies": 35,
    "hashtags": [
      "シンプルコーデ",
      "整理整頓",
      "シンプルライフ",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "リネンシャツ"
    ],
    "media_urls": [
      "https://example.com/img/user_post_241.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00016",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@review_kazuki",
    "display_name": "レビュワーKazuki",
    "content": "配送遅延でオーガニックコットンTシャツが届くの遅れてる。連絡もないし不安",
    "posted_at": "2024-12-04T18:59:00+09:00",
    "likes": 64,
    "retweets": 17,
    "replies": 14,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00022",
    "platform": "twitter",
    "post_type": "post",
    "username": "@eco_haruka",
    "display_name": "エコライフHaruka",
    "content": "【購入レビュー】ステンレスキッチンツールセット ⭐4\n想像以上のクオリティ #GlacierStyle",
    "posted_at": "2024-12-04T19:56:00+09:00",
    "likes": 301,
    "retweets": 100,
    "replies": 74,
    "hashtags": [
      "ガジェット",
      "グレイシャースタイル",
      "スマートホーム",
      "レビュー"
    ],
    "mentioned_products": [
      "ステンレスキッチンツールセット"
    ],
    "media_urls": [
      "https://example.com/img/review_022.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00055",
    "platform": "instagram",
    "post_type": "post",
    "username": "@gadget_emi",
    "display_name": "ガジェットEmi",
    "content": "念願の北欧風フロアライトが我が家に！ デザインがシンプルで使いやすい #新生活 #グレイシャースタイル",
    "posted_at": "2024-12-04T20:07:00+09:00",
    "likes": 1876,
    "retweets": 0,
    "replies": 37,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "おうち時間",
      "ステイホーム"
    ],
    "mentioned_products": [
      "北欧風フロアライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_055.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00218",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@simple_life_kazuki",
    "display_name": "シンプルライフKazuki",
    "content": "収納ボックスセットのサイズ感が知りたい。実際に使ってる人教えて〜",
    "posted_at": "2024-12-04T20:57:00+09:00",
    "likes": 56,
    "retweets": 15,
    "replies": 27,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "丁寧な暮らし",
      "インテリア"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00071",
    "platform": "twitter",
    "post_type": "post",
    "username": "@home_ayumi",
    "display_name": "Ayumiのマイホーム記録",
    "content": "ずっと気になってたコーヒーメーカー、ついにゲット🎉 毎日使うのが楽しみ #グレイシャースタイル",
    "posted_at": "2024-12-04T22:16:00+09:00",
    "likes": 1432,
    "retweets": 152,
    "replies": 59,
    "hashtags": [
      "カジュアル",
      "シンプルコーデ",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "コーヒーメーカー"
    ],
    "media_urls": [
      "https://example.com/img/user_post_071.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00179",
    "platform": "instagram",
    "post_type": "post",
    "username": "@office_yuko",
    "display_name": "オフィスワークYuko",
    "content": "グレイシャースタイルで吊り下げペンダントライト買って正解だった👏 ずっと探してたやつ",
    "posted_at": "2024-12-04T23:38:00+09:00",
    "likes": 1792,
    "retweets": 0,
    "replies": 76,
    "hashtags": [
      "シンプルライフ",
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "ミニマリスト"
    ],
    "mentioned_products": [
      "吊り下げペンダントライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_179.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00174",
    "platform": "twitter",
    "post_type": "post",
    "username": "@interior_taro",
    "display_name": "Taroのインテリア日記",
    "content": "北欧風ペンダントライトを1ヶ月使ってみた感想📝 デザインがシンプルで使いやすい おすすめ度は5点！ #グレイシャースタイル",
    "posted_at": "2024-12-04T23:47:00+09:00",
    "likes": 1034,
    "retweets": 63,
    "replies": 55,
    "hashtags": [
      "インテリア",
      "部屋づくり",
      "グレイシャースタイル",
      "GlacierStyle",
      "レビュー"
    ],
    "mentioned_products": [
      "北欧風ペンダントライト"
    ],
    "media_urls": [
      "https://example.com/img/review_174.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00039",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@organic_megumi",
    "display_name": "オーガニックMegumi",
    "content": "ずっと気になってたデザインシーリングライト、ついにゲット🎉 一目惚れして買った #グレイシャースタイル",
    "posted_at": "2024-12-05T10:00:00+09:00",
    "likes": 1952,
    "retweets": 0,
    "replies": 26,
    "hashtags": [
      "暮らし",
      "インテリア",
      "部屋づくり",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "デザインシーリングライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_039.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00119",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@organic_mami",
    "display_name": "オーガニックMami",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-99402635の件で問い合わせです。交換をお願いしたいです",
    "posted_at": "2024-12-05T10:04:00+09:00",
    "likes": 13,
    "retweets": 0,
    "replies": 10,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00025",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@interior_kazuki",
    "display_name": "Kazukiのインテリア日記",
    "content": "モダンデスクライト届いたけど、商品に傷があった。対応してもらえるかな…",
    "posted_at": "2024-12-05T10:17:00+09:00",
    "likes": 48,
    "retweets": 0,
    "replies": 1,
    "hashtags": [
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "モダンデスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00082",
    "platform": "instagram",
    "post_type": "post",
    "username": "@fashion_ryota",
    "display_name": "ファッションRyota",
    "content": "ずっと気になってた北欧風ペンダントライト、ついにゲット🎉 デザインがシンプルで使いやすい #グレイシャースタイル",
    "posted_at": "2024-12-05T10:25:00+09:00",
    "likes": 495,
    "retweets": 0,
    "replies": 15,
    "hashtags": [
      "暮らし",
      "部屋づくり",
      "グレイシャースタイル",
      "GlacierStyle"
    ],
    "mentioned_products": [
      "北欧風ペンダントライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_082.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00123",
    "platform": "twitter",
    "post_type": "post",
    "username": "@gadget_sho",
    "display_name": "ガジェットSho",
    "content": "グレイシャースタイルの収納ボックスセット、デザインも機能も◎ デザインがシンプルで使いやすい",
    "posted_at": "2024-12-05T10:52:00+09:00",
    "likes": 2890,
    "retweets": 71,
    "replies": 76,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "シンプルコーデ",
      "カジュアル"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00120",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@organic_mami この度はご連絡いただきありがとうございます。DMにてご注文番号をお知らせいただけますでしょうか。確認させていただきます。",
    "posted_at": "2024-12-05T11:11:00+09:00",
    "likes": 8,
    "retweets": 0,
    "replies": 1,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00229",
    "platform": "twitter",
    "post_type": "post",
    "username": "@minimal_hiroshi",
    "display_name": "ミニマリストHiroshi",
    "content": "コーヒーメーカーをギフトラッピングしてもらった🎀 デザインがシンプルで使いやすい #グレイシャースタイル",
    "posted_at": "2024-12-05T11:45:00+09:00",
    "likes": 89,
    "retweets": 5,
    "replies": 5,
    "hashtags": [
      "ホームオフィス",
      "在宅ワーク",
      "グレイシャースタイル",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "コーヒーメーカー"
    ],
    "media_urls": [
      "https://example.com/img/gift_229.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00033",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@coffee_mai",
    "display_name": "コーヒー好きMai",
    "content": "メリノウールカーディガンって重さはどのくらいですか？ 誰か知ってる人いますか？ #グレイシャースタイル",
    "posted_at": "2024-12-05T15:00:00+09:00",
    "likes": 7,
    "retweets": 0,
    "replies": 8,
    "hashtags": [],
    "mentioned_products": [
      "メリノウールカーディガン"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00236",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@minimal_yuji",
    "display_name": "ミニマリストYuji",
    "content": "グレイシャースタイルのコーヒーメーカーとワイヤレスイヤホンProで悩み中…アドバイス求む！",
    "posted_at": "2024-12-05T15:08:00+09:00",
    "likes": 107,
    "retweets": 4,
    "replies": 27,
    "hashtags": [
      "間接照明",
      "照明",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "コーヒーメーカー"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00060",
    "platform": "twitter",
    "post_type": "post",
    "username": "@review_yuko",
    "display_name": "レビュワーYuko",
    "content": "グレイシャースタイルでデザインシーリングライト買って正解だった👏 家族も気に入ってる",
    "posted_at": "2024-12-05T16:03:00+09:00",
    "likes": 2426,
    "retweets": 113,
    "replies": 28,
    "hashtags": [
      "ファッション",
      "部屋づくり",
      "グレイシャースタイル",
      "シンプルコーデ",
      "インテリア"
    ],
    "mentioned_products": [
      "デザインシーリングライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00034",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@coffee_mai ご不便をおかけし申し訳ございません。ご満足いただけて嬉しいです！素敵なお写真もありがとうございます📸",
    "posted_at": "2024-12-05T16:15:00+09:00",
    "likes": 6,
    "retweets": 0,
    "replies": 0,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00183",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@design_kota",
    "display_name": "デザイン好きKota",
    "content": "グレイシャースタイルのプレミアムカシミヤセーター、本当におすすめ！ ずっと探してたやつ #インテリア好き",
    "posted_at": "2024-12-05T19:43:00+09:00",
    "likes": 2677,
    "retweets": 159,
    "replies": 75,
    "hashtags": [
      "シンプルコーデ",
      "ファッション",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "プレミアムカシミヤセーター"
    ],
    "media_urls": [
      "https://example.com/img/user_post_183.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00178",
    "platform": "twitter",
    "post_type": "post",
    "username": "@gift_rina",
    "display_name": "ギフト探しRina",
    "content": "北欧風フロアライトをギフトラッピングしてもらった🎀 ずっと探してたやつ #グレイシャースタイル",
    "posted_at": "2024-12-05T19:59:00+09:00",
    "likes": 590,
    "retweets": 38,
    "replies": 39,
    "hashtags": [
      "シンプルライフ",
      "部屋づくり",
      "暮らし",
      "整理整頓",
      "グレイシャースタイル",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "北欧風フロアライト"
    ],
    "media_urls": [
      "https://example.com/img/gift_178.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00225",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@interior_kota",
    "display_name": "Kotaのインテリア日記",
    "content": "ワイヤレスイヤホンProの接続部分がすぐ取れたになった。品質大丈夫？",
    "posted_at": "2024-12-05T20:24:00+09:00",
    "likes": 40,
    "retweets": 12,
    "replies": 18,
    "hashtags": [],
    "mentioned_products": [
      "ワイヤレスイヤホンPro"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00140",
    "platform": "twitter",
    "post_type": "post",
    "username": "@gadget_yuji",
    "display_name": "ガジェットYuji",
    "content": "念願のコーヒーメーカーが我が家に！ コスパ最高 #新生活 #グレイシャースタイル",
    "posted_at": "2024-12-05T20:28:00+09:00",
    "likes": 1608,
    "retweets": 170,
    "replies": 39,
    "hashtags": [
      "リモートワーク",
      "在宅ワーク",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "コーヒーメーカー"
    ],
    "media_urls": [
      "https://example.com/img/user_post_140.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00198",
    "platform": "twitter",
    "post_type": "post",
    "username": "@room_sho",
    "display_name": "お部屋づくりSho",
    "content": "引っ越し祝いにウォールシェルフをプレゼント🎁 デザインがシンプルで使いやすい #グレイシャースタイル #ギフト",
    "posted_at": "2024-12-05T21:09:00+09:00",
    "likes": 132,
    "retweets": 8,
    "replies": 5,
    "hashtags": [
      "部屋づくり",
      "収納",
      "整理整頓",
      "グレイシャースタイル",
      "インテリア",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": [
      "https://example.com/img/gift_198.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00074",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@organic_rina",
    "display_name": "オーガニックRina",
    "content": "収納付きデスク届いたけど、商品に破損があった。対応してもらえるかな…",
    "posted_at": "2024-12-05T21:29:00+09:00",
    "likes": 25,
    "retweets": 0,
    "replies": 19,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00226",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@interior_kota お問い合わせありがとうございます。お手数ですが、詳細をDMでお送りください。担当者より折り返しご連絡いたします。",
    "posted_at": "2024-12-05T21:31:00+09:00",
    "likes": 19,
    "retweets": 0,
    "replies": 2,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00003",
    "platform": "twitter",
    "post_type": "post",
    "username": "@eco_kenji",
    "display_name": "エコライフKenji",
    "content": "【レビュー】グレイシャースタイルの北欧風フロアライト使ってみた。\n\n良い点👍\n・サイズ感ぴったり\n・高級感がある\n\n気になる点👎\n・在庫が少ない\n\n総合: 4/5 #グレイシャースタイル #レビュー",
    "posted_at": "2024-12-05T22:11:00+09:00",
    "likes": 1010,
    "retweets": 48,
    "replies": 88,
    "hashtags": [
      "部屋づくり",
      "スマートホーム",
      "暮らし",
      "グレイシャースタイル",
      "テック",
      "レビュー"
    ],
    "mentioned_products": [
      "北欧風フロアライト"
    ],
    "media_urls": [
      "https://example.com/img/review_003.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00075",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@organic_rina お問い合わせありがとうございます。ご満足いただけて嬉しいです！素敵なお写真もありがとうございます📸",
    "posted_at": "2024-12-05T22:35:00+09:00",
    "likes": 14,
    "retweets": 0,
    "replies": 1,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00152",
    "platform": "twitter",
    "post_type": "post",
    "username": "@office_hiroshi",
    "display_name": "オフィスワークHiroshi",
    "content": "グレイシャースタイルでスタイリッシュデスクライト買って正解だった👏 SNSで見て気になってた",
    "posted_at": "2024-12-05T22:59:00+09:00",
    "likes": 490,
    "retweets": 79,
    "replies": 45,
    "hashtags": [
      "部屋づくり",
      "グレイシャースタイル",
      "スカンジナビアン",
      "インテリア",
      "北欧インテリア"
    ],
    "mentioned_products": [
      "スタイリッシュデスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00231",
    "platform": "twitter",
    "post_type": "post",
    "username": "@lifestyle_hiroshi",
    "display_name": "Hiroshi｜暮らしを楽しむ",
    "content": "耐熱ガラスポット、期待以上でした✨ 家族も気に入ってる #グレイシャースタイル #買ってよかった",
    "posted_at": "2024-12-05T23:12:00+09:00",
    "likes": 2986,
    "retweets": 66,
    "replies": 39,
    "hashtags": [
      "休日の過ごし方",
      "グレイシャースタイル",
      "おうち時間"
    ],
    "mentioned_products": [
      "耐熱ガラスポット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_231.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00190",
    "platform": "instagram",
    "post_type": "post",
    "username": "@nordic_ayumi",
    "display_name": "北欧好きAyumi",
    "content": "【購入レビュー】デザインシーリングライト ⭐3\nSNSで見て気になってた #GlacierStyle",
    "posted_at": "2024-12-06T07:56:00+09:00",
    "likes": 281,
    "retweets": 0,
    "replies": 56,
    "hashtags": [
      "在宅ワーク",
      "暮らし",
      "グレイシャースタイル",
      "ホームオフィス",
      "インテリア",
      "レビュー"
    ],
    "mentioned_products": [
      "デザインシーリングライト"
    ],
    "media_urls": [
      "https://example.com/img/review_190.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00184",
    "platform": "twitter",
    "post_type": "post",
    "username": "@work_from_home_haruka",
    "display_name": "在宅ワーカーHaruka",
    "content": "収納ボックスセットが届いた！ 思ってた以上にクオリティ高くて大満足😊 #GlacierStyle #グレイシャースタイル",
    "posted_at": "2024-12-06T08:20:00+09:00",
    "likes": 952,
    "retweets": 13,
    "replies": 59,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "シンプルコーデ",
      "カジュアル"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00087",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@home_yuki",
    "display_name": "Yukiのマイホーム記録",
    "content": "グレイシャースタイルのサイト、ログインできないで困ってる😭",
    "posted_at": "2024-12-06T08:43:00+09:00",
    "likes": 81,
    "retweets": 6,
    "replies": 8,
    "hashtags": [
      "グレイシャースタイル"
    ],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00062",
    "platform": "twitter",
    "post_type": "post",
    "username": "@interior_kazuki",
    "display_name": "Kazukiのインテリア日記",
    "content": "友達にもおすすめしたいワイヤレスイヤホンPro💕 毎日使うのが楽しみ #グレイシャースタイル",
    "posted_at": "2024-12-06T09:13:00+09:00",
    "likes": 1712,
    "retweets": 109,
    "replies": 49,
    "hashtags": [
      "ライト",
      "間接照明",
      "グレイシャースタイル",
      "テック"
    ],
    "mentioned_products": [
      "ワイヤレスイヤホンPro"
    ],
    "media_urls": [
      "https://example.com/img/user_post_062.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00185",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@gadget_ayumi",
    "display_name": "ガジェットAyumi",
    "content": "グレイシャースタイルでLED調光デスクライト買って正解だった👏 リピート決定",
    "posted_at": "2024-12-06T10:50:00+09:00",
    "likes": 1419,
    "retweets": 0,
    "replies": 37,
    "hashtags": [
      "暮らし",
      "部屋づくり",
      "グレイシャースタイル",
      "GlacierStyle"
    ],
    "mentioned_products": [
      "LED調光デスクライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_185.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00148",
    "platform": "instagram",
    "post_type": "post",
    "username": "@minimal_misaki",
    "display_name": "ミニマリストMisaki",
    "content": "コーヒーメーカーのおかげで毎日が楽しくなった✨ グレイシャースタイル最高！",
    "posted_at": "2024-12-06T11:20:00+09:00",
    "likes": 1672,
    "retweets": 0,
    "replies": 55,
    "hashtags": [
      "ガジェット",
      "グレイシャースタイル",
      "スマートホーム"
    ],
    "mentioned_products": [
      "コーヒーメーカー"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00207",
    "platform": "twitter",
    "post_type": "post",
    "username": "@interior_sho",
    "display_name": "Shoのインテリア日記",
    "content": "グレイシャースタイルで上司への母の日プレゼント選び中💝 北欧風フロアライト良さそう！",
    "posted_at": "2024-12-06T11:35:00+09:00",
    "likes": 537,
    "retweets": 48,
    "replies": 15,
    "hashtags": [
      "デスク周り",
      "暮らし",
      "リモートワーク",
      "グレイシャースタイル",
      "インテリア",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "北欧風フロアライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00063",
    "platform": "instagram",
    "post_type": "post",
    "username": "@coffee_naomi",
    "display_name": "コーヒー好きNaomi",
    "content": "グレイシャースタイルで買った収納ボックスセット、めちゃくちゃ良い✨ 一目惚れして買った #グレイシャースタイル",
    "posted_at": "2024-12-06T11:42:00+09:00",
    "likes": 452,
    "retweets": 0,
    "replies": 7,
    "hashtags": [
      "暮らし",
      "グレイシャースタイル",
      "北欧好き",
      "インテリア",
      "北欧"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00035",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@review_haruka",
    "display_name": "レビュワーHaruka",
    "content": "友達にもおすすめしたいウォールシェルフ💕 ずっと探してたやつ #グレイシャースタイル",
    "posted_at": "2024-12-06T11:47:00+09:00",
    "likes": 1144,
    "retweets": 3,
    "replies": 51,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "北欧好き",
      "北欧"
    ],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00153",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@interior_ryota",
    "display_name": "Ryotaのインテリア日記",
    "content": "ずっと気になってたLED調光デスクライト、ついにゲット🎉 想像以上のクオリティ #グレイシャースタイル",
    "posted_at": "2024-12-06T12:28:00+09:00",
    "likes": 1925,
    "retweets": 0,
    "replies": 64,
    "hashtags": [
      "部屋づくり",
      "グレイシャースタイル",
      "間接照明",
      "ライト",
      "インテリア"
    ],
    "mentioned_products": [
      "LED調光デスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00162",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@modern_kazuki",
    "display_name": "モダンリビングKazuki",
    "content": "グレイシャースタイルのセールっていつ始まる？北欧インテリア図鑑狙ってる",
    "posted_at": "2024-12-06T13:01:00+09:00",
    "likes": 68,
    "retweets": 4,
    "replies": 27,
    "hashtags": [
      "ミニマリスト",
      "整理整頓",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "北欧インテリア図鑑"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00194",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@room_emi",
    "display_name": "お部屋づくりEmi",
    "content": "グレイシャースタイルのオーガニックコットンTシャツ、本当におすすめ！ リピート決定 #インテリア好き",
    "posted_at": "2024-12-06T13:55:00+09:00",
    "likes": 2841,
    "retweets": 0,
    "replies": 50,
    "hashtags": [
      "ガジェット",
      "シンプルコーデ",
      "グレイシャースタイル",
      "スマートホーム"
    ],
    "mentioned_products": [
      "オーガニックコットンTシャツ"
    ],
    "media_urls": [
      "https://example.com/img/user_post_194.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00168",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@nordic_ken",
    "display_name": "北欧好きKen",
    "content": "プレミアムカシミヤセーターの取っ手がすぐ外れたになった。品質大丈夫？",
    "posted_at": "2024-12-06T16:17:00+09:00",
    "likes": 37,
    "retweets": 18,
    "replies": 13,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": [
      "https://example.com/img/issue_168.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00151",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@eco_nana",
    "display_name": "エコライフNana",
    "content": "グレイシャースタイルのセールっていつ始まる？スマートスピーカー狙ってる",
    "posted_at": "2024-12-06T17:08:00+09:00",
    "likes": 115,
    "retweets": 0,
    "replies": 35,
    "hashtags": [
      "ガジェット",
      "グレイシャースタイル",
      "テック"
    ],
    "mentioned_products": [
      "スマートスピーカー"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00049",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@tech_yuki",
    "display_name": "テック好きYuki",
    "content": "ずっと気になってたウォールシェルフ、ついにゲット🎉 想像以上のクオリティ #グレイシャースタイル",
    "posted_at": "2024-12-06T17:22:00+09:00",
    "likes": 80,
    "retweets": 0,
    "replies": 25,
    "hashtags": [
      "暮らし",
      "グレイシャースタイル",
      "シンプルコーデ",
      "カジュアル",
      "インテリア"
    ],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": [
      "https://example.com/img/user_post_049.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00105",
    "platform": "twitter",
    "post_type": "post",
    "username": "@design_yuji",
    "display_name": "デザイン好きYuji",
    "content": "結婚祝いに収納付きデスクをプレゼント🎁 一目惚れして買った #グレイシャースタイル #ギフト",
    "posted_at": "2024-12-06T17:34:00+09:00",
    "likes": 324,
    "retweets": 41,
    "replies": 32,
    "hashtags": [
      "部屋づくり",
      "グレイシャースタイル",
      "ライト",
      "おしゃれ照明",
      "インテリア",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "収納付きデスク"
    ],
    "media_urls": [
      "https://example.com/img/gift_105.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00053",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@cozy_akiko",
    "display_name": "コージーライフAkiko",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-97791634の件で問い合わせです。配送状況を確認したいです",
    "posted_at": "2024-12-06T18:05:00+09:00",
    "likes": 22,
    "retweets": 0,
    "replies": 8,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00201",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@modern_hiroshi",
    "display_name": "モダンリビングHiroshi",
    "content": "ずっと気になってたモダンデスクライト、ついにゲット🎉 毎日使うのが楽しみ #グレイシャースタイル",
    "posted_at": "2024-12-06T19:28:00+09:00",
    "likes": 1427,
    "retweets": 67,
    "replies": 64,
    "hashtags": [
      "在宅ワーク",
      "部屋づくり",
      "暮らし",
      "リモートワーク",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "モダンデスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00147",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@work_from_home_satoshi",
    "display_name": "在宅ワーカーSatoshi",
    "content": "グレイシャースタイルの北欧風ペンダントライト、本当におすすめ！ SNSで見て気になってた #インテリア好き",
    "posted_at": "2024-12-06T22:49:00+09:00",
    "likes": 2947,
    "retweets": 0,
    "replies": 46,
    "hashtags": [
      "暮らし",
      "グレイシャースタイル",
      "照明",
      "おしゃれ照明",
      "インテリア"
    ],
    "mentioned_products": [
      "北欧風ペンダントライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00169",
    "platform": "instagram",
    "post_type": "post",
    "username": "@review_nana",
    "display_name": "レビュワーNana",
    "content": "メリノウールカーディガン、期待以上でした✨ デザインがシンプルで使いやすい #グレイシャースタイル #買ってよかった",
    "posted_at": "2024-12-07T07:44:00+09:00",
    "likes": 2065,
    "retweets": 0,
    "replies": 18,
    "hashtags": [
      "デスク周り",
      "ファッション",
      "在宅ワーク",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "メリノウールカーディガン"
    ],
    "media_urls": [
      "https://example.com/img/user_post_169.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00076",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@interior_rina",
    "display_name": "Rinaのインテリア日記",
    "content": "念願の収納ボックスセットが我が家に！ 買って本当によかった #新生活 #グレイシャースタイル",
    "posted_at": "2024-12-07T08:53:00+09:00",
    "likes": 245,
    "retweets": 72,
    "replies": 74,
    "hashtags": [
      "暮らし",
      "部屋づくり",
      "グレイシャースタイル",
      "GlacierStyle"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_076.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00155",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@home_naomi",
    "display_name": "Naomiのマイホーム記録",
    "content": "スタイリッシュデスクライトが届いた！ 思ってた以上にクオリティ高くて大満足😊 #GlacierStyle #グレイシャースタイル",
    "posted_at": "2024-12-07T10:17:00+09:00",
    "likes": 818,
    "retweets": 0,
    "replies": 23,
    "hashtags": [
      "休日の過ごし方",
      "部屋づくり",
      "グレイシャースタイル",
      "ステイホーム",
      "インテリア"
    ],
    "mentioned_products": [
      "スタイリッシュデスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00206",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@minimal_emi",
    "display_name": "ミニマリストEmi",
    "content": "友達にもおすすめしたいワイヤレスイヤホンPro💕 友達にも褒められた #グレイシャースタイル",
    "posted_at": "2024-12-07T13:02:00+09:00",
    "likes": 1864,
    "retweets": 0,
    "replies": 71,
    "hashtags": [
      "収納",
      "シンプルライフ",
      "グレイシャースタイル",
      "テック"
    ],
    "mentioned_products": [
      "ワイヤレスイヤホンPro"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00112",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@cozy_kazuki",
    "display_name": "コージーライフKazuki",
    "content": "オーガニックコットンTシャツのサイズ感が知りたい。実際に使ってる人教えて〜",
    "posted_at": "2024-12-07T13:52:00+09:00",
    "likes": 25,
    "retweets": 0,
    "replies": 32,
    "hashtags": [
      "ファッション",
      "テック",
      "グレイシャースタイル",
      "スマートホーム"
    ],
    "mentioned_products": [
      "オーガニックコットンTシャツ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00214",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@coffee_daiki",
    "display_name": "コーヒー好きDaiki",
    "content": "セールでコーヒーメーカーをお得にゲット！ 想像以上のクオリティ #グレイシャースタイル #お買い得",
    "posted_at": "2024-12-07T14:29:00+09:00",
    "likes": 2803,
    "retweets": 27,
    "replies": 7,
    "hashtags": [
      "ステイホーム",
      "グレイシャースタイル",
      "おうち時間"
    ],
    "mentioned_products": [
      "コーヒーメーカー"
    ],
    "media_urls": [
      "https://example.com/img/user_post_214.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00069",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@gift_nana",
    "display_name": "ギフト探しNana",
    "content": "グレイシャースタイルって送料いくらだっけ？デザインシーリングライト買いたいんだけど",
    "posted_at": "2024-12-07T14:35:00+09:00",
    "likes": 68,
    "retweets": 0,
    "replies": 33,
    "hashtags": [
      "休日の過ごし方",
      "部屋づくり",
      "グレイシャースタイル",
      "おうち時間",
      "インテリア"
    ],
    "mentioned_products": [
      "デザインシーリングライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00187",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@simple_life_kota",
    "display_name": "シンプルライフKota",
    "content": "グレイシャースタイルで注文したリネンシャツがまだ届かない…どうなってるの？",
    "posted_at": "2024-12-07T14:41:00+09:00",
    "likes": 25,
    "retweets": 21,
    "replies": 8,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00061",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@lifestyle_sho",
    "display_name": "Sho｜暮らしを楽しむ",
    "content": "収納ボックスセットのサイズ感が知りたい。実際に使ってる人教えて〜",
    "posted_at": "2024-12-07T15:43:00+09:00",
    "likes": 138,
    "retweets": 0,
    "replies": 4,
    "hashtags": [
      "部屋づくり",
      "スマートホーム",
      "暮らし",
      "グレイシャースタイル",
      "ガジェット"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00188",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@simple_life_kota 嬉しいお言葉をありがとうございます😊 ご不明点がございましたら、いつでもお問い合わせください。",
    "posted_at": "2024-12-07T16:21:00+09:00",
    "likes": 12,
    "retweets": 0,
    "replies": 1,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00238",
    "platform": "twitter",
    "post_type": "post",
    "username": "@modern_ken",
    "display_name": "モダンリビングKen",
    "content": "友達にもおすすめしたいオーガニックコットンTシャツ💕 リピート決定 #グレイシャースタイル",
    "posted_at": "2024-12-07T16:43:00+09:00",
    "likes": 1110,
    "retweets": 68,
    "replies": 8,
    "hashtags": [
      "休日の過ごし方",
      "ファッション",
      "グレイシャースタイル",
      "おうち時間"
    ],
    "mentioned_products": [
      "オーガニックコットンTシャツ"
    ],
    "media_urls": [
      "https://example.com/img/user_post_238.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00217",
    "platform": "twitter",
    "post_type": "post",
    "username": "@organic_ayumi",
    "display_name": "オーガニックAyumi",
    "content": "グレイシャースタイルで買ったメリノウールカーディガン、めちゃくちゃ良い✨ 想像以上のクオリティ #グレイシャースタイル",
    "posted_at": "2024-12-07T16:51:00+09:00",
    "likes": 1130,
    "retweets": 152,
    "replies": 79,
    "hashtags": [
      "スマートホーム",
      "ファッション",
      "グレイシャースタイル",
      "テック"
    ],
    "mentioned_products": [
      "メリノウールカーディガン"
    ],
    "media_urls": [
      "https://example.com/img/user_post_217.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00193",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@gadget_kota",
    "display_name": "ガジェットKota",
    "content": "リネンシャツ、どうしようか迷ってる🤔 使ってる人いる？ #グレイシャースタイル",
    "posted_at": "2024-12-07T17:00:00+09:00",
    "likes": 127,
    "retweets": 13,
    "replies": 13,
    "hashtags": [
      "ステイホーム",
      "休日の過ごし方",
      "ファッション",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "リネンシャツ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00197",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@interior_kota",
    "display_name": "Kotaのインテリア日記",
    "content": "グレイシャースタイルでデザインシーリングライト買って正解だった👏 ずっと探してたやつ",
    "posted_at": "2024-12-07T19:15:00+09:00",
    "likes": 1802,
    "retweets": 0,
    "replies": 14,
    "hashtags": [
      "デスク周り",
      "暮らし",
      "リモートワーク",
      "グレイシャースタイル",
      "インテリア"
    ],
    "mentioned_products": [
      "デザインシーリングライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00224",
    "platform": "instagram",
    "post_type": "post",
    "username": "@nordic_mai",
    "display_name": "北欧好きMai",
    "content": "収納ボックスセットを1ヶ月使ってみた感想📝 ずっと探してたやつ おすすめ度は4点！ #グレイシャースタイル",
    "posted_at": "2024-12-07T19:20:00+09:00",
    "likes": 484,
    "retweets": 0,
    "replies": 37,
    "hashtags": [
      "暮らし",
      "インテリア",
      "部屋づくり",
      "グレイシャースタイル",
      "レビュー"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": [
      "https://example.com/img/review_224.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00051",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@review_mami",
    "display_name": "レビュワーMami",
    "content": "@GlacierStyle_JP 収納付きデスクの耐久性について質問です。ギフトラッピングはできますか？",
    "posted_at": "2024-12-07T20:50:00+09:00",
    "likes": 2,
    "retweets": 0,
    "replies": 8,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00052",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@review_mami お問い合わせありがとうございます。お手数ですが、詳細をDMでお送りください。担当者より折り返しご連絡いたします。",
    "posted_at": "2024-12-07T21:41:00+09:00",
    "likes": 16,
    "retweets": 0,
    "replies": 1,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00205",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@gift_daiki",
    "display_name": "ギフト探しDaiki",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-69974141の件で問い合わせです。キャンセルは可能でしょうか",
    "posted_at": "2024-12-07T21:56:00+09:00",
    "likes": 15,
    "retweets": 0,
    "replies": 7,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00220",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@interior_ryota",
    "display_name": "Ryotaのインテリア日記",
    "content": "グレイシャースタイルでコーヒーメーカー買って正解だった👏 リピート決定",
    "posted_at": "2024-12-07T23:55:00+09:00",
    "likes": 75,
    "retweets": 175,
    "replies": 24,
    "hashtags": [
      "収納",
      "整理整頓",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "コーヒーメーカー"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00216",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@office_megumi",
    "display_name": "オフィスワークMegumi",
    "content": "リネンシャツがお気に入りすぎる🥰 一目惚れして買った #GlacierStyle",
    "posted_at": "2024-12-08T07:19:00+09:00",
    "likes": 1847,
    "retweets": 0,
    "replies": 75,
    "hashtags": [
      "ホームオフィス",
      "ファッション",
      "在宅ワーク",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "リネンシャツ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00258",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@modern_kazuki",
    "display_name": "モダンリビングKazuki",
    "content": "グレイシャースタイルって送料いくらだっけ？モダンデスクライト買いたいんだけど",
    "posted_at": "2024-12-08T09:01:00+09:00",
    "likes": 72,
    "retweets": 0,
    "replies": 6,
    "hashtags": [
      "暮らし",
      "インテリア",
      "丁寧な暮らし",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "モダンデスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00078",
    "platform": "twitter",
    "post_type": "post",
    "username": "@gift_ayumi",
    "display_name": "ギフト探しAyumi",
    "content": "ずっと気になってたLED調光デスクライト、ついにゲット🎉 ずっと探してたやつ #グレイシャースタイル",
    "posted_at": "2024-12-08T09:39:00+09:00",
    "likes": 1995,
    "retweets": 154,
    "replies": 40,
    "hashtags": [
      "ファッション",
      "暮らし",
      "グレイシャースタイル",
      "カジュアル",
      "インテリア"
    ],
    "mentioned_products": [
      "LED調光デスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00014",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@design_nana",
    "display_name": "デザイン好きNana",
    "content": "北欧インテリア図鑑、どうしようか迷ってる🤔 使ってる人いる？ #グレイシャースタイル",
    "posted_at": "2024-12-08T12:51:00+09:00",
    "likes": 65,
    "retweets": 0,
    "replies": 15,
    "hashtags": [
      "収納",
      "ミニマリスト",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "北欧インテリア図鑑"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00157",
    "platform": "twitter",
    "post_type": "post",
    "username": "@interior_ryota",
    "display_name": "Ryotaのインテリア日記",
    "content": "グレイシャースタイルのステンレスキッチンツールセット、本当におすすめ！ 買って本当によかった #インテリア好き",
    "posted_at": "2024-12-08T13:43:00+09:00",
    "likes": 1790,
    "retweets": 171,
    "replies": 25,
    "hashtags": [
      "整理整頓",
      "シンプルライフ",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "ステンレスキッチンツールセット"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00122",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@simple_life_yuji",
    "display_name": "シンプルライフYuji",
    "content": "プレミアムカシミヤセーター、どうしようか迷ってる🤔 使ってる人いる？ #グレイシャースタイル",
    "posted_at": "2024-12-08T13:57:00+09:00",
    "likes": 69,
    "retweets": 18,
    "replies": 11,
    "hashtags": [
      "ガジェット",
      "シンプルコーデ",
      "グレイシャースタイル",
      "テック"
    ],
    "mentioned_products": [
      "プレミアムカシミヤセーター"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00133",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@design_ayumi",
    "display_name": "デザイン好きAyumi",
    "content": "配送遅延でリネンシャツが届くの遅れてる。連絡もないし不安",
    "posted_at": "2024-12-08T14:45:00+09:00",
    "likes": 21,
    "retweets": 0,
    "replies": 14,
    "hashtags": [
      "グレイシャースタイル"
    ],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00175",
    "platform": "twitter",
    "post_type": "post",
    "username": "@cozy_misaki",
    "display_name": "コージーライフMisaki",
    "content": "【購入レビュー】ステンレスキッチンツールセット ⭐5\nSNSで見て気になってた #GlacierStyle",
    "posted_at": "2024-12-08T15:11:00+09:00",
    "likes": 626,
    "retweets": 133,
    "replies": 28,
    "hashtags": [
      "シンプルコーデ",
      "ファッション",
      "グレイシャースタイル",
      "レビュー"
    ],
    "mentioned_products": [
      "ステンレスキッチンツールセット"
    ],
    "media_urls": [
      "https://example.com/img/review_175.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00125",
    "platform": "twitter",
    "post_type": "post",
    "username": "@interior_yuko",
    "display_name": "Yukoのインテリア日記",
    "content": "【購入レビュー】北欧風フロアライト ⭐3\nコスパ最高 #GlacierStyle",
    "posted_at": "2024-12-08T16:26:00+09:00",
    "likes": 785,
    "retweets": 133,
    "replies": 33,
    "hashtags": [
      "暮らし",
      "丁寧な暮らし",
      "部屋づくり",
      "グレイシャースタイル",
      "レビュー"
    ],
    "mentioned_products": [
      "北欧風フロアライト"
    ],
    "media_urls": [
      "https://example.com/img/review_125.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00023",
    "platform": "instagram",
    "post_type": "post",
    "username": "@nordic_taro",
    "display_name": "北欧好きTaro",
    "content": "念願の北欧風ペンダントライトが我が家に！ 買って本当によかった #新生活 #グレイシャースタイル",
    "posted_at": "2024-12-08T17:14:00+09:00",
    "likes": 2240,
    "retweets": 0,
    "replies": 60,
    "hashtags": [
      "暮らし",
      "グレイシャースタイル",
      "照明",
      "ライト",
      "インテリア"
    ],
    "mentioned_products": [
      "北欧風ペンダントライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_023.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00005",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@interior_naomi",
    "display_name": "Naomiのインテリア日記",
    "content": "デザインシーリングライトが届いた！ 思ってた以上にクオリティ高くて大満足😊 #GlacierStyle #グレイシャースタイル",
    "posted_at": "2024-12-08T17:28:00+09:00",
    "likes": 554,
    "retweets": 0,
    "replies": 35,
    "hashtags": [
      "スマートホーム",
      "暮らし",
      "グレイシャースタイル",
      "インテリア",
      "ガジェット"
    ],
    "mentioned_products": [
      "デザインシーリングライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_005.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00036",
    "platform": "twitter",
    "post_type": "post",
    "username": "@organic_takeshi",
    "display_name": "オーガニックTakeshi",
    "content": "吊り下げペンダントライトがお気に入りすぎる🥰 友達にも褒められた #GlacierStyle",
    "posted_at": "2024-12-08T17:51:00+09:00",
    "likes": 370,
    "retweets": 106,
    "replies": 23,
    "hashtags": [
      "暮らし",
      "グレイシャースタイル",
      "間接照明",
      "おしゃれ照明",
      "インテリア"
    ],
    "mentioned_products": [
      "吊り下げペンダントライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00126",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@lifestyle_ayumi",
    "display_name": "Ayumi｜暮らしを楽しむ",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-87987124の件で問い合わせです。キャンセルは可能でしょうか",
    "posted_at": "2024-12-08T17:51:00+09:00",
    "likes": 11,
    "retweets": 0,
    "replies": 7,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00127",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@lifestyle_ayumi この度はご連絡いただきありがとうございます。ご不明点がございましたら、いつでもお問い合わせください。",
    "posted_at": "2024-12-08T18:29:00+09:00",
    "likes": 15,
    "retweets": 0,
    "replies": 3,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00249",
    "platform": "twitter",
    "post_type": "post",
    "username": "@lifestyle_megumi",
    "display_name": "Megumi｜暮らしを楽しむ",
    "content": "ウォールシェルフを1ヶ月使ってみた感想📝 デザインがシンプルで使いやすい おすすめ度は5点！ #グレイシャースタイル",
    "posted_at": "2024-12-08T21:06:00+09:00",
    "likes": 796,
    "retweets": 116,
    "replies": 18,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "丁寧な暮らし",
      "インテリア",
      "レビュー"
    ],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": [
      "https://example.com/img/review_249.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00056",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@fashion_sho",
    "display_name": "ファッションSho",
    "content": "吊り下げペンダントライト、在庫切れになってた…入荷いつかな",
    "posted_at": "2024-12-08T22:16:00+09:00",
    "likes": 25,
    "retweets": 12,
    "replies": 3,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "テック",
      "ガジェット"
    ],
    "mentioned_products": [
      "吊り下げペンダントライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00212",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@minimal_ken",
    "display_name": "ミニマリストKen",
    "content": "グレイシャースタイルで注文した耐熱ガラスポットがまだ届かない…どうなってるの？",
    "posted_at": "2024-12-08T23:18:00+09:00",
    "likes": 75,
    "retweets": 0,
    "replies": 4,
    "hashtags": [
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "耐熱ガラスポット"
    ],
    "media_urls": [
      "https://example.com/img/issue_212.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00173",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@review_ryota",
    "display_name": "レビュワーRyota",
    "content": "リネンシャツのサイズ感が知りたい。実際に使ってる人教えて〜",
    "posted_at": "2024-12-09T08:31:00+09:00",
    "likes": 106,
    "retweets": 2,
    "replies": 32,
    "hashtags": [
      "シンプルコーデ",
      "グレイシャースタイル",
      "GlacierStyle"
    ],
    "mentioned_products": [
      "リネンシャツ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00102",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@design_haruka",
    "display_name": "デザイン好きHaruka",
    "content": "モダンデスクライト、どうしようか迷ってる🤔 使ってる人いる？ #グレイシャースタイル",
    "posted_at": "2024-12-09T09:47:00+09:00",
    "likes": 12,
    "retweets": 0,
    "replies": 31,
    "hashtags": [
      "暮らし",
      "インテリア",
      "部屋づくり",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "モダンデスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00048",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@room_taro",
    "display_name": "お部屋づくりTaro",
    "content": "グレイシャースタイルって送料いくらだっけ？ワイヤレスイヤホンPro買いたいんだけど",
    "posted_at": "2024-12-09T11:01:00+09:00",
    "likes": 65,
    "retweets": 13,
    "replies": 38,
    "hashtags": [
      "ガジェット",
      "スカンジナビアン",
      "北欧",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "ワイヤレスイヤホンPro"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00057",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@interior_kazuki",
    "display_name": "Kazukiのインテリア日記",
    "content": "ずっと気になってた収納ボックスセット、ついにゲット🎉 ずっと探してたやつ #グレイシャースタイル",
    "posted_at": "2024-12-09T11:49:00+09:00",
    "likes": 2670,
    "retweets": 171,
    "replies": 34,
    "hashtags": [
      "暮らし",
      "グレイシャースタイル",
      "照明",
      "おしゃれ照明",
      "インテリア"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_057.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00257",
    "platform": "twitter",
    "post_type": "post",
    "username": "@lifestyle_satoshi",
    "display_name": "Satoshi｜暮らしを楽しむ",
    "content": "念願の収納ボックスセットが我が家に！ デザインがシンプルで使いやすい #新生活 #グレイシャースタイル",
    "posted_at": "2024-12-09T12:05:00+09:00",
    "likes": 470,
    "retweets": 52,
    "replies": 46,
    "hashtags": [
      "暮らし",
      "グレイシャースタイル",
      "スカンジナビアン",
      "インテリア",
      "北欧インテリア"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_257.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00054",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@tech_akiko",
    "display_name": "テック好きAkiko",
    "content": "配送遅延でメリノウールカーディガンが届くの遅れてる。連絡もないし不安",
    "posted_at": "2024-12-09T15:01:00+09:00",
    "likes": 24,
    "retweets": 0,
    "replies": 13,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00228",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@nordic_yuki",
    "display_name": "北欧好きYuki",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-67609365の件で問い合わせです。配送状況を確認したいです",
    "posted_at": "2024-12-09T15:19:00+09:00",
    "likes": 29,
    "retweets": 0,
    "replies": 7,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00017",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@design_taro",
    "display_name": "デザイン好きTaro",
    "content": "友達にもおすすめしたいプレミアムカシミヤセーター💕 買って本当によかった #グレイシャースタイル",
    "posted_at": "2024-12-09T16:31:00+09:00",
    "likes": 2893,
    "retweets": 68,
    "replies": 35,
    "hashtags": [
      "北欧好き",
      "ファッション",
      "グレイシャースタイル",
      "北欧インテリア"
    ],
    "mentioned_products": [
      "プレミアムカシミヤセーター"
    ],
    "media_urls": [
      "https://example.com/img/user_post_017.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00118",
    "platform": "twitter",
    "post_type": "post",
    "username": "@work_from_home_ryota",
    "display_name": "在宅ワーカーRyota",
    "content": "ウォールシェルフのおかげで部屋がおしゃれになった✨ グレイシャースタイル最高！",
    "posted_at": "2024-12-09T18:03:00+09:00",
    "likes": 363,
    "retweets": 52,
    "replies": 32,
    "hashtags": [
      "スマートホーム",
      "暮らし",
      "グレイシャースタイル",
      "インテリア",
      "ガジェット"
    ],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00256",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@modern_kota",
    "display_name": "モダンリビングKota",
    "content": "スタイリッシュデスクライト、期待以上でした✨ 毎日使うのが楽しみ #グレイシャースタイル #買ってよかった",
    "posted_at": "2024-12-09T19:03:00+09:00",
    "likes": 706,
    "retweets": 0,
    "replies": 25,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "おうち時間",
      "ステイホーム"
    ],
    "mentioned_products": [
      "スタイリッシュデスクライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_256.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00092",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@eco_kazuki",
    "display_name": "エコライフKazuki",
    "content": "セールでリネンシャツをお得にゲット！ 一目惚れして買った #グレイシャースタイル #お買い得",
    "posted_at": "2024-12-09T20:37:00+09:00",
    "likes": 1851,
    "retweets": 0,
    "replies": 18,
    "hashtags": [
      "ガジェット",
      "ファッション",
      "グレイシャースタイル",
      "テック"
    ],
    "mentioned_products": [
      "リネンシャツ"
    ],
    "media_urls": [
      "https://example.com/img/user_post_092.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00085",
    "platform": "twitter",
    "post_type": "post",
    "username": "@minimal_yuki",
    "display_name": "ミニマリストYuki",
    "content": "【レビュー】グレイシャースタイルのウォールシェルフ使ってみた。\n\n良い点👍\n・サイズ感ぴったり\n・コスパ◎\n\n気になる点👎\n・サイズがちょっと大きい\n\n総合: 4/5 #グレイシャースタイル #レビュー",
    "posted_at": "2024-12-09T21:17:00+09:00",
    "likes": 1180,
    "retweets": 75,
    "replies": 44,
    "hashtags": [
      "インテリア",
      "部屋づくり",
      "グレイシャースタイル",
      "GlacierStyle",
      "レビュー"
    ],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": [
      "https://example.com/img/review_085.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00191",
    "platform": "twitter",
    "post_type": "post",
    "username": "@lifestyle_hiroshi",
    "display_name": "Hiroshi｜暮らしを楽しむ",
    "content": "コーヒーメーカーをギフトラッピングしてもらった🎀 リピート決定 #グレイシャースタイル",
    "posted_at": "2024-12-09T21:52:00+09:00",
    "likes": 586,
    "retweets": 41,
    "replies": 40,
    "hashtags": [
      "暮らし",
      "部屋づくり",
      "グレイシャースタイル",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "コーヒーメーカー"
    ],
    "media_urls": [
      "https://example.com/img/gift_191.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00098",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@nordic_kazuki",
    "display_name": "北欧好きKazuki",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-90940125の件で問い合わせです。交換をお願いしたいです",
    "posted_at": "2024-12-09T22:16:00+09:00",
    "likes": 19,
    "retweets": 0,
    "replies": 8,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00146",
    "platform": "instagram",
    "post_type": "post",
    "username": "@fashion_megumi",
    "display_name": "ファッションMegumi",
    "content": "グレイシャースタイルで買ったコーヒーメーカー、めちゃくちゃ良い✨ コスパ最高 #グレイシャースタイル",
    "posted_at": "2024-12-09T22:41:00+09:00",
    "likes": 322,
    "retweets": 0,
    "replies": 57,
    "hashtags": [
      "ガジェット",
      "グレイシャースタイル",
      "スマートホーム"
    ],
    "mentioned_products": [
      "コーヒーメーカー"
    ],
    "media_urls": [
      "https://example.com/img/user_post_146.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00106",
    "platform": "twitter",
    "post_type": "post",
    "username": "@organic_ayumi",
    "display_name": "オーガニックAyumi",
    "content": "耐熱ガラスポットが届いた！ 思ってた以上にクオリティ高くて大満足😊 #GlacierStyle #グレイシャースタイル",
    "posted_at": "2024-12-09T22:55:00+09:00",
    "likes": 421,
    "retweets": 42,
    "replies": 21,
    "hashtags": [
      "ライト",
      "照明",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "耐熱ガラスポット"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00154",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@fashion_megumi",
    "display_name": "ファッションMegumi",
    "content": "グレイシャースタイルのセールっていつ始まる？ステンレスキッチンツールセット狙ってる",
    "posted_at": "2024-12-09T23:35:00+09:00",
    "likes": 111,
    "retweets": 15,
    "replies": 15,
    "hashtags": [
      "部屋づくり",
      "丁寧な暮らし",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "ステンレスキッチンツールセット"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00260",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@eco_kota",
    "display_name": "エコライフKota",
    "content": "グレイシャースタイルのサイト、カートに入れても消えるで困ってる😭",
    "posted_at": "2024-12-10T07:02:00+09:00",
    "likes": 76,
    "retweets": 0,
    "replies": 13,
    "hashtags": [
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "耐熱ガラスポット"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00128",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@gadget_takeshi",
    "display_name": "ガジェットTakeshi",
    "content": "グレイシャースタイルのセールっていつ始まる？ステンレスキッチンツールセット狙ってる",
    "posted_at": "2024-12-10T09:25:00+09:00",
    "likes": 55,
    "retweets": 16,
    "replies": 36,
    "hashtags": [
      "北欧好き",
      "北欧",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "ステンレスキッチンツールセット"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00262",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@interior_ayumi",
    "display_name": "Ayumiのインテリア日記",
    "content": "@GlacierStyle_JP 北欧風フロアライトのサイズ感について質問です。設置は簡単ですか？",
    "posted_at": "2024-12-10T12:19:00+09:00",
    "likes": 15,
    "retweets": 0,
    "replies": 3,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00263",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@interior_ayumi お問い合わせありがとうございます。DMにてご注文番号をお知らせいただけますでしょうか。確認させていただきます。",
    "posted_at": "2024-12-10T14:06:00+09:00",
    "likes": 14,
    "retweets": 0,
    "replies": 0,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00001",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@organic_ayumi",
    "display_name": "オーガニックAyumi",
    "content": "グレイシャースタイルって送料いくらだっけ？プレミアムカシミヤセーター買いたいんだけど",
    "posted_at": "2024-12-10T14:55:00+09:00",
    "likes": 86,
    "retweets": 17,
    "replies": 26,
    "hashtags": [
      "シンプルコーデ",
      "収納",
      "整理整頓",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "プレミアムカシミヤセーター"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00103",
    "platform": "twitter",
    "post_type": "post",
    "username": "@fashion_haruka",
    "display_name": "ファッションHaruka",
    "content": "スタイリッシュデスクライトのおかげでリラックスできるようになった✨ グレイシャースタイル最高！",
    "posted_at": "2024-12-10T15:25:00+09:00",
    "likes": 683,
    "retweets": 140,
    "replies": 42,
    "hashtags": [
      "暮らし",
      "収納",
      "グレイシャースタイル",
      "ミニマリスト",
      "インテリア"
    ],
    "mentioned_products": [
      "スタイリッシュデスクライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_103.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00254",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@cozy_hiroshi",
    "display_name": "コージーライフHiroshi",
    "content": "グレイシャースタイルのサイト、決済エラーが出るで困ってる😭",
    "posted_at": "2024-12-10T15:58:00+09:00",
    "likes": 12,
    "retweets": 16,
    "replies": 13,
    "hashtags": [],
    "mentioned_products": [
      "スタイリッシュデスクライト"
    ],
    "media_urls": [
      "https://example.com/img/issue_254.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00015",
    "platform": "instagram",
    "post_type": "post",
    "username": "@modern_nana",
    "display_name": "モダンリビングNana",
    "content": "セールでワイヤレスイヤホンProをお得にゲット！ 家族も気に入ってる #グレイシャースタイル #お買い得",
    "posted_at": "2024-12-10T16:54:00+09:00",
    "likes": 455,
    "retweets": 0,
    "replies": 30,
    "hashtags": [
      "収納",
      "ミニマリスト",
      "グレイシャースタイル",
      "テック"
    ],
    "mentioned_products": [
      "ワイヤレスイヤホンPro"
    ],
    "media_urls": [
      "https://example.com/img/user_post_015.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00138",
    "platform": "twitter",
    "post_type": "post",
    "username": "@room_mami",
    "display_name": "お部屋づくりMami",
    "content": "セールでリネンシャツをお得にゲット！ SNSで見て気になってた #グレイシャースタイル #お買い得",
    "posted_at": "2024-12-10T23:00:00+09:00",
    "likes": 1954,
    "retweets": 178,
    "replies": 75,
    "hashtags": [
      "ガジェット",
      "シンプルコーデ",
      "グレイシャースタイル",
      "スマートホーム"
    ],
    "mentioned_products": [
      "リネンシャツ"
    ],
    "media_urls": [
      "https://example.com/img/user_post_138.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00067",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@nordic_nana",
    "display_name": "北欧好きNana",
    "content": "グレイシャースタイル、凹みで残念。もう少し改善してほしい",
    "posted_at": "2024-12-11T08:35:00+09:00",
    "likes": 74,
    "retweets": 13,
    "replies": 1,
    "hashtags": [
      "グレイシャースタイル"
    ],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00068",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@nordic_nana この度はご連絡いただきありがとうございます。DMにてご注文番号をお知らせいただけますでしょうか。確認させていただきます。",
    "posted_at": "2024-12-11T09:15:00+09:00",
    "likes": 6,
    "retweets": 0,
    "replies": 1,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00139",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@fashion_mai",
    "display_name": "ファッションMai",
    "content": "配送遅延で収納ボックスセットが届くの遅れてる。連絡もないし不安",
    "posted_at": "2024-12-11T09:43:00+09:00",
    "likes": 90,
    "retweets": 23,
    "replies": 17,
    "hashtags": [],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": [
      "https://example.com/img/issue_139.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00121",
    "platform": "twitter",
    "post_type": "post",
    "username": "@minimal_rina",
    "display_name": "ミニマリストRina",
    "content": "リネンシャツを1ヶ月使ってみた感想📝 部屋の雰囲気がガラッと変わった！ おすすめ度は4点！ #グレイシャースタイル",
    "posted_at": "2024-12-11T12:43:00+09:00",
    "likes": 1315,
    "retweets": 180,
    "replies": 32,
    "hashtags": [
      "ステイホーム",
      "ファッション",
      "グレイシャースタイル",
      "おうち時間",
      "レビュー"
    ],
    "mentioned_products": [
      "リネンシャツ"
    ],
    "media_urls": [
      "https://example.com/img/review_121.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00242",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@lifestyle_hiroshi",
    "display_name": "Hiroshi｜暮らしを楽しむ",
    "content": "念願の北欧風フロアライトが我が家に！ SNSで見て気になってた #新生活 #グレイシャースタイル",
    "posted_at": "2024-12-11T13:23:00+09:00",
    "likes": 2202,
    "retweets": 0,
    "replies": 59,
    "hashtags": [
      "ファッション",
      "部屋づくり",
      "グレイシャースタイル",
      "カジュアル",
      "インテリア"
    ],
    "mentioned_products": [
      "北欧風フロアライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00045",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@work_from_home_megumi",
    "display_name": "在宅ワーカーMegumi",
    "content": "グレイシャースタイルのオーガニックコットンTシャツ、デザインも機能も◎ 一目惚れして買った",
    "posted_at": "2024-12-11T16:38:00+09:00",
    "likes": 836,
    "retweets": 0,
    "replies": 47,
    "hashtags": [
      "お買い物",
      "ファッション",
      "グレイシャースタイル",
      "ネットショッピング"
    ],
    "mentioned_products": [
      "オーガニックコットンTシャツ"
    ],
    "media_urls": [
      "https://example.com/img/user_post_045.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00161",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@lifestyle_yuji",
    "display_name": "Yuji｜暮らしを楽しむ",
    "content": "グレイシャースタイルのモダンデスクライト、本当におすすめ！ ずっと探してたやつ #インテリア好き",
    "posted_at": "2024-12-11T17:17:00+09:00",
    "likes": 1719,
    "retweets": 0,
    "replies": 11,
    "hashtags": [
      "部屋づくり",
      "グレイシャースタイル",
      "インテリア",
      "北欧",
      "北欧インテリア"
    ],
    "mentioned_products": [
      "モダンデスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00196",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@room_satoshi",
    "display_name": "お部屋づくりSatoshi",
    "content": "北欧風ペンダントライト、期待以上でした✨ 一目惚れして買った #グレイシャースタイル #買ってよかった",
    "posted_at": "2024-12-11T17:58:00+09:00",
    "likes": 776,
    "retweets": 0,
    "replies": 7,
    "hashtags": [
      "デスク周り",
      "在宅ワーク",
      "部屋づくり",
      "グレイシャースタイル",
      "インテリア"
    ],
    "mentioned_products": [
      "北欧風ペンダントライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_196.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00026",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@work_from_home_satoshi",
    "display_name": "在宅ワーカーSatoshi",
    "content": "念願の耐熱ガラスポットが我が家に！ コスパ最高 #新生活 #グレイシャースタイル",
    "posted_at": "2024-12-11T19:03:00+09:00",
    "likes": 259,
    "retweets": 17,
    "replies": 20,
    "hashtags": [
      "EC",
      "お買い物",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "耐熱ガラスポット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_026.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00059",
    "platform": "instagram",
    "post_type": "post",
    "username": "@work_from_home_kenji",
    "display_name": "在宅ワーカーKenji",
    "content": "北欧インテリア図鑑をギフトラッピングしてもらった🎀 友達にも褒められた #グレイシャースタイル",
    "posted_at": "2024-12-12T07:50:00+09:00",
    "likes": 202,
    "retweets": 0,
    "replies": 36,
    "hashtags": [
      "スカンジナビアン",
      "グレイシャースタイル",
      "北欧インテリア",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "北欧インテリア図鑑"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00030",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@tech_naomi",
    "display_name": "テック好きNaomi",
    "content": "グレイシャースタイルのLED調光デスクライト、重さはどのくらいですか？",
    "posted_at": "2024-12-12T08:05:00+09:00",
    "likes": 30,
    "retweets": 0,
    "replies": 3,
    "hashtags": [],
    "mentioned_products": [
      "LED調光デスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00040",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@work_from_home_akiko",
    "display_name": "在宅ワーカーAkiko",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-53061640の件で問い合わせです。交換をお願いしたいです",
    "posted_at": "2024-12-12T08:41:00+09:00",
    "likes": 29,
    "retweets": 0,
    "replies": 9,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00204",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@modern_yuji",
    "display_name": "モダンリビングYuji",
    "content": "プレミアムカシミヤセーターの耐久性ってどうなんだろう？買おうか検討中",
    "posted_at": "2024-12-12T09:23:00+09:00",
    "likes": 122,
    "retweets": 0,
    "replies": 5,
    "hashtags": [
      "シンプルコーデ",
      "インテリア",
      "部屋づくり",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "プレミアムカシミヤセーター"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00143",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@organic_yuko",
    "display_name": "オーガニックYuko",
    "content": "グレイシャースタイルで買った北欧インテリア図鑑、めちゃくちゃ良い✨ 部屋の雰囲気がガラッと変わった！ #グレイシャースタイル",
    "posted_at": "2024-12-12T11:28:00+09:00",
    "likes": 614,
    "retweets": 18,
    "replies": 36,
    "hashtags": [
      "ミニマリスト",
      "シンプルライフ",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "北欧インテリア図鑑"
    ],
    "media_urls": [
      "https://example.com/img/user_post_143.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00137",
    "platform": "instagram",
    "post_type": "post",
    "username": "@interior_takeshi",
    "display_name": "Takeshiのインテリア日記",
    "content": "グレイシャースタイルのステンレスキッチンツールセット、デザインも機能も◎ 家族も気に入ってる",
    "posted_at": "2024-12-12T14:55:00+09:00",
    "likes": 2309,
    "retweets": 0,
    "replies": 8,
    "hashtags": [
      "暮らし",
      "インテリア",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "ステンレスキッチンツールセット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_137.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00158",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@room_mami",
    "display_name": "お部屋づくりMami",
    "content": "グレイシャースタイルって送料いくらだっけ？耐熱ガラスポット買いたいんだけど",
    "posted_at": "2024-12-12T15:10:00+09:00",
    "likes": 125,
    "retweets": 0,
    "replies": 26,
    "hashtags": [
      "カジュアル",
      "シンプルコーデ",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "耐熱ガラスポット"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00141",
    "platform": "twitter",
    "post_type": "post",
    "username": "@office_daiki",
    "display_name": "オフィスワークDaiki",
    "content": "グレイシャースタイルで買ったオーガニックコットンTシャツ、めちゃくちゃ良い✨ リピート決定 #グレイシャースタイル",
    "posted_at": "2024-12-12T15:54:00+09:00",
    "likes": 1945,
    "retweets": 199,
    "replies": 23,
    "hashtags": [
      "シンプルコーデ",
      "ミニマリスト",
      "シンプルライフ",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "オーガニックコットンTシャツ"
    ],
    "media_urls": [
      "https://example.com/img/user_post_141.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00108",
    "platform": "instagram",
    "post_type": "post",
    "username": "@coffee_akiko",
    "display_name": "コーヒー好きAkiko",
    "content": "スマートスピーカーのおかげで生活が快適になった✨ グレイシャースタイル最高！",
    "posted_at": "2024-12-12T16:00:00+09:00",
    "likes": 1719,
    "retweets": 0,
    "replies": 54,
    "hashtags": [
      "ガジェット",
      "ミニマリスト",
      "シンプルライフ",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "スマートスピーカー"
    ],
    "media_urls": [
      "https://example.com/img/user_post_108.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00109",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@office_akiko",
    "display_name": "オフィスワークAkiko",
    "content": "収納付きデスクの耐久性ってどうなんだろう？買おうか検討中",
    "posted_at": "2024-12-12T17:00:00+09:00",
    "likes": 17,
    "retweets": 3,
    "replies": 35,
    "hashtags": [
      "在宅ワーク",
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "ホームオフィス"
    ],
    "mentioned_products": [
      "収納付きデスク"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00235",
    "platform": "twitter",
    "post_type": "post",
    "username": "@fashion_yuji",
    "display_name": "ファッションYuji",
    "content": "セールでウォールシェルフをお得にゲット！ コスパ最高 #グレイシャースタイル #お買い得",
    "posted_at": "2024-12-12T17:14:00+09:00",
    "likes": 2032,
    "retweets": 96,
    "replies": 39,
    "hashtags": [
      "暮らし",
      "インテリア",
      "部屋づくり",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": [
      "https://example.com/img/user_post_235.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00021",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@lifestyle_naomi",
    "display_name": "Naomi｜暮らしを楽しむ",
    "content": "グレイシャースタイルって送料いくらだっけ？収納付きデスク買いたいんだけど",
    "posted_at": "2024-12-12T19:10:00+09:00",
    "likes": 66,
    "retweets": 0,
    "replies": 22,
    "hashtags": [
      "部屋づくり",
      "グレイシャースタイル",
      "インテリア",
      "北欧",
      "北欧インテリア"
    ],
    "mentioned_products": [
      "収納付きデスク"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00072",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@cozy_mami",
    "display_name": "コージーライフMami",
    "content": "ウォールシェルフって他の色はありますか？ 誰か知ってる人いますか？ #グレイシャースタイル",
    "posted_at": "2024-12-12T21:21:00+09:00",
    "likes": 28,
    "retweets": 0,
    "replies": 8,
    "hashtags": [],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00234",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@coffee_ayumi",
    "display_name": "コーヒー好きAyumi",
    "content": "カスタマーサポートに繋がらない…急ぎで確認したいのに",
    "posted_at": "2024-12-12T22:01:00+09:00",
    "likes": 68,
    "retweets": 24,
    "replies": 13,
    "hashtags": [],
    "mentioned_products": [
      "収納付きデスク"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00073",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@cozy_mami ご不便をおかけし申し訳ございません。またのご利用をお待ちしております✨",
    "posted_at": "2024-12-12T22:38:00+09:00",
    "likes": 17,
    "retweets": 0,
    "replies": 0,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00170",
    "platform": "instagram",
    "post_type": "post",
    "username": "@review_haruka",
    "display_name": "レビュワーHaruka",
    "content": "セールでLED調光デスクライトをお得にゲット！ 部屋の雰囲気がガラッと変わった！ #グレイシャースタイル #お買い得",
    "posted_at": "2024-12-12T23:07:00+09:00",
    "likes": 2377,
    "retweets": 0,
    "replies": 49,
    "hashtags": [
      "休日の過ごし方",
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "おうち時間"
    ],
    "mentioned_products": [
      "LED調光デスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00240",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@eco_kazuki",
    "display_name": "エコライフKazuki",
    "content": "デザインシーリングライトが届いた！ 思ってた以上にクオリティ高くて大満足😊 #GlacierStyle #グレイシャースタイル",
    "posted_at": "2024-12-12T23:13:00+09:00",
    "likes": 2956,
    "retweets": 0,
    "replies": 28,
    "hashtags": [
      "暮らし",
      "インテリア",
      "グレイシャースタイル",
      "GlacierStyle"
    ],
    "mentioned_products": [
      "デザインシーリングライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00210",
    "platform": "twitter",
    "post_type": "post",
    "username": "@home_daiki",
    "display_name": "Daikiのマイホーム記録",
    "content": "コーヒーメーカーをギフトラッピングしてもらった🎀 リピート決定 #グレイシャースタイル",
    "posted_at": "2024-12-12T23:23:00+09:00",
    "likes": 712,
    "retweets": 47,
    "replies": 16,
    "hashtags": [
      "ミニマリスト",
      "シンプルライフ",
      "グレイシャースタイル",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "コーヒーメーカー"
    ],
    "media_urls": [
      "https://example.com/img/gift_210.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00066",
    "platform": "twitter",
    "post_type": "post",
    "username": "@home_naomi",
    "display_name": "Naomiのマイホーム記録",
    "content": "【購入レビュー】北欧インテリア図鑑 ⭐3\n友達にも褒められた #GlacierStyle",
    "posted_at": "2024-12-12T23:43:00+09:00",
    "likes": 527,
    "retweets": 151,
    "replies": 28,
    "hashtags": [
      "スマートホーム",
      "グレイシャースタイル",
      "テック",
      "レビュー"
    ],
    "mentioned_products": [
      "北欧インテリア図鑑"
    ],
    "media_urls": [
      "https://example.com/img/review_066.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00099",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@tech_taro",
    "display_name": "テック好きTaro",
    "content": "ウォールシェルフ、どうしようか迷ってる🤔 使ってる人いる？ #グレイシャースタイル",
    "posted_at": "2024-12-13T09:35:00+09:00",
    "likes": 138,
    "retweets": 9,
    "replies": 17,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "購入品",
      "グレイシャースタイル",
      "お買い物"
    ],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00101",
    "platform": "instagram",
    "post_type": "post",
    "username": "@room_takeshi",
    "display_name": "お部屋づくりTakeshi",
    "content": "オーガニックコットンTシャツを1ヶ月使ってみた感想📝 買って本当によかった おすすめ度は3点！ #グレイシャースタイル",
    "posted_at": "2024-12-13T11:32:00+09:00",
    "likes": 670,
    "retweets": 0,
    "replies": 29,
    "hashtags": [
      "ホームオフィス",
      "ファッション",
      "在宅ワーク",
      "グレイシャースタイル",
      "レビュー"
    ],
    "mentioned_products": [
      "オーガニックコットンTシャツ"
    ],
    "media_urls": [
      "https://example.com/img/review_101.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00090",
    "platform": "instagram",
    "post_type": "post",
    "username": "@modern_sho",
    "display_name": "モダンリビングSho",
    "content": "セールでプレミアムカシミヤセーターをお得にゲット！ 家族も気に入ってる #グレイシャースタイル #お買い得",
    "posted_at": "2024-12-13T12:04:00+09:00",
    "likes": 2241,
    "retweets": 0,
    "replies": 79,
    "hashtags": [
      "シンプルコーデ",
      "カジュアル",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "プレミアムカシミヤセーター"
    ],
    "media_urls": [
      "https://example.com/img/user_post_090.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00180",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@gadget_rina",
    "display_name": "ガジェットRina",
    "content": "グレイシャースタイルって送料いくらだっけ？LED調光デスクライト買いたいんだけど",
    "posted_at": "2024-12-13T13:23:00+09:00",
    "likes": 43,
    "retweets": 0,
    "replies": 35,
    "hashtags": [
      "ファッション",
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "カジュアル"
    ],
    "mentioned_products": [
      "LED調光デスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00114",
    "platform": "twitter",
    "post_type": "post",
    "username": "@minimal_akiko",
    "display_name": "ミニマリストAkiko",
    "content": "ずっと気になってた吊り下げペンダントライト、ついにゲット🎉 SNSで見て気になってた #グレイシャースタイル",
    "posted_at": "2024-12-13T13:37:00+09:00",
    "likes": 958,
    "retweets": 45,
    "replies": 48,
    "hashtags": [
      "暮らし",
      "インテリア",
      "部屋づくり",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "吊り下げペンダントライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_114.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00213",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@modern_emi",
    "display_name": "モダンリビングEmi",
    "content": "念願のリネンシャツが我が家に！ デザインがシンプルで使いやすい #新生活 #グレイシャースタイル",
    "posted_at": "2024-12-13T15:22:00+09:00",
    "likes": 439,
    "retweets": 0,
    "replies": 23,
    "hashtags": [
      "休日の過ごし方",
      "ファッション",
      "グレイシャースタイル",
      "おうち時間"
    ],
    "mentioned_products": [
      "リネンシャツ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00261",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@coffee_nana",
    "display_name": "コーヒー好きNana",
    "content": "@GlacierStyle_JP オーガニックコットンTシャツの色味について質問です。ギフトラッピングはできますか？",
    "posted_at": "2024-12-13T16:19:00+09:00",
    "likes": 30,
    "retweets": 0,
    "replies": 9,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00100",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@lifestyle_akiko",
    "display_name": "Akiko｜暮らしを楽しむ",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-69810064の件で問い合わせです。返品の手続きについて教えてください",
    "posted_at": "2024-12-13T16:25:00+09:00",
    "likes": 24,
    "retweets": 0,
    "replies": 3,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00024",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@office_haruka",
    "display_name": "オフィスワークHaruka",
    "content": "収納ボックスセット、思ってたのと違った…返品できるかな",
    "posted_at": "2024-12-13T16:43:00+09:00",
    "likes": 28,
    "retweets": 0,
    "replies": 11,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00104",
    "platform": "instagram",
    "post_type": "post",
    "username": "@design_kenji",
    "display_name": "デザイン好きKenji",
    "content": "LED調光デスクライトをギフトラッピングしてもらった🎀 デザインがシンプルで使いやすい #グレイシャースタイル",
    "posted_at": "2024-12-13T19:55:00+09:00",
    "likes": 92,
    "retweets": 0,
    "replies": 23,
    "hashtags": [
      "暮らし",
      "グレイシャースタイル",
      "北欧好き",
      "インテリア",
      "北欧インテリア",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "LED調光デスクライト"
    ],
    "media_urls": [
      "https://example.com/img/gift_104.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00233",
    "platform": "instagram",
    "post_type": "post",
    "username": "@office_hiroshi",
    "display_name": "オフィスワークHiroshi",
    "content": "【購入レビュー】ウォールシェルフ ⭐4\nデザインがシンプルで使いやすい #GlacierStyle",
    "posted_at": "2024-12-13T19:56:00+09:00",
    "likes": 105,
    "retweets": 0,
    "replies": 37,
    "hashtags": [
      "ファッション",
      "暮らし",
      "グレイシャースタイル",
      "シンプルコーデ",
      "インテリア",
      "レビュー"
    ],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": [
      "https://example.com/img/review_233.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00199",
    "platform": "twitter",
    "post_type": "post",
    "username": "@gift_haruka",
    "display_name": "ギフト探しHaruka",
    "content": "友達にもおすすめしたい北欧風ペンダントライト💕 買って本当によかった #グレイシャースタイル",
    "posted_at": "2024-12-13T20:23:00+09:00",
    "likes": 2350,
    "retweets": 155,
    "replies": 73,
    "hashtags": [
      "ファッション",
      "暮らし",
      "グレイシャースタイル",
      "カジュアル",
      "インテリア"
    ],
    "mentioned_products": [
      "北欧風ペンダントライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_199.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00110",
    "platform": "twitter",
    "post_type": "post",
    "username": "@gift_taro",
    "display_name": "ギフト探しTaro",
    "content": "オーガニックコットンTシャツを1ヶ月使ってみた感想📝 想像以上のクオリティ おすすめ度は4点！ #グレイシャースタイル",
    "posted_at": "2024-12-13T22:48:00+09:00",
    "likes": 732,
    "retweets": 117,
    "replies": 98,
    "hashtags": [
      "ホームオフィス",
      "シンプルコーデ",
      "在宅ワーク",
      "グレイシャースタイル",
      "レビュー"
    ],
    "mentioned_products": [
      "オーガニックコットンTシャツ"
    ],
    "media_urls": [
      "https://example.com/img/review_110.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00065",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@office_kota",
    "display_name": "オフィスワークKota",
    "content": "収納付きデスク、どうしようか迷ってる🤔 使ってる人いる？ #グレイシャースタイル",
    "posted_at": "2024-12-14T07:46:00+09:00",
    "likes": 37,
    "retweets": 0,
    "replies": 15,
    "hashtags": [
      "暮らし",
      "グレイシャースタイル",
      "照明",
      "ライト",
      "インテリア"
    ],
    "mentioned_products": [
      "収納付きデスク"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00149",
    "platform": "twitter",
    "post_type": "post",
    "username": "@simple_life_nana",
    "display_name": "シンプルライフNana",
    "content": "グレイシャースタイルのスマートスピーカー、デザインも機能も◎ 部屋の雰囲気がガラッと変わった！",
    "posted_at": "2024-12-14T07:51:00+09:00",
    "likes": 360,
    "retweets": 55,
    "replies": 31,
    "hashtags": [
      "ガジェット",
      "グレイシャースタイル",
      "スマートホーム"
    ],
    "mentioned_products": [
      "スマートスピーカー"
    ],
    "media_urls": [
      "https://example.com/img/user_post_149.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00215",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@organic_takeshi",
    "display_name": "オーガニックTakeshi",
    "content": "念願の収納ボックスセットが我が家に！ 家族も気に入ってる #新生活 #グレイシャースタイル",
    "posted_at": "2024-12-14T07:59:00+09:00",
    "likes": 2120,
    "retweets": 118,
    "replies": 45,
    "hashtags": [
      "暮らし",
      "部屋づくり",
      "グレイシャースタイル",
      "GlacierStyle"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_215.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00232",
    "platform": "twitter",
    "post_type": "post",
    "username": "@coffee_yuki",
    "display_name": "コーヒー好きYuki",
    "content": "念願のメリノウールカーディガンが我が家に！ SNSで見て気になってた #新生活 #グレイシャースタイル",
    "posted_at": "2024-12-14T09:59:00+09:00",
    "likes": 1566,
    "retweets": 164,
    "replies": 37,
    "hashtags": [
      "スカンジナビアン",
      "シンプルコーデ",
      "グレイシャースタイル",
      "北欧インテリア"
    ],
    "mentioned_products": [
      "メリノウールカーディガン"
    ],
    "media_urls": [
      "https://example.com/img/user_post_232.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00031",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@eco_misaki",
    "display_name": "エコライフMisaki",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-83876681の件で問い合わせです。キャンセルは可能でしょうか",
    "posted_at": "2024-12-14T10:03:00+09:00",
    "likes": 15,
    "retweets": 0,
    "replies": 5,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00250",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@organic_satoshi",
    "display_name": "オーガニックSatoshi",
    "content": "ずっと気になってた収納ボックスセット、ついにゲット🎉 リピート決定 #グレイシャースタイル",
    "posted_at": "2024-12-14T10:10:00+09:00",
    "likes": 118,
    "retweets": 0,
    "replies": 26,
    "hashtags": [
      "暮らし",
      "丁寧な暮らし",
      "部屋づくり",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_250.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00037",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@fashion_mami",
    "display_name": "ファッションMami",
    "content": "グレイシャースタイル、凹みで残念。もう少し改善してほしい",
    "posted_at": "2024-12-14T10:45:00+09:00",
    "likes": 18,
    "retweets": 13,
    "replies": 7,
    "hashtags": [
      "グレイシャースタイル"
    ],
    "mentioned_products": [],
    "media_urls": [
      "https://example.com/img/issue_037.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00007",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@room_takeshi",
    "display_name": "お部屋づくりTakeshi",
    "content": "ずっと気になってたデザインシーリングライト、ついにゲット🎉 毎日使うのが楽しみ #グレイシャースタイル",
    "posted_at": "2024-12-14T10:57:00+09:00",
    "likes": 246,
    "retweets": 72,
    "replies": 52,
    "hashtags": [
      "部屋づくり",
      "スマートホーム",
      "暮らし",
      "グレイシャースタイル",
      "ガジェット"
    ],
    "mentioned_products": [
      "デザインシーリングライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_007.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00032",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@eco_misaki お問い合わせありがとうございます。またのご利用をお待ちしております✨",
    "posted_at": "2024-12-14T11:00:00+09:00",
    "likes": 2,
    "retweets": 0,
    "replies": 0,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00064",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@simple_life_mami",
    "display_name": "シンプルライフMami",
    "content": "グレイシャースタイルのセールっていつ始まる？北欧風ペンダントライト狙ってる",
    "posted_at": "2024-12-14T13:03:00+09:00",
    "likes": 61,
    "retweets": 0,
    "replies": 17,
    "hashtags": [
      "部屋づくり",
      "グレイシャースタイル",
      "スカンジナビアン",
      "北欧好き",
      "インテリア"
    ],
    "mentioned_products": [
      "北欧風ペンダントライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00096",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@lifestyle_daiki",
    "display_name": "Daiki｜暮らしを楽しむ",
    "content": "グレイシャースタイルのサイト、ログインできないで困ってる😭",
    "posted_at": "2024-12-14T14:32:00+09:00",
    "likes": 40,
    "retweets": 8,
    "replies": 2,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00264",
    "platform": "instagram",
    "post_type": "post",
    "username": "@tech_taro",
    "display_name": "テック好きTaro",
    "content": "グレイシャースタイルで買ったプレミアムカシミヤセーター、めちゃくちゃ良い✨ 友達にも褒められた #グレイシャースタイル",
    "posted_at": "2024-12-14T14:55:00+09:00",
    "likes": 2011,
    "retweets": 0,
    "replies": 18,
    "hashtags": [
      "シンプルコーデ",
      "ファッション",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "プレミアムカシミヤセーター"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00080",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@lifestyle_daiki",
    "display_name": "Daiki｜暮らしを楽しむ",
    "content": "ウォールシェルフ、期待以上でした✨ 買って本当によかった #グレイシャースタイル #買ってよかった",
    "posted_at": "2024-12-14T14:56:00+09:00",
    "likes": 2050,
    "retweets": 0,
    "replies": 49,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "スカンジナビアン",
      "北欧"
    ],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00020",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@review_megumi",
    "display_name": "レビュワーMegumi",
    "content": "デザインシーリングライト、思ってたのと違った…返品できるかな",
    "posted_at": "2024-12-14T15:19:00+09:00",
    "likes": 84,
    "retweets": 0,
    "replies": 10,
    "hashtags": [
      "グレイシャースタイル"
    ],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00165",
    "platform": "instagram",
    "post_type": "post",
    "username": "@home_taro",
    "display_name": "Taroのマイホーム記録",
    "content": "リネンシャツを1ヶ月使ってみた感想📝 デザインがシンプルで使いやすい おすすめ度は5点！ #グレイシャースタイル",
    "posted_at": "2024-12-14T16:31:00+09:00",
    "likes": 153,
    "retweets": 0,
    "replies": 43,
    "hashtags": [
      "シンプルコーデ",
      "グレイシャースタイル",
      "GlacierStyle",
      "レビュー"
    ],
    "mentioned_products": [
      "リネンシャツ"
    ],
    "media_urls": [
      "https://example.com/img/review_165.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00004",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@interior_haruka",
    "display_name": "Harukaのインテリア日記",
    "content": "メリノウールカーディガンのサイズ感が知りたい。実際に使ってる人教えて〜",
    "posted_at": "2024-12-14T19:26:00+09:00",
    "likes": 126,
    "retweets": 0,
    "replies": 5,
    "hashtags": [
      "ステイホーム",
      "休日の過ごし方",
      "ファッション",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "メリノウールカーディガン"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00237",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@work_from_home_kota",
    "display_name": "在宅ワーカーKota",
    "content": "グレイシャースタイルの北欧風フロアライト、デザインも機能も◎ 友達にも褒められた",
    "posted_at": "2024-12-14T21:34:00+09:00",
    "likes": 1678,
    "retweets": 42,
    "replies": 67,
    "hashtags": [
      "暮らし",
      "インテリア",
      "丁寧な暮らし",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "北欧風フロアライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_237.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00248",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@design_kota",
    "display_name": "デザイン好きKota",
    "content": "モダンデスクライトが届いた！ 思ってた以上にクオリティ高くて大満足😊 #GlacierStyle #グレイシャースタイル",
    "posted_at": "2024-12-14T22:12:00+09:00",
    "likes": 2411,
    "retweets": 0,
    "replies": 25,
    "hashtags": [
      "部屋づくり",
      "暮らし",
      "整理整頓",
      "グレイシャースタイル",
      "ミニマリスト"
    ],
    "mentioned_products": [
      "モダンデスクライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_248.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00124",
    "platform": "instagram",
    "post_type": "post",
    "username": "@simple_life_ken",
    "display_name": "シンプルライフKen",
    "content": "北欧インテリア図鑑が届いた！ 思ってた以上にクオリティ高くて大満足😊 #GlacierStyle #グレイシャースタイル",
    "posted_at": "2024-12-14T23:02:00+09:00",
    "likes": 2730,
    "retweets": 0,
    "replies": 12,
    "hashtags": [
      "シンプルコーデ",
      "ファッション",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "北欧インテリア図鑑"
    ],
    "media_urls": [
      "https://example.com/img/user_post_124.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00142",
    "platform": "instagram",
    "post_type": "post",
    "username": "@minimal_satoshi",
    "display_name": "ミニマリストSatoshi",
    "content": "グレイシャースタイルのワイヤレスイヤホンPro、デザインも機能も◎ 友達にも褒められた",
    "posted_at": "2024-12-14T23:58:00+09:00",
    "likes": 562,
    "retweets": 0,
    "replies": 12,
    "hashtags": [
      "ガジェット",
      "グレイシャースタイル",
      "スマートホーム"
    ],
    "mentioned_products": [
      "ワイヤレスイヤホンPro"
    ],
    "media_urls": [
      "https://example.com/img/user_post_142.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00011",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@cozy_naomi",
    "display_name": "コージーライフNaomi",
    "content": "グレイシャースタイルって送料いくらだっけ？ステンレスキッチンツールセット買いたいんだけど",
    "posted_at": "2024-12-15T07:43:00+09:00",
    "likes": 149,
    "retweets": 9,
    "replies": 27,
    "hashtags": [
      "お買い物",
      "グレイシャースタイル",
      "ネットショッピング"
    ],
    "mentioned_products": [
      "ステンレスキッチンツールセット"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00219",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@interior_daiki",
    "display_name": "Daikiのインテリア日記",
    "content": "吊り下げペンダントライトのカバーがすぐ外れたになった。品質大丈夫？",
    "posted_at": "2024-12-15T09:40:00+09:00",
    "likes": 68,
    "retweets": 19,
    "replies": 10,
    "hashtags": [],
    "mentioned_products": [
      "吊り下げペンダントライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00093",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@tech_kazuki",
    "display_name": "テック好きKazuki",
    "content": "グレイシャースタイルって送料いくらだっけ？収納付きデスク買いたいんだけど",
    "posted_at": "2024-12-15T10:49:00+09:00",
    "likes": 32,
    "retweets": 10,
    "replies": 21,
    "hashtags": [
      "暮らし",
      "グレイシャースタイル",
      "テック",
      "インテリア",
      "ガジェット"
    ],
    "mentioned_products": [
      "収納付きデスク"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00186",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@modern_mami",
    "display_name": "モダンリビングMami",
    "content": "メリノウールカーディガンのおかげで生活が快適になった✨ グレイシャースタイル最高！",
    "posted_at": "2024-12-15T11:11:00+09:00",
    "likes": 1347,
    "retweets": 156,
    "replies": 27,
    "hashtags": [
      "ファッション",
      "北欧",
      "グレイシャースタイル",
      "北欧インテリア"
    ],
    "mentioned_products": [
      "メリノウールカーディガン"
    ],
    "media_urls": [
      "https://example.com/img/user_post_186.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00116",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@gift_satoshi",
    "display_name": "ギフト探しSatoshi",
    "content": "グレイシャースタイルって送料いくらだっけ？オーガニックコットンTシャツ買いたいんだけど",
    "posted_at": "2024-12-15T13:00:00+09:00",
    "likes": 133,
    "retweets": 0,
    "replies": 38,
    "hashtags": [
      "シンプルコーデ",
      "インテリア",
      "部屋づくり",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "オーガニックコットンTシャツ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00259",
    "platform": "instagram",
    "post_type": "post",
    "username": "@work_from_home_akiko",
    "display_name": "在宅ワーカーAkiko",
    "content": "セールで北欧風フロアライトをお得にゲット！ 想像以上のクオリティ #グレイシャースタイル #お買い得",
    "posted_at": "2024-12-15T15:58:00+09:00",
    "likes": 2383,
    "retweets": 0,
    "replies": 24,
    "hashtags": [
      "デスク周り",
      "暮らし",
      "グレイシャースタイル",
      "ホームオフィス",
      "インテリア"
    ],
    "mentioned_products": [
      "北欧風フロアライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_259.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00079",
    "platform": "twitter",
    "post_type": "post",
    "username": "@interior_mai",
    "display_name": "Maiのインテリア日記",
    "content": "リネンシャツのおかげで集中力がアップした✨ グレイシャースタイル最高！",
    "posted_at": "2024-12-15T16:12:00+09:00",
    "likes": 2435,
    "retweets": 94,
    "replies": 50,
    "hashtags": [
      "購入品",
      "ファッション",
      "グレイシャースタイル",
      "ネットショッピング"
    ],
    "mentioned_products": [
      "リネンシャツ"
    ],
    "media_urls": [
      "https://example.com/img/user_post_079.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00058",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@work_from_home_kazuki",
    "display_name": "在宅ワーカーKazuki",
    "content": "念願の収納ボックスセットが我が家に！ デザインがシンプルで使いやすい #新生活 #グレイシャースタイル",
    "posted_at": "2024-12-15T16:38:00+09:00",
    "likes": 486,
    "retweets": 0,
    "replies": 24,
    "hashtags": [
      "シンプルライフ",
      "部屋づくり",
      "暮らし",
      "整理整頓",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "収納ボックスセット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_058.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00265",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@design_emi",
    "display_name": "デザイン好きEmi",
    "content": "グレイシャースタイルのサイト、カートに入れても消えるで困ってる😭",
    "posted_at": "2024-12-15T19:16:00+09:00",
    "likes": 53,
    "retweets": 16,
    "replies": 13,
    "hashtags": [
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "モダンデスクライト"
    ],
    "media_urls": [
      "https://example.com/img/issue_265.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00211",
    "platform": "instagram",
    "post_type": "post",
    "username": "@gadget_naomi",
    "display_name": "ガジェットNaomi",
    "content": "コーヒーメーカーをギフトラッピングしてもらった🎀 コスパ最高 #グレイシャースタイル",
    "posted_at": "2024-12-15T21:45:00+09:00",
    "likes": 791,
    "retweets": 0,
    "replies": 40,
    "hashtags": [
      "収納",
      "ミニマリスト",
      "グレイシャースタイル",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "コーヒーメーカー"
    ],
    "media_urls": [
      "https://example.com/img/gift_211.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00050",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@cozy_yuki",
    "display_name": "コージーライフYuki",
    "content": "グレイシャースタイルで買ったウォールシェルフ、めちゃくちゃ良い✨ リピート決定 #グレイシャースタイル",
    "posted_at": "2024-12-16T09:09:00+09:00",
    "likes": 1434,
    "retweets": 0,
    "replies": 23,
    "hashtags": [
      "部屋づくり",
      "ネットショッピング",
      "暮らし",
      "グレイシャースタイル",
      "お買い物"
    ],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00131",
    "platform": "twitter",
    "post_type": "post",
    "username": "@coffee_kazuki",
    "display_name": "コーヒー好きKazuki",
    "content": "グレイシャースタイルのLED調光デスクライト、デザインも機能も◎ リピート決定",
    "posted_at": "2024-12-16T11:07:00+09:00",
    "likes": 278,
    "retweets": 46,
    "replies": 31,
    "hashtags": [
      "部屋づくり",
      "スマートホーム",
      "グレイシャースタイル",
      "インテリア",
      "ガジェット"
    ],
    "mentioned_products": [
      "LED調光デスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00070",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@tech_haruka",
    "display_name": "テック好きHaruka",
    "content": "北欧風フロアライトのサイズ感が知りたい。実際に使ってる人教えて〜",
    "posted_at": "2024-12-16T12:00:00+09:00",
    "likes": 113,
    "retweets": 0,
    "replies": 14,
    "hashtags": [
      "暮らし",
      "丁寧な暮らし",
      "部屋づくり",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "北欧風フロアライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00159",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@review_haruka",
    "display_name": "レビュワーHaruka",
    "content": "吊り下げペンダントライト、期待以上でした✨ 部屋の雰囲気がガラッと変わった！ #グレイシャースタイル #買ってよかった",
    "posted_at": "2024-12-16T14:33:00+09:00",
    "likes": 275,
    "retweets": 71,
    "replies": 32,
    "hashtags": [
      "休日の過ごし方",
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "おうち時間"
    ],
    "mentioned_products": [
      "吊り下げペンダントライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_159.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00251",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@eco_akiko",
    "display_name": "エコライフAkiko",
    "content": "念願のスタイリッシュデスクライトが我が家に！ SNSで見て気になってた #新生活 #グレイシャースタイル",
    "posted_at": "2024-12-16T16:27:00+09:00",
    "likes": 2838,
    "retweets": 189,
    "replies": 52,
    "hashtags": [
      "部屋づくり",
      "スマートホーム",
      "グレイシャースタイル",
      "インテリア",
      "ガジェット"
    ],
    "mentioned_products": [
      "スタイリッシュデスクライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_251.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00095",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@organic_rina",
    "display_name": "オーガニックRina",
    "content": "耐熱ガラスポットがお気に入りすぎる🥰 想像以上のクオリティ #GlacierStyle",
    "posted_at": "2024-12-16T16:59:00+09:00",
    "likes": 1883,
    "retweets": 192,
    "replies": 45,
    "hashtags": [
      "カジュアル",
      "シンプルコーデ",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "耐熱ガラスポット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_095.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00002",
    "platform": "twitter",
    "post_type": "post",
    "username": "@tech_ryota",
    "display_name": "テック好きRyota",
    "content": "北欧インテリア図鑑を1ヶ月使ってみた感想📝 家族も気に入ってる おすすめ度は4点！ #グレイシャースタイル",
    "posted_at": "2024-12-16T17:17:00+09:00",
    "likes": 503,
    "retweets": 75,
    "replies": 74,
    "hashtags": [
      "北欧",
      "グレイシャースタイル",
      "北欧インテリア",
      "レビュー"
    ],
    "mentioned_products": [
      "北欧インテリア図鑑"
    ],
    "media_urls": [
      "https://example.com/img/review_002.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00047",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@interior_emi",
    "display_name": "Emiのインテリア日記",
    "content": "グレイシャースタイルのLED調光デスクライトとモダンデスクライトで悩み中…アドバイス求む！",
    "posted_at": "2024-12-16T17:49:00+09:00",
    "likes": 11,
    "retweets": 0,
    "replies": 31,
    "hashtags": [
      "ファッション",
      "部屋づくり",
      "グレイシャースタイル",
      "カジュアル",
      "インテリア"
    ],
    "mentioned_products": [
      "LED調光デスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00230",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@minimal_satoshi",
    "display_name": "ミニマリストSatoshi",
    "content": "ウォールシェルフがお気に入りすぎる🥰 毎日使うのが楽しみ #GlacierStyle",
    "posted_at": "2024-12-16T18:51:00+09:00",
    "likes": 1811,
    "retweets": 0,
    "replies": 75,
    "hashtags": [
      "休日の過ごし方",
      "部屋づくり",
      "暮らし",
      "グレイシャースタイル",
      "おうち時間"
    ],
    "mentioned_products": [
      "ウォールシェルフ"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00176",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@gadget_rina",
    "display_name": "ガジェットRina",
    "content": "グレイシャースタイルって送料いくらだっけ？モダンデスクライト買いたいんだけど",
    "posted_at": "2024-12-16T20:07:00+09:00",
    "likes": 130,
    "retweets": 0,
    "replies": 22,
    "hashtags": [
      "暮らし",
      "インテリア",
      "グレイシャースタイル",
      "GlacierStyle"
    ],
    "mentioned_products": [
      "モダンデスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00244",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@organic_haruka",
    "display_name": "オーガニックHaruka",
    "content": "グレイシャースタイルの吊り下げペンダントライト、他の色はありますか？",
    "posted_at": "2024-12-16T21:38:00+09:00",
    "likes": 4,
    "retweets": 0,
    "replies": 8,
    "hashtags": [],
    "mentioned_products": [
      "吊り下げペンダントライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00252",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@gift_nana",
    "display_name": "ギフト探しNana",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-92739141の件で問い合わせです。キャンセルは可能でしょうか",
    "posted_at": "2024-12-16T22:07:00+09:00",
    "likes": 20,
    "retweets": 0,
    "replies": 6,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00253",
    "platform": "twitter",
    "post_type": "reply",
    "username": "@GlacierStyle_JP",
    "display_name": "GlacierStyle公式",
    "content": "@@gift_nana お問い合わせありがとうございます。お手数ですが、詳細をDMでお送りください。担当者より折り返しご連絡いたします。",
    "posted_at": "2024-12-16T23:55:00+09:00",
    "likes": 20,
    "retweets": 0,
    "replies": 0,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00083",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@tech_satoshi",
    "display_name": "テック好きSatoshi",
    "content": "ワイヤレスイヤホンPro、在庫切れになってた…入荷いつかな",
    "posted_at": "2024-12-17T08:26:00+09:00",
    "likes": 44,
    "retweets": 0,
    "replies": 14,
    "hashtags": [
      "ガジェット",
      "グレイシャースタイル",
      "GlacierStyle"
    ],
    "mentioned_products": [
      "ワイヤレスイヤホンPro"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00136",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@minimal_rina",
    "display_name": "ミニマリストRina",
    "content": "セールでLED調光デスクライトをお得にゲット！ 毎日使うのが楽しみ #グレイシャースタイル #お買い得",
    "posted_at": "2024-12-17T12:39:00+09:00",
    "likes": 2456,
    "retweets": 0,
    "replies": 47,
    "hashtags": [
      "部屋づくり",
      "ネットショッピング",
      "暮らし",
      "グレイシャースタイル",
      "EC"
    ],
    "mentioned_products": [
      "LED調光デスクライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_136.jpg"
    ]
  },
  {
    "post_id": "SNS-TW-2024-00111",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@nordic_nana",
    "display_name": "北欧好きNana",
    "content": "@GlacierStyle_JP 注文番号ORD-2024-57830179の件で問い合わせです。返品の手続きについて教えてください",
    "posted_at": "2024-12-17T13:37:00+09:00",
    "likes": 29,
    "retweets": 0,
    "replies": 3,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00084",
    "platform": "twitter",
    "post_type": "post",
    "username": "@coffee_kazuki",
    "display_name": "コーヒー好きKazuki",
    "content": "グレイシャースタイルで彼氏への新築祝いプレゼント選び中💝 LED調光デスクライト良さそう！",
    "posted_at": "2024-12-17T15:50:00+09:00",
    "likes": 590,
    "retweets": 38,
    "replies": 25,
    "hashtags": [
      "部屋づくり",
      "購入品",
      "グレイシャースタイル",
      "インテリア",
      "お買い物",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "LED調光デスクライト"
    ],
    "media_urls": [
      "https://example.com/img/gift_084.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00200",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@office_hiroshi",
    "display_name": "オフィスワークHiroshi",
    "content": "念願の北欧インテリア図鑑が我が家に！ SNSで見て気になってた #新生活 #グレイシャースタイル",
    "posted_at": "2024-12-17T18:07:00+09:00",
    "likes": 1565,
    "retweets": 0,
    "replies": 10,
    "hashtags": [
      "ステイホーム",
      "休日の過ごし方",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "北欧インテリア図鑑"
    ],
    "media_urls": [
      "https://example.com/img/user_post_200.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00195",
    "platform": "instagram",
    "post_type": "story_mention",
    "username": "@modern_yuko",
    "display_name": "モダンリビングYuko",
    "content": "耐熱ガラスポットのおかげで家で過ごす時間が好きになった✨ グレイシャースタイル最高！",
    "posted_at": "2024-12-17T20:24:00+09:00",
    "likes": 956,
    "retweets": 0,
    "replies": 41,
    "hashtags": [
      "お買い物",
      "グレイシャースタイル",
      "ネットショッピング"
    ],
    "mentioned_products": [
      "耐熱ガラスポット"
    ],
    "media_urls": [
      "https://example.com/img/user_post_195.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00077",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@modern_sho",
    "display_name": "モダンリビングSho",
    "content": "耐熱ガラスポット、思ってたのと違った…返品できるかな",
    "posted_at": "2024-12-17T20:29:00+09:00",
    "likes": 80,
    "retweets": 0,
    "replies": 15,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00246",
    "platform": "twitter",
    "post_type": "post",
    "username": "@modern_kenji",
    "display_name": "モダンリビングKenji",
    "content": "【購入レビュー】プレミアムカシミヤセーター ⭐5\nデザインがシンプルで使いやすい #GlacierStyle",
    "posted_at": "2024-12-18T07:08:00+09:00",
    "likes": 323,
    "retweets": 178,
    "replies": 74,
    "hashtags": [
      "北欧好き",
      "ファッション",
      "グレイシャースタイル",
      "北欧インテリア",
      "レビュー"
    ],
    "mentioned_products": [
      "プレミアムカシミヤセーター"
    ],
    "media_urls": [
      "https://example.com/img/review_246.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00018",
    "platform": "instagram",
    "post_type": "post",
    "username": "@cozy_takeshi",
    "display_name": "コージーライフTakeshi",
    "content": "【レビュー】グレイシャースタイルのプレミアムカシミヤセーター使ってみた。\n\n良い点👍\n・梱包が丁寧\n・想像通りの色\n\n気になる点👎\n・色の選択肢が少ない\n\n総合: 4/5 #グレイシャースタイル #レビュー",
    "posted_at": "2024-12-18T08:19:00+09:00",
    "likes": 1402,
    "retweets": 0,
    "replies": 24,
    "hashtags": [
      "ホームオフィス",
      "シンプルコーデ",
      "デスク周り",
      "グレイシャースタイル",
      "レビュー"
    ],
    "mentioned_products": [
      "プレミアムカシミヤセーター"
    ],
    "media_urls": [
      "https://example.com/img/review_018.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00028",
    "platform": "instagram",
    "post_type": "post",
    "username": "@fashion_satoshi",
    "display_name": "ファッションSatoshi",
    "content": "デザインシーリングライトのおかげでリラックスできるようになった✨ グレイシャースタイル最高！",
    "posted_at": "2024-12-18T08:32:00+09:00",
    "likes": 1305,
    "retweets": 0,
    "replies": 51,
    "hashtags": [
      "シンプルライフ",
      "部屋づくり",
      "暮らし",
      "収納",
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "デザインシーリングライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_028.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00132",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@eco_taro",
    "display_name": "エコライフTaro",
    "content": "グレイシャースタイルで注文したスマートスピーカーがまだ届かない…どうなってるの？",
    "posted_at": "2024-12-18T12:30:00+09:00",
    "likes": 75,
    "retweets": 0,
    "replies": 3,
    "hashtags": [
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "スマートスピーカー"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00113",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@home_satoshi",
    "display_name": "Satoshiのマイホーム記録",
    "content": "グレイシャースタイルのセールっていつ始まる？吊り下げペンダントライト狙ってる",
    "posted_at": "2024-12-18T12:32:00+09:00",
    "likes": 54,
    "retweets": 0,
    "replies": 40,
    "hashtags": [
      "部屋づくり",
      "グレイシャースタイル",
      "間接照明",
      "ライト",
      "インテリア"
    ],
    "mentioned_products": [
      "吊り下げペンダントライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00166",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@lifestyle_emi",
    "display_name": "Emi｜暮らしを楽しむ",
    "content": "配送遅延でスタイリッシュデスクライトが届くの遅れてる。連絡もないし不安",
    "posted_at": "2024-12-18T16:31:00+09:00",
    "likes": 17,
    "retweets": 6,
    "replies": 12,
    "hashtags": [
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "スタイリッシュデスクライト"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-IG-2024-00129",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@fashion_megumi",
    "display_name": "ファッションMegumi",
    "content": "グレイシャースタイルのサイト、決済エラーが出るで困ってる😭",
    "posted_at": "2024-12-18T16:54:00+09:00",
    "likes": 49,
    "retweets": 0,
    "replies": 11,
    "hashtags": [
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "耐熱ガラスポット"
    ],
    "media_urls": [
      "https://example.com/img/issue_129.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00243",
    "platform": "instagram",
    "post_type": "mention",
    "username": "@eco_daiki",
    "display_name": "エコライフDaiki",
    "content": "スタイリッシュデスクライトが届いた！ 思ってた以上にクオリティ高くて大満足😊 #GlacierStyle #グレイシャースタイル",
    "posted_at": "2024-12-18T17:42:00+09:00",
    "likes": 1560,
    "retweets": 0,
    "replies": 57,
    "hashtags": [
      "インテリア",
      "部屋づくり",
      "グレイシャースタイル",
      "GlacierStyle"
    ],
    "mentioned_products": [
      "スタイリッシュデスクライト"
    ],
    "media_urls": [
      "https://example.com/img/user_post_243.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00245",
    "platform": "instagram",
    "post_type": "post",
    "username": "@room_rina",
    "display_name": "お部屋づくりRina",
    "content": "リネンシャツをギフトラッピングしてもらった🎀 家族も気に入ってる #グレイシャースタイル",
    "posted_at": "2024-12-18T19:10:00+09:00",
    "likes": 705,
    "retweets": 0,
    "replies": 28,
    "hashtags": [
      "インテリア",
      "ファッション",
      "丁寧な暮らし",
      "グレイシャースタイル",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "リネンシャツ"
    ],
    "media_urls": [
      "https://example.com/img/gift_245.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00041",
    "platform": "instagram",
    "post_type": "post",
    "username": "@design_megumi",
    "display_name": "デザイン好きMegumi",
    "content": "ずっと気になってた収納付きデスク、ついにゲット🎉 デザインがシンプルで使いやすい #グレイシャースタイル",
    "posted_at": "2024-12-18T19:27:00+09:00",
    "likes": 1229,
    "retweets": 0,
    "replies": 33,
    "hashtags": [
      "インテリア",
      "部屋づくり",
      "グレイシャースタイル",
      "GlacierStyle"
    ],
    "mentioned_products": [
      "収納付きデスク"
    ],
    "media_urls": [
      "https://example.com/img/user_post_041.jpg"
    ]
  },
  {
    "post_id": "SNS-IG-2024-00171",
    "platform": "instagram",
    "post_type": "post",
    "username": "@modern_mai",
    "display_name": "モダンリビングMai",
    "content": "グレイシャースタイルで彼氏への母の日プレゼント選び中💝 ワイヤレスイヤホンPro良さそう！",
    "posted_at": "2024-12-18T22:08:00+09:00",
    "likes": 510,
    "retweets": 0,
    "replies": 21,
    "hashtags": [
      "ガジェット",
      "整理整頓",
      "シンプルライフ",
      "グレイシャースタイル",
      "ギフト",
      "プレゼント"
    ],
    "mentioned_products": [
      "ワイヤレスイヤホンPro"
    ],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00172",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@interior_ryota",
    "display_name": "Ryotaのインテリア日記",
    "content": "@GlacierStyle_JP 吊り下げペンダントライトの色味について質問です。ギフトラッピングはできますか？",
    "posted_at": "2024-12-18T23:02:00+09:00",
    "likes": 18,
    "retweets": 0,
    "replies": 7,
    "hashtags": [],
    "mentioned_products": [],
    "media_urls": []
  },
  {
    "post_id": "SNS-TW-2024-00115",
    "platform": "twitter",
    "post_type": "mention",
    "username": "@minimal_daiki",
    "display_name": "ミニマリストDaiki",
    "content": "配送遅延で収納付きデスクが届くの遅れてる。連絡もないし不安",
    "posted_at": "2024-12-18T23:38:00+09:00",
    "likes": 38,
    "retweets": 3,
    "replies": 1,
    "hashtags": [
      "グレイシャースタイル"
    ],
    "mentioned_products": [
      "収納付きデスク"
    ],
    "media_urls": [
      "https://example.com/img/issue_115.jpg"
    ]
  }
]*
���� 3441419519b59580cf6659343db64844
�J
data/csv/daily_sales.csv�Isale_date,product_id,units_sold,sales_amount
2025-06-15,PROD-001,7,208600
2025-06-15,PROD-002,26,129480
2025-06-15,PROD-003,21,125580
2025-06-15,PROD-004,34,169320
2025-06-15,PROD-005,16,111680
2025-06-16,PROD-001,5,149000
2025-06-16,PROD-002,22,109560
2025-06-16,PROD-003,24,143520
2025-06-16,PROD-004,26,129480
2025-06-16,PROD-005,17,118660
2025-06-17,PROD-001,4,119200
2025-06-17,PROD-002,12,59760
2025-06-17,PROD-003,18,107640
2025-06-17,PROD-004,30,149400
2025-06-17,PROD-005,13,90740
2025-06-18,PROD-001,6,178800
2025-06-18,PROD-002,11,54780
2025-06-18,PROD-003,23,137540
2025-06-18,PROD-004,34,169320
2025-06-18,PROD-005,17,118660
2025-06-19,PROD-001,5,149000
2025-06-19,PROD-002,10,49800
2025-06-19,PROD-003,23,137540
2025-06-19,PROD-004,28,139440
2025-06-19,PROD-005,13,90740
2025-06-20,PROD-001,4,119200
2025-06-20,PROD-002,10,49800
2025-06-20,PROD-003,22,131560
2025-06-20,PROD-004,34,169320
2025-06-20,PROD-005,18,125640
2025-06-21,PROD-001,4,119200
2025-06-21,PROD-002,12,59760
2025-06-21,PROD-003,10,59800
2025-06-21,PROD-004,34,169320
2025-06-21,PROD-005,15,104700
2025-06-22,PROD-001,6,178800
2025-06-22,PROD-002,11,54780
2025-06-22,PROD-003,11,65780
2025-06-22,PROD-004,36,179280
2025-06-22,PROD-005,13,90740
2025-06-23,PROD-001,6,178800
2025-06-23,PROD-002,12,59760
2025-06-23,PROD-003,10,59800
2025-06-23,PROD-004,14,69720
2025-06-23,PROD-005,13,90740
2025-06-24,PROD-001,14,417200
2025-06-24,PROD-002,11,54780
2025-06-24,PROD-003,10,59800
2025-06-24,PROD-004,14,69720
2025-06-24,PROD-005,12,83760
2025-06-25,PROD-001,11,327800
2025-06-25,PROD-002,48,239040
2025-06-25,PROD-003,10,59800
2025-06-25,PROD-004,12,59760
2025-06-25,PROD-005,16,111680
2025-06-26,PROD-001,11,327800
2025-06-26,PROD-002,36,179280
2025-06-26,PROD-003,9,53820
2025-06-26,PROD-004,13,64740
2025-06-26,PROD-005,11,76780
2025-06-27,PROD-001,6,178800
2025-06-27,PROD-002,57,283860
2025-06-27,PROD-003,10,59800
2025-06-27,PROD-004,14,69720
2025-06-27,PROD-005,12,83760
2025-06-28,PROD-001,5,149000
2025-06-28,PROD-002,76,378480
2025-06-28,PROD-003,9,53820
2025-06-28,PROD-004,13,64740
2025-06-28,PROD-005,15,104700
2025-06-29,PROD-001,5,149000
2025-06-29,PROD-002,98,488040
2025-06-29,PROD-003,19,113620
2025-06-29,PROD-004,13,64740
2025-06-29,PROD-005,16,111680
2025-06-30,PROD-001,8,238400
2025-06-30,PROD-002,57,283860
2025-06-30,PROD-003,23,137540
2025-06-30,PROD-004,14,69720
2025-06-30,PROD-005,18,125640
2025-07-01,PROD-001,9,268200
2025-07-01,PROD-002,48,239040
2025-07-01,PROD-003,21,125580
2025-07-01,PROD-004,34,169320
2025-07-01,PROD-005,17,118660
2025-07-02,PROD-001,8,238400
2025-07-02,PROD-002,59,293820
2025-07-02,PROD-003,17,101660
2025-07-02,PROD-004,34,169320
2025-07-02,PROD-005,14,97720
2025-07-03,PROD-001,7,208600
2025-07-03,PROD-002,22,109560
2025-07-03,PROD-003,16,95680
2025-07-03,PROD-004,30,149400
2025-07-03,PROD-005,17,118660
2025-07-04,PROD-001,6,178800
2025-07-04,PROD-002,20,99600
2025-07-04,PROD-003,21,125580
2025-07-04,PROD-004,29,144420
2025-07-04,PROD-005,11,76780
2025-07-05,PROD-001,7,208600
2025-07-05,PROD-002,18,89640
2025-07-05,PROD-003,27,161460
2025-07-05,PROD-004,40,199200
2025-07-05,PROD-005,13,90740
2025-07-06,PROD-001,6,178800
2025-07-06,PROD-002,19,94620
2025-07-06,PROD-003,25,149500
2025-07-06,PROD-004,32,159360
2025-07-06,PROD-005,15,104700
2025-07-07,PROD-001,33,983400
2025-07-07,PROD-002,20,99600
2025-07-07,PROD-003,22,131560
2025-07-07,PROD-004,32,159360
2025-07-07,PROD-005,12,83760
2025-07-08,PROD-001,36,1072800
2025-07-08,PROD-002,18,89640
2025-07-08,PROD-003,21,125580
2025-07-08,PROD-004,32,159360
2025-07-08,PROD-005,18,125640
2025-07-09,PROD-001,33,983400
2025-07-09,PROD-002,15,74700
2025-07-09,PROD-003,35,209300
2025-07-09,PROD-004,33,164340
2025-07-09,PROD-005,12,83760
2025-07-10,PROD-001,16,476800
2025-07-10,PROD-002,14,69720
2025-07-10,PROD-003,75,448500
2025-07-10,PROD-004,27,134460
2025-07-10,PROD-005,13,90740
2025-07-11,PROD-001,17,506600
2025-07-11,PROD-002,29,144420
2025-07-11,PROD-003,85,508300
2025-07-11,PROD-004,26,129480
2025-07-11,PROD-005,11,76780
2025-07-12,PROD-001,9,268200
2025-07-12,PROD-002,36,179280
2025-07-12,PROD-003,90,538200
2025-07-12,PROD-004,39,194220
2025-07-12,PROD-005,19,132620
2025-07-13,PROD-001,13,387400
2025-07-13,PROD-002,37,184260
2025-07-13,PROD-003,80,478400
2025-07-13,PROD-004,40,199200
2025-07-13,PROD-005,22,153560
2025-07-14,PROD-001,12,357600
2025-07-14,PROD-002,14,69720
2025-07-14,PROD-003,56,334880
2025-07-14,PROD-004,37,184260
2025-07-14,PROD-005,15,104700
2025-07-15,PROD-001,15,447000
2025-07-15,PROD-002,15,74700
2025-07-15,PROD-003,53,316940
2025-07-15,PROD-004,35,174300
2025-07-15,PROD-005,16,111680
2025-07-16,PROD-001,13,387400
2025-07-16,PROD-002,16,79680
2025-07-16,PROD-003,68,406640
2025-07-16,PROD-004,33,164340
2025-07-16,PROD-005,16,111680
2025-07-17,PROD-001,9,268200
2025-07-17,PROD-002,14,69720
2025-07-17,PROD-003,66,394680
2025-07-17,PROD-004,39,194220
2025-07-17,PROD-005,20,139600
2025-07-18,PROD-001,15,447000
2025-07-18,PROD-002,15,74700
2025-07-18,PROD-003,37,221260
2025-07-18,PROD-004,35,174300
2025-07-18,PROD-005,19,132620
2025-07-19,PROD-001,16,476800
2025-07-19,PROD-002,16,79680
2025-07-19,PROD-003,58,346840
2025-07-19,PROD-004,44,219120
2025-07-19,PROD-005,20,139600
2025-07-20,PROD-001,16,476800
2025-07-20,PROD-002,15,74700
2025-07-20,PROD-003,44,263120
2025-07-20,PROD-004,30,149400
2025-07-20,PROD-005,19,132620
2025-07-21,PROD-001,9,268200
2025-07-21,PROD-002,14,69720
2025-07-21,PROD-003,29,173420
2025-07-21,PROD-004,28,139440
2025-07-21,PROD-005,15,104700
2025-07-22,PROD-001,12,357600
2025-07-22,PROD-002,29,144420
2025-07-22,PROD-003,30,179400
2025-07-22,PROD-004,32,159360
2025-07-22,PROD-005,19,132620
2025-07-23,PROD-001,10,298000
2025-07-23,PROD-002,32,159360
2025-07-23,PROD-003,24,143520
2025-07-23,PROD-004,29,144420
2025-07-23,PROD-005,20,139600
2025-07-24,PROD-001,14,417200
2025-07-24,PROD-002,36,179280
2025-07-24,PROD-003,27,161460
2025-07-24,PROD-004,30,149400
2025-07-24,PROD-005,21,146580
2025-07-25,PROD-001,9,268200
2025-07-25,PROD-002,31,154380
2025-07-25,PROD-003,27,161460
2025-07-25,PROD-004,28,139440
2025-07-25,PROD-005,20,139600
2025-07-26,PROD-001,16,476800
2025-07-26,PROD-002,37,184260
2025-07-26,PROD-003,30,179400
2025-07-26,PROD-004,29,144420
2025-07-26,PROD-005,21,146580
2025-07-27,PROD-001,14,417200
2025-07-27,PROD-002,39,194220
2025-07-27,PROD-003,26,155480
2025-07-27,PROD-004,65,323700
2025-07-27,PROD-005,18,125640
2025-07-28,PROD-001,15,447000
2025-07-28,PROD-002,32,159360
2025-07-28,PROD-003,29,173420
2025-07-28,PROD-004,130,647400
2025-07-28,PROD-005,15,104700
2025-07-29,PROD-001,17,506600
2025-07-29,PROD-002,34,169320
2025-07-29,PROD-003,30,179400
2025-07-29,PROD-004,140,697200
2025-07-29,PROD-005,23,160540
2025-07-30,PROD-001,17,506600
2025-07-30,PROD-002,28,139440
2025-07-30,PROD-003,26,155480
2025-07-30,PROD-004,135,672300
2025-07-30,PROD-005,16,111680
2025-07-31,PROD-001,8,238400
2025-07-31,PROD-002,34,169320
2025-07-31,PROD-003,20,119600
2025-07-31,PROD-004,70,348600
2025-07-31,PROD-005,12,83760
2025-08-01,PROD-001,12,357600
2025-08-01,PROD-002,27,134460
2025-08-01,PROD-003,25,149500
2025-08-01,PROD-004,49,244020
2025-08-01,PROD-005,13,90740
2025-08-02,PROD-001,18,536400
2025-08-02,PROD-002,34,169320
2025-08-02,PROD-003,31,185380
2025-08-02,PROD-004,38,189240
2025-08-02,PROD-005,14,97720
2025-08-03,PROD-001,13,387400
2025-08-03,PROD-002,40,199200
2025-08-03,PROD-003,27,161460
2025-08-03,PROD-004,46,229080
2025-08-03,PROD-005,15,104700
2025-08-04,PROD-001,16,476800
2025-08-04,PROD-002,29,144420
2025-08-04,PROD-003,21,125580
2025-08-04,PROD-004,40,199200
2025-08-04,PROD-005,13,90740
2025-08-05,PROD-001,15,447000
2025-08-05,PROD-002,26,129480
2025-08-05,PROD-003,24,143520
2025-08-05,PROD-004,37,184260
2025-08-05,PROD-005,12,83760
2025-08-06,PROD-001,10,298000
2025-08-06,PROD-002,29,144420
2025-08-06,PROD-003,10,59800
2025-08-06,PROD-004,36,179280
2025-08-06,PROD-005,11,76780
2025-08-07,PROD-001,10,298000
2025-08-07,PROD-002,30,149400
2025-08-07,PROD-003,9,53820
2025-08-07,PROD-004,37,184260
2025-08-07,PROD-005,13,90740
2025-08-08,PROD-001,25,745000
2025-08-08,PROD-002,29,144420
2025-08-08,PROD-003,10,59800
2025-08-08,PROD-004,35,174300
2025-08-08,PROD-005,12,83760
2025-08-09,PROD-001,21,625800
2025-08-09,PROD-002,32,159360
2025-08-09,PROD-003,11,65780
2025-08-09,PROD-004,45,224100
2025-08-09,PROD-005,11,76780
2025-08-10,PROD-001,15,447000
2025-08-10,PROD-002,37,184260
2025-08-10,PROD-003,10,59800
2025-08-10,PROD-004,38,189240
2025-08-10,PROD-005,18,125640
2025-08-11,PROD-001,15,447000
2025-08-11,PROD-002,27,134460
2025-08-11,PROD-003,9,53820
2025-08-11,PROD-004,33,164340
2025-08-11,PROD-005,17,118660
2025-08-12,PROD-001,21,625800
2025-08-12,PROD-002,31,154380
2025-08-12,PROD-003,9,53820
2025-08-12,PROD-004,79,393420
2025-08-12,PROD-005,17,118660
2025-08-13,PROD-001,18,536400
2025-08-13,PROD-002,34,169320
2025-08-13,PROD-003,10,59800
2025-08-13,PROD-004,55,273900
2025-08-13,PROD-005,19,132620
2025-08-14,PROD-001,8,238400
2025-08-14,PROD-002,34,169320
2025-08-14,PROD-003,22,131560
2025-08-14,PROD-004,89,443220
2025-08-14,PROD-005,20,139600
*
���� bc540f11eec5eb89d0776503dab488f8
��
data/csv/dim_products.csv��product_id,product_name,product_name_en,category_l1,category_l2,category_l3,brand,supplier_id,cost_price,list_price,current_price,stock_quantity,product_status,launch_date,description,weight_g,dimensions
PRD-INT-00001,スタイリッシュデスクライト,Modern Desk Light,インテリア,照明,デスクライト,GlacierStyle Original,SUP-00022,25420.62,81335.48,63709.77,113,discontinued,2020-09-16,スタイリッシュなデザインと機能性を両立したデスクライト。スタイリッシュデスクライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1980,W26×D17×H33cm
PRD-INT-00002,スタイリッシュデスクライト,Modern Desk Light,インテリア,照明,デスクライト,NordicHome Original,SUP-00037,8403.31,19406.36,15050.25,61,discontinued,2023-09-29,スタイリッシュなデザインと機能性を両立したデスクライト。スタイリッシュデスクライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1237,W10×D26×H20cm
PRD-INT-00003,モダンデスクライト,Compact Desk Lamp,インテリア,照明,デスクライト,GlacierStyle Original,SUP-00049,27250.39,63862.84,54364.54,394,active,2024-05-27,スタイリッシュなデザインと機能性を両立したデスクライト。モダンデスクライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1611,W22×D12×H31cm
PRD-INT-00004,LED調光デスクライト,Stylish Desk Light,インテリア,照明,デスクライト,MinimalSpace Original,SUP-00034,12136.71,41825.45,32543.18,159,active,2022-11-27,スタイリッシュなデザインと機能性を両立したデスクライト。LED調光デスクライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1123,W11×D25×H60cm
PRD-INT-00005,コンパクトデスクライト,Modern Desk Light,インテリア,照明,デスクライト,UrbanDecor Original,SUP-00046,24796.68,75111.58,58377.58,353,active,2020-06-20,スタイリッシュなデザインと機能性を両立したデスクライト。コンパクトデスクライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1888,W26×D29×H43cm
PRD-INT-00006,LED調光デスクライト,LED Dimmable Desk Lamp,インテリア,照明,デスクライト,MinimalSpace Original,SUP-00014,5314.65,18090.39,17773.99,443,active,2023-01-04,スタイリッシュなデザインと機能性を両立したデスクライト。LED調光デスクライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1818,W16×D20×H45cm
PRD-INT-00007,コンパクトデスクライト,Stylish Desk Light,インテリア,照明,デスクライト,UrbanDecor Original,SUP-00004,23887.37,71209.29,62890.43,53,active,2024-01-20,スタイリッシュなデザインと機能性を両立したデスクライト。コンパクトデスクライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,700,W14×D28×H39cm
PRD-INT-00008,スタイリッシュデスクライト,Modern Desk Light,インテリア,照明,デスクライト,MinimalSpace Original,SUP-00014,6988.24,20155.19,14587.38,441,discontinued,2021-12-07,スタイリッシュなデザインと機能性を両立したデスクライト。スタイリッシュデスクライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1477,W21×D13×H33cm
PRD-INT-00009,LED調光デスクライト,Stylish Desk Light,インテリア,照明,デスクライト,NordicHome Original,SUP-00024,21875.12,58449.75,54378.31,370,active,2020-11-26,スタイリッシュなデザインと機能性を両立したデスクライト。LED調光デスクライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1188,W11×D26×H20cm
PRD-INT-00010,モダンデスクライト,Stylish Desk Light,インテリア,照明,デスクライト,ModernLiving Original,SUP-00023,3590.23,8693.56,8371.95,97,active,2024-03-08,スタイリッシュなデザインと機能性を両立したデスクライト。モダンデスクライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,427,W17×D15×H28cm
PRD-INT-00011,モダンデスクライト,Compact Desk Lamp,インテリア,照明,デスクライト,MinimalSpace Original,SUP-00041,7464.86,17144.49,13347.02,271,active,2021-12-31,スタイリッシュなデザインと機能性を両立したデスクライト。モダンデスクライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,874,W30×D26×H42cm
PRD-INT-00012,コンパクトデスクライト,LED Dimmable Desk Lamp,インテリア,照明,デスクライト,ModernLiving Original,SUP-00041,3259.6,8348.13,7576.9,183,discontinued,2022-06-24,スタイリッシュなデザインと機能性を両立したデスクライト。コンパクトデスクライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,436,W30×D19×H59cm
PRD-INT-00013,モダンフロアライト,Standing Floor Lamp,インテリア,照明,フロアライト,MinimalSpace Original,SUP-00004,9947.7,23089.41,18295.1,21,active,2022-01-12,スタイリッシュなデザインと機能性を両立したフロアライト。モダンフロアライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1684,W23×D30×H54cm
PRD-INT-00014,北欧風フロアライト,Ambient Floor Lamp,インテリア,照明,フロアライト,GlacierStyle Original,SUP-00042,25475.47,55109.71,46012.52,197,active,2020-12-10,スタイリッシュなデザインと機能性を両立したフロアライト。北欧風フロアライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,300,W24×D25×H27cm
PRD-INT-00015,モダンフロアライト,Ambient Floor Lamp,インテリア,照明,フロアライト,MinimalSpace Original,SUP-00019,3322.91,6971.73,5532.39,158,active,2022-06-15,スタイリッシュなデザインと機能性を両立したフロアライト。モダンフロアライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1394,W30×D10×H21cm
PRD-INT-00016,スタンディングフロアライト,Standing Floor Lamp,インテリア,照明,フロアライト,UrbanDecor Original,SUP-00018,13570.35,44703.74,39911.92,133,active,2022-02-20,スタイリッシュなデザインと機能性を両立したフロアライト。スタンディングフロアライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,465,W23×D26×H54cm
PRD-INT-00017,北欧風フロアライト,Nordic Floor Light,インテリア,照明,フロアライト,NordicHome Original,SUP-00002,15584.34,34681.86,34242.33,287,active,2023-05-14,スタイリッシュなデザインと機能性を両立したフロアライト。北欧風フロアライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,909,W30×D11×H45cm
PRD-INT-00018,北欧風フロアライト,Modern Floor Light,インテリア,照明,フロアライト,ModernLiving Original,SUP-00047,23697.96,69948.3,52206.6,192,active,2021-12-07,スタイリッシュなデザインと機能性を両立したフロアライト。北欧風フロアライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1224,W26×D14×H45cm
PRD-INT-00019,間接照明フロアライト,Standing Floor Lamp,インテリア,照明,フロアライト,NordicHome Original,SUP-00020,8933.75,18740.16,15472.13,355,discontinued,2020-06-28,スタイリッシュなデザインと機能性を両立したフロアライト。間接照明フロアライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1882,W16×D26×H22cm
PRD-INT-00020,北欧風フロアライト,Nordic Floor Light,インテリア,照明,フロアライト,GlacierStyle Original,SUP-00050,11989.33,34581.87,26078.4,427,active,2020-06-21,スタイリッシュなデザインと機能性を両立したフロアライト。北欧風フロアライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1731,W23×D16×H51cm
PRD-INT-00021,北欧風フロアライト,Standing Floor Lamp,インテリア,照明,フロアライト,NordicHome Original,SUP-00005,5927.05,14621.93,12263.34,316,discontinued,2023-05-08,スタイリッシュなデザインと機能性を両立したフロアライト。北欧風フロアライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1320,W11×D11×H31cm
PRD-INT-00022,北欧風フロアライト,Nordic Floor Light,インテリア,照明,フロアライト,MinimalSpace Original,SUP-00008,15335.74,37148.68,35638.53,301,discontinued,2023-03-04,スタイリッシュなデザインと機能性を両立したフロアライト。北欧風フロアライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,475,W22×D16×H20cm
PRD-INT-00023,間接照明フロアライト,Standing Floor Lamp,インテリア,照明,フロアライト,NordicHome Original,SUP-00029,27937.4,96883.36,73450.53,12,active,2024-03-28,スタイリッシュなデザインと機能性を両立したフロアライト。間接照明フロアライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1277,W21×D13×H48cm
PRD-INT-00024,モダンフロアライト,Nordic Floor Light,インテリア,照明,フロアライト,MinimalSpace Original,SUP-00003,16158.44,55937.23,41306.06,320,discontinued,2020-12-07,スタイリッシュなデザインと機能性を両立したフロアライト。モダンフロアライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,578,W15×D17×H29cm
PRD-INT-00025,デザインシーリングライト,Dimmable Ceiling Light,インテリア,照明,シーリングライト,UrbanDecor Original,SUP-00022,11431.66,30402.98,21388.69,38,active,2022-06-10,スタイリッシュなデザインと機能性を両立したシーリングライト。デザインシーリングライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1338,W22×D29×H37cm
PRD-INT-00026,調光調色シーリングライト,Design Ceiling Light,インテリア,照明,シーリングライト,MinimalSpace Original,SUP-00049,13425.8,44694.48,32689.67,29,active,2023-06-04,スタイリッシュなデザインと機能性を両立したシーリングライト。調光調色シーリングライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1641,W29×D20×H25cm
PRD-INT-00027,デザインシーリングライト,Dimmable Ceiling Light,インテリア,照明,シーリングライト,NordicHome Original,SUP-00043,1346.52,3075.09,2586.64,247,discontinued,2024-04-09,スタイリッシュなデザインと機能性を両立したシーリングライト。デザインシーリングライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1614,W10×D26×H32cm
PRD-INT-00028,調光調色シーリングライト,Dimmable Ceiling Light,インテリア,照明,シーリングライト,MinimalSpace Original,SUP-00039,9876.77,22186.99,16794.51,104,active,2023-04-09,スタイリッシュなデザインと機能性を両立したシーリングライト。調光調色シーリングライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1532,W29×D26×H40cm
PRD-INT-00029,調光調色シーリングライト,Remote Control Ceiling Light,インテリア,照明,シーリングライト,GlacierStyle Original,SUP-00009,23585.54,65152.16,58878.44,175,active,2022-11-05,スタイリッシュなデザインと機能性を両立したシーリングライト。調光調色シーリングライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1871,W13×D11×H25cm
PRD-INT-00030,LEDシーリングライト,Dimmable Ceiling Light,インテリア,照明,シーリングライト,ModernLiving Original,SUP-00018,29057.17,97863.59,71397.3,8,active,2022-03-05,スタイリッシュなデザインと機能性を両立したシーリングライト。LEDシーリングライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1910,W30×D28×H32cm
PRD-INT-00031,デザインシーリングライト,Remote Control Ceiling Light,インテリア,照明,シーリングライト,MinimalSpace Original,SUP-00034,11718.4,40999.37,39078.72,10,active,2020-08-31,スタイリッシュなデザインと機能性を両立したシーリングライト。デザインシーリングライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1460,W26×D19×H23cm
PRD-INT-00032,リモコン付きシーリングライト,Design Ceiling Light,インテリア,照明,シーリングライト,UrbanDecor Original,SUP-00037,1975.27,5278.02,5121.6,112,discontinued,2024-11-30,スタイリッシュなデザインと機能性を両立したシーリングライト。リモコン付きシーリングライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,960,W19×D12×H25cm
PRD-INT-00033,デザインシーリングライト,Remote Control Ceiling Light,インテリア,照明,シーリングライト,ModernLiving Original,SUP-00026,11497.06,39790.84,28417.87,374,discontinued,2023-02-07,スタイリッシュなデザインと機能性を両立したシーリングライト。デザインシーリングライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1043,W24×D16×H49cm
PRD-INT-00034,リモコン付きシーリングライト,Design Ceiling Light,インテリア,照明,シーリングライト,NordicHome Original,SUP-00006,21480.94,47384.76,34040.08,421,active,2021-07-02,スタイリッシュなデザインと機能性を両立したシーリングライト。リモコン付きシーリングライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,411,W18×D10×H53cm
PRD-INT-00035,デザインシーリングライト,LED Ceiling Light,インテリア,照明,シーリングライト,GlacierStyle Original,SUP-00017,29723.99,68062.79,51215.12,119,discontinued,2022-04-28,スタイリッシュなデザインと機能性を両立したシーリングライト。デザインシーリングライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1599,W27×D16×H34cm
PRD-INT-00036,デザインシーリングライト,Design Ceiling Light,インテリア,照明,シーリングライト,MinimalSpace Original,SUP-00010,16726.36,40271.37,32868.1,352,discontinued,2024-11-03,スタイリッシュなデザインと機能性を両立したシーリングライト。デザインシーリングライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1444,W16×D11×H21cm
PRD-INT-00037,吊り下げペンダントライト,Glass Pendant Lamp,インテリア,照明,ペンダントライト,UrbanDecor Original,SUP-00032,27967.35,71500.64,57590.22,379,active,2022-07-04,スタイリッシュなデザインと機能性を両立したペンダントライト。吊り下げペンダントライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,762,W22×D28×H24cm
PRD-INT-00038,北欧風ペンダントライト,Nordic Pendant Light,インテリア,照明,ペンダントライト,MinimalSpace Original,SUP-00024,8353.85,22084.52,20856.19,172,active,2021-02-06,スタイリッシュなデザインと機能性を両立したペンダントライト。北欧風ペンダントライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,998,W30×D28×H21cm
PRD-INT-00039,北欧風ペンダントライト,Glass Pendant Lamp,インテリア,照明,ペンダントライト,GlacierStyle Original,SUP-00020,9228.61,28999.61,20740.79,447,active,2021-07-14,スタイリッシュなデザインと機能性を両立したペンダントライト。北欧風ペンダントライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1424,W26×D11×H30cm
PRD-INT-00040,モダンペンダントライト,Nordic Pendant Light,インテリア,照明,ペンダントライト,UrbanDecor Original,SUP-00011,3552.41,9704.08,7507.58,418,active,2024-04-18,スタイリッシュなデザインと機能性を両立したペンダントライト。モダンペンダントライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,361,W11×D14×H48cm
PRD-INT-00041,吊り下げペンダントライト,Glass Pendant Lamp,インテリア,照明,ペンダントライト,UrbanDecor Original,SUP-00016,11182.67,28289.19,20520.88,391,active,2022-04-12,スタイリッシュなデザインと機能性を両立したペンダントライト。吊り下げペンダントライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,586,W18×D15×H48cm
PRD-INT-00042,ガラスペンダントライト,Nordic Pendant Light,インテリア,照明,ペンダントライト,NordicHome Original,SUP-00012,26679.11,78778.17,57709.38,233,active,2023-11-01,スタイリッシュなデザインと機能性を両立したペンダントライト。ガラスペンダントライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,579,W28×D29×H48cm
PRD-INT-00043,北欧風ペンダントライト,Modern Pendant Light,インテリア,照明,ペンダントライト,ModernLiving Original,SUP-00010,25821.81,76070.43,69112.58,342,active,2021-02-19,スタイリッシュなデザインと機能性を両立したペンダントライト。北欧風ペンダントライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1714,W18×D13×H35cm
PRD-INT-00044,ガラスペンダントライト,Nordic Pendant Light,インテリア,照明,ペンダントライト,UrbanDecor Original,SUP-00004,23725.03,71193.62,66806.28,350,active,2024-07-11,スタイリッシュなデザインと機能性を両立したペンダントライト。ガラスペンダントライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1209,W12×D28×H31cm
PRD-INT-00045,ガラスペンダントライト,Nordic Pendant Light,インテリア,照明,ペンダントライト,NordicHome Original,SUP-00002,15749.59,32723.04,27033.15,230,active,2023-11-11,スタイリッシュなデザインと機能性を両立したペンダントライト。ガラスペンダントライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1643,W24×D13×H27cm
PRD-INT-00046,ガラスペンダントライト,Nordic Pendant Light,インテリア,照明,ペンダントライト,MinimalSpace Original,SUP-00005,29050.69,88664.49,69451.5,85,discontinued,2023-06-27,スタイリッシュなデザインと機能性を両立したペンダントライト。ガラスペンダントライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,809,W29×D12×H32cm
PRD-INT-00047,吊り下げペンダントライト,Hanging Pendant Light,インテリア,照明,ペンダントライト,UrbanDecor Original,SUP-00049,19745.74,51962.35,44135.87,140,active,2022-07-22,スタイリッシュなデザインと機能性を両立したペンダントライト。吊り下げペンダントライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1719,W29×D12×H44cm
PRD-INT-00048,北欧風ペンダントライト,Nordic Pendant Light,インテリア,照明,ペンダントライト,GlacierStyle Original,SUP-00028,2533.66,6681.71,5411.34,475,active,2024-03-22,スタイリッシュなデザインと機能性を両立したペンダントライト。北欧風ペンダントライトは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,799,W24×D18×H57cm
PRD-INT-00049,収納付きデスク,L-Shaped Desk,インテリア,家具,デスク,NordicHome Original,SUP-00016,16110.09,42176.6,41093.07,82,active,2021-09-12,スタイリッシュなデザインと機能性を両立したデスク。収納付きデスクは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,20138,W139×D61×H75cm
PRD-INT-00050,L字型デスク,Standing Desk,インテリア,家具,デスク,GlacierStyle Original,SUP-00037,26645.96,91565.8,82772.15,137,active,2022-10-04,スタイリッシュなデザインと機能性を両立したデスク。L字型デスクは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,33314,W164×D82×H72cm
PRD-INT-00051,L字型デスク,Simple Desk,インテリア,家具,デスク,NordicHome Original,SUP-00002,23650.61,53710.39,46411.33,195,active,2020-10-23,スタイリッシュなデザインと機能性を両立したデスク。L字型デスクは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,27403,W84×D52×H72cm
PRD-INT-00052,L字型デスク,Desk with Storage,インテリア,家具,デスク,UrbanDecor Original,SUP-00015,15648.36,38242.57,35253.96,389,discontinued,2024-05-19,スタイリッシュなデザインと機能性を両立したデスク。L字型デスクは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,17709,W127×D85×H73cm
PRD-INT-00053,スタンディングデスク,Simple Desk,インテリア,家具,デスク,ModernLiving Original,SUP-00041,17615.15,52954.4,49703.62,222,active,2020-07-27,スタイリッシュなデザインと機能性を両立したデスク。スタンディングデスクは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,20451,W96×D88×H75cm
PRD-INT-00054,シンプルデスク,Standing Desk,インテリア,家具,デスク,NordicHome Original,SUP-00043,29334.14,94892.45,83446.06,12,active,2020-11-29,スタイリッシュなデザインと機能性を両立したデスク。シンプルデスクは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,37899,W139×D77×H70cm
PRD-INT-00055,シンプルデスク,L-Shaped Desk,インテリア,家具,デスク,UrbanDecor Original,SUP-00025,2706.82,6136.86,6032.25,202,active,2023-07-06,スタイリッシュなデザインと機能性を両立したデスク。シンプルデスクは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,38693,W125×D81×H71cm
PRD-INT-00056,スタンディングデスク,L-Shaped Desk,インテリア,家具,デスク,MinimalSpace Original,SUP-00030,9800.61,21835.6,17820.3,387,discontinued,2024-06-13,スタイリッシュなデザインと機能性を両立したデスク。スタンディングデスクは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,34803,W111×D67×H74cm
PRD-INT-00057,シンプルデスク,Desk with Storage,インテリア,家具,デスク,UrbanDecor Original,SUP-00024,8559.06,18669.22,18047.06,330,active,2021-10-23,スタイリッシュなデザインと機能性を両立したデスク。シンプルデスクは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,28429,W154×D69×H73cm
PRD-INT-00058,スタンディングデスク,Standing Desk,インテリア,家具,デスク,NordicHome Original,SUP-00050,21036.16,72260.03,53637.4,104,active,2023-01-31,スタイリッシュなデザインと機能性を両立したデスク。スタンディングデスクは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,38946,W81×D74×H75cm
PRD-INT-00059,スタンディングデスク,Simple Desk,インテリア,家具,デスク,UrbanDecor Original,SUP-00026,20084.44,46812.45,42289.98,94,active,2020-05-25,スタイリッシュなデザインと機能性を両立したデスク。スタンディングデスクは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,22587,W98×D68×H75cm
PRD-INT-00060,シンプルデスク,Simple Desk,インテリア,家具,デスク,NordicHome Original,SUP-00003,13282.47,34806.13,29235.73,104,discontinued,2023-11-14,スタイリッシュなデザインと機能性を両立したデスク。シンプルデスクは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,21769,W169×D71×H70cm
PRD-INT-00061,オフィスチェア,Ergonomic Chair,インテリア,家具,チェア,MinimalSpace Original,SUP-00037,26817.18,84755.78,66205.19,146,discontinued,2021-11-19,スタイリッシュなデザインと機能性を両立したチェア。オフィスチェアは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,12036,W65×D42×H112cm
PRD-INT-00062,ダイニングチェア,Ergonomic Chair,インテリア,家具,チェア,MinimalSpace Original,SUP-00011,19580.76,44643.85,37646.64,193,active,2022-03-09,スタイリッシュなデザインと機能性を両立したチェア。ダイニングチェアは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,8264,W58×D64×H118cm
PRD-INT-00063,ダイニングチェア,Gaming Chair,インテリア,家具,チェア,ModernLiving Original,SUP-00023,21284.48,65043.5,51958.49,366,active,2021-02-21,スタイリッシュなデザインと機能性を両立したチェア。ダイニングチェアは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,8799,W53×D54×H100cm
PRD-INT-00064,ゲーミングチェア,Office Chair,インテリア,家具,チェア,NordicHome Original,SUP-00013,20431.13,67987.53,59492.62,102,active,2022-01-16,スタイリッシュなデザインと機能性を両立したチェア。ゲーミングチェアは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,12414,W55×D69×H100cm
PRD-INT-00065,オフィスチェア,Ergonomic Chair,インテリア,家具,チェア,ModernLiving Original,SUP-00007,19381.77,51037.48,38691.79,56,active,2022-07-30,スタイリッシュなデザインと機能性を両立したチェア。オフィスチェアは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,14511,W52×D56×H120cm
PRD-INT-00066,エルゴノミクスチェア,Gaming Chair,インテリア,家具,チェア,NordicHome Original,SUP-00031,18843.13,64005.04,60469.49,82,active,2021-11-16,スタイリッシュなデザインと機能性を両立したチェア。エルゴノミクスチェアは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,8393,W48×D54×H99cm
PRD-INT-00067,ダイニングチェア,Gaming Chair,インテリア,家具,チェア,MinimalSpace Original,SUP-00008,9113.24,28755.64,20628.37,219,active,2021-12-02,スタイリッシュなデザインと機能性を両立したチェア。ダイニングチェアは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,10297,W70×D62×H118cm
PRD-INT-00068,オフィスチェア,Dining Chair,インテリア,家具,チェア,ModernLiving Original,SUP-00050,9309.36,20475.99,16856.58,355,active,2020-04-12,スタイリッシュなデザインと機能性を両立したチェア。オフィスチェアは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,12141,W57×D45×H108cm
PRD-INT-00069,オフィスチェア,Ergonomic Chair,インテリア,家具,チェア,NordicHome Original,SUP-00038,29388.64,86861.61,75091.67,326,active,2020-09-06,スタイリッシュなデザインと機能性を両立したチェア。オフィスチェアは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,9043,W64×D62×H97cm
PRD-INT-00070,エルゴノミクスチェア,Gaming Chair,インテリア,家具,チェア,ModernLiving Original,SUP-00014,1660.95,5389.39,4621.78,167,active,2021-02-09,スタイリッシュなデザインと機能性を両立したチェア。エルゴノミクスチェアは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,8256,W70×D48×H96cm
PRD-INT-00071,ゲーミングチェア,Office Chair,インテリア,家具,チェア,GlacierStyle Original,SUP-00012,23703.95,75695.51,58147.26,103,active,2022-12-20,スタイリッシュなデザインと機能性を両立したチェア。ゲーミングチェアは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,12419,W45×D70×H111cm
PRD-INT-00072,エルゴノミクスチェア,Gaming Chair,インテリア,家具,チェア,ModernLiving Original,SUP-00010,8771.93,23381.72,19097.99,287,active,2021-05-15,スタイリッシュなデザインと機能性を両立したチェア。エルゴノミクスチェアは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,13698,W55×D70×H112cm
PRD-INT-00073,ディスプレイラック,Stacking Shelf,インテリア,家具,収納棚,GlacierStyle Original,SUP-00034,28096.7,79283.05,74524.71,311,active,2020-08-10,スタイリッシュなデザインと機能性を両立した収納棚。ディスプレイラックは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,3444,W36×D29×H45cm
PRD-INT-00074,ブックシェルフ,Bookshelf,インテリア,家具,収納棚,GlacierStyle Original,SUP-00004,28201.56,79781.26,73774.73,484,discontinued,2024-12-25,スタイリッシュなデザインと機能性を両立した収納棚。ブックシェルフは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1374,W23×D35×H39cm
PRD-INT-00075,ブックシェルフ,Bookshelf,インテリア,家具,収納棚,UrbanDecor Original,SUP-00038,10442.72,32422.67,24471.12,61,discontinued,2021-07-26,スタイリッシュなデザインと機能性を両立した収納棚。ブックシェルフは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4907,W22×D30×H28cm
PRD-INT-00076,ディスプレイラック,Stacking Shelf,インテリア,家具,収納棚,UrbanDecor Original,SUP-00015,6247.43,18354.09,16309.94,84,discontinued,2024-10-13,スタイリッシュなデザインと機能性を両立した収納棚。ディスプレイラックは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4603,W38×D23×H36cm
PRD-INT-00077,ディスプレイラック,Display Rack,インテリア,家具,収納棚,ModernLiving Original,SUP-00001,1721.48,5451.28,4912.97,433,discontinued,2021-11-05,スタイリッシュなデザインと機能性を両立した収納棚。ディスプレイラックは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2299,W40×D35×H63cm
PRD-INT-00078,オープンシェルフ,Bookshelf,インテリア,家具,収納棚,UrbanDecor Original,SUP-00050,10594.96,34220.56,32676.44,453,active,2023-03-30,スタイリッシュなデザインと機能性を両立した収納棚。オープンシェルフは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2880,W41×D34×H54cm
PRD-INT-00079,オープンシェルフ,Display Rack,インテリア,家具,収納棚,UrbanDecor Original,SUP-00008,28564.98,90138.97,65001.56,440,active,2021-04-12,スタイリッシュなデザインと機能性を両立した収納棚。オープンシェルフは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1632,W31×D31×H61cm
PRD-INT-00080,ディスプレイラック,Display Rack,インテリア,家具,収納棚,NordicHome Original,SUP-00034,9894.49,23173.06,19915.12,312,discontinued,2024-08-12,スタイリッシュなデザインと機能性を両立した収納棚。ディスプレイラックは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2900,W29×D38×H70cm
PRD-INT-00081,オープンシェルフ,Stacking Shelf,インテリア,家具,収納棚,UrbanDecor Original,SUP-00011,26541.49,86123.42,66739.17,496,active,2024-03-12,スタイリッシュなデザインと機能性を両立した収納棚。オープンシェルフは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,3475,W29×D34×H57cm
PRD-INT-00082,オープンシェルフ,Open Shelf,インテリア,家具,収納棚,NordicHome Original,SUP-00018,11083.15,36572.03,32755.04,360,active,2021-07-29,スタイリッシュなデザインと機能性を両立した収納棚。オープンシェルフは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4911,W38×D34×H71cm
PRD-INT-00083,ディスプレイラック,Stacking Shelf,インテリア,家具,収納棚,GlacierStyle Original,SUP-00013,7801.99,26565.55,25108.17,397,active,2024-03-10,スタイリッシュなデザインと機能性を両立した収納棚。ディスプレイラックは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2660,W29×D19×H60cm
PRD-INT-00084,ブックシェルフ,Display Rack,インテリア,家具,収納棚,NordicHome Original,SUP-00005,26007.95,78131.26,72155.82,4,active,2020-05-30,スタイリッシュなデザインと機能性を両立した収納棚。ブックシェルフは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1091,W21×D29×H66cm
PRD-INT-00085,折りたたみテーブル,Folding Table,インテリア,家具,テーブル,MinimalSpace Original,SUP-00026,18628.12,44244.33,43151.45,166,discontinued,2022-12-14,スタイリッシュなデザインと機能性を両立したテーブル。折りたたみテーブルは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,22822,W159×D68×H73cm
PRD-INT-00086,ダイニングテーブル,Folding Table,インテリア,家具,テーブル,GlacierStyle Original,SUP-00028,19800.08,68534.84,54626.98,21,active,2021-06-25,スタイリッシュなデザインと機能性を両立したテーブル。ダイニングテーブルは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,26198,W92×D84×H73cm
PRD-INT-00087,折りたたみテーブル,Folding Table,インテリア,家具,テーブル,NordicHome Original,SUP-00028,22044.88,55340.6,40699.67,474,discontinued,2021-07-16,スタイリッシュなデザインと機能性を両立したテーブル。折りたたみテーブルは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,21676,W140×D66×H70cm
PRD-INT-00088,ダイニングテーブル,Coffee Table,インテリア,家具,テーブル,UrbanDecor Original,SUP-00010,6115.27,20681.97,17431.76,126,active,2022-03-05,スタイリッシュなデザインと機能性を両立したテーブル。ダイニングテーブルは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,33682,W143×D68×H74cm
PRD-INT-00089,ダイニングテーブル,Coffee Table,インテリア,家具,テーブル,ModernLiving Original,SUP-00044,3416.63,11819.59,9770.02,109,active,2020-09-17,スタイリッシュなデザインと機能性を両立したテーブル。ダイニングテーブルは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,27301,W87×D85×H74cm
PRD-INT-00090,折りたたみテーブル,Dining Table,インテリア,家具,テーブル,UrbanDecor Original,SUP-00006,14996.39,48838.77,46513.21,144,discontinued,2020-04-29,スタイリッシュなデザインと機能性を両立したテーブル。折りたたみテーブルは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,21551,W105×D58×H75cm
PRD-INT-00091,折りたたみテーブル,Coffee Table,インテリア,家具,テーブル,ModernLiving Original,SUP-00036,5042.94,17048.93,17042.09,27,active,2024-01-14,スタイリッシュなデザインと機能性を両立したテーブル。折りたたみテーブルは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,18919,W128×D90×H70cm
PRD-INT-00092,ダイニングテーブル,Dining Table,インテリア,家具,テーブル,GlacierStyle Original,SUP-00019,14800.02,33462.59,23542.41,173,active,2024-05-12,スタイリッシュなデザインと機能性を両立したテーブル。ダイニングテーブルは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,24248,W129×D56×H73cm
PRD-INT-00093,ダイニングテーブル,Dining Table,インテリア,家具,テーブル,GlacierStyle Original,SUP-00035,3780.3,11728.53,10302.31,252,active,2022-08-23,スタイリッシュなデザインと機能性を両立したテーブル。ダイニングテーブルは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,18284,W159×D57×H73cm
PRD-INT-00094,ダイニングテーブル,Side Table,インテリア,家具,テーブル,NordicHome Original,SUP-00022,29632.85,83354.94,74782.98,440,active,2021-12-21,スタイリッシュなデザインと機能性を両立したテーブル。ダイニングテーブルは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,25664,W98×D83×H75cm
PRD-INT-00095,ダイニングテーブル,Dining Table,インテリア,家具,テーブル,GlacierStyle Original,SUP-00029,24039.99,58957.21,50086.82,380,discontinued,2024-12-07,スタイリッシュなデザインと機能性を両立したテーブル。ダイニングテーブルは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,15189,W160×D87×H75cm
PRD-INT-00096,コーヒーテーブル,Side Table,インテリア,家具,テーブル,GlacierStyle Original,SUP-00037,26534.3,80710.2,70751.16,370,active,2020-04-01,スタイリッシュなデザインと機能性を両立したテーブル。コーヒーテーブルは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,27607,W171×D82×H70cm
PRD-INT-00097,振り子時計,Wall Clock,インテリア,装飾品,時計,GlacierStyle Original,SUP-00031,9645.93,25798.31,20124.08,122,discontinued,2021-06-03,スタイリッシュなデザインと機能性を両立した時計。振り子時計は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2844,W34×D33×H52cm
PRD-INT-00098,壁掛け時計,Digital Clock,インテリア,装飾品,時計,NordicHome Original,SUP-00040,27759.21,61756.75,59901.46,310,active,2022-01-19,スタイリッシュなデザインと機能性を両立した時計。壁掛け時計は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1046,W48×D31×H80cm
PRD-INT-00099,置き時計,Pendulum Clock,インテリア,装飾品,時計,NordicHome Original,SUP-00033,28895.61,84844.72,73139.65,185,active,2023-03-26,スタイリッシュなデザインと機能性を両立した時計。置き時計は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2505,W46×D36×H52cm
PRD-INT-00100,振り子時計,Desk Clock,インテリア,装飾品,時計,NordicHome Original,SUP-00009,7559.42,26183.72,19742.83,45,active,2022-04-23,スタイリッシュなデザインと機能性を両立した時計。振り子時計は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,3578,W45×D24×H56cm
PRD-INT-00101,置き時計,Desk Clock,インテリア,装飾品,時計,NordicHome Original,SUP-00010,14650.31,39906.68,31267.85,220,active,2024-07-06,スタイリッシュなデザインと機能性を両立した時計。置き時計は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2999,W28×D16×H29cm
PRD-INT-00102,置き時計,Desk Clock,インテリア,装飾品,時計,GlacierStyle Original,SUP-00007,27169.78,84427.86,81421.03,379,active,2021-03-15,スタイリッシュなデザインと機能性を両立した時計。置き時計は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,763,W35×D35×H77cm
PRD-INT-00103,デジタル時計,Digital Clock,インテリア,装飾品,時計,MinimalSpace Original,SUP-00050,9576.27,24676.22,24602.17,145,discontinued,2022-02-05,スタイリッシュなデザインと機能性を両立した時計。デジタル時計は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4184,W48×D39×H28cm
PRD-INT-00104,振り子時計,Pendulum Clock,インテリア,装飾品,時計,UrbanDecor Original,SUP-00017,29553.31,85134.41,61608.24,14,active,2020-03-10,スタイリッシュなデザインと機能性を両立した時計。振り子時計は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2389,W22×D17×H67cm
PRD-INT-00105,壁掛け時計,Pendulum Clock,インテリア,装飾品,時計,UrbanDecor Original,SUP-00018,7379.45,18529.43,18514.26,32,active,2022-09-10,スタイリッシュなデザインと機能性を両立した時計。壁掛け時計は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2813,W31×D27×H22cm
PRD-INT-00106,壁掛け時計,Pendulum Clock,インテリア,装飾品,時計,NordicHome Original,SUP-00018,14090.48,45992.15,44901.29,299,active,2020-07-07,スタイリッシュなデザインと機能性を両立した時計。壁掛け時計は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4675,W27×D25×H68cm
PRD-INT-00107,壁掛け時計,Digital Clock,インテリア,装飾品,時計,UrbanDecor Original,SUP-00019,22582.42,67167.61,60650.41,361,active,2021-02-12,スタイリッシュなデザインと機能性を両立した時計。壁掛け時計は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,3856,W34×D36×H49cm
PRD-INT-00108,置き時計,Pendulum Clock,インテリア,装飾品,時計,MinimalSpace Original,SUP-00016,24163.86,77478.47,60064.22,282,active,2021-11-27,スタイリッシュなデザインと機能性を両立した時計。置き時計は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4906,W42×D36×H77cm
PRD-INT-00109,モダン花瓶,Ceramic Vase,インテリア,装飾品,花瓶,MinimalSpace Original,SUP-00028,23437.89,79804.49,79788.0,73,active,2021-05-25,スタイリッシュなデザインと機能性を両立した花瓶。モダン花瓶は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1300,W48×D30×H71cm
PRD-INT-00110,モダン花瓶,Antique Vase,インテリア,装飾品,花瓶,MinimalSpace Original,SUP-00033,11164.85,34596.96,27788.53,85,active,2020-09-08,スタイリッシュなデザインと機能性を両立した花瓶。モダン花瓶は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4781,W31×D22×H46cm
PRD-INT-00111,ガラス花瓶,Glass Vase,インテリア,装飾品,花瓶,GlacierStyle Original,SUP-00005,21208.5,64624.92,60251.56,167,discontinued,2023-08-21,スタイリッシュなデザインと機能性を両立した花瓶。ガラス花瓶は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4998,W45×D23×H64cm
PRD-INT-00112,モダン花瓶,Antique Vase,インテリア,装飾品,花瓶,GlacierStyle Original,SUP-00023,2426.86,7023.98,6986.46,155,active,2024-02-10,スタイリッシュなデザインと機能性を両立した花瓶。モダン花瓶は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,3204,W26×D36×H24cm
PRD-INT-00113,モダン花瓶,Ceramic Vase,インテリア,装飾品,花瓶,NordicHome Original,SUP-00040,27856.45,61196.96,60194.97,79,discontinued,2024-07-30,スタイリッシュなデザインと機能性を両立した花瓶。モダン花瓶は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,859,W42×D30×H63cm
PRD-INT-00114,モダン花瓶,Antique Vase,インテリア,装飾品,花瓶,ModernLiving Original,SUP-00036,1090.18,2747.41,2114.06,159,active,2024-12-24,スタイリッシュなデザインと機能性を両立した花瓶。モダン花瓶は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1840,W41×D25×H79cm
PRD-INT-00115,モダン花瓶,Glass Vase,インテリア,装飾品,花瓶,NordicHome Original,SUP-00049,27393.25,66505.02,52798.51,247,discontinued,2022-12-04,スタイリッシュなデザインと機能性を両立した花瓶。モダン花瓶は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1008,W37×D35×H64cm
PRD-INT-00116,ガラス花瓶,Antique Vase,インテリア,装飾品,花瓶,MinimalSpace Original,SUP-00033,7862.57,25385.74,18870.58,230,discontinued,2020-10-14,スタイリッシュなデザインと機能性を両立した花瓶。ガラス花瓶は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,777,W20×D16×H44cm
PRD-INT-00117,陶器花瓶,Modern Vase,インテリア,装飾品,花瓶,UrbanDecor Original,SUP-00038,5411.2,16809.19,12584.8,354,active,2021-02-27,スタイリッシュなデザインと機能性を両立した花瓶。陶器花瓶は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2288,W39×D31×H54cm
PRD-INT-00118,ガラス花瓶,Modern Vase,インテリア,装飾品,花瓶,ModernLiving Original,SUP-00008,7840.67,22384.55,20756.67,190,active,2022-10-15,スタイリッシュなデザインと機能性を両立した花瓶。ガラス花瓶は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2434,W49×D25×H61cm
PRD-INT-00119,モダン花瓶,Glass Vase,インテリア,装飾品,花瓶,UrbanDecor Original,SUP-00006,23355.6,68725.07,67090.22,105,active,2023-02-09,スタイリッシュなデザインと機能性を両立した花瓶。モダン花瓶は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1334,W22×D24×H43cm
PRD-INT-00120,陶器花瓶,Modern Vase,インテリア,装飾品,花瓶,MinimalSpace Original,SUP-00034,6402.25,16956.19,12737.91,72,active,2024-02-19,スタイリッシュなデザインと機能性を両立した花瓶。陶器花瓶は、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,3218,W36×D29×H64cm
PRD-INT-00121,ウォールフレーム,Digital Photo Frame,インテリア,装飾品,フレーム,MinimalSpace Original,SUP-00004,5327.33,16196.33,13347.73,378,discontinued,2023-09-02,スタイリッシュなデザインと機能性を両立したフレーム。ウォールフレームは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4282,W49×D31×H22cm
PRD-INT-00122,ウォールフレーム,Wall Frame,インテリア,装飾品,フレーム,NordicHome Original,SUP-00011,15181.5,52188.37,38279.29,8,active,2023-03-03,スタイリッシュなデザインと機能性を両立したフレーム。ウォールフレームは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,756,W34×D33×H37cm
PRD-INT-00123,デジタルフォトフレーム,Wall Frame,インテリア,装飾品,フレーム,MinimalSpace Original,SUP-00024,5754.39,18547.15,16075.52,392,active,2023-12-14,スタイリッシュなデザインと機能性を両立したフレーム。デジタルフォトフレームは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4400,W32×D19×H26cm
PRD-INT-00124,ウォールフレーム,Wall Frame,インテリア,装飾品,フレーム,GlacierStyle Original,SUP-00035,7535.12,19954.3,14367.2,320,discontinued,2021-06-12,スタイリッシュなデザインと機能性を両立したフレーム。ウォールフレームは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,3094,W48×D20×H51cm
PRD-INT-00125,デジタルフォトフレーム,Digital Photo Frame,インテリア,装飾品,フレーム,MinimalSpace Original,SUP-00048,14032.9,44812.6,38033.37,498,active,2023-08-19,スタイリッシュなデザインと機能性を両立したフレーム。デジタルフォトフレームは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,3949,W31×D31×H63cm
PRD-INT-00126,ウォールフレーム,Art Frame,インテリア,装飾品,フレーム,GlacierStyle Original,SUP-00049,8969.63,28729.6,23642.62,296,active,2022-12-09,スタイリッシュなデザインと機能性を両立したフレーム。ウォールフレームは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,3961,W38×D36×H65cm
PRD-INT-00127,写真フレーム,Art Frame,インテリア,装飾品,フレーム,MinimalSpace Original,SUP-00036,12135.7,42010.27,36258.63,408,active,2022-03-19,スタイリッシュなデザインと機能性を両立したフレーム。写真フレームは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1363,W46×D29×H34cm
PRD-INT-00128,写真フレーム,Photo Frame,インテリア,装飾品,フレーム,GlacierStyle Original,SUP-00022,29087.85,87077.07,65528.14,72,active,2024-10-17,スタイリッシュなデザインと機能性を両立したフレーム。写真フレームは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1064,W27×D25×H24cm
PRD-INT-00129,写真フレーム,Photo Frame,インテリア,装飾品,フレーム,NordicHome Original,SUP-00039,12485.68,32596.34,28833.93,354,active,2022-03-29,スタイリッシュなデザインと機能性を両立したフレーム。写真フレームは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,3873,W27×D27×H23cm
PRD-INT-00130,写真フレーム,Art Frame,インテリア,装飾品,フレーム,NordicHome Original,SUP-00024,25477.65,76023.42,68312.96,368,active,2022-01-28,スタイリッシュなデザインと機能性を両立したフレーム。写真フレームは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1851,W44×D33×H27cm
PRD-INT-00131,ウォールフレーム,Wall Frame,インテリア,装飾品,フレーム,UrbanDecor Original,SUP-00010,15406.92,49377.47,40016.07,215,discontinued,2024-01-04,スタイリッシュなデザインと機能性を両立したフレーム。ウォールフレームは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4662,W35×D24×H50cm
PRD-INT-00132,アートフレーム,Digital Photo Frame,インテリア,装飾品,フレーム,GlacierStyle Original,SUP-00013,11650.3,33092.74,23455.12,68,active,2023-05-25,スタイリッシュなデザインと機能性を両立したフレーム。アートフレームは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4926,W50×D24×H75cm
PRD-INT-00133,陶器オブジェ,Ceramic Object,インテリア,装飾品,オブジェ,UrbanDecor Original,SUP-00036,27252.89,58302.09,57527.65,216,active,2020-04-02,スタイリッシュなデザインと機能性を両立したオブジェ。陶器オブジェは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4604,W22×D32×H31cm
PRD-INT-00134,モダンアート,Decoration Piece,インテリア,装飾品,オブジェ,NordicHome Original,SUP-00028,21869.54,60264.66,56849.39,1,active,2020-09-20,スタイリッシュなデザインと機能性を両立したオブジェ。モダンアートは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4396,W43×D19×H78cm
PRD-INT-00135,インテリアオブジェ,Interior Object,インテリア,装飾品,オブジェ,MinimalSpace Original,SUP-00005,26051.23,79400.48,75019.28,354,active,2024-05-16,スタイリッシュなデザインと機能性を両立したオブジェ。インテリアオブジェは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2767,W48×D19×H39cm
PRD-INT-00136,モダンアート,Interior Object,インテリア,装飾品,オブジェ,GlacierStyle Original,SUP-00032,24645.09,77277.89,55694.83,274,active,2022-05-13,スタイリッシュなデザインと機能性を両立したオブジェ。モダンアートは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2818,W27×D37×H63cm
PRD-INT-00137,モダンアート,Decoration Piece,インテリア,装飾品,オブジェ,UrbanDecor Original,SUP-00029,6778.56,17090.69,12999.17,454,active,2021-11-22,スタイリッシュなデザインと機能性を両立したオブジェ。モダンアートは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,1707,W20×D36×H40cm
PRD-INT-00138,陶器オブジェ,Ceramic Object,インテリア,装飾品,オブジェ,GlacierStyle Original,SUP-00025,26083.12,89910.26,89187.33,322,active,2021-01-19,スタイリッシュなデザインと機能性を両立したオブジェ。陶器オブジェは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4452,W24×D26×H42cm
PRD-INT-00139,モダンアート,Interior Object,インテリア,装飾品,オブジェ,ModernLiving Original,SUP-00021,9219.84,32210.12,30539.7,291,active,2022-11-14,スタイリッシュなデザインと機能性を両立したオブジェ。モダンアートは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4435,W31×D28×H59cm
PRD-INT-00140,インテリアオブジェ,Modern Art,インテリア,装飾品,オブジェ,UrbanDecor Original,SUP-00028,5543.17,15391.81,10954.5,209,active,2022-12-18,スタイリッシュなデザインと機能性を両立したオブジェ。インテリアオブジェは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,4082,W24×D21×H26cm
PRD-INT-00141,モダンアート,Ceramic Object,インテリア,装飾品,オブジェ,UrbanDecor Original,SUP-00041,6497.82,17677.18,15053.66,342,discontinued,2023-11-23,スタイリッシュなデザインと機能性を両立したオブジェ。モダンアートは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2195,W42×D31×H59cm
PRD-INT-00142,陶器オブジェ,Ceramic Object,インテリア,装飾品,オブジェ,GlacierStyle Original,SUP-00041,10729.81,26067.83,20551.94,132,active,2022-02-01,スタイリッシュなデザインと機能性を両立したオブジェ。陶器オブジェは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2105,W45×D18×H54cm
PRD-INT-00143,デコレーションピース,Ceramic Object,インテリア,装飾品,オブジェ,NordicHome Original,SUP-00014,23266.89,59223.19,57156.0,331,active,2022-02-04,スタイリッシュなデザインと機能性を両立したオブジェ。デコレーションピースは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,711,W47×D23×H25cm
PRD-INT-00144,陶器オブジェ,Decoration Piece,インテリア,装飾品,オブジェ,ModernLiving Original,SUP-00015,6322.36,18960.41,15620.81,269,active,2021-09-26,スタイリッシュなデザインと機能性を両立したオブジェ。陶器オブジェは、モダンな空間にぴったりのインテリアアイテムです。高品質な素材を使用し、長くご愛用いただけます。,2382,W41×D35×H24cm
PRD-ELT-00001,スティック掃除機,Stick Vacuum,家電,生活家電,掃除機,PowerPlus Original,SUP-00042,73379.22,177844.97,154314.36,443,active,2024-11-20,最新技術を搭載した掃除機。スティック掃除機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,6683,W38×D31×H48cm
PRD-ELT-00002,サイクロン掃除機,Cordless Vacuum,家電,生活家電,掃除機,TechnoLife Original,SUP-00038,42878.38,93504.4,73163.11,344,active,2022-03-03,最新技術を搭載した掃除機。サイクロン掃除機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,4847,W41×D23×H18cm
PRD-ELT-00003,コードレス掃除機,Stick Vacuum,家電,生活家電,掃除機,SmartHome Original,SUP-00038,8456.28,26713.14,22875.56,234,discontinued,2021-11-24,最新技術を搭載した掃除機。コードレス掃除機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,5683,W37×D23×H52cm
PRD-ELT-00004,ロボット掃除機,Cyclone Vacuum,家電,生活家電,掃除機,EcoAppliance Original,SUP-00027,65292.92,141751.16,119967.78,424,active,2022-05-31,最新技術を搭載した掃除機。ロボット掃除機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,4235,W42×D25×H28cm
PRD-ELT-00005,ロボット掃除機,Cyclone Vacuum,家電,生活家電,掃除機,PowerPlus Original,SUP-00006,71095.94,191815.12,189027.38,202,active,2020-06-17,最新技術を搭載した掃除機。ロボット掃除機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,4625,W39×D29×H18cm
PRD-ELT-00006,サイクロン掃除機,Cordless Vacuum,家電,生活家電,掃除機,EcoAppliance Original,SUP-00006,67494.42,163213.47,144552.47,472,discontinued,2020-11-09,最新技術を搭載した掃除機。サイクロン掃除機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,7511,W26×D25×H61cm
PRD-ELT-00007,ロボット掃除機,Cordless Vacuum,家電,生活家電,掃除機,SmartHome Original,SUP-00018,44403.77,100691.07,78044.4,70,discontinued,2021-04-05,最新技術を搭載した掃除機。ロボット掃除機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,6650,W23×D37×H49cm
PRD-ELT-00008,スティック掃除機,Cyclone Vacuum,家電,生活家電,掃除機,FutureHome Original,SUP-00042,75431.32,192168.8,147989.49,40,active,2020-02-07,最新技術を搭載した掃除機。スティック掃除機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,4998,W39×D26×H27cm
PRD-ELT-00009,スティック掃除機,Robot Vacuum,家電,生活家電,掃除機,TechnoLife Original,SUP-00039,66103.61,154122.87,137260.73,159,active,2020-04-19,最新技術を搭載した掃除機。スティック掃除機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,5755,W41×D37×H33cm
PRD-ELT-00010,コードレス掃除機,Stick Vacuum,家電,生活家電,掃除機,EcoAppliance Original,SUP-00010,48609.09,169511.71,168654.44,187,active,2020-05-23,最新技術を搭載した掃除機。コードレス掃除機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,6800,W41×D29×H25cm
PRD-ELT-00011,サイクロン掃除機,Cordless Vacuum,家電,生活家電,掃除機,TechnoLife Original,SUP-00006,50212.1,154559.89,127105.31,315,discontinued,2021-02-25,最新技術を搭載した掃除機。サイクロン掃除機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,6295,W42×D35×H76cm
PRD-ELT-00012,コードレス掃除機,Cordless Vacuum,家電,生活家電,掃除機,FutureHome Original,SUP-00040,55344.12,130632.61,117896.38,463,active,2021-11-17,最新技術を搭載した掃除機。コードレス掃除機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,5860,W42×D37×H64cm
PRD-ELT-00013,静音空気清浄機,Silent Air Purifier,家電,生活家電,空気清浄機,PowerPlus Original,SUP-00049,17021.32,58120.5,55177.63,141,discontinued,2023-02-18,最新技術を搭載した空気清浄機。静音空気清浄機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,834,W33×D39×H52cm
PRD-ELT-00014,加湿機能付き空気清浄機,HEPA Air Purifier,家電,生活家電,空気清浄機,PowerPlus Original,SUP-00004,46951.93,111302.06,82818.7,480,active,2020-07-10,最新技術を搭載した空気清浄機。加湿機能付き空気清浄機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2697,W36×D22×H44cm
PRD-ELT-00015,HEPAフィルター空気清浄機,Compact Air Purifier,家電,生活家電,空気清浄機,FutureHome Original,SUP-00035,20387.95,50857.65,39543.19,480,active,2024-05-06,最新技術を搭載した空気清浄機。HEPAフィルター空気清浄機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1166,W44×D28×H58cm
PRD-ELT-00016,HEPAフィルター空気清浄機,Silent Air Purifier,家電,生活家電,空気清浄機,TechnoLife Original,SUP-00015,42416.7,99935.85,84725.55,50,active,2024-09-30,最新技術を搭載した空気清浄機。HEPAフィルター空気清浄機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1066,W30×D25×H76cm
PRD-ELT-00017,静音空気清浄機,Humidifying Air Purifier,家電,生活家電,空気清浄機,FutureHome Original,SUP-00027,14560.78,38884.37,30387.13,405,active,2021-06-01,最新技術を搭載した空気清浄機。静音空気清浄機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1974,W23×D33×H22cm
PRD-ELT-00018,静音空気清浄機,Compact Air Purifier,家電,生活家電,空気清浄機,SmartHome Original,SUP-00032,37415.24,127096.32,124433.89,193,discontinued,2022-12-19,最新技術を搭載した空気清浄機。静音空気清浄機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,958,W40×D28×H22cm
PRD-ELT-00019,HEPAフィルター空気清浄機,Humidifying Air Purifier,家電,生活家電,空気清浄機,PowerPlus Original,SUP-00043,6654.66,21236.44,18813.41,171,active,2020-09-22,最新技術を搭載した空気清浄機。HEPAフィルター空気清浄機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2639,W26×D31×H32cm
PRD-ELT-00020,静音空気清浄機,Compact Air Purifier,家電,生活家電,空気清浄機,SmartHome Original,SUP-00042,74998.17,161948.68,149887.59,345,active,2022-01-21,最新技術を搭載した空気清浄機。静音空気清浄機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1173,W30×D33×H47cm
PRD-ELT-00021,加湿機能付き空気清浄機,Silent Air Purifier,家電,生活家電,空気清浄機,PowerPlus Original,SUP-00044,19594.33,54373.02,51704.59,353,active,2023-11-03,最新技術を搭載した空気清浄機。加湿機能付き空気清浄機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,836,W38×D40×H25cm
PRD-ELT-00022,コンパクト空気清浄機,HEPA Air Purifier,家電,生活家電,空気清浄機,SmartHome Original,SUP-00025,4430.78,10053.9,9444.07,373,active,2021-04-19,最新技術を搭載した空気清浄機。コンパクト空気清浄機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2636,W49×D21×H76cm
PRD-ELT-00023,静音空気清浄機,Humidifying Air Purifier,家電,生活家電,空気清浄機,SmartHome Original,SUP-00018,64179.99,181725.87,147136.67,458,active,2024-09-26,最新技術を搭載した空気清浄機。静音空気清浄機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1584,W46×D38×H52cm
PRD-ELT-00024,HEPAフィルター空気清浄機,HEPA Air Purifier,家電,生活家電,空気清浄機,TechnoLife Original,SUP-00007,49098.5,105072.27,84736.72,313,active,2020-04-10,最新技術を搭載した空気清浄機。HEPAフィルター空気清浄機は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1943,W41×D37×H55cm
PRD-ELT-00025,スチーム加湿器,Aroma Humidifier,家電,生活家電,加湿器,SmartHome Original,SUP-00043,24885.93,63080.26,55048.75,386,active,2022-05-19,最新技術を搭載した加湿器。スチーム加湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,847,W43×D25×H49cm
PRD-ELT-00026,アロマ対応加湿器,Aroma Humidifier,家電,生活家電,加湿器,TechnoLife Original,SUP-00046,40571.92,136402.01,110235.85,470,active,2022-12-25,最新技術を搭載した加湿器。アロマ対応加湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,607,W48×D37×H55cm
PRD-ELT-00027,アロマ対応加湿器,Aroma Humidifier,家電,生活家電,加湿器,EcoAppliance Original,SUP-00022,27688.22,68344.12,51308.01,186,active,2020-07-16,最新技術を搭載した加湿器。アロマ対応加湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,995,W35×D33×H43cm
PRD-ELT-00028,超音波加湿器,Steam Humidifier,家電,生活家電,加湿器,PowerPlus Original,SUP-00034,20926.19,54337.31,51467.75,493,active,2020-06-06,最新技術を搭載した加湿器。超音波加湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1788,W41×D21×H75cm
PRD-ELT-00029,スチーム加湿器,Aroma Humidifier,家電,生活家電,加湿器,EcoAppliance Original,SUP-00041,73544.02,195970.35,162699.92,442,active,2024-07-26,最新技術を搭載した加湿器。スチーム加湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2752,W46×D26×H74cm
PRD-ELT-00030,スチーム加湿器,Hybrid Humidifier,家電,生活家電,加湿器,SmartHome Original,SUP-00023,31276.27,101539.37,86315.43,330,active,2023-01-14,最新技術を搭載した加湿器。スチーム加湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1741,W43×D22×H52cm
PRD-ELT-00031,超音波加湿器,Ultrasonic Humidifier,家電,生活家電,加湿器,EcoAppliance Original,SUP-00028,39421.8,99814.77,94557.04,384,active,2021-09-09,最新技術を搭載した加湿器。超音波加湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,752,W33×D31×H17cm
PRD-ELT-00032,超音波加湿器,Hybrid Humidifier,家電,生活家電,加湿器,FutureHome Original,SUP-00030,15536.65,38222.1,33253.35,481,discontinued,2022-05-23,最新技術を搭載した加湿器。超音波加湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1334,W37×D32×H32cm
PRD-ELT-00033,アロマ対応加湿器,Steam Humidifier,家電,生活家電,加湿器,SmartHome Original,SUP-00014,49676.72,146635.96,137657.99,177,discontinued,2022-07-09,最新技術を搭載した加湿器。アロマ対応加湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1722,W48×D38×H72cm
PRD-ELT-00034,超音波加湿器,Hybrid Humidifier,家電,生活家電,加湿器,SmartHome Original,SUP-00041,73759.08,212045.64,210064.34,294,active,2022-04-17,最新技術を搭載した加湿器。超音波加湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1784,W21×D22×H67cm
PRD-ELT-00035,スチーム加湿器,Ultrasonic Humidifier,家電,生活家電,加湿器,PowerPlus Original,SUP-00024,21448.64,56958.01,46029.79,417,active,2022-09-22,最新技術を搭載した加湿器。スチーム加湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2778,W40×D25×H78cm
PRD-ELT-00036,超音波加湿器,Ultrasonic Humidifier,家電,生活家電,加湿器,EcoAppliance Original,SUP-00044,40746.47,107872.72,82873.65,397,active,2021-02-23,最新技術を搭載した加湿器。超音波加湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1513,W42×D24×H59cm
PRD-ELT-00037,コンプレッサー除湿器,Desiccant Dehumidifier,家電,生活家電,除湿器,PowerPlus Original,SUP-00044,72600.79,168535.04,148727.26,46,active,2023-11-16,最新技術を搭載した除湿器。コンプレッサー除湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,572,W30×D28×H37cm
PRD-ELT-00038,コンパクト除湿器,Clothes Dryer Dehumidifier,家電,生活家電,除湿器,SmartHome Original,SUP-00019,53141.39,169291.58,123719.8,100,active,2022-01-23,最新技術を搭載した除湿器。コンパクト除湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2932,W29×D27×H71cm
PRD-ELT-00039,コンプレッサー除湿器,Compact Dehumidifier,家電,生活家電,除湿器,PowerPlus Original,SUP-00042,40241.79,125668.05,123265.79,138,active,2022-06-30,最新技術を搭載した除湿器。コンプレッサー除湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2953,W47×D21×H30cm
PRD-ELT-00040,デシカント除湿器,Clothes Dryer Dehumidifier,家電,生活家電,除湿器,SmartHome Original,SUP-00023,11462.49,25268.6,18843.08,146,active,2022-01-17,最新技術を搭載した除湿器。デシカント除湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2707,W21×D26×H36cm
PRD-ELT-00041,コンプレッサー除湿器,Clothes Dryer Dehumidifier,家電,生活家電,除湿器,TechnoLife Original,SUP-00017,75305.94,263112.13,249077.75,495,active,2022-02-03,最新技術を搭載した除湿器。コンプレッサー除湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,823,W20×D24×H23cm
PRD-ELT-00042,コンパクト除湿器,Desiccant Dehumidifier,家電,生活家電,除湿器,SmartHome Original,SUP-00018,9640.59,31048.9,26003.15,103,active,2023-01-24,最新技術を搭載した除湿器。コンパクト除湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,655,W30×D29×H50cm
PRD-ELT-00043,デシカント除湿器,Compact Dehumidifier,家電,生活家電,除湿器,SmartHome Original,SUP-00032,72212.02,156278.74,155562.4,78,discontinued,2024-06-01,最新技術を搭載した除湿器。デシカント除湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1859,W25×D29×H39cm
PRD-ELT-00044,コンプレッサー除湿器,Clothes Dryer Dehumidifier,家電,生活家電,除湿器,TechnoLife Original,SUP-00010,21297.27,65589.8,65521.35,374,discontinued,2024-08-31,最新技術を搭載した除湿器。コンプレッサー除湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2810,W25×D33×H62cm
PRD-ELT-00045,デシカント除湿器,Compact Dehumidifier,家電,生活家電,除湿器,FutureHome Original,SUP-00004,62003.67,137630.06,96994.14,419,active,2021-04-07,最新技術を搭載した除湿器。デシカント除湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2487,W38×D20×H69cm
PRD-ELT-00046,コンパクト除湿器,Desiccant Dehumidifier,家電,生活家電,除湿器,PowerPlus Original,SUP-00036,75350.47,188405.3,152488.1,133,active,2020-09-27,最新技術を搭載した除湿器。コンパクト除湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2566,W33×D38×H42cm
PRD-ELT-00047,デシカント除湿器,Clothes Dryer Dehumidifier,家電,生活家電,除湿器,TechnoLife Original,SUP-00048,19584.16,44366.42,40809.4,434,discontinued,2024-08-27,最新技術を搭載した除湿器。デシカント除湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2583,W50×D28×H41cm
PRD-ELT-00048,デシカント除湿器,Compressor Dehumidifier,家電,生活家電,除湿器,FutureHome Original,SUP-00035,6309.79,20256.8,15110.92,156,active,2024-09-03,最新技術を搭載した除湿器。デシカント除湿器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1323,W50×D26×H34cm
PRD-ELT-00049,オーブンレンジ,Flat Microwave,家電,キッチン家電,電子レンジ,PowerPlus Original,SUP-00037,64443.93,160231.44,121871.49,113,discontinued,2021-07-21,最新技術を搭載した電子レンジ。オーブンレンジは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,5847,W26×D23×H59cm
PRD-ELT-00050,コンパクト電子レンジ,Steam Oven,家電,キッチン家電,電子レンジ,EcoAppliance Original,SUP-00020,16261.19,53099.95,48057.94,67,active,2020-03-11,最新技術を搭載した電子レンジ。コンパクト電子レンジは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,5901,W41×D33×H80cm
PRD-ELT-00051,スチームオーブンレンジ,Compact Microwave,家電,キッチン家電,電子レンジ,SmartHome Original,SUP-00047,74974.81,249459.43,219744.46,212,active,2020-07-06,最新技術を搭載した電子レンジ。スチームオーブンレンジは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,7042,W30×D27×H74cm
PRD-ELT-00052,フラット電子レンジ,Flat Microwave,家電,キッチン家電,電子レンジ,TechnoLife Original,SUP-00001,19183.35,48096.73,38153.09,448,active,2020-02-02,最新技術を搭載した電子レンジ。フラット電子レンジは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,7351,W28×D25×H46cm
PRD-ELT-00053,オーブンレンジ,Steam Oven,家電,キッチン家電,電子レンジ,SmartHome Original,SUP-00023,51479.4,177487.32,138735.95,73,active,2022-01-28,最新技術を搭載した電子レンジ。オーブンレンジは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,7246,W21×D30×H26cm
PRD-ELT-00054,コンパクト電子レンジ,Steam Oven,家電,キッチン家電,電子レンジ,SmartHome Original,SUP-00027,71039.5,167344.8,126974.7,11,discontinued,2020-03-08,最新技術を搭載した電子レンジ。コンパクト電子レンジは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,5674,W46×D39×H19cm
PRD-ELT-00055,フラット電子レンジ,Microwave Oven,家電,キッチン家電,電子レンジ,TechnoLife Original,SUP-00013,75093.19,173464.59,125267.5,153,active,2021-03-31,最新技術を搭載した電子レンジ。フラット電子レンジは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,4793,W42×D40×H30cm
PRD-ELT-00056,フラット電子レンジ,Microwave Oven,家電,キッチン家電,電子レンジ,PowerPlus Original,SUP-00014,46592.76,157330.5,137079.29,183,active,2024-08-31,最新技術を搭載した電子レンジ。フラット電子レンジは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,6996,W23×D28×H23cm
PRD-ELT-00057,フラット電子レンジ,Compact Microwave,家電,キッチン家電,電子レンジ,FutureHome Original,SUP-00001,4474.55,13043.76,9905.7,20,active,2020-10-13,最新技術を搭載した電子レンジ。フラット電子レンジは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,5708,W21×D36×H71cm
PRD-ELT-00058,コンパクト電子レンジ,Microwave Oven,家電,キッチン家電,電子レンジ,PowerPlus Original,SUP-00026,51944.38,154910.43,133873.74,56,active,2022-06-18,最新技術を搭載した電子レンジ。コンパクト電子レンジは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,5232,W25×D31×H17cm
PRD-ELT-00059,フラット電子レンジ,Microwave Oven,家電,キッチン家電,電子レンジ,SmartHome Original,SUP-00020,61234.04,124932.0,109441.69,104,active,2022-05-08,最新技術を搭載した電子レンジ。フラット電子レンジは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,4020,W25×D28×H20cm
PRD-ELT-00060,コンパクト電子レンジ,Steam Oven,家電,キッチン家電,電子レンジ,SmartHome Original,SUP-00031,60059.99,160861.41,116589.24,478,active,2024-02-17,最新技術を搭載した電子レンジ。コンパクト電子レンジは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,5229,W25×D28×H24cm
PRD-ELT-00061,IH炊飯器,Pressure IH Rice Cooker,家電,キッチン家電,炊飯器,PowerPlus Original,SUP-00013,47393.1,117970.78,88842.7,256,discontinued,2020-02-17,最新技術を搭載した炊飯器。IH炊飯器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,7232,W42×D23×H70cm
PRD-ELT-00062,マイコン炊飯器,Pressure IH Rice Cooker,家電,キッチン家電,炊飯器,PowerPlus Original,SUP-00005,18554.79,43564.74,33360.53,468,active,2023-04-19,最新技術を搭載した炊飯器。マイコン炊飯器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,6751,W35×D22×H61cm
PRD-ELT-00063,多機能炊飯器,IH Rice Cooker,家電,キッチン家電,炊飯器,EcoAppliance Original,SUP-00030,60699.82,177667.82,127969.1,482,discontinued,2022-10-08,最新技術を搭載した炊飯器。多機能炊飯器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,5213,W44×D27×H64cm
PRD-ELT-00064,圧力IH炊飯器,IH Rice Cooker,家電,キッチン家電,炊飯器,EcoAppliance Original,SUP-00011,77619.68,177191.39,157041.88,398,active,2021-10-11,最新技術を搭載した炊飯器。圧力IH炊飯器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,5036,W37×D40×H49cm
PRD-ELT-00065,マイコン炊飯器,Multi-Function Rice Cooker,家電,キッチン家電,炊飯器,TechnoLife Original,SUP-00021,48980.71,166498.45,151169.0,8,active,2022-08-28,最新技術を搭載した炊飯器。マイコン炊飯器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,4718,W50×D29×H53cm
PRD-ELT-00066,多機能炊飯器,IH Rice Cooker,家電,キッチン家電,炊飯器,PowerPlus Original,SUP-00030,45595.23,97342.44,77026.79,433,discontinued,2024-02-07,最新技術を搭載した炊飯器。多機能炊飯器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,6571,W35×D40×H34cm
PRD-ELT-00067,IH炊飯器,Pressure IH Rice Cooker,家電,キッチン家電,炊飯器,EcoAppliance Original,SUP-00011,74893.43,156891.83,116634.42,156,discontinued,2024-02-01,最新技術を搭載した炊飯器。IH炊飯器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,7265,W21×D27×H47cm
PRD-ELT-00068,多機能炊飯器,Multi-Function Rice Cooker,家電,キッチン家電,炊飯器,SmartHome Original,SUP-00039,17343.86,52693.11,50893.23,370,discontinued,2021-04-16,最新技術を搭載した炊飯器。多機能炊飯器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,7876,W24×D37×H32cm
PRD-ELT-00069,圧力IH炊飯器,Pressure IH Rice Cooker,家電,キッチン家電,炊飯器,EcoAppliance Original,SUP-00018,20186.52,50091.56,38702.37,246,active,2020-08-20,最新技術を搭載した炊飯器。圧力IH炊飯器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,7280,W39×D24×H53cm
PRD-ELT-00070,マイコン炊飯器,Pressure IH Rice Cooker,家電,キッチン家電,炊飯器,EcoAppliance Original,SUP-00043,59760.61,160694.94,132598.67,27,active,2023-09-16,最新技術を搭載した炊飯器。マイコン炊飯器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,3848,W42×D31×H16cm
PRD-ELT-00071,多機能炊飯器,Microcomputer Rice Cooker,家電,キッチン家電,炊飯器,FutureHome Original,SUP-00011,71527.73,188047.02,187043.4,34,active,2022-06-13,最新技術を搭載した炊飯器。多機能炊飯器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,7547,W25×D24×H65cm
PRD-ELT-00072,マイコン炊飯器,IH Rice Cooker,家電,キッチン家電,炊飯器,PowerPlus Original,SUP-00001,69279.03,220648.53,201196.11,147,discontinued,2020-08-05,最新技術を搭載した炊飯器。マイコン炊飯器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,6663,W29×D38×H62cm
PRD-ELT-00073,ポップアップトースター,Pop-up Toaster,家電,キッチン家電,トースター,TechnoLife Original,SUP-00002,71420.56,174309.17,125981.32,395,discontinued,2020-03-17,最新技術を搭載したトースター。ポップアップトースターは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1285,W37×D23×H18cm
PRD-ELT-00074,コンパクトトースター,Compact Toaster,家電,キッチン家電,トースター,PowerPlus Original,SUP-00009,73389.88,201972.87,150985.45,470,active,2024-01-28,最新技術を搭載したトースター。コンパクトトースターは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,749,W27×D22×H75cm
PRD-ELT-00075,スチームトースター,Compact Toaster,家電,キッチン家電,トースター,EcoAppliance Original,SUP-00017,54645.06,190039.07,180330.07,479,active,2024-06-07,最新技術を搭載したトースター。スチームトースターは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1361,W22×D20×H68cm
PRD-ELT-00076,コンパクトトースター,Pop-up Toaster,家電,キッチン家電,トースター,FutureHome Original,SUP-00028,39486.51,126353.42,106174.44,485,active,2024-05-06,最新技術を搭載したトースター。コンパクトトースターは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1723,W35×D38×H73cm
PRD-ELT-00077,スチームトースター,Compact Toaster,家電,キッチン家電,トースター,EcoAppliance Original,SUP-00045,50321.39,124071.19,108609.44,500,active,2024-02-24,最新技術を搭載したトースター。スチームトースターは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1254,W43×D26×H69cm
PRD-ELT-00078,コンパクトトースター,Pop-up Toaster,家電,キッチン家電,トースター,SmartHome Original,SUP-00010,3007.52,7505.78,5944.85,229,active,2020-09-12,最新技術を搭載したトースター。コンパクトトースターは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2176,W25×D23×H61cm
PRD-ELT-00079,オーブントースター,Pop-up Toaster,家電,キッチン家電,トースター,SmartHome Original,SUP-00031,52656.3,130734.23,130604.84,394,active,2022-08-06,最新技術を搭載したトースター。オーブントースターは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2663,W29×D24×H50cm
PRD-ELT-00080,コンパクトトースター,Steam Toaster,家電,キッチン家電,トースター,SmartHome Original,SUP-00005,75316.74,203879.45,183300.99,378,active,2021-06-17,最新技術を搭載したトースター。コンパクトトースターは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2398,W32×D32×H78cm
PRD-ELT-00081,ポップアップトースター,Oven Toaster,家電,キッチン家電,トースター,FutureHome Original,SUP-00012,75342.99,208256.4,150201.94,469,active,2021-04-19,最新技術を搭載したトースター。ポップアップトースターは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2546,W23×D24×H32cm
PRD-ELT-00082,ポップアップトースター,Steam Toaster,家電,キッチン家電,トースター,TechnoLife Original,SUP-00029,39496.5,110414.25,102165.65,260,active,2021-08-06,最新技術を搭載したトースター。ポップアップトースターは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,975,W42×D23×H17cm
PRD-ELT-00083,ポップアップトースター,Oven Toaster,家電,キッチン家電,トースター,FutureHome Original,SUP-00022,73536.89,188060.59,180607.67,225,active,2020-09-07,最新技術を搭載したトースター。ポップアップトースターは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,602,W33×D24×H43cm
PRD-ELT-00084,スチームトースター,Steam Toaster,家電,キッチン家電,トースター,EcoAppliance Original,SUP-00021,21839.05,57976.16,44103.66,356,active,2020-02-23,最新技術を搭載したトースター。スチームトースターは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1099,W39×D32×H55cm
PRD-ELT-00085,ドリップコーヒーメーカー,Automatic Coffee Maker,家電,キッチン家電,コーヒーメーカー,EcoAppliance Original,SUP-00049,66286.05,158356.36,114561.76,221,active,2024-10-20,最新技術を搭載したコーヒーメーカー。ドリップコーヒーメーカーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1069,W22×D35×H74cm
PRD-ELT-00086,カプセル式コーヒーメーカー,Capsule Coffee Maker,家電,キッチン家電,コーヒーメーカー,SmartHome Original,SUP-00032,28666.43,80202.93,65376.02,43,discontinued,2020-11-04,最新技術を搭載したコーヒーメーカー。カプセル式コーヒーメーカーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1104,W32×D22×H56cm
PRD-ELT-00087,全自動コーヒーメーカー,Automatic Coffee Maker,家電,キッチン家電,コーヒーメーカー,EcoAppliance Original,SUP-00042,60375.8,139203.55,130176.54,447,active,2024-06-23,最新技術を搭載したコーヒーメーカー。全自動コーヒーメーカーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2721,W35×D24×H78cm
PRD-ELT-00088,ドリップコーヒーメーカー,Automatic Coffee Maker,家電,キッチン家電,コーヒーメーカー,FutureHome Original,SUP-00041,70502.9,193772.85,166911.47,206,active,2021-01-28,最新技術を搭載したコーヒーメーカー。ドリップコーヒーメーカーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,852,W50×D31×H16cm
PRD-ELT-00089,ドリップコーヒーメーカー,Capsule Coffee Maker,家電,キッチン家電,コーヒーメーカー,EcoAppliance Original,SUP-00043,24387.4,76862.06,71460.3,191,active,2020-03-02,最新技術を搭載したコーヒーメーカー。ドリップコーヒーメーカーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,808,W40×D35×H65cm
PRD-ELT-00090,ドリップコーヒーメーカー,Automatic Coffee Maker,家電,キッチン家電,コーヒーメーカー,FutureHome Original,SUP-00011,31122.93,77998.06,70399.34,469,active,2024-04-22,最新技術を搭載したコーヒーメーカー。ドリップコーヒーメーカーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1503,W48×D25×H59cm
PRD-ELT-00091,ドリップコーヒーメーカー,Capsule Coffee Maker,家電,キッチン家電,コーヒーメーカー,SmartHome Original,SUP-00001,21865.69,65851.09,52238.23,296,active,2020-07-28,最新技術を搭載したコーヒーメーカー。ドリップコーヒーメーカーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2426,W24×D27×H41cm
PRD-ELT-00092,エスプレッソマシン,Espresso Machine,家電,キッチン家電,コーヒーメーカー,PowerPlus Original,SUP-00026,70518.45,163982.44,115808.0,118,active,2022-03-10,最新技術を搭載したコーヒーメーカー。エスプレッソマシンは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,742,W44×D38×H80cm
PRD-ELT-00093,カプセル式コーヒーメーカー,Capsule Coffee Maker,家電,キッチン家電,コーヒーメーカー,TechnoLife Original,SUP-00040,18650.2,44816.03,31609.27,309,active,2022-03-13,最新技術を搭載したコーヒーメーカー。カプセル式コーヒーメーカーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,625,W44×D30×H33cm
PRD-ELT-00094,カプセル式コーヒーメーカー,Drip Coffee Maker,家電,キッチン家電,コーヒーメーカー,TechnoLife Original,SUP-00025,57692.9,170893.93,150136.31,304,active,2022-01-02,最新技術を搭載したコーヒーメーカー。カプセル式コーヒーメーカーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2028,W26×D31×H50cm
PRD-ELT-00095,全自動コーヒーメーカー,Drip Coffee Maker,家電,キッチン家電,コーヒーメーカー,PowerPlus Original,SUP-00047,62966.0,217879.52,188180.82,64,active,2023-08-07,最新技術を搭載したコーヒーメーカー。全自動コーヒーメーカーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2609,W24×D23×H33cm
PRD-ELT-00096,全自動コーヒーメーカー,Capsule Coffee Maker,家電,キッチン家電,コーヒーメーカー,PowerPlus Original,SUP-00004,67946.91,158991.12,130693.47,260,discontinued,2024-05-24,最新技術を搭載したコーヒーメーカー。全自動コーヒーメーカーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1083,W50×D34×H40cm
PRD-ELT-00097,イオンドライヤー,Quick Dry Dryer,家電,美容家電,ドライヤー,FutureHome Original,SUP-00019,79153.3,265020.99,242961.54,252,discontinued,2020-04-03,最新技術を搭載したドライヤー。イオンドライヤーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1191,W49×D28×H18cm
PRD-ELT-00098,イオンドライヤー,Quick Dry Dryer,家電,美容家電,ドライヤー,EcoAppliance Original,SUP-00006,59593.37,201893.55,183616.21,490,active,2022-09-07,最新技術を搭載したドライヤー。イオンドライヤーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2560,W36×D21×H44cm
PRD-ELT-00099,速乾ドライヤー,Ion Hair Dryer,家電,美容家電,ドライヤー,PowerPlus Original,SUP-00029,46173.13,146819.97,130659.54,138,active,2022-04-15,最新技術を搭載したドライヤー。速乾ドライヤーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,730,W22×D26×H47cm
PRD-ELT-00100,イオンドライヤー,Quick Dry Dryer,家電,美容家電,ドライヤー,SmartHome Original,SUP-00046,70007.79,202443.12,154068.18,470,discontinued,2022-03-18,最新技術を搭載したドライヤー。イオンドライヤーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1963,W50×D27×H68cm
PRD-ELT-00101,大風量ドライヤー,Ion Hair Dryer,家電,美容家電,ドライヤー,PowerPlus Original,SUP-00026,29010.84,96393.91,79229.54,72,active,2023-04-07,最新技術を搭載したドライヤー。大風量ドライヤーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1012,W43×D24×H18cm
PRD-ELT-00102,速乾ドライヤー,High Power Dryer,家電,美容家電,ドライヤー,SmartHome Original,SUP-00038,67125.41,180447.39,161999.02,198,discontinued,2023-09-24,最新技術を搭載したドライヤー。速乾ドライヤーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,671,W25×D32×H73cm
PRD-ELT-00103,大風量ドライヤー,Ion Hair Dryer,家電,美容家電,ドライヤー,TechnoLife Original,SUP-00019,23948.27,59977.89,47026.02,200,discontinued,2021-10-20,最新技術を搭載したドライヤー。大風量ドライヤーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2501,W44×D25×H61cm
PRD-ELT-00104,コンパクトドライヤー,Ion Hair Dryer,家電,美容家電,ドライヤー,TechnoLife Original,SUP-00049,7790.22,24360.2,17803.48,275,active,2021-05-13,最新技術を搭載したドライヤー。コンパクトドライヤーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1667,W50×D31×H74cm
PRD-ELT-00105,イオンドライヤー,Compact Dryer,家電,美容家電,ドライヤー,FutureHome Original,SUP-00034,60007.97,155014.82,141053.47,462,discontinued,2023-11-25,最新技術を搭載したドライヤー。イオンドライヤーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1591,W33×D20×H23cm
PRD-ELT-00106,コンパクトドライヤー,Compact Dryer,家電,美容家電,ドライヤー,TechnoLife Original,SUP-00021,73584.8,185933.37,151474.24,280,discontinued,2022-10-09,最新技術を搭載したドライヤー。コンパクトドライヤーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1016,W36×D32×H24cm
PRD-ELT-00107,コンパクトドライヤー,Quick Dry Dryer,家電,美容家電,ドライヤー,SmartHome Original,SUP-00012,49069.0,149403.43,144892.06,337,active,2024-08-21,最新技術を搭載したドライヤー。コンパクトドライヤーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,845,W36×D30×H52cm
PRD-ELT-00108,大風量ドライヤー,Quick Dry Dryer,家電,美容家電,ドライヤー,PowerPlus Original,SUP-00008,58307.9,199585.82,156271.31,430,discontinued,2024-05-05,最新技術を搭載したドライヤー。大風量ドライヤーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1389,W42×D25×H27cm
PRD-ELT-00109,カールアイロン,Cordless Hair Iron,家電,美容家電,ヘアアイロン,FutureHome Original,SUP-00020,45487.33,107320.85,78099.86,253,discontinued,2020-12-08,最新技術を搭載したヘアアイロン。カールアイロンは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1261,W26×D38×H54cm
PRD-ELT-00110,ストレートアイロン,Cordless Hair Iron,家電,美容家電,ヘアアイロン,FutureHome Original,SUP-00024,13564.38,47435.36,45396.28,25,discontinued,2024-09-15,最新技術を搭載したヘアアイロン。ストレートアイロンは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,702,W45×D26×H22cm
PRD-ELT-00111,ストレートアイロン,Straight Iron,家電,美容家電,ヘアアイロン,FutureHome Original,SUP-00031,66020.19,205728.95,158752.64,455,active,2022-08-18,最新技術を搭載したヘアアイロン。ストレートアイロンは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1293,W26×D28×H20cm
PRD-ELT-00112,カールアイロン,Cordless Hair Iron,家電,美容家電,ヘアアイロン,TechnoLife Original,SUP-00045,69878.9,189522.92,167466.44,311,active,2023-05-02,最新技術を搭載したヘアアイロン。カールアイロンは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2904,W44×D33×H23cm
PRD-ELT-00113,ストレートアイロン,2-Way Hair Iron,家電,美容家電,ヘアアイロン,TechnoLife Original,SUP-00032,28076.88,75983.8,59037.83,442,discontinued,2022-09-06,最新技術を搭載したヘアアイロン。ストレートアイロンは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1599,W48×D32×H72cm
PRD-ELT-00114,カールアイロン,Curling Iron,家電,美容家電,ヘアアイロン,TechnoLife Original,SUP-00047,49056.52,145083.44,124694.22,325,active,2023-09-22,最新技術を搭載したヘアアイロン。カールアイロンは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2077,W27×D21×H45cm
PRD-ELT-00115,ストレートアイロン,Straight Iron,家電,美容家電,ヘアアイロン,PowerPlus Original,SUP-00049,77819.31,174951.66,148954.85,359,discontinued,2020-10-16,最新技術を搭載したヘアアイロン。ストレートアイロンは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1671,W38×D20×H33cm
PRD-ELT-00116,カールアイロン,Cordless Hair Iron,家電,美容家電,ヘアアイロン,FutureHome Original,SUP-00046,12974.4,28151.32,23270.45,244,active,2024-06-30,最新技術を搭載したヘアアイロン。カールアイロンは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1108,W47×D40×H39cm
PRD-ELT-00117,カールアイロン,Straight Iron,家電,美容家電,ヘアアイロン,PowerPlus Original,SUP-00033,35358.56,119547.18,112886.18,291,active,2022-08-15,最新技術を搭載したヘアアイロン。カールアイロンは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1356,W34×D36×H39cm
PRD-ELT-00118,ストレートアイロン,Cordless Hair Iron,家電,美容家電,ヘアアイロン,FutureHome Original,SUP-00006,27172.27,94360.1,91388.13,424,discontinued,2022-10-15,最新技術を搭載したヘアアイロン。ストレートアイロンは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2929,W28×D38×H39cm
PRD-ELT-00119,カールアイロン,2-Way Hair Iron,家電,美容家電,ヘアアイロン,SmartHome Original,SUP-00012,57407.54,127723.4,126341.65,157,discontinued,2020-01-03,最新技術を搭載したヘアアイロン。カールアイロンは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,572,W48×D38×H15cm
PRD-ELT-00120,カールアイロン,Straight Iron,家電,美容家電,ヘアアイロン,EcoAppliance Original,SUP-00016,63001.65,189193.67,166771.35,72,active,2024-07-01,最新技術を搭載したヘアアイロン。カールアイロンは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2526,W41×D31×H65cm
PRD-ELT-00121,イオン美顔器,LED Beauty Device,家電,美容家電,美顔器,TechnoLife Original,SUP-00043,58574.12,192604.15,183525.04,38,active,2020-07-01,最新技術を搭載した美顔器。イオン美顔器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1865,W20×D24×H54cm
PRD-ELT-00122,LED美顔器,LED Beauty Device,家電,美容家電,美顔器,TechnoLife Original,SUP-00033,53591.18,119670.99,106331.48,484,active,2024-10-23,最新技術を搭載した美顔器。LED美顔器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1007,W31×D39×H33cm
PRD-ELT-00123,イオン美顔器,LED Beauty Device,家電,美容家電,美顔器,FutureHome Original,SUP-00034,78769.35,240974.64,200211.46,321,active,2022-11-23,最新技術を搭載した美顔器。イオン美顔器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,952,W42×D39×H51cm
PRD-ELT-00124,ウォーターピーリング美顔器,Water Peeling Device,家電,美容家電,美顔器,PowerPlus Original,SUP-00010,58322.58,125614.97,104046.41,44,active,2020-04-12,最新技術を搭載した美顔器。ウォーターピーリング美顔器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2413,W28×D20×H77cm
PRD-ELT-00125,LED美顔器,Water Peeling Device,家電,美容家電,美顔器,TechnoLife Original,SUP-00003,26429.2,89548.26,63727.91,205,active,2024-11-23,最新技術を搭載した美顔器。LED美顔器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1647,W37×D38×H37cm
PRD-ELT-00126,RF美顔器,LED Beauty Device,家電,美容家電,美顔器,SmartHome Original,SUP-00044,29995.49,67067.14,49265.85,52,active,2024-06-11,最新技術を搭載した美顔器。RF美顔器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2270,W45×D31×H76cm
PRD-ELT-00127,イオン美顔器,Ion Beauty Device,家電,美容家電,美顔器,SmartHome Original,SUP-00035,22169.47,48324.77,35251.36,344,active,2024-10-18,最新技術を搭載した美顔器。イオン美顔器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1629,W42×D38×H61cm
PRD-ELT-00128,RF美顔器,RF Beauty Device,家電,美容家電,美顔器,EcoAppliance Original,SUP-00027,76397.12,240376.68,173118.0,458,active,2020-10-27,最新技術を搭載した美顔器。RF美顔器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2403,W25×D22×H40cm
PRD-ELT-00129,LED美顔器,LED Beauty Device,家電,美容家電,美顔器,PowerPlus Original,SUP-00025,20448.58,50810.51,41011.75,169,active,2022-05-17,最新技術を搭載した美顔器。LED美顔器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2477,W44×D26×H50cm
PRD-ELT-00130,イオン美顔器,LED Beauty Device,家電,美容家電,美顔器,PowerPlus Original,SUP-00021,7278.17,20892.12,15669.84,328,discontinued,2021-09-07,最新技術を搭載した美顔器。イオン美顔器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1414,W33×D39×H72cm
PRD-ELT-00131,LED美顔器,RF Beauty Device,家電,美容家電,美顔器,SmartHome Original,SUP-00023,15275.61,38570.9,36761.88,460,discontinued,2023-11-27,最新技術を搭載した美顔器。LED美顔器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2299,W21×D26×H55cm
PRD-ELT-00132,LED美顔器,LED Beauty Device,家電,美容家電,美顔器,FutureHome Original,SUP-00008,4366.28,13508.29,11969.1,323,discontinued,2023-12-15,最新技術を搭載した美顔器。LED美顔器は、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2044,W39×D21×H64cm
PRD-ELT-00133,電気シェーバー,Rotary Shaver,家電,美容家電,シェーバー,PowerPlus Original,SUP-00043,63763.92,189583.86,158028.55,92,discontinued,2021-11-01,最新技術を搭載したシェーバー。電気シェーバーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2630,W47×D26×H54cm
PRD-ELT-00134,回転式シェーバー,Waterproof Shaver,家電,美容家電,シェーバー,TechnoLife Original,SUP-00017,72746.29,194970.17,170580.03,492,active,2021-07-31,最新技術を搭載したシェーバー。回転式シェーバーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,782,W50×D22×H72cm
PRD-ELT-00135,防水シェーバー,Rotary Shaver,家電,美容家電,シェーバー,FutureHome Original,SUP-00021,53636.55,166648.33,165098.4,90,active,2023-09-29,最新技術を搭載したシェーバー。防水シェーバーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1978,W21×D25×H58cm
PRD-ELT-00136,防水シェーバー,Foil Shaver,家電,美容家電,シェーバー,FutureHome Original,SUP-00045,35325.37,86832.26,76464.31,13,active,2024-11-01,最新技術を搭載したシェーバー。防水シェーバーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1098,W20×D33×H39cm
PRD-ELT-00137,電気シェーバー,Electric Shaver,家電,美容家電,シェーバー,PowerPlus Original,SUP-00022,68467.06,162385.78,147802.9,440,active,2022-07-09,最新技術を搭載したシェーバー。電気シェーバーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2110,W32×D24×H79cm
PRD-ELT-00138,往復式シェーバー,Rotary Shaver,家電,美容家電,シェーバー,SmartHome Original,SUP-00003,27948.53,77502.28,72492.98,218,active,2020-07-20,最新技術を搭載したシェーバー。往復式シェーバーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2944,W49×D35×H59cm
PRD-ELT-00139,電気シェーバー,Electric Shaver,家電,美容家電,シェーバー,TechnoLife Original,SUP-00042,79699.64,274332.33,263497.99,258,active,2020-11-04,最新技術を搭載したシェーバー。電気シェーバーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,1074,W48×D29×H70cm
PRD-ELT-00140,電気シェーバー,Rotary Shaver,家電,美容家電,シェーバー,SmartHome Original,SUP-00036,66688.04,143893.29,112317.83,106,active,2024-04-12,最新技術を搭載したシェーバー。電気シェーバーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2046,W33×D24×H69cm
PRD-ELT-00141,往復式シェーバー,Rotary Shaver,家電,美容家電,シェーバー,FutureHome Original,SUP-00003,36194.83,108688.16,88225.4,481,active,2023-05-08,最新技術を搭載したシェーバー。往復式シェーバーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2717,W20×D40×H41cm
PRD-ELT-00142,回転式シェーバー,Foil Shaver,家電,美容家電,シェーバー,EcoAppliance Original,SUP-00037,12628.41,34096.35,24265.85,404,active,2023-02-26,最新技術を搭載したシェーバー。回転式シェーバーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2331,W25×D22×H16cm
PRD-ELT-00143,電気シェーバー,Waterproof Shaver,家電,美容家電,シェーバー,PowerPlus Original,SUP-00043,56165.39,134534.19,96509.4,210,active,2020-11-11,最新技術を搭載したシェーバー。電気シェーバーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2606,W32×D25×H79cm
PRD-ELT-00144,電気シェーバー,Rotary Shaver,家電,美容家電,シェーバー,FutureHome Original,SUP-00026,77630.74,211713.32,157030.94,76,active,2024-07-30,最新技術を搭載したシェーバー。電気シェーバーは、快適な生活をサポートする高性能家電です。省エネ設計で環境にも優しく、使いやすさにもこだわりました。,2425,W44×D37×H67cm
PRD-FSH-00001,リネンシャツ,Linen Shirt,ファッション,メンズ,シャツ,ElegantStyle Original,SUP-00017,4778.55,11910.35,9174.63,471,active,2021-05-13,上質な素材とデザインにこだわったシャツ。リネンシャツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,259,XL
PRD-FSH-00002,リネンシャツ,Linen Shirt,ファッション,メンズ,シャツ,UrbanWear Original,SUP-00034,14916.54,43853.41,37519.09,2,discontinued,2023-04-12,上質な素材とデザインにこだわったシャツ。リネンシャツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,534,S
PRD-FSH-00003,カジュアルシャツ,Oxford Shirt,ファッション,メンズ,シャツ,UrbanWear Original,SUP-00026,9625.04,27344.16,23927.25,117,discontinued,2020-01-30,上質な素材とデザインにこだわったシャツ。カジュアルシャツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,428,XL
PRD-FSH-00004,オックスフォードシャツ,Business Shirt,ファッション,メンズ,シャツ,PremiumFashion Original,SUP-00014,3922.65,10793.6,8344.05,54,active,2022-09-10,上質な素材とデザインにこだわったシャツ。オックスフォードシャツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,402,XL
PRD-FSH-00005,ビジネスシャツ,Casual Shirt,ファッション,メンズ,シャツ,PremiumFashion Original,SUP-00023,6914.21,17398.48,12837.25,362,discontinued,2024-01-17,上質な素材とデザインにこだわったシャツ。ビジネスシャツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1468,M
PRD-FSH-00006,リネンシャツ,Oxford Shirt,ファッション,メンズ,シャツ,ElegantStyle Original,SUP-00049,5997.47,13258.83,9845.65,433,active,2024-08-29,上質な素材とデザインにこだわったシャツ。リネンシャツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1376,M
PRD-FSH-00007,リネンシャツ,Oxford Shirt,ファッション,メンズ,シャツ,UrbanWear Original,SUP-00020,1469.72,4677.43,3347.06,383,active,2020-07-11,上質な素材とデザインにこだわったシャツ。リネンシャツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,905,L
PRD-FSH-00008,ビジネスシャツ,Business Shirt,ファッション,メンズ,シャツ,PremiumFashion Original,SUP-00022,6029.62,15630.38,12793.76,471,active,2023-07-06,上質な素材とデザインにこだわったシャツ。ビジネスシャツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1123,L
PRD-FSH-00009,オックスフォードシャツ,Business Shirt,ファッション,メンズ,シャツ,UrbanWear Original,SUP-00036,10540.64,26739.41,19745.31,158,active,2021-11-24,上質な素材とデザインにこだわったシャツ。オックスフォードシャツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1195,M
PRD-FSH-00010,ビジネスシャツ,Casual Shirt,ファッション,メンズ,シャツ,UrbanWear Original,SUP-00043,8400.13,17217.19,16693.36,490,active,2024-07-31,上質な素材とデザインにこだわったシャツ。ビジネスシャツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,616,M
PRD-FSH-00011,オックスフォードシャツ,Linen Shirt,ファッション,メンズ,シャツ,CasualMode Original,SUP-00011,5558.13,13965.98,13841.53,287,active,2022-11-13,上質な素材とデザインにこだわったシャツ。オックスフォードシャツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,614,XL
PRD-FSH-00012,カジュアルシャツ,Oxford Shirt,ファッション,メンズ,シャツ,ElegantStyle Original,SUP-00004,3219.78,10134.62,7272.65,166,active,2023-03-23,上質な素材とデザインにこだわったシャツ。カジュアルシャツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,974,Free
PRD-FSH-00013,ジーンズ,Chino Pants,ファッション,メンズ,パンツ,CasualMode Original,SUP-00009,11716.35,36939.57,32758.0,128,active,2020-02-12,上質な素材とデザインにこだわったパンツ。ジーンズは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,630,M
PRD-FSH-00014,チノパン,Chino Pants,ファッション,メンズ,パンツ,CasualMode Original,SUP-00050,5484.39,17120.29,14738.16,196,discontinued,2024-12-02,上質な素材とデザインにこだわったパンツ。チノパンは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1037,XL
PRD-FSH-00015,スラックス,Slacks,ファッション,メンズ,パンツ,CasualMode Original,SUP-00039,6211.71,20960.32,19224.81,14,active,2022-05-14,上質な素材とデザインにこだわったパンツ。スラックスは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,568,XL
PRD-FSH-00016,ジーンズ,Slacks,ファッション,メンズ,パンツ,ElegantStyle Original,SUP-00004,5005.25,14880.74,13973.19,141,active,2020-11-29,上質な素材とデザインにこだわったパンツ。ジーンズは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,517,L
PRD-FSH-00017,ジーンズ,Jeans,ファッション,メンズ,パンツ,UrbanWear Original,SUP-00036,9285.35,28466.95,28000.35,225,active,2020-10-16,上質な素材とデザインにこだわったパンツ。ジーンズは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1479,S
PRD-FSH-00018,カーゴパンツ,Slacks,ファッション,メンズ,パンツ,UrbanWear Original,SUP-00003,1334.23,2998.29,2782.6,20,active,2020-09-11,上質な素材とデザインにこだわったパンツ。カーゴパンツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,176,S
PRD-FSH-00019,カーゴパンツ,Chino Pants,ファッション,メンズ,パンツ,UrbanWear Original,SUP-00012,2276.76,5404.17,4314.79,287,active,2023-11-13,上質な素材とデザインにこだわったパンツ。カーゴパンツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1153,L
PRD-FSH-00020,カーゴパンツ,Chino Pants,ファッション,メンズ,パンツ,StyleCraft Original,SUP-00040,3130.79,10788.55,9961.99,405,active,2022-08-15,上質な素材とデザインにこだわったパンツ。カーゴパンツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,386,Free
PRD-FSH-00021,カーゴパンツ,Chino Pants,ファッション,メンズ,パンツ,ElegantStyle Original,SUP-00021,1215.15,2974.32,2856.12,278,active,2024-09-08,上質な素材とデザインにこだわったパンツ。カーゴパンツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,210,S
PRD-FSH-00022,カーゴパンツ,Cargo Pants,ファッション,メンズ,パンツ,PremiumFashion Original,SUP-00017,2075.76,5374.81,4575.85,423,active,2023-11-13,上質な素材とデザインにこだわったパンツ。カーゴパンツは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1043,L
PRD-FSH-00023,チノパン,Slacks,ファッション,メンズ,パンツ,ElegantStyle Original,SUP-00024,12449.38,26207.39,25322.67,358,active,2024-07-04,上質な素材とデザインにこだわったパンツ。チノパンは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,893,Free
PRD-FSH-00024,ジーンズ,Chino Pants,ファッション,メンズ,パンツ,CasualMode Original,SUP-00018,10206.4,21229.81,18132.75,137,active,2020-12-30,上質な素材とデザインにこだわったパンツ。ジーンズは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,576,S
PRD-FSH-00025,ブレザー,Blazer,ファッション,メンズ,ジャケット,UrbanWear Original,SUP-00034,4976.52,17417.54,15576.38,247,active,2020-10-09,上質な素材とデザインにこだわったジャケット。ブレザーは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1129,XL
PRD-FSH-00026,カーディガン,Blazer,ファッション,メンズ,ジャケット,PremiumFashion Original,SUP-00030,11097.03,33252.75,24357.26,323,discontinued,2022-11-14,上質な素材とデザインにこだわったジャケット。カーディガンは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,898,S
PRD-FSH-00027,カーディガン,Bomber Jacket,ファッション,メンズ,ジャケット,ElegantStyle Original,SUP-00046,4532.5,14702.88,12435.2,5,active,2020-11-14,上質な素材とデザインにこだわったジャケット。カーディガンは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,602,XL
PRD-FSH-00028,テーラードジャケット,Blazer,ファッション,メンズ,ジャケット,CasualMode Original,SUP-00049,5918.28,13100.34,12083.69,326,active,2024-12-16,上質な素材とデザインにこだわったジャケット。テーラードジャケットは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,801,XL
PRD-FSH-00029,テーラードジャケット,Bomber Jacket,ファッション,メンズ,ジャケット,StyleCraft Original,SUP-00010,4019.3,10599.42,10081.56,14,active,2023-12-09,上質な素材とデザインにこだわったジャケット。テーラードジャケットは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,497,S
PRD-FSH-00030,ボンバージャケット,Cardigan,ファッション,メンズ,ジャケット,ElegantStyle Original,SUP-00012,7263.29,16295.14,12317.37,266,active,2020-11-01,上質な素材とデザインにこだわったジャケット。ボンバージャケットは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1406,L
PRD-FSH-00031,カーディガン,Tailored Jacket,ファッション,メンズ,ジャケット,UrbanWear Original,SUP-00002,2991.9,8260.78,6391.55,461,active,2024-07-27,上質な素材とデザインにこだわったジャケット。カーディガンは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,523,Free
PRD-FSH-00032,テーラードジャケット,Bomber Jacket,ファッション,メンズ,ジャケット,UrbanWear Original,SUP-00011,8129.81,23281.5,23054.0,478,active,2022-10-12,上質な素材とデザインにこだわったジャケット。テーラードジャケットは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,188,Free
PRD-FSH-00033,カーディガン,Tailored Jacket,ファッション,メンズ,ジャケット,UrbanWear Original,SUP-00039,12820.3,36527.61,27244.08,269,active,2022-08-02,上質な素材とデザインにこだわったジャケット。カーディガンは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,833,L
PRD-FSH-00034,カーディガン,Bomber Jacket,ファッション,メンズ,ジャケット,ElegantStyle Original,SUP-00019,12428.74,33611.76,29167.56,172,active,2022-02-23,上質な素材とデザインにこだわったジャケット。カーディガンは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,510,S
PRD-FSH-00035,ボンバージャケット,Tailored Jacket,ファッション,メンズ,ジャケット,UrbanWear Original,SUP-00007,1372.49,4744.7,4631.37,222,discontinued,2021-12-23,上質な素材とデザインにこだわったジャケット。ボンバージャケットは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,304,XL
PRD-FSH-00036,テーラードジャケット,Bomber Jacket,ファッション,メンズ,ジャケット,CasualMode Original,SUP-00010,9135.7,30935.06,25994.41,306,active,2023-07-24,上質な素材とデザインにこだわったジャケット。テーラードジャケットは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,974,XL
PRD-FSH-00037,ダウンジャケット,Down Jacket,ファッション,メンズ,アウター,UrbanWear Original,SUP-00002,3949.97,12436.58,11783.09,396,active,2022-12-30,上質な素材とデザインにこだわったアウター。ダウンジャケットは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1073,XL
PRD-FSH-00038,トレンチコート,Parka,ファッション,メンズ,アウター,PremiumFashion Original,SUP-00035,11849.71,39324.84,30434.35,225,active,2020-04-16,上質な素材とデザインにこだわったアウター。トレンチコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,810,XL
PRD-FSH-00039,パーカー,Coat,ファッション,メンズ,アウター,StyleCraft Original,SUP-00013,12076.18,25057.43,19027.17,227,active,2024-11-30,上質な素材とデザインにこだわったアウター。パーカーは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,800,Free
PRD-FSH-00040,トレンチコート,Parka,ファッション,メンズ,アウター,CasualMode Original,SUP-00012,7964.43,24574.77,22442.28,194,active,2020-04-06,上質な素材とデザインにこだわったアウター。トレンチコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,362,S
PRD-FSH-00041,パーカー,Trench Coat,ファッション,メンズ,アウター,UrbanWear Original,SUP-00032,2400.13,7421.86,5456.28,373,active,2023-09-29,上質な素材とデザインにこだわったアウター。パーカーは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1023,M
PRD-FSH-00042,コート,Down Jacket,ファッション,メンズ,アウター,StyleCraft Original,SUP-00010,4060.82,8352.94,6569.54,424,active,2020-02-14,上質な素材とデザインにこだわったアウター。コートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1397,XL
PRD-FSH-00043,コート,Trench Coat,ファッション,メンズ,アウター,PremiumFashion Original,SUP-00040,9589.08,24397.95,18947.4,318,active,2021-08-30,上質な素材とデザインにこだわったアウター。コートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1248,Free
PRD-FSH-00044,パーカー,Down Jacket,ファッション,メンズ,アウター,StyleCraft Original,SUP-00030,1857.57,4057.6,3069.79,9,active,2021-09-15,上質な素材とデザインにこだわったアウター。パーカーは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,786,M
PRD-FSH-00045,ダウンジャケット,Coat,ファッション,メンズ,アウター,StyleCraft Original,SUP-00014,10815.55,33094.05,26860.55,456,active,2020-06-20,上質な素材とデザインにこだわったアウター。ダウンジャケットは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,163,L
PRD-FSH-00046,ダウンジャケット,Down Jacket,ファッション,メンズ,アウター,StyleCraft Original,SUP-00049,6705.61,18245.97,13127.08,300,active,2021-12-09,上質な素材とデザインにこだわったアウター。ダウンジャケットは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,978,Free
PRD-FSH-00047,コート,Down Jacket,ファッション,メンズ,アウター,PremiumFashion Original,SUP-00040,7822.22,17607.55,17022.65,395,active,2024-08-22,上質な素材とデザインにこだわったアウター。コートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,438,S
PRD-FSH-00048,ダウンジャケット,Parka,ファッション,メンズ,アウター,CasualMode Original,SUP-00001,7543.78,20816.39,17985.05,183,active,2022-05-03,上質な素材とデザインにこだわったアウター。ダウンジャケットは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1337,S
PRD-FSH-00049,レースブラウス,Ribbon Blouse,ファッション,レディース,ブラウス,ElegantStyle Original,SUP-00040,4107.61,10569.44,10095.59,158,discontinued,2020-06-10,上質な素材とデザインにこだわったブラウス。レースブラウスは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,591,Free
PRD-FSH-00050,ストライプブラウス,Chiffon Blouse,ファッション,レディース,ブラウス,ElegantStyle Original,SUP-00014,7077.12,23442.48,19397.49,180,discontinued,2023-08-01,上質な素材とデザインにこだわったブラウス。ストライプブラウスは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1009,M
PRD-FSH-00051,シフォンブラウス,Stripe Blouse,ファッション,レディース,ブラウス,UrbanWear Original,SUP-00047,779.82,2150.33,2105.82,272,active,2020-03-28,上質な素材とデザインにこだわったブラウス。シフォンブラウスは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1341,L
PRD-FSH-00052,レースブラウス,Stripe Blouse,ファッション,レディース,ブラウス,UrbanWear Original,SUP-00006,12178.68,30913.34,21655.84,296,active,2024-08-02,上質な素材とデザインにこだわったブラウス。レースブラウスは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1061,L
PRD-FSH-00053,ストライプブラウス,Ribbon Blouse,ファッション,レディース,ブラウス,PremiumFashion Original,SUP-00049,7603.62,21357.22,20670.08,235,discontinued,2020-02-22,上質な素材とデザインにこだわったブラウス。ストライプブラウスは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,399,Free
PRD-FSH-00054,レースブラウス,Stripe Blouse,ファッション,レディース,ブラウス,ElegantStyle Original,SUP-00047,14203.6,40546.93,30069.85,327,active,2022-05-26,上質な素材とデザインにこだわったブラウス。レースブラウスは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,439,S
PRD-FSH-00055,レースブラウス,Chiffon Blouse,ファッション,レディース,ブラウス,PremiumFashion Original,SUP-00037,8371.79,26695.47,23067.06,154,discontinued,2020-08-03,上質な素材とデザインにこだわったブラウス。レースブラウスは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,949,XL
PRD-FSH-00056,リボンブラウス,Chiffon Blouse,ファッション,レディース,ブラウス,ElegantStyle Original,SUP-00050,8186.73,22685.02,17590.58,323,active,2020-09-11,上質な素材とデザインにこだわったブラウス。リボンブラウスは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,181,L
PRD-FSH-00057,レースブラウス,Ribbon Blouse,ファッション,レディース,ブラウス,PremiumFashion Original,SUP-00009,4055.61,9873.78,8113.71,60,discontinued,2023-10-18,上質な素材とデザインにこだわったブラウス。レースブラウスは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,132,XL
PRD-FSH-00058,リボンブラウス,Chiffon Blouse,ファッション,レディース,ブラウス,ElegantStyle Original,SUP-00042,2517.82,8795.49,6790.66,203,discontinued,2024-04-04,上質な素材とデザインにこだわったブラウス。リボンブラウスは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1100,L
PRD-FSH-00059,レースブラウス,Ribbon Blouse,ファッション,レディース,ブラウス,CasualMode Original,SUP-00012,12576.93,43364.48,34711.13,201,active,2021-09-27,上質な素材とデザインにこだわったブラウス。レースブラウスは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,650,XL
PRD-FSH-00060,ストライプブラウス,Lace Blouse,ファッション,レディース,ブラウス,ElegantStyle Original,SUP-00047,9291.73,31039.29,27405.49,337,active,2020-09-03,上質な素材とデザインにこだわったブラウス。ストライプブラウスは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,569,M
PRD-FSH-00061,フレアスカート,Tight Skirt,ファッション,レディース,スカート,UrbanWear Original,SUP-00050,1718.84,5622.57,5524.17,222,active,2022-08-20,上質な素材とデザインにこだわったスカート。フレアスカートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,232,L
PRD-FSH-00062,プリーツスカート,Pleated Skirt,ファッション,レディース,スカート,UrbanWear Original,SUP-00017,2202.38,7456.91,5931.85,48,active,2024-02-09,上質な素材とデザインにこだわったスカート。プリーツスカートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1123,XL
PRD-FSH-00063,マキシスカート,Maxi Skirt,ファッション,レディース,スカート,CasualMode Original,SUP-00041,4563.09,14008.41,10889.94,54,active,2021-02-02,上質な素材とデザインにこだわったスカート。マキシスカートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1119,S
PRD-FSH-00064,フレアスカート,Maxi Skirt,ファッション,レディース,スカート,ElegantStyle Original,SUP-00017,9908.41,33496.0,25547.79,392,active,2021-03-29,上質な素材とデザインにこだわったスカート。フレアスカートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,216,Free
PRD-FSH-00065,プリーツスカート,Flare Skirt,ファッション,レディース,スカート,PremiumFashion Original,SUP-00025,8281.27,27081.73,26326.93,420,active,2022-09-29,上質な素材とデザインにこだわったスカート。プリーツスカートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1072,M
PRD-FSH-00066,タイトスカート,Maxi Skirt,ファッション,レディース,スカート,CasualMode Original,SUP-00014,6543.73,13647.26,11823.34,375,active,2024-01-08,上質な素材とデザインにこだわったスカート。タイトスカートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1499,XL
PRD-FSH-00067,マキシスカート,Tight Skirt,ファッション,レディース,スカート,UrbanWear Original,SUP-00048,1513.7,3918.44,3139.76,29,discontinued,2024-06-10,上質な素材とデザインにこだわったスカート。マキシスカートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1001,S
PRD-FSH-00068,マキシスカート,Flare Skirt,ファッション,レディース,スカート,UrbanWear Original,SUP-00023,6899.82,16675.55,15323.78,347,active,2020-04-17,上質な素材とデザインにこだわったスカート。マキシスカートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,340,Free
PRD-FSH-00069,フレアスカート,Maxi Skirt,ファッション,レディース,スカート,UrbanWear Original,SUP-00034,10387.55,35961.42,26903.92,493,active,2021-05-16,上質な素材とデザインにこだわったスカート。フレアスカートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,458,Free
PRD-FSH-00070,マキシスカート,Tight Skirt,ファッション,レディース,スカート,UrbanWear Original,SUP-00008,4659.42,10523.84,7997.17,202,discontinued,2023-01-11,上質な素材とデザインにこだわったスカート。マキシスカートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,841,L
PRD-FSH-00071,マキシスカート,Tight Skirt,ファッション,レディース,スカート,UrbanWear Original,SUP-00014,1053.63,3226.0,2791.68,14,active,2024-04-11,上質な素材とデザインにこだわったスカート。マキシスカートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,486,L
PRD-FSH-00072,マキシスカート,Pleated Skirt,ファッション,レディース,スカート,StyleCraft Original,SUP-00001,3910.27,10166.83,9695.56,419,active,2021-07-19,上質な素材とデザインにこだわったスカート。マキシスカートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,433,S
PRD-FSH-00073,シャツワンピース,Casual Dress,ファッション,レディース,ワンピース,PremiumFashion Original,SUP-00022,6366.94,18463.98,14766.13,334,discontinued,2022-05-23,上質な素材とデザインにこだわったワンピース。シャツワンピースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,190,XL
PRD-FSH-00074,カジュアルワンピース,Knit Dress,ファッション,レディース,ワンピース,StyleCraft Original,SUP-00016,5640.39,13104.59,11065.26,231,active,2024-07-07,上質な素材とデザインにこだわったワンピース。カジュアルワンピースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,827,Free
PRD-FSH-00075,カジュアルワンピース,Shirt Dress,ファッション,レディース,ワンピース,UrbanWear Original,SUP-00024,5273.53,10640.42,9676.25,20,discontinued,2022-01-22,上質な素材とデザインにこだわったワンピース。カジュアルワンピースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,749,M
PRD-FSH-00076,シャツワンピース,Knit Dress,ファッション,レディース,ワンピース,UrbanWear Original,SUP-00029,2615.23,5584.72,4592.36,426,discontinued,2020-04-30,上質な素材とデザインにこだわったワンピース。シャツワンピースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1096,XL
PRD-FSH-00077,ニットワンピース,Knit Dress,ファッション,レディース,ワンピース,ElegantStyle Original,SUP-00037,7740.22,24857.56,19223.63,116,active,2022-02-06,上質な素材とデザインにこだわったワンピース。ニットワンピースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,390,S
PRD-FSH-00078,フォーマルワンピース,Casual Dress,ファッション,レディース,ワンピース,StyleCraft Original,SUP-00018,10467.92,22576.28,20179.5,119,discontinued,2021-04-28,上質な素材とデザインにこだわったワンピース。フォーマルワンピースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,127,Free
PRD-FSH-00079,シャツワンピース,Casual Dress,ファッション,レディース,ワンピース,CasualMode Original,SUP-00042,1756.99,4753.25,3489.24,57,active,2022-01-31,上質な素材とデザインにこだわったワンピース。シャツワンピースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,108,XL
PRD-FSH-00080,カジュアルワンピース,Shirt Dress,ファッション,レディース,ワンピース,StyleCraft Original,SUP-00022,13569.04,43348.81,33792.03,320,discontinued,2020-09-22,上質な素材とデザインにこだわったワンピース。カジュアルワンピースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1327,S
PRD-FSH-00081,ニットワンピース,Shirt Dress,ファッション,レディース,ワンピース,UrbanWear Original,SUP-00016,1496.42,3120.44,2747.16,395,discontinued,2020-07-19,上質な素材とデザインにこだわったワンピース。ニットワンピースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,483,M
PRD-FSH-00082,フォーマルワンピース,Formal Dress,ファッション,レディース,ワンピース,StyleCraft Original,SUP-00047,8885.94,22671.33,20443.15,211,discontinued,2020-01-18,上質な素材とデザインにこだわったワンピース。フォーマルワンピースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,304,S
PRD-FSH-00083,シャツワンピース,Knit Dress,ファッション,レディース,ワンピース,ElegantStyle Original,SUP-00020,10231.9,29598.42,24984.31,320,discontinued,2020-08-15,上質な素材とデザインにこだわったワンピース。シャツワンピースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1477,XL
PRD-FSH-00084,シャツワンピース,Shirt Dress,ファッション,レディース,ワンピース,ElegantStyle Original,SUP-00034,944.39,1951.19,1566.88,42,active,2024-04-01,上質な素材とデザインにこだわったワンピース。シャツワンピースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1014,L
PRD-FSH-00085,トレンチコート,Duffle Coat,ファッション,レディース,コート,PremiumFashion Original,SUP-00002,9953.73,21411.89,21232.02,379,active,2023-10-05,上質な素材とデザインにこだわったコート。トレンチコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,971,M
PRD-FSH-00086,ダッフルコート,Duffle Coat,ファッション,レディース,コート,StyleCraft Original,SUP-00040,1756.64,5528.53,4403.18,262,active,2021-08-06,上質な素材とデザインにこだわったコート。ダッフルコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1192,L
PRD-FSH-00087,トレンチコート,Long Coat,ファッション,レディース,コート,CasualMode Original,SUP-00019,13177.75,44582.88,41497.89,386,active,2020-02-07,上質な素材とデザインにこだわったコート。トレンチコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,485,M
PRD-FSH-00088,ダッフルコート,Duffle Coat,ファッション,レディース,コート,CasualMode Original,SUP-00004,8735.32,19950.94,14139.99,44,active,2020-06-25,上質な素材とデザインにこだわったコート。ダッフルコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,499,L
PRD-FSH-00089,チェスターコート,Trench Coat,ファッション,レディース,コート,UrbanWear Original,SUP-00041,3267.87,10146.44,9482.95,169,active,2023-09-30,上質な素材とデザインにこだわったコート。チェスターコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,792,Free
PRD-FSH-00090,ダッフルコート,Duffle Coat,ファッション,レディース,コート,PremiumFashion Original,SUP-00046,2592.89,6335.54,5611.7,138,active,2021-08-31,上質な素材とデザインにこだわったコート。ダッフルコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1292,S
PRD-FSH-00091,ダッフルコート,Duffle Coat,ファッション,レディース,コート,CasualMode Original,SUP-00046,1308.93,3809.89,2963.37,105,discontinued,2023-10-18,上質な素材とデザインにこだわったコート。ダッフルコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,535,XL
PRD-FSH-00092,チェスターコート,Trench Coat,ファッション,レディース,コート,PremiumFashion Original,SUP-00031,502.47,1670.59,1492.72,142,active,2020-12-20,上質な素材とデザインにこだわったコート。チェスターコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1010,M
PRD-FSH-00093,ダッフルコート,Trench Coat,ファッション,レディース,コート,PremiumFashion Original,SUP-00047,3469.19,8783.98,8706.99,224,active,2024-05-26,上質な素材とデザインにこだわったコート。ダッフルコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,941,S
PRD-FSH-00094,トレンチコート,Duffle Coat,ファッション,レディース,コート,UrbanWear Original,SUP-00002,6181.71,20893.72,16663.15,194,active,2024-12-06,上質な素材とデザインにこだわったコート。トレンチコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,430,Free
PRD-FSH-00095,トレンチコート,Chester Coat,ファッション,レディース,コート,ElegantStyle Original,SUP-00045,4891.13,11142.54,8041.62,289,discontinued,2024-05-27,上質な素材とデザインにこだわったコート。トレンチコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,237,S
PRD-FSH-00096,ダッフルコート,Duffle Coat,ファッション,レディース,コート,ElegantStyle Original,SUP-00007,2475.14,8234.77,7245.85,246,active,2024-01-07,上質な素材とデザインにこだわったコート。ダッフルコートは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1261,Free
PRD-FSH-00097,リュックサック,Tote Bag,ファッション,アクセサリー,バッグ,CasualMode Original,SUP-00010,6264.59,18075.76,14221.47,113,discontinued,2024-10-07,上質な素材とデザインにこだわったバッグ。リュックサックは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1205,S
PRD-FSH-00098,ショルダーバッグ,Shoulder Bag,ファッション,アクセサリー,バッグ,StyleCraft Original,SUP-00048,4410.38,14108.15,9946.23,94,active,2022-08-12,上質な素材とデザインにこだわったバッグ。ショルダーバッグは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,719,XL
PRD-FSH-00099,トートバッグ,Shoulder Bag,ファッション,アクセサリー,バッグ,CasualMode Original,SUP-00032,8442.19,18417.89,17769.64,234,discontinued,2021-01-01,上質な素材とデザインにこだわったバッグ。トートバッグは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,437,Free
PRD-FSH-00100,ハンドバッグ,Shoulder Bag,ファッション,アクセサリー,バッグ,ElegantStyle Original,SUP-00040,12914.5,30327.19,24926.64,224,active,2021-10-27,上質な素材とデザインにこだわったバッグ。ハンドバッグは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1228,Free
PRD-FSH-00101,ショルダーバッグ,Shoulder Bag,ファッション,アクセサリー,バッグ,CasualMode Original,SUP-00006,5787.09,16803.74,15240.59,124,discontinued,2020-02-08,上質な素材とデザインにこだわったバッグ。ショルダーバッグは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,705,S
PRD-FSH-00102,ショルダーバッグ,Backpack,ファッション,アクセサリー,バッグ,ElegantStyle Original,SUP-00019,14400.62,29734.3,24167.11,371,active,2022-09-27,上質な素材とデザインにこだわったバッグ。ショルダーバッグは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1438,L
PRD-FSH-00103,ショルダーバッグ,Shoulder Bag,ファッション,アクセサリー,バッグ,ElegantStyle Original,SUP-00017,7160.96,24211.3,22993.87,325,discontinued,2024-09-02,上質な素材とデザインにこだわったバッグ。ショルダーバッグは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1141,M
PRD-FSH-00104,ハンドバッグ,Tote Bag,ファッション,アクセサリー,バッグ,ElegantStyle Original,SUP-00004,9997.85,20008.95,14329.14,219,active,2020-03-29,上質な素材とデザインにこだわったバッグ。ハンドバッグは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,104,S
PRD-FSH-00105,リュックサック,Shoulder Bag,ファッション,アクセサリー,バッグ,CasualMode Original,SUP-00023,1343.01,3702.51,2975.38,384,active,2020-03-30,上質な素材とデザインにこだわったバッグ。リュックサックは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1214,XL
PRD-FSH-00106,ショルダーバッグ,Tote Bag,ファッション,アクセサリー,バッグ,ElegantStyle Original,SUP-00012,9045.45,27336.5,26238.04,401,active,2021-03-25,上質な素材とデザインにこだわったバッグ。ショルダーバッグは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1293,M
PRD-FSH-00107,ハンドバッグ,Handbag,ファッション,アクセサリー,バッグ,ElegantStyle Original,SUP-00021,4708.68,14789.63,13374.52,330,active,2024-02-26,上質な素材とデザインにこだわったバッグ。ハンドバッグは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,266,L
PRD-FSH-00108,ショルダーバッグ,Tote Bag,ファッション,アクセサリー,バッグ,PremiumFashion Original,SUP-00023,3381.17,8258.37,7462.23,179,active,2023-02-12,上質な素材とデザインにこだわったバッグ。ショルダーバッグは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,604,L
PRD-FSH-00109,二つ折り財布,Bifold Wallet,ファッション,アクセサリー,財布,CasualMode Original,SUP-00002,4717.92,15061.39,14344.69,330,active,2021-05-05,上質な素材とデザインにこだわった財布。二つ折り財布は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,193,Free
PRD-FSH-00110,長財布,Bifold Wallet,ファッション,アクセサリー,財布,StyleCraft Original,SUP-00044,13005.9,39891.67,37925.28,12,active,2022-04-16,上質な素材とデザインにこだわった財布。長財布は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1108,M
PRD-FSH-00111,長財布,Bifold Wallet,ファッション,アクセサリー,財布,StyleCraft Original,SUP-00036,9558.64,24836.6,21008.67,277,active,2023-07-14,上質な素材とデザインにこだわった財布。長財布は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,307,XL
PRD-FSH-00112,カードケース,Card Case,ファッション,アクセサリー,財布,ElegantStyle Original,SUP-00042,5111.91,17030.89,15872.26,233,active,2020-06-14,上質な素材とデザインにこだわった財布。カードケースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,308,S
PRD-FSH-00113,長財布,Coin Case,ファッション,アクセサリー,財布,CasualMode Original,SUP-00004,5633.96,11757.05,8465.93,365,active,2020-05-09,上質な素材とデザインにこだわった財布。長財布は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1193,L
PRD-FSH-00114,二つ折り財布,Bifold Wallet,ファッション,アクセサリー,財布,ElegantStyle Original,SUP-00011,2348.07,6661.19,6260.92,409,active,2022-12-15,上質な素材とデザインにこだわった財布。二つ折り財布は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,117,S
PRD-FSH-00115,コインケース,Bifold Wallet,ファッション,アクセサリー,財布,StyleCraft Original,SUP-00043,6245.46,21074.08,15210.93,368,active,2020-04-13,上質な素材とデザインにこだわった財布。コインケースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,911,Free
PRD-FSH-00116,カードケース,Bifold Wallet,ファッション,アクセサリー,財布,StyleCraft Original,SUP-00050,8361.67,26022.47,20089.09,443,active,2021-11-15,上質な素材とデザインにこだわった財布。カードケースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,660,S
PRD-FSH-00117,長財布,Coin Case,ファッション,アクセサリー,財布,ElegantStyle Original,SUP-00033,6686.25,22580.76,19540.54,217,active,2022-12-23,上質な素材とデザインにこだわった財布。長財布は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1233,Free
PRD-FSH-00118,カードケース,Long Wallet,ファッション,アクセサリー,財布,ElegantStyle Original,SUP-00026,11058.18,35382.29,29217.38,218,active,2024-11-03,上質な素材とデザインにこだわった財布。カードケースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,282,M
PRD-FSH-00119,カードケース,Long Wallet,ファッション,アクセサリー,財布,UrbanWear Original,SUP-00041,12788.4,43686.49,34164.33,338,active,2022-07-02,上質な素材とデザインにこだわった財布。カードケースは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,265,Free
PRD-FSH-00120,長財布,Long Wallet,ファッション,アクセサリー,財布,CasualMode Original,SUP-00037,12744.73,27982.99,25816.1,265,discontinued,2022-06-25,上質な素材とデザインにこだわった財布。長財布は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,265,M
PRD-FSH-00121,メッシュベルト,Leather Belt,ファッション,アクセサリー,ベルト,PremiumFashion Original,SUP-00036,11901.86,37834.2,34534.42,281,active,2023-10-06,上質な素材とデザインにこだわったベルト。メッシュベルトは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,211,M
PRD-FSH-00122,レザーベルト,Leather Belt,ファッション,アクセサリー,ベルト,PremiumFashion Original,SUP-00017,12866.87,28821.8,27657.3,294,active,2020-05-03,上質な素材とデザインにこだわったベルト。レザーベルトは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,704,XL
PRD-FSH-00123,メッシュベルト,Mesh Belt,ファッション,アクセサリー,ベルト,UrbanWear Original,SUP-00039,12007.47,40400.72,38158.91,273,active,2024-05-03,上質な素材とデザインにこだわったベルト。メッシュベルトは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,873,XL
PRD-FSH-00124,レザーベルト,Business Belt,ファッション,アクセサリー,ベルト,UrbanWear Original,SUP-00028,834.41,2832.1,2287.96,309,active,2020-01-18,上質な素材とデザインにこだわったベルト。レザーベルトは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1388,S
PRD-FSH-00125,レザーベルト,Mesh Belt,ファッション,アクセサリー,ベルト,StyleCraft Original,SUP-00040,12005.83,31580.63,27567.92,182,active,2023-03-16,上質な素材とデザインにこだわったベルト。レザーベルトは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1285,XL
PRD-FSH-00126,カジュアルベルト,Business Belt,ファッション,アクセサリー,ベルト,PremiumFashion Original,SUP-00019,1483.43,4801.31,4380.85,367,discontinued,2022-11-28,上質な素材とデザインにこだわったベルト。カジュアルベルトは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1462,XL
PRD-FSH-00127,ビジネスベルト,Mesh Belt,ファッション,アクセサリー,ベルト,CasualMode Original,SUP-00013,7129.02,20911.17,15468.45,253,active,2023-02-28,上質な素材とデザインにこだわったベルト。ビジネスベルトは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,509,Free
PRD-FSH-00128,メッシュベルト,Casual Belt,ファッション,アクセサリー,ベルト,StyleCraft Original,SUP-00032,6271.3,21890.02,16017.77,183,active,2024-11-10,上質な素材とデザインにこだわったベルト。メッシュベルトは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,420,M
PRD-FSH-00129,カジュアルベルト,Leather Belt,ファッション,アクセサリー,ベルト,ElegantStyle Original,SUP-00003,2862.62,8969.78,8380.15,369,active,2024-12-28,上質な素材とデザインにこだわったベルト。カジュアルベルトは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,636,XL
PRD-FSH-00130,レザーベルト,Business Belt,ファッション,アクセサリー,ベルト,UrbanWear Original,SUP-00046,645.01,2171.74,2111.83,323,active,2024-02-03,上質な素材とデザインにこだわったベルト。レザーベルトは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,923,Free
PRD-FSH-00131,レザーベルト,Business Belt,ファッション,アクセサリー,ベルト,StyleCraft Original,SUP-00011,7970.42,17730.53,15964.59,238,discontinued,2023-03-27,上質な素材とデザインにこだわったベルト。レザーベルトは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1023,M
PRD-FSH-00132,メッシュベルト,Leather Belt,ファッション,アクセサリー,ベルト,StyleCraft Original,SUP-00004,14251.62,33241.29,31543.44,242,active,2022-02-25,上質な素材とデザインにこだわったベルト。メッシュベルトは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1190,Free
PRD-FSH-00133,ハット,Cap,ファッション,アクセサリー,帽子,ElegantStyle Original,SUP-00046,9308.53,20239.7,18259.7,260,discontinued,2023-10-13,上質な素材とデザインにこだわった帽子。ハットは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1417,XL
PRD-FSH-00134,ニット帽,Knit Cap,ファッション,アクセサリー,帽子,UrbanWear Original,SUP-00018,13391.85,45704.63,36921.95,27,active,2021-02-27,上質な素材とデザインにこだわった帽子。ニット帽は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,516,XL
PRD-FSH-00135,ベレー帽,Beret,ファッション,アクセサリー,帽子,StyleCraft Original,SUP-00040,5499.6,14790.35,10902.94,408,active,2021-01-27,上質な素材とデザインにこだわった帽子。ベレー帽は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,617,L
PRD-FSH-00136,ベレー帽,Hat,ファッション,アクセサリー,帽子,CasualMode Original,SUP-00025,4378.29,11179.11,7922.95,46,active,2024-06-20,上質な素材とデザインにこだわった帽子。ベレー帽は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1069,S
PRD-FSH-00137,キャップ,Cap,ファッション,アクセサリー,帽子,StyleCraft Original,SUP-00040,13435.3,31755.61,24118.76,93,active,2024-02-12,上質な素材とデザインにこだわった帽子。キャップは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,551,XL
PRD-FSH-00138,ベレー帽,Knit Cap,ファッション,アクセサリー,帽子,CasualMode Original,SUP-00015,13334.54,34242.7,27375.53,397,active,2021-07-21,上質な素材とデザインにこだわった帽子。ベレー帽は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1148,L
PRD-FSH-00139,ベレー帽,Hat,ファッション,アクセサリー,帽子,UrbanWear Original,SUP-00012,2920.19,7595.85,7508.9,482,active,2023-06-02,上質な素材とデザインにこだわった帽子。ベレー帽は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,447,M
PRD-FSH-00140,ニット帽,Hat,ファッション,アクセサリー,帽子,ElegantStyle Original,SUP-00002,5230.23,16493.58,15418.14,357,discontinued,2022-11-22,上質な素材とデザインにこだわった帽子。ニット帽は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,634,M
PRD-FSH-00141,ニット帽,Knit Cap,ファッション,アクセサリー,帽子,StyleCraft Original,SUP-00029,1422.56,4723.72,4133.01,64,active,2021-12-31,上質な素材とデザインにこだわった帽子。ニット帽は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,414,L
PRD-FSH-00142,ハット,Beret,ファッション,アクセサリー,帽子,StyleCraft Original,SUP-00016,11923.97,29794.66,25466.72,221,active,2022-06-28,上質な素材とデザインにこだわった帽子。ハットは、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1137,XL
PRD-FSH-00143,ベレー帽,Hat,ファッション,アクセサリー,帽子,CasualMode Original,SUP-00040,2572.95,5761.19,5734.9,413,active,2020-04-03,上質な素材とデザインにこだわった帽子。ベレー帽は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,892,M
PRD-FSH-00144,ニット帽,Cap,ファッション,アクセサリー,帽子,ElegantStyle Original,SUP-00045,13669.2,36138.59,35677.24,492,discontinued,2024-10-06,上質な素材とデザインにこだわった帽子。ニット帽は、様々なシーンで活躍するファッションアイテムです。着心地の良さと耐久性を兼ね備えています。,1261,Free
PRD-BKS-00001,組織マネジメント実践,Business Strategy Basics,書籍,ビジネス,経営,TechPublish Original,SUP-00048,688.07,1985.14,1795.7,153,active,2024-01-31,実践的な知識とノウハウが詰まった経営の書籍。組織マネジメント実践は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,758,B5判
PRD-BKS-00002,経営戦略入門,Innovation Management,書籍,ビジネス,経営,BusinessBooks Original,SUP-00033,1603.03,4322.22,3329.95,84,active,2020-01-10,実践的な知識とノウハウが詰まった経営の書籍。経営戦略入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,540,A4判
PRD-BKS-00003,リーダーシップの教科書,Organization Management,書籍,ビジネス,経営,KnowledgePress Original,SUP-00016,2152.73,4615.64,3899.27,285,active,2024-01-19,実践的な知識とノウハウが詰まった経営の書籍。リーダーシップの教科書は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,606,文庫判
PRD-BKS-00004,イノベーション経営,Leadership Handbook,書籍,ビジネス,経営,AcademicPress Original,SUP-00021,1009.69,2757.62,2247.42,482,active,2021-05-29,実践的な知識とノウハウが詰まった経営の書籍。イノベーション経営は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,791,新書判
PRD-BKS-00005,経営戦略入門,Innovation Management,書籍,ビジネス,経営,ModernReads Original,SUP-00018,1220.31,3630.29,2742.08,248,active,2022-09-13,実践的な知識とノウハウが詰まった経営の書籍。経営戦略入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,269,新書判
PRD-BKS-00006,リーダーシップの教科書,Innovation Management,書籍,ビジネス,経営,BusinessBooks Original,SUP-00045,1359.2,4522.4,4238.85,226,active,2021-12-09,実践的な知識とノウハウが詰まった経営の書籍。リーダーシップの教科書は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,596,A5判
PRD-BKS-00007,経営戦略入門,Business Strategy Basics,書籍,ビジネス,経営,KnowledgePress Original,SUP-00044,1018.65,2621.49,2314.82,278,active,2021-10-25,実践的な知識とノウハウが詰まった経営の書籍。経営戦略入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,703,新書判
PRD-BKS-00008,リーダーシップの教科書,Organization Management,書籍,ビジネス,経営,ModernReads Original,SUP-00023,1833.22,5531.9,4453.47,33,active,2021-10-08,実践的な知識とノウハウが詰まった経営の書籍。リーダーシップの教科書は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,414,A5判
PRD-BKS-00009,リーダーシップの教科書,Organization Management,書籍,ビジネス,経営,TechPublish Original,SUP-00047,596.39,1737.46,1588.91,195,active,2024-09-11,実践的な知識とノウハウが詰まった経営の書籍。リーダーシップの教科書は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,572,B5判
PRD-BKS-00010,経営戦略入門,Innovation Management,書籍,ビジネス,経営,ModernReads Original,SUP-00037,1067.29,3158.18,2890.73,115,active,2023-12-26,実践的な知識とノウハウが詰まった経営の書籍。経営戦略入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,597,A4判
PRD-BKS-00011,リーダーシップの教科書,Business Strategy Basics,書籍,ビジネス,経営,TechPublish Original,SUP-00003,2356.94,6440.04,5834.16,239,discontinued,2021-04-27,実践的な知識とノウハウが詰まった経営の書籍。リーダーシップの教科書は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,752,新書判
PRD-BKS-00012,組織マネジメント実践,Organization Management,書籍,ビジネス,経営,KnowledgePress Original,SUP-00006,508.35,1742.72,1364.58,113,active,2020-05-03,実践的な知識とノウハウが詰まった経営の書籍。組織マネジメント実践は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,756,新書判
PRD-BKS-00013,ブランド戦略,Brand Strategy,書籍,ビジネス,マーケティング,AcademicPress Original,SUP-00039,1616.58,5584.86,4785.48,330,discontinued,2021-06-07,実践的な知識とノウハウが詰まったマーケティングの書籍。ブランド戦略は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,630,B5判
PRD-BKS-00014,SNSマーケティング実践,SNS Marketing Practice,書籍,ビジネス,マーケティング,BusinessBooks Original,SUP-00039,1655.74,4140.04,3601.18,116,active,2024-08-03,実践的な知識とノウハウが詰まったマーケティングの書籍。SNSマーケティング実践は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,427,A5判
PRD-BKS-00015,コンテンツマーケティング,Brand Strategy,書籍,ビジネス,マーケティング,KnowledgePress Original,SUP-00024,2880.84,7372.57,6692.79,158,active,2023-04-29,実践的な知識とノウハウが詰まったマーケティングの書籍。コンテンツマーケティングは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,464,A4判
PRD-BKS-00016,SNSマーケティング実践,SNS Marketing Practice,書籍,ビジネス,マーケティング,BusinessBooks Original,SUP-00048,1218.16,2822.74,2360.94,19,active,2021-08-08,実践的な知識とノウハウが詰まったマーケティングの書籍。SNSマーケティング実践は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,565,新書判
PRD-BKS-00017,デジタルマーケティング入門,Digital Marketing Guide,書籍,ビジネス,マーケティング,KnowledgePress Original,SUP-00023,1090.59,3327.71,3071.4,111,discontinued,2023-08-17,実践的な知識とノウハウが詰まったマーケティングの書籍。デジタルマーケティング入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,272,A4判
PRD-BKS-00018,デジタルマーケティング入門,Content Marketing,書籍,ビジネス,マーケティング,TechPublish Original,SUP-00033,1365.56,2848.31,2668.47,431,active,2020-07-12,実践的な知識とノウハウが詰まったマーケティングの書籍。デジタルマーケティング入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,637,A5判
PRD-BKS-00019,コンテンツマーケティング,SNS Marketing Practice,書籍,ビジネス,マーケティング,ModernReads Original,SUP-00012,1923.41,6374.24,5612.49,316,active,2022-04-03,実践的な知識とノウハウが詰まったマーケティングの書籍。コンテンツマーケティングは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,222,文庫判
PRD-BKS-00020,SNSマーケティング実践,Content Marketing,書籍,ビジネス,マーケティング,KnowledgePress Original,SUP-00022,2611.86,6284.54,4637.48,267,active,2024-12-01,実践的な知識とノウハウが詰まったマーケティングの書籍。SNSマーケティング実践は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,237,文庫判
PRD-BKS-00021,コンテンツマーケティング,Digital Marketing Guide,書籍,ビジネス,マーケティング,BusinessBooks Original,SUP-00028,2739.52,7785.66,6308.54,73,discontinued,2023-07-05,実践的な知識とノウハウが詰まったマーケティングの書籍。コンテンツマーケティングは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,547,新書判
PRD-BKS-00022,デジタルマーケティング入門,Digital Marketing Guide,書籍,ビジネス,マーケティング,ModernReads Original,SUP-00032,2520.88,6501.58,5253.78,444,active,2024-12-21,実践的な知識とノウハウが詰まったマーケティングの書籍。デジタルマーケティング入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,743,文庫判
PRD-BKS-00023,コンテンツマーケティング,SNS Marketing Practice,書籍,ビジネス,マーケティング,BusinessBooks Original,SUP-00026,2018.58,5183.84,3806.66,234,active,2022-06-08,実践的な知識とノウハウが詰まったマーケティングの書籍。コンテンツマーケティングは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,764,B5判
PRD-BKS-00024,コンテンツマーケティング,Digital Marketing Guide,書籍,ビジネス,マーケティング,KnowledgePress Original,SUP-00035,1413.9,4685.14,3359.06,491,discontinued,2022-08-05,実践的な知識とノウハウが詰まったマーケティングの書籍。コンテンツマーケティングは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,405,B5判
PRD-BKS-00025,時間管理術,Thinking Training,書籍,ビジネス,自己啓発,TechPublish Original,SUP-00014,2996.49,7142.43,5058.72,410,active,2024-10-20,実践的な知識とノウハウが詰まった自己啓発の書籍。時間管理術は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,331,B5判
PRD-BKS-00026,コミュニケーション力向上,Thinking Training,書籍,ビジネス,自己啓発,AcademicPress Original,SUP-00032,2980.77,6153.59,5464.8,372,active,2023-02-21,実践的な知識とノウハウが詰まった自己啓発の書籍。コミュニケーション力向上は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,350,A5判
PRD-BKS-00027,習慣化メソッド,Time Management,書籍,ビジネス,自己啓発,KnowledgePress Original,SUP-00043,1367.96,3418.88,3149.79,236,active,2021-02-24,実践的な知識とノウハウが詰まった自己啓発の書籍。習慣化メソッドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,280,B5判
PRD-BKS-00028,コミュニケーション力向上,Communication Skills,書籍,ビジネス,自己啓発,KnowledgePress Original,SUP-00043,1433.62,4141.04,3490.0,36,active,2023-12-21,実践的な知識とノウハウが詰まった自己啓発の書籍。コミュニケーション力向上は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,451,A4判
PRD-BKS-00029,コミュニケーション力向上,Time Management,書籍,ビジネス,自己啓発,AcademicPress Original,SUP-00034,2148.48,5898.76,4327.2,466,active,2020-11-07,実践的な知識とノウハウが詰まった自己啓発の書籍。コミュニケーション力向上は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,761,A5判
PRD-BKS-00030,時間管理術,Habit Formation Method,書籍,ビジネス,自己啓発,TechPublish Original,SUP-00037,1137.88,3706.68,2784.54,87,discontinued,2021-08-14,実践的な知識とノウハウが詰まった自己啓発の書籍。時間管理術は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,671,新書判
PRD-BKS-00031,思考法トレーニング,Time Management,書籍,ビジネス,自己啓発,KnowledgePress Original,SUP-00028,2760.53,7069.99,6587.88,326,active,2020-08-06,実践的な知識とノウハウが詰まった自己啓発の書籍。思考法トレーニングは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,604,文庫判
PRD-BKS-00032,思考法トレーニング,Habit Formation Method,書籍,ビジネス,自己啓発,KnowledgePress Original,SUP-00002,2280.96,4837.26,4468.98,259,active,2022-06-09,実践的な知識とノウハウが詰まった自己啓発の書籍。思考法トレーニングは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,468,B5判
PRD-BKS-00033,コミュニケーション力向上,Habit Formation Method,書籍,ビジネス,自己啓発,KnowledgePress Original,SUP-00038,1535.9,4972.28,4313.85,426,active,2022-08-06,実践的な知識とノウハウが詰まった自己啓発の書籍。コミュニケーション力向上は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,623,文庫判
PRD-BKS-00034,時間管理術,Time Management,書籍,ビジネス,自己啓発,ModernReads Original,SUP-00016,2901.95,7251.36,6556.66,240,active,2024-09-11,実践的な知識とノウハウが詰まった自己啓発の書籍。時間管理術は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,599,A5判
PRD-BKS-00035,思考法トレーニング,Thinking Training,書籍,ビジネス,自己啓発,BusinessBooks Original,SUP-00011,899.0,1897.77,1764.3,452,active,2020-01-25,実践的な知識とノウハウが詰まった自己啓発の書籍。思考法トレーニングは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,608,A5判
PRD-BKS-00036,習慣化メソッド,Time Management,書籍,ビジネス,自己啓発,BusinessBooks Original,SUP-00023,2714.56,7160.29,7084.26,170,active,2022-03-15,実践的な知識とノウハウが詰まった自己啓発の書籍。習慣化メソッドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,674,新書判
PRD-BKS-00037,リモートワーク入門,Remote Work Guide,書籍,ビジネス,キャリア,TechPublish Original,SUP-00008,2203.25,6341.58,4787.95,53,active,2023-03-08,実践的な知識とノウハウが詰まったキャリアの書籍。リモートワーク入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,455,B5判
PRD-BKS-00038,リモートワーク入門,Remote Work Guide,書籍,ビジネス,キャリア,KnowledgePress Original,SUP-00009,903.77,2155.18,1690.48,148,discontinued,2022-08-24,実践的な知識とノウハウが詰まったキャリアの書籍。リモートワーク入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,690,B5判
PRD-BKS-00039,転職成功ガイド,Career Design Guide,書籍,ビジネス,キャリア,ModernReads Original,SUP-00030,1150.22,2803.81,2547.3,487,active,2023-09-30,実践的な知識とノウハウが詰まったキャリアの書籍。転職成功ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,758,A5判
PRD-BKS-00040,転職成功ガイド,Job Change Success Guide,書籍,ビジネス,キャリア,BusinessBooks Original,SUP-00019,557.92,1820.25,1726.72,330,active,2021-06-25,実践的な知識とノウハウが詰まったキャリアの書籍。転職成功ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,647,A5判
PRD-BKS-00041,転職成功ガイド,Job Change Success Guide,書籍,ビジネス,キャリア,ModernReads Original,SUP-00009,1622.62,3379.83,2528.75,108,active,2020-02-07,実践的な知識とノウハウが詰まったキャリアの書籍。転職成功ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,491,新書判
PRD-BKS-00042,スキルアップ戦略,Remote Work Guide,書籍,ビジネス,キャリア,ModernReads Original,SUP-00045,2863.36,8144.43,6278.42,63,active,2020-10-02,実践的な知識とノウハウが詰まったキャリアの書籍。スキルアップ戦略は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,220,新書判
PRD-BKS-00043,転職成功ガイド,Career Design Guide,書籍,ビジネス,キャリア,TechPublish Original,SUP-00030,1182.09,3212.9,2254.46,350,active,2021-06-14,実践的な知識とノウハウが詰まったキャリアの書籍。転職成功ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,504,B5判
PRD-BKS-00044,リモートワーク入門,Skill Up Strategy,書籍,ビジネス,キャリア,KnowledgePress Original,SUP-00015,1624.91,5421.54,5319.46,96,discontinued,2020-03-25,実践的な知識とノウハウが詰まったキャリアの書籍。リモートワーク入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,567,A4判
PRD-BKS-00045,キャリア設計の教科書,Career Design Guide,書籍,ビジネス,キャリア,AcademicPress Original,SUP-00021,2002.65,4849.24,3653.39,227,active,2020-09-22,実践的な知識とノウハウが詰まったキャリアの書籍。キャリア設計の教科書は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,438,A4判
PRD-BKS-00046,リモートワーク入門,Remote Work Guide,書籍,ビジネス,キャリア,BusinessBooks Original,SUP-00031,1345.87,3502.8,3312.6,488,active,2023-12-14,実践的な知識とノウハウが詰まったキャリアの書籍。リモートワーク入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,227,新書判
PRD-BKS-00047,転職成功ガイド,Career Design Guide,書籍,ビジネス,キャリア,BusinessBooks Original,SUP-00045,1154.86,3688.78,2940.8,369,active,2024-01-25,実践的な知識とノウハウが詰まったキャリアの書籍。転職成功ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,726,B5判
PRD-BKS-00048,転職成功ガイド,Skill Up Strategy,書籍,ビジネス,キャリア,AcademicPress Original,SUP-00025,1580.74,4286.19,3320.13,283,active,2022-10-27,実践的な知識とノウハウが詰まったキャリアの書籍。転職成功ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,639,文庫判
PRD-BKS-00049,Web開発実践,Python Basics,書籍,技術書,プログラミング,TechPublish Original,SUP-00005,561.33,1945.11,1760.77,402,discontinued,2021-06-29,実践的な知識とノウハウが詰まったプログラミングの書籍。Web開発実践は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,384,新書判
PRD-BKS-00050,JavaScript完全ガイド,JavaScript Complete Guide,書籍,技術書,プログラミング,BusinessBooks Original,SUP-00038,2947.61,10083.35,8593.86,48,discontinued,2023-12-23,実践的な知識とノウハウが詰まったプログラミングの書籍。JavaScript完全ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,734,新書判
PRD-BKS-00051,Web開発実践,Algorithm Basics,書籍,技術書,プログラミング,KnowledgePress Original,SUP-00005,601.02,1876.87,1503.13,211,active,2020-01-14,実践的な知識とノウハウが詰まったプログラミングの書籍。Web開発実践は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,749,A5判
PRD-BKS-00052,Web開発実践,Python Basics,書籍,技術書,プログラミング,AcademicPress Original,SUP-00045,1242.09,2802.99,2313.06,102,active,2020-03-25,実践的な知識とノウハウが詰まったプログラミングの書籍。Web開発実践は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,573,A4判
PRD-BKS-00053,JavaScript完全ガイド,JavaScript Complete Guide,書籍,技術書,プログラミング,AcademicPress Original,SUP-00028,1370.08,2813.19,2475.79,408,active,2021-03-06,実践的な知識とノウハウが詰まったプログラミングの書籍。JavaScript完全ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,226,新書判
PRD-BKS-00054,アルゴリズム入門,Python Basics,書籍,技術書,プログラミング,ModernReads Original,SUP-00029,1686.62,4553.18,3919.41,235,active,2020-06-22,実践的な知識とノウハウが詰まったプログラミングの書籍。アルゴリズム入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,554,文庫判
PRD-BKS-00055,Python入門,Web Development Practice,書籍,技術書,プログラミング,TechPublish Original,SUP-00029,2192.49,6070.39,5346.23,58,active,2020-04-15,実践的な知識とノウハウが詰まったプログラミングの書籍。Python入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,725,新書判
PRD-BKS-00056,アルゴリズム入門,JavaScript Complete Guide,書籍,技術書,プログラミング,AcademicPress Original,SUP-00048,1217.86,4060.29,3543.9,458,active,2021-01-22,実践的な知識とノウハウが詰まったプログラミングの書籍。アルゴリズム入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,608,A4判
PRD-BKS-00057,Python入門,JavaScript Complete Guide,書籍,技術書,プログラミング,KnowledgePress Original,SUP-00008,1578.0,4250.49,3158.15,407,active,2024-08-02,実践的な知識とノウハウが詰まったプログラミングの書籍。Python入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,667,B5判
PRD-BKS-00058,JavaScript完全ガイド,Python Basics,書籍,技術書,プログラミング,KnowledgePress Original,SUP-00007,1375.72,3723.18,2736.33,35,active,2022-03-09,実践的な知識とノウハウが詰まったプログラミングの書籍。JavaScript完全ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,372,新書判
PRD-BKS-00059,JavaScript完全ガイド,Web Development Practice,書籍,技術書,プログラミング,BusinessBooks Original,SUP-00023,2931.09,7335.94,6844.32,426,active,2020-08-05,実践的な知識とノウハウが詰まったプログラミングの書籍。JavaScript完全ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,640,新書判
PRD-BKS-00060,アルゴリズム入門,JavaScript Complete Guide,書籍,技術書,プログラミング,AcademicPress Original,SUP-00045,927.88,2653.55,2287.07,46,active,2022-10-07,実践的な知識とノウハウが詰まったプログラミングの書籍。アルゴリズム入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,774,A5判
PRD-BKS-00061,データ分析入門,Statistics Fundamentals,書籍,技術書,データサイエンス,ModernReads Original,SUP-00009,1820.72,6044.1,5463.21,405,active,2020-01-09,実践的な知識とノウハウが詰まったデータサイエンスの書籍。データ分析入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,698,文庫判
PRD-BKS-00062,データ可視化テクニック,SQL Practice Guide,書籍,技術書,データサイエンス,ModernReads Original,SUP-00029,2302.32,6785.27,5452.23,157,active,2024-01-11,実践的な知識とノウハウが詰まったデータサイエンスの書籍。データ可視化テクニックは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,247,文庫判
PRD-BKS-00063,SQL実践ガイド,Data Visualization,書籍,技術書,データサイエンス,BusinessBooks Original,SUP-00023,876.98,2979.95,2338.59,384,active,2021-07-30,実践的な知識とノウハウが詰まったデータサイエンスの書籍。SQL実践ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,396,A5判
PRD-BKS-00064,データ分析入門,SQL Practice Guide,書籍,技術書,データサイエンス,KnowledgePress Original,SUP-00023,1558.65,3922.64,3496.14,492,active,2022-04-28,実践的な知識とノウハウが詰まったデータサイエンスの書籍。データ分析入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,378,文庫判
PRD-BKS-00065,SQL実践ガイド,SQL Practice Guide,書籍,技術書,データサイエンス,TechPublish Original,SUP-00043,1344.27,3083.98,2923.38,475,active,2021-01-29,実践的な知識とノウハウが詰まったデータサイエンスの書籍。SQL実践ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,739,A4判
PRD-BKS-00066,統計学基礎,SQL Practice Guide,書籍,技術書,データサイエンス,BusinessBooks Original,SUP-00014,1926.26,5593.34,4687.15,106,active,2024-12-12,実践的な知識とノウハウが詰まったデータサイエンスの書籍。統計学基礎は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,207,文庫判
PRD-BKS-00067,SQL実践ガイド,Data Visualization,書籍,技術書,データサイエンス,BusinessBooks Original,SUP-00008,2948.62,6953.8,5334.5,467,active,2020-11-12,実践的な知識とノウハウが詰まったデータサイエンスの書籍。SQL実践ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,655,A5判
PRD-BKS-00068,データ分析入門,Data Visualization,書籍,技術書,データサイエンス,ModernReads Original,SUP-00037,2542.93,6129.56,4313.11,488,active,2020-07-23,実践的な知識とノウハウが詰まったデータサイエンスの書籍。データ分析入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,478,文庫判
PRD-BKS-00069,統計学基礎,SQL Practice Guide,書籍,技術書,データサイエンス,TechPublish Original,SUP-00009,1309.24,4054.69,3250.55,293,discontinued,2024-04-08,実践的な知識とノウハウが詰まったデータサイエンスの書籍。統計学基礎は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,403,A5判
PRD-BKS-00070,データ可視化テクニック,Data Analysis Basics,書籍,技術書,データサイエンス,KnowledgePress Original,SUP-00017,547.02,1179.15,1094.03,335,active,2022-08-23,実践的な知識とノウハウが詰まったデータサイエンスの書籍。データ可視化テクニックは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,591,A4判
PRD-BKS-00071,データ可視化テクニック,Data Analysis Basics,書籍,技術書,データサイエンス,AcademicPress Original,SUP-00002,2952.36,8118.27,6755.54,476,discontinued,2021-02-25,実践的な知識とノウハウが詰まったデータサイエンスの書籍。データ可視化テクニックは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,555,文庫判
PRD-BKS-00072,データ可視化テクニック,Statistics Fundamentals,書籍,技術書,データサイエンス,ModernReads Original,SUP-00035,1353.23,3763.18,3102.11,321,active,2020-10-01,実践的な知識とノウハウが詰まったデータサイエンスの書籍。データ可視化テクニックは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,229,B5判
PRD-BKS-00073,ディープラーニング実践,Machine Learning Basics,書籍,技術書,AI・機械学習,KnowledgePress Original,SUP-00001,860.45,1797.34,1311.31,125,discontinued,2022-01-07,実践的な知識とノウハウが詰まったAI・機械学習の書籍。ディープラーニング実践は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,604,B5判
PRD-BKS-00074,機械学習入門,AI Application Guide,書籍,技術書,AI・機械学習,AcademicPress Original,SUP-00046,1754.96,4770.8,3935.83,283,active,2022-08-18,実践的な知識とノウハウが詰まったAI・機械学習の書籍。機械学習入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,778,B5判
PRD-BKS-00075,自然言語処理入門,AI Application Guide,書籍,技術書,AI・機械学習,AcademicPress Original,SUP-00014,1242.37,2578.45,2045.63,440,active,2023-11-07,実践的な知識とノウハウが詰まったAI・機械学習の書籍。自然言語処理入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,374,A4判
PRD-BKS-00076,AI活用ガイド,Machine Learning Basics,書籍,技術書,AI・機械学習,ModernReads Original,SUP-00026,2798.07,8350.5,6607.53,137,active,2020-03-23,実践的な知識とノウハウが詰まったAI・機械学習の書籍。AI活用ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,519,B5判
PRD-BKS-00077,ディープラーニング実践,AI Application Guide,書籍,技術書,AI・機械学習,TechPublish Original,SUP-00018,2244.76,5258.56,5144.84,375,discontinued,2020-10-06,実践的な知識とノウハウが詰まったAI・機械学習の書籍。ディープラーニング実践は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,682,A5判
PRD-BKS-00078,機械学習入門,NLP Basics,書籍,技術書,AI・機械学習,KnowledgePress Original,SUP-00004,1576.45,4306.83,3221.61,48,active,2022-10-26,実践的な知識とノウハウが詰まったAI・機械学習の書籍。機械学習入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,487,B5判
PRD-BKS-00079,AI活用ガイド,Deep Learning Practice,書籍,技術書,AI・機械学習,AcademicPress Original,SUP-00033,1632.88,3442.33,2671.39,156,active,2021-03-09,実践的な知識とノウハウが詰まったAI・機械学習の書籍。AI活用ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,386,A5判
PRD-BKS-00080,AI活用ガイド,AI Application Guide,書籍,技術書,AI・機械学習,BusinessBooks Original,SUP-00002,805.69,2523.73,2329.19,328,active,2020-12-16,実践的な知識とノウハウが詰まったAI・機械学習の書籍。AI活用ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,580,A5判
PRD-BKS-00081,自然言語処理入門,Deep Learning Practice,書籍,技術書,AI・機械学習,ModernReads Original,SUP-00018,1393.75,3417.87,2752.8,172,active,2023-02-19,実践的な知識とノウハウが詰まったAI・機械学習の書籍。自然言語処理入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,649,文庫判
PRD-BKS-00082,ディープラーニング実践,Deep Learning Practice,書籍,技術書,AI・機械学習,ModernReads Original,SUP-00034,2935.29,7339.41,7297.31,194,active,2024-05-04,実践的な知識とノウハウが詰まったAI・機械学習の書籍。ディープラーニング実践は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,324,A4判
PRD-BKS-00083,自然言語処理入門,Deep Learning Practice,書籍,技術書,AI・機械学習,TechPublish Original,SUP-00020,1846.57,3874.16,3528.73,260,discontinued,2023-07-07,実践的な知識とノウハウが詰まったAI・機械学習の書籍。自然言語処理入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,316,文庫判
PRD-BKS-00084,ディープラーニング実践,AI Application Guide,書籍,技術書,AI・機械学習,AcademicPress Original,SUP-00012,1676.94,5227.52,4987.1,313,active,2020-02-24,実践的な知識とノウハウが詰まったAI・機械学習の書籍。ディープラーニング実践は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,308,新書判
PRD-BKS-00085,ネットワーク基礎,Network Fundamentals,書籍,技術書,インフラ,BusinessBooks Original,SUP-00035,1168.83,3822.81,2944.88,323,active,2020-04-06,実践的な知識とノウハウが詰まったインフラの書籍。ネットワーク基礎は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,299,A4判
PRD-BKS-00086,クラウド入門,Cloud Computing Basics,書籍,技術書,インフラ,ModernReads Original,SUP-00026,1317.04,4588.26,3706.33,334,discontinued,2021-02-23,実践的な知識とノウハウが詰まったインフラの書籍。クラウド入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,699,新書判
PRD-BKS-00087,セキュリティ入門,Security Basics,書籍,技術書,インフラ,AcademicPress Original,SUP-00017,1336.48,2914.27,2058.19,99,active,2020-03-27,実践的な知識とノウハウが詰まったインフラの書籍。セキュリティ入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,524,A4判
PRD-BKS-00088,Docker実践ガイド,Docker Practice Guide,書籍,技術書,インフラ,ModernReads Original,SUP-00045,947.42,2680.8,2065.64,175,active,2023-04-29,実践的な知識とノウハウが詰まったインフラの書籍。Docker実践ガイドは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,616,B5判
PRD-BKS-00089,クラウド入門,Docker Practice Guide,書籍,技術書,インフラ,AcademicPress Original,SUP-00050,2020.37,4259.44,3265.98,469,active,2020-09-07,実践的な知識とノウハウが詰まったインフラの書籍。クラウド入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,433,A5判
PRD-BKS-00090,ネットワーク基礎,Cloud Computing Basics,書籍,技術書,インフラ,KnowledgePress Original,SUP-00034,640.61,1956.56,1424.36,62,active,2020-02-16,実践的な知識とノウハウが詰まったインフラの書籍。ネットワーク基礎は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,485,B5判
PRD-BKS-00091,セキュリティ入門,Cloud Computing Basics,書籍,技術書,インフラ,TechPublish Original,SUP-00028,752.46,2039.18,1547.35,245,active,2021-08-10,実践的な知識とノウハウが詰まったインフラの書籍。セキュリティ入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,617,文庫判
PRD-BKS-00092,ネットワーク基礎,Security Basics,書籍,技術書,インフラ,ModernReads Original,SUP-00011,613.09,1280.67,966.2,494,active,2023-01-24,実践的な知識とノウハウが詰まったインフラの書籍。ネットワーク基礎は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,535,B5判
PRD-BKS-00093,クラウド入門,Docker Practice Guide,書籍,技術書,インフラ,KnowledgePress Original,SUP-00028,2706.73,8919.49,7545.93,239,active,2020-04-29,実践的な知識とノウハウが詰まったインフラの書籍。クラウド入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,771,B5判
PRD-BKS-00094,ネットワーク基礎,Security Basics,書籍,技術書,インフラ,ModernReads Original,SUP-00032,1296.09,4112.64,3730.3,401,active,2021-05-28,実践的な知識とノウハウが詰まったインフラの書籍。ネットワーク基礎は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,478,A4判
PRD-BKS-00095,クラウド入門,Security Basics,書籍,技術書,インフラ,TechPublish Original,SUP-00001,1484.98,3022.28,2217.82,12,discontinued,2024-12-12,実践的な知識とノウハウが詰まったインフラの書籍。クラウド入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,743,A5判
PRD-BKS-00096,セキュリティ入門,Cloud Computing Basics,書籍,技術書,インフラ,TechPublish Original,SUP-00042,1533.53,5096.39,4887.14,443,active,2021-09-20,実践的な知識とノウハウが詰まったインフラの書籍。セキュリティ入門は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,650,A4判
PRD-BKS-00097,恋愛小説,Historical Fiction,書籍,文芸,小説,TechPublish Original,SUP-00018,920.24,2823.49,2348.71,415,active,2020-05-24,実践的な知識とノウハウが詰まった小説の書籍。恋愛小説は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,725,B5判
PRD-BKS-00098,ミステリー小説,Historical Fiction,書籍,文芸,小説,TechPublish Original,SUP-00044,2192.39,7159.44,5642.75,165,discontinued,2022-11-22,実践的な知識とノウハウが詰まった小説の書籍。ミステリー小説は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,737,新書判
PRD-BKS-00099,恋愛小説,Historical Fiction,書籍,文芸,小説,TechPublish Original,SUP-00027,1142.08,3523.3,2491.43,393,active,2020-10-11,実践的な知識とノウハウが詰まった小説の書籍。恋愛小説は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,735,新書判
PRD-BKS-00100,恋愛小説,Historical Fiction,書籍,文芸,小説,KnowledgePress Original,SUP-00017,623.48,1391.87,1151.87,101,discontinued,2023-12-29,実践的な知識とノウハウが詰まった小説の書籍。恋愛小説は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,209,A5判
PRD-BKS-00101,ミステリー小説,Romance Novel,書籍,文芸,小説,TechPublish Original,SUP-00049,766.11,1929.36,1781.91,419,active,2020-10-13,実践的な知識とノウハウが詰まった小説の書籍。ミステリー小説は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,617,文庫判
PRD-BKS-00102,SF小説,Science Fiction,書籍,文芸,小説,AcademicPress Original,SUP-00009,675.6,2150.66,1635.61,2,discontinued,2022-11-12,実践的な知識とノウハウが詰まった小説の書籍。SF小説は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,755,新書判
PRD-BKS-00103,ミステリー小説,Mystery Novel,書籍,文芸,小説,TechPublish Original,SUP-00028,1263.75,3037.75,2844.24,89,active,2024-10-06,実践的な知識とノウハウが詰まった小説の書籍。ミステリー小説は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,375,文庫判
PRD-BKS-00104,SF小説,Mystery Novel,書籍,文芸,小説,AcademicPress Original,SUP-00005,1278.78,3927.02,2916.81,224,active,2020-06-04,実践的な知識とノウハウが詰まった小説の書籍。SF小説は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,617,B5判
PRD-BKS-00105,恋愛小説,Romance Novel,書籍,文芸,小説,BusinessBooks Original,SUP-00003,655.88,2244.4,2155.41,422,active,2020-09-26,実践的な知識とノウハウが詰まった小説の書籍。恋愛小説は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,289,新書判
PRD-BKS-00106,ミステリー小説,Historical Fiction,書籍,文芸,小説,ModernReads Original,SUP-00035,943.14,2360.33,1757.22,290,discontinued,2022-01-12,実践的な知識とノウハウが詰まった小説の書籍。ミステリー小説は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,246,A5判
PRD-BKS-00107,恋愛小説,Mystery Novel,書籍,文芸,小説,BusinessBooks Original,SUP-00041,1951.85,5589.22,4485.48,341,discontinued,2020-06-05,実践的な知識とノウハウが詰まった小説の書籍。恋愛小説は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,705,A4判
PRD-BKS-00108,ミステリー小説,Romance Novel,書籍,文芸,小説,TechPublish Original,SUP-00049,1121.41,2907.9,2295.8,157,active,2020-06-08,実践的な知識とノウハウが詰まった小説の書籍。ミステリー小説は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,666,A4判
PRD-BKS-00109,旅行エッセイ,Food Essay,書籍,文芸,エッセイ,TechPublish Original,SUP-00041,2631.41,6057.64,5032.37,217,active,2024-03-13,実践的な知識とノウハウが詰まったエッセイの書籍。旅行エッセイは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,487,B5判
PRD-BKS-00110,人生エッセイ,Travel Essay,書籍,文芸,エッセイ,BusinessBooks Original,SUP-00045,2337.02,5376.59,4545.23,90,active,2020-05-17,実践的な知識とノウハウが詰まったエッセイの書籍。人生エッセイは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,743,A4判
PRD-BKS-00111,食エッセイ,Daily Essay,書籍,文芸,エッセイ,KnowledgePress Original,SUP-00020,2585.78,8347.03,6779.78,373,active,2022-02-09,実践的な知識とノウハウが詰まったエッセイの書籍。食エッセイは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,702,文庫判
PRD-BKS-00112,日常エッセイ,Travel Essay,書籍,文芸,エッセイ,TechPublish Original,SUP-00001,1572.71,5475.01,3870.83,429,active,2020-02-08,実践的な知識とノウハウが詰まったエッセイの書籍。日常エッセイは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,549,文庫判
PRD-BKS-00113,日常エッセイ,Food Essay,書籍,文芸,エッセイ,TechPublish Original,SUP-00042,1822.82,5478.28,5241.26,362,active,2021-02-20,実践的な知識とノウハウが詰まったエッセイの書籍。日常エッセイは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,385,A4判
PRD-BKS-00114,旅行エッセイ,Food Essay,書籍,文芸,エッセイ,BusinessBooks Original,SUP-00038,1109.3,3490.26,2745.38,171,active,2020-08-05,実践的な知識とノウハウが詰まったエッセイの書籍。旅行エッセイは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,350,A4判
PRD-BKS-00115,食エッセイ,Travel Essay,書籍,文芸,エッセイ,TechPublish Original,SUP-00030,600.24,1827.18,1564.91,441,active,2024-03-12,実践的な知識とノウハウが詰まったエッセイの書籍。食エッセイは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,449,新書判
PRD-BKS-00116,食エッセイ,Travel Essay,書籍,文芸,エッセイ,TechPublish Original,SUP-00002,2290.83,6710.96,6301.82,353,discontinued,2020-01-23,実践的な知識とノウハウが詰まったエッセイの書籍。食エッセイは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,718,新書判
PRD-BKS-00117,旅行エッセイ,Travel Essay,書籍,文芸,エッセイ,AcademicPress Original,SUP-00040,1531.66,3288.05,2676.79,96,active,2020-09-06,実践的な知識とノウハウが詰まったエッセイの書籍。旅行エッセイは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,453,文庫判
PRD-BKS-00118,日常エッセイ,Daily Essay,書籍,文芸,エッセイ,AcademicPress Original,SUP-00018,943.99,1968.47,1401.25,264,active,2022-11-03,実践的な知識とノウハウが詰まったエッセイの書籍。日常エッセイは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,673,A4判
PRD-BKS-00119,日常エッセイ,Travel Essay,書籍,文芸,エッセイ,ModernReads Original,SUP-00035,1759.32,4929.04,3934.49,387,active,2022-03-04,実践的な知識とノウハウが詰まったエッセイの書籍。日常エッセイは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,536,A5判
PRD-BKS-00120,食エッセイ,Life Essay,書籍,文芸,エッセイ,AcademicPress Original,SUP-00014,2338.9,6480.55,4785.76,23,discontinued,2020-01-23,実践的な知識とノウハウが詰まったエッセイの書籍。食エッセイは、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,505,B5判
PRD-BKS-00121,現代詩集,Modern Poetry,書籍,文芸,詩集,BusinessBooks Original,SUP-00050,1996.55,5367.25,4382.12,388,active,2024-10-08,実践的な知識とノウハウが詰まった詩集の書籍。現代詩集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,563,A5判
PRD-BKS-00122,短歌集,Tanka Collection,書籍,文芸,詩集,ModernReads Original,SUP-00006,1262.21,3308.11,2532.42,162,discontinued,2023-03-07,実践的な知識とノウハウが詰まった詩集の書籍。短歌集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,314,A5判
PRD-BKS-00123,散文詩集,Modern Poetry,書籍,文芸,詩集,BusinessBooks Original,SUP-00025,2955.46,7419.01,5509.48,94,discontinued,2023-02-08,実践的な知識とノウハウが詰まった詩集の書籍。散文詩集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,423,A4判
PRD-BKS-00124,散文詩集,Prose Poetry,書籍,文芸,詩集,BusinessBooks Original,SUP-00032,2888.11,6164.83,4801.8,310,active,2021-03-13,実践的な知識とノウハウが詰まった詩集の書籍。散文詩集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,351,新書判
PRD-BKS-00125,散文詩集,Prose Poetry,書籍,文芸,詩集,AcademicPress Original,SUP-00021,1502.04,4126.53,3599.12,103,active,2024-07-29,実践的な知識とノウハウが詰まった詩集の書籍。散文詩集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,563,A4判
PRD-BKS-00126,散文詩集,Lyric Poetry,書籍,文芸,詩集,ModernReads Original,SUP-00003,1431.12,4582.36,4070.2,105,active,2023-05-02,実践的な知識とノウハウが詰まった詩集の書籍。散文詩集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,402,A5判
PRD-BKS-00127,抒情詩集,Lyric Poetry,書籍,文芸,詩集,KnowledgePress Original,SUP-00041,1359.29,4169.26,3349.91,340,discontinued,2022-12-05,実践的な知識とノウハウが詰まった詩集の書籍。抒情詩集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,272,文庫判
PRD-BKS-00128,短歌集,Lyric Poetry,書籍,文芸,詩集,TechPublish Original,SUP-00050,724.49,1739.94,1636.64,453,active,2023-10-27,実践的な知識とノウハウが詰まった詩集の書籍。短歌集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,237,B5判
PRD-BKS-00129,抒情詩集,Lyric Poetry,書籍,文芸,詩集,BusinessBooks Original,SUP-00037,983.06,2915.43,2259.22,188,active,2021-09-29,実践的な知識とノウハウが詰まった詩集の書籍。抒情詩集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,646,文庫判
PRD-BKS-00130,散文詩集,Prose Poetry,書籍,文芸,詩集,AcademicPress Original,SUP-00036,1760.18,5828.64,5580.64,336,active,2023-07-19,実践的な知識とノウハウが詰まった詩集の書籍。散文詩集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,588,新書判
PRD-BKS-00131,短歌集,Lyric Poetry,書籍,文芸,詩集,TechPublish Original,SUP-00021,2457.09,7050.46,6440.46,398,active,2024-07-17,実践的な知識とノウハウが詰まった詩集の書籍。短歌集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,758,A5判
PRD-BKS-00132,散文詩集,Prose Poetry,書籍,文芸,詩集,TechPublish Original,SUP-00040,1269.5,3014.45,2207.51,217,discontinued,2020-01-30,実践的な知識とノウハウが詰まった詩集の書籍。散文詩集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,222,新書判
PRD-BKS-00133,現代戯曲集,Short Play Collection,書籍,文芸,戯曲,KnowledgePress Original,SUP-00003,2647.14,6011.74,4980.96,482,active,2022-06-05,実践的な知識とノウハウが詰まった戯曲の書籍。現代戯曲集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,741,A4判
PRD-BKS-00134,クラシック戯曲,Monologue Script,書籍,文芸,戯曲,AcademicPress Original,SUP-00037,1327.88,4083.14,3253.24,148,active,2021-08-06,実践的な知識とノウハウが詰まった戯曲の書籍。クラシック戯曲は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,562,B5判
PRD-BKS-00135,短編戯曲集,Monologue Script,書籍,文芸,戯曲,AcademicPress Original,SUP-00044,1424.73,3740.73,3383.69,341,active,2021-12-17,実践的な知識とノウハウが詰まった戯曲の書籍。短編戯曲集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,287,文庫判
PRD-BKS-00136,現代戯曲集,Classic Drama,書籍,文芸,戯曲,AcademicPress Original,SUP-00047,1573.31,3508.91,2943.76,472,active,2022-06-23,実践的な知識とノウハウが詰まった戯曲の書籍。現代戯曲集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,417,B5判
PRD-BKS-00137,一人芝居台本,Modern Play,書籍,文芸,戯曲,BusinessBooks Original,SUP-00043,1246.71,2852.8,2297.71,3,discontinued,2022-01-03,実践的な知識とノウハウが詰まった戯曲の書籍。一人芝居台本は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,729,新書判
PRD-BKS-00138,現代戯曲集,Short Play Collection,書籍,文芸,戯曲,TechPublish Original,SUP-00020,1195.76,2529.48,2092.81,460,active,2020-12-15,実践的な知識とノウハウが詰まった戯曲の書籍。現代戯曲集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,283,A5判
PRD-BKS-00139,現代戯曲集,Monologue Script,書籍,文芸,戯曲,BusinessBooks Original,SUP-00037,2136.92,4943.24,4433.79,198,active,2020-06-24,実践的な知識とノウハウが詰まった戯曲の書籍。現代戯曲集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,677,文庫判
PRD-BKS-00140,一人芝居台本,Short Play Collection,書籍,文芸,戯曲,KnowledgePress Original,SUP-00030,1963.71,4309.15,3110.08,417,active,2022-04-14,実践的な知識とノウハウが詰まった戯曲の書籍。一人芝居台本は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,711,新書判
PRD-BKS-00141,一人芝居台本,Short Play Collection,書籍,文芸,戯曲,BusinessBooks Original,SUP-00023,1747.87,4040.59,3276.99,6,active,2021-05-07,実践的な知識とノウハウが詰まった戯曲の書籍。一人芝居台本は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,742,A4判
PRD-BKS-00142,短編戯曲集,Classic Drama,書籍,文芸,戯曲,AcademicPress Original,SUP-00038,1091.94,2337.48,2207.85,216,discontinued,2022-01-02,実践的な知識とノウハウが詰まった戯曲の書籍。短編戯曲集は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,689,新書判
PRD-BKS-00143,一人芝居台本,Classic Drama,書籍,文芸,戯曲,KnowledgePress Original,SUP-00009,2257.78,7867.51,7245.82,59,active,2021-01-24,実践的な知識とノウハウが詰まった戯曲の書籍。一人芝居台本は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,587,新書判
PRD-BKS-00144,クラシック戯曲,Short Play Collection,書籍,文芸,戯曲,TechPublish Original,SUP-00021,844.38,1816.35,1398.73,246,discontinued,2024-11-25,実践的な知識とノウハウが詰まった戯曲の書籍。クラシック戯曲は、初心者から上級者まで幅広く学べる内容となっています。豊富な事例と分かりやすい解説で、すぐに実践できます。,408,A5判
*
���� 60564ab5d82fd80fad264517e6f83289
�	
data/csv/image_list.csv�	IMAGE_FILE,PRODUCT_ID
post_001.jpg,PROD-001
post_002.jpg,PROD-001
post_013.jpg,PROD-001
post_015.jpg,PROD-001
post_033.jpg,PROD-001
post_034.jpg,PROD-001
post_036.jpg,PROD-001
post_037.jpg,PROD-001
post_038.jpg,PROD-001
post_052.jpg,PROD-001
post_053.jpg,PROD-001
post_054.jpg,PROD-001
post_003.jpg,PROD-002
post_004.jpg,PROD-002
post_017.jpg,PROD-002
post_019.jpg,PROD-002
post_020.jpg,PROD-002
post_025.jpg,PROD-002
post_028.jpg,PROD-002
post_055.jpg,PROD-002
post_056.jpg,PROD-002
post_005.jpg,PROD-003
post_007.jpg,PROD-003
post_008.jpg,PROD-003
post_029.jpg,PROD-003
post_030.jpg,PROD-003
post_045.jpg,PROD-003
post_046.jpg,PROD-003
post_047.jpg,PROD-003
post_048.jpg,PROD-003
post_057.jpg,PROD-003
post_058.jpg,PROD-003
post_009.jpg,PROD-004
post_010.jpg,PROD-004
post_011.jpg,PROD-004
post_012.jpg,PROD-004
post_031.jpg,PROD-004
post_032.jpg,PROD-004
post_039.jpg,PROD-004
post_040.jpg,PROD-004
post_049.jpg,PROD-004
post_051.jpg,PROD-004
post_059.jpg,PROD-004
post_060.jpg,PROD-004
post_018.jpg,PROD-005
post_021.jpg,PROD-005
post_022.jpg,PROD-005
post_023.jpg,PROD-005
post_024.jpg,PROD-005
post_041.jpg,PROD-005
post_042.jpg,PROD-005
post_043.jpg,PROD-005
post_044.jpg,PROD-005
*
���� e95f379ed38445332645b87fa2eab85b
�
data/csv/posts.csv�post_id,product_id,posted_at,likes,comments,image_path
POST-001,,2025-06-15 08:45:00,3045,180,posts/post_001.jpg
POST-002,,2025-06-16 19:00:00,5803,318,posts/post_002.jpg
POST-003,,2025-06-17 18:15:00,2139,67,posts/post_003.jpg
POST-004,,2025-06-18 14:30:00,2307,128,posts/post_004.jpg
POST-005,,2025-06-19 10:45:00,5554,242,posts/post_005.jpg
POST-007,,2025-06-21 15:00:00,3803,175,posts/post_007.jpg
POST-008,,2025-06-22 14:15:00,8573,354,posts/post_008.jpg
POST-009,,2025-06-23 14:30:00,1916,70,posts/post_009.jpg
POST-010,,2025-06-24 08:30:00,7572,287,posts/post_010.jpg
POST-011,,2025-06-25 13:30:00,4483,222,posts/post_011.jpg
POST-012,,2025-06-27 19:45:00,3340,126,posts/post_012.jpg
POST-013,,2025-06-28 14:30:00,8019,456,posts/post_013.jpg
POST-015,,2025-06-30 11:45:00,2489,131,posts/post_015.jpg
POST-017,,2025-07-03 20:00:00,7304,302,posts/post_017.jpg
POST-018,,2025-07-04 21:30:00,1188,59,posts/post_018.jpg
POST-019,,2025-07-06 10:30:00,6573,219,posts/post_019.jpg
POST-020,,2025-07-07 20:15:00,8433,253,posts/post_020.jpg
POST-021,,2025-07-09 15:15:00,9317,534,posts/post_021.jpg
POST-022,,2025-07-10 16:15:00,3504,144,posts/post_022.jpg
POST-023,,2025-07-11 12:00:00,6310,281,posts/post_023.jpg
POST-024,,2025-07-12 10:30:00,6038,224,posts/post_024.jpg
POST-025,,2025-07-13 14:00:00,2403,124,posts/post_025.jpg
POST-028,,2025-07-16 13:30:00,7537,451,posts/post_028.jpg
POST-029,,2025-07-17 18:45:00,9479,412,posts/post_029.jpg
POST-030,,2025-07-19 14:15:00,2049,82,posts/post_030.jpg
POST-031,,2025-07-20 14:15:00,1117,35,posts/post_031.jpg
POST-032,,2025-07-21 08:15:00,2104,120,posts/post_032.jpg
POST-033,,2025-07-22 17:00:00,9423,349,posts/post_033.jpg
POST-034,,2025-07-23 22:15:00,3167,163,posts/post_034.jpg
POST-036,,2025-07-26 13:00:00,2588,128,posts/post_036.jpg
POST-037,,2025-07-27 18:45:00,7735,340,posts/post_037.jpg
POST-038,,2025-07-28 08:00:00,1993,83,posts/post_038.jpg
POST-039,,2025-07-29 17:00:00,5073,181,posts/post_039.jpg
POST-040,,2025-07-30 21:15:00,7912,280,posts/post_040.jpg
POST-041,,2025-07-31 21:15:00,2235,96,posts/post_041.jpg
POST-042,,2025-08-01 10:00:00,1241,73,posts/post_042.jpg
POST-043,,2025-08-02 14:15:00,7658,341,posts/post_043.jpg
POST-044,,2025-08-03 13:45:00,1960,68,posts/post_044.jpg
POST-045,,2025-08-04 07:45:00,5345,308,posts/post_045.jpg
POST-046,,2025-08-05 21:30:00,7930,403,posts/post_046.jpg
POST-047,,2025-08-06 22:15:00,4111,159,posts/post_047.jpg
POST-048,,2025-08-07 08:00:00,6138,194,posts/post_048.jpg
POST-049,,2025-08-08 22:15:00,1931,113,posts/post_049.jpg
POST-051,,2025-08-12 14:45:00,2964,172,posts/post_051.jpg
POST-052,,2025-08-14 14:00:00,2343,99,posts/post_052.jpg
POST-053,,2025-06-20 12:00:00,4521,198,posts/post_053.jpg
POST-054,,2025-06-29 16:30:00,6234,312,posts/post_054.jpg
POST-055,,2025-07-02 09:45:00,3187,145,posts/post_055.jpg
POST-056,,2025-07-14 11:00:00,5892,267,posts/post_056.jpg
POST-057,,2025-07-15 19:30:00,7103,389,posts/post_057.jpg
POST-058,,2025-07-25 10:15:00,4756,213,posts/post_058.jpg
POST-059,,2025-08-09 15:00:00,3412,156,posts/post_059.jpg
POST-060,,2025-08-11 18:45:00,5678,284,posts/post_060.jpg
*
���� 1274d531e029b46fd038f13269baf93c
�
data/csv/products.csv�product_id,product_name,category,price,description
PROD-001,UltraLight Carry-On 36L,スーツケース,29800,機内持ち込みサイズ。PC収納ポケット付き。TSAロック搭載。重さ2.8kg。
PROD-002,トラベルオーガナイザー 3点セット,ポーチ,4980,S/M/Lサイズの3点セット。防水素材。中身が見えるメッシュ窓付き。
PROD-003,低反発ネックピロー FitRest,ネックピロー,5980,低反発メモリーフォーム。洗えるカバー付き。収納袋でコンパクトに。
PROD-004,GaN急速充電器 65W,充電器,4980,GaN採用で超小型。USB-C×2 + USB-A×1。PC・スマホ同時充電可能。
PROD-005,本革パスポートケース,パスポートケース,6980,上質な本革。カード6枚+航空券+パスポート収納。RFIDブロック機能付き。
*
���� d15c07a5018bdb82a9fd5c66918eed7d
�Y
!data/csv/supplier_products_v2.csv�Ysupplier_product_id,supplier_product_name,supplier_name,supplier_price,supplier_category,original_product_id
SUP-V2-00001,ＬＥＤ調光デスクライト,東京インポート株式会社,12980,照明,PRD-INT-00004
SUP-V2-00002,モダン デスク ライト,大阪ディストリビューション株式会社,8450,照明,PRD-INT-00003
SUP-V2-00003,コンパクト デスクライト,グローバルトレード合同会社,25100,照明,PRD-INT-00005
SUP-V2-00004,スタイリッシュ デスクライト,株式会社ノースライフ,7890,照明,PRD-INT-00001
SUP-V2-00005,北欧風 フロアライト,サプライチェーンジャパン株式会社,26500,照明,PRD-INT-00014
SUP-V2-00006,ＬＥＤシーリングライト,東京インポート株式会社,29200,照明,PRD-INT-00030
SUP-V2-00007,ガラスペンダントライト,グローバルトレード合同会社,27100,照明,PRD-INT-00042
SUP-V2-00008,Ｌ字型デスク,名古屋商事株式会社,23800,家具,PRD-INT-00050
SUP-V2-00009,オフィス チェア,大阪ディストリビューション株式会社,19600,家具,PRD-INT-00061
SUP-V2-00010,ダイニング チェア,株式会社ノースライフ,18900,家具,PRD-INT-00062
SUP-V2-00011,ブック シェルフ,サプライチェーンジャパン株式会社,28400,家具,PRD-INT-00074
SUP-V2-00012,ディスプレイ ラック,東京インポート株式会社,28100,家具,PRD-INT-00073
SUP-V2-00013,ダイニング テーブル,グローバルトレード合同会社,19900,家具,PRD-INT-00086
SUP-V2-00014,コーヒー テーブル,名古屋商事株式会社,26800,家具,PRD-INT-00096
SUP-V2-00015,置き 時計,大阪ディストリビューション株式会社,27800,装飾品,PRD-INT-00099
SUP-V2-00016,振り子 時計,株式会社ノースライフ,9200,装飾品,PRD-INT-00097
SUP-V2-00017,モダン花瓶,サプライチェーンジャパン株式会社,24100,装飾品,PRD-INT-00109
SUP-V2-00018,ウォール フレーム,東京インポート株式会社,5300,装飾品,PRD-INT-00121
SUP-V2-00019,デジタル 時計,グローバルトレード合同会社,9800,装飾品,PRD-INT-00103
SUP-V2-00020,エルゴノミクス チェア,名古屋商事株式会社,18500,家具,PRD-INT-00066
SUP-V2-00021,スタイリッシュデスク灯,大阪ディストリビューション株式会社,8100,照明,PRD-INT-00002
SUP-V2-00022,モダンデスクランプ,グローバルトレード合同会社,3400,照明,PRD-INT-00010
SUP-V2-00023,コンパクトデスクランプ,東京インポート株式会社,3100,照明,PRD-INT-00012
SUP-V2-00024,北欧風フロアランプ,株式会社ノースライフ,15800,照明,PRD-INT-00017
SUP-V2-00025,間接照明フロアランプ,サプライチェーンジャパン株式会社,28200,照明,PRD-INT-00019
SUP-V2-00026,スタンディングフロア灯,東京インポート株式会社,13800,照明,PRD-INT-00016
SUP-V2-00027,デザインシーリング灯,大阪ディストリビューション株式会社,11600,照明,PRD-INT-00025
SUP-V2-00028,調光調色シーリング灯,グローバルトレード合同会社,13600,照明,PRD-INT-00026
SUP-V2-00029,吊り下げペンダントランプ,名古屋商事株式会社,28300,照明,PRD-INT-00037
SUP-V2-00030,北欧ペンダントランプ,株式会社ノースライフ,8500,照明,PRD-INT-00038
SUP-V2-00031,収納付きテーブル,サプライチェーンジャパン株式会社,16300,家具,PRD-INT-00049
SUP-V2-00032,スタンディングテーブル,東京インポート株式会社,17800,家具,PRD-INT-00053
SUP-V2-00033,シンプルテーブル,大阪ディストリビューション株式会社,29500,家具,PRD-INT-00054
SUP-V2-00034,ダイニングイス,グローバルトレード合同会社,19200,家具,PRD-INT-00062
SUP-V2-00035,ゲーミングチェアー,名古屋商事株式会社,20500,家具,PRD-INT-00064
SUP-V2-00036,オフィスチェアー,株式会社ノースライフ,19500,家具,PRD-INT-00065
SUP-V2-00037,ダイニング椅子,サプライチェーンジャパン株式会社,9300,家具,PRD-INT-00067
SUP-V2-00038,人体工学チェア,東京インポート株式会社,18600,家具,PRD-INT-00066
SUP-V2-00039,ブック棚,大阪ディストリビューション株式会社,28300,家具,PRD-INT-00074
SUP-V2-00040,オープン棚,グローバルトレード合同会社,28700,家具,PRD-INT-00079
SUP-V2-00041,オープン収納棚,名古屋商事株式会社,11200,家具,PRD-INT-00082
SUP-V2-00042,折りたたみダイニング台,株式会社ノースライフ,18800,家具,PRD-INT-00085
SUP-V2-00043,ダイニング卓,サプライチェーンジャパン株式会社,3200,家具,PRD-INT-00089
SUP-V2-00044,壁かけ時計,東京インポート株式会社,28000,装飾品,PRD-INT-00098
SUP-V2-00045,現代風花瓶,大阪ディストリビューション株式会社,11300,装飾品,PRD-INT-00110
SUP-V2-00046,リモコン付きシーリング灯,グローバルトレード合同会社,2100,照明,PRD-INT-00032
SUP-V2-00047,ガラス吊下げランプ,名古屋商事株式会社,15900,照明,PRD-INT-00045
SUP-V2-00048,陶器の花瓶,株式会社ノースライフ,5500,装飾品,PRD-INT-00117
SUP-V2-00049,モダン調花瓶,サプライチェーンジャパン株式会社,11400,装飾品,PRD-INT-00110
SUP-V2-00050,写真フレム,東京インポート株式会社,11500,装飾品,PRD-INT-00128
SUP-V2-00051,GS-DL001 スタイリッシュデスクライト,大阪ディストリビューション株式会社,25600,照明,PRD-INT-00001
SUP-V2-00052,ホワイト LED調光デスクライト W16cm,グローバルトレード合同会社,5400,照明,PRD-INT-00006
SUP-V2-00053,Modern Desk Light,名古屋商事株式会社,27400,照明,PRD-INT-00003
SUP-V2-00054,Nordic Floor Light,株式会社ノースライフ,15700,照明,PRD-INT-00017
SUP-V2-00055,Dimmable Ceiling Light,サプライチェーンジャパン株式会社,11500,照明,PRD-INT-00025
SUP-V2-00056,Glass Pendant Lamp,東京インポート株式会社,27000,照明,PRD-INT-00042
SUP-V2-00057,Ergonomic Chair,大阪ディストリビューション株式会社,18900,家具,PRD-INT-00066
SUP-V2-00058,ライト フロア 北欧スタイル,グローバルトレード合同会社,26100,照明,PRD-INT-00014
SUP-V2-00059,シーリング LED 調光式,名古屋商事株式会社,29200,照明,PRD-INT-00030
SUP-V2-00060,【新作】モダンフロアライト★人気商品★,株式会社ノースライフ,10100,照明,PRD-INT-00013
SUP-V2-00061,【限定特価】デザインシーリングライト 送料無料,サプライチェーンジャパン株式会社,29900,照明,PRD-INT-00035
SUP-V2-00062,北欧風おしゃれペンダントライト インテリア照明,東京インポート株式会社,26000,照明,PRD-INT-00043
SUP-V2-00063,NR-FL2024 北欧風フロアライト ナチュラル,大阪ディストリビューション株式会社,12100,照明,PRD-INT-00020
SUP-V2-00064,ブラック ゲーミングチェア メッシュ素材,グローバルトレード合同会社,23800,家具,PRD-INT-00071
SUP-V2-00065,OAK天然木ダイニングテーブル 4人掛け,名古屋商事株式会社,14900,家具,PRD-INT-00092
SUP-V2-00066,MS-VS003 ガラス花瓶 クリア Lサイズ,株式会社ノースライフ,21300,装飾品,PRD-INT-00111
SUP-V2-00067,壁掛け式アナログ時計 ウッドフレーム,サプライチェーンジャパン株式会社,14200,装飾品,PRD-INT-00106
SUP-V2-00068,Standing Desk Height Adjustable,東京インポート株式会社,21200,家具,PRD-INT-00058
SUP-V2-00069,Bookshelf 5-Tier Wooden,大阪ディストリビューション株式会社,26200,家具,PRD-INT-00084
SUP-V2-00070,折りたたみ式コンパクトテーブル ホワイト,グローバルトレード合同会社,22200,家具,PRD-INT-00087
SUP-V2-00071,L-Shaped Desk with Storage,名古屋商事株式会社,23800,家具,PRD-INT-00051
SUP-V2-00072,オフィス用回転式チェア 肘掛け付き,株式会社ノースライフ,29500,家具,PRD-INT-00069
SUP-V2-00073,調光リモコン付シーリングライト 8畳用,サプライチェーンジャパン株式会社,21600,照明,PRD-INT-00034
SUP-V2-00074,アンティーク調振り子クロック,東京インポート株式会社,29700,装飾品,PRD-INT-00104
SUP-V2-00075,3段オープンシェルフ ウォールナット,大阪ディストリビューション株式会社,10700,家具,PRD-INT-00078
SUP-V2-00076,モダンインテリア陶器花瓶 マットブラック,グローバルトレード合同会社,6500,装飾品,PRD-INT-00120
SUP-V2-00077,ペンダント型ガラスシェード照明,名古屋商事株式会社,23900,照明,PRD-INT-00044
SUP-V2-00078,GlacierStyle Original L字型ワークデスク,株式会社ノースライフ,26800,家具,PRD-INT-00050
SUP-V2-00079,吊り照明 モダンペンダント,サプライチェーンジャパン株式会社,3700,照明,PRD-INT-00040
SUP-V2-00080,収納棚 ディスプレイ型 5段,東京インポート株式会社,7900,家具,PRD-INT-00083
SUP-V2-00081,机の上で使うLED式の明かり,大阪ディストリビューション株式会社,5400,照明,PRD-INT-00006
SUP-V2-00082,おしゃれな吊り下げ照明器具,グローバルトレード合同会社,11300,照明,PRD-INT-00041
SUP-V2-00083,テスクライト コンハクト型,名古屋商事株式会社,24000,照明,PRD-INT-00007
SUP-V2-00084,天井にぴったりつく平らな照明,株式会社ノースライフ,11800,照明,PRD-INT-00031
SUP-V2-00085,事務用の回転する椅子,サプライチェーンジャパン株式会社,9400,家具,PRD-INT-00068
SUP-V2-00086,本を並べる家具 木製,東京インポート株式会社,26100,家具,PRD-INT-00084
SUP-V2-00087,床に置くスタンド型の間接照明,大阪ディストリビューション株式会社,13700,照明,PRD-INT-00016
SUP-V2-00088,リビングの大きな食卓,グローバルトレード合同会社,29800,家具,PRD-INT-00094
SUP-V2-00089,たためる簡易テーブル,名古屋商事株式会社,5100,家具,PRD-INT-00091
SUP-V2-00090,PCゲーム用の椅子 リクライニング付,株式会社ノースライフ,23100,家具,PRD-INT-00071
SUP-V2-00091,壁に飾る写真入れ,サプライチェーンジャパン株式会社,5200,装飾品,PRD-INT-00121
SUP-V2-00092,北欧テイストの間接照朋,東京インポート株式会社,9000,照明,PRD-INT-00019
SUP-V2-00093,おしやれな花を飾る器,大阪ディストリビューション株式会社,24000,装飾品,PRD-INT-00109
SUP-V2-00094,ワーキングテーブル 高さ調整可能,グローバルトレード合同会社,20200,家具,PRD-INT-00059
SUP-V2-00095,時を刻むインテリア 振り子式,名古屋商事株式会社,7600,装飾品,PRD-INT-00100
SUP-V2-00096,デスクマット クリア A3サイズ,株式会社ノースライフ,1980,文具,
SUP-V2-00097,フロアクッション 北欧柄 丸型,サプライチェーンジャパン株式会社,3480,インテリア雑貨,
SUP-V2-00098,シーリングファン ホワイト 羽根付き,東京インポート株式会社,15800,空調,
SUP-V2-00099,ペンダントトップ シルバー925 チェーン付,大阪ディストリビューション株式会社,8900,アクセサリー,
SUP-V2-00100,テーブルクロス リネン ナチュラル 130×180,グローバルトレード合同会社,2480,テーブルウェア,
*
���� 19685d08ae39d03a32af2f7b0bb64e62
�
cleanup.sql�-- =============================================================
-- cleanup.sql - ハンズオン環境クリーンアップ
--
-- Part 1〜4 で作成したオブジェクトをまとめて削除します。
-- ハンズオン終了後に実行してください。
-- =============================================================
USE ROLE ACCOUNTADMIN;

-- -----------------------------------------------
-- Part 1 で作成したオブジェクト
--   CoCo の「テストデータ生成」で作ったテーブルは、名前が人によって異なります。
--   create_influencer_data.sql 末尾の DROP TABLE を実行するか、
--   作成したテーブル名に合わせて以下のコメントを外して実行してください。
--   (DATABASE ごと削除するため、実行しなくても下の DROP DATABASE で消えます)
-- -----------------------------------------------
-- DROP TABLE IF EXISTS AI_HANDSON_DB.ANALYTICS.influencers;
-- DROP TABLE IF EXISTS AI_HANDSON_DB.ANALYTICS.influencer_posts;

-- -----------------------------------------------
-- Part 2 で作成したオブジェクト
-- -----------------------------------------------
DROP DYNAMIC TABLE IF EXISTS AI_HANDSON_DB.ANALYTICS.DT_HASHTAG_SUMMARY;
DROP DYNAMIC TABLE IF EXISTS AI_HANDSON_DB.ANALYTICS.DT_SNS_HASHTAGS;
DROP TABLE IF EXISTS AI_HANDSON_DB.ANALYTICS.sns_mentions_dev;
DROP WAREHOUSE IF EXISTS AI_HANDSON_ADAPTIVE_WH;

-- -----------------------------------------------
-- Part 3 で作成したオブジェクト
-- -----------------------------------------------
DROP TABLE IF EXISTS AI_HANDSON_DB.ANALYTICS.image_features;
DROP TABLE IF EXISTS AI_HANDSON_DB.ANALYTICS.work_ai_similarity_match;

-- -----------------------------------------------
-- Part 4 で作成したオブジェクト
-- -----------------------------------------------
DROP CORTEX SEARCH SERVICE IF EXISTS AI_HANDSON_DB.ANALYTICS.product_spec_search;
DROP SEMANTIC VIEW IF EXISTS AI_HANDSON_DB.ANALYTICS.SV_STEP1;
DROP SEMANTIC VIEW IF EXISTS AI_HANDSON_DB.ANALYTICS.SV_STEP2;

-- -----------------------------------------------
-- setup.sql で作成した共通オブジェクト
-- -----------------------------------------------
DROP DATABASE IF EXISTS AI_HANDSON_DB;
DROP WAREHOUSE IF EXISTS AI_HANDSON_WH;

-- -----------------------------------------------
-- Git連携オブジェクト(load.sqlで作成。他のハンズオンでも使い回す場合は
-- コメントアウトのまま残す。DROPすると次回は load.sql が作り直します)
-- -----------------------------------------------
-- DROP DATABASE IF EXISTS AI_HANDSON_GIT_DB;
-- DROP API INTEGRATION IF EXISTS ai_handson_git_integration;
*
���� d57d20be96ab2f53f771b14a8e3ec18b
�
load.sql�-- load.sql
USE ROLE ACCOUNTADMIN;

CREATE DATABASE IF NOT EXISTS AI_HANDSON_GIT_DB;
CREATE SCHEMA IF NOT EXISTS AI_HANDSON_GIT_DB.GIT;
USE SCHEMA AI_HANDSON_GIT_DB.GIT;

CREATE OR REPLACE API INTEGRATION ai_handson_git_integration
    API_PROVIDER         = git_https_api
    API_ALLOWED_PREFIXES = ('https://github.com/hilasnow/')
    ENABLED              = TRUE;

CREATE OR REPLACE GIT REPOSITORY ai_handson_git_repo
    API_INTEGRATION = ai_handson_git_integration
    ORIGIN           = 'https://github.com/hilasnow/snowflake_handson_20261119.git';

ALTER GIT REPOSITORY ai_handson_git_repo FETCH;
*
���� 106f0306d1c33be2bb4927a943efa741
�]
	setup.sql�\-- =============================================================
-- setup.sql - ハンズオン共通 事前セットアップ
-- 参照リポジトリ: https://github.com/hilasnow/snowflake_handson_20261119
-- =============================================================

-- -----------------------------------------------
-- Step 1. ロール・クロスリージョン推論・ウェアハウス
-- -----------------------------------------------
USE ROLE ACCOUNTADMIN;

ALTER ACCOUNT SET CORTEX_ENABLED_CROSS_REGION = 'ANY_REGION';

CREATE WAREHOUSE IF NOT EXISTS AI_HANDSON_WH
    WAREHOUSE_SIZE      = 'xsmall'
    WAREHOUSE_TYPE      = 'standard'
    AUTO_SUSPEND        = 60
    AUTO_RESUME         = TRUE
    INITIALLY_SUSPENDED = TRUE;

USE WAREHOUSE AI_HANDSON_WH;

-- -----------------------------------------------
-- Step 2. データベース・スキーマ・ステージ
--
-- ステージは用途別に2つ作成します。
--   DATA_STAGE  : CSV・PDF 用
--   POST_IMAGES : 投稿画像用
-- -----------------------------------------------
CREATE OR REPLACE DATABASE AI_HANDSON_DB;
CREATE OR REPLACE SCHEMA AI_HANDSON_DB.ANALYTICS;
USE SCHEMA AI_HANDSON_DB.ANALYTICS;

CREATE OR REPLACE STAGE DATA_STAGE
    ENCRYPTION = (TYPE = 'SNOWFLAKE_SSE')
    DIRECTORY  = (ENABLE = TRUE)
    COMMENT    = 'CSV・PDF 用ステージ';

CREATE OR REPLACE STAGE POST_IMAGES
    ENCRYPTION = (TYPE = 'SNOWFLAKE_SSE')
    DIRECTORY  = (ENABLE = TRUE)
    COMMENT    = 'SNS 投稿画像用ステージ';

-- -----------------------------------------------
-- Step 3. Git リポジトリからステージへファイルをコピー
--
-- Git連携(API INTEGRATION・GIT REPOSITORY)は load.sql で
-- AI_HANDSON_GIT_DB.GIT スキーマに作成済みです。ここでは
-- そのリポジトリからCSV・PDF・JSON・画像を取得するだけです。
-- -----------------------------------------------

-- CSV(6ファイル)
COPY FILES INTO @DATA_STAGE
FROM @AI_HANDSON_GIT_DB.GIT.ai_handson_git_repo/branches/main/
PATTERN = 'data/csv/.*[.]csv';

-- 商品スペックシート PDF(5商品分、作成済み)
COPY FILES INTO @DATA_STAGE
FROM @AI_HANDSON_GIT_DB.GIT.ai_handson_git_repo/branches/main/
PATTERN = 'data/pdf/.*[.]pdf';

-- SNS 投稿サンプルデータ(AI 関数デモ用、265件)
COPY FILES INTO @DATA_STAGE
FROM @AI_HANDSON_GIT_DB.GIT.ai_handson_git_repo/branches/main/
PATTERN = 'data/json/.*[.]json';

-- 投稿画像(53枚)
COPY FILES INTO @POST_IMAGES
FROM @AI_HANDSON_GIT_DB.GIT.ai_handson_git_repo/branches/main/
PATTERN = 'data/images/.*[.]jpg';

-- DIRECTORY テーブルを更新(ファイル一覧を反映)
ALTER STAGE DATA_STAGE REFRESH;
ALTER STAGE POST_IMAGES REFRESH;

-- -----------------------------------------------
-- Step 4. ファイルフォーマット
-- -----------------------------------------------
CREATE OR REPLACE FILE FORMAT csv_format
    TYPE                         = 'CSV'
    SKIP_HEADER                  = 1
    FIELD_OPTIONALLY_ENCLOSED_BY = '"';

CREATE OR REPLACE FILE FORMAT json_format
    TYPE              = 'JSON'
    STRIP_OUTER_ARRAY = TRUE;

-- -----------------------------------------------
-- Step 5. テーブル作成
--
-- ER 関係:
--   posts (N) --- (1) products (1) --- (N) daily_sales
-- -----------------------------------------------

-- 商品マスタ(5件)
CREATE OR REPLACE TABLE products (
    product_id   VARCHAR(10) PRIMARY KEY COMMENT '商品ID',
    product_name VARCHAR(100)            COMMENT '商品名',
    category     VARCHAR(50)             COMMENT '商品カテゴリ(スーツケース/ポーチ/ネックピロー/充電器/パスポートケース)',
    price        NUMBER(10,0)            COMMENT '販売価格(円)',
    description  VARCHAR(500)            COMMENT '商品説明'
)
COMMENT = '旅行グッズブランドの商品マスタ';

-- インフルエンサー投稿(53件)
-- product_id は CSV では空欄。Step 6 で image_list を使って埋めます。
CREATE OR REPLACE TABLE posts (
    post_id    VARCHAR(10) PRIMARY KEY COMMENT '投稿ID',
    product_id VARCHAR(10)             COMMENT '投稿で紹介している商品ID',
    posted_at  TIMESTAMP               COMMENT '投稿日時',
    likes      NUMBER                  COMMENT 'いいね数',
    comments   NUMBER                  COMMENT 'コメント数',
    image_path VARCHAR(100)            COMMENT '投稿画像のファイル名'
)
COMMENT = 'インフルエンサーの SNS 投稿メタデータ';

-- 日別売上(305件)
CREATE OR REPLACE TABLE daily_sales (
    sale_date    DATE         COMMENT '売上日',
    product_id   VARCHAR(10)  COMMENT '商品ID',
    units_sold   NUMBER       COMMENT '販売数',
    sales_amount NUMBER(12,0) COMMENT '売上金額(円)'
)
COMMENT = '商品ごとの日別売上データ';

-- SNS 投稿(265件) ※ AI 関数デモ専用のサンプルデータ
--   AI_EXTRACT / AI_CLASSIFY のサンプルデータ。
CREATE OR REPLACE TABLE sns_mentions (
    post_id      VARCHAR(30) PRIMARY KEY COMMENT '投稿ID',
    platform     VARCHAR(20)             COMMENT 'プラットフォーム(instagram/twitter など)',
    post_type    VARCHAR(20)             COMMENT '投稿種別',
    username     VARCHAR(50)             COMMENT 'ユーザー名',
    display_name VARCHAR(100)            COMMENT '表示名',
    content      VARCHAR                 COMMENT '投稿本文(AI 関数の入力)',
    posted_at    TIMESTAMP               COMMENT '投稿日時',
    likes        NUMBER                  COMMENT 'いいね数',
    retweets     NUMBER                  COMMENT 'リポスト数',
    replies      NUMBER                  COMMENT '返信数',
    hashtags     ARRAY                   COMMENT 'ハッシュタグ'
)
COMMENT = 'AI 関数デモ用の SNS 投稿サンプルデータ';

-- 商品マスタ(576件) ※ AI_SIMILARITY(名寄せ)デモ専用の別シナリオのサンプルデータ。
CREATE OR REPLACE TABLE dim_products (
    product_id      VARCHAR PRIMARY KEY COMMENT '商品ID',
    product_name    VARCHAR             COMMENT '商品名',
    product_name_en VARCHAR             COMMENT '商品名(英語)',
    category_l1     VARCHAR             COMMENT 'カテゴリ1',
    category_l2     VARCHAR             COMMENT 'カテゴリ2',
    category_l3     VARCHAR             COMMENT 'カテゴリ3',
    brand           VARCHAR             COMMENT 'ブランド名',
    supplier_id     VARCHAR             COMMENT 'サプレID',
    cost_price      DECIMAL(10,2)       COMMENT '仕入価格',
    list_price      DECIMAL(10,2)       COMMENT '定価',
    current_price    DECIMAL(10,2)      COMMENT '現在の価格',
    stock_quantity  INTEGER             COMMENT '在庫数',
    product_status  VARCHAR             COMMENT '商品ステータス',
    launch_date     DATE                COMMENT '発売日',
    description     TEXT                COMMENT '商品説明',
    weight_g        INTEGER             COMMENT '重量(g)',
    dimensions      VARCHAR             COMMENT '寸法'
)
COMMENT = 'AI_SIMILARITY(名寄せ)デモ用の汎用EC商品カタログ';

-- 仕入先商品リスト(50件程度) ※ 上記 dim_products と表記揺れを含んで突合する対話データ
CREATE OR REPLACE TABLE supplier_products_v2 (
    supplier_product_id   VARCHAR PRIMARY KEY COMMENT '仕入先商品ID',
    supplier_product_name VARCHAR             COMMENT '仕入先側の商品名(表記揺れあり)',
    supplier_name         VARCHAR             COMMENT '仕入先企業名',
    supplier_price        DECIMAL(10,2)       COMMENT '仕入先提示価格',
    supplier_category     VARCHAR             COMMENT '仕入先カテゴリ',
    original_product_id   VARCHAR             COMMENT '正解データ(結果検証用。dim_products.product_id を参照)'
)
COMMENT = 'AI_SIMILARITY(名寄せ)デモ用の仕入先商品リスト';

-- -----------------------------------------------
-- Step 6. データロード + product_id の補完
-- -----------------------------------------------
COPY INTO products    FROM @DATA_STAGE/data/csv/products.csv    FILE_FORMAT = (FORMAT_NAME = csv_format);
COPY INTO posts       FROM @DATA_STAGE/data/csv/posts.csv       FILE_FORMAT = (FORMAT_NAME = csv_format);
COPY INTO daily_sales FROM @DATA_STAGE/data/csv/daily_sales.csv FILE_FORMAT = (FORMAT_NAME = csv_format);

-- AI_SIMILARITY(名寄せ)デモ用データ
COPY INTO dim_products         FROM @DATA_STAGE/data/csv/dim_products.csv         FILE_FORMAT = (FORMAT_NAME = csv_format);
COPY INTO supplier_products_v2 FROM @DATA_STAGE/data/csv/supplier_products_v2.csv FILE_FORMAT = (FORMAT_NAME = csv_format) ON_ERROR = 'CONTINUE';

-- SNS 投稿(JSON 配列を1行1レコードに展開してロード)
INSERT INTO sns_mentions (post_id, platform, post_type, username, display_name,
                          content, posted_at, likes, retweets, replies, hashtags)
SELECT
    $1:post_id::VARCHAR,
    $1:platform::VARCHAR,
    $1:post_type::VARCHAR,
    $1:username::VARCHAR,
    $1:display_name::VARCHAR,
    $1:content::VARCHAR,
    $1:posted_at::TIMESTAMP,
    $1:likes::NUMBER,
    $1:retweets::NUMBER,
    $1:replies::NUMBER,
    $1:hashtags::ARRAY
FROM @DATA_STAGE/data/json/sns_logs.json (FILE_FORMAT => json_format);

-- 画像 ↔ 商品ID の対応表(一時テーブル)
CREATE OR REPLACE TEMPORARY TABLE image_product_map (
    image_file VARCHAR(50),
    product_id VARCHAR(10)
);

COPY INTO image_product_map FROM @DATA_STAGE/data/csv/image_list.csv FILE_FORMAT = (FORMAT_NAME = csv_format);

-- posts.image_path(例: 'posts/post_001.jpg')と
-- image_list.image_file(例: 'post_001.jpg')を突合して product_id を埋める
UPDATE posts p
SET p.product_id = m.product_id
FROM image_product_map m
WHERE REPLACE(p.image_path, 'posts/', '') = m.image_file;

-- image_path を「ファイル名のみ」に正規化する(例: 'posts/post_001.jpg' → 'post_001.jpg')
--   後続ノートブックで画像データと結合しやすくするため揃えておく
UPDATE posts
SET image_path = REPLACE(image_path, 'posts/', '');

-- -----------------------------------------------
-- Step 7. セットアップ確認
-- -----------------------------------------------
SELECT 'products'               AS check_item, COUNT(*)::VARCHAR                    AS result, '5'   AS expected FROM products             UNION ALL
SELECT 'posts'                  AS check_item, COUNT(*)::VARCHAR                    AS result, '53'  AS expected FROM posts                UNION ALL
SELECT 'daily_sales'            AS check_item, COUNT(*)::VARCHAR                    AS result, '305' AS expected FROM daily_sales          UNION ALL
SELECT 'sns_mentions'           AS check_item, COUNT(*)::VARCHAR                    AS result, '265' AS expected FROM sns_mentions         UNION ALL
SELECT 'dim_products'           AS check_item, COUNT(*)::VARCHAR                    AS result, '576' AS expected FROM dim_products         UNION ALL
SELECT 'supplier_products_v2'   AS check_item, COUNT(*)::VARCHAR                    AS result, '100' AS expected FROM supplier_products_v2 UNION ALL
SELECT 'posts.null_product_id' AS check_item, (COUNT(*) - COUNT(product_id))::VARCHAR AS result, '0' AS expected FROM posts                UNION ALL
SELECT 'stage:POST_IMAGES(jpg)' AS check_item, COUNT(*)::VARCHAR                    AS result, '53'  AS expected FROM DIRECTORY(@POST_IMAGES) UNION ALL
SELECT 'stage:DATA_STAGE(all)'  AS check_item, COUNT(*)::VARCHAR                    AS result, '12'  AS expected FROM DIRECTORY(@DATA_STAGE)
ORDER BY check_item;

-- =============================================================

-- クリーンアップはハンズオン終了後に cleanup.sql を実行してください
-- =============================================================
*
���� 99af16296d3ff08fe6f6e7d7efd4699d
��
part4_cowork.ipynb��{
  "cells": [
    {
      "cell_type": "markdown",
      "id": "p3-title",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "# Part 4 : Snowflake CoWork\n\n## シナリオ\n\nあなたは**旅行グッズブランドのマーケティング担当**です。\nインフルエンサーに商品を提供して SNS 投稿してもらう施策を実施しました。\n\n手元にあるデータは以下です。\n\n| データ | 内容 | 種類 |\n|---|---|---|\n| `products` | 商品マスタ（5商品） | 構造化 |\n| `posts` | インフルエンサーの SNS 投稿（53件） | 構造化 |\n| `daily_sales` | 日別売上（305件） | 構造化 |\n| `image_features` | 投稿画像を AI で構造化した特徴量（53件） | 非構造化(画像) → 構造化 |\n| 商品スペックシート PDF | 商品の仕様・こだわりポイント（5商品分） | 非構造化(PDF) |\n\nこれらを Snowflake CoWork で分析し、**「どんな写真が売上に貢献するのか」**を自然言語で探っていきます。\n"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "id": "p3-sql-0-1",
      "metadata": {
        "language": "sql",
        "name": "SQL 0-1",
        "resultVariableName": "dataframe_3_1",
        "title": "SQL 0-1"
      },
      "outputs": [],
      "source": "%%sql -r dataframe_3_1\n-- コンテキスト設定\nUSE ROLE ACCOUNTADMIN;\nUSE WAREHOUSE AI_HANDSON_ADAPTIVE_WH;\nUSE DATABASE AI_HANDSON_DB;\nUSE SCHEMA ANALYTICS;"
    },
    {
      "cell_type": "markdown",
      "id": "p3-md-1",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 1. データ確認\n\nまず、これから CoWork で分析するデータを確認しておきます。"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "id": "p3-sql-1-1",
      "metadata": {
        "language": "sql",
        "name": "SQL 1-1",
        "resultVariableName": "dataframe_3_2",
        "title": "SQL 1-1"
      },
      "outputs": [],
      "source": "%%sql -r dataframe_3_2\n-- 商品マスタ(5商品)\nSELECT * FROM products ORDER BY product_id;"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "id": "p3-sql-1-2",
      "metadata": {
        "language": "sql",
        "name": "SQL 1-2",
        "resultVariableName": "dataframe_3_3",
        "title": "SQL 1-2"
      },
      "outputs": [],
      "source": "%%sql -r dataframe_3_3\n-- インフルエンサー投稿(53件)\nSELECT\n    post_id,\n    product_id,\n    posted_at,\n    likes,\n    comments,\n    image_path\nFROM posts\nORDER BY posted_at;"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "id": "p3-sql-1-3",
      "metadata": {
        "language": "sql",
        "name": "SQL 1-3",
        "resultVariableName": "dataframe_3_4",
        "title": "SQL 1-3"
      },
      "outputs": [],
      "source": "%%sql -r dataframe_3_4\n-- 日別売上(商品別の合計を確認)\nSELECT\n    product_id,\n    MIN(sale_date)      AS from_date,\n    MAX(sale_date)      AS to_date,\n    SUM(units_sold)     AS total_units,\n    SUM(sales_amount)   AS total_sales\nFROM daily_sales\nGROUP BY product_id\nORDER BY product_id;"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "id": "p3-sql-1-4",
      "metadata": {
        "language": "sql",
        "name": "SQL 1-4",
        "resultVariableName": "dataframe_3_5",
        "title": "SQL 1-4"
      },
      "outputs": [],
      "source": "%%sql -r dataframe_3_5\n-- 投稿画像を AI で構造化した特徴量(Part3のAI_COMPLETE で生成済み)\nSELECT\n    image_file,\n    photo_main_subject,\n    has_person,\n    person_gender,\n    person_size,\n    expression,\n    location,\n    product_usage,\n    color_tone\nFROM image_features\nORDER BY image_file;"
    },
    {
      "cell_type": "markdown",
      "id": "p3-md-2",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 2. Agent 作成 + Semantic View\n\n### Semantic View とは\n\n**Semantic View（セマンティックビュー）** は、CoWork が「このデータが何を意味するのか」を理解するためのメタデータ定義です。\n\n- **テーブルの意味**や **テーブル同士の関係** を定義する\n- ビジネス指標（**METRICS**）をあらかじめ定義しておく\n- CoWork はこの定義をもとに自然言語の質問を SQL に変換する\n\nまずは Agent を作成し、その中でシンプルな Semantic View を作って接続します。\n主要な3テーブル（`products`、`posts`、`daily_sales`）だけで始めて、\nどこまで答えられるかを試していきましょう。"
    },
    {
      "cell_type": "markdown",
      "id": "p3-md-2-agent",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "### Cortex Agent を作成して Semantic View を接続する\n\n> **注意:** エージェントの作成には権限が必要です。ロールが **ACCOUNTADMIN** になっていることを確認してください。\n\n#### Step 1: Agent を作成する\n\n1. Snowsight 左メニューから **「AI と ML」→「Agent Studio」** をクリック\n2. 右上の **「エージェントを作成」** をクリック\n3. 以下を入力\n\n   | 項目 | 入力値 |\n   |---|---|\n   | データベースとスキーマ | `AI_HANDSON_DB.ANALYTICS` |\n   | エージェントオブジェクト名 | `MARKETING_AGENT` |\n   | 表示名 | `MARKETING_AGENT` |\n\n4. **「エージェントを作成」** をクリック\n\n#### Step 2: 説明・指示を設定する\n\n作成すると Agent の **Overview** が開きます。上部の **「Configuration」** タブをクリックします。\n\n**「一般」サブタブ** で以下を入力\n\n| 項目 | 入力値 |\n|---|---|\n| 説明 | `インフルエンサー施策の効果分析。投稿データと売上データから、どんな写真が売上に貢献するかを分析します。` |\n\n**「手順」サブタブ** に切り替えて以下を入力\n\n| 項目 | 入力値 |\n|---|---|\n| 応答の指示 | `可能な限りチャートで回答してください。日本語で回答してください。` |\n\n右上の **「保存」** をクリック\n\n#### Step 3: Semantic View を作成する\n\n1. **「ツール」サブタブ** に切り替える\n2. **「構造化データのクエリ」** セクションのドロップダウンから **「新しいセマンティックビューを作成」** を選択\n3. セマンティックビューの管理画面が開くので、中央の **「セマンティックビューを作成」** をクリック\n\nウィザードが開きます。左サイドバーに4つのステップが表示されます。\n\n---\n\n**(1) コンテキストを入力してください**\n\n今回はコンテキストなしで作成します。右下の **「スキップ」** をクリック\n\n> SQL クエリや Tableau / Power BI ファイルを入力すると、既存の定義を取り込んで Semantic View を作れます。\n> 今回はテーブルのメタデータだけで自動生成し、後から改善していきます。\n\n---\n\n**(2) セマンティックビューに名前を付ける**\n\n| 項目 | 入力値 |\n|---|---|\n| 名前 | `SV_STEP1` |\n| 作成する場所 | `AI_HANDSON_DB.ANALYTICS` |\n\n**次へ**をクリック\n\n---\n\n**(3) テーブルを選択**\n\n左のツリーから `AI_HANDSON_DB` → `ANALYTICS` を展開し、以下の **3テーブルのみ** にチェックを入れる\n\n| テーブル | 内容 |\n|---|---|\n| `PRODUCTS` | 商品マスタ（5商品） |\n| `POSTS` | インフルエンサーの SNS 投稿（53件） |\n| `DAILY_SALES` | 日別売上（305件） |\n\n**次へ**をクリック\n\n---\n\n**(4) 列を選択**\n\n- カラムは **すべて選択**\n- 画面下部のトグルを確認:\n  - **サンプル値を追加** → **オン**\n  - **説明を追加** → **オン**\n\n**「作成」** をクリック（生成には数分かかります）\n\n---\n\n#### 作成された Semantic View を確認する\nLogical Tables に指定した3テーブルが表示され、各ディメンションに説明文が追加されていることを確認しましょう。\n\n#### Step 4: 作成した Semantic View を Agent に接続する\n\n1. Agent の設定画面に戻る（**「AI と ML」→「Agent Studio」** から `MARKETING_AGENT` を開く）\n2. **「Configuration」** タブ → **「ツール」サブタブ**\n3. **「構造化データのクエリ」** セクションの **「セマンティックビューを作成」** をクリック\n4. 以下を入力\n\n   | 項目 | 入力値 |\n   |---|---|\n   | セマンティックビュー | `AI_HANDSON_DB.ANALYTICS.SV_STEP1` |\n   | 名前 | `sv_step1` |\n   | 説明 | `インフルエンサー投稿と売上の基本データ` |\n   | ウェアハウス | `AI_HANDSON_ADAPTIVE_WH` |\n\n5. **「追加」** → 右上の **「保存」** → **「公開」** をクリック\n\n> **重要:** 「保存」だけでは Draft 状態です。**「公開」を押さないと CoWork に反映されません。**\n>\n> 「公開」ダイアログが表示されたら、すべてデフォルトのまま **「公開」** を押してください。\n>\n> | 項目 | 説明 | 今回の操作 |\n> |---|---|---|\n> | **このバージョンを使用する** | チェックを入れると、公開と同時にこのバージョンがアクティブになる | **チェックのまま** |\n> | **注意（オプション）** | バージョンのメモ（後から変更履歴を振り返るとき用） | **空欄のまま** |\n> | **エイリアス（オプション）** | API からバージョンを名前で参照するための別名 | **空欄のまま** |"
    },
    {
      "cell_type": "markdown",
      "id": "p3-md-3",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 3. CoWork で質問してみる\n\n### CoWork を開く\n\n1. Snowsight 左メニューから **「AI と ML」→「Snowflake CoWork」** をクリック\n2. Agent 選択で **`マーケティングエージェント`** を選ぶ\n\n### 質問例（単一テーブルで完結する質問）\n\n```\n商品別の売上金額の合計を教えて\n```\n\n```\nいいね数が多い投稿トップ5を教えて\n```\n\n\n### こんな質問はどうでしょう？\n\n**(1) テーブルを跨ぐ質問**\n\n```\n商品カテゴリごとに、SNSのいいね数と売上金額を並べて見せて\n```\n\n**(2) 社内 KPI を使う質問**\n\n```\nバズスコアが一番高い投稿はどれ?\n```\n\n**(3) 画像の中身に関する質問**\n\n```\n人物が写っている投稿と写っていない投稿で、売上効果に差はある?\n```"
    },
    {
      "cell_type": "markdown",
      "id": "p3-md-4",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 4. Semantic View を改善する\n\n先ほどの Semantic View はそのまま残し、改善版の `SV_STEP2` を新しく作ります。\n\n### 改善するポイント\n\n| # | 追加するもの | 解決する問題 |\n|---|---|---|\n| 1 | **COMMENT**（説明文）+ **SYNONYMS**（別名） | カラム名だけでは伝わらない意味を補う |\n| 2 | **RELATIONSHIPS**（テーブル間の関係） | テーブルを跨いだ質問に答えられるようにする |\n| 3 | **FACTS / METRICS**（社内 KPI の計算式） | 社内独自指標(ここでは「バズスコア」)の計算方法を定義 |\n| 4 | **AI_VERIFIED_QUERIES**（検証済みクエリ） | よく聞かれる質問に「お墨付きの SQL」を用意する |\n\nさらに **`image_features`（画像特徴量）テーブルを追加**して、画像の中身を絡めた質問にも答えられるようにします。\n\n### AI_VERIFIED_QUERIES（検証済みクエリ）\n\n「この質問にはこの SQL が正解」というペアを登録しておく機能です。\nAgent はこれを参考にするため、**同じ質問への回答が安定します**。\n`ONBOARDING_QUESTION TRUE` にすると、CoWork の初期画面に質問候補として表示されます。"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "id": "p3-sql-4-1",
      "metadata": {
        "language": "sql",
        "name": "SQL 4-1",
        "resultVariableName": "dataframe_3_6",
        "title": "SQL 4-1"
      },
      "outputs": [],
      "source": "-- Semantic View 改善版\nCREATE OR REPLACE SEMANTIC VIEW SV_STEP2\n\n  -- TABLES: テーブルごとに主キー・別名・説明文を定義する\n  --   image_features を追加して画像の特徴量も扱えるようにする\n  TABLES (\n    posts\n      PRIMARY KEY (post_id)\n      WITH SYNONYMS = ('SNS投稿', 'インフルエンサー投稿')\n      COMMENT = 'インフルエンサーの SNS 投稿データ。1行が1投稿',\n    products\n      PRIMARY KEY (product_id)\n      WITH SYNONYMS = ('商品マスタ', '商品')\n      COMMENT = '旅行グッズブランドの商品マスタ。5商品',\n    daily_sales\n      PRIMARY KEY (product_id, sale_date)\n      WITH SYNONYMS = ('売上', '販売実績')\n      COMMENT = '商品ごとの日別売上データ',\n    image_features\n      PRIMARY KEY (image_file)\n      WITH SYNONYMS = ('画像特徴量', '写真の特徴')\n      COMMENT = '投稿画像を AI(AI_COMPLETE)で分析して構造化した特徴量。1行が1画像'\n  )\n\n  -- RELATIONSHIPS: テーブル間の結合キーを定義する\n  RELATIONSHIPS (\n    posts_to_products AS\n      posts (product_id) REFERENCES products (product_id),\n    daily_sales_to_products AS\n      daily_sales (product_id) REFERENCES products (product_id),\n    posts_to_image_features AS\n      posts (image_path) REFERENCES image_features (image_file)\n  )\n\n  -- FACTS: 行レベルの計算式を定義する\n  --   バズスコアのような社内独自 KPI はここで計算式を明示する\n  FACTS (\n    posts.buzz_score AS likes * (1 + comments / 50)\n      WITH SYNONYMS = ('バズスコア', 'buzz score')\n      COMMENT = 'バズスコア: 社内独自のエンゲージメント評価指標。計算式は likes × (1 + comments / 50)。コメントの方がいいねより重みが大きい'\n  )\n\n  -- DIMENSIONS: グループ化や絞り込みに使うカテゴリ属性\n  --   SYNONYMS で日本語の別名を付けておくと自然言語の質問にマッチしやすくなる\n  DIMENSIONS (\n    posts.post_id AS post_id\n      COMMENT = '投稿ID',\n    posts.posted_at AS posted_at\n      COMMENT = '投稿日時',\n    posts.posted_date AS TO_DATE(posted_at)\n      COMMENT = '投稿日(日付のみ)',\n    products.product_id AS product_id\n      COMMENT = '商品ID',\n    products.product_name AS product_name\n      WITH SYNONYMS = ('商品名')\n      COMMENT = '商品名',\n    products.category AS category\n      WITH SYNONYMS = ('商品カテゴリ', 'カテゴリ')\n      COMMENT = '商品カテゴリ。スーツケース / ポーチ / ネックピロー / 充電器 / パスポートケース のいずれか',\n    daily_sales.sale_date AS sale_date\n      COMMENT = '売上日',\n    image_features.image_file AS image_file\n      COMMENT = '画像ファイル名',\n    image_features.photo_main_subject AS photo_main_subject\n      WITH SYNONYMS = ('写真の主役')\n      COMMENT = '写真の主役。商品 / 人物 / 両方 のいずれか',\n    image_features.has_person AS has_person\n      WITH SYNONYMS = ('人物の有無', '人が写っているか')\n      COMMENT = '人物が写っているか(true / false)',\n    image_features.person_gender AS person_gender\n      COMMENT = '写っている人物の性別。男性 / 女性 / NULL',\n    image_features.person_size AS person_size\n      WITH SYNONYMS = ('人物の大きさ')\n      COMMENT = '写真内での人物の大きさ。大きい / 中 / 小さい / NULL',\n    image_features.expression AS expression\n      WITH SYNONYMS = ('表情')\n      COMMENT = '人物の表情。笑顔 / クール / 自然体 / NULL',\n    image_features.location AS location\n      WITH SYNONYMS = ('撮影場所', 'ロケーション')\n      COMMENT = '撮影場所。自宅 / カフェ / 屋外 / スタジオ / 空港 / ホテル / 電車内 / その他',\n    image_features.product_usage AS product_usage\n      WITH SYNONYMS = ('商品の使用状態')\n      COMMENT = '写真内での商品の使用状態。未使用 / 使用中 / ビフォーアフター',\n    image_features.color_tone AS color_tone\n      WITH SYNONYMS = ('色調', '色のトーン')\n      COMMENT = '画像全体の色調。暖色系 / 寒色系 / パステル'\n  )\n\n  -- METRICS: 集計指標を定義する\n  --   FACTS で定義した buzz_score を SUM / AVG して集計できる\n  METRICS (\n    posts.total_likes AS SUM(posts.likes)\n      WITH SYNONYMS = ('いいね数')\n      COMMENT = 'いいね数の合計',\n    posts.total_comments AS SUM(posts.comments)\n      WITH SYNONYMS = ('コメント数')\n      COMMENT = 'コメント数の合計',\n    posts.total_buzz_score AS SUM(posts.buzz_score)\n      WITH SYNONYMS = ('バズスコア合計')\n      COMMENT = 'バズスコアの合計',\n    posts.avg_buzz_score AS AVG(posts.buzz_score)\n      WITH SYNONYMS = ('平均バズスコア')\n      COMMENT = '1投稿あたりの平均バズスコア。投稿数が異なるグループを比較するときはこちらを使う',\n    posts.post_count AS COUNT(posts.post_id)\n      COMMENT = '投稿件数',\n    daily_sales.total_units_sold AS SUM(daily_sales.units_sold)\n      WITH SYNONYMS = ('販売数')\n      COMMENT = '販売数の合計',\n    daily_sales.total_sales_amount AS SUM(daily_sales.sales_amount)\n      WITH SYNONYMS = ('売上', '売上金額')\n      COMMENT = '売上金額の合計(円)',\n    products.avg_price AS AVG(products.price)\n      COMMENT = '平均販売価格(円)'\n  )\n\n  COMMENT = 'インフルエンサー投稿画像の特徴量と売上を横断分析するための Semantic View。バズスコア等の社内KPIも定義済み'\n\n  -- AI_VERIFIED_QUERIES: よく聞かれる質問と正解 SQL のペアを登録する\n  --   Agent はこれを参考にして同じ質問に安定して答える\n  AI_VERIFIED_QUERIES (\n    top_buzz_posts AS (\n      QUESTION 'バズスコアが一番高い投稿はどれ?'\n      VERIFIED_AT 1788393600\n      ONBOARDING_QUESTION TRUE\n      SQL 'SELECT post_id, product_id, likes, comments, likes * (1 + comments / 50) AS buzz_score\n             FROM posts\n             ORDER BY buzz_score DESC NULLS LAST\n             LIMIT 10'\n    ),\n    buzz_by_person AS (\n      QUESTION '人物が写っている投稿と写っていない投稿で、平均バズスコアに差はある?'\n      VERIFIED_AT 1788393600\n      ONBOARDING_QUESTION TRUE\n      SQL 'SELECT f.has_person,\n                  COUNT(p.post_id) AS post_count,\n                  AVG(p.likes * (1 + p.comments / 50)) AS avg_buzz_score\n             FROM posts AS p\n             JOIN image_features AS f ON p.image_path = f.image_file\n             GROUP BY f.has_person\n             ORDER BY avg_buzz_score DESC NULLS LAST'\n    )\n  );"
    },
    {
      "cell_type": "markdown",
      "id": "p3-sql-4-2",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "### 改善版の Semantic View を確認する\n\nSemantic Studio で `SV_STEP2` を開いて、SV_STEP1 との違いを確認しましょう。\n\n1. Snowsight 左メニュー **「AI と ML」→「Cortex アナリスト」** を開く\n2. データベースで `AI_HANDSON_DB` を選択し、`SV_STEP2` をクリック\n\n確認ポイント:\n- **Logical Tables** に `IMAGE_FEATURES` が追加されている\n- **Relationships** にテーブル間の結合定義がある\n- **FACTS** に `buzz_score` の計算式が定義されている\n- **Verified Queries** に日本語の質問と SQL ペアが登録されている"
    },
    {
      "cell_type": "markdown",
      "id": "p3-md-4-swap",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "### Agent のツールを改善版に差し替える\n\n#### Step 1: 最初の Semantic View を削除する\n\n1. Snowsight 左メニュー **「AI と ML」→「Agent Studio」** から `MARKETING_AGENT` を開く\n2. **「Configuration」** タブ → **「ツール」サブタブ** を開く\n3. **「構造化データのクエリ」** セクションで `sv_step1` の横の **×** をクリックして削除\n\n#### Step 2: 改善版を追加する\n\n1. **「セマンティックビューを追加」** をクリック\n2. 以下を入力\n\n   | 項目 | 入力値 |\n   |---|---|\n   | セマンティックビュー | `AI_HANDSON_DB.ANALYTICS.SV_STEP2` |\n   | 名前 | `sv_step2` |\n   | 説明 | `インフルエンサー投稿画像の特徴量と売上の横断分析。バズスコア等の社内KPIも定義済み` |\n   | ウェアハウス | `AI_HANDSON_ADAPTIVE_WH` |\n\n3. **「追加」** → 右上の **「保存」** → **「公開」** をクリック\n\n#### Step 3: 同じ質問をもう一度投げる\n\nCoWork に戻り、**新しいチャット**を開いて先ほど失敗した質問を再度投げます。\n\n```\n商品カテゴリごとに、SNSのいいね数と売上金額を並べて見せて\n```\n\n```\nバズスコアが一番高い投稿はどれ?\n```\n\n```\n人物が写っている投稿と写っていない投稿で、平均バズスコアに差はある?\n```\n\n> **確認ポイント**\n> - 先ほどうまくいかなかった質問に、正しく回答できるようになったか\n> - バズスコアが `likes × (1 + comments / 50)` で計算されているか（生成 SQL を確認）\n> - `posts` と `image_features` を **JOIN した SQL** が自動生成されているか\n\n### さらに深掘りしてみる\n\n```\nバズスコアが高い投稿に共通する写真の特徴を教えて\n```\n\n```\n商品カテゴリ別に、最も効果的な色のトーンはどれ?\n```\n\n```\n撮影場所別の平均バズスコアを比較して\n```"
    },
    {
      "cell_type": "markdown",
      "id": "p3-md-5",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 5. PDF から Cortex Search を構築する（GUI）\n\n次は**非構造化データ（PDF）**を CoWork から検索できるようにします。\n\n> PDF は `data/pdf/` に配置し、`setup.sql` の Step 3 でステージへコピー済みです。\n\nCortex Search の GUI ウィザードは、**PDF の解析 → チャンク分割 → インデックス作成**まで一気通貫で行えます。\n（SQL での作成も可能です）\n\n```\nPDF（ステージ上）\n  ↓ GUI ウィザードが自動で処理\n  ↓  ① テキスト抽出（AI_PARSE_DOCUMENT 相当）\n  ↓  ② チャンク分割（SPLIT_TEXT 相当）\n  ↓  ③ 検索インデックス作成\nCortex Search Service 完成 → CoWork から PDF の内容を検索できる\n```\n\n---\n\n### Step 1: 新しいサービス\n\nSnowsight 左メニュー **「AI と ML」→「検索」** を開き、右上の **「作成」** をクリックします。\n\n**「新規 Cortex 検索サービスを作成しましょう」** 画面が表示されます。\n\n| 項目 | 設定値 |\n|---|---|\n| **ウェアハウス** | `AI_HANDSON_ADAPTIVE_WH` |\n| **サービスデータベースとスキーマ** | `AI_HANDSON_DB.ANALYTICS` |\n| **サービス名** | `PRODUCT_SPEC_SEARCH` |\n\n右下の **「次へ」** をクリック\n\n---\n\n### Step 2: データを追加\n\n**「インデックスを作成するデータを選択」** 画面が表示されます。\n\n1. 画面上部のタブで **「ステージ」** を選択（デフォルトは「テーブルまたはビュー」）\n2. ツリーを以下の順に展開する\n\n```\n▶ AI_HANDSON_DB\n  ▶ ANALYTICS\n    ▶ ステージ\n      ▶ DATA_STAGE\n        ▶ data\n          ▶ pdf    ← ここを開く\n            ☑ spec_PROD-001.pdf\n            ☑ spec_PROD-002.pdf\n            ☑ spec_PROD-003.pdf\n            ☑ spec_PROD-004.pdf\n            ☑ spec_PROD-005.pdf\n```\n\n3. `pdf` フォルダ内の **5 ファイルすべてにチェック** を入れる\n\n右下の **「次へ」** をクリック\n\n---\n\n### Step 3: 列の設定（解析戦略）\n\n**「ドキュメントの解析戦略を選択」** 画面が表示されます。\n\n| 選択肢 | 説明 | 選択 |\n|---|---|---|\n| マルチモーダル構造化 | 画像・表などの構造も含めて解析 | |\n| **テキスト組み込み** | テキストを抽出してチャンク分割 | **← こちらを選択** |\n\n右下の **「次へ」** をクリック\n\n---\n\n### Step 4: 設定配置（自動処理を構成）\n\n**「自動処理を構成」** 画面が表示されます。\n\n| 項目 | 設定値 |\n|---|---|\n| **対象（データベース.スキーマ）** | `AI_HANDSON_DB.ANALYTICS` |\n| **チャンキング方式** | **サイズ別のチャンク** |\n| **チャンクサイズ** | `300` |\n| **チャンクの重複** | `50` |\n\n右下の **「次へ」** をクリック\n\n---\n\n### Step 5: インデックス作成を確認\n\n**「検索サービスを確認」** 画面が表示されます。\n\n| 項目 | 設定値 |\n|---|---|\n| **ターゲットラグ** | `1 hour` |\n\n設定内容を確認し、右下の **「作成」** をクリック\n\n> 作成には数分かかります。ステータスが **ACTIVE** になるまで待ちましょう。  \nActiveになったら、データプレビューが確認できます。"
    },
    {
      "cell_type": "markdown",
      "id": "p3-md-6",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 6. 構造化 + 非構造化を横断する質問\n\n### Agent に Cortex Search Service を追加する\n\n1. Snowsight 左メニュー **「AI と ML」→「Agent Studio」** から `MARKETING_AGENT` を開く\n2. **「Configuration」** タブ → **「ツール」サブタブ** を開く\n3. **「ドキュメントと非構造化データを使用」** セクションの **「検索サービスを追加」** をクリック\n4. **「ツールを追加: Cortex 検索」** ダイアログが表示されます。以下を入力\n\n   | 項目 | 入力値 |\n   |---|---|\n   | **検索サービス** | `AI_HANDSON_DB.ANALYTICS.PRODUCT_SPEC_SEARCH` |\n   | **名前** | `product_spec_search` |\n   | **説明** | `商品スペックシート。素材・サイズ・洗濯・こだわりポイントなどの仕様情報を検索する` |\n\n   > **「高度な構成」** 以降の項目はデフォルトのままで OK です\n\n5. **「追加」** → 右上の **「保存」** → **「公開」** をクリック\n\n> **重要:** 「保存」だけでは Draft 状態です。**「公開」を押さないと CoWork に反映されません。**\n\nこれで Agent は **Semantic View（構造化）** と **Search Service（非構造化）** の2つのツールを持ちました。\nAgent が質問に応じて**どちらを使うかを自分で判断**します。\n\n### CoWork で試してみる\n\nSnowsight 左メニュー **「AI と ML」→「CoWork」** を開き、**新しいチャット**を開始します。\n\n質問例\n\n#### 非構造化データ（PDF）だけで答えられる質問\n\n```\nドキュメントからネックピローの素材と洗濯方法を教えて\n```\n\n####  両方を横断する質問\n\n```\n売上が一番良かった商品の、素材やサイズなどのスペックを教えて\n```\n\n```\nバズスコアが低い商品について、インフルエンサーにどういう投稿をしてもらったらバズれるか、商品の特徴から分析して\n```"
    },
    {
      "cell_type": "markdown",
      "id": "p3-md-7",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 7. Artifacts（チャート/テーブルの保存・共有）\n\n\n#### Step 1: Artifact として保存する\n\n1. これまでの質問の回答から、気に入ったチャートを1つ選ぶ\n2. チャート右上の **「Save」** をクリック\n\n#### Step 2: Artifacts ハブで確認する\n\n1. 左メニューの **「Artifacts」** を開く\n2. **「保存済み」** タブに、保存したチャートが表示されることを確認\n3. タイルをクリックすると展開表示される\n\n#### Step 3: フォローアップ質問をしてみる\n\n1. 展開した Artifact から追加の質問を投げる\n2. → **元の会話とは別の新しいスレッド**が始まり、Artifact の文脈を引き継いだまま深掘りできます"
    },
    {
      "cell_type": "markdown",
      "id": "p3-md-8",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 8. Document generation + コード実行ツール\n\n### まず: コード実行ツールを有効化する\n\n1. **「AI と ML」→「エージェント」** から `MARKETING_AGENT` を開く\n2. **「Configuration」** タブ → **「ツール」サブタブ**\n3. **「コード実行ツール」** のトグルを **オン** にする\n4. 右上の **「保存」** → **「公開」** をクリック\n\nCoWork は分析結果を**そのまま配れるファイル**に変換できます。\n裏側では Agent が Python コードを書いて、隔離されたサンドボックスで実行しています。\n\n### PowerPoint を自動生成する\n\nCoWork のチャットで以下のように依頼します。\n\n```\nここまでの分析結果を、マーケティング会議向けのPowerPointにまとめて。\n売上上位商品、バズスコアが高い写真の特徴、次の施策への提言を含めてください。\n```"
    },
    {
      "cell_type": "markdown",
      "id": "p3-md-9",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 9. Automations（定期実行レポート化）\n\n**Automation** は、Agent への質問を**定期実行されるレポート**に変える機能です。\n実行のたびに最新データで質問が再実行され、結果がメールで届きます。\n\n### やってみる\n\n#### Step 1: Automations タブから作成する\n\n1. CoWork 左メニューの **「Automations」** タブを開く\n2. **「Create in chat」** をクリック\n3. チャット画面が開くので、入力されたプロンプトを実行し、その後の指示に従う\n\nもしくは直接以下のような指示をすることでも設定が可能\n\n```\n先週のSNS投稿と売上の傾向をまとめて、毎週月曜の朝9時に送って\n```\n\n\n#### Step 2: 作成した Automation を確認する\n\n**「Automations」** タブに戻ると、登録したレポートが一覧に表示されます。\n\n- スケジュール・配信先・ステータスを確認\n- ここから**編集・一時停止・再開・削除**ができます"
    }
  ],
  "metadata": {
    "kernelspec": {
      "display_name": "Jupyter Notebook",
      "name": "jupyter"
    },
    "language_info": {
      "name": "python"
    }
  },
  "nbformat": 4,
  "nbformat_minor": 5
}*
���� 6b66d8d1003d12f4bcda881b788f79bf
��
part3_cortex_ai_functions.ipynb��{
  "cells": [
    {
      "cell_type": "markdown",
      "id": "cell-000",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "# Part 3 : Cortex AI 関数\n\nPart3 では、**SQL から直接呼び出せる Cortex AI 関数を使って、テキストや画像から構造化データを作る**体験を行います。\n\n本パートで使う関数は以下の 3 つです。\n\n| 関数 | できること |\n|---|---|\n| **AI_EXTRACT** | テキストや PDF から指定した項目を抽出し、JSON で返す |\n| **AI_SIMILARITY** | 2 つのテキストの意味的な類似度（0〜1）を返す |\n| **AI_COMPLETE** | プロンプトを渡して自由なテキスト生成・画像分析を行う |"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "id": "cell-001",
      "metadata": {
        "language": "sql",
        "name": "SQL 0-1",
        "resultVariableName": "dataframe_2_1",
        "title": "SQL 0-1"
      },
      "outputs": [],
      "source": "-- コンテキスト設定\nUSE ROLE ACCOUNTADMIN;\nUSE WAREHOUSE AI_HANDSON_ADAPTIVE_WH; -- Part2 で作成したアダプティブウェアハウス\nUSE DATABASE AI_HANDSON_DB;\nUSE SCHEMA ANALYTICS;\n"
    },
    {
      "cell_type": "markdown",
      "id": "cell-017",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "## 1. AI_EXTRACT — 構造化データを取り出す\n\n![AI_EXTRACT関数](data/slide/AI_EXTRACT.png)\n\nサンプルデータとして、**SNS に投稿されたテキスト（`sns_mentions` テーブル）** と **商品スペックシートの PDF** を用意しています。\nこれらの非構造化データから、商品名・カテゴリ・問い合わせタイプなどの項目を `AI_EXTRACT` で抜き出して試していきます。\n"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "id": "cell-018",
      "metadata": {
        "language": "sql",
        "name": "SQL 2-1",
        "resultVariableName": "dataframe_2_5",
        "title": "SQL 2-1"
      },
      "outputs": [],
      "source": "-- 元データの確認(SNS 投稿のサンプルデータ)\nSELECT\n    post_id,\n    platform,\n    username,\n    content,\n    likes,\n    posted_at\nFROM sns_mentions\nORDER BY posted_at\nLIMIT 10;"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "id": "cell-019",
      "metadata": {
        "language": "sql",
        "name": "SQL 2-2",
        "resultVariableName": "dataframe_2_6",
        "title": "SQL 2-2"
      },
      "outputs": [],
      "source": "-- AI_EXTRACT を 5 件だけ試してみる\n-- 投稿文から「商品名」「カテゴリ」「問い合わせタイプ」の3項目を抽出する\nSELECT\n    content,\n    AI_EXTRACT(\n        content,\n        {'product_name': '投稿で言及されている商品名',\n         'category':     '商品カテゴリ(ファッション / インテリア / テック など)',\n         'inquiry_type': '投稿の種類(質問 / レビュー / クレーム / 称賛 / 提案)'}\n    ) AS extracted\nFROM sns_mentions\nLIMIT 5;"
    },
    {
      "cell_type": "markdown",
      "id": "cell-020",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "`AI_EXTRACT` の結果は **JSON（VARIANT 型）** でそのまま返ってきます。\n実務ではこの JSON を**列に展開**して、通常のテーブルとして扱えるようにします。\n\n展開には `:response.<項目名>` という半構造化データのアクセス記法を使います。\n\n```\nextracted:response.product_name::VARCHAR AS product_name\n```\n\n- `extracted` … `AI_EXTRACT` の戻り値（VARIANT 型）\n- `:response` … JSON 内の `response` キーにアクセス\n- `.product_name` … その中の `product_name` を取り出す\n- `::VARCHAR` … 文字列型にキャスト"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "id": "cell-021",
      "metadata": {
        "language": "sql",
        "name": "SQL 2-3",
        "resultVariableName": "dataframe_2_7",
        "title": "SQL 2-3"
      },
      "outputs": [],
      "source": "-- 抽出結果を列に展開する\nSELECT\n    content,\n    extracted:response.product_name::VARCHAR AS product_name,\n    extracted:response.category::VARCHAR     AS category,\n    extracted:response.inquiry_type::VARCHAR AS inquiry_type\nFROM (\n    SELECT\n        content,\n        AI_EXTRACT(\n            content,\n            {'product_name': '投稿で言及されている商品名',\n             'category':     '商品カテゴリ(ファッション / インテリア / テック など)',\n             'inquiry_type': '投稿の種類(質問 / レビュー / クレーム / 称賛 / 提案)'}\n        ) AS extracted\n    FROM sns_mentions\n);"
    },
    {
      "cell_type": "markdown",
      "id": "90b35212-bee9-4e77-9ab7-bfcfa297fde5",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "#### PDF から抽出する\n\nテキストと同じ要領で、ステージ上の **PDF** からも抽出できます。\n第1引数を `TO_FILE('@ステージ', 'パス')` に変えるだけです。\n\n`setup.sql` でロード済みの商品スペックシート 5 枚から情報を抜き出してみましょう。\n\nサンプルPDFは、お手元のPCにダウンロードするかGithub上で確認してみてください。"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "id": "410f5766-e107-487f-a164-f39c89a98d96",
      "metadata": {
        "codeCollapsed": false,
        "collapsed": false,
        "language": "sql",
        "name": "SQL 2-4",
        "resultVariableName": "dataframe_2_8",
        "title": "SQL 2-4"
      },
      "outputs": [],
      "source": "-- ステージ上の商品スペック PDF を確認\nSELECT relative_path, size\nFROM DIRECTORY(@DATA_STAGE)\nWHERE relative_path ILIKE '%.pdf'\nORDER BY relative_path;"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "id": "a573bc0b-4d95-4e9e-8e03-4993d0ededf6",
      "metadata": {
        "language": "sql",
        "name": "SQL 2-5",
        "resultVariableName": "dataframe_2_9",
        "title": "SQL 2-5"
      },
      "outputs": [],
      "source": "-- PDF から商品情報を抽出する\nSELECT\n    relative_path AS pdf_file,\n    extracted:response.product_name::VARCHAR AS product_name,\n    extracted:response.category::VARCHAR     AS category,\n    extracted:response.price::VARCHAR        AS price,\n    extracted:response.material::VARCHAR     AS material\nFROM (\n    SELECT\n        relative_path,\n        AI_EXTRACT(\n            TO_FILE('@DATA_STAGE', relative_path),\n            {'product_name': '商品名',\n             'category':     '商品カテゴリ',\n             'price':        '価格（税込）',\n             'material':     '素材・材質'}\n        ) AS extracted\n    FROM DIRECTORY(@DATA_STAGE)\n    WHERE relative_path ILIKE '%.pdf'\n);"
    },
    {
      "id": "8acfc76d-3008-4004-8f87-cc39431da628",
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "## 2. AI_SIMILARITY — 類似度の算出\n\n![AI_SIMILARITY関数](data/slide/AI_SIMILARITY.png)\n\nサンプルデータとして、**仕入先から届いた商品リスト（`supplier_products_v2` テーブル）** と **自社の商品マスタ（`dim_products` テーブル）** を使います。\n実務では「同じ商品なのに名前が微妙に違う」ケースが頻発しますが、完全一致 JOIN では拾えません。\n`AI_SIMILARITY` で意味的な類似度を計算し、名寄せ候補を見つけていきます。\n\n**スコアは 0〜1 の数値。高いほど意味が近く、1 が完全一致。**\n\n**表記揺れの例**\n- 全角/半角:`ＬＥＤデスクライト` → `LEDデスクライト`\n- 同義語:`ライト` ↔ `ランプ` ↔ `灯`\n- 語順逆転:`ウール 高品質ブランケット` → `高品質ウールブランケット`\n- ブランド名付き:`GlacierStyle スタイリッシュデスクライト`\n\n**処理の考え方:**\n- 仕入先商品(50件)× 商品マスタ(576件)= 全 28,800 通りの組み合わせを計算\n- 各仕入先商品に対して「最もスコアが高いマスタ商品」を候補として選ぶ\n- スコアが高い = AI が「似ている」と判断した組み合わせ\n  (最終的に「同じ商品か」の判断は人間が行う)\n"
    },
    {
      "id": "20b5511b-32e1-429a-b6bd-088e03639d9f",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_2_19",
        "title": "SQL 2-10"
      },
      "source": "-- 仕入先データのプレビュー(表記揺れを含む)\nSELECT\n    supplier_product_id,\n    supplier_product_name,\n    supplier_name,\n    supplier_price,\n    supplier_category\nFROM supplier_products_v2;",
      "outputs": [],
      "execution_count": null
    },
    {
      "id": "d62fb6ac-d6da-4b90-9121-4d487ab55c08",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_2_20",
        "title": "SQL 2-11"
      },
      "source": "-- 商品マスタのプレビュー(突合先)\nSELECT\n    product_id,\n    product_name,\n    category_l2,\n    brand,\n    current_price\nFROM dim_products;",
      "outputs": [],
      "execution_count": null
    },
    {
      "id": "00dfa837-669f-46f7-988b-019fb09a92b4",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "similarity_demo",
        "title": "SQL 2-12"
      },
      "source": "%%sql -r similarity_demo\n-- 2つの例で AI_SIMILARITY のスコアを比較する\n-- 例1: 全角/半角の違いだけ → ほぼ 1.0\n-- 例2: 「壁に飾る写真入れ」と「ウォールフレーム」→ 文字は全然違うが意味は同じ\nSELECT\n    supplier_name,\n    master_name,\n    ROUND(AI_SIMILARITY(supplier_name, master_name), 3) AS similarity\nFROM (\n    SELECT 'ＬＥＤ調光デスクライト' AS supplier_name, 'LED調光デスクライト' AS master_name\n    UNION ALL\n    SELECT '壁に飾る写真入れ', 'ウォールフレーム'\n);",
      "outputs": [],
      "execution_count": null
    },
    {
      "id": "aaa056de-7276-4bab-bc7b-5e54c810fa60",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_2_21",
        "title": "SQL 2-13"
      },
      "source": "-- AI_SIMILARITY による名寄せ(サンプル50件)\n-- 少し時間がかかります(CROSS JOIN のため)\n--\n-- 処理の流れ:\n--   1. 仕入先商品(50件)× 商品マスタ(576件)を全組み合わせで比較\n--   2. 各仕入先商品に対して最もスコアが高いマスタ商品を選ぶ(rank = 1)\n--   3. スコアが高いほど AI が「同じ商品」と判断した組み合わせ\nCREATE OR REPLACE TABLE work_ai_similarity_match AS\nWITH sample_suppliers AS (\n    SELECT * FROM supplier_products_v2 SAMPLE (50 ROWS)\n),\nsimilarity_calc AS (\n    SELECT\n        sp.supplier_product_id,\n        sp.supplier_product_name,\n        dp.product_id,\n        dp.product_name,\n        AI_SIMILARITY(sp.supplier_product_name, dp.product_name) AS ai_sim,\n        ROW_NUMBER() OVER (\n            PARTITION BY sp.supplier_product_id\n            ORDER BY AI_SIMILARITY(sp.supplier_product_name, dp.product_name) DESC\n        ) AS rank\n    FROM sample_suppliers sp\n    CROSS JOIN dim_products dp\n)\nSELECT\n    supplier_product_id,\n    supplier_product_name,\n    product_id   AS matched_product_id,\n    product_name AS matched_product_name,\n    ROUND(ai_sim, 3) AS ai_similarity\nFROM similarity_calc\nWHERE rank = 1;\n\n-- 結果確認(スコアが高い順)\nSELECT * FROM work_ai_similarity_match\nORDER BY ai_similarity DESC;",
      "outputs": [],
      "execution_count": null
    },
    {
      "id": "c405b83b-ed3f-47e0-ba81-0ad759e2bd97",
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "## 3. AI_COMPLETE — 自由なプロンプトを実行\n\n![AI_COMPLETE関数](data/slide/AI_COMPLETE.png)\n\nAI_COMPLETEは画像や音声などの非構造化データも扱えます。\n\nここではサンプルデータとして、**インフルエンサーの投稿画像（`@POST_IMAGES` ステージ）** を使います。\n`AI_COMPLETE` にプロンプトと画像を渡して、「人が写っているか」「どこで撮っているか」「商品を使っている状態か」などを構造化データにしていきます。\n\nサンプル画像はお手元のPCにダウンロードするか、Github上で確認してみてください。\n"
    },
    {
      "id": "f1629380-9081-4c2a-9533-129f132d5b70",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_2_14",
        "title": "SQL 2-14"
      },
      "source": "-- ステージ上の投稿画像を確認\nSELECT\n    relative_path,\n    size\nFROM DIRECTORY(@POST_IMAGES)\nORDER BY relative_path;",
      "outputs": [],
      "execution_count": null
    },
    {
      "id": "56e80ebf-b0d7-454a-8150-e7295181882d",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_2_15",
        "title": "SQL 2-15"
      },
      "source": "-- AI_COMPLETE で画像を 3 枚だけ分析してみる\n-- JSON 形式で返すようにプロンプトで指示する\nSELECT\n    RELATIVE_PATH AS image_file,\n    PARSE_JSON(\n        REGEXP_REPLACE(\n            AI_COMPLETE(\n                'claude-sonnet-5',\n                PROMPT(\n                    $$以下の画像を分析して、JSON形式で結果を返してください。\nJSONオブジェクトのみ返してください。説明文やコードブロック記法は不要です。\n\nphoto_main_subject: \"商品\" or \"人物\" or \"両方\"\nhas_person: true or false\nlocation: \"自宅\" or \"カフェ\" or \"屋外\" or \"スタジオ\" or \"空港\" or \"ホテル\" or \"電車内\" or \"その他\"\nproduct_usage: \"未使用\" or \"使用中\" or \"ビフォーアフター\"\ncolor_tone: \"暖色系\" or \"寒色系\" or \"パステル\"\n\n画像: {0}$$,\n                    TO_FILE('@POST_IMAGES', RELATIVE_PATH)\n                )\n            ),\n            '^[^{]*|[^}]*$', ''\n        )\n    ) AS ai_response\nFROM DIRECTORY(@POST_IMAGES)\nORDER BY RELATIVE_PATH\nLIMIT 3;",
      "outputs": [],
      "execution_count": null
    },
    {
      "id": "f9d272ad-eba7-4d0a-b187-4b1464e51d03",
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "同じ処理を **全件**に対して実行し、テーブルに保存します。\n\n(ここで作成したテーブルはCoWorkのハンズオンでも利用します)"
    },
    {
      "id": "10f68587-26fa-43e1-9f19-597f84433ec9",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_2_16",
        "title": "SQL 2-16"
      },
      "source": "-- 全件を構造化して image_features テーブルを作成\nCREATE OR REPLACE TABLE image_features AS\nSELECT\n    SPLIT_PART(RELATIVE_PATH, '/', -1) AS image_file,\n    PARSE_JSON(\n        REGEXP_REPLACE(\n            AI_COMPLETE(\n                'claude-sonnet-5',\n                PROMPT(\n                    $$以下の画像を分析して、JSON形式で結果を返してください。\nJSONオブジェクトのみ返してください。説明文やコードブロック記法は不要です。\n\nphoto_main_subject: \"商品\" or \"人物\"\nhas_person: true or false\nperson_gender: \"男性\" or \"女性\" or null\nperson_size: \"大きい\" or \"中\" or \"小さい\" or null\nexpression: \"笑顔\" or \"クール\" or \"自然体\" or null\nlocation: \"自宅\" or \"カフェ\" or \"屋外\" or \"スタジオ\" or \"空港\" or \"ホテル\" or \"電車内\" or \"その他\"\nproduct_usage: \"未使用\" or \"使用中\" or \"ビフォーアフター\"\ncolor_tone: \"暖色系\" or \"寒色系\" or \"パステル\"\n\n画像: {0}$$,\n                    TO_FILE('@POST_IMAGES', RELATIVE_PATH)\n                )\n            ),\n            '^[^{]*|[^}]*$', ''\n        )\n    ) AS features_json,\n    features_json:photo_main_subject::VARCHAR AS photo_main_subject,\n    features_json:has_person::BOOLEAN         AS has_person,\n    features_json:person_gender::VARCHAR      AS person_gender,\n    features_json:person_size::VARCHAR        AS person_size,\n    features_json:expression::VARCHAR         AS expression,\n    features_json:location::VARCHAR           AS location,\n    features_json:product_usage::VARCHAR      AS product_usage,\n    features_json:color_tone::VARCHAR         AS color_tone\nFROM DIRECTORY(@POST_IMAGES);",
      "outputs": [],
      "execution_count": null
    },
    {
      "id": "3f60e477-03e7-4409-adb8-aaae5a6fb487",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_2_17",
        "title": "SQL 2-17"
      },
      "source": "-- image_features を確認\nSELECT\n    image_file,\n    photo_main_subject,\n    has_person,\n    person_gender,\n    expression,\n    location,\n    product_usage,\n    color_tone\nFROM image_features\nORDER BY image_file;",
      "outputs": [],
      "execution_count": null
    },
    {
      "id": "9eb54de1-a6de-41d1-a142-0d2fb7420131",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_2_18",
        "title": "SQL 2-18"
      },
      "source": "-- 画像が構造化されたので、売上と突き合わせられる\n-- 「人物が写っている投稿」と「商品だけの投稿」でいいね数を比較\nSELECT\n    f.has_person,\n    COUNT(*)                  AS post_count,\n    ROUND(AVG(p.likes), 1)    AS avg_likes,\n    ROUND(AVG(p.comments), 1) AS avg_comments\nFROM posts p\nJOIN image_features f ON p.image_path = f.image_file\nGROUP BY f.has_person\nORDER BY avg_likes DESC;",
      "outputs": [],
      "execution_count": null
    }
  ],
  "metadata": {
    "kernelspec": {
      "display_name": "Jupyter Notebook",
      "name": "jupyter"
    },
    "language_info": {
      "name": "python"
    }
  },
  "nbformat": 4,
  "nbformat_minor": 5
}*
���� 2c324ed04fe036d59039ca7b0357e121
�\
part1_cortex_code.ipynb�\{
  "metadata": {
    "kernelspec": {
      "display_name": "Jupyter Notebook",
      "name": "jupyter"
    }
  },
  "nbformat": 4,
  "nbformat_minor": 5,
  "cells": [
    {
      "id": "30bba71d-a2e8-4ca5-8343-b7de0329c4f7",
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "# Part 1 : Cortex Code (CoCo) 活用例\n\n> **CoCo の開き方:** Snowsight の右下の **CoCo アイコン（吹き出し）** をクリックするとチャットパネルが開きます。"
    },
    {
      "id": "c2850bcc-8a78-4422-b994-33a74778ac9e",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_0_1",
        "title": "SQL 0-1"
      },
      "source": "-- コンテキスト設定\nUSE ROLE ACCOUNTADMIN;\nUSE WAREHOUSE AI_HANDSON_WH;\nUSE DATABASE AI_HANDSON_DB;\nUSE SCHEMA ANALYTICS;",
      "outputs": [],
      "execution_count": null
    },
    {
      "id": "00b78261-5d57-46a4-a97b-37716f04550d",
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 1. コードの説明・レビュー\n\nCoCoに既存のコードを読み解いてもらいます。\n他人が書いたSQLを引き継いだときなど、複雑なクエリの意味を理解したいときに便利です。\n\n1. 下の SQL セルを **クリックして選択** する(もしくはセル右上の星マークをクリックする)\n2. CoCo チャットで以下のように聞いてみましょう\n\n```\nこのSQLを説明して\n```\n\n> **ポイント:** CoCo はアクティブなセルのコードを読み取り、処理の流れ・各CTEの役割・最終出力を日本語で解説してくれます。"
    },
    {
      "id": "1bc7ed87-9f9d-40e6-b1df-c4c7bb16ddc9",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_0_2",
        "title": "SQL 1-1"
      },
      "source": "-- この SQL が何をしているか、CoCo に聞いてみましょう\nWITH post_engagement AS (\n    SELECT\n        p.product_id,\n        p.post_id,\n        p.likes,\n        p.comments,\n        p.likes + p.comments * 2 AS engagement_score,\n        CASE\n            WHEN HOUR(p.posted_at) BETWEEN 18 AND 23 THEN '夜'\n            WHEN HOUR(p.posted_at) BETWEEN 11 AND 17 THEN '昼'\n            ELSE '朝・深夜'\n        END AS time_slot\n    FROM posts p\n),\nproduct_summary AS (\n    SELECT\n        pe.product_id,\n        pr.product_name,\n        pr.category,\n        COUNT(*)                          AS post_count,\n        ROUND(AVG(pe.engagement_score),1) AS avg_engagement,\n        SUM(CASE WHEN pe.time_slot = '夜' THEN 1 ELSE 0 END)  AS night_posts,\n        SUM(CASE WHEN pe.time_slot <> '夜' THEN 1 ELSE 0 END) AS other_posts\n    FROM post_engagement pe\n    JOIN products pr ON pe.product_id = pr.product_id\n    GROUP BY pe.product_id, pr.product_name, pr.category\n),\nsales_summary AS (\n    SELECT\n        product_id,\n        SUM(units_sold)   AS total_units,\n        SUM(sales_amount) AS total_sales\n    FROM daily_sales\n    GROUP BY product_id\n)\nSELECT\n    ps.product_name,\n    ps.category,\n    ps.post_count,\n    ps.avg_engagement,\n    ps.night_posts,\n    ps.other_posts,\n    ss.total_units,\n    ss.total_sales,\n    ROUND(ss.total_sales / NULLIF(ps.post_count, 0), 0) AS sales_per_post\nFROM product_summary ps\nJOIN sales_summary ss ON ps.product_id = ss.product_id\nORDER BY sales_per_post DESC;",
      "outputs": [],
      "execution_count": null
    },
    {
      "id": "feca0021-a840-455a-8f05-5b055c794c9c",
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 2. 自然言語で SQL 生成\n\nCoCo にやりたいことを自然言語で伝えるだけで、**テーブル構造を自分で探索して SQL を生成** してくれます。\nテーブル名やカラム名を覚えていなくても大丈夫です。\n\n### やってみよう\n\n次のブランクセルを選択し、CoCo チャットで以下のように聞いてみましょう。\n\n```\nAI_HANDSON_DB.ANALYTICS にあるテーブルを使って、\n商品カテゴリ別・週別のエンゲージメント率（いいね数÷投稿数）を集計するSQLを書いて\n```\n\n> **観察ポイント:**\n> - CoCo がまず `SHOW TABLES` や `DESCRIBE TABLE` でテーブル構造を調べに行く\n> - カラム名・型を確認してから SQL を組み立てる\n> - 結果の SQL をそのままセルに貼って実行できる\n\n### もう1つ試してみよう\n\n```\n投稿した曜日ごとに、平均いいね数と\n投稿日から7日間の売上合計を比較するSQLを書いて\n```\n\n> **ポイント:** テーブル名を指定していなくても、CoCo は `posts`・`daily_sales` を\n> 自動的に見つけて、日付の範囲で JOIN してくれます。"
    },
    {
      "id": "db9eac04-bcf8-4e7a-94cf-56729362168a",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_0_3",
        "title": "SQL 2-1"
      },
      "source": "",
      "outputs": [],
      "execution_count": null
    },
    {
      "id": "ee1d939d-532d-488e-932a-334e65a0e028",
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 3. エラー修正\n\n以下は「商品カテゴリ × 投稿プラットフォーム別に、エンゲージメントと売上を集計する」SQLですが、**複数の間違いが含まれています**。\n\nまず実行してエラーを確認し、CoCo に修正してもらいましょう。"
    },
    {
      "id": "2c5be6ad-88b0-4582-b031-81c462b0c231",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_0_4",
        "title": "SQL 3-1"
      },
      "source": "-- 商品カテゴリ別・投稿プラットフォーム別のエンゲージメントと売上を分析\n-- platform: 投稿先SNS（Instagram / X など）\n-- total_revenue: 単価 × 販売数量 の合計\nSELECT\n    pr.category,\n    pr.product_name,\n    p.platform,\n    COUNT(p.post_id)                            AS post_count,\n    ROUND(AVG(p.likes), 1)                      AS avg_likes,\n    SUM(ds.units_sold)                          AS total_units,\n    ROUND(SUM(ds.price * ds.units_sold), 0)     AS total_revenue\nFROM posts p\nJOIN products pr       ON p.product_id = pr.product_id\nJOIN daily_sales ds    ON p.product_id = ds.product_id\nGROUP BY pr.category, p.platform\nORDER BY total_revenue DESC;",
      "outputs": [],
      "execution_count": null
    },
    {
      "id": "ef58f7b0-895a-4056-82f6-83f102b2ac5a",
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "**エラーを修正** をクリックしてください。\n"
    },
    {
      "id": "31354d63-8dd9-46ba-a276-a32caa07cfe0",
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "> **解答: 仕込まれたエラー 3 箇所**\n>\n> | # | エラー箇所 | 原因 | 修正方法 |\n> |---|---|---|---|\n> | 1 | `p.platform` | `posts` に `platform` は存在しない。`sns_mentions` のカラム | `sns_mentions` を JOIN して参照するか、カラムを削除 |\n> | 2 | `ds.price * ds.units_sold` | `daily_sales` に `price` は存在しない。`products` のカラム | `pr.price * ds.units_sold` にするか、`ds.sales_amount` を使う |\n> | 3 | `pr.product_name` | SELECT にあるのに `GROUP BY` に含まれていない | `GROUP BY` に `pr.product_name` を追加するか、SELECT から外す |"
    },
    {
      "id": "ff0e37a0-ce4b-4ef8-8721-25e462383fca",
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 4. テストデータ生成\n\nCoCo はテーブル定義と既存データの文脈を理解して、**整合性のあるサンプルデータ**を自動生成できます。\nここでは CoCo に `.sql` ファイルを作らせ、インフルエンサー関連のサンプルデータを用意して既存データと JOIN 分析を行います。\n\n\n### シナリオ\n\n既存の `POSTS` テーブルには投稿データがありますが、**誰が投稿したか**の情報がありません。\nインフルエンサーのマスタテーブルと、投稿との紐づけテーブルを新規作成して、\n「どんなインフルエンサーの投稿がエンゲージメントや売上に貢献しているか」を分析しましょう。\n\n### やってみよう\n\nCoCo チャットで以下のように依頼してみましょう。\n\n```\nインフルエンサー別の投稿効果を分析したいが、まだデータがないのでサンプルデータから作りたい。\nAI_HANDSON_DB.ANALYTICS の POSTS テーブルと JOIN できる形で、以下を含む SQL ファイル「create_influencer_data.sql」を作成して。\n\n- インフルエンサーのマスタテーブルの作成とサンプルデータの投入\n- 投稿との紐づけテーブルの作成とサンプルデータの投入\n- 作成したデータと既存の投稿・商品データを JOIN した確認用の集計クエリ\n- 末尾にクリーンアップ用の DROP TABLE（コメントアウト）\n```\n\n> **観察ポイント:**\n> - カラム定義を指定しなくても、CoCo が既存テーブルの構造を読み取って適切なカラムを設計する\n> - 左のファイル一覧に `create_influencer_data.sql` が現れる\n> - ファイルを開いて、CoCo がどんなカラムやデータを設計したか確認してみましょう\n> - 末尾にコメントアウトされた DROP TABLE 文があるので、ハンズオン後の後片付けにも使える\n\nファイルが作成されたら、左サイドバーから **`create_influencer_data.sql` を開いて実行（▶）** してください。\n\n**補足**\n- sqlは人によって出てくるものが変わってくるので、適宜確認しながら実行してください。\n- この様に長いコードを作成する時は1回でうまくいかないことも少なくないです。その場合CoCoにエラー修正を指示しながら進めてください。"
    },
    {
      "id": "e8be5749-e291-4e29-9c51-2b18a483bfdb",
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 5. ドキュメント生成\n\nCoCo にスキーマのメタデータを読ませて、**テーブル定義書を自動生成** させます。\nテーブルが増えるたびに手作業でドキュメントを更新する手間がなくなります。\n\n### やってみよう\n\nCoCo チャットで以下のように依頼してみましょう。\n\n```\nAI_HANDSON_DB.ANALYTICS スキーマの全テーブルについて、テーブル定義書を Markdown ファイルで新規作成して。\n各テーブルごとに以下を含めて:\n- テーブルの説明\n- カラム一覧（カラム名、型、説明）\n- 他テーブルとのリレーション\n```"
    },
    {
      "id": "07a45b21-33e0-4a4b-b387-7accd27aeefe",
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 6. App Runtime（デモ紹介）"
    }
  ]
}*
���� 9296f35eb863dfaa0501efa046f3ca16
��
part2_snowflake_basics.ipynb��{
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "# Part 2 : Snowflake 基礎\n\nPart2 では、 **Snowflake の基本機能**を一通り体験します。\nこの後の AI パートで使う SNS 投稿データ(`sns_mentions` テーブル)を題材に進めます。\n\n| # | 機能 | ポイント |\n|---|---|---|\n| 1 | アダプティブウェアハウス | サイズ指定なしでワークロードに応じて自動スケール |\n| 2 | ゼロコピークローン | ストレージを消費せずに瞬時にテーブルを複製 |\n| 3 | データ修正と SWAP | 開発用コピーで修正し、本番とアトミックに入れ替え |\n| 4 | UNDROP | 誤って削除したテーブルを瞬時に復旧 |\n| 5 | 動的テーブル | SELECT 文を書くだけで自動更新されるパイプライン |",
      "id": "39d3cb3c-9ea6-4511-a44a-3925ef269901"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 0-1",
        "title": "SQL 0-1",
        "resultVariableName": "dataframe_1_1"
      },
      "source": "-- コンテキスト設定\nUSE ROLE ACCOUNTADMIN;\nUSE WAREHOUSE AI_HANDSON_WH;\nUSE DATABASE AI_HANDSON_DB;\nUSE SCHEMA ANALYTICS;",
      "id": "28e9c6fb-190a-4303-9b52-e2fde03d4ddd"
    },
    {
      "cell_type": "markdown",
      "id": "cell-002",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 1. ウェアハウスの作成\n\nこの後のハンズオンで利用するウェアハウスとして、アダプティブウェアハウスを作成します。\nこの後の手順ではSQLで作成する流れになっていますが、GUIでも作成可能です。\n\n合わせて確認してみてください。\n\n> **GUI での作成方法**\n> \n> Snowsight 左メニュー **コンピュート → ウェアハウス → + ウェアハウス** で、タイプ に **適応型** を選択します。\n> ※ACCOUNT_ADMINなどウェアハウス作成権限があるロールを選択して行ってください"
    },
    {
      "cell_type": "markdown",
      "id": "cell-005",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "### SQL で作成する"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 1-1",
        "title": "SQL 1-1",
        "resultVariableName": "dataframe_1_2"
      },
      "source": "-- アダプティブウェアハウスを作成\nCREATE OR REPLACE ADAPTIVE WAREHOUSE AI_HANDSON_ADAPTIVE_WH\n    MAX_QUERY_PERFORMANCE_LEVEL = MEDIUM\n    QUERY_THROUGHPUT_MULTIPLIER = 2\n    COMMENT = 'Part 2 アダプティブウェアハウス ハンズオン用';",
      "id": "bba2e4d6-1c72-415c-b7d5-266cc6541df2"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 1-2",
        "title": "SQL 1-2",
        "resultVariableName": "dataframe_1_3"
      },
      "source": "-- 作成結果を確認\n-- 確認ポイント:\n--   1. \"type\" = ADAPTIVE → 従来の STANDARD でなくアダプティブウェアハウスとして作成されている\n--   2. \"size\" = NULL → アダプティブWHにはサイズ（XS/S/M/...）の概念がなく、ワークロードに応じて自動スケール\n--   3. \"state\" = ENABLED → アダプティブWHは SUSPEND/RESUME ではなく ENABLE/DISABLE で制御する（STARTED/SUSPENDED にはならない）\n--   4. \"max_query_performance_level\" = MEDIUM → 1クエリあたりに使えるコンピュートの上限（XSMALL〜X4LARGE）\n--   5. \"query_throughput_multiplier\" = 2 → 同時実行性能の倍率（デフォルト2、大きいほど並列処理に強い。0=無制限）\nSHOW WAREHOUSES LIKE 'AI_HANDSON_ADAPTIVE_WH';",
      "id": "b05bc914-6e03-4f62-b7ab-5c913fc06510"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 1-3",
        "title": "SQL 1-3",
        "resultVariableName": "dataframe_1_4"
      },
      "source": "-- アダプティブウェアハウスでクエリを実行してみる\nUSE WAREHOUSE AI_HANDSON_ADAPTIVE_WH;\n\n-- 商品別の売上を集計\nSELECT\n    p.product_name,\n    p.category,\n    SUM(s.units_sold)   AS total_units,\n    SUM(s.sales_amount) AS total_sales\nFROM daily_sales s\nJOIN products p ON s.product_id = p.product_id\nGROUP BY p.product_name, p.category\nORDER BY total_sales DESC;",
      "id": "4b33fd78-9485-4eaa-a626-f12eb54776a7"
    },
    {
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 2. ゼロコピークローン\n\nこのあと、データの修正(`twitter` を `x` に置き換える)を行います。\n本番テーブルを直接変更するのはリスクがあるため、まずは**開発用のコピー**を作成し、そちらで作業します。\n\nSnowflake の `CLONE` は**ゼロコピークローン**と呼ばれ、データを物理的にコピーしません。\nメタデータだけを複製するので、テーブルのサイズに関係なく**一瞬で完了し、追加のストレージも消費しません**。\nクローン後に変更した部分だけが、新たにストレージとして記録されます。\n\n### このセクションの流れ\n\n| SQL | やること |\n|---|---|\n| 2-1 | 本番テーブル `sns_mentions` の中身を確認 |\n| 2-2 | 本番テーブルの platform 別の件数を確認 |\n| 2-3 | `sns_mentions` をクローンして、開発用テーブル `sns_mentions_dev` を作成 |\n| 2-4 | `sns_mentions_dev` に本番と同じデータが入っていることを確認 |\n\n> 作った `sns_mentions_dev` は、次の「3. データ修正と SWAP」で使います。\n\n![IMAGE](./data/slides/part2/zerocopy.png)",
      "id": "a281e9e7-6e66-444f-b0c8-ca745f21d222"
    },
    {
      "id": "21d0edb5-3d90-44c5-bd85-ec8ae2f51848",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_2_1_prod",
        "title": "SQL 2-1"
      },
      "source": "%%sql -r dataframe_2_1_prod\n-- 本番テーブルの中身を確認(いいね数の多い順)\nSELECT post_id, platform, username, content, likes, hashtags\nFROM sns_mentions\nORDER BY likes DESC\nLIMIT 10;",
      "outputs": [],
      "execution_count": null
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 2-1",
        "title": "SQL 2-2",
        "resultVariableName": "dataframe_1_5"
      },
      "source": "-- 本番テーブルを確認(platform 別の件数)\nSELECT platform, COUNT(*) AS post_count\nFROM sns_mentions\nGROUP BY platform\nORDER BY platform;",
      "id": "d7be808b-3c16-40c4-af6a-e40dd38608d2"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 2-2",
        "title": "SQL 2-3",
        "resultVariableName": "dataframe_1_6"
      },
      "source": "-- 開発用のクローンを作成\nCREATE OR REPLACE TABLE sns_mentions_dev CLONE sns_mentions;",
      "id": "412e9182-fa5d-4da3-9106-519783f279f6"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 2-3",
        "title": "SQL 2-4",
        "resultVariableName": "dataframe_1_7"
      },
      "source": "-- クローンの中身を確認(SQL 2-1 と同じ結果になる)\nSELECT post_id, platform, username, content, likes, hashtags\nFROM sns_mentions_dev\nORDER BY likes DESC\nLIMIT 10;",
      "id": "457d2064-e78e-44da-8265-6301995f7b5c"
    },
    {
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 3. データ修正と SWAP\n\n`platform` 列には `twitter` という値が入っていますが、サービス名は現在 **X** に変わっています。\n開発用のクローンで値を修正し、問題なければ本番テーブルと入れ替えます。",
      "id": "4a42d81f-f3fc-41c4-8d06-9bc474f545bd"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 3-1",
        "title": "SQL 3-1",
        "resultVariableName": "dataframe_1_8"
      },
      "source": "-- 開発用テーブルで twitter を x に修正\nUPDATE sns_mentions_dev\nSET platform = 'x'\nWHERE platform = 'twitter';",
      "id": "352f425f-483e-426f-8de4-932fd19e3442"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 3-2",
        "title": "SQL 3-2",
        "resultVariableName": "dataframe_1_9"
      },
      "source": "-- 修正結果を確認(本番はまだ twitter のまま)\nWITH counts AS (\n    SELECT 'dev'  AS env, platform, COUNT(*) AS post_count FROM sns_mentions_dev GROUP BY platform\n    UNION ALL\n    SELECT 'prod' AS env, platform, COUNT(*) AS post_count FROM sns_mentions     GROUP BY platform\n)\nSELECT e.env, p.platform, COALESCE(c.post_count, 0) AS post_count\nFROM (SELECT column1 AS env      FROM VALUES ('dev'), ('prod'))                    e\nCROSS JOIN (SELECT column1 AS platform FROM VALUES ('instagram'), ('twitter'), ('x')) p\nLEFT JOIN counts c ON c.env = e.env AND c.platform = p.platform\nORDER BY e.env, p.platform;",
      "id": "fd5bf284-4528-42e4-8261-bc33d3b1db76"
    },
    {
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "修正が問題なさそうなので、本番テーブルと入れ替えます。\n\n`SWAP WITH` は 2 つのテーブルの**メタデータとデータを交換**します。\nアプリケーションから見ると、`sns_mentions` が一瞬で修正後のデータに切り替わります。\n\n**SWAP WITH のメリット**\n- **1 文で安全に入れ替えられる** : 一時テーブルを用意したり、名前の変更を何度も組み合わせたりする必要がありません。\n- **ゼロコピークローンと組み合わせられる** : 「クローンで修正 → SWAP で本番に反映」という流れを、追加のストレージをほとんど使わずに実現できます。",
      "id": "6ddccc03-22fd-4642-9049-70ea9b5d58b4"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 3-3",
        "title": "SQL 3-3",
        "resultVariableName": "dataframe_1_10"
      },
      "source": "-- 本番と開発を入れ替える\nALTER TABLE sns_mentions SWAP WITH sns_mentions_dev;",
      "id": "2b877e9e-0188-4842-8cc1-507fd0a09e95"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 3-4",
        "title": "SQL 3-4",
        "resultVariableName": "dataframe_1_11"
      },
      "source": "-- 本番が修正後のデータになっていることを確認\nSELECT platform, COUNT(*) AS post_count\nFROM sns_mentions\nGROUP BY platform\nORDER BY platform;",
      "id": "9620579e-93b5-4d7d-874c-3562c309d92a"
    },
    {
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 4. UNDROP によるデータ復旧\n\n後片付けで開発用テーブルを消すつもりが……**本番テーブルを誤って削除**してしまいました。",
      "id": "ced426f1-a90c-4946-8c7c-d089f1a74815"
    },
    {
      "id": "e65d49c6-eebe-40cf-a73d-97f3ce7b7735",
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "Snowflake には **Time Travel** という仕組みがあり、削除されたテーブルも保持期間内(デフォルト 1 日)であれば `UNDROP` で復旧できます。\n\nバックアップからのリストアは不要です。\n\n![IMAGE](./data/slides/part2/timetravel.png)"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 4-1",
        "title": "SQL 4-1",
        "resultVariableName": "dataframe_1_12"
      },
      "source": "-- 誤って本番テーブルを削除\nDROP TABLE sns_mentions;",
      "id": "13eee644-8aaa-4a2e-b743-dfadd3659204"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 4-2",
        "title": "SQL 4-2",
        "resultVariableName": "dataframe_1_13"
      },
      "source": "-- テーブルが存在しないためエラーになる\nSELECT COUNT(*) FROM sns_mentions;",
      "id": "46277b10-9dc3-43c4-9c8a-40d02c66fa1f"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 4-3",
        "title": "SQL 4-3",
        "resultVariableName": "dataframe_1_14"
      },
      "source": "-- テーブルを復旧\nUNDROP TABLE sns_mentions;",
      "id": "069d1466-2db0-4efc-bc8b-9ebe52c04dbe"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 4-4",
        "title": "SQL 4-4",
        "resultVariableName": "dataframe_1_15"
      },
      "source": "-- 修正後のデータのまま戻っていることを確認\nSELECT platform, COUNT(*) AS post_count\nFROM sns_mentions\nGROUP BY platform\nORDER BY platform;",
      "id": "23e18e6d-cc7d-4fca-b214-ad5910d5e665"
    },
    {
      "id": "3616e9e8-7362-42c3-bbd5-44c9bca229a1",
      "cell_type": "code",
      "metadata": {
        "language": "sql",
        "resultVariableName": "dataframe_4_5_before_fix",
        "title": "SQL 4-5"
      },
      "source": "%%sql -r dataframe_4_5_before_fix\n-- Time Travel で修正前(3章の UPDATE 実行前)のデータを確認\nSET update_qid = (\n    SELECT query_id\n    FROM TABLE(AI_HANDSON_DB.INFORMATION_SCHEMA.QUERY_HISTORY())\n    WHERE query_type = 'UPDATE'\n      AND query_text ILIKE '%sns_mentions_dev%'\n      AND execution_status = 'SUCCESS'\n    ORDER BY start_time DESC\n    LIMIT 1\n);\n\nSELECT platform, COUNT(*) AS post_count\nFROM sns_mentions BEFORE (STATEMENT => $update_qid)\nGROUP BY platform\nORDER BY platform;",
      "outputs": [],
      "execution_count": null
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 4-5",
        "title": "SQL 4-6",
        "resultVariableName": "dataframe_1_16"
      },
      "source": "-- 今度こそ開発用テーブルを削除\nDROP TABLE sns_mentions_dev;",
      "id": "0614cb24-094f-41e5-8fdf-f7c3f0d9522d"
    },
    {
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## 5. 動的テーブルによるパイプライン\n\n**動的テーブル(Dynamic Table)** は、「欲しい結果」を SELECT 文で定義するだけで、\n元テーブルの変更を検知して**自動で更新**してくれるテーブルです。\n\n- `TARGET_LAG` : 元データからどのくらいの遅れまで許容するか(最小 1 分)\n- `WAREHOUSE` : 更新処理に使うウェアハウス\n\n### このセクションでやること\n\nSNS の投稿データから、**「どのハッシュタグが、どの SNS で、どれだけ投稿・反応されているか」** を見る集計表を作ります。\n新しい投稿が入ってきても、集計表が**自動で最新の状態に保たれる**ことを確認します。\n\n```\nsns_mentions ──▶ DT_SNS_HASHTAGS ──▶ DT_HASHTAG_SUMMARY\n (元データ)       (ハッシュタグを展開)   (ハッシュタグ別に集計)\n```\n\n| Step | やること |\n|---|---|\n| 1 | 1 投稿に複数あるハッシュタグを、1 行ずつに分解する(集計できる形に整える) |\n| 2 | ハッシュタグ × SNS ごとに投稿数・平均いいね数を集計する |\n| 3 | 元データに投稿を追加し、2 段とも自動で更新されることを確認する |\n\n![IMAGE](./data/slides/part2/dynamictable01.png)\n![IMAGE](./data/slides/part2/dynamictable02.png)",
      "id": "29b69459-00a4-4a9e-a15f-ba4f5fdb7ec1"
    },
    {
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "### Step 1 : ハッシュタグを 1 行ずつに展開する\n\n`hashtags` 列は ARRAY 型で、1 投稿に複数のハッシュタグが入っています。\n`FLATTEN` を使うと、配列の要素ごとに行を生成できます。",
      "id": "53518942-6017-414f-8f42-610c131f16ab"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 5-1",
        "title": "SQL 5-1",
        "resultVariableName": "dataframe_1_17"
      },
      "source": "-- 元データの hashtags 列を確認\nSELECT post_id, platform, hashtags\nFROM sns_mentions\nLIMIT 5;",
      "id": "553d6ce7-48e4-4664-a8f6-f76b7e3d4ef5"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 5-2",
        "title": "SQL 5-2",
        "resultVariableName": "dataframe_1_18"
      },
      "source": "-- 1段目 : ハッシュタグを展開する動的テーブル\nCREATE OR REPLACE DYNAMIC TABLE DT_SNS_HASHTAGS\n    TARGET_LAG = '1 minute'\n    WAREHOUSE  = AI_HANDSON_WH\nAS\nSELECT\n    m.post_id,\n    m.platform,\n    m.posted_at,\n    m.likes,\n    h.value::VARCHAR AS hashtag\nFROM sns_mentions m,\n    LATERAL FLATTEN(input => m.hashtags) h;",
      "id": "9546d26a-fc2e-4938-ac5a-222a907e9d0e"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 5-3",
        "title": "SQL 5-3",
        "resultVariableName": "dataframe_1_19"
      },
      "source": "SELECT * FROM DT_SNS_HASHTAGS LIMIT 20;",
      "id": "a3b73b7a-2199-4a9f-8869-8712603c47d9"
    },
    {
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "### Step 2 : ハッシュタグ別に集計する\n\n1 段目の動的テーブルを元に、さらに動的テーブルを作ります。\nこのように**動的テーブル同士をつなげてパイプラインを組める**のが特徴です。",
      "id": "ff43ed55-e877-4731-8122-7c9ce1e20232"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 5-4",
        "title": "SQL 5-4",
        "resultVariableName": "dataframe_1_20"
      },
      "source": "-- 2段目 : ハッシュタグ × platform 別に集計する動的テーブル\nCREATE OR REPLACE DYNAMIC TABLE DT_HASHTAG_SUMMARY\n    TARGET_LAG = '1 minute'\n    WAREHOUSE  = AI_HANDSON_WH\nAS\nSELECT\n    hashtag,\n    platform,\n    COUNT(*)              AS post_count,\n    ROUND(AVG(likes), 1)  AS avg_likes\nFROM DT_SNS_HASHTAGS\nGROUP BY hashtag, platform;",
      "id": "a3ed9806-77f1-4e63-8b5f-f12074899817"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 5-5",
        "title": "SQL 5-5",
        "resultVariableName": "dataframe_1_21"
      },
      "source": "SELECT * FROM DT_HASHTAG_SUMMARY\nORDER BY post_count DESC\nLIMIT 20;",
      "id": "0edd921d-c5a8-4209-a671-4f82e22cdf8f"
    },
    {
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "### Step 3 : 元データを追加して自動更新を確認する\n\n**元テーブル `sns_mentions`** に新しい投稿を 1 件追加します。\n\n> ポイント : 追加するのは元テーブルだけです。Step 1・2 で作った動的テーブル(`DT_SNS_HASHTAGS` / `DT_HASHTAG_SUMMARY`)には、**INSERT も UPDATE も一切していません**。\n\nそれでも `TARGET_LAG`(1 分)以内に、元テーブルの変更が 2 段の動的テーブルへ自動で反映されます。\n\n```\nsns_mentions ──▶ DT_SNS_HASHTAGS ──▶ DT_HASHTAG_SUMMARY\n  ↑ ここに INSERT        (自動更新)            (自動更新)\n```",
      "id": "5f2a9818-e26a-419b-ace0-f2df69300456"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 5-6",
        "title": "SQL 5-6",
        "resultVariableName": "dataframe_1_22"
      },
      "source": "-- 新しい投稿を 1 件追加(新しいハッシュタグ「デスクツアー」付き)\nINSERT INTO sns_mentions (post_id, platform, post_type, username, display_name,\n                          content, posted_at, likes, retweets, replies, hashtags)\nSELECT\n    'SNS-X-2026-99999', 'x', 'post', '@desk_setup_jp', 'デスク整え中',\n    'グレイシャースタイルのデスクライトを導入。間接照明っぽくなって作業がはかどる!',\n    CURRENT_TIMESTAMP(), 100, 10, 5,\n    ARRAY_CONSTRUCT('デスクツアー', 'グレイシャースタイル');",
      "id": "32c7c695-649c-4a4f-912b-3d7f8f2548d1"
    },
    {
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "1 分ほど待ってから次のセルを実行してください。\n待っている間に、下の **DAG(依存関係グラフ)** を確認してみましょう。\n\n> 結果が 0 件の場合は、まだ動的テーブルが更新されていません。少し待って再実行してください。",
      "id": "98d645e6-abeb-4762-9d95-eb3e4a08d121"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 5-7",
        "title": "SQL 5-7",
        "resultVariableName": "dataframe_1_23"
      },
      "source": "-- 新しいハッシュタグが集計に反映されていることを確認\nSELECT *\nFROM DT_HASHTAG_SUMMARY\nWHERE hashtag = 'デスクツアー';",
      "id": "1e3f2132-9bbb-4ea5-bd83-5f44202a5d4c"
    },
    {
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "### DAG(有向非循環グラフ)でパイプラインを可視化する\n\n動的テーブル同士の依存関係は、Snowsight 上でグラフとして確認できます。\n\n1. Snowsight 左メニュー **カタログ → データベースエクスプローラー** を開く\n2. **AI_HANDSON_DB → ANALYTICS → 動的テーブル → DT_HASHTAG_SUMMARY** を選択\n3. **グラフ** タブを開く\n\n`SNS_MENTIONS → DT_SNS_HASHTAGS → DT_HASHTAG_SUMMARY` の流れと、各テーブルの更新状況(最終更新時刻、ラグ)を確認できます。\n**更新履歴** タブでは、各リフレッシュが増分(INCREMENTAL)で実行されたかも確認できます。",
      "id": "f0f70884-1ee5-4561-8185-316c45c1645c"
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "outputs": [],
      "metadata": {
        "language": "sql",
        "name": "SQL 5-8",
        "title": "SQL 5-8",
        "resultVariableName": "dataframe_1_24"
      },
      "source": "-- SQL で更新状況を確認することもできる\nSHOW DYNAMIC TABLES IN SCHEMA AI_HANDSON_DB.ANALYTICS;",
      "id": "ca2a1d32-9681-4e78-bed7-4b739c3144ba"
    },
    {
      "cell_type": "markdown",
      "metadata": {
        "codeCollapsed": true,
        "collapsed": false
      },
      "source": "---\n## まとめ\n\n- **アダプティブウェアハウス** : サイズを意識せずに使える\n- **ゼロコピークローン + SWAP** : 本番を止めずに、安全に修正して切り替えられる\n- **UNDROP** : 誤削除もすぐに戻せる\n- **動的テーブル** : SELECT を書くだけで、自動更新されるパイプラインを作れる\n\n次の Part3 では、同じ `sns_mentions` テーブルに **Cortex AI 関数**を使っていきます。",
      "id": "d3d5159f-456f-4708-bc25-812d0f90c50b"
    }
  ],
  "metadata": {
    "kernelspec": {
      "display_name": "Jupyter Notebook",
      "name": "jupyter"
    },
    "language_info": {
      "name": "python"
    }
  },
  "nbformat": 4,
  "nbformat_minor": 5
}*
���� 2646995bc0ca216c2f731fb3e12887aa