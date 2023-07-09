/+
+                Copyright 2023 Aya Partridge
+ Distributed under the Boost Software License, Version 1.0.
+     (See accompanying file LICENSE_1_0.txt or copy at
+           http://www.boost.org/LICENSE_1_0.txt)
+/
module al.ext;

import bindbc.openal.codegen;

import al: Boolean, SizeI, Enum;








mixin(joinFnBinds((){
	string[][] ret;
	ret ~= makeFnBinds([

	]);
	return ret;
}(), __MODULE__));
