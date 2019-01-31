OSCdef.freeAll;

((OSCdef(\rate1In, {
	arg msg;
	Ndef(\rate1).set(\rate, msg[1]);
}, '/OscControl1/rate1', recvPort:57121);
);

(OSCdef(\rate2In, {
	arg msg;
	Ndef(\rate2).set(\rate, msg[1]);
}, '/OscControl1/rate2', recvPort:57121);
);

(OSCdef(\gain1In, {
	arg msg;
	Ndef(\gain1).set(\gain, msg[1]);
}, '/OscControl1/gain1', recvPort:57121);
);

(OSCdef(\gain2In, {
	arg msg;
	Ndef(\gain2).set(\gain, msg[1]);
}, '/OscControl1/gain2', recvPort:57121);
);

(OSCdef(\gain3In, {
	arg msg;
	Ndef(\gain3).set(\gain, msg[1]);
}, '/OscControl1/gain3', recvPort:57121);
);

(OSCdef(\toggle1In, {
	arg msg;
	msg.postln;
}, '/OscControl1/toggle1', recvPort:57121);
);

(OSCdef(\toggle2In, {
	arg msg;
	msg.postln;
}, '/OscControl1/toggle2', recvPort:57121);
);

(OSCdef(\toggle3In, {
	arg msg;
	msg.postln;
}, '/OscControl1/toggle3', recvPort:57121);
);

(OSCdef(\toggle4In, {
	arg msg;
	msg.postln;
}, '/OscControl1/toggle4', recvPort:57121);
);

(OSCdef(\toggle5In, {
	arg msg;
	msg.postln;
}, '/OscControl1/toggle5', recvPort:57121);
);

(OSCdef(\fader1In, {
	arg msg;
}, '/OscControl1/fader1', recvPort:57121);
);

(OSCdef(\fader2In, {
	arg msg;
}, '/OscControl1/fader2', recvPort:57121);
);

(OSCdef(\fader3In, {
	arg msg;
}, '/OscControl1/fader3', recvPort:57121);
);

(OSCdef(\fader4In, {
	arg msg;
	Ndef(\globalFilter).set(\freq, (msg[1]*12000));
	Ndef(\sawverb).set(\mix, (1-msg[1]));
}, '/OscControl1/fader9', recvPort:57121);
);

(OSCdef(\xyIn, {
	arg msg;
}, '/OscControl1/xy', recvPort:57121);
);
)