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
  -DCMAKE_C_COMPILER=/home/lk/self/workbench/llvm-project/build/stage1/bin/clang \
  -DCMAKE_CXX_COMPILER=/home/lk/self/workbench/llvm-project/build/stage1/bin/clang++ \
  -DCLANG_DEFAULT_LINKER=/home/lk/self/workbench/llvm-project/build/stage1/bin/ld.lld \
-DCLANG_DEFAULT_OBJCOPY=/home/lk/self/workbench/llvm-project/build/stage1/bin/llvm-objcopy \
  -DCMAKE_LINKER=/home/lk/self/workbench/llvm-project/build/stage1/bin/ld.lld \
  -DCMAKE_RANLIB=/home/lk/self/workbench/llvm-project/build/stage1/bin/llvm-ranlib \
  -DCMAKE_AR=/home/lk/self/workbench/llvm-project/build/stage1/bin/llvm-ar \
 \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_POLICY_DEFAULT_CMP0075=NEW \
  -DCMAKE_POLICY_DEFAULT_CMP0048=NEW \
  -DLIBCXX_BUILD_SHARED=ON \
  -DLLVM_BUILD_EXTERNAL_COMPILER_RT=ON \
  -DLLVM_TARGETS_TO_BUILD="Native;X86" \
  -DCLANG_BUILD_TOOLS=ON \
  -DCLANG_ENABLE_BOOTSTRAP=ON \
 \
  -DCLANG_BOOTSTRAP_EXTRA_DEPS="builtins;compiler-rt;unwind;cxx-headers;cxxabi;cxx;Polly;libclang" \
 \
  -DCLANG_DEFAULT_STD_C=c11 \
  -DCLANG_DEFAULT_STD_CXX=cxx17 \
  -DCLANG_DEFAULT_CXX_STDLIB=libc++ \
\
  -DCMAKE_C_FLAGS="-march=native -pipe -Qunused-arguments -rtlib=compiler-rt -gdwarf \
-fexceptions -fuse-ld=/home/lk/self/workbench/llvm-project/build/stage1/bin/ld.lld -I/home/lk/self/workbench/llvm-project/build/clang-boot2/./include \
-Wl,--verbose,-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib/clang/8.0.0/lib,-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib,\
-rpath,/home/lk/self/workbench/llvm-project/build/stage1/lib/clang/8.0.0/lib,-rpath=/home/lk/self/workbench/llvm-project/build/stage1/lib,\
-L/home/lk/self/workbench/llvm-project/build/stage1/lib,-O3,--lto-O3,\
-L/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib,-L/home/lk/self/workbench/llvm-project/build/stage1/lib/clang/8.0.0/lib \
-L/home/lk/self/workbench/llvm-project/build/stage1/lib -L/home/lk/self/workbench/llvm-project/build/stage1/lib/clang/8.0.0/lib" \
\
  -DCMAKE_CXX_FLAGS="-march=native -pipe -Qunused-arguments -rtlib=compiler-rt -gdwarf -stdlib=libc++ \
-fexceptions -fuse-ld=/home/lk/self/workbench/llvm-project/build/stage1/bin/ld.lld -I/home/lk/self/workbench/llvm-project/build/clang-boot2/./include -fdwarf-exceptions \
-Wl,--verbose,-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib/clang/8.0.0/lib,-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib,\
-rpath,/home/lk/self/workbench/llvm-project/build/stage1/lib/clang/8.0.0/lib,-rpath=/home/lk/self/workbench/llvm-project/build/stage1/lib,\
-L/home/lk/self/workbench/llvm-project/build/stage1/lib,-O3,--lto-O3,\
-L/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib,-L/home/lk/self/workbench/llvm-project/build/stage1/lib/clang/8.0.0/lib \
-L/home/lk/self/workbench/llvm-project/build/stage1/lib -L/home/lk/self/workbench/llvm-project/build/stage1/lib/clang/8.0.0/lib" \
\
  -DCMAKE_EXE_LINKER_FLAGS="-Wl,--verbose,-rpath,/home/lk/self/workbench/llvm-project/build/stage1/lib/clang/8.0.0/lib,\
-rpath=/home/lk/self/workbench/llvm-project/build/stage1/lib,-L/home/lk/self/workbench/llvm-project/build/stage1/lib,-O3,--lto-O3,\
\
  -DCMAKE_LINKER_FLAGS="-Wl,--verbose,-rpath,/home/lk/self/workbench/llvm-project/build/stage1/lib/clang/8.0.0/lib,\
