#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {
    
    
    NSString *strText = @"«It’s <an> [example] (string)»";
    strText = [strText stringByReplacingOccurrencesOfString:@"«" withString:@""];
    strText = [strText stringByReplacingOccurrencesOfString:@"»" withString:@""];
    strText = [strText stringByReplacingOccurrencesOfString:@"’" withString:@""];
    strText = [strText stringByReplacingOccurrencesOfString:@"<" withString:@"«"];
    strText = [strText stringByReplacingOccurrencesOfString:@">" withString:@"»"];
    
    strText = [strText stringByReplacingOccurrencesOfString:@")" withString:@"»"];
    strText = [strText stringByReplacingOccurrencesOfString:@"(" withString:@"«"];
    strText = [strText stringByReplacingOccurrencesOfString:@"[" withString:@"«"];
    strText = [strText stringByReplacingOccurrencesOfString:@"]" withString:@"»"];
    NSLog(@"%@", strText);
    
    
    //NSString *yourStr= @"Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)";
    
    NSArray *arrComponents = [strText componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"« »"]];
    
    NSLog(@"arrComponents : %@", arrComponents);
    return @[@"Test"];
}

@end
