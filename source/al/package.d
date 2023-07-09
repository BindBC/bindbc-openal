/+
+                Copyright 2023 Aya Partridge
+ Distributed under the Boost Software License, Version 1.0.
+     (See accompanying file LICENSE_1_0.txt or copy at
+           http://www.boost.org/LICENSE_1_0.txt)
+/
module al;

import bindbc.openal.config;
import bindbc.openal.codegen;

public import
	al.c,
	al.efx,
	al.efx.presets,
	al.ext;

alias Boolean = byte;

alias SizeI = int;

alias Enum = int;

enum none = 0;

enum: Enum{
	sourceRelative  = 0x202,
}

enum: Enum{
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
	initial              = 0x1011,
	playing              = 0x1012,
	paused               = 0x1013,
	stopped              = 0x1014,
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
	static_              = 0x1028,
	streaming            = 0x1029,
	undetermined         = 0x1030,
}

enum: Enum{
	formatMono8     = 0x1100,
	formatMono16    = 0x1101,
	formatStereo8   = 0x1102,
	formatStereo16  = 0x1103,
}

enum: Enum{
	frequency  = 0x2001,
	bits       = 0x2002,
	channels   = 0x2003,
	size       = 0x2004,
}

enum: Enum{
	unused     = 0x2010,
	pending    = 0x2011,
	processed  = 0x2012,
}

enum: Enum{
	noError             = 0,
	invalidName         = 0xA001,
	invalidEnum         = 0xA002,
	invalidValue        = 0xA003,
	invalidOperation    = 0xA004,
	outOfMemory         = 0xA005,
}

enum: Enum{
	vendor      = 0xB001,
	version     = 0xB002,
	renderer    = 0xB003,
	extensions  = 0xB004,
}

enum: Enum{
	dopplerFactor    = 0xC000,
	dopplerVelocity  = 0xC001,
	speedOfSound     = 0xC003,
}

enum: Enum{
	distanceModel              = 0xD000,
	inverseDistance            = 0xD001,
	inverseDistanceClamped     = 0xD002,
	linearDistance             = 0xD003,
	linearDistanceClamped      = 0xD004,
	exponentDistance           = 0xD005,
	exponentDistanceClamped    = 0xD006,
}

//alext.h
enum: Enum{
	formatIMAADPCMMono16Ext    = 0x10000,
	formatIMAADPCMStereo16Ext  = 0x10001,
}

enum: Enum{
	formatWaveExt  = 0x10002,
}

enum: Enum{
	formatQuad8Loki   = 0x10004,
	formatQuad16Loki  = 0x10005,
}

enum: Enum{
	formatMonoFloat32    = 0x10010,
	formatStereoFloat32  = 0x10011,
}

enum: Enum{
	formatMonoDoubleExt    = 0x10012,
	formatStereoDoubleExt  = 0x10013,
}

enum: Enum{
	formatMonoMuLawExt    = 0x10014,
	formatStereoMuLawExt  = 0x10015,
}

enum: Enum{
	formatMonoALawExt    = 0x10016,
	formatStereoALawExt  = 0x10017,
}

enum: Enum{
	formatQuad8    = 0x1204,
	formatQuad16   = 0x1205,
	formatQuad32   = 0x1206,
	formatRear8    = 0x1207,
	formatRear16   = 0x1208,
	formatRear32   = 0x1209,
	format51Chn8   = 0x120A,
	format51Chn16  = 0x120B,
	format51Chn32  = 0x120C,
	format61Chn8   = 0x120D,
	format61Chn16  = 0x120E,
	format61Chn32  = 0x120F,
	format71Chn8   = 0x1210,
	format71Chn16  = 0x1211,
	format71Chn32  = 0x1212,
}

enum: Enum{
	formatMonoMuLaw    = 0x10014,
	formatStereoMuLaw  = 0x10015,
	formatQuadMuLaw    = 0x10021,
	formatRearMuLaw    = 0x10022,
	format51ChnMuLaw   = 0x10023,
	format61ChnMuLaw   = 0x10024,
	format71ChnMuLaw   = 0x10025,
}

enum: Enum{
	formatMonoIMA4    = 0x1300,
	formatStereoIMA4  = 0x1301,
}

enum: Enum{

}

mixin(joinFnBinds((){
	string[][] ret;
	ret ~= makeFnBinds([
		[q{void}, q{alEnable}, q{Enum capability}],
		[q{void}, q{alDisable}, q{Enum capability}],
		[q{Boolean}, q{alIsEnabled}, q{Enum capability}],
		[q{void}, q{alDopplerFactor}, q{float value}],
		[q{void}, q{alDopplerVelocity}, q{float value}],
		[q{void}, q{alSpeedOfSound}, q{float value}],
		[q{void}, q{alDistanceModel}, q{Enum distanceModel}],
		[q{const(char)*}, q{alGetString}, q{Enum param}],
		[q{void}, q{alGetBooleanv}, q{Enum param, Boolean* values}],
		[q{void}, q{alGetIntegerv}, q{Enum param, int* values}],
		[q{void}, q{alGetFloatv}, q{Enum param, float* values}],
		[q{void}, q{alGetDoublev}, q{Enum param, double* values}],
		[q{Boolean}, q{alGetBoolean}, q{Enum param}],
		[q{int}, q{alGetInteger}, q{Enum param}],
		[q{float}, q{alGetFloat}, q{Enum param}],
		[q{double}, q{alGetDouble}, q{Enum param}],
		[q{Enum}, q{alGetError}, q{void}],
		[q{Boolean}, q{alIsExtensionPresent}, q{const(char)* extname}],
		[q{void*}, q{alGetProcAddress}, q{const(char)* fname}],
		[q{Enum}, q{alGetEnumValue}, q{const(char)* ename}],
		
		[q{void}, q{alListenerf}, q{Enum param, float value}],
		[q{void}, q{alListener3f}, q{Enum param, float value1, float value2, float value3}],
		[q{void}, q{alListenerfv}, q{Enum param, const(float)* values}],
		[q{void}, q{alListeneri}, q{Enum param, int value}],
		[q{void}, q{alListener3i}, q{Enum param, int value1, int value2, int value3}],
		[q{void}, q{alListeneriv}, q{Enum param, const(int)* values}],
		[q{void}, q{alGetListenerf}, q{Enum param, float* value}],
		[q{void}, q{alGetListener3f}, q{Enum param, float* value1, float* value2, float* value3}],
		[q{void}, q{alGetListenerfv}, q{Enum param, float* values}],
		[q{void}, q{alGetListeneri}, q{Enum param, int* value}],
		[q{void}, q{alGetListener3i}, q{Enum param, int* value1, int* value2, int* value3}],
		[q{void}, q{alGetListeneriv}, q{Enum param, int* values}],
		
		[q{void}, q{alGenSources}, q{SizeI n, uint* sources}],
		[q{void}, q{alDeleteSources}, q{SizeI n, const(uint)* sources}],
		[q{Boolean}, q{alIsSource}, q{uint source}],
		[q{void}, q{alSourcef}, q{uint source, Enum param, float value}],
		[q{void}, q{alSource3f}, q{uint source, Enum param, float value1, float value2, float value3}],
		[q{void}, q{alSourcefv}, q{uint source, Enum param, const(float)* values}],
		[q{void}, q{alSourcei}, q{uint source, Enum param, int value}],
		[q{void}, q{alSource3i}, q{uint source, Enum param, int value1, int value2, int value3}],
		[q{void}, q{alSourceiv}, q{uint source, Enum param, const(int)* values}],
		[q{void}, q{alGetSourcef}, q{uint source, Enum param, float* value}],
		[q{void}, q{alGetSource3f}, q{uint source, Enum param, float* value1, float* value2, float* value3}],
		[q{void}, q{alGetSourcefv}, q{uint source, Enum param, float* values}],
		[q{void}, q{alGetSourcei}, q{uint source, Enum param, int* value}],
		[q{void}, q{alGetSource3i}, q{uint source, Enum param, int* value1, int* value2, int* value3}],
		[q{void}, q{alGetSourceiv}, q{uint source, Enum param, int* values}],
		
		[q{void}, q{alSourcePlay}, q{uint source}],
		[q{void}, q{alSourceStop}, q{uint source}],
		[q{void}, q{alSourceRewind}, q{uint source}],
		[q{void}, q{alSourcePause}, q{uint source}],
		[q{void}, q{alSourcePlayv}, q{SizeI n, const(uint)* sources}],
		[q{void}, q{alSourceStopv}, q{SizeI n, const(uint)* sources}],
		[q{void}, q{alSourceRewindv}, q{SizeI n, const(uint)* sources}],
		[q{void}, q{alSourcePausev}, q{SizeI n, const(uint)* sources}],
		[q{void}, q{alSourceQueueBuffers}, q{uint source, SizeI nb, const(uint)* buffers}],
		[q{void}, q{alSourceUnqueueBuffers}, q{uint source, SizeI nb, uint* buffers}],
		
		[q{void}, q{alGenBuffers}, q{SizeI n, uint* buffers}],
		[q{void}, q{alDeleteBuffers}, q{SizeI n, const(uint)* buffers}],
		[q{Boolean}, q{alIsBuffer}, q{uint buffer}],
		[q{void}, q{alBufferData}, q{uint buffer, Enum format, const(void)* data, SizeI size, SizeI samplerate}],
		[q{void}, q{alBufferf}, q{uint buffer, Enum param, float value}],
		[q{void}, q{alBuffer3f}, q{uint buffer, Enum param, float value1, float value2, float value3}],
		[q{void}, q{alBufferfv}, q{uint buffer, Enum param, const(float)* values}],
		[q{void}, q{alBufferi}, q{uint buffer, Enum param, int value}],
		[q{void}, q{alBuffer3i}, q{uint buffer, Enum param, int value1, int value2, int value3}],
		[q{void}, q{alBufferiv}, q{uint buffer, Enum param, const(int)* values}],
		[q{void}, q{alGetBufferf}, q{uint buffer, Enum param, float* value}],
		[q{void}, q{alGetBuffer3f}, q{uint buffer, Enum param, float* value1, float* value2, float* value3}],
		[q{void}, q{alGetBufferfv}, q{uint buffer, Enum param, float* values}],
		[q{void}, q{alGetBufferi}, q{uint buffer, Enum param, int* value}],
		[q{void}, q{alGetBuffer3i}, q{uint buffer, Enum param, int* value1, int* value2, int* value3}],
		[q{void}, q{alGetBufferiv}, q{uint buffer, Enum param, int* values}],
		
		//alext.h
void alBufferDataStatic(const ALuint buffer, ALenum format, ALvoid *data, ALsizei size, ALsizei freq);


	]);
	return ret;
}(), __MODULE__));

static if(!staticBinding):
import bindbc.loader;

mixin(makeDynloadFns("OpenAL", makeLibPaths(["OpenAL"], [
		"Windows": ["soft_oal", "soft-oal", "OpenAL32"],
		"Posix": ["openal", "al", "AL"],
	]), [
		__MODULE__,
		"al.c",
		"al.efx",
		"al.efx.presets",
		"al.ext",
	]
));
