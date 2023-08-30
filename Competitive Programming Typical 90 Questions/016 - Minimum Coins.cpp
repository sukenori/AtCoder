#include<bits/stdc++.h>
using namespace std;
int N,c[3];
int main(){
  cin>>N>>c[0]>>c[1]>>c[2];
  sort(c,c+3);
  int a=0; for(int i=2;i>=0;i--){
    a+=N/c[i]; N%=c[i];
  }
  cout<<a<<endl;
}