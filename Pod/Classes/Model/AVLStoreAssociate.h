//
//  AVLStoreAssociate.h
//  Pods
//
//  Created by SMIT V SHAH on 11/13/15.
//
//

#import <Foundation/Foundation.h>

/*!
 This Singelton class was designed and implemented to store associate details and always fetch single instance of it using `sharedModel` method
 */
@interface AVLStoreAssociate : NSObject

@property(copy, nonatomic) NSString *userId;
@property(copy, nonatomic) NSString *name;
@property(copy, nonatomic) NSString *firstName;
@property(copy, nonatomic) NSString *lastName;
@property(copy, nonatomic) NSString *storeNo;

/*!
 @abstract Singelton
 @discussion Class method which returns the single instance of `StoreAssociate` class. If the instance does not exists then it creates a new instance and returns it
 @return `StoreAssociate` instance
 */
+ (AVLStoreAssociate *) sharedModel;

@end
