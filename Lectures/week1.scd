// Integers
4
89
-45

// Floats
4.6
0.003
-3.0

// String
"hello"

// Char
$h

// Array
[1,3,9-4.5,$h,"foo"]

// Symbol
\symbols
'symbols'

// Boolean
true
false

// Functions
{2 + 2}

// Windows
w = Window.new;
w.front;

// Methods and receivers
5.squared;
squared(5);

// Classes
4.class;
"yo".class;
[1,2,3].class;
true.class;
{}.class;
// and so on

4 / 5;
(4 / 5).round;
// integer part
4.div(5);
4 == 5;
5.pow(4);
pow(5, 4);
5 ** 4;
(-5.8).abs;
23.mod(5);
23 % 5;

"hello world!".size;
"hello world!".reverse;
"hello world!".scramble;
"hello" ++ "world!";

// local variable declaration
(
var value = 9;
value = value * 2;
value = value - 1;
)

// global variable declaration
~value = 9;
~value = ~value * 2;
~value = ~value - 1;
v = 9;
v = v * 2;
v = v - 1;

// error (no capital letter or underscore)
~A_ = 9;
~_a = 9;

// s is considered special, reference to the SuperCollider audio server
s;

// comparative
3 > 2;
3 < 2;
3 == 2;
3 >= 2;
3 <= 2;
3 != 2;

(
x = 10.rand.postln;
if(x > 5, {"greater than 5"}, {"not greater than 5"});
)

// not the same, operations done left to right
6 * 3 + 2;
2 + 6 * 3;
// needs parenthesis
2 + (6 * 3);
// exact same problem, needs parenthesis
(
x = 10.rand.postln;
y = 10.rand.postln;
if(x > 5 && (y > 5), {"both greater than 5"}, {"not both greater than 5"});
)

(
~func = {
	var val;
	val = 5;
	val = val + 2;
};
)

~func.value;

// function with argument
(
~func = {
	arg input;
	var output;
	output = input + 2;
};
)

~func.value(11);
