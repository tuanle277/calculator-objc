//
//  ViewController.m
//  prog1
//
//  Created by tuanlm on 5/30/22.
//


//@end
//@interface Personn:NSObject {
//    NSString *firstName;
//    NSString *lastName;
//}
//
//@property int yearOfBirth;
//@property void *fullName;
//
//- (id) init;
//- (void) printFullName;
//- (id) initWithName: (NSString *)firstName andLastName: (NSString *)lastName;
//@end
//
//@implementation Personn
//
//-(id) init{
//    self = [super init];
//    firstName = @"Kevin";
//    lastName = @"Le";
//    self.yearOfBirth = 2003;
//    return self;
//}
//-(id) initWithName: (NSString *)newFirstName andlastName: (NSString *)newLastName {
//    firstName = newFirstName;
//    lastName = newLastName;
//    return self;
//}
//
//-(void) printFullName {
//    NSLog (@"Full Name: %@ %@", firstName, lastName);
//};
//
//@end
//
//@interface Box:NSObject {
//   double length;    // Length of a box – private
//   double breadth;   // Breadth of a box – private
//}
//
//@property double height;  // Property – public
//-(double) volume;
//@end
//
//@implementation Box
//
//@synthesize height;
//
//-(id)init {
//   self = [super init];
//   length = 1.0;
//   breadth = 1.0;
//   return self;
//}
//
//-(double) volume {
//   return length * breadth * self.height;
//}
//@end
//
//@interface Person : NSObject {
//   NSString *personName;
//    NSString *personGender;
//   NSInteger personAge;
//}
//
//- (BOOL)checkEmpty;
//- (id)initWithName:(NSString *)name andAge:(NSInteger)age;
//- (void)print;
//- (BOOL)checkWorkAge;
//
//@end
//
//@implementation Person
//
//
//- (id)initWithName:(NSString *)name andAge:(NSInteger)age andGender: (NSString *) gender {
//   personName = name;
//   personAge = age;
//    personGender = gender;
//   return self;
//}
//
//- (BOOL) checkEmpty {
//    return ([personName length] == 0);
//}
//
//- (BOOL) checkWorkAge {
//    if ([personGender isEqualToString:@"male"]){
//        return (personAge >= 18 && personAge <= 65);
//    }
//    else {
//        return (personAge >= 18 && personAge <= 60);
//    }
//}
//
//- (void)print {
//   NSLog(@"Name: %@", personName);
//   NSLog(@"Age: %ld", personAge);
//}
//
//@end
//
//@interface Employee : Person {
//   NSString *employeeEducation;
//}
//
//- (id)initWithName:(NSString *)name andAge:(NSInteger)age
//  andEducation:(NSString *)education;
//- (void)print;
//@end
//
//@implementation Employee
//
//- (id)initWithName:(NSString *)name andAge:(NSInteger)age
//   andEducation: (NSString *)education {
//      personName = name;
//      personAge = age;
//      employeeEducation = education;
//      return self;
//   }
//
//- (void)print {
//   NSLog(@"Name: %@", personName);
//   NSLog(@"Age: %ld", personAge);
//   NSLog(@"Education: %@", employeeEducation);
//}
//
//@end
//
//@interface Company: Employee
//
//- (id) init;
//- (int) totalMale;
//- (int) totalFemale;
//@end


    // Do any additional setup after loading the view.
//    NSMutableArray *animals = [NSMutableArray arrayWithObjects: @"cat", @"dog", @"horse", @"cow", nil];
//
//    [animals addObject:@"bird"];
//    NSLog(@"%@", animals);
//    [animals removeLastObject];
//    NSLog(@"________");
//    NSLog(@"%@", animals);
//
//    NSArray *cities = [NSArray arrayWithObjects: @"Ho Chi Minh", @"New York", @"New Delhi", @"San Francisco", nil];
//
//
//    NSLog(@"________");
//    NSString *random = @"this is a test string";
//    NSLog(@"this is the message: %@", random);
//
//    NSString *str = [random uppercaseString];
//    NSLog(@"_______");
//    NSLog(@"this is still the message but upper: %@", str);
//
////    int len = [cities length];
//
//    for (int i = 20; i > 0; --i){
//        NSLog(@"This is a number: %d", i);
//    };
//
//    Personn *person1 = [[Personn alloc] initWithName:@"Tuan" andlastName:@"Pham"];
//    NSLog(@"this is the full name");
//    [person1 printFullName];
//
//
    

#import "ViewController.h"

@interface ViewController (){
    NSString *_digits;
    NSString *_sign;
    
    NSInteger _value;
    BOOL _isTyping;
}
@end

@implementation ViewController

- (void) viewDidLoad{
    [super viewDidLoad];
    _digits = self.number.text;
    _isTyping = NO;
}

- (IBAction) numbers: (UIButton *)sender {
    if ([_digits isEqualToString:@"0"]){
        _digits = @"";
        _isTyping = YES;
    }
    _digits = [_digits stringByAppendingString:sender.titleLabel.text];
    self.number.text = _digits;
}
- (IBAction) operation: (UIButton *)sender{
    if (!_sign){
        _sign = sender.titleLabel.text;
        self.number.text = _sign;
        _isTyping = NO;
        if (!_value){
            _value = [_digits integerValue];
            self.number.text = _digits;
        }
    }
}
- (IBAction) AC: (UIButton *)sender{
    _digits = @"0";
    _value = 0;
    self.number.text = _digits;
}
- (IBAction) equal: (UIButton *)sender{
    NSInteger result = 0;
    if ([_sign isEqualToString: @"+"]){
        result = _value + [_digits integerValue];
    }
    else if ([_sign isEqualToString: @"-"]){
        result = _value - [_digits integerValue];
    }
    else if ([_sign isEqualToString: @"x"]){
        result = _value * [_digits integerValue];
    }
    else if ([_sign isEqualToString: @"/"]){
        result = _value / [_digits integerValue];
    }
    
    _sign = nil;
    _value = result;
    _isTyping = NO;
    self.number.text = [NSString stringWithFormat: @"%d", result];
}


@end

