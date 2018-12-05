#! /bin/bash --
shopt -s extglob

. ${0%/*([^\/])}/lib/project.variables

. ${lib}/pathtrim.function
. ${lib}/get_objdir.function

tools=$(get_objdir -b cxx)
  

cmake -GNinja \
\
\
  -DDEFAULT_COMPILER_RT_USE_BUILTINS_LIBRARY=ON \
  -DCOMPILER_RT_USE_BUILTINS_LIBRARY=ON \
  -DCOMPILER_RT_BUILD_BUILTINS=ON \
  -DCOMPILER_RT_BUILD_SANITIZERS=ON \
  -DCOMPILER_RT_BUILD_XRAY=ON \
  -DCOMPILER_RT_BUILD_LIBFUZZER=ON \
  -DCOMPILER_RT_BUILD_PROFILE=ON \
  -DCOMPILER_RT_EXCLUDE_ATOMIC_BUILTIN:BOOL=OFF \
  -DCOMPILER_RT_STANDALONE_BUILD=ON \
\
\
  -DCMAKE_BUILD_TYPE=RELWITHDEBINFO \
  -DCMAKE_ASM_FLAGS_RELWITHDEBINFO="-O3 -g -DNDEBUG" \
  -DCMAKE_CXX_FLAGS_RELWITHDEBINFO="-O3 -g -DNDEBUG" \
  -DCMAKE_C_FLAGS_RELWITHDEBINFO="-O3 -g -DNDEBUG" \
\
  -DCMAKE_POLICY_DEFAULT_CMP0075=NEW \
  -DCMAKE_CXX_COMPILER_ABI=ELF \
\
  -DCLANG_DEFAULT_RTLIB=compiler-rt \
  -DCLANG_DEFAULT_STD_C=c11 \
  -DCLANG_DEFAULT_STD_CXX=c++14 \
  -DCLANG_DEFAULT_CXX_STDLIB=libc++ \
  -DCLANG_DEFAULT_LINKER=ld.lld \
  -DCLANG_PLUGIN_SUPPORT=ON \
\
 -DLLVM_ENABLE_MODULES=ON \
 -DLLVM_ENABLE_MODULE_DEBUGGING=ON \
 -DLLVM_ENABLE_LOCAL_SUBMODULE_VISIBILITY=ON \
\
  -DLLVM_ENABLE_TERMINFO=ON \
  -DLLVM_ENABLE_RTTI=ON \
  -DLLVM_ENABLE_EH=ON \
  -DLLVM_PATH=${src} \
  -DLLVM_MAIN_SRC_DIR=${src} \
\
  -DLLVM_USE_INTEL_JITEVENTS=ON \
  -DLLVM_USE_PERF=ON \
\
  -DLLVM_USE_LINKER=${tools}/bin/ld.lld \
  -DLLVM_LINKER_IS_LLD=1 \
  -DLLVM_ENABLE_LTO=thin \
\
\
  -DLIBUNWIND_USE_COMPILER_RT=ON \
\
  -DSANITIZER_CXX_ABI=libcxxabi \
  -DSANITIZER_CXX_ABI_LIBNAME=libcxxabi \
\
  -DCMAKE_LINKER=${tools}/bin/ld.lld \
  -DCMAKE_AR=${tools}/bin/llvm-ar \
  -DCMAKE_RANLIB=${tools}/bin/llvm-ranlib \
  -DCMAKE_NM=${tools}/bin/llvm-nm \
  -DCMAKE_OBJCOPY=${tools}/bin/llvm-objcopy \
  -DCMAKE_OBJDUMP=${tools}/bin/llvm-objdump \
  -DCMAKE_STRIP=${tools}/bin/llvm-strip \
  -DCMAKE_C_COMPILER=${tools}/bin/clang \
  -DCMAKE_CXX_COMPILER=${tools}/bin/clang++ \
\
\
  -DCMAKE_C_FLAGS="-pipe -Qunused-arguments -rtlib=compiler-rt \
    -fuse-ld=${tools}/bin/ld.lld -stdlib=libc++ \
    -fexceptions -fcxx-exceptions -fdwarf-exceptions -gdwarf \
    -std=c11 --gcc-toolchain=/dev/null \
    -frtlib-add-rpath -B/usr/lib/crt-objects \
    -fmodules -fcxx-modules -gmodules \
    -lrt -lunwind -latomic -lpthread -L/usr/lib \
    -I${PWD}/include \
    -I${PWD}/lib/clang/8.0.0/include \
    -isystem=${tools}/include \
    -isystem-internal=${tools}/lib/clang/8.0.0/include \
    -I${src}/projects/libcxx/include \
    -I${src}/projects/libcxxabi/include \
    -isystem=/usr/include" \
\
  -DCMAKE_CXX_FLAGS="-pipe -Qunused-arguments -rtlib=compiler-rt \
    -fuse-ld=${tools}/bin/ld.lld -stdlib=libc++ \
    -fexceptions -fcxx-exceptions -fdwarf-exceptions -gdwarf \
    -std=c++14  --gcc-toolchain=/dev/null \
    -B/usr/lib/crt-objects \
    -fmodules -fcxx-modules -gmodules \
    -lrt -lunwind -latomic -lpthread -L/usr/lib \
    -I${PWD}/include \
    -I${PWD}/lib/clang/8.0.0/include \
    -isystem=${tools}/include \
    -isystem-internal=${tools}/lib/clang/8.0.0/include \
    -I${src}/projects/libcxx/include \
    -I${src}/projects/libcxxabi/include \
    -isystem=/usr/include" \
\
\
  -DCMAKE_SHARED_LINKER_FLAGS="-Wl,--verbose -Wl,--lto-O3 \
    -Wl,-lrt -Wl,-lunwind -Wl,-latomic -Wl,-lpthread \
    -Wl,-rpath,${PWD}/lib \
    -Wl,-rpath,${PWD}/lib/clang/8.0.0/x86_64-unknown-linux-gnu/lib \
    -Wl,-L${PWD}/lib \
    -Wl,-L${PWD}/lib/clang/8.0.0/x86_64-unknown-linux-gnu/lib \
    -Wl,-L${tools}/lib \
    -Wl,-L${tools}/lib/clang/8.0.0/lib/linux \
    -Wl,-L/usr/lib" \
  -DCMAKE_EXE_LINKER_FLAGS="-Wl,--verbose -Wl,--lto-O3 \
    -Wl,-lrt -Wl,-lunwind -Wl,-latomic -Wl,-lpthread \
    -Wl,-rpath,${PWD}/lib \
    -Wl,-rpath,${PWD}/lib/clang/8.0.0/x86_64-unknown-linux-gnu/lib \
    -Wl,-L${PWD}/lib \
    -Wl,-L${PWD}/lib/clang/8.0.0/x86_64-unknown-linux-gnu/lib \
    -Wl,-L${tools}/lib \
    -Wl,-L${tools}/lib/clang/8.0.0/lib/linux \
    -Wl,-L/usr/lib" \
  -DCMAKE_MODULE_LINKER_FLAGS="-Wl,--verbose -Wl,--lto-O3 \
    -Wl,-lrt -Wl,-lunwind -Wl,-latomic -Wl,-lpthread \
    -Wl,-rpath,${PWD}/lib \
    -Wl,-rpath,${PWD}/lib/clang/8.0.0/x86_64-unknown-linux-gnu/lib \
    -Wl,-L${PWD}/lib \
    -Wl,-L${PWD}/lib/clang/8.0.0/x86_64-unknown-linux-gnu/lib \
    -Wl,-L${tools}/lib \
    -Wl,-L${tools}/lib/clang/8.0.0/lib/linux \
    -Wl,-L/usr/lib" \
\
  -DLLVM_ENABLE_PER_TARGET_RUNTIME_DIR=OFF \
  -DCOMPILER_RT_INCLUDE_TESTS=ON \
\
  -DLIBCXX_CXX_ABI_INTREE=1 \
-DLIBCXX_CXX_ABI_INCLUDE_PATHS=${PWD}/include\;${PWD}/projects/libcxxabi/include\;${src}/projects/libcxxabi/include \
  -DSANITIZER_CXX_ABI_INTREE=1 \
  -DLLVM_TOOL_LLVM_JITLISTENER_BUILD=ON \
  -DLLVM_ENABLE_RUNTIME=ON \
  -DLLVM_ENABLE_LIBCXX=ON \
  -DLLVM_TOOL_POLLY_BUILD=ON \
  -DLIBCXX_USE_COMPILER_RT=ON \
  -DLIBCXX_ENABLE_PEDANTIC=ON \
  -DLIBCXX_CXX_ABI=libcxxabi \
  -DLIBCXXABI_USE_COMPILER_RT=ON \
  -DLIBCXXABI_USE_LLVM_UNWINDER=ON \
\
  -DLLVM_BUILD_UTILS=ON \
\
\
  /home/lk/self/workbench/llvm-project/llvm-source/llvm

#-Wl,-lunwind -Wl,-latomic

#   c_flgs="$(rg   CMAKE_C_FLAGS: CMakeCache.txt | sed 's/.*:STRING=\|$//g')"
# cxx_flgs="$(rg CMAKE_CXX_FLAGS: CMakeCache.txt | sed 's/.*:STRING=\|$//g')"

# cmake \
# \
#   -UCMAKE_C_FLAGS* \
#   -UCMAKE_CXX_FLAGS* \
#   -DCMAKE_C_FLAGS="  -resource-dir ${PWD}/lib/clang/8.0.0 \
#                      -fbuiltin-module-map \
#                      -gmodules \
#                       ${c_flgs}" \
#   -DCMAKE_CXX_FLAGS="-resource-dir ${PWD}/lib/clang/8.0.0 \
#                      -fbuiltin-module-map \
#                      -gmodules \
#                       ${cxx_flgs}" \
# \
#   -GNinja .

# ninja unwind













#  -DCOMPILER_RT_TEST_COMPILER=${tools}/bin/clang \
#  -DCOMPILER_RT_TEST_CXX_COMPILER=${tools}/bin/clang++ \

#ninja libclang-headers cxx-headers cxx_abi_headers compiler-rt-headers 
#ninja clang_rt.xray-{,basic-,fdr-,profiling-}x86_64 \
#      RTXray{,BASIC,FDR,PROFILING}.x86_64 \
#      libclang_rt.xray{-basic,-fdr,-profiling,}.a 
# {a,hwa,m}san_blacklist {l,m,t,ub,hwa,e,df,a}san 
                                       
# LIBCXX_STATICALLY_LINK_ABI_IN_SHARED_LIBRARY     \
# LIBCXX_ENABLE_STATIC_ABI_LIBRARY                  :-- prevents libc++ linker script   
# LIBCXX_STATICALLY_LINK_ABI_IN_STATIC_LIBRARY     /
#     -fexceptions -fcxx-exceptions -fdwarf-exceptions \
# mv ${tools}/include/llvm/module.modulemap ${tools}/include/llvm/.module.modulemap
#  -DCOMPILER_RT_BUILTINS_STANDALONE_BUILD=1 \
#    -DCOMPILER_RT_STANDALONE_BUILD=ON \
#  -DLLVM_INSTALL_MODULEMAPS=1 \
#
#  -DCMAKE_INSTALL_PREFIX=/usr \
#  -DCMAKE_INSTALL_RPATH=ON \
