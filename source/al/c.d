/+
+                Copyright 2023 Aya Partridge
+ Distributed under the Boost Software License, Version 1.0.
+     (See accompanying file LICENSE_1_0.txt or copy at
+           http://www.boost.org/LICENSE_1_0.txt)
+/
module al.c;

import bindbc.openal.codegen;

import al: Boolean, SizeI, Enum;

enum version0_1 = 1;

struct Device;

struct Context;

enum: Enum{
	frequency      = 0x1007,
	refresh        = 0x1008,
	sync           = 0x1009,
	monoSources    = 0x1010,
	stereoSources  = 0x1011,
}

enum: Enum{
	noError         = 0,
	invalidDevice   = 0xA001,
	invalidContext  = 0xA002,
	invalidEnum     = 0xA003,
	invalidValue    = 0xA004,
	outOfMemory     = 0xA005,
}

enum: Enum{
	majorVersion              = 0x1000,
	minorVersion              = 0x1001,
	attributesSize            = 0x1002,
	allAttributes             = 0x1003,
	defaultDeviceSpecifier    = 0x1004,
	deviceSpecifier           = 0x1005,
	extensions                = 0x1006,
}

enum: Enum{
	captureDeviceSpecifier         = 0x310,
	captureDefaultDeviceSpecifier  = 0x311,
	captureSamples                 = 0x312,
}

enum: Enum{
	defaultAllDevicesSpecifier  = 0x1012,
	allDevicesSpecifier         = 0x1013,
}

//alext.h
enum lokiAudioChannel = 1;
enum: Enum{
	chanMainLoki  = 0x500001,
	chanPCMLoki   = 0x500002,
	chanCDLoki    = 0x500003,
}

enum: Enum{
	connected  = 0x313,
}

enum: Enum{

}

mixin(joinFnBinds((){
	string[][] ret;
	ret ~= makeFnBinds([
		[q{Context*}, q{alcCreateContext}, q{Device* device, const(int)* attrlist}],
		[q{Boolean}, q{alcMakeContextCurrent}, q{Context* context}],
		[q{void}, q{alcProcessContext}, q{Context* context}],
		[q{void}, q{alcSuspendContext}, q{Context* context}],
		[q{void}, q{alcDestroyContext}, q{Context* context}],
		[q{Context*}, q{alcGetCurrentContext}, q{void}],
		[q{Device*}, q{alcGetContextsDevice}, q{Context* context}],
		[q{Device*}, q{alcOpenDevice}, q{const(char)* devicename}],
		[q{Boolean}, q{alcCloseDevice}, q{Device* device}],
		[q{Enum}, q{alcGetError}, q{Device* device}],
		[q{Boolean}, q{alcIsExtensionPresent}, q{Device* device, const(char)* extname}],
		[q{void*}, q{alcGetProcAddress}, q{Device* device, const(char)* funcname}],
		[q{Enum}, q{alcGetEnumValue}, q{Device* device, const(char)* enumname}],
		[q{const(char)*}, q{alcGetString}, q{Device* device, Enum param}],
		[q{void}, q{alcGetIntegerv}, q{Device* device, Enum param, SizeI size, int* values}],
		[q{Device*}, q{alcCaptureOpenDevice}, q{const(char)* devicename, uint frequency, Enum format, SizeI buffersize}],
		[q{Boolean}, q{alcCaptureCloseDevice}, q{Device* device}],
		[q{void}, q{alcCaptureStart}, q{Device* device}],
		[q{void}, q{alcCaptureStop}, q{Device* device}],
		[q{void}, q{alcCaptureSamples}, q{Device* device, void* buffer, SizeI samples}],
		
		//alext.h
	]);
	return ret;
}(), __MODULE__));
