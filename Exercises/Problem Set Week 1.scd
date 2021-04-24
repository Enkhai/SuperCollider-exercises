//Problem Set Week 1
//Due 3pm CDT Sept 3rd

//First, save this scd file as a new file, renaming it with your Last name at the beginning of the file name (e.g. "Fieldsteel Problem Set Week 1.scd"), and upload this renamed file to the course website for your submission.

//Problem 1
//The following code produces an error. Correct the error and add a comment indicating the problem (comments are created by starting a line with two forward slashes, exactly like this line).

(
var apples = 3;
apples = apples * 2;
apples = apples - 1;
)
// add a var before apples


//Problem 2
//The following code produces an error. Correct the error and add a comment indicating the problem.

(
var oldBalance, deposit, newBalance;
oldBalance = 5;
deposit = 100;
newBalance = oldBalance + deposit;
)
// needs a semicolon at the first line


//Problem 3
//The following code produces an error. Correct the error and add a comment indicating the problem.

(
var classroomSize, numClasses, totalStudents;
classroomSize = 30;
numClasses = 4;
totalStudents = classroomSize * numClasses;
)
// typo at totalStudents


//Problem 4
//The following code produces an error. Correct the error and add a comment indicating the problem.

(
~func = {
	arg x=5, y=6, z=7;
	var product;
	product = x * y * z;
};
)
// remove the comma after the arg keyword


//Problem 5
//The following code returns a boolean indicating whether the square of 45 is an odd number, and is written in the "receiver.method" style. Rewrite it in the "method(receiver)" style.

45.squared.odd;
odd(squared(45));
// done


//Problem 6
//The following conditional check prints whether a random float between 0 and 1 is greater than 0.5 or not, and is written in the "method(receiver)" style. Rewrite it so that all instances of this syntax style are converted to the "receiver.method" style.

(
if(
	postln(rand(1.0)) > 0.5,
	{postln("is greater than 0.5")},
	{postln("is not greater than 0.5")}
);
)
rand(1.0).postln > 0.5).if({postln("is greater than 0.5")},{postln("is not greater than 0.5")}
// done



//Problem 7
//Write a function that accepts three input arguments. If all three inputs are members of the same class (e.g. 1, 4, 500), return the string "same". If not (e.g. "hello", 6.1, 99), return the string "different". Write an additional few lines of code that demonstrate the use of this function.
(
~func1 = {
	arg x, y, z;
	if(x.class == y.class && (y.class == z.class),
		{postln("same")},
		{postln("different")}
	)
};
)
~func1.value(1, "hi", $y)
~func1.value(1, 2, 3)
~func1.value("yo", "hi", "hello")


//Problem 8
//Write a function that checks whether a number is a multiple of 100. If so, return that number. If not, return the nearest multiple of 100. If the input  provided is not a number, return the string "not a number". Write an additional few lines of code that demonstrate the use of this function.
(
~func2 = {
	arg x;
	(x.isKindOf(Number)).if({
			(x % 100 == 0).if(x, (x + 50).div(100) * 100)
		}, "not a number"
	)
};
)
~func2.value(120);
~func2.value(260);
~func2.value(-75);

//Problem 9
//Write a function that checks whether an incoming value (representing a frequency memasured in Hz) is within the generally-accepted audible range of human hearing (not less than 20 and not greater than 20000). If it's within range, return the string: "play tone at xxx Hz". If it's not within this range, return the string "xxx Hz not within range". The actual number should replace the xxx in both cases. (Note: you can use the method "asString" to convert a number to a string. If the input is not a number, the function should return the string "invalid input". Write an additional few lines of code that demonstrate the use of this function.

(
~func3 = {
	arg x;
	if(x.isKindOf(Number), {
		if(x > 20 && (x < 20000),
			"play tone at " ++ x.asString ++ " Hz",
			x.asString ++ " is not within range")
	},
	"invalid input"
	)
};
);
~func3.value(5);
~func3.value('some symbols')
~func3.value(1000)
~func3.value(1000000)	