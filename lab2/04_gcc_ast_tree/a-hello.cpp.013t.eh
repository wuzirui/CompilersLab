
;; Function main (main, funcdef_no=1729, decl_uid=44175, cgraph_uid=492, symbol_order=523)

int main ()
{
  struct basic_ostream & D.49066;
  int D.49064;

  D.49066 = std::operator<< <std::char_traits<char> > (&cout, "Hello World!");
  _1 = D.49066;
  std::basic_ostream<char>::operator<< (_1, endl);
  D.49064 = 0;
  goto <D.49065>;
  D.49064 = 0;
  goto <D.49065>;
  <D.49065>:
  return D.49064;
}



;; Function __static_initialization_and_destruction_0 (_Z41__static_initialization_and_destruction_0ii, funcdef_no=2232, decl_uid=49056, cgraph_uid=995, symbol_order=1053)

void __static_initialization_and_destruction_0 (int __initialize_p, int __priority)
{
  if (__initialize_p == 1) goto <D.49067>; else goto <D.49068>;
  <D.49067>:
  if (__priority == 65535) goto <D.49069>; else goto <D.49070>;
  <D.49069>:
  std::ios_base::Init::Init (&__ioinit);
  __cxxabiv1::__cxa_atexit (__dt_comp , &__ioinit, &__dso_handle);
  goto <D.49071>;
  <D.49070>:
  <D.49071>:
  goto <D.49072>;
  <D.49068>:
  <D.49072>:
  return;
}



;; Function _GLOBAL__sub_I_main (_GLOBAL__sub_I_main, funcdef_no=2233, decl_uid=49062, cgraph_uid=996, symbol_order=1172)

void _GLOBAL__sub_I_main ()
{
  __static_initialization_and_destruction_0 (1, 65535);
  return;
}


