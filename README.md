# Flutter for webでのStripe決済

## 使用方法
* [Stripeへの登録](https://stripe.com/jp)
以下、lib/stripe_checkout.dartに記入
* apiKeyのところに自分のapikeyを記入
* priceのところにStripeのダッシュボードで作ったpriceIdを記入
* modeのところにサブスクか買い切りかをを記入(subscriptionかpayment)
* successUrlに購入処理完了後のページのURLを記入
* cancelUrlに購入をキャンセルした場合の移動先ページのURlを記入
