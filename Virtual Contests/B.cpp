#include<bits/stdc++.h>
using namespace std;
int N;
int64_t A[100000],B[100000];
int main(){
  cin>>N;
  for(int i=0;i<N;i++)cin>>A[i];
  for(int i=0;i<N;i++)cin>>B[i];
  int64_t a=0; for(int i=0;i<N;i++)a+=A[i]*B[i];
}