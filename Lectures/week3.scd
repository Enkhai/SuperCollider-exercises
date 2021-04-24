x = [1,2,3,4];
x.size;

x.at(0);
x[2];
x.put(3,2);
// when you declare an array the maximum size of the array is the next highest power of 2
x.add(5);
// 5 was not added to x, x is of size 4 (a power of 2), use x = x.add(5)
x
// same with insert
x.insert(4, 5);
x
// scramble, reverse and mirror array, array remains the same
x.scramble;
x.reverse;
x.mirror;
x;
// sort
x.sort;
// scroll the array
x.rotate(1);
// pick one of the items
x.choose;
// broadcast operations (think of Python)
x + 2;
x.squared;
// returns an array of booleans
x.odd;
// check for prime array elements
x.collect({arg x; x.isPrime;});
// do performs applies a function but always returns the receiver
x.do({arg x; x.isPrime;});
// select only items for which this function returns true
x.select({arg x; x.isPrime;});
// reject does the opposite of select
x.reject({arg x; x.isPrime;});
// are any these prime?
x.any({arg x; x.isPrime;});
// alternative argument passing
x.do({|x, i| [x, i].postln;});
// new array of max size 5
Array.new(5);
// similar to python range (size, start, step)
Array.series(8,5,2);
// similar to range (size, start, end)
Array.interpolation(8,100,150);
// creates a new array of size 8 with a function
Array.fill(8, {|i| i});
// do this for 10 times
10.do({10.rand.postln});
// random number in a range with uniform distribution probability, returns int
rrand(2,100);
// random number from exponential distribution, lower numbers have a higher probability, returns float
exprand(1,10);
// random number in a range with uniform distribution probability, returns float (one float number)
rrand(2,100.0);
// exprand doesn't work with negative numbers or zero, rrand works
// Array style
Array.exprand(8, 1, 100);
Array.rand(8, 1, 100);
// fills an array 8 times with the same random number
Array.fill(8, rrand(1,100));
// spot the difference (function behaves differently)
Array.fill(8, {rrand(1,100)});
// shortcut for making an array from 1 to 100
(1..100);
// spot the difference
(1,4..100);
// example with music
(
x = Array.exprand(16, 200, 2000).round(200);
x = x.sort.reverse;
(
x.do({|n,i|
	var amp;
	amp = (1/(i+1));
	amp = amp * 0.2;
	amp.postln;
	{
	var sig;
	sig = SinOsc.ar(n);
	sig = sig * amp;
	sig!2;
}.play;
})
)
)
// Advanced example
(
~fn = {
	arg freq = 300;
	var sig;
	sig = SinOsc.ar(freq);
	sig = sig * 0.05;
	sig!2;
};
x = Array.exprand(16, 200, 2000);
~sounds = x.collect({
	arg n, i;
	~fn.play(args:[\freq, n]);
});
)
~sounds.do({arg n; n.set(\freq, exprand(200, 2000))});
~sounds.do({|n| n.free;});