#include<bits/stdc++.h>
using namespace std;
int64_t N,C;
multimap<int,int64_t>c;
int main(){
  cin>>N>>C;
  int64_t ai,bi,ci;
  for(int i=0;i<N;i++){cin>>ai>>bi>>ci;
    c.insert({ai,ci}); c.insert({bi+1,-ci});
  }
  int64_t pi=0,a=0; ci=0; for(auto i:c){
    a+=(ci<C?ci:C)*(i.first-pi); pi=i.first; ci+=i.second;
  }
  cout<<a<<endl;
}