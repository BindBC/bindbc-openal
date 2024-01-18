/+
+            Copyright 2023 – 2024 Aya Partridge
+ Distributed under the Boost Software License, Version 1.0.
+     (See accompanying file LICENSE_1_0.txt or copy at
+           http://www.boost.org/LICENSE_1_0.txt)
+/
module al.efx;

import bindbc.openal.codegen;

import al: Boolean, SizeI, Enum;

enum: Enum{
	metersPerUnit  = 0x20004,
}

enum: Enum{
	directFilter                   = 0x20005,
	auxiliarySendFilter            = 0x20006,
	airAbsorptionFactor            = 0x20007,
	roomRolloffFactor              = 0x20008,
	coneOuterGainHF                = 0x20009,
	directFilterGainHFAuto         = 0x2000A,
	auxiliarySendFilterGainAuto    = 0x2000B,
	auxiliarySendFilterGainHFAuto  = 0x2000C,
}

enum: Enum{
	reverbDensity              = 0x0001,
	reverbDiffusion            = 0x0002,
	reverbGain                 = 0x0003,
	reverbGainHF               = 0x0004,
	reverbDecayTime            = 0x0005,
	reverbDecayHFRatio         = 0x0006,
	reverbReflectionsGain      = 0x0007,
	reverbReflectionsDelay     = 0x0008,
	reverbLateReverbGain       = 0x0009,
	reverbLateReverbDelay      = 0x000A,
	reverbAirAbsorptionGainHF  = 0x000B,
	reverbRoomRolloffFactor    = 0x000C,
	reverbDecayHFFLimit        = 0x000D,
}

enum: Enum{
	eaxReverbDensity              = 0x0001,
	eaxReverbDiffusion            = 0x0002,
	eaxReverbGain                 = 0x0003,
	eaxReverbGainHF               = 0x0004,
	eaxReverbGainLF               = 0x0005,
	eaxReverbDecayTime            = 0x0006,
	eaxReverbDecayHFratio         = 0x0007,
	eaxReverbDecayLFratio         = 0x0008,
	eaxReverbReflectionsGain      = 0x0009,
	eaxReverbReflectionsDelay     = 0x000A,
	eaxReverbReflectionsPan       = 0x000B,
	eaxReverbLateReverbGain       = 0x000C,
	eaxReverbLateReverbDelay      = 0x000D,
	eaxReverbLateReverbPan        = 0x000E,
	eaxReverbEchoTime             = 0x000F,
	eaxReverbEchoDepth            = 0x0010,
	eaxReverbModulationTime       = 0x0011,
	eaxReverbModulationDepth      = 0x0012,
	eaxReverbAirAbsorptionGainHF  = 0x0013,
	eaxReverbHFreference          = 0x0014,
	eaxReverbLFreference          = 0x0015,
	eaxReverbRoomRolloffFactor    = 0x0016,
	eaxReverbDecayHFLimit         = 0x0017,
}

enum: Enum{
	chorusWaveform  = 0x0001,
	chorusPhase     = 0x0002,
	chorusRate      = 0x0003,
	chorusDepth     = 0x0004,
	chorusFeedback  = 0x0005,
	chorusDelay     = 0x0006,
}

enum: Enum{
	distortionEdge                      = 0x0001,
	distortionGain                      = 0x0002,
	distortionLowPassCutoff             = 0x0003,
	distortionEQCenter                  = 0x0004,
	distortionEQCentre                  = distortionEQCenter,
	distortionEQBandwidth               = 0x0005,
}

enum: Enum{
	echoDelay     = 0x0001,
	echoLRDelay   = 0x0002,
	echoDamping   = 0x0003,
	echoFeedback  = 0x0004,
	echoSpread    = 0x0005,
}

enum: Enum{
	flangerWaveform  = 0x0001,
	flangerPhase     = 0x0002,
	flangerRate      = 0x0003,
	flangerDepth     = 0x0004,
	flangerFeedback  = 0x0005,
	flangerDelay     = 0x0006,
}

enum: Enum{
	frequencyShifterFrequency       = 0x0001,
	frequencyShifterLeftDirection   = 0x0002,
	frequencyShifterRightDirection  = 0x0003,
}

enum: Enum{
	vocalMorpherPhonemeA              =  0x0001,
	vocalMorpherPhonemeACoarseTuning  =  0x0002,
	vocalMorpherPhonemeB              =  0x0003,
	vocalMorpherPhonemeBCoarseTuning  =  0x0004,
	vocalMorpherWaveform              =  0x0005,
	vocalMorpherRate                  =  0x0006,
}

enum: Enum{
	pitchShifterCoarseTune  = 0x0001,
	pitchShifterFineTune    = 0x0002,
}

enum: Enum{
	ringModulatorFrequency       = 0x0001,
	ringModulatorHighPassCutoff  = 0x0002,
	ringModulatorWaveform        = 0x0003,
}

enum: Enum{
	autoWahAttackTime   = 0x0001,
	autoWahReleaseTime  = 0x0002,
	autoWahResonance    = 0x0003,
	autoWahPeakGain     = 0x0004,
}

enum: Enum{
	compressorOnOff  = 0x0001,
}

enum: Enum{
	equalizerLowGain     = 0x0001,
	equaliserLowGain     = equalizerLowGain,
	equalizerLowCutoff   = 0x0002,
	equaliserLowCutoff   = equalizerLowCutoff,
	equalizerMid1Gain    = 0x0003,
	equaliserMid1Gain    = equalizerMid1Gain,
	equalizerMid1Center  = 0x0004,
	equaliserMid1Centre  = equalizerMid1Center,
	equalizerMid1Width   = 0x0005,
	equaliserMid1Width   = equalizerMid1Width,
	equalizerMid2Gain    = 0x0006,
	equaliserMid2Gain    = equalizerMid2Gain,
	equalizerMid2Center  = 0x0007,
	equaliserMid2Centre  = equalizerMid2Center,
	equalizerMid2Width   = 0x0008,
	equaliserMid2Width   = equalizerMid2Width,
	equalizerHighGain    = 0x0009,
	equaliserHighGain    = equalizerHighGain,
	equalizerHighCutoff  = 0x000A,
	equaliserHighCutoff  = equalizerHighCutoff,
}

enum: Enum{
	effectFirstParameter  = 0x0000,
	effectLastParameter   = 0x8000,
	effectType            = 0x8001,
}

enum EffectType: Enum{
	null_             = 0x0000,
	reverb            = 0x0001,
	chorus            = 0x0002,
	distortion        = 0x0003,
	echo              = 0x0004,
	flanger           = 0x0005,
	frequencyShifter  = 0x0006,
	vocalMorpher      = 0x0007,
	pitchShifter      = 0x0008,
	ringModulator     = 0x0009,
	autoWah           = 0x000A,
	compressor        = 0x000B,
	equalizer         = 0x000C,
	equaliser         = equalizer,
	eAXReverb         = 0x8000,
	
	dedicatedDialogue            = 0x9001,
	dedicatedLowFrequencyEffect  = 0x9000,
}

enum EffectSlot: Enum{
	effect             = 0x0001,
	gain               = 0x0002,
	auxiliarySendAuto  = 0x0003,
	
	null_              = 0x0000,
}

enum LowPass: Enum{
	gain    = 0x0001,
	gainHF  = 0x0002,
}

enum HighPass: Enum{
	gain    = 0x0001,
	gainLF  = 0x0002,
}

enum BandPass: Enum{
	gain    = 0x0001,
	gainLF  = 0x0002,
	gainHF  = 0x0003,
}

enum: Enum{
	filterFirstParameter  = 0x0000,
	filterLastParameter   = 0x8000,
	filterType            = 0x8001,
}

enum: Enum{
	filterNull      = 0x0000,
	filterLowPass   = 0x0001,
	filterHighPass  = 0x0002,
	filterBandPass  = 0x0003,
}

enum{
	lowPassMinGain        = 0f,
	lowPassMaxGain        = 1f,
	lowPassDefaultGain    = 1f,
	
	lowPassMinGainHF      = 0f,
	lowPassMaxGainHF      = 1f,
	lowPassDefaultGainHF  = 1f,
}

enum{
	highPassMinGain        = 0f,
	highPassMaxGain        = 1f,
	highPassDefaultGain    = 1f,
	
	highPassMinGainLF      = 0f,
	highPassMaxGainLF      = 1f,
	highPassDefaultGainLF  = 1f,
}

enum{
	bandPassMinGain        = 0f,
	bandPassMaxGain        = 1f,
	bandPassDefaultGain    = 1f,
	
	bandPassMinGainHF      = 0f,
	bandPassMaxGainHF      = 1f,
	bandPassDefaultGainHF  = 1f,
	
	bandPassMinGainLF      = 0f,
	bandPassMaxGainLF      = 1f,
	bandPassDefaultGainLF  = 1f,
}

enum{
	reverbMinDensity                  = 0f,
	reverbMaxDensity                  = 1f,
	reverbDefaultDensity              = 1f,
	
	reverbMinDiffusion                = 0f,
	reverbMaxDiffusion                = 1f,
	reverbDefaultDiffusion            = 1f,
	
	reverbMinGain                     = 0f,
	reverbMaxGain                     = 1f,
	reverbDefaultGain                 = 0.32f,
	
	reverbMinGainHF                   = 0f,
	reverbMaxGainHF                   = 1f,
	reverbDefaultGainHF               = 0.89f,
	
	reverbMinDecayTime                = 0.1f,
	reverbMaxDecayTime                = 20f,
	reverbDefaultDecayTime            = 1.49f,
	
	reverbMinDecayHfratio             = 0.1f,
	reverbMaxDecayHfratio             = 2f,
	reverbDefaultDecayHFRatio         = 0.83f,
	
	reverbMinReflectionsGain          = 0f,
	reverbMaxReflectionsGain          = 3.16f,
	reverbDefaultReflectionsGain      = 0.05f,
	
	reverbMinReflectionsDelay         = 0f,
	reverbMaxReflectionsDelay         = 0.3f,
	reverbDefaultReflectionsDelay     = 0.007f,
	
	reverbMinLateReverbGain           = 0f,
	reverbMaxLateReverbGain           = 10f,
	reverbDefaultLateReverbGain       = 1.26f,
	
	reverbMinLateReverbDelay          = 0f,
	reverbMaxLateReverbDelay          = 0.1f,
	reverbDefaultLateReverbDelay      = 0.011f,
	
	reverbMinAirAbsorptionGainHF      = 0.892f,
	reverbMaxAirAbsorptionGainHF      = 1f,
	reverbDefaultAirAbsorptionGainHF  = 0.994f,
	
	reverbMinRoomRollOffFactor        = 0f,
	reverbMaxRoomRollOffFactor        = 10f,
	reverbDefaultRoomRollOffFactor    = 0f,
	
	reverbMinDecayHFLimit             = false,
	reverbMaxDecayHFLimit             = true,
	reverbDefaultDecayHFLimit         = true,
}

enum{
	eaxReverbMinDensity                  = 0f,
	eaxReverbMaxDensity                  = 1f,
	eaxReverbDefaultDensity              = 1f,
	
	eaxReverbMinDiffusion                = 0f,
	eaxReverbMaxDiffusion                = 1f,
	eaxReverbDefaultDiffusion            = 1f,
	
	eaxReverbMinGain                     = 0f,
	eaxReverbMaxGain                     = 1f,
	eaxReverbDefaultGain                 = 0.32f,
	
	eaxReverbMinGainHF                   = 0f,
	eaxReverbMaxGainHF                   = 1f,
	eaxReverbDefaultGainHF               = 0.89f,
	
	eaxReverbMinGainLF                   = 0f,
	eaxReverbMaxGainLF                   = 1f,
	eaxReverbDefaultGainLF               = 1f,
	
	eaxReverbMinDecayTime                = 0.1f,
	eaxReverbMaxDecayTime                = 20f,
	eaxReverbDefaultDecayTime            = 1.49f,
	
	eaxReverbMinDecayHFRatio             = 0.1f,
	eaxReverbMaxDecayHFRatio             = 2f,
	eaxReverbDefaultDecayHFRatio         = 0.83f,
	
	eaxReverbMinDecayLFRatio             = 0.1f,
	eaxReverbMaxDecayLFRatio             = 2f,
	eaxReverbDefaultDecayLFRatio         = 1f,
	
	eaxReverbMinReflectionsGain          = 0f,
	eaxReverbMaxReflectionsGain          = 3.16f,
	eaxReverbDefaultReflectionsGain      = 0.05f,
	
	eaxReverbMinReflectionsDelay         = 0f,
	eaxReverbMaxReflectionsDelay         = 0.3f,
	eaxReverbDefaultReflectionsDelay     = 0.007f,
	
	eaxReverbDefaultReflectionsPanXYZ    = 0f,
	
	eaxReverbMinLateReverbGain           = 0f,
	eaxReverbMaxLateReverbGain           = 10f,
	eaxReverbDefaultLateReverbGain       = 1.26f,
	
	eaxReverbMinLateReverbDelay          = 0f,
	eaxReverbMaxLateReverbDelay          = 0.1f,
	eaxReverbDefaultLateReverbDelay      = 0.011f,
	
	eaxReverbDefaultLateReverbPanXYZ     = 0f,
	
	eaxReverbMinEchoTime                 = 0.075f,
	eaxReverbMaxEchoTime                 = 0.25f,
	eaxReverbDefaultEchoTime             = 0.25f,
	
	eaxReverbMinEchoDepth                = 0f,
	eaxReverbMaxEchoDepth                = 1f,
	eaxReverbDefaultEchoDepth            = 0f,
	
	eaxReverbMinModulationTime           = 0.04f,
	eaxReverbMaxModulationTime           = 4f,
	eaxReverbDefaultModulationTime       = 0.25f,
	
	eaxReverbMinModulationDepth          = 0f,
	eaxReverbMaxModulationDepth          = 1f,
	eaxReverbDefaultModulationDepth      = 0f,
	
	eaxReverbMinAirAbsorptionGainHF      = 0.892f,
	eaxReverbMaxAirAbsorptionGainHF      = 1f,
	eaxReverbDefaultAirAbsorptionGainHF  = 0.994f,
	
	eaxReverbMinHFReference              = 1000f,
	eaxReverbMaxHFReference              = 20000f,
	eaxReverbDefaultHFReference          = 5000f,
	
	eaxReverbMinLFReference              = 20f,
	eaxReverbMaxLFReference              = 1000f,
	eaxReverbDefaultLFReference          = 250f,
	
	eaxReverbMinRoomRollOffFactor        = 0f,
	eaxReverbMaxRoomRollOffFactor        = 10f,
	eaxReverbDefaultRoomRollOffFactor    = 0f,
	
	eaxReverbMinDecayHFLimit             = false,
	eaxReverbMaxDecayHFLimit             = true,
	eaxReverbDefaultDecayHFLimit         = true,
}

enum{
	chorusWaveformSinusoid  = 0,
	chorusWaveformTriangle  = 1,
	
	chorusMinWaveform       = 0,
	chorusMaxWaveform       = 1,
	chorusDefaultWaveform   = 1,
	
	chorusMinPhase          = -180,
	chorusMaxPhase          = 180,
	chorusDefaultPhase      = 90,
	
	chorusMinRate           = 0f,
	chorusMaxRate           = 10f,
	chorusDefaultRate       = 1.1f,
	
	chorusMinDepth          = 0f,
	chorusMaxDepth          = 1f,
	chorusDefaultDepth      = 0.1f,
	
	chorusMinFeedback       = -1f,
	chorusMaxFeedback       = 1f,
	chorusDefaultFeedback   = 0.25f,
	
	chorusMinDelay          = 0f,
	chorusMaxDelay          = 0.016f,
	chorusDefaultDelay      = 0.016f,
}

enum{
	distortionMinEdge               = 0f,
	distortionMaxEdge               = 1f,
	distortionDefaultEdge           = 0.2f,
	
	distortionMinGain               = 0.01f,
	distortionMaxGain               = 1f,
	distortionDefaultGain           = 0.05f,
	
	distortionMinLowPassCutoff      = 80f,
	distortionMaxLowPassCutoff      = 24000f,
	distortionDefaultLowPassCutoff  = 8000f,
	
	distortionMinEQCenter           = 80f,
	distortionMinEQCentre           = distortionMinEQCenter,
	distortionMaxEQCenter           = 24000f,
	distortionMaxEQCentre           = distortionMaxEQCenter,
	distortionDefaultEQCenter       = 3600f,
	distortionDefaultEQCentre       = distortionDefaultEQCenter,
	
	distortionMinEQBandwidth        = 80f,
	distortionMaxEQBandwidth        = 24000f,
	distortionDefaultEQBandwidth    = 3600f,
}

enum{
	echoMinDelay         = 0f,
	echoMaxDelay         = 0.207f,
	echoDefaultDelay     = 0.1f,
	
	echoMinLRDelay       = 0f,
	echoMaxLRDelay       = 0.404f,
	echoDefaultLRDelay   = 0.1f,
	
	echoMinDamping       = 0f,
	echoMaxDamping       = 0.99f,
	echoDefaultDamping   = 0.5f,
	
	echoMinFeedback      = 0f,
	echoMaxFeedback      = 1f,
	echoDefaultFeedback  = 0.5f,
	
	echoMinSpread        = -1f,
	echoMaxSpread        = 1f,
	echoDefaultSpread    = -1f,
}

enum{
	flangerWaveformSinusoid  = 0,
	flangerWaveformTriangle  = 1,
	
	flangerMinWaveform       = 0,
	flangerMaxWaveform       = 1,
	flangerDefaultWaveform   = 1,
	
	flangerMinPhase          = -180,
	flangerMaxPhase          = 180,
	flangerDefaultPhase      = 0,
	
	flangerMinRate           = 0f,
	flangerMaxRate           = 10f,
	flangerDefaultRate       = 0.27f,
	
	flangerMinDepth          = 0f,
	flangerMaxDepth          = 1f,
	flangerDefaultDepth      = 1f,
	
	flangerMinFeedback       = -1f,
	flangerMaxFeedback       = 1f,
	flangerDefaultFeedback   = -0.5f,
	
	flangerMinDelay          = 0f,
	flangerMaxDelay          = 0.004f,
	flangerDefaultDelay      = 0.002f,
}

enum{
	frequencyShifterMinFrequency           = 0f,
	frequencyShifterMaxFrequency           = 24000f,
	frequencyShifterDefaultFrequency       = 0f,
	
	frequencyShifterMinLeftDirection       = 0,
	frequencyShifterMaxLeftDirection       = 2,
	frequencyShifterDefaultLeftDirection   = 0,
	
	frequencyShifterDirectionDown          = 0,
	frequencyShifterDirectionUp            = 1,
	frequencyShifterDirectionOff           = 2,
	
	frequencyShifterMinRightDirection      = 0,
	frequencyShifterMaxRightDirection      = 2,
	frequencyShifterDefaultRightDirection  = 0,
}

enum{
	vocalMorpherMinPhonemeA                  = 0,
	vocalMorpherMaxPhonemeA                  = 29,
	vocalMorpherDefaultPhonemeA              = 0,
	
	vocalMorpherMinPhonemeACoarseTuning      = -24,
	vocalMorpherMaxPhonemeACoarseTuning      = 24,
	vocalMorpherDefaultPhonemeACoarseTuning  = 0,
	
	vocalMorpherMinPhonemeB                  = 0,
	vocalMorpherMaxPhonemeB                  = 29,
	vocalMorpherDefaultPhonemeB              = 10,
	
	vocalMorpherMinPhonemeBCoarseTuning      = -24,
	vocalMorpherMaxPhonemeBCoarseTuning      = 24,
	vocalMorpherDefaultPhonemeBCoarseTuning  = 0,
	
	vocalMorpherPhonemeA                    = 0,
	vocalMorpherPhonemeE                    = 1,
	vocalMorpherPhonemeI                    = 2,
	vocalMorpherPhonemeO                    = 3,
	vocalMorpherPhonemeU                    = 4,
	vocalMorpherPhonemeAA                   = 5,
	vocalMorpherPhonemeAE                   = 6,
	vocalMorpherPhonemeAH                   = 7,
	vocalMorpherPhonemeAO                   = 8,
	vocalMorpherPhonemeEH                   = 9,
	vocalMorpherPhonemeER                   = 10,
	vocalMorpherPhonemeIH                   = 11,
	vocalMorpherPhonemeIY                   = 12,
	vocalMorpherPhonemeUH                   = 13,
	vocalMorpherPhonemeUW                   = 14,
	vocalMorpherPhonemeB                    = 15,
	vocalMorpherPhonemeD                    = 16,
	vocalMorpherPhonemeF                    = 17,
	vocalMorpherPhonemeG                    = 18,
	vocalMorpherPhonemeJ                    = 19,
	vocalMorpherPhonemeK                    = 20,
	vocalMorpherPhonemeL                    = 21,
	vocalMorpherPhonemeM                    = 22,
	vocalMorpherPhonemeN                    = 23,
	vocalMorpherPhonemeP                    = 24,
	vocalMorpherPhonemeR                    = 25,
	vocalMorpherPhonemeS                    = 26,
	vocalMorpherPhonemeT                    = 27,
	vocalMorpherPhonemeV                    = 28,
	vocalMorpherPhonemeZ                    = 29,
	
	vocalMorpherWaveformSinusoid             = 0,
	vocalMorpherWaveformTriangle             = 1,
	vocalMorpherWaveformSawtooth             = 2,
	
	vocalMorpherMinWaveform                  = 0,
	vocalMorpherMaxWaveform                  = 2,
	vocalMorpherDefaultWaveform              = 0,
	
	vocalMorpherMinRate                      = 0f,
	vocalMorpherMaxRate                      = 10f,
	vocalMorpherDefaultRate                  = 1.41f,
}

enum{
	pitchShifterMinCoarseTune      = -12,
	pitchShifterMaxCoarseTune      = 12,
	pitchShifterDefaultCoarseTune  = 12,
	
	pitchShifterMinFineTune        = -50,
	pitchShifterMaxFineTune        = 50,
	pitchShifterDefaultFineTune    = 0,
}

enum{
	ringModulatorMinFrequency           = 0f,
	ringModulatorMaxFrequency           = 8000f,
	ringModulatorDefaultFrequency       = 440f,
	
	ringModulatorMinHighPassCutoff      = 0f,
	ringModulatorMaxHighPassCutoff      = 24000f,
	ringModulatorDefaultHighPassCutoff  = 800f,
	
	ringModulatorSinusoid               = 0,
	ringModulatorSawtooth               = 1,
	ringModulatorSquare                 = 2,
	
	ringModulatorMinWaveform            = 0,
	ringModulatorMaxWaveform            = 2,
	ringModulatorDefaultWaveform        = 0,
}

enum{
	autoWahMinAttackTime       = 0.0001f,
	autoWahMaxAttackTime       = 1f,
	autoWahDefaultAttackTime   = 0.06f,
	
	autoWahMinReleaseTime      = 0.0001f,
	autoWahMaxReleaseTime      = 1f,
	autoWahDefaultReleaseTime  = 0.06f,
	
	autoWahMinResonance        = 2f,
	autoWahMaxResonance        = 1000f,
	autoWahDefaultResonance    = 1000f,
	
	autoWahMinPeakGain         = 0.00003f,
	autoWahMaxPeakGain         = 31621f,
	autoWahDefaultPeakGain     = 11.22f,
}

enum{
	compressorMinOnOff      = 0,
	compressorMaxOnOff      = 1,
	compressorDefaultOnOff  = 1,
}

enum{
	equalizerMinLowGain         = 0.126f,
	equaliserMinLowGain         = equalizerMinLowGain,
	equalizerMaxLowGain         = 7.943f,
	equaliserMaxLowGain         = equalizerMaxLowGain,
	equalizerDefaultLowGain     = 1f,
	equaliserDefaultLowGain     = equalizerDefaultLowGain,
	
	equalizerMinLowCutoff       = 50f,
	equaliserMinLowCutoff       = equalizerMinLowCutoff,
	equalizerMaxLowCutoff       = 800f,
	equaliserMaxLowCutoff       = equalizerMaxLowCutoff,
	equalizerDefaultLowCutoff   = 200f,
	equaliserDefaultLowCutoff   = equalizerDefaultLowCutoff,
	
	equalizerMinMid1Gain        = 0.126f,
	equaliserMinMid1Gain        = equalizerMinMid1Gain,
	equalizerMaxMid1Gain        = 7.943f,
	equaliserMaxMid1Gain        = equalizerMaxMid1Gain,
	equalizerDefaultMid1Gain    = 1f,
	equaliserDefaultMid1Gain    = equalizerDefaultMid1Gain,
	
	equalizerMinMid1Center      = 200f,
	equaliserMinMid1Centre      = equalizerMinMid1Center,
	equalizerMaxMid1Center      = 3000f,
	equaliserMaxMid1Centre      = equalizerMaxMid1Center,
	equalizerDefaultMid1Center  = 500f,
	equaliserDefaultMid1Centre  = equalizerDefaultMid1Center,
	
	equalizerMinMid1Width       = 0.01f,
	equaliserMinMid1Width       = equalizerMinMid1Width,
	equalizerMaxMid1Width       = 1f,
	equaliserMaxMid1Width       = equalizerMaxMid1Width,
	equalizerDefaultMid1Width   = 1f,
	equaliserDefaultMid1Width   = equalizerDefaultMid1Width,
	
	equalizerMinMid2Gain        = 0.126f,
	equaliserMinMid2Gain        = equalizerMinMid2Gain,
	equalizerMaxMid2Gain        = 7.943f,
	equaliserMaxMid2Gain        = equalizerMaxMid2Gain,
	equalizerDefaultMid2Gain    = 1f,
	equaliserDefaultMid2Gain    = equalizerDefaultMid2Gain,
	
	equalizerMinMid2Center      = 1000f,
	equaliserMinMid2Centre      = equalizerMinMid2Center,
	equalizerMaxMid2Center      = 8000f,
	equaliserMaxMid2Centre      = equalizerMaxMid2Center,
	equalizerDefaultMid2Center  = 3000f,
	equaliserDefaultMid2Centre  = equalizerDefaultMid2Center,
	
	equalizerMinMid2Width       = 0.01f,
	equaliserMinMid2Width       = equalizerMinMid2Width,
	equalizerMaxMid2Width       = 1f,
	equaliserMaxMid2Width       = equalizerMaxMid2Width,
	equalizerDefaultMid2Width   = 1f,
	equaliserDefaultMid2Width   = equalizerDefaultMid2Width,
	
	equalizerMinHighGain        = 0.126f,
	equaliserMinHighGain        = equalizerMinHighGain,
	equalizerMaxHighGain        = 7.943f,
	equaliserMaxHighGain        = equalizerMaxHighGain,
	equalizerDefaultHighGain    = 1f,
	equaliserDefaultHighGain    = equalizerDefaultHighGain,
	
	equalizerMinHighCutoff      = 4000f,
	equaliserMinHighCutoff      = equalizerMinHighCutoff,
	equalizerMaxHighCutoff      = 16000f,
	equaliserMaxHighCutoff      = equalizerMaxHighCutoff,
	equalizerDefaultHighCutoff  = 6000f,
	equaliserDefaultHighCutoff  = equalizerDefaultHighCutoff,
}

struct EAXReverbProperties{
    float density;
    float diffusion;
    float gain;
    float gainHF;
    float gainLF;
    float decayTime;
    float decayHFRatio;
    float decayLFRatio;
    float reflectionsGain;
    float reflectionsDelay;
    float[3] reflectionsPan;
    float lateReverbGain;
    float lateReverbDelay;
    float[3] lateReverbPan;
    float echoTime;
    float echoDepth;
    float modulationTime;
    float modulationDepth;
    float airAbsorptionGainHF;
    float hfReference;
    float lfReference;
    float roomRolloffFactor;
    int decayHFLimit;
}

enum ReverbPreset: EAXReverbProperties{
	generic          = EAXReverbProperties(1f, 1f, 0.3162f, 0.8913f, 1f, 1.49f, 0.83f, 1f, 0.05f, 0.007f, [0f, 0f, 0f], 1.2589f, 0.011f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	paddedCell       = EAXReverbProperties(0.1715f, 1f, 0.3162f, 0.001f, 1f, 0.17f, 0.1f, 1f, 0.25f, 0.001f, [0f, 0f, 0f], 1.2691f, 0.002f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	room             = EAXReverbProperties(0.4287f, 1f, 0.3162f, 0.5929f, 1f, 0.4f, 0.83f, 1f, 0.1503f, 0.002f, [0f, 0f, 0f], 1.0629f, 0.003f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	bathroom         = EAXReverbProperties(0.1715f, 1f, 0.3162f, 0.2512f, 1f, 1.49f, 0.54f, 1f, 0.6531f, 0.007f, [0f, 0f, 0f], 3.2734f, 0.011f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	livingRoom       = EAXReverbProperties(0.9766f, 1f, 0.3162f, 0.001f, 1f, 0.5f, 0.1f, 1f, 0.2051f, 0.003f, [0f, 0f, 0f], 0.2805f, 0.004f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	loungeRoom       = reverbPresetLivingRoom,
	stoneRoom        = EAXReverbProperties(1f, 1f, 0.3162f, 0.7079f, 1f, 2.31f, 0.64f, 1f, 0.4411f, 0.012f, [0f, 0f, 0f], 1.1003f, 0.017f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	auditorium       = EAXReverbProperties(1f, 1f, 0.3162f, 0.5781f, 1f, 4.32f, 0.59f, 1f, 0.4032f, 0.02f, [0f, 0f, 0f], 0.717f, 0.03f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	concertHall      = EAXReverbProperties(1f, 1f, 0.3162f, 0.5623f, 1f, 3.92f, 0.7f, 1f, 0.2427f, 0.02f, [0f, 0f, 0f], 0.9977f, 0.029f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	cave             = EAXReverbProperties(1f, 1f, 0.3162f, 1f, 1f, 2.91f, 1.3f, 1f, 0.5f, 0.015f, [0f, 0f, 0f], 0.7063f, 0.022f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x0),
	arena            = EAXReverbProperties(1f, 1f, 0.3162f, 0.4477f, 1f, 7.24f, 0.33f, 1f, 0.2612f, 0.02f, [0f, 0f, 0f], 1.0186f, 0.03f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	hangar           = EAXReverbProperties(1f, 1f, 0.3162f, 0.3162f, 1f, 10.05f, 0.23f, 1f, 0.5f, 0.02f, [0f, 0f, 0f], 1.256f, 0.03f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	carpetedHallway  = EAXReverbProperties(0.4287f, 1f, 0.3162f, 0.01f, 1f, 0.3f, 0.1f, 1f, 0.1215f, 0.002f, [0f, 0f, 0f], 0.1531f, 0.03f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	hallway          = EAXReverbProperties(0.3645f, 1f, 0.3162f, 0.7079f, 1f, 1.49f, 0.59f, 1f, 0.2458f, 0.007f, [0f, 0f, 0f], 1.6615f, 0.011f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	stoneCorridor    = EAXReverbProperties(1f, 1f, 0.3162f, 0.7612f, 1f, 2.7f, 0.79f, 1f, 0.2472f, 0.013f, [0f, 0f, 0f], 1.5758f, 0.02f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	alley            = EAXReverbProperties(1f, 0.3f, 0.3162f, 0.7328f, 1f, 1.49f, 0.86f, 1f, 0.25f, 0.007f, [0f, 0f, 0f], 0.9954f, 0.011f, [0f, 0f, 0f], 0.125f, 0.95f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	forest           = EAXReverbProperties(1f, 0.3f, 0.3162f, 0.0224f, 1f, 1.49f, 0.54f, 1f, 0.0525f, 0.162f, [0f, 0f, 0f], 0.7682f, 0.088f, [0f, 0f, 0f], 0.125f, 1f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	city             = EAXReverbProperties(1f, 0.5f, 0.3162f, 0.3981f, 1f, 1.49f, 0.67f, 1f, 0.073f, 0.007f, [0f, 0f, 0f], 0.1427f, 0.011f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	mountains        = EAXReverbProperties(1f, 0.27f, 0.3162f, 0.0562f, 1f, 1.49f, 0.21f, 1f, 0.0407f, 0.3f, [0f, 0f, 0f], 0.1919f, 0.1f, [0f, 0f, 0f], 0.25f, 1f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x0),
	quarry           = EAXReverbProperties(1f, 1f, 0.3162f, 0.3162f, 1f, 1.49f, 0.83f, 1f, 0f, 0.061f, [0f, 0f, 0f], 1.7783f, 0.025f, [0f, 0f, 0f], 0.125f, 0.7f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	plain            = EAXReverbProperties(1f, 0.21f, 0.3162f, 0.1f, 1f, 1.49f, 0.5f, 1f, 0.0585f, 0.179f, [0f, 0f, 0f], 0.1089f, 0.1f, [0f, 0f, 0f], 0.25f, 1f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	parkingLot       = EAXReverbProperties(1f, 1f, 0.3162f, 1f, 1f, 1.65f, 1.5f, 1f, 0.2082f, 0.008f, [0f, 0f, 0f], 0.2652f, 0.012f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x0),
	carPark          = reverbPresetParkingLot,
	sewerPipe        = EAXReverbProperties(0.3071f, 0.8f, 0.3162f, 0.3162f, 1f, 2.81f, 0.14f, 1f, 1.6387f, 0.014f, [0f, 0f, 0f], 3.2471f, 0.021f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	underwater       = EAXReverbProperties(0.3645f, 1f, 0.3162f, 0.01f, 1f, 1.49f, 0.1f, 1f, 0.5963f, 0.007f, [0f, 0f, 0f], 7.0795f, 0.011f, [0f, 0f, 0f], 0.25f, 0f, 1.18f, 0.348f, 0.9943f, 5000f, 250f, 0f, 0x1),
	drugged          = EAXReverbProperties(0.4287f, 0.5f, 0.3162f, 1f, 1f, 8.39f, 1.39f, 1f, 0.876f, 0.002f, [0f, 0f, 0f], 3.1081f, 0.03f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 1f, 0.9943f, 5000f, 250f, 0f, 0x0),
	dizzy            = EAXReverbProperties(0.3645f, 0.6f, 0.3162f, 0.631f, 1f, 17.23f, 0.56f, 1f, 0.1392f, 0.02f, [0f, 0f, 0f], 0.4937f, 0.03f, [0f, 0f, 0f], 0.25f, 1f, 0.81f, 0.31f, 0.9943f, 5000f, 250f, 0f, 0x0),
	psychotic        = EAXReverbProperties(0.0625f, 0.5f, 0.3162f, 0.8404f, 1f, 7.56f, 0.91f, 1f, 0.4864f, 0.02f, [0f, 0f, 0f], 2.4378f, 0.03f, [0f, 0f, 0f], 0.25f, 0f, 4f, 1f, 0.9943f, 5000f, 250f, 0f, 0x0),
	
	castleSmallRoom     = EAXReverbProperties(1f, 0.89f, 0.3162f, 0.3981f, 0.1f, 1.22f, 0.83f, 0.31f, 0.8913f, 0.022f, [0f, 0f, 0f], 1.9953f, 0.011f, [0f, 0f, 0f], 0.138f, 0.08f, 0.25f, 0f, 0.9943f, 5168.6001f, 139.5f, 0f, 0x1),
	castleShortPassage  = EAXReverbProperties(1f, 0.89f, 0.3162f, 0.3162f, 0.1f, 2.32f, 0.83f, 0.31f, 0.8913f, 0.007f, [0f, 0f, 0f], 1.2589f, 0.023f, [0f, 0f, 0f], 0.138f, 0.08f, 0.25f, 0f, 0.9943f, 5168.6001f, 139.5f, 0f, 0x1),
	castleMediumRoom    = EAXReverbProperties(1f, 0.93f, 0.3162f, 0.2818f, 0.1f, 2.04f, 0.83f, 0.46f, 0.631f, 0.022f, [0f, 0f, 0f], 1.5849f, 0.011f, [0f, 0f, 0f], 0.155f, 0.03f, 0.25f, 0f, 0.9943f, 5168.6001f, 139.5f, 0f, 0x1),
	castleLargeRoom     = EAXReverbProperties(1f, 0.82f, 0.3162f, 0.2818f, 0.1259f, 2.53f, 0.83f, 0.5f, 0.4467f, 0.034f, [0f, 0f, 0f], 1.2589f, 0.016f, [0f, 0f, 0f], 0.185f, 0.07f, 0.25f, 0f, 0.9943f, 5168.6001f, 139.5f, 0f, 0x1),
	castleLongPassage   = EAXReverbProperties(1f, 0.89f, 0.3162f, 0.3981f, 0.1f, 3.42f, 0.83f, 0.31f, 0.8913f, 0.007f, [0f, 0f, 0f], 1.4125f, 0.023f, [0f, 0f, 0f], 0.138f, 0.08f, 0.25f, 0f, 0.9943f, 5168.6001f, 139.5f, 0f, 0x1),
	castleHall          = EAXReverbProperties(1f, 0.81f, 0.3162f, 0.2818f, 0.1778f, 3.14f, 0.79f, 0.62f, 0.1778f, 0.056f, [0f, 0f, 0f], 1.122f, 0.024f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5168.6001f, 139.5f, 0f, 0x1),
	castleCupboard      = EAXReverbProperties(1f, 0.89f, 0.3162f, 0.2818f, 0.1f, 0.67f, 0.87f, 0.31f, 1.4125f, 0.01f, [0f, 0f, 0f], 3.5481f, 0.007f, [0f, 0f, 0f], 0.138f, 0.08f, 0.25f, 0f, 0.9943f, 5168.6001f, 139.5f, 0f, 0x1),
	castleCourtyard     = EAXReverbProperties(1f, 0.42f, 0.3162f, 0.4467f, 0.1995f, 2.13f, 0.61f, 0.23f, 0.2239f, 0.16f, [0f, 0f, 0f], 0.7079f, 0.036f, [0f, 0f, 0f], 0.25f, 0.37f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x0),
	castleAlcove        = EAXReverbProperties(1f, 0.89f, 0.3162f, 0.5012f, 0.1f, 1.64f, 0.87f, 0.31f, 1f, 0.007f, [0f, 0f, 0f], 1.4125f, 0.034f, [0f, 0f, 0f], 0.138f, 0.08f, 0.25f, 0f, 0.9943f, 5168.6001f, 139.5f, 0f, 0x1),
	
	factorySmallRoom     = EAXReverbProperties(0.3645f, 0.82f, 0.3162f, 0.7943f, 0.5012f, 1.72f, 0.65f, 1.31f, 0.7079f, 0.01f, [0f, 0f, 0f], 1.7783f, 0.024f, [0f, 0f, 0f], 0.119f, 0.07f, 0.25f, 0f, 0.9943f, 3762.6001f, 362.5f, 0f, 0x1),
	factoryShortPassage  = EAXReverbProperties(0.3645f, 0.64f, 0.2512f, 0.7943f, 0.5012f, 2.53f, 0.65f, 1.31f, 1f, 0.01f, [0f, 0f, 0f], 1.2589f, 0.038f, [0f, 0f, 0f], 0.135f, 0.23f, 0.25f, 0f, 0.9943f, 3762.6001f, 362.5f, 0f, 0x1),
	factoryMediumRoom    = EAXReverbProperties(0.4287f, 0.82f, 0.2512f, 0.7943f, 0.5012f, 2.76f, 0.65f, 1.31f, 0.2818f, 0.022f, [0f, 0f, 0f], 1.4125f, 0.023f, [0f, 0f, 0f], 0.174f, 0.07f, 0.25f, 0f, 0.9943f, 3762.6001f, 362.5f, 0f, 0x1),
	factoryLargeRoom     = EAXReverbProperties(0.4287f, 0.75f, 0.2512f, 0.7079f, 0.631f, 4.24f, 0.51f, 1.31f, 0.1778f, 0.039f, [0f, 0f, 0f], 1.122f, 0.023f, [0f, 0f, 0f], 0.231f, 0.07f, 0.25f, 0f, 0.9943f, 3762.6001f, 362.5f, 0f, 0x1),
	factoryLongPassage   = EAXReverbProperties(0.3645f, 0.64f, 0.2512f, 0.7943f, 0.5012f, 4.06f, 0.65f, 1.31f, 1f, 0.02f, [0f, 0f, 0f], 1.2589f, 0.037f, [0f, 0f, 0f], 0.135f, 0.23f, 0.25f, 0f, 0.9943f, 3762.6001f, 362.5f, 0f, 0x1),
	factoryHall          = EAXReverbProperties(0.4287f, 0.75f, 0.3162f, 0.7079f, 0.631f, 7.43f, 0.51f, 1.31f, 0.0631f, 0.073f, [0f, 0f, 0f], 0.8913f, 0.027f, [0f, 0f, 0f], 0.25f, 0.07f, 0.25f, 0f, 0.9943f, 3762.6001f, 362.5f, 0f, 0x1),
	factoryCupboard      = EAXReverbProperties(0.3071f, 0.63f, 0.2512f, 0.7943f, 0.5012f, 0.49f, 0.65f, 1.31f, 1.2589f, 0.01f, [0f, 0f, 0f], 1.9953f, 0.032f, [0f, 0f, 0f], 0.107f, 0.07f, 0.25f, 0f, 0.9943f, 3762.6001f, 362.5f, 0f, 0x1),
	factoryCourtyard     = EAXReverbProperties(0.3071f, 0.57f, 0.3162f, 0.3162f, 0.631f, 2.32f, 0.29f, 0.56f, 0.2239f, 0.14f, [0f, 0f, 0f], 0.3981f, 0.039f, [0f, 0f, 0f], 0.25f, 0.29f, 0.25f, 0f, 0.9943f, 3762.6001f, 362.5f, 0f, 0x1),
	factoryAlcove        = EAXReverbProperties(0.3645f, 0.59f, 0.2512f, 0.7943f, 0.5012f, 3.14f, 0.65f, 1.31f, 1.4125f, 0.01f, [0f, 0f, 0f], 1f, 0.038f, [0f, 0f, 0f], 0.114f, 0.1f, 0.25f, 0f, 0.9943f, 3762.6001f, 362.5f, 0f, 0x1),
	
	IcePalaceSmallRoom     = EAXReverbProperties(1f, 0.84f, 0.3162f, 0.5623f, 0.2818f, 1.51f, 1.53f, 0.27f, 0.8913f, 0.01f, [0f, 0f, 0f], 1.4125f, 0.011f, [0f, 0f, 0f], 0.164f, 0.14f, 0.25f, 0f, 0.9943f, 12428.5f, 99.6f, 0f, 0x1),
	IcePalaceShortPassage  = EAXReverbProperties(1f, 0.75f, 0.3162f, 0.5623f, 0.2818f, 1.79f, 1.46f, 0.28f, 0.5012f, 0.01f, [0f, 0f, 0f], 1.122f, 0.019f, [0f, 0f, 0f], 0.177f, 0.09f, 0.25f, 0f, 0.9943f, 12428.5f, 99.6f, 0f, 0x1),
	IcePalaceMediumRoom    = EAXReverbProperties(1f, 0.87f, 0.3162f, 0.5623f, 0.4467f, 2.22f, 1.53f, 0.32f, 0.3981f, 0.039f, [0f, 0f, 0f], 1.122f, 0.027f, [0f, 0f, 0f], 0.186f, 0.12f, 0.25f, 0f, 0.9943f, 12428.5f, 99.6f, 0f, 0x1),
	IcePalaceLargeRoom     = EAXReverbProperties(1f, 0.81f, 0.3162f, 0.5623f, 0.4467f, 3.14f, 1.53f, 0.32f, 0.2512f, 0.039f, [0f, 0f, 0f], 1f, 0.027f, [0f, 0f, 0f], 0.214f, 0.11f, 0.25f, 0f, 0.9943f, 12428.5f, 99.6f, 0f, 0x1),
	IcePalaceLongPassage   = EAXReverbProperties(1f, 0.77f, 0.3162f, 0.5623f, 0.3981f, 3.01f, 1.46f, 0.28f, 0.7943f, 0.012f, [0f, 0f, 0f], 1.2589f, 0.025f, [0f, 0f, 0f], 0.186f, 0.04f, 0.25f, 0f, 0.9943f, 12428.5f, 99.6f, 0f, 0x1),
	IcePalaceHall          = EAXReverbProperties(1f, 0.76f, 0.3162f, 0.4467f, 0.5623f, 5.49f, 1.53f, 0.38f, 0.1122f, 0.054f, [0f, 0f, 0f], 0.631f, 0.052f, [0f, 0f, 0f], 0.226f, 0.11f, 0.25f, 0f, 0.9943f, 12428.5f, 99.6f, 0f, 0x1),
	IcePalaceCupboard      = EAXReverbProperties(1f, 0.83f, 0.3162f, 0.5012f, 0.2239f, 0.76f, 1.53f, 0.26f, 1.122f, 0.012f, [0f, 0f, 0f], 1.9953f, 0.016f, [0f, 0f, 0f], 0.143f, 0.08f, 0.25f, 0f, 0.9943f, 12428.5f, 99.6f, 0f, 0x1),
	IcePalaceCourtyard     = EAXReverbProperties(1f, 0.59f, 0.3162f, 0.2818f, 0.3162f, 2.04f, 1.2f, 0.38f, 0.3162f, 0.173f, [0f, 0f, 0f], 0.3162f, 0.043f, [0f, 0f, 0f], 0.235f, 0.48f, 0.25f, 0f, 0.9943f, 12428.5f, 99.6f, 0f, 0x1),
	IcePalaceAlcove        = EAXReverbProperties(1f, 0.84f, 0.3162f, 0.5623f, 0.2818f, 2.76f, 1.46f, 0.28f, 1.122f, 0.01f, [0f, 0f, 0f], 0.8913f, 0.03f, [0f, 0f, 0f], 0.161f, 0.09f, 0.25f, 0f, 0.9943f, 12428.5f, 99.6f, 0f, 0x1),
	
	spaceStationSmallRoom     = EAXReverbProperties(0.2109f, 0.7f, 0.3162f, 0.7079f, 0.8913f, 1.72f, 0.82f, 0.55f, 0.7943f, 0.007f, [0f, 0f, 0f], 1.4125f, 0.013f, [0f, 0f, 0f], 0.188f, 0.26f, 0.25f, 0f, 0.9943f, 3316.1001f, 458.2f, 0f, 0x1),
	spaceStationShortPassage  = EAXReverbProperties(0.2109f, 0.87f, 0.3162f, 0.631f, 0.8913f, 3.57f, 0.5f, 0.55f, 1f, 0.012f, [0f, 0f, 0f], 1.122f, 0.016f, [0f, 0f, 0f], 0.172f, 0.2f, 0.25f, 0f, 0.9943f, 3316.1001f, 458.2f, 0f, 0x1),
	spaceStationMediumRoom    = EAXReverbProperties(0.2109f, 0.75f, 0.3162f, 0.631f, 0.8913f, 3.01f, 0.5f, 0.55f, 0.3981f, 0.034f, [0f, 0f, 0f], 1.122f, 0.035f, [0f, 0f, 0f], 0.209f, 0.31f, 0.25f, 0f, 0.9943f, 3316.1001f, 458.2f, 0f, 0x1),
	spaceStationLargeRoom     = EAXReverbProperties(0.3645f, 0.81f, 0.3162f, 0.631f, 0.8913f, 3.89f, 0.38f, 0.61f, 0.3162f, 0.056f, [0f, 0f, 0f], 0.8913f, 0.035f, [0f, 0f, 0f], 0.233f, 0.28f, 0.25f, 0f, 0.9943f, 3316.1001f, 458.2f, 0f, 0x1),
	spaceStationLongPassage   = EAXReverbProperties(0.4287f, 0.82f, 0.3162f, 0.631f, 0.8913f, 4.62f, 0.62f, 0.55f, 1f, 0.012f, [0f, 0f, 0f], 1.2589f, 0.031f, [0f, 0f, 0f], 0.25f, 0.23f, 0.25f, 0f, 0.9943f, 3316.1001f, 458.2f, 0f, 0x1),
	spaceStationHall          = EAXReverbProperties(0.4287f, 0.87f, 0.3162f, 0.631f, 0.8913f, 7.11f, 0.38f, 0.61f, 0.1778f, 0.1f, [0f, 0f, 0f], 0.631f, 0.047f, [0f, 0f, 0f], 0.25f, 0.25f, 0.25f, 0f, 0.9943f, 3316.1001f, 458.2f, 0f, 0x1),
	spaceStationCupboard      = EAXReverbProperties(0.1715f, 0.56f, 0.3162f, 0.7079f, 0.8913f, 0.79f, 0.81f, 0.55f, 1.4125f, 0.007f, [0f, 0f, 0f], 1.7783f, 0.018f, [0f, 0f, 0f], 0.181f, 0.31f, 0.25f, 0f, 0.9943f, 3316.1001f, 458.2f, 0f, 0x1),
	spaceStationAlcove        = EAXReverbProperties(0.2109f, 0.78f, 0.3162f, 0.7079f, 0.8913f, 1.16f, 0.81f, 0.55f, 1.4125f, 0.007f, [0f, 0f, 0f], 1f, 0.018f, [0f, 0f, 0f], 0.192f, 0.21f, 0.25f, 0f, 0.9943f, 3316.1001f, 458.2f, 0f, 0x1),
	
	woodenSmallRoom     = EAXReverbProperties(1f, 1f, 0.3162f, 0.1122f, 0.3162f, 0.79f, 0.32f, 0.87f, 1f, 0.032f, [0f, 0f, 0f], 0.8913f, 0.029f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 4705f, 99.6f, 0f, 0x1),
	woodenShortPassage  = EAXReverbProperties(1f, 1f, 0.3162f, 0.1259f, 0.3162f, 1.75f, 0.5f, 0.87f, 0.8913f, 0.012f, [0f, 0f, 0f], 0.631f, 0.024f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 4705f, 99.6f, 0f, 0x1),
	woodenMediumRoom    = EAXReverbProperties(1f, 1f, 0.3162f, 0.1f, 0.2818f, 1.47f, 0.42f, 0.82f, 0.8913f, 0.049f, [0f, 0f, 0f], 0.8913f, 0.029f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 4705f, 99.6f, 0f, 0x1),
	woodenLargeRoom     = EAXReverbProperties(1f, 1f, 0.3162f, 0.0891f, 0.2818f, 2.65f, 0.33f, 0.82f, 0.8913f, 0.066f, [0f, 0f, 0f], 0.7943f, 0.049f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 4705f, 99.6f, 0f, 0x1),
	woodenLongPassage   = EAXReverbProperties(1f, 1f, 0.3162f, 0.1f, 0.3162f, 1.99f, 0.4f, 0.79f, 1f, 0.02f, [0f, 0f, 0f], 0.4467f, 0.036f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 4705f, 99.6f, 0f, 0x1),
	woodenHall          = EAXReverbProperties(1f, 1f, 0.3162f, 0.0794f, 0.2818f, 3.45f, 0.3f, 0.82f, 0.8913f, 0.088f, [0f, 0f, 0f], 0.7943f, 0.063f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 4705f, 99.6f, 0f, 0x1),
	woodenCupboard      = EAXReverbProperties(1f, 1f, 0.3162f, 0.1413f, 0.3162f, 0.56f, 0.46f, 0.91f, 1.122f, 0.012f, [0f, 0f, 0f], 1.122f, 0.028f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 4705f, 99.6f, 0f, 0x1),
	woodenCourtyard     = EAXReverbProperties(1f, 0.65f, 0.3162f, 0.0794f, 0.3162f, 1.79f, 0.35f, 0.79f, 0.5623f, 0.123f, [0f, 0f, 0f], 0.1f, 0.032f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 4705f, 99.6f, 0f, 0x1),
	woodenAlcove        = EAXReverbProperties(1f, 1f, 0.3162f, 0.1259f, 0.3162f, 1.22f, 0.62f, 0.91f, 1.122f, 0.012f, [0f, 0f, 0f], 0.7079f, 0.024f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 4705f, 99.6f, 0f, 0x1),
	
	sportEmptyStadium       = EAXReverbProperties(1f, 1f, 0.3162f, 0.4467f, 0.7943f, 6.26f, 0.51f, 1.1f, 0.0631f, 0.183f, [0f, 0f, 0f], 0.3981f, 0.038f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	sportSquashCourt        = EAXReverbProperties(1f, 0.75f, 0.3162f, 0.3162f, 0.7943f, 2.22f, 0.91f, 1.16f, 0.4467f, 0.007f, [0f, 0f, 0f], 0.7943f, 0.011f, [0f, 0f, 0f], 0.126f, 0.19f, 0.25f, 0f, 0.9943f, 7176.8999f, 211.2f, 0f, 0x1),
	sportSmallSwimmingpool  = EAXReverbProperties(1f, 0.7f, 0.3162f, 0.7943f, 0.8913f, 2.76f, 1.25f, 1.14f, 0.631f, 0.02f, [0f, 0f, 0f], 0.7943f, 0.03f, [0f, 0f, 0f], 0.179f, 0.15f, 0.895f, 0.19f, 0.9943f, 5000f, 250f, 0f, 0x0),
	sportLargeSwimmingpool  = EAXReverbProperties(1f, 0.82f, 0.3162f, 0.7943f, 1f, 5.49f, 1.31f, 1.14f, 0.4467f, 0.039f, [0f, 0f, 0f], 0.5012f, 0.049f, [0f, 0f, 0f], 0.222f, 0.55f, 1.159f, 0.21f, 0.9943f, 5000f, 250f, 0f, 0x0),
	sportGymnasium          = EAXReverbProperties(1f, 0.81f, 0.3162f, 0.4467f, 0.8913f, 3.14f, 1.06f, 1.35f, 0.3981f, 0.029f, [0f, 0f, 0f], 0.5623f, 0.045f, [0f, 0f, 0f], 0.146f, 0.14f, 0.25f, 0f, 0.9943f, 7176.8999f, 211.2f, 0f, 0x1),
	sportFullStadium        = EAXReverbProperties(1f, 1f, 0.3162f, 0.0708f, 0.7943f, 5.25f, 0.17f, 0.8f, 0.1f, 0.188f, [0f, 0f, 0f], 0.2818f, 0.038f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	sportStadiumTannoy      = EAXReverbProperties(1f, 0.78f, 0.3162f, 0.5623f, 0.5012f, 2.53f, 0.88f, 0.68f, 0.2818f, 0.23f, [0f, 0f, 0f], 0.5012f, 0.063f, [0f, 0f, 0f], 0.25f, 0.2f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	sportStadiumPASystem    = sportStadiumTannoy,
	
	prefabWorkshop      = EAXReverbProperties(0.4287f, 1f, 0.3162f, 0.1413f, 0.3981f, 0.76f, 1f, 1f, 1f, 0.012f, [0f, 0f, 0f], 1.122f, 0.012f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x0),
	prefabSchoolRoom    = EAXReverbProperties(0.4022f, 0.69f, 0.3162f, 0.631f, 0.5012f, 0.98f, 0.45f, 0.18f, 1.4125f, 0.017f, [0f, 0f, 0f], 1.4125f, 0.015f, [0f, 0f, 0f], 0.095f, 0.14f, 0.25f, 0f, 0.9943f, 7176.8999f, 211.2f, 0f, 0x1),
	prefabPractiseRoom  = EAXReverbProperties(0.4022f, 0.87f, 0.3162f, 0.3981f, 0.5012f, 1.12f, 0.56f, 0.18f, 1.2589f, 0.01f, [0f, 0f, 0f], 1.4125f, 0.011f, [0f, 0f, 0f], 0.095f, 0.14f, 0.25f, 0f, 0.9943f, 7176.8999f, 211.2f, 0f, 0x1),
	prefabOuthouse      = EAXReverbProperties(1f, 0.82f, 0.3162f, 0.1122f, 0.1585f, 1.38f, 0.38f, 0.35f, 0.8913f, 0.024f, [0f, 0f, -0f], 0.631f, 0.044f, [0f, 0f, 0f], 0.121f, 0.17f, 0.25f, 0f, 0.9943f, 2854.3999f, 107.5f, 0f, 0x0),
	prefabCaravan       = EAXReverbProperties(1f, 1f, 0.3162f, 0.0891f, 0.1259f, 0.43f, 1.5f, 1f, 1f, 0.012f, [0f, 0f, 0f], 1.9953f, 0.012f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x0),
	
	domeTomb        = EAXReverbProperties(1f, 0.79f, 0.3162f, 0.3548f, 0.2239f, 4.18f, 0.21f, 0.1f, 0.3868f, 0.03f, [0f, 0f, 0f], 1.6788f, 0.022f, [0f, 0f, 0f], 0.177f, 0.19f, 0.25f, 0f, 0.9943f, 2854.3999f, 20f, 0f, 0x0),
	pipeSmall       = EAXReverbProperties(1f, 1f, 0.3162f, 0.3548f, 0.2239f, 5.04f, 0.1f, 0.1f, 0.5012f, 0.032f, [0f, 0f, 0f], 2.5119f, 0.015f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 2854.3999f, 20f, 0f, 0x1),
	domeSaintPauls  = EAXReverbProperties(1f, 0.87f, 0.3162f, 0.3548f, 0.2239f, 10.48f, 0.19f, 0.1f, 0.1778f, 0.09f, [0f, 0f, 0f], 1.2589f, 0.042f, [0f, 0f, 0f], 0.25f, 0.12f, 0.25f, 0f, 0.9943f, 2854.3999f, 20f, 0f, 0x1),
	pipeLongThin    = EAXReverbProperties(0.256f, 0.91f, 0.3162f, 0.4467f, 0.2818f, 9.21f, 0.18f, 0.1f, 0.7079f, 0.01f, [0f, 0f, 0f], 0.7079f, 0.022f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 2854.3999f, 20f, 0f, 0x0),
	pipeLarge       = EAXReverbProperties(1f, 1f, 0.3162f, 0.3548f, 0.2239f, 8.45f, 0.1f, 0.1f, 0.3981f, 0.046f, [0f, 0f, 0f], 1.5849f, 0.032f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 2854.3999f, 20f, 0f, 0x1),
	pipeResonant    = EAXReverbProperties(0.1373f, 0.91f, 0.3162f, 0.4467f, 0.2818f, 6.81f, 0.18f, 0.1f, 0.7079f, 0.01f, [0f, 0f, 0f], 1f, 0.022f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 2854.3999f, 20f, 0f, 0x0),
	
	outdoorsBackyard       = EAXReverbProperties(1f, 0.45f, 0.3162f, 0.2512f, 0.5012f, 1.12f, 0.34f, 0.46f, 0.4467f, 0.069f, [0f, 0f, -0f], 0.7079f, 0.023f, [0f, 0f, 0f], 0.218f, 0.34f, 0.25f, 0f, 0.9943f, 4399.1001f, 242.9f, 0f, 0x0),
	outdoorsRollingPlains  = EAXReverbProperties(1f, 0f, 0.3162f, 0.0112f, 0.631f, 2.13f, 0.21f, 0.46f, 0.1778f, 0.3f, [0f, 0f, -0f], 0.4467f, 0.019f, [0f, 0f, 0f], 0.25f, 1f, 0.25f, 0f, 0.9943f, 4399.1001f, 242.9f, 0f, 0x0),
	outdoorsDeepCanyon     = EAXReverbProperties(1f, 0.74f, 0.3162f, 0.1778f, 0.631f, 3.89f, 0.21f, 0.46f, 0.3162f, 0.223f, [0f, 0f, -0f], 0.3548f, 0.019f, [0f, 0f, 0f], 0.25f, 1f, 0.25f, 0f, 0.9943f, 4399.1001f, 242.9f, 0f, 0x0),
	outdoorsCreek          = EAXReverbProperties(1f, 0.35f, 0.3162f, 0.1778f, 0.5012f, 2.13f, 0.21f, 0.46f, 0.3981f, 0.115f, [0f, 0f, -0f], 0.1995f, 0.031f, [0f, 0f, 0f], 0.218f, 0.34f, 0.25f, 0f, 0.9943f, 4399.1001f, 242.9f, 0f, 0x0),
	outdoorsValley         = EAXReverbProperties(1f, 0.28f, 0.3162f, 0.0282f, 0.1585f, 2.88f, 0.26f, 0.35f, 0.1413f, 0.263f, [0f, 0f, -0f], 0.3981f, 0.1f, [0f, 0f, 0f], 0.25f, 0.34f, 0.25f, 0f, 0.9943f, 2854.3999f, 107.5f, 0f, 0x0),
	
	moodHeaven  = EAXReverbProperties(1f, 0.94f, 0.3162f, 0.7943f, 0.4467f, 5.04f, 1.12f, 0.56f, 0.2427f, 0.02f, [0f, 0f, 0f], 1.2589f, 0.029f, [0f, 0f, 0f], 0.25f, 0.08f, 2.742f, 0.05f, 0.9977f, 5000f, 250f, 0f, 0x1),
	moodHell    = EAXReverbProperties(1f, 0.57f, 0.3162f, 0.3548f, 0.4467f, 3.57f, 0.49f, 2f, 0f, 0.02f, [0f, 0f, 0f], 1.4125f, 0.03f, [0f, 0f, 0f], 0.11f, 0.04f, 2.109f, 0.52f, 0.9943f, 5000f, 139.5f, 0f, 0x0),
	moodMemory  = EAXReverbProperties(1f, 0.85f, 0.3162f, 0.631f, 0.3548f, 4.06f, 0.82f, 0.56f, 0.0398f, 0f, [0f, 0f, 0f], 1.122f, 0f, [0f, 0f, 0f], 0.25f, 0f, 0.474f, 0.45f, 0.9886f, 5000f, 250f, 0f, 0x0),
	
	drivingCommentator      = EAXReverbProperties(1f, 0f, 0.3162f, 0.5623f, 0.5012f, 2.42f, 0.88f, 0.68f, 0.1995f, 0.093f, [0f, 0f, 0f], 0.2512f, 0.017f, [0f, 0f, 0f], 0.25f, 1f, 0.25f, 0f, 0.9886f, 5000f, 250f, 0f, 0x1),
	drivingPitGarage        = EAXReverbProperties(0.4287f, 0.59f, 0.3162f, 0.7079f, 0.5623f, 1.72f, 0.93f, 0.87f, 0.5623f, 0f, [0f, 0f, 0f], 1.2589f, 0.016f, [0f, 0f, 0f], 0.25f, 0.11f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x0),
	drivingIncarRacer       = EAXReverbProperties(0.0832f, 0.8f, 0.3162f, 1f, 0.7943f, 0.17f, 2f, 0.41f, 1.7783f, 0.007f, [0f, 0f, 0f], 0.7079f, 0.015f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 10268.2002f, 251f, 0f, 0x1),
	drivingIncarSports      = EAXReverbProperties(0.0832f, 0.8f, 0.3162f, 0.631f, 1f, 0.17f, 0.75f, 0.41f, 1f, 0.01f, [0f, 0f, 0f], 0.5623f, 0f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 10268.2002f, 251f, 0f, 0x1),
	drivingIncarLuxury      = EAXReverbProperties(0.256f, 1f, 0.3162f, 0.1f, 0.5012f, 0.13f, 0.41f, 0.46f, 0.7943f, 0.01f, [0f, 0f, 0f], 1.5849f, 0.01f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 10268.2002f, 251f, 0f, 0x1),
	drivingFullGrandStand   = EAXReverbProperties(1f, 1f, 0.3162f, 0.2818f, 0.631f, 3.01f, 1.37f, 1.28f, 0.3548f, 0.09f, [0f, 0f, 0f], 0.1778f, 0.049f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 10420.2002f, 250f, 0f, 0x0),
	drivingEmptyGrandStand  = EAXReverbProperties(1f, 1f, 0.3162f, 1f, 0.7943f, 4.62f, 1.75f, 1.4f, 0.2082f, 0.09f, [0f, 0f, 0f], 0.2512f, 0.049f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0f, 0.9943f, 10420.2002f, 250f, 0f, 0x0),
	drivingTunnel           = EAXReverbProperties(1f, 0.81f, 0.3162f, 0.3981f, 0.8913f, 3.42f, 0.94f, 1.31f, 0.7079f, 0.051f, [0f, 0f, 0f], 0.7079f, 0.047f, [0f, 0f, 0f], 0.214f, 0.05f, 0.25f, 0f, 0.9943f, 5000f, 155.3f, 0f, 0x1),
	
	cityStreets    = EAXReverbProperties(1f, 0.78f, 0.3162f, 0.7079f, 0.8913f, 1.79f, 1.12f, 0.91f, 0.2818f, 0.046f, [0f, 0f, 0f], 0.1995f, 0.028f, [0f, 0f, 0f], 0.25f, 0.2f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	citySubway     = EAXReverbProperties(1f, 0.74f, 0.3162f, 0.7079f, 0.8913f, 3.01f, 1.23f, 0.91f, 0.7079f, 0.046f, [0f, 0f, 0f], 1.2589f, 0.028f, [0f, 0f, 0f], 0.125f, 0.21f, 0.25f, 0f, 0.9943f, 5000f, 250f, 0f, 0x1),
	cityMuseum     = EAXReverbProperties(1f, 0.82f, 0.3162f, 0.1778f, 0.1778f, 3.28f, 1.4f, 0.57f, 0.2512f, 0.039f, [0f, 0f, -0f], 0.8913f, 0.034f, [0f, 0f, 0f], 0.13f, 0.17f, 0.25f, 0f, 0.9943f, 2854.3999f, 107.5f, 0f, 0x0),
	cityLibrary    = EAXReverbProperties(1f, 0.82f, 0.3162f, 0.2818f, 0.0891f, 2.76f, 0.89f, 0.41f, 0.3548f, 0.029f, [0f, 0f, -0f], 0.8913f, 0.02f, [0f, 0f, 0f], 0.13f, 0.17f, 0.25f, 0f, 0.9943f, 2854.3999f, 107.5f, 0f, 0x0),
	cityUnderpass  = EAXReverbProperties(1f, 0.82f, 0.3162f, 0.4467f, 0.8913f, 3.57f, 1.12f, 0.91f, 0.3981f, 0.059f, [0f, 0f, 0f], 0.8913f, 0.037f, [0f, 0f, 0f], 0.25f, 0.14f, 0.25f, 0f, 0.992f, 5000f, 250f, 0f, 0x1),
	cityAbandoned  = EAXReverbProperties(1f, 0.69f, 0.3162f, 0.7943f, 0.8913f, 3.28f, 1.17f, 0.91f, 0.4467f, 0.044f, [0f, 0f, 0f], 0.2818f, 0.024f, [0f, 0f, 0f], 0.25f, 0.2f, 0.25f, 0f, 0.9966f, 5000f, 250f, 0f, 0x1),
	
	dustyRoom       = EAXReverbProperties(0.3645f, 0.56f, 0.3162f, 0.7943f, 0.7079f, 1.79f, 0.38f, 0.21f, 0.5012f, 0.002f, [0f, 0f, 0f], 1.2589f, 0.006f, [0f, 0f, 0f], 0.202f, 0.05f, 0.25f, 0f, 0.9886f, 13046f, 163.3f, 0f, 0x1),
	chapel          = EAXReverbProperties(1f, 0.84f, 0.3162f, 0.5623f, 1f, 4.62f, 0.64f, 1.23f, 0.4467f, 0.032f, [0f, 0f, 0f], 0.7943f, 0.049f, [0f, 0f, 0f], 0.25f, 0f, 0.25f, 0.11f, 0.9943f, 5000f, 250f, 0f, 0x1),
	smallWaterRoom  = EAXReverbProperties(1f, 0.7f, 0.3162f, 0.4477f, 1f, 1.51f, 1.25f, 1.14f, 0.8913f, 0.02f, [0f, 0f, 0f], 1.4125f, 0.03f, [0f, 0f, 0f], 0.179f, 0.15f, 0.895f, 0.19f, 0.992f, 5000f, 250f, 0f, 0x0),
}

mixin(joinFnBinds((){
	FnBind[] ret = [
		{q{void}, q{alGenEffects}, q{SizeI n, uint* effects}, pubIden: "genEffects"},
		{q{void}, q{alDeleteEffects}, q{SizeI n, const(uint)* effects}, pubIden: "deleteEffects"},
		{q{Boolean}, q{alIsEffect}, q{uint effect}, pubIden: "isEffect"},
		{q{void}, q{alEffecti}, q{uint effect, Enum param, int iValue}, pubIden: "effect"},
		{q{void}, q{alEffectiv}, q{uint effect, Enum param, const(int)* piValues}, pubIden: "effect"},
		{q{void}, q{alEffectf}, q{uint effect, Enum param, float flValue}, pubIden: "effect"},
		{q{void}, q{alEffectfv}, q{uint effect, Enum param, const(float)* pflValues}, pubIden: "effect"},
		{q{void}, q{alGetEffecti}, q{uint effect, Enum param, int* piValue}, pubIden: "getEffect"},
		{q{void}, q{alGetEffectiv}, q{uint effect, Enum param, int* piValues}, pubIden: "getEffect"},
		{q{void}, q{alGetEffectf}, q{uint effect, Enum param, float* pflValue}, pubIden: "getEffect"},
		{q{void}, q{alGetEffectfv}, q{uint effect, Enum param, float* pflValues}, pubIden: "getEffect"},

		{q{void}, q{alGenFilters}, q{SizeI n, uint* filters}, pubIden: "genFilters"},
		{q{void}, q{alDeleteFilters}, q{SizeI n, const(uint)* filters}, pubIden: "deleteFilters"},
		{q{Boolean}, q{alIsFilter}, q{uint filter}, pubIden: "isFilter"},
		{q{void}, q{alFilteri}, q{uint filter, Enum param, int iValue}, pubIden: "filter"},
		{q{void}, q{alFilteriv}, q{uint filter, Enum param, const(int)* piValues}, pubIden: "filter"},
		{q{void}, q{alFilterf}, q{uint filter, Enum param, float flValue}, pubIden: "filter"},
		{q{void}, q{alFilterfv}, q{uint filter, Enum param, const(float)* pflValues}, pubIden: "filter"},
		{q{void}, q{alGetFilteri}, q{uint filter, Enum param, int* piValue}, pubIden: "getFilter"},
		{q{void}, q{alGetFilteriv}, q{uint filter, Enum param, int* piValues}, pubIden: "getFilter"},
		{q{void}, q{alGetFilterf}, q{uint filter, Enum param, float* pflValue}, pubIden: "getFilter"},
		{q{void}, q{alGetFilterfv}, q{uint filter, Enum param, float* pflValues}, pubIden: "getFilter"},

		{q{void}, q{alGenAuxiliaryEffectSlots}, q{SizeI n, uint* effectslots}, pubIden: "genAuxiliaryEffectSlots"},
		{q{void}, q{alDeleteAuxiliaryEffectSlots}, q{SizeI n, const(uint)* effectslots}, pubIden: "deleteAuxiliaryEffectSlots"},
		{q{Boolean}, q{alIsAuxiliaryEffectSlot}, q{uint effectslot}, pubIden: "isAuxiliaryEffectSlot"},
		{q{void}, q{alAuxiliaryEffectSloti}, q{uint effectslot, Enum param, int iValue}, pubIden: "auxiliaryEffectSlot"},
		{q{void}, q{alAuxiliaryEffectSlotiv}, q{uint effectslot, Enum param, const(int)* piValues}, pubIden: "auxiliaryEffectSlot"},
		{q{void}, q{alAuxiliaryEffectSlotf}, q{uint effectslot, Enum param, float flValue}, pubIden: "auxiliaryEffectSlot"},
		{q{void}, q{alAuxiliaryEffectSlotfv}, q{uint effectslot, Enum param, const(float)* pflValues}, pubIden: "auxiliaryEffectSlot"},
		{q{void}, q{alGetAuxiliaryEffectSloti}, q{uint effectslot, Enum param, int* piValue}, pubIden: "getAuxiliaryEffectSlot"},
		{q{void}, q{alGetAuxiliaryEffectSlotiv}, q{uint effectslot, Enum param, int* piValues}, pubIden: "getAuxiliaryEffectSlot"},
		{q{void}, q{alGetAuxiliaryEffectSlotf}, q{uint effectslot, Enum param, float* pflValue}, pubIden: "getAuxiliaryEffectSlot"},
		{q{void}, q{alGetAuxiliaryEffectSlotfv}, q{uint effectslot, Enum param, float* pflValues}, pubIden: "getAuxiliaryEffectSlot"},
	];
	return ret;
}()));
