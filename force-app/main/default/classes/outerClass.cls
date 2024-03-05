public class outerClass {
    public List<innerClass> outerMethod(){			//outerMethod returnig List of innerClass. instead of being void.
        List<innerClass> wrappList = new List<innerClass>();	
        innerClass innerObj = new innerClass('AAA', 111);		//calling inner class in outer method.
        innerClass innerObj1 = new innerClass('BBB', 222); 
        wrappList.add(innerObj);			//add innerClass object in List.
        wrappList.add(innerObj1);
        //System.debug(wrappList);
        return wrappList;			//return List of innerClass
    } 
    public class innerClass{		//Wrapper Class
        public string str;
        public integer intVar;
    public innerClass(String str, Integer intVar){			//Constructor of Inner Class
            this.str = str;					//variable with this. keyword is Global Variable
        	this.intVar = intVar;
       
        }
    }
}