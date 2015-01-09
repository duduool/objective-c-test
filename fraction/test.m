#import "fraction.h"
#import "complex.h"

//   
@interface Fraction (MathOps)
-(Fraction *) add: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
@end

@implementation Fraction (MathOps)
-(Fraction *) add: 	(Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	int num, den;
	
	num = (_numerator * f._denominator) + (_denominator * f._numerator);
	den = _denominator * f._denominator;

	[result setTo: num over: den];
	[result reduce];

	return result;
}
@end

int main(int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
/*	
	Fraction *myFraction = [[Fraction alloc] init];
	Fraction *shFraction = [[Fraction alloc] init];

	//[myFraction setNumerator: 1];
	//[myFraction setDenominator: 3];
	//myFraction.numerator = 1;
	//myFraction.denominator = 3;

	//[myFraction setTo: 1 over: 3];
	[myFraction set: 1 : 3];
	[shFraction set: 2 : 3];

	[myFraction print];
	NSLog(@"+");
	[shFraction print];
	NSLog(@"=");
	[myFraction add: shFraction];
	[myFraction print];

	//NSLog(@"numerator = %i denominator = %i",
	//		[myFraction _numerator], [myFraction _denominator]);

	
	//NSDate *now;
	//now = [NSDate alloc];
	//now = [now init];

	//NSLog(@"The Current time is %@", now);
	

	[shFraction release];
	[myFraction release];
*/

	Fraction *f1 = [[Fraction alloc] init];
	Fraction *f2 = [[Fraction alloc] init];
	Fraction *fracResult;

	Complex *c1 = [[Complex alloc] init];
	Complex *c2 = [[Complex alloc] init];
	Complex *compResult;

	@try {
	} @catch (NSException *exception) {
		@throw exception;
		NSLog(@"Caught %@%@", [exception name], [exception reason]);
	} @finally {
		NSLog(@"Finally");
	}


	[f1 setTo: 1 over: 10];
	[f2 setTo: 2 over: 5];

	[c1 setReal: 18.0 andImaginary: 2.5];
	[c2 setReal: -5.0 andImaginary: 3.2];

	[c1 print]; NSLog(@"+"); [c2 print];
	NSLog(@"------------------");
	compResult = [c1 add: c2];
	[compResult print];
	NSLog(@"\n");

	[c1 release];
	[c2 release];
	[compResult release];

	[f1 print]; NSLog(@"+"); [f2 print];
	NSLog(@"------------------");
	fracResult = [f1 add: f2];
	[fracResult print];
	NSLog(@"\n");

	[f1 release];
	[f2 release];
	[fracResult release];
	
	[pool drain];
	return 0;
}
