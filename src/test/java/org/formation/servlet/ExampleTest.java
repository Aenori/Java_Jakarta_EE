package org.formation.servlet;

import static org.junit.Assert.assertNotEquals;

import java.util.ArrayList;
import java.util.Arrays;

import org.junit.Test;

import junit.framework.TestCase;

public class ExampleTest extends TestCase {
	public void testCase() 
	{    
	    String originalObject = "howtodoinjava.com";
	    String cloneObject = originalObject;
	    String otherObject = "example.com";    
	    
	    //Test will pass
	    assertNotSame(originalObject, otherObject);    
	    
	    //Test will fail
	    // assertNotSame(originalObject, cloneObject);    
	    
	    //Test will pass
	    assertSame(originalObject, cloneObject);    
	    
	    // Test will fail
	    // assertSame(originalObject, otherObject);
	}
	
	public void testCase2() 
	{    
	    ArrayList<Integer> originalObject = new ArrayList<Integer>(Arrays.asList(1, 2));
	    ArrayList<Integer> sameObject = originalObject;
	    
	    ArrayList<Integer> cloneObject = (ArrayList<Integer>)originalObject.clone();
	    
	    ArrayList<Integer> otherObject = new ArrayList<Integer>(Arrays.asList(1, 2, 3));    
	    	    
	    // Comparing to sameObject
	    assertSame(originalObject, sameObject);
	    
	    // Comparing to cloneObject
	    assertNotSame(originalObject, cloneObject);
	    assertEquals(originalObject, cloneObject);
	    
	    // Comparing to otherObject
	    assertNotEquals(originalObject, otherObject);
	    
	    originalObject.add(3);
	   
	    // Comparing to sameObject
	    assertSame(originalObject, sameObject);
	    
	    // Comparing to cloneObject
	    assertNotEquals(originalObject, cloneObject);
	    
	    // Comparing to otherObject
	    assertNotSame(originalObject, otherObject);
	    assertEquals(originalObject, otherObject);
	    
	    System.out.print("originalObject : ");
	    System.out.println(originalObject);
	    System.out.print("sameObject : ");
	    System.out.println(sameObject);
	    
	    originalObject = new ArrayList<Integer>(Arrays.asList(4, 5));
	    
	    System.out.print("originalObject : ");
	    System.out.println(originalObject);
	    System.out.print("sameObject : ");
	    System.out.println(sameObject);
	    
	    // But be careful
	    ArrayList<ArrayList<Integer>> originalObject2 = new ArrayList<ArrayList<Integer>>();
	    originalObject2.add(new ArrayList());
	    
	    ArrayList<ArrayList<Integer>> cloneObject2 = (ArrayList<ArrayList<Integer>>)originalObject2.clone();
	
	    assertNotSame(originalObject2, cloneObject2);
	    assertEquals(originalObject2, cloneObject2);
	    
	    assertSame(originalObject2.get(0), cloneObject2.get(0));
	}
}
