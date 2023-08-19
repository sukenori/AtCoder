#include<bits/stdc++.h>
using namespace std;
int N;
vector<int>G[200001];
int d[200001];
int main(){
  cin>>N;
  int C; for(int i=1;i<=N;i++){cin>>C; int P;
    for(int j=0;j<C;j++){cin>>P; G[i].push_back(P);}
  }
  queue<int>q; q.push(1); d[1]=1;
  while(q.size()){
    int i=q.front(); q.pop();
    for(int j:G[i]){if(!d[j])q.push(j); d[j]=d[i]+1;}
  }
  set<pair<int,int>,greater<pair<int,int>>>s;
  for(int i=1;i<=N;i++)s.insert({d[i],i});
  for(auto si:s)if(si.first>1)cout<<si.second<<' ';
}