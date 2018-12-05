#! /bin/sh

(
  unset CC
  unset CFLAGS
  unset CXX
  unset CXXFLAGS
  unset LD
  unset LDFLAGS

  cmake \
 \
  -DCMAKE_C_COMPILER=/home/lk/self/workbench/llvm-project/build/clang-bootstrap/bin/clang \
  -DCMAKE_CXX_COMPILER=/home/lk/self/workbench/llvm-project/build/clang-bootstrap/bin/clang++ \
  -DCLANG_DEFAULT_LINKER=/home/lk/self/workbench/llvm-project/build/clang-bootstrap/bin/ld.lld \
  -DCLANG_DEFAULT_OBJCOPY=/home/lk/self/workbench/llvm-project/build/clang-bootstrap/bin/llvm-objcopy \
  -DCMAKE_LINKER=/home/lk/self/workbench/llvm-project/build/clang-bootstrap/bin/ld.lld \
  -DCMAKE_RANLIB=/home/lk/self/workbench/llvm-project/build/clang-bootstrap/bin/llvm-ranlib \
  -DCMAKE_AR=/home/lk/self/workbench/llvm-project/build/clang-bootstrap/bin/llvm-ar \
 \
  -DCMAKE_BUILD_TYPE=RELWITHDEBINFO \
  -DCMAKE_POLICY_DEFAULT_CMP0075=NEW \
  -DCMAKE_POLICY_DEFAULT_CMP0048=NEW \
  -DCLANG_BUILD_TOOLS=ON \
\
  -DLLVM_USE_LINKER=lld \
  -DLLVM_LINKER_IS_LLD=1 \
  -DLLVM_ENABLE_WARNINGS=ON \
  -DCMAKE_INSTALL_RPATH=ON \
  -DCMAKE_INSTALL_PREFIX=/usr \
\
  -DCLANG_DEFAULT_STD_C=c11 \
  -DCLANG_DEFAULT_STD_CXX=c++14 \
  -DCLANG_DEFAULT_CXX_STDLIB=libc++ \
\
\
  -DCMAKE_C_FLAGS="-march=native -pipe \
-stdlib=libc++ -rtlib=compiler-rt -std=c18 \
-fexceptions -fcxx-exceptions -fdwarf-exceptions -gdwarf \
-flto -fwhole-program-vtables \
-I${PWD}/include \
-I${PWD}/lib/clang/8.0.0/include \
-L${PWD}/lib \
-L${PWD}/lib/clang/8.0.0/lib \
-L${PWD}/../clang-bootstrap/lib \
-L${PWD}/../clang-bootstrap/lib/clang/8.0.0/lib \
-lrt \
-Wl,--verbose -Wl,--lto-O3 -Wl,-z,defs -Wl,--compress-debug-sections=zlib \
-Wl,--rpath=${PWD} \
-Wl,--rpath=${PWD}/lib \
-Wl,--rpath=${PWD}/lib/clang/8.0.0/lib \
-Wl,-L${PWD}/lib \
-Wl,-L${PWD}/lib/clang/8.0.0/lib \
-Wl,-L${PWD}/../clang-bootstrap/lib \
-Wl,-L${PWD}/../clang-bootstrap/lib/clang/8.0.0/lib" \
\
\
-DCMAKE_CXX_FLAGS="-march=native -pipe \
-stdlib=libc++ -rtlib=compiler-rt -std=c++17 \
-fexceptions -fcxx-exceptions -fdwarf-exceptions -gdwarf \
-flto -fwhole-program-vtables \
-D__cplusplus \
-I${PWD}/include \
-I${PWD}/lib/clang/8.0.0/include \
-L${PWD}/lib \
-L${PWD}/lib/clang/8.0.0/lib \
-L${PWD}/../clang-bootstrap/lib \
-L${PWD}/../clang-bootstrap/lib/clang/8.0.0/lib \
-lrt \
-Wl,--verbose -Wl,--lto-O3 -Wl,-z,defs -Wl,--compress-debug-sections=zlib \
-Wl,--rpath=${PWD} \
-Wl,--rpath=${PWD}/lib \
-Wl,--rpath=${PWD}/lib/clang/8.0.0 \
-Wl,-L${PWD}/lib \
-Wl,-L${PWD}/lib/clang/8.0.0/lib \
-Wl,-L${PWD}/../clang-bootstrap/lib \
-Wl,-L${PWD}/../clang-bootstrap/lib/clang/8.0.0/lib" \
\
\
  -DCMAKE_SHARED_LINKER_FLAGS="-Wl,-z,nodelete" \
  -DCMAKE_MODULE_LINKER_FLAGS="-Wl,-z,nodelete" \
\
\
\
  -DLLVM_ENABLE_LTO=FULL \
  -DLLVM_ENABLE_EH=ON \
  -DLLVM_ENABLE_RTTI=ON \
 \
  -DLLVM_ENABLE_LIBCXX=ON \
\
  -DCLANG_DEFAULT_RTLIB=compiler-rt \
  -DLIBCXX_USE_COMPILER_RT=ON \
  -DLIBCXXABI_USE_COMPILER_RT=ON \
  -DLIBUNWIND_USE_COMPILER_RT=ON \
\
  -DCOMPILER_RT_USE_BUILTINS_LIBRARY=ON \
  -DCOMPILER_RT_BUILD_BUILTINS=ON \
  -DDEFAULT_COMPILER_RT_USE_BUILTINS_LIBRARY=ON \
\
  -DLIBCXX_CXX_ABI=libcxxabi \
  -DLIBCXX_CXX_ABI_INCLUDE_PATHS=/home/lk/self/workbench/llvm-project/llvm-source/llvm/projects/libcxxabi/include \
  -DLIBCXX_CXX_ABI_INTREE=1 \
 \
  -DLIBCXXABI_USE_LLVM_UNWINDER=ON \
\
  -DLLVM_TOOL_POLLY_BUILD=ON \
  -DLLVM_TOOL_DSYMUTIL_BUILD=ON \
  -DSANITIZER_CXX_ABI=libc++ \
  -DSANITIZER_CXX_ABI_INTREE=1 \
  -DLLVM_TOOL_LLVM_SHLIB_BUILD=1 \
\
 -DLLVM_USE_INTEL_JITEVENTS=YES \
 -DLLVM_TOOL_LLVM_JITLISTENER_BUILD=ON \
\
 -DLLVM_BUILD_TOOLS=ON \
 -DLLVM_BUILD_UTILS=ON \
 -DLLVM_INSTALL_UTILS=ON \
\
 -DLLVM_BUILD_TARGETS=X86 \
\
\
  -DCMAKE_VERBOSE_MAKEFILE=ON \
  -GNinja /home/lk/self/workbench/llvm-project/llvm-source/llvm   &&  {

  ninja compiler-rt-headers cxx-headers cxx_abi_headers libclang-headers   &&
  ninja builtins
  }

)



