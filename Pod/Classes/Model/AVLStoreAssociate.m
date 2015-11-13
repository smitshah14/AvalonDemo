//
//  AVLStoreAssociate.m
//  Pods
//
//  Created by SMIT V SHAH on 11/13/15.
//
//

#import "AVLStoreAssociate.h"


@implementation AVLStoreAssociate

+ (AVLStoreAssociate *) sharedModel
{
    static AVLStoreAssociate *sharedModel = nil;
    
    @synchronized (self)
    {
        if (sharedModel == nil)
        {
            sharedModel = [[self alloc] init];
        }
    }
    
    return sharedModel;
}

-(instancetype)init
{
    if(self = [super init])
    {
        
    }
    
    return self;
}

@end
