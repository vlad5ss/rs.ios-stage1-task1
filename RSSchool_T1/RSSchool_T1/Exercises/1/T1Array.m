#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    if(sadArray.count < 3){
        NSLog(@"Array is empty! or Array contain 1 element or Array contin two elements");
        return sadArray;
    }
    
    NSMutableArray *newArray = [sadArray mutableCopy];
    NSInteger count = 1;
    NSInteger i = 1;
    for (i=1; i<[newArray count]-1; i++) {
        if(
           [newArray[i] intValue] > [newArray[i - 1] intValue] + [newArray[i + 1] intValue]
           )
        {
            [newArray  removeObjectAtIndex:i];
            i = MAX(1, i - 1);
            continue;
        }
        if(
           [[newArray  objectAtIndex:i+1] intValue] ==[[newArray  objectAtIndex:i] intValue]+1)
        {
            count++;
        }
        i += 1;
    }
    if (count==[newArray count]) {
        NSLog(@"Array is happy!");
    }
    else {
        NSLog(@"Array is sad!");
    }
    return [newArray copy];

}

@end