## # --gcc-toolchain=${PWD}/../clang-bootstrap/lib/clang/8.0.0 \
## # -fmodules -fcxx-modules -gmodules \

#  -DLLVM_ENABLE_MODULES=ON \
#  -DLLVM_ENABLE_LOCAL_SUBMODULE_VISIBILITY=ON \
#  -DLLVM_ENABLE_MODULE_DEBUGGING=ON \
#  -DLLVM_INSTALL_MODULEMAPS=1 \


#-fmodules -fcxx-modules --as-needed MODULES=ON

# ...  -DLIBCXXABI_ENABLE_STATIC_UNWINDER=ON \
# ... -DLIBCXX_ENABLE_STATIC_ABI_LIBRARY=ON \



## ??LLVM_ENABLE_IDE=ON

## ?? CONFIGURE_LLVM_NATIVE

## ?? [ARG_]RUNTIME_LIBRARIES





# PASSTHROUGH


## -resource-dir ${PWD}/../clang-bootstrap/lib/clang/8.0.0 \
## -I${PWD}/include -I${PWD}/include/c++/v1 \
## -isystem ${PWD}/include -isystem ${PWD}/include/c++/v1 \
## -I${PWD}/lib/clang/8.0.0/include -I${PWD}/lib/clang/8.0.0/include/c++/v1 \
## -isystem ${PWD}/lib/clang/8.0.0/include -isystem ${PWD}/lib/clang/8.0.0/include/c++/v1 \
## -I${PWD}/../clang-bootstrap/lib/clang/8.0.0/include -I${PWD}/../clang-bootstrap/lib/clang/8.0.0/include/c++/v1 \
## -isystem ${PWD}/../clang-bootstrap/lib/clang/8.0.0/include \
## -isystem ${PWD}/../clang-bootstrap/lib/clang/8.0.0/include/c++/v1 \
## -I${PWD}/../clang-bootstrap/include -I/../clang-bootstrap/include/c++/v1 \
## -isystem ${PWD}/../clang-bootstrap/include -isystem ${PWD}/../clang-bootstrap/include/c++/v1 \
