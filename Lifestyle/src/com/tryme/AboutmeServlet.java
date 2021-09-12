package com.tryme;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AboutmeServlet extends HttpServlet {
	
	
	static int x;
	static boolean betweenHeight(int x,int min,int max) 
	{
		  return x >= min && x <= max;
		}
	
	static boolean maxWeight(int x,int min,int max) 
	{
		  return x >= min && x <= max;
		}
	
	static float Calcbmi(int h,int w) 
	{
		float y = (100*100*w)/(h*h);
		  return y;
		}
	
	private static String printBMICategory(float bmi) {
		String s;
	
        if(bmi < 18.5) {
        	s= "You are underweight";
         x=1;
        }else if (bmi < 25) {
        	s="You are normal";
           x=2;
        }else if (bmi < 30) {
        	s="You are overweight";
          x=3;
        }else {
        	s="You are obese";
         x=4;
        }
		return s;
        
    }

	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException 
	{
	
		int age= Integer.parseInt(req.getParameter("age"));
		int weight= Integer.parseInt(req.getParameter("weight"));
		int height= Integer.parseInt(req.getParameter("height"));
		//<%= "<h1> The sum is "+(Integer.parseInt(request.getParameter("t1"))+Integer.parseInt(request.getParameter("t2")))+"</h1>"%>
		
		//req.getRequestDispatcher("/programme.jsp").include(req, res);
		
		 //req.getRequestDispatcher("/programme.jsp").forward(req, res);

		PrintWriter out=res.getWriter();
		//1. check eligibility age above 16
		
      if(age>16)
	       {
			out.println("yes you r eligible as youre over 16 !");
			
		// 2. Check height and weight range	
			//bmi check
			
			float bmi=Calcbmi(height,weight);
			out.println(printBMICategory(bmi));
			out.println("Your bmi is  " +bmi);
			//out.println("x is  " +x);
			
			// cases
			if (x==1)
			{
				out.println(" You re recommended to take weight gain programme" ); 
				res.setContentType("text/html");
				out.println("<a href=\"plan.jsp\">Go to plan </a>");
			}
			if (x==2)
			{
				out.println(" You re healthy so nutrition diet is recommended" ); 
				res.setContentType("text/html");
				out.println("<a href=\"plan.jsp\">Go to plan </a>");
			}
			if (x==3)
			{
				out.println(" You re recommended to lose weight so weight lose programme is recommended" ); 
				res.setContentType("text/html");
				out.println("<a href=\"plan.jsp\">Go to plan </a>");
			}
			if (x==4)
			{
				out.println("You re recommended to lose weight quickly so weight lose programme is recommended" ); 
				res.setContentType("text/html");
				out.println("<a href=\"plan.jsp\">Go to plan </a>");
			}
	       }	
			else
			{
				out.println(" Sorry youre not eligible for this programme because your age is= " +age );
				res.setContentType("text/html");
				out.println("<a href=\"logout.jsp\">logout please </a>");
			}
		
	
      
    
      
     



}
}