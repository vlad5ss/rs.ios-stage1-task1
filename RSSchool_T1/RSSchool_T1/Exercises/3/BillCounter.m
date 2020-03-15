#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    if (!bill || index < 0 || index >= [bill count]) { return nil; }
    //
    
    NSInteger AnnaSum = [[bill valueForKeyPath:@"@sum.self"] intValue];
    AnnaSum-= [bill[index] intValue];
    AnnaSum /= 2;
    
    if ([sum intValue] == AnnaSum) {
        return @"Bon Appetit";
    } else {
        return [NSString stringWithFormat:@"%ld", [sum intValue] - AnnaSum];
    }
    
    
    
}


@end
