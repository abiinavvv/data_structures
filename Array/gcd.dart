class Solution {
  int findGCD(List<int> nums) {
    int max =nums[0];
    int min = nums[0];
    int gcdMax ;
    for(int arr in nums){
        if(arr > max){
            max = arr;
        }
      if(arr<min){
            min = arr;
        }
    }
    gcdMax =1;
    for(int i = 1;i<=min;i++){
        if(max % 1 == 0 && min % i == 0){
          gcdMax =i;
        }
    }
    return gcdMax;
  }
}
void main(){
  Solution sl = Solution();
  List<int> nums = [7,5,6,8,3];
  print(sl.findGCD(nums));
}