# RHBCastingObjC

[![CI Status](http://img.shields.io/travis/Lazar Otasevic/RHBCastingObjC.svg?style=flat)](https://travis-ci.org/Lazar Otasevic/RHBCastingObjC)
[![Version](https://img.shields.io/cocoapods/v/RHBCastingObjC.svg?style=flat)](http://cocoapods.org/pods/RHBCastingObjC)
[![License](https://img.shields.io/cocoapods/l/RHBCastingObjC.svg?style=flat)](http://cocoapods.org/pods/RHBCastingObjC)
[![Platform](https://img.shields.io/cocoapods/p/RHBCastingObjC.svg?style=flat)](http://cocoapods.org/pods/RHBCastingObjC)

## Usage

This mini library will make your code safer and more readable when you deal with casting. This kind of library is not needed for Swift, because Swift will force you to write safe and readable casting code out of the box.

### Example1

So, instead of doing it standard way, like:

	if ([self.collection isKindOfClass:[NSArray class]]) {
		NSArray *array = (NSArray *)self.collection;
		/// ... some other code
            
This pod enables you to do the following:

	NSArray *array = [NSArray rhb_dynamicCast:self.collection];
	if (array) {
		/// ... some other code

Note that ```self.collection``` is actually duplicated code in the standard approach, and it may have performance impacts if its created on the fly.

Method ```rhb_dynamicCast:``` uses ```isKindOfClass:``` internally. There is another method named ```rhb_strictDynamicCast:``` that uses ```isMemberOfClass:``` internally.

### Example2

To make extra security checks during development (asserts) then one should use the following:
	
	NSArray *array = [NSArray rhb_verifyCast:self.collection];

instead of standard way:

	NSArray *array = (NSArray *)self.collection;
	
First way will do the assertion and check if the cast is valid in debug mode to prevent errors during development. Both ways will have the same effect in release mode.

## Installation

RHBCastingObjC is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "RHBCastingObjC"
```

## Author

Lazar Otasevic, redhotbits@gmail.com

## License

RHBCastingObjC is available under the MIT license. See the LICENSE file for more info.
