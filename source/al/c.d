/+
+            Copyright 2023 – 2024 Aya Partridge
+ Distributed under the Boost Software License, Version 1.0.
+     (See accompanying file LICENSE_1_0.txt or copy at
+           http://www.boost.org/LICENSE_1_0.txt)
+/
module al.c;

import bindbc.openal.codegen;

import al: Boolean, SizeI, Enum;

struct Device;

struct Context;

enum ContextAttr: Enum{
	frequency      = 0x1007,
	refresh        = 0x1008,
	sync           = 0x1009,
	monoSources    = 0x1010,
	stereoSources  = 0x1011,
}

enum Error: Enum{
	noError         = 0,
	invalidDevice   = 0xA001,
	invalidContext  = 0xA002,
	invalidEnum     = 0xA003,
	invalidValue    = 0xA004,
	outOfMemory     = 0xA005,
}

enum Attr: Enum{
	majorVersion              = 0x1000,
	minorVersion              = 0x1001,
	attributesSize            = 0x1002,
	allAttributes             = 0x1003,
}

enum ContextString: Enum{
	defaultDeviceSpecifier         = 0x1004,
	deviceSpecifier                = 0x1005,
	extensions                     = 0x1006,
	
	//extensions:
	captureDeviceSpecifier         = 0x310,
	captureDefaultDeviceSpecifier  = 0x311,
	captureSamples                 = 0x312,
	
	defaultAllDevicesSpecifier     = 0x1012,
	allDevicesSpecifier            = 0x1013,
	
	connected                      = 0x313,
}

//alext.h
enum lokiAudioChannel = 1;
enum: Enum{
	chanMainLoki  = 0x500001,
	chanPCMLoki   = 0x500002,
	chanCDLoki    = 0x500003,
}

enum: Enum{
	formatChannelsSoft  = 0x1990,
	formatTypeSoft      = 0x1991,
}

enum: Enum{
	byteSoft           = 0x1400,
	unsignedByteSoft   = 0x1401,
	shortSoft          = 0x1402,
	unsignedShortSoft  = 0x1403,
	intSoft            = 0x1404,
	unsignedIntSoft    = 0x1405,
	floatSoft          = 0x1406,
}

enum: Enum{
	monoSoft      = 0x1500,
	stereoSoft    = 0x1501,
	quadSoft      = 0x1503,
	_5point1Soft  = 0x1504,
	_6point1Soft  = 0x1505,
	_7point1Soft  = 0x1506,
}

enum: Enum{
	defaultFilterOrder  = 0x1100,
}

enum: Enum{
	hrtfSoft                    = 0x1992,
	dontCareSoft                = 0x0002,
	hrtfStatusSoft              = 0x1993,
	hrtfDisabledSoft            = 0x0000,
	hrtfEnabledSoft             = 0x0001,
	hrtfDeniedSoft              = 0x0002,
	hrtfRequiredSoft            = 0x0003,
	hrtfHeadphonesDetectedSoft  = 0x0004,
	hrtfUnsupportedFormatSoft   = 0x0005,
	numHRTFSpecifiersSoft       = 0x1994,
	hrtfSpecifierSoft           = 0x1995,
	hrtfIDSoft                  = 0x1996,
}

enum: Enum{
	outputLimiterSoft  = 0x199A,
}

enum: Enum{
	deviceClockSoft         = 0x1600,
	deviceLatencySoft       = 0x1601,
	deviceClockLatencySoft  = 0x1602,
}

enum: Enum{
	ambisonicLayoutSoft    = 0x1997,
	ambisonicScalingSoft   = 0x1998,
	ambisonicOrderSoft     = 0x1999,
	maxAmbisonicOrderSoft  = 0x199B,
}

enum: Enum{
	bFormat3DSoft  = 0x1507,
}

enum: Enum{
	fumaSoft  = 0x0000,
	acnSoft   = 0x0001,
}

enum: Enum{
	sn3DSoft  = 0x0001,
	n3DSoft   = 0x0002,
}

enum: Enum{
	outputModeSoft   = 0x19AC,
	anySoft          = 0x19AD,
	stereoBasicSoft  = 0x19AE,
	stereoUHJSoft    = 0x19AF,
	stereoHRTFSoft   = 0x19B2,
	surround51Soft  = 0x1504,
	surround61Soft  = 0x1505,
	surround71Soft  = 0x1506,
}

enum: Enum{
	efxMajorVersion    = 0x20001,
	efxMinorVersion    = 0x20002,
	maxAuxiliarySends  = 0x20003,
}

mixin(joinFnBinds((){
	FnBind[] ret = [
		{q{Context*}, q{alcCreateContext}, q{Device* device, const(int)* attrlist}, pubIden: "createContext"},
		{q{Boolean}, q{alcMakeContextCurrent}, q{Context* context}, pubIden: "makeContextCurrent"},
		{q{void}, q{alcProcessContext}, q{Context* context}, pubIden: "processContext"},
		{q{void}, q{alcSuspendContext}, q{Context* context}, pubIden: "suspendContext"},
		{q{void}, q{alcDestroyContext}, q{Context* context}, pubIden: "destroyContext"},
		{q{Context*}, q{alcGetCurrentContext}, q{void}, pubIden: "getCurrentContext"},
		{q{Device*}, q{alcGetContextsDevice}, q{Context* context}, pubIden: "getContextsDevice"},
		{q{Device*}, q{alcOpenDevice}, q{const(char)* devicename}, pubIden: "openDevice"},
		{q{Boolean}, q{alcCloseDevice}, q{Device* device}, pubIden: "closeDevice"},
		{q{Enum}, q{alcGetError}, q{Device* device}, pubIden: "getError"},
		{q{Boolean}, q{alcIsExtensionPresent}, q{Device* device, const(char)* extname}, pubIden: "isExtensionPresent"},
		{q{void*}, q{alcGetProcAddress}, q{Device* device, const(char)* funcname}, pubIden: "getProcAddress"},
		{q{Enum}, q{alcGetEnumValue}, q{Device* device, const(char)* enumname}, pubIden: "getEnumValue"},
		{q{const(char)*}, q{alcGetString}, q{Device* device, Enum param}, pubIden: "getString"},
		{q{void}, q{alcGetIntegerv}, q{Device* device, Enum param, SizeI size, int* values}, pubIden: "getInteger"},
		{q{Device*}, q{alcCaptureOpenDevice}, q{const(char)* devicename, uint frequency, Enum format, SizeI buffersize}, pubIden: "captureOpenDevice"},
		{q{Boolean}, q{alcCaptureCloseDevice}, q{Device* device}, pubIden: "captureCloseDevice"},
		{q{void}, q{alcCaptureStart}, q{Device* device}, pubIden: "captureStart"},
		{q{void}, q{alcCaptureStop}, q{Device* device}, pubIden: "captureStop"},
		{q{void}, q{alcCaptureSamples}, q{Device* device, void* buffer, SizeI samples}, pubIden: "captureSamples"},
		
		//alext.h
		{q{Boolean}, q{alcSetThreadContext}, q{Context* context}, pubIden: "setThreadContext"},
		{q{Context*}, q{alcGetThreadContext}, q{}, pubIden: "getThreadContext"},
		
		{q{Device*}, q{alcLoopbackOpenDeviceSOFT}, q{const(char)* deviceName}, pubIden: "loopbackOpenDeviceSoft"},
		{q{Boolean}, q{alcIsRenderFormatSupportedSOFT}, q{Device* device, SizeI freq, Enum channels, Enum type}, pubIden: "isRenderFormatSupportedSoft"},
		{q{void}, q{alcRenderSamplesSOFT}, q{Device* device, void* buffer, SizeI samples}, pubIden: "renderSamplesSoft"},
		
		{q{void}, q{alcDevicePauseSOFT}, q{Device* device}, pubIden: "devicePauseSoft"},
		{q{void}, q{alcDeviceResumeSOFT}, q{Device* device}, pubIden: "deviceResumeSoft"},
		
		{q{const(char)*}, q{alcGetStringiSOFT}, q{Device* device, Enum paramName, SizeI index}, pubIden: "getStringISoft"},
		{q{Boolean}, q{alcResetDeviceSOFT}, q{Device* device, const(int)* attribs}, pubIden: "resetDeviceSoft"},
		
		{q{Boolean}, q{alcReopenDeviceSOFT}, q{Device* device, const(char)* deviceName, const(int)* attribs}, pubIden: "reopenDeviceSoft"},
	];
	return ret;
}()));
