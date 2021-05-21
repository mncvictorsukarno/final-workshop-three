//
//  ViewController.h
//  WorkshopObjC
//
//  Created by Victor Toya on 20/04/21.
//

#import <UIKit/UIKit.h>

/*
 Workshop Notes ::
 Make sure we import .h file which class we want to use and called.
 */
#import "DetailViewController.h"

/*
 Workshop Notes ::
 This file is .h or header of class.
 In this file you can declare property or method that can be accessed by other class.
 Inside @interface is where you can declare variable, property and method.
 @interface is always inherite from class like UIViewController, UIView, NSObject, etc.
 We can also adopt protocol by adding <ProtocolName> in @interface
 */
@interface ViewController : UIViewController
{
    
    /*
     Workshop Notes ::
     This is example of instance variable which only be accessed by it's own class.
     */
    NSString *string;
    NSArray *array;
    NSDictionary *json;
    NSURL *url;
}

/*
 Workshop Notes ::
 This is example of property, it's different from instance variable because it can be accessed by other class.
 Attribute property added when declare the property.
 */
@property(nonatomic, strong) NSString *propertyString;
@property(nonatomic, strong) NSArray *propertyArray;
@property(nonatomic, strong) NSDictionary *propertyJson;
@property(nonatomic, strong) NSURL *propertyUrl;

/*
 Workshop Notes ::
 This is example instance method which we need to initialized the class before use this methods.
 */
- (NSString *)getString;
- (void)setString:(NSString *)value;

- (NSArray *)getArray;
- (void)setArray:(NSArray *)value;

- (NSDictionary *)getJSON;
- (void)setJSON:(NSDictionary *)value;

/*
 Workshop Notes ::
 This is example class method which we can directly use or call the method without initialized the class.
 */
+ (NSString *)getValueString;

+ (NSArray *)getValueArray;

@end

