// asynchronous ฟังก์ชั่น
// ignore_for_file: avoid_print

void main () async {
  print("Run 1");
  print(await createOrderMessage());
  print("Run 2");
  print(run3());
  print("Run 4");
  print(await run5());
  print("Run 6");
}
// synchronous ฟังก์ชั่น
String run3(){
  return "Run 3";
}
// asynchronous ฟังก์ชั่น
Future<String> run5() async {
  return Future.delayed(const Duration(seconds: 4), () => 'Run 5'); 
}
Future<String> createOrderMessage() async {
  var order = await getUserOrder();   
  return 'Your order is: $order'; 
}
Future<String> getUserOrder() {
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte'); 
}