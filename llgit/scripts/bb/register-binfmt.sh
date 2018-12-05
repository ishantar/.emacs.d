#! /bin/sh

sudo sh -c "echo ':llvm:M::BC::/usr/local/bin/lli:' > /proc/sys/fs/binfmt_misc/register"
