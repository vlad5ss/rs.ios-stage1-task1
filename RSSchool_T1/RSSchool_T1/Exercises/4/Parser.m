#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {
    
    
//    NSString *strText = @"«It’s <an> [example] (string)»";
    string = [string stringByReplacingOccurrencesOfString:@"«" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"»" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"’" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"<" withString:@"«"];
    string = [string stringByReplacingOccurrencesOfString:@">" withString:@"»"];
    
    string = [string stringByReplacingOccurrencesOfString:@")" withString:@"»"];
    string = [string stringByReplacingOccurrencesOfString:@"(" withString:@"«"];
    string = [string stringByReplacingOccurrencesOfString:@"[" withString:@"«"];
    string = [string stringByReplacingOccurrencesOfString:@"]" withString:@"»"];
    NSLog(@"%@", string);
    
    
    //NSString *yourStr= @"Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)";
    
    NSArray *arrComponents = [string componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"« »"]];
    
    NSLog(@"arrComponents : %@", arrComponents);
    return @[@"ddd"];
}

@end
