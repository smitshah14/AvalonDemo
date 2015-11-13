//
//  AVLUtilities.h
//  Pods
//
//  Created by SMIT V SHAH on 11/13/15.
//
//

#import <Foundation/Foundation.h>

@interface AVLUtilities : NSObject

/*!
 @abstract Date formatting
 @discussion Has comma after day
 @param date The date to be formatted
 @warning Don't make `date` `nil`
 @return `NSString` with format `EEEE MMMM dd, yyyy`
 */
+(NSString *)formattedStringFromDate:(NSDate *)date;

/*!
 @abstract Date formatting
 @discussion Returns the same format than `formattedStringFromDate:` but without commas
 @param date The date to be formatted
 @warning Don't make `date` `nil`
 @return `NSString` with format `EEEE MMMM dd yyyy`
 */
+(NSString *)formattedStringFromDateWithoutComma:(NSDate *)date;

/*!
 @abstract Phone Number formatting
 @param string A string containing a number from 0 to 10 digits without any formatting
 @return `NSString` with format `(###) ###-####`
 */
+(NSString *)formattedPhoneNumberFromString:(NSString *)string;

/*!
 @abstract Date formatting
 @param date The date to be formatted
 @warning Don't make `date` `nil`
 @return `NSString` with day-of-the-week name for given date
 */
+(NSString *)dayNameFromDate:(NSDate *)date;

/*!
 @abstract Date formatting
 @param date The date to be formatted
 @warning Don't make `date` `nil`
 @return `NSString` with month name for given date
 */
+(NSString *)monthNameFromDate:(NSDate *)date;

/*!
 @abstract Date formatting
 @discussion Returns the `dd` format of the NSDate input
 @param date The date to be formatted
 @warning Don't make `date` `nil`
 @return `NSString` with day for given date
 */
+(NSString *)dayStringFromDate:(NSDate *)date;

/*!
 @abstract Date formatting
 @discussion Returns the `yyyy` format of the NSDate input
 @param date The date to be formatted
 @warning Don't make `date` `nil`
 @return `NSString` with year for given date
 */
+(NSString *)yearStringFromDate:(NSDate *)date;

/*!
 @abstract Validation
 @param string The string to be validated
 @warning Don't make `string` `nil`
 @return `YES` if the string contains nothing but numbers. `NO` otherwise.
 */
+(BOOL)stringContainsOnlyNumbers:(NSString *)string;

/*!
 @abstract Validation
 @param firstDate The first date to be formatted
 @param secondDate The second date to be formatted
 @warning Don't make `firstDate` or `secondDate` `nil`
 @return `YES` if firstDate happens BEFORE secondDate. `NO` otherwise.
 */
+(BOOL)isDate:(NSDate *)firstDate pastDayOfDate:(NSDate *)secondDate;

/*!
 @abstract Sorting
 @param arrayToSort The array to be sorted
 @warning Don't make `arrayToSort` `nil`
 @return `NSArray` sorted alphabetically
 */
+(NSArray *)sortStringArrayAlphabetically:(NSArray *)arrayToSort;

/*!
 @abstract Convert
 @param date The array to be converted
 @warning Don't make `date` `nil`
 @return `NSString` from date with format `MM-dd-yyyy`
 */
+(NSString *)dateToString: (NSDate *) date;

/*!
 @abstract Convert
 @param string Format `MM-dd-yyyy`
 @return `NSDate` from string
 */
+(NSDate *)stringToDate: (NSString *) string;

/*!
 @abstract Constant
 @return `NSDate` with first date by default for active orders
 */
+(NSDate *)activeOrdersStartDate;

/*!
 @abstract Constant
 @return `NSDate` with last date by default for active orders
 */
+(NSDate *)activeOrdersEndDate;

/*!
 @abstract Constant
 @return `UIColor` Avalon Green
 */
+(UIColor *) greenColor;

/*!
 @abstract Constant
 @return `UIColor` Avalon Plum
 */
+(UIColor *) plumColor;

/*!
 @abstract Constant
 @return `UIColor` Avalon Yellow
 */
+(UIColor *) yellowColor;

/*!
 @abstract Constant
 @return `UIColor` Avalon Light Gray - Slightly lighter than `[UIColor lightGray]`
 */
+(UIColor *) lightGrayColor;

/*!
 @abstract Constant
 @return `UIColor` Avalon Silver - Slightly darker than `[UIColor darkGray]`
 */
+(UIColor *) silverColor;


/*!
 @abstract UI
 @param label Not nil
 @warning Don't make `label` `nil`
 @return `CGFloat` of computed width
 */
+(CGFloat)widthForLabel:(UILabel *)label;




@end
