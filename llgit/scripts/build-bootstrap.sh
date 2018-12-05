#! /bin/sh
shopt -s extglob

(
  . ${0%/*([^\/])}/lib/project.variables

  . ${lib}/pathtrim.function
  . ${lib}/get_objdir.function
  tools=$(get_objdir ${@})
echo $tools

  unset CC
  unset CFLAGS
  unset CXX
  unset CXXFLAGS
  unset LD
  unset LDFLAGS

  cmake -GNinja \
\
\
\
\
  -DCMAKE_BUILD_TYPE=RELWITHDEBINFO \
  -DCMAKE_C_FLAGS_RELWITHDEBINFO="-O3 -g -DNDEBUG" \
  -DCMAKE_CXX_FLAGS_RELWITHDEBINFO="-O3 -g -DNDEBUG" \
\
  -DCMAKE_POLICY_DEFAULT_CMP0075=NEW \
  -DCMAKE_POLICY_DEFAULT_CMP0048=NEW \
\
  -DCLANG_DEFAULT_STD_C=c11 \
  -DCLANG_DEFAULT_STD_CXX=c++14 \
  -DCLANG_DEFAULT_CXX_STDLIB=libc++ \
  -DCLANG_DEFAULT_LINKER=lld \
  -DCLANG_DEFAULT_RTLIB=compiler-rt \
  -DCLANG_DEFAULT_CXX_STDLIB=libc++ \
  -DCLANG_PLUGIN_SUPPORT=ON \
  -DCLANG_DEFAULT_OBJCOPY=llvm-objcopy \
\
  -DCLANG_ENABLE_BOOTSTRAP=ON \
  -DCLANG_BOOTSTRAP_EXTRA_DEPS=builtins\;unwind\;cxxabi\;cxx\;compiler-rt\;lld\;llvm-nm\;llvm-ar\;llvm-objdump\;llvm-strip\;llvm-objcopy\;llvm-ranlib \
\
\
\
  -DCMAKE_C_COMPILER=${tools}/bin/clang \
  -DCMAKE_CXX_COMPILER=${tools}/bin/clang++ \
  -DCMAKE_LINKER=ld.lld \
  -DCMAKE_RANLIB=${tools}/bin/llvm-ranlib \
  -DCMAKE_AR=${tools}/bin/llvm-ar \
\
\
\
  -DCMAKE_C_FLAGS="-march=native -pipe -Qunused-arguments \
     -rtlib=compiler-rt -stdlib=libc++ -std=c11 \
     -fuse-ld=/usr/bin/ld.lld \
     -gdwarf -fexceptions -fcxx-exceptions -fdwarf-exceptions \
     -I${PWD}/include \
     -I${PWD}/lib/clang/8.0.0/include \
     -I${tools}/include \
     -I${tools}/lib/clang/8.0.0/include \
     -L${PWD}/lib \
     -L${PWD}/lib/clang/8.0.0/lib \
     -L${tools}/lib \
     -L${tools}/lib/clang/8.0.0/lib \
     -frtlib-add-rpath \
     --gcc-toolchain=/dev/null -B/usr/lib/crt-objects" \
\
  -DCMAKE_CXX_FLAGS="-march=native -pipe -Qunused-arguments \
     -rtlib=compiler-rt -stdlib=libc++ -std=c++14 \
     -fuse-ld=/usr/bin/ld.lld \
     -gdwarf -fexceptions -fcxx-exceptions -fdwarf-exceptions \
     -D__cpluscplus=201402L \
     -I${PWD}/include \
     -I${PWD}/lib/clang/8.0.0/include \
     -I${tools}/include \
     -I${tools}/lib/clang/8.0.0/include \
     -L${PWD}/lib \
     -L${PWD}/lib/clang/8.0.0/lib \
     -L${tools}/lib \
     -L${tools}/lib/clang/8.0.0/lib \
     -frtlib-add-rpath \
     --gcc-toolchain=/dev/null -B/usr/lib/crt-objects" \
\
  -DCMAKE_EXE_LINKER_FLAGS="-Wl,--verbose -Wl,--lto-O3 \
     -Wl,--compress-debug-sections=zlib \
     -Wl,-lrt -Wl,-lunwind -Wl,-latomic -Wl,-lpthread \
     -Wl,-L${PWD}/lib \
     -Wl,-L${PWD}/lib/clang/8.0.0/lib \
     -Wl,-L${tools}/lib \
     -Wl,-L${tools}/lib/clang/8.0.0/lib \
     -Wl,-L${tools}/libclangx86/lib" \
\
  -DCMAKE_MODULE_LINKER_FLAGS="-Wl,--verbose -Wl,--lto-O3 \
     -Wl,--compress-debug-sections=zlib \
     -Wl,-lrt -Wl,-lunwind -Wl,-latomic -Wl,-lpthread \
     -Wl,-L${PWD}/lib \
     -Wl,-L${PWD}/lib/clang/8.0.0/lib \
     -Wl,-L${tools}/lib \
     -Wl,-L${tools}/lib/clang/8.0.0/lib \
     -Wl,-L${tools}/libclangx86/lib" \
\
  -DCMAKE_SHARED_LINKER_FLAGS="-Wl,--verbose -Wl,--lto-O3 \
     -Wl,--compress-debug-sections=zlib \
     -Wl,-lrt -Wl,-lunwind -Wl,-latomic -Wl,-lpthread \
     -Wl,-L${PWD}/lib \
     -Wl,-L${PWD}/lib/clang/8.0.0/lib \
     -Wl,-L${tools}/lib \
     -Wl,-L${tools}/lib/clang/8.0.0/lib \
     -Wl,-L${tools}/libclangx86/lib" \
\
\
  -DLLVM_ENABLE_MODULES=ON \
  -DLLVM_ENABLE_MODULE_DEBUGGING=ON \
  -DLLVM_ENABLE_LOCAL_SUBMODULE_VISIBILITY=ON \
  -DLLVM_ENABLE_DUMP=ON \
  -DLLVM_ENABLE_EH=ON \
  -DLLVM_ENABLE_RTTI=ON \
  -DLLVM_ENABLE_RUNTIME=ON \
\
\
  -DLLVM_ENABLE_LIBCXX=ON \
  -DLLVM_ENABLE_LTO=THIN \
  -DLLVM_ENABLE_LLD=ON \
\
  -DLLVM_TARGETS_TO_BUILD="host" \
  -DCLANG_BUILD_TOOLS=ON \
\
  -DLLVM_USE_INTEL_JITEVENTS=YES \
  -DLLVM_TOOL_LLVM_JITLISTENER_BUILD=ON \
  -DLLVM_USE_OPROFILE=YES \
  -DLLVM_USE_PERF=YES \
  -DLLVM_BUILD_TOOLS=ON \
  -DLLVM_BUILD_UTILS=ON \
  -DLLVM_EXPORT_SYMBOLS_FOR_PLUGINS=ON \
  -DLLVM_BUILD_EXTERNAL_COMPILER_RT=ON \
\
  -DLLVM_TOOL_POLLY_BUILD=ON \
  -DLLVM_TOOL_DSYMUTIL_BUILD=ON \
\
\
  -DCOMPILER_RT_USE_BUILTINS_LIBRARY=ON \
  -DCOMPILER_RT_BUILD_BUILTINS=ON \
  -DDEFAULT_COMPILER_RT_USE_BUILTINS_LIBRARY=1 \
  -DDEFAULT_COMPILER_RT_BUILD_BUILTINS=1 \
  -DCOMPILER_RT_EXCLUDE_ATOMIC_BUILTIN=OFF \
  -DLIBCXX_USE_COMPILER_RT=ON \
  -DLIBCXXABI_USE_COMPILER_RT=ON \
  -DLIBUNWIND_USE_COMPILER_RT=ON \
\
  -DLIBCXXABI_USE_LLVM_UNWINDER=ON \
  -DLIBCXXABI_ENABLE_SHARED=ON \
\
  -DLIBCXX_ENABLE_SHARED=ON \
  -DLIBCXX_ENABLE_ASSERTIONS=ON \
  -DLIBCXX_CXX_ABI=libcxxabi \
  -DLIBCXX_CXX_ABI_INCLUDE_PATHS=\
${src}/projects/libcxxabi/include\;\
${src}/projects/libcxxabi/src/include \
  -DLIBCXX_CXX_ABI_INTREE=1 \
\
  -DSANITIZER_CXX_ABI=libcxxabi \
  -DSANITIZER_CXX_ABI_INTREE=1 \
\
\
\
\
  -DBOOTSTRAP_CMAKE_C_COMPILER=${PWD}/bin/clang \
  -DBOOTSTRAP_CMAKE_CXX_COMPILER=${PWD}/bin/clang++ \
  -DBOOTSTRAP_CMAKE_LINKER=${PWD}/bin/ld.lld \
  -DBOOTSTRAP_CMAKE_RANLIB=${PWD}/bin/llvm-ranlib \
  -DBOOTSTRAP_CMAKE_AR=${PWD}/bin/llvm-ar \
  -DBOOTSTRAP_CMAKE_NM=${PWD}/bin/llvm-nm \
  -DBOOTSTRAP_CMAKE_STRIP=${PWD}/bin/llvm-strip \
  -DBOOTSTRAP_CMAKE_OBJCOPY=${PWD}/bin/llvm-objcopy \
  -DBOOTSTRAP_CMAKE_OBJDUMP=${PWD}/bin/llvm-objdump \
  -DBOOTSTRAP_CMAKE_EXE_LINKER=${PWD}/bin/ld.lld \
\
  -DBOOTSTRAP_CMAKE_BUILD_TYPE=RELWITHDEBINFO \
  -DBOOTSTRAP_CMAKE_C_FLAGS_RELWITHDEBINFO="-O3 -g -DNDEBUG" \
  -DBOOTSTRAP_CMAKE_CXX_FLAGS_RELWITHDEBINFO="-O3 -g -DNDEBUG" \
  -DBOOTSTRAP_CMAKE_POLICY_DEFAULT_CMP0075=NEW \
  -DBOOTSTRAP_CMAKE_POLICY_DEFAULT_CMP0048=NEW \
\
  -DBOOTSTRAP_CLANG_DEFAULT_STD_C=c11 \
  -DBOOTSTRAP_CLANG_DEFAULT_STD_CXX=c++14 \
  -DBOOTSTRAP_CLANG_DEFAULT_CXX_STDLIB=libc++ \
  -DBOOTSTRAP_CLANG_DEFAULT_LINKER=lld \
  -DBOOTSTRAP_CLANG_DEFAULT_RTLIB=compiler-rt \
  -DBOOTSTRAP_CLANG_DEFAULT_CXX_STDLIB=libc++ \
  -DBOOTSTRAP_CLANG_PLUGIN_SUPPORT=ON \
  -DBOOTSTRAP_CLANG_DEFAULT_OBJCOPY=llvm-objcopy \
\
  -DBOOTSTRAP_LLVM_TARGETS_TO_BUILD=ALL \
  -DBOOTSTRAP_CLANG_BUILD_TOOLS=ON \
\
  -DBOOTSTRAP_LLVM_USE_INTEL_JITEVENTS=YES \
  -DBOOTSTRAP_LLVM_TOOL_LLVM_JITLISTENER_BUILD=ON \
  -DBOOTSTRAP_LLVM_USE_OPROFILE=YES \
  -DBOOTSTRAP_LLVM_USE_PERF=YES \
  -DBOOTSTRAP_LLVM_BUILD_TOOLS=ON \
  -DBOOTSTRAP_LLVM_BUILD_UTILS=ON \
  -DBOOTSTRAP_LLVM_EXPORT_SYMBOLS_FOR_PLUGINS=ON \
  -DBOOTSTRAP_LLVM_BUILD_TOOLS=ON \
  -DBOOTSTRAP_LLVM_INSTALL_TOOLS=ON \
  -DBOOTSTRAP_LLVM_BUILD_UTILS=ON \
  -DBOOTSTRAP_LLVM_INSTALL_UTILS=ON \
  -DBOOTSTRAP_LLVM_TOOL_CLANG_TOOLS_EXTRA_BUILD=ON \
  -DBOOTSTRAP_LLVM_TOOL_LLD_BUILD=ON \
\
  -DBOOTSTRAP_LLVM_TOOL_POLLY_BUILD=ON \
  -DBOOTSTRAP_LLVM_TOOL_DSYMUTIL_BUILD=ON \
\
  -DBOOTSTRAP_COMPILER_RT_USE_BUILTINS_LIBRARY=ON \
  -DBOOTSTRAP_COMPILER_RT_BUILD_BUILTINS=ON \
  -DBOOTSTRAP_DEFAULT_COMPILER_RT_USE_BUILTINS_LIBRARY=1 \
  -DBOOTSTRAP_DEFAULT_COMPILER_RT_BUILD_BUILTINS=1 \
  -DBOOTSTRAP_COMPILER_RT_EXCLUDE_ATOMIC_BUILTINS=OFF \
  -DBOOTSTRAP_LIBCXX_USE_COMPILER_RT=ON \
  -DBOOTSTRAP_LIBCXXABI_USE_COMPILER_RT=ON \
  -DBOOTSTRAP_LIBUNWIND_USE_COMPILER_RT=ON \
\
  -DBOOTSTRAP_LLVM_ENABLE_MODULES=ON \
  -DBOOTSTRAP_LLVM_ENABLE_MODULE_DEBUGGING=ON \
  -DBOOTSTRAP_LLVM_ENABLE_LOCAL_SUBMODULE_VISIBILITY=ON \
  -DBOOTSTRAP_LLVM_ENABLE_DUMP=ON \
  -DBOOTSTRAP_LLVM_ENABLE_EH=ON \
  -DBOOTSTRAP_LLVM_ENABLE_RTTI=ON \
  -DBOOTSTRAP_LLVM_ENABLE_RUNTIME=ON \
\
  -DBOOTSTRAP_LLVM_ENABLE_LIBCXX=ON \
  -DBOOTSTRAP_LLVM_ENABLE_LTO=THIN \
  -DBOOTSTRAP_LLVM_USE_LD=${PWD}/bin/ld.lld \
  -DBOOTSTRAP_LLVM_LD_IS_LLD=1 \
\
  -DBOOTSTRAP_LIBCXX_ENABLE_SHARED=ON \
  -DBOOTSTRAP_LIBCXXABI_USE_LLVM_UNWINDER=ON \
  -DBOOTSTRAP_LIBCXX_CXX_ABI=libcxxabi \
  -DBOOTSTRAP_LIBCXX_CXX_ABI_INTREE=1 \
  -DBOOTSTRAP_LIBCXX_CXX_ABI_INCLUDE_PATHS=\
${PWD}/include/c++/v1\;${PWD}/lib/clang/8.0.0/include/c++/v1\;${PWD}/projects/libcxx/include/c++build/cxxabi.h\;${src}/projects/libcxxabi/include\;${src}/projects/libcxxabi/src/include \
\
  -DBOOTSTRAP_SANITIZER_CXX_ABI=libc++ \
  -DBOOTSTRAP_SANITIZER_CXX_ABI_INTREE=1 \
\
  -DBOOTSTRAP_CMAKE_C_FLAGS="-march=native -pipe \
     -rtlib=compiler-rt -stdlib=libc++ -std=c11 \
     -fuse-ld=${PWD}/bin/ld.lld \
     -gdwarf -fexceptions -fcxx-exceptions -fdwarf-exceptions \
     -I${PWD}/tools/clang/stage2-bins/include \
     -I${PWD}/tools/clang/stage2-bins/lib/clang/8.0.0/include \
     -I${PWD}/include \
     -I${PWD}/lib/clang/8.0.0/include \
     -L${PWD}/tools/clang/stage2-bins/lib \
     -L${PWD}/tools/clang/stage2-bins/lib/clang/8.0.0/lib \
     -L${PWD}/lib \
     -L${PWD}/lib/clang/8.0.0/lib \
     -frtlib-add-rpath \
     --gcc-toolchain=/dev/null -B/usr/lib/crt-objects" \
\
  -DBOOTSTRAP_CMAKE_CXX_FLAGS="-march=native -pipe \
     -rtlib=compiler-rt -stdlib=libc++ -std=c++14 \
     -fuse-ld=${PWD}/bin/ld.lld \
     -gdwarf -fexceptions -fcxx-exceptions -fdwarf-exceptions \
     -D__cpluscplus=201402L \
     -I${PWD}/tools/clang/stage2-bins/include \
     -I${PWD}/tools/clang/stage2-bins/lib/clang/8.0.0/include \
     -I${PWD}/include \
     -I${PWD}/lib/clang/8.0.0/include \
     -L${PWD}/tools/clang/stage2-bins/lib \
     -L${PWD}/tools/clang/stage2-bins/lib/clang/8.0.0/lib \
     -L${PWD}/lib \
     -L${PWD}/lib/clang/8.0.0/lib \
     -frtlib-add-rpath \
     --gcc-toolchain=/dev/null -B/usr/lib/crt-objects" \
\
  -DBOOTSTRAP_CMAKE_EXE_LINKER_FLAGS="-Wl,--verbose -Wl,--lto-O3 \
     -Wl,--compress-debug-sections=zlib \
     -Wl,-L${PWD}/tools/clang/stage2-bins/lib \
     -Wl,-L${PWD}/tools/clang/stage2-bins/lib/clang/8.0.0/lib \
     -Wl,-L${PWD}/lib \
     -Wl,-L${PWD}/lib/clang/8.0.0/lib" \
\
  -DBOOTSTRAP_CMAKE_SHARED_LINKER_FLAGS="-Wl,--verbose -Wl,--lto-O3 \
     -Wl,--compress-debug-sections=zlib \
     -Wl,-L${PWD}/tools/clang/stage2-bins/lib \
     -Wl,-L${PWD}/tools/clang/stage2-bins/lib/clang/8.0.0/lib \
     -Wl,-L${PWD}/lib \
     -Wl,-L${PWD}/lib/clang/8.0.0/lib" \
\
  -DBOOTSTRAP_CMAKE_SHARED_LINKER_FLAGS="-Wl,--verbose -Wl,--lto-O3 \
     -Wl,--compress-debug-sections=zlib \
     -Wl,-L${PWD}/tools/clang/stage2-bins/lib \
     -Wl,-L${PWD}/tools/clang/stage2-bins/lib/clang/8.0.0/lib \
     -Wl,-L${PWD}/lib \
     -Wl,-L${PWD}/lib/clang/8.0.0/lib" \
\
\
  /home/lk/self/workbench/llvm-project/llvm-source/llvm

 )

#ninja stage2

#  -DCMAKE_EXE_LINKER_FLAGS="-Wl,--verbose,--nostdlib,-rpath=/usr/local/lib/clang/8.0.0/lib,-rpath=/usr/local/lib,-O3,--lto-O3,-L/usr/lib" \
#  -DCMAKE_SHARED_LINKER_FLAGS="-Wl,--verbose,-nostdlib,-rpath=/usr/local/lib/clang/8.0.0/lib,-rpath=/usr/local/lib,-O3,--lto-O3,-L/usr/lib" \
#  -DCMAKE_MODULE_LINKER_FLAGS="-Wl,--verbose,-nostdlib,-rpath=/usr/local/lib/clang/8.0.0/lib,-rpath=/usr/local/lib,-O3,--lto-O3,-L/usr/lib" \

#-DDEFAULT_COMPILER_RT_USE_BUILTINS_LIBRARY
#  -DLLVM_BUILD_EXTERNAL_COMPILER_RT=ON \


#  -DLIBCXX_STATICALLY_LINK_ABI_IN_SHARED_LIBRARY=OFF \
#   -DLIBCXX_ENABLE_STATIC_ABI_LIBRARY=ON \
