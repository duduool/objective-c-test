#import <Foundation/Foundation.h>

@interface Complex: NSObject
{
	double _real;
	double _imaginary;
}

@property double _real, _imaginary;

-(void) print;
-(void) setReal: (double) a andImaginary: (double) b;
-(Complex *) add: (Complex *) f;
@end
