// boot the SuperCollider server
s.boot;
Server.local.boot;
// turn off the server
s.quit;
// pop the server window
s.makeWindow;
// window with the input and output meters
s.meter;
// waveform scope
s.scope;
// frequency analyser
FreqScope.new;
// node tree
s.plotTree;
// UGens are building blocks
// Sine oscillator is a simple example
~sine = {SinOsc.ar}.play;
~saw = {Saw.ar}.play;
// Ctrl + . to stop all music
// stop the function
~sine.free;
~saw.free;
// Multi-channel ouput
~sine = {[SinOsc.ar, SinOsc.ar]}.play;
// Duplicate the signal for two channels
~sine = {SinOsc.ar.dup(2)}.play;
~sine = {SinOsc.ar!2}.play;
// 80 Hz frequency (phase 0, mul 1, add 0 - default))
~sine = {SinOsc.ar(80,0,1,0)}.play;
// A plot of the sinewave. Not specifying a number of seconds plots only for 0.01 seconds.
~sine = {SinOsc.ar(80,0,1,0)}.plot;
~sine = {SinOsc.ar(300,0,1,0)}.plot(0.02);
// Move sinewave by half a cycle (pi) - sounds the same, starts at a different point
~sine = {SinOsc.ar(300,pi,1,0)}.plot(0.02);
// Make the sinewave quieter
~sine = {SinOsc.ar(300,0,0.1,0)}.play;
// Add a value to the sinewave
~sine = {SinOsc.ar(300,0,0.1,1.05)}.play;
~sine.free;
// keyworded parameters
~sine = {SinOsc.ar(freq:300, mul:0.1)}.play;
~sine.free;
// Additive synthesis
(
~sum = {
	var sig1, sig2, sig3;
	sig1 = SinOsc.ar(400, mul:0.2);
	sig2 = SinOsc.ar(250, mul:0.3);
	sig3 = SinOsc.ar(1400, mul:0.07);
	sig1 + sig2 + sig3;
}.play;
)
~sum.free;
// Vibrato
(
~vib = {
	var sig, vib;
	vib = SinOsc.ar(6, 0, 200, 300);
	sig = SinOsc.ar(vib, mul:0.2)!2;
}.play;
)
~vib.free;
// or this
(
~vib = {
	var sig, vib;
	vib = SinOsc.ar(6).range(280,320);
	sig = SinOsc.ar(vib, mul:0.2)!2;
}.play;
)
~vig.free;
// Siren
(
~vib = {
	var sig, mod;
	mod = LFSaw.ar(1).range(0, 500);
	sig = Pulse.ar(200 + mod, 0.5, 0.1)!2;
}.play;
)
~vib.free;
// same as mul: 0.2
x = {SinOsc.ar(400)!2 * 0.2}.play
x.free;
// different frequency for each channel
(
x = {
	var sig;
	sig = SinOsc.ar([300,400]);
	sig = sig * 0.2;
}.play;
)
x.free;