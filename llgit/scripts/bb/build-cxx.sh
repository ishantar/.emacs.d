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
  -DCMAKE_INSTALL_PREFIX=/usr \
  -DCLANG_BUILD_TOOLS=ON \
  -DCLANG_DEFAULT_CXX_STDLIB=libc++ \
  -DCLANG_DEFAULT_LINKER=ld.lld \
  -DCLANG_DEFAULT_RTLIB=compiler-rt \
  -DCLANG_DEFAULT_STD_C=c11 \
  -DCLANG_DEFAULT_STD_CXX=cxx17 \
  -DCMAKE_AR=/usr/bin/llvm-ar \
  -DCMAKE_RANLIB=/usr/bin/llvm-ranlib \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_C_COMPILER=clang \
  -DCMAKE_CXX_COMPILER=clang++ \
\
  -DCMAKE_C_FLAGS="-march=native -pipe -Qunused-arguments -rtlib=compiler-rt -fuse-ld=lld -B/usr/lib/crt-objects \
-Wl,--verbose,-rpath=./lib/clang/8.0.0/lib,-rpath=./lib,-L/usr/lib/clang/8.0.0/lib,-O3,--lto-O3 \
-L./lib/clang/8.0.0/lib -L./lib -L/usr/lib/clang/8.0.0/lib -fexceptions" \
\
  -DCMAKE_CXX_FLAGS="-march=native -pipe -Qunused-arguments -rtlib=compiler-rt -fuse-ld=lld -B/usr/lib/crt-objects \
-Wl,--verbose,-rpath=./lib/clang/8.0.0/lib,-rpath=./lib,-L/usr/lib/clang/8.0.0/lib,-O3,--lto-O3 \
-L./lib -L./lib/clang/8.0.0/lib -L/usr/lib/clang/8.0.0/lib -fexceptions -fdwarf-exceptions -stdlib=libc++" \
\
-DCMAKE_EXE_LINKER_FLAGS="-Wl,--verbose,-rpath=./lib/clang/8.0.0/lib,-rpath=./lib,\
-L/usr/lib/clang/8.0.0/lib,-O3,--lto-O3" \
  -DCOMPILER_RT_BUILD_BUILTINS=ON \
  -DDEFAULT_COMPILER_RT_USE_BUILTINS_LIBRARY=ON \
  -DCOMPILER_RT_USE_BUILTINS_LIBRARY=ON \
  -DSANITIZER_CXX_ABI=libc++ \
  -DLLVM_TOOL_LLVM_SHLIB_BUILD=ON \
  -DLIBCXXABI_USE_COMPILER_RT=ON \
  -DLIBCXXABI_USE_LLVM_UNWINDER=ON \
  -DLIBCXX_CXX_ABI=libcxxabi \
  -DLIBCXX_CXX_ABI_INCLUDE_PATHS=/home/lk/self/workbench/llvm-project/llvm-source/llvm/projects/libcxxabi/include \
  -DLIBCXX_CXX_ABI_INTREE=1 \
  -DLIBCXX_USE_COMPILER_RT=ON \
  -DLIBUNWIND_USE_COMPILER_RT=ON \
  -DLLVM_ENABLE_EH=ON \
  -DLLVM_ENABLE_LIBCXX=ON \
  -DLLVM_ENABLE_LLD=ON \
  -DLLVM_ENABLE_LTO=THIN \
  -DLLVM_ENABLE_MODULES=ON \
  -DLLVM_ENABLE_OCAMLDOC=OFF \
  -DLLVM_ENABLE_RTTI=ON \
  -DLLVM_ENABLE_RUNTIME=ON \
  -DLLVM_TARGETS_TO_BUILD=X86 \
  \
 \
  /home/lk/self/workbench/llvm-project/llvm-source/llvm

 )


ninja builtins

ninja compiler-rt

ninja unwind

ninja cxx-headers cxxabi cxx

ninja all
