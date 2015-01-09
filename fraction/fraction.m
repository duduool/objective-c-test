#import "fraction.h"

@implementation Fraction

@synthesize _numerator, _denominator;

-(void) print
{
	NSLog(@"%i/%i", _numerator, _denominator);
}

-(void) setTo: (int) n over: (int) d
{
	_numerator = n;
	_denominator = d;
}

-(void) set: (int) n : (int) d
{
	_numerator = n;
	_denominator = d;
}

/*
-(Fraction *) add: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	result._numerator = _numerator * f._denominator + 
					    _denominator * f._numerator;
	result._denominator = _denominator * f._denominator;
	[result reduce];

	return result;
}
*/

-(void) reduce
{
	int n = _numerator;
	int d = _denominator;
	int tmp;

	while (d != 0) {
		tmp = n % d;
		n = d;
		d = tmp;
	}

	_numerator /= n;
	_denominator /= n;
}

/*
-(void) setNumerator: (int) n
{
	_numerator = n;
}

-(void) setDenominator: (int) d
{
	_denominator = d;
}

-(int) numerator
{
	return _numerator;
}

-(int) denominator
{
	return _denominator;
}
*/
@end
