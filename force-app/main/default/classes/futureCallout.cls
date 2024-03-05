public class futureCallout {
 @future(callout=true)
    public static void myFutureMethod(){
        http  hp =new http(); 
        httpRequest Request = new httpRequest();
        Request.setMethod('GET');
        Request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
         
        httpResponse Response = hp.send(Request);
        System.debug(Response.getBody());
        system.debug(JSON.deserializeUntyped(Response.getBody()));
        
        request.setMethod('POST');
		request.setHeader('Content-Type', 'application/json;charset=UTF-8');
		// Set the body as a JSON object
        request.setBody('{"name":"Kangaroo"}');
		Response = hp.send(request);
        System.debug(JSON.deserializeUntyped(Response.getBody()));
      
        
    
}
}