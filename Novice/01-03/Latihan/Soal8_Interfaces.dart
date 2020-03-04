void main() { 
   ConsolePrinter cp= new ConsolePrinter(); 
   cp.print_data(); 
}  
class Printer { 
   void print_data() { 
      print("__________Printing Data__________"); 
   } 
}  
class ConsolePrinter implements Printer { 
   void print_data() {  
      print("__________Printing to Console__________"); 
   } 
} 