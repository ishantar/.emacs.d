#! /bin/bash --

shopt -s extglob

. ${0%/*([^/])}/project.variables
. ${scripts}/lib/pathtrim.function
. ${scripts}/lib/get_objdir.function

#echo $(get_objdir ${@})
echo ${_project_vars[0]}
echo ${!_project_vars[0]}
