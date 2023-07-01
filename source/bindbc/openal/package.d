
//          Copyright 2018 - 2021 Michael D. Parker
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)

module bindbc.openal;

public import bindbc.openal.types;

version(AL_EFX){
	public import bindbc.openal.efx;
	public import bindbc.openal.presets;
}

version(BindBC_Static) version = BindOpenAL_Static;
version(BindOpenAL_Static){
	public import bindbc.openal.bindstatic;
	pragma(msg, "Please note that the static binding currently may cause the program to crash.");
}else{
	public import bindbc.openal.binddynamic;
}