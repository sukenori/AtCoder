#include<bits/stdc++.h>
using namespace std;
string N;
int K;
int main(){
  cin>>N>>K;
  while(K--){int i;
    reverse(N.begin(),N.end());
    int64_t n=0; for(i=0;i<N.size();i++)n+=(N[i]-'0')*pow(8,i);
    string N9=""; i=1; while(n>0){
      N9=(n%(int64_t)pow(9,i)+'0')+N9; n-=n%(int64_t)pow(9,i);
    }
    N=""; for(i=0;i<N.size();i++)N=N+(N9[i]=='8'?'5':N9[i]);
  }
  cout<<N<<endl;
}