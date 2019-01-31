~testNetAddr=NetAddr("127.0.0.1", 12345);
(
(
OSCdef.new(\analysis1Listener, {
	arg msg;//incoming message
	var data = msg;
	~testNetAddr.sendMsg("/Message1", data[3]);}, '/analysis1');
);

(
OSCdef.new(\analysis2Listener, {
	arg msg;//incoming message
	var data = msg;
	~testNetAddr.sendMsg("/Message2", data[3]);}, '/analysis2');
);

(
OSCdef.new(\amplitude1Listener,{
	arg msg;
	var data = msg;
	~testNetAddr.sendMsg("/amplitude1", data[3]);}, '/amplitude1');
);

(
OSCdef.new(\amplitude2Listener,{
	arg msg;
	var data = msg;
	~testNetAddr.sendMsg("/amplitude2", data[3]);}, '/amplitude2');
);

(OSCdef.new(\touchGain1, {
	arg msg;
	var data = msg;
	data.postln;
	~testNetAddr.sendMsg("/Gain1", data[1]);}, '/OscControl1/gain1');
);

(OSCdef.new(\touchGain2, {
	arg msg;
	var data = msg;
	~testNetAddr.sendMsg("/Gain2", data[1]);}, '/OscControl1/gain2');
);

(OSCdef.new(\touchGain3, {
	arg msg;
	var data = msg;
	data.postln;
	~testNetAddr.sendMsg("/Gain3", data[1]);}, '/OscControl1/gain3');
);

(OSCdef.new(\touchToggle1, {
	arg msg;
	var data = msg;
	~testNetAddr.sendMsg("/Toggle1", data[1]);}, '/OscControl1/toggle1');
);

(OSCdef.new(\touchToggle2, {
	arg msg;
	var data = msg;
	~testNetAddr.sendMsg("/Toggle2", data[1]);}, '/OscControl1/toggle2');
);

(OSCdef.new(\touchToggle3, {
	arg msg;
	var data = msg;
	~testNetAddr.sendMsg("/Toggle3", data[1]);}, '/OscControl1/toggle3');
);

(OSCdef.new(\touchToggle4, {
	arg msg;
	var data = msg;
	~testNetAddr.sendMsg("/Toggle4", data[1]);}, '/OscControl1/toggle4');
);

(OSCdef.new(\touchToggle5, {
	arg msg;
	var data = msg;
	~testNetAddr.sendMsg("/Toggle5", data[1]);}, '/OscControl1/toggle5');
);

(OSCdef.new(\touchFader1, {
	arg msg;
	var data = msg;
	~testNetAddr.sendMsg("/Fader1", data[1]);}, '/OscControl1/fader1');
);

(OSCdef.new(\touchFader2, {
	arg msg;
	var data = msg;
	~testNetAddr.sendMsg("/Fader2", data[1]);}, '/OscControl1/fader2');
);

(OSCdef.new(\touchFader3, {
	arg msg;
	var data = msg;
	~testNetAddr.sendMsg("/Fader3", data[1]);}, '/OscControl1/fader3');
);

(OSCdef.new(\touchFader4, {
	arg msg;
	var data = msg;
	~testNetAddr.sendMsg("/Fader4", data[1]);}, '/OscControl1/fader9');
);

(OSCdef.new(\touchFader5, {
	arg msg;
	var data = msg;
	data.postln;
	~testNetAddr.sendMsg("/Fader5", data[1]);}, '/OscControl1/fader5');
);

(OSCdef.new(\touchx, {
	arg msg;
	var data = msg;
	data[1].postln;
	~testNetAddr.sendMsg("/x", data[1]);}, '/OscControl1/xy');
);

(OSCdef.new(\touchy, {
	arg msg;
	var data = msg;
	data[2].postln;
	~testNetAddr.sendMsg("/y", data[2]);}, '/OscControl1/xy');
);
)