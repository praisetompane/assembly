#
# a quick utility to disassemble an object file
# example usage:
# ./dissamble.sh 4_experiments/1_core_language/x86/64_bit/intel/hello_assembly.o

object_file=$1
objdump -d $object_file 