//          Copyright 2018 - 2021 Michael D. Parker
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)

module bindbc.openal.bindstatic;

version(BindOpenAL_Static):

import bindbc.openal.types;

extern(C) @nogc nothrow {
    void alEnable(ALenum capability);
    void alDisable(ALenum capability);
    ALboolean alIsEnabled(ALenum capability);
    const(ALchar)* alGetString(ALenum param);
    void alGetBooleanv(ALenum param, ALboolean* values);
    void alGetIntegerv(ALenum param, ALint* values);
    void alGetFloatv(ALenum param, ALfloat* values);
    void alGetDoublev(ALenum param, ALdouble* values);
    ALboolean alGetBoolean(ALenum param);
    ALint alGetInteger(ALenum param);
    ALfloat alGetFloat(ALenum param);
    ALdouble alGetDouble(ALenum param);
    ALenum alGetError();
    ALboolean alIsExtensionPresent(const(char)* extname);
    ALvoid* alGetProcAddress(const(char)* fname);
    ALenum alGetEnumValue(const(char)* ename);
    void alListenerf(ALenum param, ALfloat value);
    void alListener3f(ALenum param, ALfloat value1, ALfloat value2, ALfloat value3);
    void alListenerfv(ALenum param, const(ALfloat)* values);
    void alListeneri(ALenum param, ALint value);
    void alListener3i(ALenum param, ALint value1, ALint value2, ALint value3);
    void alListeneriv(ALenum param, const(ALint)* values);
    void alGetListenerf(ALenum param, ALfloat* value);
    void alGetListener3f(ALenum param, ALfloat* value1, ALfloat* value2, ALfloat* value3);
    void alGetListenerfv(ALenum param, ALfloat* values);
    void alGetListeneri(ALenum param, ALint* value);
    void alGetListener3i(ALenum param, ALint* value1, ALint* value2, ALint* value3);
    void alGetListeneriv(ALenum param, ALint* values);
    void alGenSources(ALsizei n, ALuint* sources);
    void alDeleteSources(ALsizei n, const(ALuint)* sources);
    ALboolean alIsSource(ALuint source);
    void alSourcef(ALuint source, ALenum param, ALfloat value);
    void alSource3f(ALuint source, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3);
    void alSourcefv(ALuint source, ALenum param, const(ALfloat)* values);
    void alSourcei(ALuint source, ALenum param, ALint value);
    void alSource3i(ALuint source, ALenum param, ALint value1, ALint value2, ALint value3);
    void alSourceiv(ALuint source, ALenum param, const(ALint)* values);
    void alGetSourcef(ALuint source, ALenum param, ALfloat* value);
    void alGetSource3f(ALuint source, ALenum param, ALfloat* value1, ALfloat* value2, ALfloat* value3);
    void alGetSourcefv(ALuint source, ALenum param, ALfloat* values);
    void alGetSourcei(ALuint source, ALenum param, ALint* value);
    void alGetSource3i(ALuint source, ALenum param, ALint* value1, ALint* value2, ALint* value3);
    void alGetSourceiv(ALuint source, ALenum param, ALint*);
    void alSourcePlayv(ALsizei n, const(ALuint)* sources);
    void alSourceStopv(ALsizei n, const(ALuint)* sources);
    void alSourceRewindv(ALsizei n, const(ALuint)* sources);
    void alSourcePausev(ALsizei n, const(ALuint)* sources);
    void alSourcePlay(ALuint source);
    void alSourcePause(ALuint source);
    void alSourceRewind(ALuint source);
    void alSourceStop(ALuint source);
    void alSourceQueueBuffers(ALuint source, ALsizei nb, ALuint* buffers);
    void alSourceUnqueueBuffers(ALuint source, ALsizei nb, ALuint* buffers);
    void alGenBuffers(ALsizei, ALuint* buffers);
    void alDeleteBuffers(ALsizei, const(ALuint)* buffers);
    ALboolean alIsBuffer(ALuint buffer);
    void alBufferData(ALuint buffers, ALenum param, const(ALvoid)* data, ALsizei size, ALsizei freq);
    void alBufferf(ALuint buffers, ALenum param, ALfloat value);
    void alBuffer3f(ALuint buffers, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3);
    void alBufferfv(ALuint buffers, ALenum param, const(ALfloat)* values);
    void alBufferi(ALuint buffers, ALenum param, ALint value);
    void alBuffer3i(ALuint buffers, ALenum param, ALint value1, ALint value2, ALint value3);
    void alBufferiv(ALuint buffers, ALenum param, const(ALint)* values);
    void alGetBufferf(ALuint buffers, ALenum param, ALfloat* value);
    void alGetBuffer3f(ALuint buffers, ALenum param, ALfloat* value1, ALfloat* value2, ALfloat* value3);
    void alGetBufferfv(ALuint buffers, ALenum param, ALfloat* values);
    void alGetBufferi(ALuint buffers, ALenum param, ALint* value);
    void alGetBuffer3i(ALuint buffers, ALenum param, ALint* value1, ALint* value2, ALint* value3);
    void alGetBufferiv(ALuint buffers, ALenum param, ALint* values);
    void alDopplerFactor(ALfloat value);
    void alDopplerVelocity(ALfloat value);
    void alSpeedOfSound(ALfloat value);
    void alDistanceModel(ALenum distanceModel);
    ALCcontext* alcCreateContext(ALCdevice* device, const(ALCint)* attrlist);
    ALCboolean alcMakeContextCurrent(ALCcontext* context);
    void alcProcessContext(ALCcontext* context);
    void alcSuspendContext(ALCcontext* context);
    void alcDestroyContext(ALCcontext* context);
    ALCcontext* alcGetCurrentContext();
    ALCdevice* alcGetContextsDevice(ALCcontext* context);
    ALCdevice* alcOpenDevice(const(char)* devicename);
    ALCboolean alcCloseDevice(ALCdevice* device);
    ALCenum alcGetError(ALCdevice* device);
    ALCboolean alcIsExtensionPresent(ALCdevice* device, const(char)* extname);
    void* alcGetProcAddress(ALCdevice* device, const(char)* funcname);
    ALCenum alcGetEnumValue(ALCdevice* device, const(char)* enumname);
    const(char)* alcGetString(ALCdevice* device, ALCenum param);
    void alcGetIntegerv(ALCdevice* device, ALCenum param, ALCsizei size, ALCint* values);
    ALCdevice* alcCaptureOpenDevice(const(char)* devicename, ALCuint frequency, ALCenum format, ALCsizei buffersize);
    ALCboolean alcCaptureCloseDevice(ALCdevice* device);
    void alcCaptureStart(ALCdevice* device);
    void alcCaptureStop(ALCdevice* device);
    void alcCaptureSamples(ALCdevice* device, ALCvoid* buffer, ALCsizei samples);


    version(AL_EFX) {
        void alGenEffects(ALsizei n, ALuint* effects);
        void alDeleteEffects(ALsizei n, const ALuint* effects);
        ALboolean alIsEffect(ALuint effect);
        void alEffecti(ALuint effect, ALenum param, ALint iValue);
        void alEffectiv(ALuint effect, ALenum param, const ALint* piValues);
        void alEffectf(ALuint effect, ALenum param, ALfloat flValue);
        void alEffectfv(ALuint effect, ALenum param, const ALfloat* pflValues);
        void alGetEffecti(ALuint effect, ALenum param, ALint* piValue);
        void alGetEffectiv(ALuint effect, ALenum param, ALint* piValues);
        void alGetEffectf(ALuint effect, ALenum param, ALfloat* pflValue);
        void alGetEffectfv(ALuint effect, ALenum param, ALfloat* pflValues);

        void alGenFilters(ALsizei n, ALuint* filters);
        void alDeleteFilters(ALsizei n, const ALuint* filters);
        ALboolean alIsFilter(ALuint filter);
        void alFilteri(ALuint filter, ALenum param, ALint iValue);
        void alFilteriv(ALuint filter, ALenum param, const ALint* piValues);
        void alFilterf(ALuint filter, ALenum param, ALfloat flValue);
        void alFilterfv(ALuint filter, ALenum param, const ALfloat* pflValues);
        void alGetFilteri(ALuint filter, ALenum param, ALint* piValue);
        void alGetFilteriv(ALuint filter, ALenum param, ALint* piValues);
        void alGetFilterf(ALuint filter, ALenum param, ALfloat* pflValue);
        void alGetFilterfv(ALuint filter, ALenum param, ALfloat* pflValues);

        void alGenAuxiliaryEffectSlots(ALsizei n, ALuint* effectslots);
        void alDeleteAuxiliaryEffectSlots(ALsizei n, const ALuint* effectslots);
        ALboolean alIsAuxiliaryEffectSlot(ALuint effectslot);
        void alAuxiliaryEffectSloti(ALuint effectslot, ALenum param, ALint iValue);
        void alAuxiliaryEffectSlotiv(ALuint effectslot, ALenum param, const ALint* piValues);
        void alAuxiliaryEffectSlotf(ALuint effectslot, ALenum param, ALfloat flValue);
        void alAuxiliaryEffectSlotfv(ALuint effectslot, ALenum param, const ALfloat* pflValues);
        void alGetAuxiliaryEffectSloti(ALuint effectslot, ALenum param, ALint* piValue);
        void alGetAuxiliaryEffectSlotiv(ALuint effectslot, ALenum param, ALint* piValues);
        void alGetAuxiliaryEffectSlotf(ALuint effectslot, ALenum param, ALfloat* pflValue);
        void alGetAuxiliaryEffectSlotfv(ALuint effectslot, ALenum param, ALfloat* pflValues);
    }
}
