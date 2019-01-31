// to do..
//
// send all soe visual osc through to Xcode. -- DONE
// fine tune frequencies
//fine tune sound design


Ndef.clear;

NdefMixer(s);

(
Ndef(\panner, {
	var sig1, sig2, sig3, sig, filt, pan, amp, globalfilter;
	sig2 = (SinOsc.ar(350) + Saw.ar(587)) * 0.6;
	sig3 = (SinOsc.ar(698) + Saw.ar(1175)) * 0.6;
	sig = sig2 + sig3;
	amp = sig * (Ndef(\gain1)*0.2);
	filt = BLowPass.ar(amp, SinOsc.kr(Ndef(\rate1)*2, 0, 800, 1200) , 3);
	pan = LinPan2.ar(filt, SinOsc.kr(Ndef(\rate1)));
	globalfilter = BLowPass.ar(pan, Ndef(\globalFilter)+100, 8);
});

Ndef(\sawOsc, {
	var sig, pan, amp, verb;
	sig = SinOscFB.ar((Ndef(\rate2)*29)+148, SinOsc.kr(Ndef(\rate1)));
	pan = Pan2.ar(sig, 0);
	verb = FreeVerb.ar(pan, Ndef(\sawverb), 1, 0.2);
	amp = verb * Ndef(\gain3) * 0.1;
});

Ndef(\SinFb, {
	var sig1, sig2, amp, pan;
	sig1 = SinOsc.kr((Ndef(\rate1)+Ndef(\rate2)*4));
	sig2 = SinOscFB.ar(146+sig1, 0);
	amp = sig2 * Ndef(\gain2) * 0.75;
	pan = Pan2.ar(amp, SinOsc.kr(Ndef(\rate1)+Ndef(\rate2)));
	pan = BHiPass.ar(pan, 130, 5);
});

Ndef(\analysis1, {
	var trigger, analysis1, send;
	trigger = Impulse.kr(30);
	analysis1 = SinOsc.kr(Ndef(\rate1));
	send = SendReply.kr(trigger, '/analysis1', analysis1);
});

Ndef(\analysis2, {
	var trigger, analysis2, send;
	trigger = Impulse.kr(30);
	analysis2 = Ndef.kr(\rate2);
	send = SendReply.kr(trigger, '/analysis2', analysis2);
}).play;

Ndef(\rate1, {
	arg rate = 1;
	var sig;
	sig = rate * 5;
}
);

Ndef(\rate2, {
	arg rate = 1;
	var sig;
	sig = rate * 10;
}
);

Ndef(\gain1, {
	arg gain = 0;
	var sig;
	sig = gain;
});

Ndef(\gain2, {
	arg gain = 0;
	var sig;
	sig = gain;
});

Ndef(\gain3, {
	arg gain = 0;
	var sig;
	sig = gain;
});

Ndef(\globalFilter, {
	arg freq = 100;
	var sig;
	sig = freq;
});

Ndef(\sawverb, {
	arg mix = 0;
	var sig;
	sig = mix;
	sig.postln;
});
)