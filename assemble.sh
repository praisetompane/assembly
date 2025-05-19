#
# a quick utility to:
#   - assemble assembly code into object code
#   - link it into executable ELF(Extensible and Linkable Format)
# example usage:
# ./assemble.sh 4_experiments/1_core_language/x86/64_bit/intel/1_hello_world.asm

assembly_source_file=$1
object_code_file=$assembly_source_file.o
executable_code_file=$assembly_source_file.e

echo "Assembling code into object code and saving in file: $object_code_file"
    as $assembly_source_file -o $object_code_file
echo "Done Assembling"

echo ""

echo "Linking object code and saving in file: $executable_code_file"
    gcc -o $executable_code_file $object_code_file -nostdlib -static
echo "Done Linking"