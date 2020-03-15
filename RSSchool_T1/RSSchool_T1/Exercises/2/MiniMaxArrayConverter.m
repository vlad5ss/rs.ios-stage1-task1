#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    if ([array count] == 0) {
        
        NSLog(@"Array is empty!");
        return array;
        
    } else if ([array count]  == 1) {
        
        NSLog(@"Elements array count equels 1 elements!");
        return array;
        
    }else if ([array count]  == 2) {
        
        NSLog(@"Elements array count equels 2 elements!");
        return array;
        
    }
    
    else {
        
        NSNumber *sumInArray = [array valueForKeyPath:@"@sum.self"];
        NSNumber *maxInArray = [array valueForKeyPath:@"@max.intValue"];
        NSNumber *minInArray = [array valueForKeyPath:@"@min.intValue"];
        
        NSNumber *maxSumInArray = [NSNumber numberWithInt:[sumInArray intValue] - [minInArray intValue]];
        NSNumber *minSumInArray = [NSNumber numberWithInt:[sumInArray intValue] - [maxInArray  intValue]];
        
        return [NSArray arrayWithObjects:minSumInArray, maxSumInArray, nil];
    }
    
    
}

@end
