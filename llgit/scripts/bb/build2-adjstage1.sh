#! /bin/sh

ninja compiler-rt-headers cxx-headers cxx_abi_headers libclang-headers
ninja builtins
ninja cxxabi cxx unwind compiler-rt libunwind.{a,so} libc++{,abi}.{a,so}

cmake \
-UCMAKE_C_FLAGS* \
-UCMAKE_CXX_FLAGS* \
\
\
-DCMAKE_C_FLAGS="-march=native -pipe  \
-stdlib=libc++ -rtlib=compiler-rt -std=c18 \
-fexceptions -fcxx-exceptions \
-fmodules -fcxx-modules \
-resource-dir=${PWD}/../clang-bootstrap/lib/clang/8.0.0 \
-I${PWD}/include \
-I${PWD}/include/c++/v1 \
-I${PWD}/lib/clang/8.0.0/include \
-I${PWD}/lib/clang/8.0.0/include/c++/v1 \
-I${PWD}/../clang-bootstrap/include \
-I${PWD}/../clang-bootstrap/include/c++/v1 \
-I${PWD}/../clang-bootstrap/lib/clang/8.0.0/include \
-I${PWD}/../clang-bootstrap/lib/clang/8.0.0/include/c++/v1 \
-isystem ${PWD}/include \
-isystem ${PWD}/lib/clang/8.0.0/include \
-isystem ${PWD}/../clang-bootstrap/include \
-isystem ${PWD}/../clang-bootstrap/lib/clang/8.0.0/include \
-L${PWD}/lib \
-L${PWD}/lib/clang/8.0.0/lib \
-L${PWD}/../clang-bootstrap/lib \
-L${PWD}/../clang-bootstrap/lib/clang/8.0.0/lib \
-lrt \
-Wl,--verbose,--lto-O3,\
-rpath,${PWD},\
-rpath,${PWD}/lib/clang/8.0.0,\
-L${PWD}/lib,\
-L${PWD}/lib/clang/8.0.0/lib,\
-L${PWD}/../clang-bootstrap/lib,\
-L${PWD}/../clang-bootstrap/lib/clang/8.0.0/lib \
-lrt" \
\
\
  -DCMAKE_CXX_FLAGS="-march=native -pipe \
-stdlib=libc++ -rtlib=compiler-rt -std=c++17 \
-fexceptions -fcxx-exceptions \
-fmodules -fcxx-modules \
-resource-dir=${PWD}/../clang-bootstrap/lib/clang/8.0.0 \
-I${PWD}/include \
-I${PWD}/include/c++/v1 \
-I${PWD}/lib/clang/8.0.0/include \
-I${PWD}/lib/clang/8.0.0/include/c++/v1 \
-I${PWD}/../clang-bootstrap/include \
-I${PWD}/../clang-bootstrap/include/c++/v1 \
-I${PWD}/../clang-bootstrap/lib/clang/8.0.0/include \
-I${PWD}/../clang-bootstrap/lib/clang/8.0.0/include/c++/v1 \
-isystem ${PWD}/include \
-isystem ${PWD}/lib/clang/8.0.0/include \
-isystem ${PWD}/../clang-bootstrap/include \
-isystem ${PWD}/../clang-bootstrap/lib/clang/8.0.0/include \
-L${PWD}/lib \
-L${PWD}/lib/clang/8.0.0/lib \
-L${PWD}/../clang-bootstrap/lib \
-L${PWD}/../clang-bootstrap/lib/clang/8.0.0/lib \
-Wl,--verbose,--lto-O3,\
-rpath,${PWD},\
-rpath,${PWD}/lib/clang/8.0.0,\
-L${PWD}/lib,\
-L${PWD}/lib/clang/8.0.0/lib,\
-L${PWD}/../clang-bootstrap/lib,\
-L${PWD}/../clang-bootstrap/lib/clang/8.0.0/lib \
-lrt" \
\
\
\
  -GNinja   ./
