public class ListDemo {
   public static void main(){
    List <String> fruits = new List<String>();
    fruits.add('Apple');
    fruits.add('Banana');
    fruits.add('Orange');
    fruits.add(1,'Mango');
    System.debug('Fruits List: ' + fruits);
   }
}