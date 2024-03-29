public class AnimalLocator {
	public class Animal {
		public Integer id;
		public String name;
		public String eats;
		public String says;
	}
    public Animal animal;
    
    public static string getAnimalNameById(integer id){
        string str;
        string URL='https://th-apex-http-callout.herokuapp.com/animals/'+id;
        
        http http=new http();
        httprequest Req=new httprequest();
        req.setEndpoint(URL);
        req.setMethod('GET');
        httpResponse Response=http.send(req);
        
        system.debug('Response Code: '+response.getStatusCode());
        system.debug('Response Body: '+response.getBody());
        //type ResultType= type.forName('Animals');
        //system.debug('Type: '+ ResultType);
        AnimalLocator obj= new AnimalLocator();
        obj=(AnimalLocator) System.JSON.deserialize(response.getBody(), AnimalLocator.class);
        System.debug('Obj: '+obj.animal.name );
        str=obj.animal.name;
        System.debug('Name: '+str );
        return str;
    }
}