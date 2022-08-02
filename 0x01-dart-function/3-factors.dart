int fact(int f){
if (f == 1)
return (1);
if (f <= 0)
return (0);
int r = f * fact(f - 1);
return r;
}

