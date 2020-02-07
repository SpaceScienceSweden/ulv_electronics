open Cil_types

(* gcc-avr -mint8 *)

(* Have TARGET_INT8 = 1
#define INT_TYPE_SIZE 8
#define SHORT_TYPE_SIZE INT_TYPE_SIZE
#define LONG_TYPE_SIZE 16
#define LONG_LONG_TYPE_SIZE 32
#define FLOAT_TYPE_SIZE 32
#define DOUBLE_TYPE_SIZE 32
#define LONG_DOUBLE_TYPE_SIZE 32
#define LONG_LONG_ACCUM_TYPE_SIZE 64

#define DEFAULT_SIGNED_CHAR 1

#define SIZE_TYPE ("long unsigned int")
#define PTRDIFF_TYPE ("long int")

#define WCHAR_TYPE "int"
#define WINT_TYPE "int"
#define WCHAR_TYPE_SIZE 16
*)

let gcc_avr_8_machdep =
{
  version          = "0.0";
  compiler         = "avr-gcc";
  cpp_arch_flags   = ["-mint8"];
  sizeof_short     = 1;
  sizeof_int       = 1;
  sizeof_long      = 2;
  sizeof_longlong  = 4;
  sizeof_ptr       = 2;
  sizeof_float     = 4;
  sizeof_double    = 4;
  sizeof_longdouble= 4;
  sizeof_void      = 1;
  sizeof_fun       = 1;
  size_t = "long unsigned int";
  wchar_t = "int";
  ptrdiff_t = "long int";
  alignof_short = 1;
  alignof_int = 1;
  alignof_long = 1;
  alignof_longlong = 1;
  alignof_ptr = 1;
  alignof_float = 1;
  alignof_double = 1;
  alignof_longdouble = 1;
  alignof_str = 1;
  alignof_fun = 1;
  (* Align to page boundaries *)
  alignof_aligned = 256;
  char_is_unsigned = false;
  const_string_literals = true;
  little_endian = true;
  underscore_name = true ;
  has__builtin_va_list = true;
  __thread_is_keyword = true;
}

let () = File.new_machdep "gcc_avr_8" gcc_avr_8_machdep
