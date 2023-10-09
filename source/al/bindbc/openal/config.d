/+
+                Copyright 2023 Aya Partridge
+ Distributed under the Boost Software License, Version 1.0.
+     (See accompanying file LICENSE_1_0.txt or copy at
+           http://www.boost.org/LICENSE_1_0.txt)
+/
module bindbc.openal.config;

enum staticBinding = (){
	version(BindBC_Static)          return true;
	else version(BindOpenAL_Static) return true;
	else return false;
}();
