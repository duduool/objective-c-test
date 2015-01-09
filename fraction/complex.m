#import "complex.h"

@implementation Complex

@synthesize _real, _imaginary;

-(void) print
{
	NSLog(@"%g + %gi", _real, _imaginary);
}

-(void) setReal: (double) a andImaginary: (double) b
{
	_real = a;
	_imaginary = b;
}

-(Complex *) add: (Complex *) c
{
	Complex *result = [[Complex alloc] init];

	[result setReal: _real + [c _real]
			andImaginary: _imaginary + [c _imaginary]];

	return result;
}
@end
