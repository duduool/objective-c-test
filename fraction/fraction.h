#import <Foundation/Foundation.h>

@interface Fraction: NSObject
{
	int _numerator;
	int _denominator;
}

@property int _numerator, _denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d; 
-(void) set: (int) n : (int) d;
-(void) reduce;
//-(Fraction *) add: (Fraction *) f;
//-(void) setNumerator: (int) n;
//-(void) setDenominator: (int) d;
//-(int) numerator;
//-(int) denominator;
@end
