@JS()
library stripe;

import 'package:flutter/cupertino.dart';
import 'package:js/js.dart';

void redirectToCheckout(BuildContext _) async {
  final apiKey = "ここにapiKey";
  final stripe = Stripe(apiKey);
  stripe.redirectToCheckout(
    CheckoutOptions(
        lineItems: [
          LineItem(price: "ここにpriceID", quantity: 1),
        ],
        //modeは自分の選択したプランを記入
        //サブスクの場合はsubscription
        //買い切りの場合payment
        mode: 'subscription',
        successUrl: "購入完了後のページ",
        cancelUrl: "購入をキャンセルした時のページ"),
  );
}

@JS()
class Stripe {
  external Stripe(String key);

  external redirectToCheckout(CheckoutOptions checkoutOptions);
}

@JS()
@anonymous
class CheckoutOptions {
  external List<LineItem> get lineItems;

  external String get mode;
  external String get successUrl;
  external String get cancelUrl;

  external factory CheckoutOptions({
    List<LineItem> lineItems,
    String mode,
    String successUrl,
    String cancelUrl,
    String sessionId,
  });
}

@JS()
@anonymous
class LineItem {
  external String get price;
  external int get quantity;
  external factory LineItem({String price, int quantity});
}
