let g:neomake_c_enabled_makers = ['gcc']
let g:neomake_c_gcc_args = ['-fsyntax-only', '-std=c99', '-pedantic', '-Wall'] + split(system("make -f nvim_make.mk .iflags"))
let g:neomake_cpp_enabled_makers = g:neomake_c_enabled_makers
let g:neomake_cpp_gcc_args = g:neomake_c_gcc_args
let &path= ".," . join(split(system("make -f nvim_make.mk .ipath")), ",") . ",/usr/include"
