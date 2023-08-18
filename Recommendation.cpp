#include<bits/stdc++.h>
using namespace std;
int N;
int A[200000];
int main(){
  cin>>N;
  for(int i=0;i<N;i++)cin>>A[i];
  sort(A,A+N);
  int a=0; if(A[0]==A[1])a++;
  for(int i=1;i<N;i++){
    for(int j=0;j<i;j++)if(A[i]%A[j]==0){a++; break;}
  }
  cout<<N-a<<endl;
}