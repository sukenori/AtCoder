#include<bits/stdc++.h>
using namespace std;
int N;
int A[65536];
int main(){
  cin>>N; int n=pow(2,N);
  for(int i=0;i<n;i++)cin>>A[i];
  cout<<find(A,A+n,min(*max_element(A,A+n/2),*max_element(A+n/2,A+n)))-A+1<<endl;
}