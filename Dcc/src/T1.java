public class T1 {
public static void main(String[] args) {
int k = 10 ;
int[] num = new int[k];
for(int i = 0;i<num.length;i++){
num[i] = rodem();
}
print(num);
}
public static int rodem(){
int i = (int)(Math.random()*100) ;
if(i>50){
return i ;
}
return rodem();
}
public static void print(int[] n){
for(int i = 0;i<n.length;i++){
if(i != 0){
System.out.print(",") ;
}
System.out.print(n[i]) ;
}
}
}
