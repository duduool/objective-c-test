#import <Foundation/Foundation.h>

@interface Test: NSObject
{
	int _age;
}

//@prperty int _age;

-(void) setAge: (int) age;
-(int) 	getAge;
-(void) print;
@end

@implementation Test

//@synthesize _age;
-(void) setAge: (int) age
{
	_age = age;
}

-(int) getAge
{
	return _age;
}

-(void) print
{
	NSLog(@"The age is %i", _age);
}
@end

int main(int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	NSLog(@"Hello World!");

	Test *test = [[Test alloc] init];
	test.age = 10;
	[test print];

	[pool drain];
	return 0;
}
