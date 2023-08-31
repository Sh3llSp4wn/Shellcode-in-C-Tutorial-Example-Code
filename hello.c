static char* msg = "Hello, Friend\n";
extern inline int _write(int, const char[], int);

int _start(){
  int size = _write(1, msg, 14);
  return 0;                                    
}

