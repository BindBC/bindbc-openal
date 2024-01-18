/+
+            Copyright 2023 – 2024 Aya Partridge
+ Distributed under the Boost Software License, Version 1.0.
+     (See accompanying file LICENSE_1_0.txt or copy at
+           http://www.boost.org/LICENSE_1_0.txt)
+/
module al;

import bindbc.openal.config;
import bindbc.openal.codegen;

public import
	al.c,
	al.efx;

alias Boolean = byte;

alias SizeI = int;

alias Enum = int;

enum Enum none = 0;

enum Source: Enum{
	sourceRelative       = 0x202,
	
	coneInnerAngle       = 0x1001,
	coneOuterAngle       = 0x1002,
	pitch                = 0x1003,
	position             = 0x1004,
	direction            = 0x1005,
	velocity             = 0x1006,
	looping              = 0x1007,
	buffer               = 0x1009,
	gain                 = 0x100A,
	minGain              = 0x100D,
	maxGain              = 0x100E,
	orientation          = 0x100F,
	sourceState          = 0x1010,
	buffersQueued        = 0x1015,
	buffersProcessed     = 0x1016,
	referenceDistance    = 0x1020,
	rolloffFactor        = 0x1021,
	coneOuterGain        = 0x1022,
	maxDistance          = 0x1023,
	secOffset            = 0x1024,
	sampleOffset         = 0x1025,
	byteOffset           = 0x1026,
	sourceType           = 0x1027,
	
	//extensions:
}

enum Listener: Enum{
	position       = 0x1004,
	velocity       = 0x1006,
	gain           = 0x100A,
	orientation    = 0x100F,
	
	//extensions:
}

enum SourceState: Enum{
	initial  = 0x1011,
	playing  = 0x1012,
	paused   = 0x1013,
	stopped  = 0x1014,
}

enum SourceType: Enum{
	static_       = 0x1028,
	streaming     = 0x1029,
	undetermined  = 0x1030,
}

enum Format: Enum{
	mono8                         = 0x1100,
	mono16                        = 0x1101,
	stereo8                       = 0x1102,
	stereo16                      = 0x1103,
	
	//extensions:
	quad8Loki              = 0x10004,
	quad16Loki             = 0x10005,
	
	monoFloat32            = 0x10010,
	stereoFloat32          = 0x10011,
	
	monoDoubleExt          = 0x10012,
	stereoDoubleExt        = 0x10013,
	
	monoMuLawExt           = 0x10014,
	stereoMuLawExt         = 0x10015,
	
	monoALawExt            = 0x10016,
	stereoALawExt          = 0x10017,
	
	quad8                  = 0x1204,
	quad16                 = 0x1205,
	quad32                 = 0x1206,
	rear8                  = 0x1207,
	rear16                 = 0x1208,
	rear32                 = 0x1209,
	_51Chn8                = 0x120A,
	_51Chn16               = 0x120B,
	_51Chn32               = 0x120C,
	_61Chn8                = 0x120D,
	_61Chn16               = 0x120E,
	_61Chn32               = 0x120F,
	_71Chn8                = 0x1210,
	_71Chn16               = 0x1211,
	_71Chn32               = 0x1212,
	
	monoMuLaw              = 0x10014,
	stereoMuLaw            = 0x10015,
	quadMuLaw              = 0x10021,
	rearMuLaw              = 0x10022,
	_51ChnMuLaw            = 0x10023,
	_61ChnMuLaw            = 0x10024,
	_71ChnMuLaw            = 0x10025,
	
	monoIMA4               = 0x1300,
	stereoIMA4             = 0x1301,
}

enum Buffer: Enum{
	frequency  = 0x2001,
	bits       = 0x2002,
	channels   = 0x2003,
	size       = 0x2004,
	
	//extensions:
	loopPointsSoft  = 0x2015,
}

enum BufferState: Enum{
	unused     = 0x2010,
	pending    = 0x2011,
	processed  = 0x2012,
}

enum Error: Enum{
	noError             = 0,
	invalidName         = 0xA001,
	invalidEnum         = 0xA002,
	invalidValue        = 0xA003,
	invalidOperation    = 0xA004,
	outOfMemory         = 0xA005,
}

enum ContextString: Enum{
	vendor      = 0xB001,
	version_    = 0xB002,
	renderer    = 0xB003,
	extensions  = 0xB004,
}

enum State: Enum{
	dopplerFactor    = 0xC000,
	dopplerVelocity  = 0xC001,
	speedOfSound     = 0xC003,
	distanceModel    = 0xD000,
	
	//extensions:
}

enum DistanceModel: Enum{
	inverse            = 0xD001,
	inverseClamped     = 0xD002,
	linear             = 0xD003,
	linearClamped      = 0xD004,
	exponent           = 0xD005,
	exponentClamped    = 0xD006,
	
	//extensions:
}

//alext.h
enum Capability: Enum{
	sourceDistanceModel  = 0x200,
}

enum: Enum{
	dedicatedGain  = 0x0001,
}

enum: Enum{
	monoSoft      = 0x1500,
	stereoSoft    = 0x1501,
	rearSoft      = 0x1502,
	quadSoft      = 0x1503,
	_5point1Soft  = 0x1504,
	_6point1Soft  = 0x1505,
	_7point1Soft  = 0x1506,
}

enum: Enum{
	byteSoft           = 0x1400,
	unsignedByteSoft   = 0x1401,
	shortSoft          = 0x1402,
	unsignedShortSoft  = 0x1403,
	intSoft            = 0x1404,
	unsignedIntSoft    = 0x1405,
	floatSoft          = 0x1406,
	doubleSoft         = 0x1407,
	byte3Soft          = 0x1408,
	unsignedByte3Soft  = 0x1409,
}

enum: Enum{
	mono8Soft        = 0x1100,
	mono16Soft       = 0x1101,
	mono32fSoft      = 0x10010,
	stereo8Soft      = 0x1102,
	stereo16Soft     = 0x1103,
	stereo32fSoft    = 0x10011,
	quad8Soft        = 0x1204,
	quad16Soft       = 0x1205,
	quad32fSoft      = 0x1206,
	rear8Soft        = 0x1207,
	rear16Soft       = 0x1208,
	rear32fSoft      = 0x1209,
	_5point18Soft    = 0x120A,
	_5point116Soft   = 0x120B,
	_5point132fSoft  = 0x120C,
	_6point18Soft    = 0x120D,
	_6point116Soft   = 0x120E,
	_6point132fSoft  = 0x120F,
	_7point18Soft    = 0x1210,
	_7point116Soft   = 0x1211,
	_7point132fSoft  = 0x1212,
}

enum: Enum{
	internalFormatSoft  = 0x2008,
	byteLengthSoft      = 0x2009,
	sampleLengthSoft    = 0x200A,
	secLengthSoft       = 0x200B,
}

enum: Enum{
	directChannelsSoft  = 0x1033,
}

enum: Enum{
	stereoAngles  = 0x1030,
}

enum: Enum{
	sourceRadius  = 0x1031,
}

enum: Enum{
	sampleOffsetLatencySoft  = 0x1200,
	secOffsetLatencySoft     = 0x1201,
}

enum: Enum{
	deferredUpdatesSoft  = 0xC002,
}

enum: Enum{
	unpackBlockAlignmentSoft  = 0x200C,
	packBlockAlignmentSoft    = 0x200D,
}

enum: Enum{
	formatMonoMSADPCMSoft    = 0x1302,
	formatStereoMSADPCMSoft  = 0x1303,
}

enum: Enum{
	formatBFormat2D8        = 0x20021,
	formatBFormat2D16       = 0x20022,
	formatBFormat2DFloat32  = 0x20023,
	formatBFormat3D8        = 0x20031,
	formatBFormat3D16       = 0x20032,
	formatBFormat3DFloat32  = 0x20033,
}

enum: Enum{
	formatBFormat2DMuLaw  = 0x10031,
	formatBFormat3DMuLaw  = 0x10032,
}

enum: Enum{
	gainLimitSoft  = 0x200E,
}

enum: Enum{
	numResamplersSoft     = 0x1210,
	defaultResamplerSoft  = 0x1211,
	sourceResamplerSoft   = 0x1212,
	resamplerNameSoft     = 0x1213,
}

enum: Enum{
	sourceSpatializeSoft  = 0x1214,
	sourceSpatialiseSoft  = sourceSpatializeSoft,
	autoSoft              = 0x0002,
}

enum: Enum{
	sampleOffsetClockSoft  = 0x1202,
	secOffsetClockSoft     = 0x1203,
}

enum: Enum{
	dropUnmatchedSoft   = 0x0001,
	remixUnmatchedSoft  = 0x0002,
}

enum: Enum{
	ambisonicLayoutSoft   = 0x1997,
	ambisonicScalingSoft  = 0x1998,
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
	effectSlotTargetSoft  = 0x199C,
}

enum: Enum{
	eventCallbackFunctionSoft        = 0x19A2,
	eventCallbackUserParamSoft       = 0x19A3,
	eventTypeBufferCompletedSoft     = 0x19A4,
	eventTypeSourceStateChangedSoft  = 0x19A5,
	eventTypeDisconnectedSoft        = 0x19A6,
}

alias EventProcSoft = extern(C) void function(Enum eventType, uint object, uint param, SizeI length, const(char)* message, void* userParam) nothrow;

enum: Enum{
	bufferCallbackFunctionSoft   = 0x19A0,
	bufferCallbackUserParamSoft  = 0x19A1,
}

alias BufferCallbackTypeSoft = extern(C) SizeI function(void* userptr, void* sampledata, SizeI numbytes) nothrow;

enum: Enum{
	formatUHJ2Chn8Soft        = 0x19A2,
	formatUHJ2Chn16Soft       = 0x19A3,
	formatUHJ2ChnFloat32Soft  = 0x19A4,
	formatUHJ3Chn8Soft        = 0x19A5,
	formatUHJ3Chn16Soft       = 0x19A6,
	formatUHJ3ChnFloat32Soft  = 0x19A7,
	formatUHJ4Chn8Soft        = 0x19A8,
	formatUHJ4Chn16Soft       = 0x19A9,
	formatUHJ4ChnFloat32Soft  = 0x19AA,
}

enum: Enum{
	stereoModeSoft        = 0x19B0,
	normalSoft            = 0x0000,
	superStereoSoft       = 0x0001,
	superStereoWidthSoft  = 0x19B1,
}

enum: Enum{
	formatUHJ2ChnMuLawSoft    = 0x19B3,
	formatUHJ2ChnALawSoft     = 0x19B4,
	formatUHJ2ChnIma4Soft     = 0x19B5,
	formatUHJ2ChnMSADPCMSoft  = 0x19B6,
	formatUHJ3ChnMuLawSoft    = 0x19B7,
	formatUHJ3ChnALawSoft     = 0x19B8,
	formatUHJ4ChnMuLawSoft    = 0x19B9,
	formatUHJ4ChnALawSoft     = 0x19BA,
}

mixin(joinFnBinds((){
	FnBind[] ret = [
		{q{void}, q{alEnable}, q{Enum capability}, pubIden: "enable"},
		{q{void}, q{alDisable}, q{Enum capability}, pubIden: "disable"},
		{q{Boolean}, q{alIsEnabled}, q{Enum capability}, pubIden: "isEnabled"},
		{q{void}, q{alDopplerFactor}, q{float value}, pubIden: "dopplerFactor"},
		{q{void}, q{alDopplerVelocity}, q{float value}, pubIden: "dopplerVelocity"},
		{q{void}, q{alSpeedOfSound}, q{float value}, pubIden: "speedOfSound"},
		{q{void}, q{alDistanceModel}, q{Enum distanceModel}, pubIden: "distanceModel"},
		{q{const(char)*}, q{alGetString}, q{Enum param}, pubIden: "getString"},
		{q{void}, q{alGetBooleanv}, q{Enum param, Boolean* values}, pubIden: "getBoolean"},
		{q{void}, q{alGetIntegerv}, q{Enum param, int* values}, pubIden: "getInteger"},
		{q{void}, q{alGetFloatv}, q{Enum param, float* values}, pubIden: "getFloat"},
		{q{void}, q{alGetDoublev}, q{Enum param, double* values}, pubIden: "getDouble"},
		{q{Boolean}, q{alGetBoolean}, q{Enum param}, pubIden: "getBoolean"},
		{q{int}, q{alGetInteger}, q{Enum param}, pubIden: "getInteger"},
		{q{float}, q{alGetFloat}, q{Enum param}, pubIden: "getFloat"},
		{q{double}, q{alGetDouble}, q{Enum param}, pubIden: "getDouble"},
		{q{Enum}, q{alGetError}, q{}, pubIden: "getError"},
		{q{Boolean}, q{alIsExtensionPresent}, q{const(char)* extname}, pubIden: "isExtensionPresent"},
		{q{void*}, q{alGetProcAddress}, q{const(char)* fname}, pubIden: "getProcAddress"},
		{q{Enum}, q{alGetEnumValue}, q{const(char)* ename}, pubIden: "getEnumValue"},
		
		{q{void}, q{alListenerf}, q{Enum param, float value}, pubIden: "listener"},
		{q{void}, q{alListener3f}, q{Enum param, float value1, float value2, float value3}, pubIden: "listener"},
		{q{void}, q{alListenerfv}, q{Enum param, const(float)* values}, pubIden: "listener"},
		{q{void}, q{alListeneri}, q{Enum param, int value}, pubIden: "listener"},
		{q{void}, q{alListener3i}, q{Enum param, int value1, int value2, int value3}, pubIden: "listener"},
		{q{void}, q{alListeneriv}, q{Enum param, const(int)* values}, pubIden: "listener"},
		{q{void}, q{alGetListenerf}, q{Enum param, float* value}, pubIden: "getListener"},
		{q{void}, q{alGetListener3f}, q{Enum param, float* value1, float* value2, float* value3}, pubIden: "getListener"},
		{q{void}, q{alGetListenerfv}, q{Enum param, float* values}, pubIden: "getListener"},
		{q{void}, q{alGetListeneri}, q{Enum param, int* value}, pubIden: "getListener"},
		{q{void}, q{alGetListener3i}, q{Enum param, int* value1, int* value2, int* value3}, pubIden: "getListener"},
		{q{void}, q{alGetListeneriv}, q{Enum param, int* values}, pubIden: "getListener"},
		
		{q{void}, q{alGenSources}, q{SizeI n, uint* sources}, pubIden: "genSources"},
		{q{void}, q{alDeleteSources}, q{SizeI n, const(uint)* sources}, pubIden: "deleteSources"},
		{q{Boolean}, q{alIsSource}, q{uint source}, pubIden: "isSource"},
		{q{void}, q{alSourcef}, q{uint source, Enum param, float value}, pubIden: "source"},
		{q{void}, q{alSource3f}, q{uint source, Enum param, float value1, float value2, float value3}, pubIden: "source"},
		{q{void}, q{alSourcefv}, q{uint source, Enum param, const(float)* values}, pubIden: "source"},
		{q{void}, q{alSourcei}, q{uint source, Enum param, int value}, pubIden: "source"},
		{q{void}, q{alSource3i}, q{uint source, Enum param, int value1, int value2, int value3}, pubIden: "source"},
		{q{void}, q{alSourceiv}, q{uint source, Enum param, const(int)* values}, pubIden: "source"},
		{q{void}, q{alGetSourcef}, q{uint source, Enum param, float* value}, pubIden: "getSource"},
		{q{void}, q{alGetSource3f}, q{uint source, Enum param, float* value1, float* value2, float* value3}, pubIden: "getSource"},
		{q{void}, q{alGetSourcefv}, q{uint source, Enum param, float* values}, pubIden: "getSource"},
		{q{void}, q{alGetSourcei}, q{uint source, Enum param, int* value}, pubIden: "getSource"},
		{q{void}, q{alGetSource3i}, q{uint source, Enum param, int* value1, int* value2, int* value3}, pubIden: "getSource"},
		{q{void}, q{alGetSourceiv}, q{uint source, Enum param, int* values}, pubIden: "getSource"},
		
		{q{void}, q{alSourcePlay}, q{uint source}, pubIden: "sourcePlay"},
		{q{void}, q{alSourceStop}, q{uint source}, pubIden: "sourceStop"},
		{q{void}, q{alSourceRewind}, q{uint source}, pubIden: "sourceRewind"},
		{q{void}, q{alSourcePause}, q{uint source}, pubIden: "sourcePause"},
		{q{void}, q{alSourcePlayv}, q{SizeI n, const(uint)* sources}, pubIden: "sourcePlay"},
		{q{void}, q{alSourceStopv}, q{SizeI n, const(uint)* sources}, pubIden: "sourceStop"},
		{q{void}, q{alSourceRewindv}, q{SizeI n, const(uint)* sources}, pubIden: "sourceRewind"},
		{q{void}, q{alSourcePausev}, q{SizeI n, const(uint)* sources}, pubIden: "sourcePause"},
		{q{void}, q{alSourceQueueBuffers}, q{uint source, SizeI nb, const(uint)* buffers}, pubIden: "sourceQueueBuffers"},
		{q{void}, q{alSourceUnqueueBuffers}, q{uint source, SizeI nb, uint* buffers}, pubIden: "sourceUnqueueBuffers"},
		
		{q{void}, q{alGenBuffers}, q{SizeI n, uint* buffers}, pubIden: "genBuffers"},
		{q{void}, q{alDeleteBuffers}, q{SizeI n, const(uint)* buffers}, pubIden: "deleteBuffers"},
		{q{Boolean}, q{alIsBuffer}, q{uint buffer}, pubIden: "isBuffer"},
		{q{void}, q{alBufferData}, q{uint buffer, Enum format, const(void)* data, SizeI size, SizeI samplerate}, pubIden: "bufferData"},
		{q{void}, q{alBufferf}, q{uint buffer, Enum param, float value}, pubIden: "buffer"},
		{q{void}, q{alBuffer3f}, q{uint buffer, Enum param, float value1, float value2, float value3}, pubIden: "buffer"},
		{q{void}, q{alBufferfv}, q{uint buffer, Enum param, const(float)* values}, pubIden: "buffer"},
		{q{void}, q{alBufferi}, q{uint buffer, Enum param, int value}, pubIden: "buffer"},
		{q{void}, q{alBuffer3i}, q{uint buffer, Enum param, int value1, int value2, int value3}, pubIden: "buffer"},
		{q{void}, q{alBufferiv}, q{uint buffer, Enum param, const(int)* values}, pubIden: "buffer"},
		{q{void}, q{alGetBufferf}, q{uint buffer, Enum param, float* value}, pubIden: "getBuffer"},
		{q{void}, q{alGetBuffer3f}, q{uint buffer, Enum param, float* value1, float* value2, float* value3}, pubIden: "getBuffer"},
		{q{void}, q{alGetBufferfv}, q{uint buffer, Enum param, float* values}, pubIden: "getBuffer"},
		{q{void}, q{alGetBufferi}, q{uint buffer, Enum param, int* value}, pubIden: "getBuffer"},
		{q{void}, q{alGetBuffer3i}, q{uint buffer, Enum param, int* value1, int* value2, int* value3}, pubIden: "getBuffer"},
		{q{void}, q{alGetBufferiv}, q{uint buffer, Enum param, int* values}, pubIden: "getBuffer"},
		
		//extensions:
		{q{void}, q{alBufferDataStatic}, q{const uint buffer, Enum format, void* data, SizeI size, SizeI freq}, pubIden: "bufferDataStatic"},
		
		{q{void}, q{alBufferSubDataSOFT}, q{uint buffer, Enum format, const(void)* data, SizeI offset, SizeI length}, pubIden: "bufferSubDataSoft"},
		
		{q{void}, q{alBufferSamplesSOFT}, q{uint buffer, uint samplerate, Enum internalformat, SizeI samples, Enum channels, Enum type, const(void)* data}, pubIden: "bufferSamplesSoft"},
		{q{void}, q{alBufferSubSamplesSOFT}, q{uint buffer, SizeI offset, SizeI samples, Enum channels, Enum type, const(void)* data}, pubIden: "bufferSubSamplesSoft"},
		{q{void}, q{alGetBufferSamplesSOFT}, q{uint buffer, SizeI offset, SizeI samples, Enum channels, Enum type, void* data}, pubIden: "getBufferSamplesSoft"},
		{q{Boolean}, q{alIsBufferFormatSupportedSOFT}, q{Enum format}, pubIden: "isBufferFormatSupportedSoft"},
		
		{q{void}, q{alSourcedSOFT}, q{uint source, Enum param, double value}, pubIden: "sourceSoft"},
		{q{void}, q{alSource3dSOFT}, q{uint source, Enum param, double value1, double value2, double value3}, pubIden: "sourceSoft"},
		{q{void}, q{alSourcedvSOFT}, q{uint source, Enum param, const(double)* values}, pubIden: "sourceSoft"},
		{q{void}, q{alGetSourcedSOFT}, q{uint source, Enum param, double* value}, pubIden: "getSourceSoft"},
		{q{void}, q{alGetSource3dSOFT}, q{uint source, Enum param, double* value1, double* value2, double* value3}, pubIden: "getSourceSoft"},
		{q{void}, q{alGetSourcedvSOFT}, q{uint source, Enum param, double* values}, pubIden: "getSourceSoft"},
		{q{void}, q{alSourcei64SOFT}, q{uint source, Enum param, long value}, pubIden: "sourceSoft"},
		{q{void}, q{alSource3i64SOFT}, q{uint source, Enum param, long value1, long value2, long value3}, pubIden: "sourceSoft"},
		{q{void}, q{alSourcei64vSOFT}, q{uint source, Enum param, const(long)* values}, pubIden: "sourceSoft"},
		{q{void}, q{alGetSourcei64SOFT}, q{uint source, Enum param, long* value}, pubIden: "getSourceSoft"},
		{q{void}, q{alGetSource3i64SOFT}, q{uint source, Enum param, long* value1, long* value2, long* value3}, pubIden: "getSourceSoft"},
		{q{void}, q{alGetSourcei64vSOFT}, q{uint source, Enum param, long* values}, pubIden: "getSourceSoft"},
		
		{q{void}, q{alDeferUpdatesSOFT}, q{void}, pubIden: "deferUpdatesSoft"},
		{q{void}, q{alProcessUpdatesSOFT}, q{void}, pubIden: "processUpdatesSoft"},
		
		{q{const(char)*}, q{alGetStringiSOFT}, q{Enum pname, SizeI index}, pubIden: "getStringISoft"},
		
		{q{void}, q{alEventControlSOFT}, q{SizeI count, const(Enum)* types, Boolean enable}, pubIden: "eventControlSoft"},
		{q{void}, q{alEventCallbackSOFT}, q{EventProcSoft callback, void* userParam}, pubIden: "eventCallbackSoft"},
		{q{void*}, q{alGetPointerSOFT}, q{Enum pname}, pubIden: "getPointerSoft"},
		{q{void}, q{alGetPointervSOFT}, q{Enum pname, void** values}, pubIden: "getPointerSoft"},
		
		{q{void}, q{alBufferCallbackSOFT}, q{uint buffer, Enum format, SizeI freq, ALBufferCallbackTypeSoft callback, void* userptr}, pubIden: "bufferCallbackSoft"},
		{q{void}, q{alGetBufferPtrSOFT}, q{uint buffer, Enum param, void** ptr}, pubIden: "getBufferPtrSoft"},
		{q{void}, q{alGetBuffer3PtrSOFT}, q{uint buffer, Enum param, void** ptr0, void** ptr1, void** ptr2}, pubIden: "getBufferPtrSoft"},
		{q{void}, q{alGetBufferPtrvSOFT}, q{uint buffer, Enum param, void** ptr}, pubIden: "getBufferPtrSoft"},
		
		{q{void}, q{alSourcePlayAtTimeSOFT}, q{uint source, long start_time}, pubIden: "sourcePlayAtTimeSoft"},
		{q{void}, q{alSourcePlayAtTimevSOFT}, q{SizeI n, const(uint)* sources, long start_time}, pubIden: "sourcePlayAtTimeSoft"},
	];
	return ret;
}()));

static if(!staticBinding):
import bindbc.loader;

mixin(makeDynloadFns("OpenAL", makeLibPaths(["OpenAL"], [
		"Windows": ["soft_oal", "soft-oal", "OpenAL32"],
		"Posix": ["openal", "al", "AL"],
	]), [
		__MODULE__,
		"al.c",
		"al.efx",
	]
));
