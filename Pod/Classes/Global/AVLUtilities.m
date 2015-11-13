//
//  AVLUtilities.m
//  Pods
//
//  Created by SMIT V SHAH on 11/13/15.
//
//

#import "AVLUtilities.h"

@implementation AVLUtilities

+(NSString *)formattedStringFromDate:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat: @"EEEE MMMM dd, yyyy"];
    
    return [dateFormatter stringFromDate:date];
}

+(NSString *)formattedStringFromDateWithoutComma:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat: @"EEEE MMMM dd yyyy"];
    
    return [dateFormatter stringFromDate:date];
}

+(NSString *)dayNameFromDate:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat: @"EEEE"];
    
    return [dateFormatter stringFromDate:date];
}

+(NSString *)monthNameFromDate:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat: @"MMMM"];
    
    return [dateFormatter stringFromDate:date];
}

+(NSString *)dayStringFromDate:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat: @"dd"];
    
    return [dateFormatter stringFromDate:date];
}

+(NSString *)yearStringFromDate:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat: @"yyyy"];
    
    return [dateFormatter stringFromDate:date];
}

+(UIColor* ) plumColor
{
    return [UIColor colorWithRed:0.471
                           green:0.114
                            blue:0.451
                           alpha:1];
}
+(UIColor* ) greenColor
{
    return [UIColor colorWithRed:76.0/256.0
                           green:177.0/256.0
                            blue:72.0/256.0
                           alpha:1];
}
+(UIColor *) yellowColor
{
    return [UIColor colorWithRed:240.0/256.0
                           green:171.0/256.0
                            blue:0.0/256.0
                           alpha:1];
}

+(UIColor *)lightGrayColor
{
    CGFloat grayVal = 240.0f/256.0f;
    return [UIColor colorWithRed:grayVal
                           green:grayVal
                            blue:grayVal
                           alpha:0.6];
}

+(UIColor *)silverColor
{
    CGFloat grayVal = 220/256;
    return [UIColor colorWithRed:grayVal
                           green:grayVal
                            blue:grayVal
                           alpha:0.6];
}

+(BOOL)stringContainsOnlyNumbers:(NSString *)string
{
    NSString *numbersToTestRegex = @"^[0-9]+$";
    
    NSPredicate  *onlyNumberPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", numbersToTestRegex];
    
    return [onlyNumberPredicate evaluateWithObject:string];
}

+(NSArray *)sortStringArrayAlphabetically:(NSArray *)arrayToSort
{
    return [arrayToSort sortedArrayUsingComparator:^(NSString *string1, NSString *string2)
            {
                NSComparisonResult comparison = [string1 caseInsensitiveCompare:string2];
                return comparison;
            }];
}

+(NSString *)formattedPhoneNumberFromString:(NSString *)string
{
    NSMutableString *phoneNumberString = [NSMutableString string];
    
    for (NSInteger i = 0; i < 10 && i < string.length; i++)
    {
        if(i == 0 && string.length >= 8)
        {
            [phoneNumberString appendString:@"("];
        }
        
        if(i == 3 && string.length >= 8)
        {
            [phoneNumberString appendString:@") "];
        }
        
        if(i == 3 && string.length < 8)
        {
            [phoneNumberString appendString:@"-"];
        }
        
        if(i == 6 && string.length >= 8)
        {
            [phoneNumberString appendString:@"-"];
        }
        
        [phoneNumberString appendString:[NSString stringWithFormat:@"%c", [string characterAtIndex:i]]];
    }
    
    return [phoneNumberString copy];
}

+(NSString *)dateToString: (NSDate *) date
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MM-dd-yyyy"];
    NSString *convertedDate = [formatter stringFromDate:date];
    
    return convertedDate;
}

+(NSDate *)stringToDate: (NSString *) string
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MM-dd-yyyy"];
    return  [formatter dateFromString:string];
}

+(NSDate *)activeOrdersStartDate
{
    return [self stringToDate:@"08-20-2015"];
}

+(NSDate *)activeOrdersEndDate
{
    return [self stringToDate:@"11-26-2015"];
}

+(BOOL)isDate:(NSDate *)firstDate pastDayOfDate:(NSDate *)secondDate
{
    NSTimeInterval firstDateTimeInterval = [firstDate timeIntervalSince1970];
    NSTimeInterval secondDateTimeInterval = [secondDate timeIntervalSince1970];
    
    return firstDateTimeInterval < secondDateTimeInterval;
}

+(CGFloat)widthForLabel:(UILabel *)label
{
    CGRect labelRect = [label.text boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)
                                                options:NSStringDrawingTruncatesLastVisibleLine
                                             attributes:@{NSFontAttributeName: label.font}
                                                context:nil];
    
    return labelRect.size.width;
}




@end