-rpath=/home/lk/self/workbench/llvm-project/build/stage1/lib,-L/home/lk/self/workbench/llvm-project/build/stage1/lib,-O3,--lto-O3,\
\
  -DLLVM_ENABLE_LIBCXX=ON \
  -DLLVM_ENABLE_MODULES=ON \
  -DLLVM_ENABLE_LLD=ON \
  -DLLVM_ENABLE_LTO=THIN \
  -DLLVM_ENABLE_EH=ON \
  -DLLVM_ENABLE_RTTI=ON \
  -DLLVM_ENABLE_OCAMLDOC=OFF \
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
  -DLLVM_TOOL_DSYMUTIL_BUILD=ON \
  -DSANITIZER_CXX_ABI=libc++ \
  -DSANITIZER_CXX_ABI_INTREE=ON \
  -DLLVM_TOOL_LLVM_SHLIB_BUILD=ON \
\
\
  -DLIBCXXABI_ENABLE_STATIC_UNWINDER=ON \
  -DLIBCXXABI_INSTALL_STATIC_LIBRARY=OFF \
  -DLIBCXXABI_STATICALLY_LINK_UNWINDER_IN_SHARED_LIBRARY=OFF \
  -DLIBCXX_ENABLE_STATIC_ABI_LIBRARY=ON \
  -DLIBCXX_STATICALLY_LINK_ABI_IN_SHARED_LIBRARY=OFF \
  -DLIBCXX_ABI_VERSION=2 \
  -DLLVM_ENABLE_PER_TARGET_RUNTIME_DIR=ON \
\
  -DBOOTSTRAP_CMAKE_C_COMPILER=/home/lk/self/workbench/llvm-project/build/clang-boot2/./bin/clang \
  -DBOOTSTRAP_CMAKE_CXX_COMPILER=/home/lk/self/workbench/llvm-project/build/clang-boot2/./bin/clang++ \
  -DBOOTSTRAP_CLANG_DEFAULT_LINKER=/home/lk/self/workbench/llvm-project/build/clang-boot2/./bin/ld.lld \
  -DBOOTSTRAP_CMAKE_RANLIB=/home/lk/self/workbench/llvm-project/build/clang-boot2/./bin/llvm-ranlib \
  -DBOOTSTRAP_CMAKE_AR=/home/lk/self/workbench/llvm-project/build/clang-boot2/./bin/llvm-ar \
  -DBOOTSTRAP_CMAKE_LINKER=/home/lk/self/workbench/llvm-project/build/clang-boot2/./bin/ld.lld \
  -DBOOTSTRAP_CMAKE_EXE_LINKER=/home/lk/self/workbench/llvm-project/build/clang-boot2/./bin/ld.lld \
\
  -DBOOTSTRAP_CMAKE_BUILD_TYPE=Release \
  -DBOOTSTRAP_CMAKE_POLICY_DEFAULT_CMP0075=NEW \
  -DBOOTSTRAP_CMAKE_POLICY_DEFAULT_CMP0048=NEW \
  -DBOOTSTRAP_LIBCXX_BUILD_SHARED=ON \
  -DBOOTSTRAP_LLVM_TARGETS_TO_BUILD="Native;X86" \
  -DBOOTSTRAP_CLANG_BUILD_TOOLS=ON \
 \
  -DBOOTSTRAP_CLANG_DEFAULT_STD_C=c11 \
  -DBOOTSTRAP_CLANG_DEFAULT_STD_CXX=cxx17 \
  -DBOOTSTRAP_CMAKE_C_FLAGS="-march=native -pipe -Qunused-arguments -rtlib=compiler-rt -gdwarf -nodefaultlibs \
-fexceptions -fuse-ld=/home/lk/self/workbench/llvm-project/build/clang-boot2/./bin/ld.lld -I/home/lk/self/workbench/llvm-project/build/clang-boot2/./include \
-Wl,--verbose,-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib/clang/8.0.0/lib,-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib,\
-L/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib,-O3,--lto-O3,-L/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib/clang/8.0.0/lib,\
-L/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib \
-L/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib/clang/8.0.0/lib" \
\
  -DBOOTSTRAP_CMAKE_CXX_FLAGS="-march=native -pipe -Qunused-arguments -rtlib=compiler-rt -gdwarf -stdlib=libc++ -nodefaultlibs \
-fexceptions -fuse-ld=/home/lk/self/workbench/llvm-project/build/clang-boot2/./bin/ld.lld -I/home/lk/self/workbench/llvm-project/build/clang-boot2/./include -fdwarf-exceptions \
-Wl,--verbose,-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib/clang/8.0.0/lib,-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib,\
-L/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib,-O3,--lto-O3,-L/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib/clang/8.0.0/lib,\
-L/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib \
-L/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib/clang/8.0.0/lib" \
\
-DBOOTSTRAP_CMAKE_EXE_LINKER_FLAGS="-Wl,--verbose,-nostdlib,-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib/clang/8.0.0/lib,\
-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib,-O3,--lto-O3,\
--dynamic-linker=/home/lk/self/workbench/llvm-project/build/clang-boot2/./bin/ld.lld,-lunwind,-lc,-lm,\
-L/usr/local/lib,-L/usr/lib" \
\
-DBOOTSTRAP_CMAKE_SHARED_LINKER_FLAGS="-Wl,--verbose,-nostdlib,-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib/clang/8.0.0/lib,\
-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib,-O3,--lto-O3,\
--dynamic-linker=/home/lk/self/workbench/llvm-project/build/clang-boot2/./bin/ld.lld,-lunwind,-lc,-lm,\
-L/usr/local/lib,-L/usr/lib" \
\
-DBOOTSTRAP_CMAKE_MODULE_LINKER_FLAGS="-Wl,--verbose,-nostdlib,-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib/clang/8.0.0/lib,\
-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib,-O3,--lto-O3,\
--dynamic-linker=/home/lk/self/workbench/llvm-project/build/clang-boot2/./bin/ld.lld,-lunwind,-lc,-lm,\
-L/usr/local/lib,-L/usr/lib" \
\
-DBOOTSTRAP_CMAKE_LINKER_FLAGS="-Wl,--verbose,-nostdlib,-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib/clang/8.0.0/lib,\
-rpath,/home/lk/self/workbench/llvm-project/build/clang-boot2/./lib,-O3,--lto-O3,\
--dynamic-linker=/home/lk/self/workbench/llvm-project/build/clang-boot2/./bin/ld.lld,-lunwind,-lc,-lm,\
-L/usr/local/lib,-L/usr/lib" \
\
\
  -DBOOTSTRAP_LLVM_ENABLE_LIBCXX=ON \
  -DBOOTSTRAP_CLANG_DEFAULT_CXX_STDLIB=libc++ \
  -DBOOTSTRAP_LLVM_ENABLE_MODULES=ON \
  -DBOOTSTRAP_LLVM_ENABLE_LLD=ON \
  -DBOOTSTRAP_LLVM_ENABLE_LTO=THIN \
  -DBOOTSTRAP_LLVM_ENABLE_EH=ON \
  -DBOOTSTRAP_LLVM_ENABLE_RTTI=ON \
  -DBOOTSTRAP_LLVM_ENABLE_OCAMLDOC=OFF \
 \
  -DBOOTSTRAP_LIBCXXABI_USE_LLVM_UNWINDER=ON \
  -DBOOTSTRAP_CLANG_DEFAULT_RTLIB=compiler-rt \
  -DBOOTSTRAP_LIBCXX_USE_COMPILER_RT=ON \
  -DBOOTSTRAP_LIBCXXABI_USE_COMPILER_RT=ON \
  -DBOOTSTRAP_LIBUNWIND_USE_COMPILER_RT=ON \
  -DBOOTSTRAP_LIBCXX_CXX_ABI=libcxxabi \
