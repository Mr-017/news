package com.hisoft.news.web;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

@WebListener()
public class OnlineListener implements HttpSessionAttributeListener {


    public void attributeAdded(HttpSessionBindingEvent sbe) {
      /* This method is called when an attribute 
         is added to a session.
      */
      if(sbe.getName().equals("user")){
          System.out.println(sbe.getValue()+"上线了");
          System.out.println(sbe.getName()+"sbe.getName()");
      }
    }

    public void attributeRemoved(HttpSessionBindingEvent sbe) {
      /* This method is called when an attribute
         is removed from a session.
      */
      if (sbe.getName().equals("user")){
          System.out.println(sbe.getValue() + "下线了");
      }
    }

}
