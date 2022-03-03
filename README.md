# InAppPurchases

Handle in-app purchases in swift in a convenient way.

## Overview

InAppPurchases covers all the basic aspects of in-app purchases in swift including purchase of a product, restore, request products, validation of receipt, auto parsing of receipt validation response and managing subscription on App Store. All the functions are available with callbacks.

## Installation

InAppPurchases is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'InAppPurchases'
```

## Usage

Create an instance of InAppPurchase Module
```ruby
let inAppPurchases = InAppPurchases()
```

#### Purchase a product
```ruby
inAppPurchases.purchaseProduct(productIdentifier: "Your Product ID") { success in 
    print(success)
}
```

#### Restore purchase
```ruby
inAppPurchases.restorePurchase() { success in 
    print(success)
}
```

#### Request Products
```ruby
inAppPurchases.requestProducts(\[Your ProductIDs\]) { products in
    for product in products {
        print(product.localizedPrice())
    }
}
```

#### Validate Purchase 
```ruby
inAppPurchases.isProductPurchased("Your Product ID", appSharedSecret: "Your app shared secret") { purchased in 
    print(purchased)
}
```

#### Open App Store Subscriptions Page
```ruby
inAppPurchases.manageSubscriptionsOnAppStore()
```

## Author

Umar Awais, umar.awais45@gmail.com

## License

InAppPurchases is available under the MIT license. See the LICENSE file for more info.