-DBOOTSTRAP_LIBCXX_CXX_ABI_INCLUDE_PATHS=/home/lk/self/workbench/llvm-project/llvm-source/llvm/projects/libcxxabi/include \
-DBOOTSTRAP_LIBCXX_CXX_ABI_INTREE=1 \
 \
-DBOOTSTRAP_COMPILER_RT_USE_BUILTINS_LIBRARY=ON \
-DBOOTSTRAP_COMPILER_RT_BUILD_BUILTINS=ON \
-DBOOTSTRAP_LLVM_INSTALL_UTILS=ON \
-DBOOTSTRAP_LLVM_BUILD_LLVM_SHLIB=ON \
-DBOOTSTRAP_LLVM_TOOL_POLLY_BUILD=ON \
-DLLVM_TOOL_DSYMUTIL_BUILD=ON \
\
-DBOOTSTRAP_SANITIZER_CXX_ABI=libc++ \
-DBOOTSTRAP_SANITIZER_CXX_ABI_INTREE=ON \
-DBOOTSTRAP_LLVM_TOOL_LLVM_SHLIB_BUILD=ON \
-DBOOTSTRAP_LLVM_TOOL_CLANG_TOOLS_EXTRA_BUILD=ON \
-DBOOTSTRAP_LLVM_TOOL_LLD_BUILD=ON \
-DBOOTSTRAP_DEFAULT_COMPILER_RT_USE_BUILTINS_LIBRARY=ON \
\
\
  /home/lk/self/workbench/llvm-project/llvm-source/llvm

 )

#ninja stage2

#  -DCMAKE_EXE_LINKER_FLAGS="-Wl,--verbose,--nostdlib,-rpath=/usr/local/lib/clang/8.0.0/lib,-rpath=/usr/local/lib,-O3,--lto-O3,-L/usr/lib" \
#  -DCMAKE_SHARED_LINKER_FLAGS="-Wl,--verbose,-nostdlib,-rpath=/usr/local/lib/clang/8.0.0/lib,-rpath=/usr/local/lib,-O3,--lto-O3,-L/usr/lib" \
#  -DCMAKE_MODULE_LINKER_FLAGS="-Wl,--verbose,-nostdlib,-rpath=/usr/local/lib/clang/8.0.0/lib,-rpath=/usr/local/lib,-O3,--lto-O3,-L/usr/lib" \

#-DDEFAULT_COMPILER_RT_USE_BUILTINS_LIBRARY
