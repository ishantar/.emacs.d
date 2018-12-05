#! /bin/sh

(
  unset CC
  unset CFLAGS
  unset CXX
  unset CXXFLAGS
  unset LD
  unset LDFLAGS

  cmake -GNinja \
 \
 \
  -DCMAKE_C_COMPILER=/home/lk/self/workbench/llvm-project/build/cxx/bin/clang \
  -DCMAKE_CXX_COMPILER=/home/lk/self/workbench/llvm-project/build/cxx/bin/clang++ \
  -DCLANG_DEFAULT_LINKER=/home/lk/self/workbench/llvm-project/build/cxx/bin/ld.lld \
  -DCMAKE_LINKER=/home/lk/self/workbench/llvm-project/build/cxx/bin/ld.lld \
  -DCMAKE_RANLIB=/home/lk/self/workbench/llvm-project/build/cxx/bin/llvm-ranlib \
  -DCMAKE_AR=/home/lk/self/workbench/llvm-project/build/cxx/bin/llvm-ar \
 \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_POLICY_DEFAULT_CMP0075=NEW \
  -DCMAKE_POLICY_DEFAULT_CMP0048=NEW \
  -DLLVM_TARGETS_TO_BUILD=X86 \
  -DCLANG_BUILD_TOOLS=ON \
 \
  -DCLANG_DEFAULT_STD_C=c11 \
  -DCLANG_DEFAULT_STD_CXX=cxx17 \
  -DCLANG_DEFAULT_CXX_STDLIB=libc++ \
\
  -DCMAKE_C_FLAGS="-march=native -pipe -Qunused-arguments -rtlib=compiler-rt -gdwarf \
-fexceptions -fuse-ld=/home/lk/self/workbench/llvm-project/build/cxx/bin/ld.lld -I${PWD}/./include \
-Wl,--verbose,-rpath,${PWD}/./lib/clang/8.0.0/lib,-rpath,${PWD}/./lib,\
-L/home/lk/self/workbench/llvm-project/build/cxx/lib,-O3,--lto-O3,\
-L${PWD}/./lib,-L/home/lk/self/workbench/llvm-project/build/cxx/lib/clang/8.0.0/lib \
-L/home/lk/self/workbench/llvm-project/build/cxx/lib -L/home/lk/self/workbench/llvm-project/build/cxx/lib/clang/8.0.0/lib" \
\
  -DCMAKE_CXX_FLAGS="-march=native -pipe -Qunused-arguments -rtlib=compiler-rt -gdwarf -stdlib=libc++ \
-fexceptions -fuse-ld=/home/lk/self/workbench/llvm-project/build/cxx/bin/ld.lld -I${PWD}/./include -fdwarf-exceptions \
-Wl,--verbose,-rpath,${PWD}/./lib/clang/8.0.0/lib,-rpath,${PWD}/./lib,\
-L/home/lk/self/workbench/llvm-project/build/cxx/lib,-O3,--lto-O3,\
-L${PWD}/./lib,-L/home/lk/self/workbench/llvm-project/build/cxx/lib/clang/8.0.0/lib \
-L/home/lk/self/workbench/llvm-project/build/cxx/lib -L/home/lk/self/workbench/llvm-project/build/cxx/lib/clang/8.0.0/lib" \
\
  -DCMAKE_EXE_LINKER_FLAGS="-Wl,--verbose,-rpath,${PWD}/./lib/clang/8.0.0/lib,-rpath,${PWD}/./lib,\
-L/home/lk/self/workbench/llvm-project/build/cxx/lib,-O3,--lto-O3,\
\
  -DCMAKE_LINKER_FLAGS="-Wl,--verbose,-rpath,${PWD}/./lib/clang/8.0.0/lib,-rpath,${PWD}/./lib,\
-L/home/lk/self/workbench/llvm-project/build/cxx/lib,-O3,--lto-O3,\
\
  -DLLVM_ENABLE_LIBCXX=ON \
  -DLLVM_ENABLE_MODULES=ON \
  -DLLVM_ENABLE_LTO=THIN \
  -DLLVM_ENABLE_EH=ON \
  -DLLVM_ENABLE_RTTI=ON \
  -DLLVM_ENABLE_RUNTIME=ON \
 \
  -DLIBCXXABI_USE_LLVM_UNWINDER=ON \
  -DCLANG_DEFAULT_RTLIB=compiler-rt \
  -DLIBCXX_USE_COMPILER_RT=ON \
  -DLIBCXXABI_USE_COMPILER_RT=ON \
  -DLIBUNWIND_USE_COMPILER_RT=ON \
  -DLIBCXX_CXX_ABI=libcxxabi \
  -DLIBCXX_CXX_ABI_INCLUDE_PATHS=/home/lk/self/workbench/llvm-project/llvm-source/llvm/projects/libcxxabi/include \
  -DLIBCXX_CXX_ABI_INTREE=1 \
 \
  -DCOMPILER_RT_USE_BUILTINS_LIBRARY=ON \
  -DDEFAULT_COMPILER_RT_USE_BUILTINS_LIBRARY=ON \
  -DCOMPILER_RT_BUILD_BUILTINS=ON \
  -DLLVM_TOOL_POLLY_BUILD=ON \
  -DSANITIZER_CXX_ABI=libc++ \
  -DLLVM_TOOL_LLVM_SHLIB_BUILD=ON \
  -DLLVM_TARGETS_TO_BUILD="host" \
\
\
\
  /home/lk/self/workbench/llvm-project/llvm-source/llvm

 )

#ninja stage2

#  -DCMAKE_EXE_LINKER_FLAGS="-Wl,--verbose,--nostdlib,-rpath=/usr/local/lib/clang/8.0.0/lib,-rpath=/usr/local/lib,-O3,--lto-O3,-L/usr/lib" \
#  -DCMAKE_SHARED_LINKER_FLAGS="-Wl,--verbose,-nostdlib,-rpath=/usr/local/lib/clang/8.0.0/lib,-rpath=/usr/local/lib,-O3,--lto-O3,-L/usr/lib" \
#  -DCMAKE_MODULE_LINKER_FLAGS="-Wl,--verbose,-nostdlib,-rpath=/usr/local/lib/clang/8.0.0/lib,-rpath=/usr/local/lib,-O3,--lto-O3,-L/usr/lib" \

#-DDEFAULT_COMPILER_RT_USE_BUILTINS_LIBRARY
