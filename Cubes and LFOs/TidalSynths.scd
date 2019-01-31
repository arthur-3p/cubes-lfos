//needs tuning

Stethoscope.new(s, 2);
FreqScope.new(320, 260);
s.meter;
s.plotTree;


(SynthDef.new(\1, {
	arg filter=600, freq=400, filterRel, gain = 1, trigger1, ampli, send;
	var env, sig, filt, hiPass, pan;
	env = EnvGen.kr(Env.new([0,1,0], [0, 2], [1, -4]), doneAction:2);
	sig = SinOscFB.ar(SinOsc.kr(20, 0, 5)+freq*2, 1);
	sig = sig * env*0.14 * gain;
	//sig = Splay.ar(sig);
	hiPass = BHiPass.ar(sig, 100, 2);
	hiPass = Pan2.ar(hiPass, SinOsc.kr(2, 0, 0.3));
	trigger1 = Impulse.kr(30);
	ampli = Amplitude.kr(hiPass, 0.01, 0.01);
	send = SendReply.kr(trigger1, '/amplitude1', ampli);
	Out.ar(0, hiPass);
}).add;)

(SynthDef.new(\2, {
	arg filter=600, rel, freq=100, gain=1, trigger2, ampli, send;
	var env, sig, filt;
	env = EnvGen.kr(Env.new([0,1,0], [0.1, 8], [0.75, -5]), doneAction:2);
	sig = {Saw.ar(exprand(0.5, 2)+freq)}!2;
	sig = sig * env* 0.3* gain;
	filt = BLowPass.ar(sig, 12000, 10);
	filt = Pan2.ar(filt, SinOsc.kr(1.5, 0, 0.5));
	trigger2 = Impulse.kr(30);
	ampli = Amplitude.kr(filt, 0.01, 0.01);
	send = SendReply.kr(trigger2, '/amplitude2', ampli);
	Out.ar(0, filt);
}).add;)

(
SynthDef.new(\bas
	ser, {
	arg gain = 1, freq = 200;
	var amp, sig, triger, ampli;
	amp = EnvGen.kr(Env.new([0,1,0], [0.02, 4], [1, -4]), doneAction:2);
	sig = SinOscFB.ar(freq, 0.4)!2;
	sig = amp * sig * gain;
	triger = Impulse.kr(20);
	ampli = Amplitude.kr(sig);
	Out.ar(0, sig);
	SendReply.kr(triger, '/kickamp', amp);
}).add;
)



s.freeAll;