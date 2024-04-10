import cs1.Keyboard;

public class HelloWorld {

	public static void main(String[] args) {
		System.out.println("Hello World");
		String name = new String("Jordan Millett");
		System.out.println(name);
        System.out.println(name.charAt(7));	
        System.out.println(name.indexOf("a"));
        System.out.println(name.substring(7,14));
        System.out.println(name.length());
        System.out.println(name.replace('l', '1'));
        System.out.println(name + " is a good programmer.");
        name = name.concat(" teaches.");
        System.out.println(name);
        int data = 0;
        System.out.println("Type in your favorite number: ");
        data = Keyboard.readInt();
        System.out.println(data);
        
	}
}
