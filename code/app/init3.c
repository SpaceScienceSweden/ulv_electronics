//called before main()
//in separate file because -fstack-usage doesn't like naked functions
__attribute__ ((naked, section (".init3"))) void setup_xmem (void) {
  __asm("call clear_xmem");
}

