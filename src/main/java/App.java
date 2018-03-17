import static spark.Spark.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import freemarker.core.ReturnInstruction.Return;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
public class App {
	
    public static void main(String[] args) {
    	Logger log = LoggerFactory.getLogger(App.class); 
        staticFiles.location("/public");
    	//before
    	before((req, res) ->{
    		ArrayList<User> lista = req.session().attribute("usuarios");
    		
    		if(lista == null) {
    			lista = new ArrayList<User>();
    		}
    		
    		// usuario administrador
    		
    		boolean isAdminCreated = false;
    		for(User u: lista) {
    			if(u.getNombre() == "admin") {
    				isAdminCreated = true;
    			}
    		}
    		
    		if(!isAdminCreated) {
    			User u = new User ("admin", "0");
    			lista.add(u);
    			log.info("admin creado");
    		}
    		
    		req.session().attribute("usuarios", lista);
    		
    	});
    	
    	before("/no-entre" ,(req,res) -> {  
    		
    		User user = req.session().attribute("user");
    		
    		if (user == null) { halt(401, "devuelvase que se paso"); }
    	});
    	
    	
    	exception(SessionNoLogeada.class, (e,req,res) -> {
    		
    		res.status(401); 
    		res.body(e.toString());
    	});
    	
    	
        
        
        //index
        get("/casa",(req, res)-> {
        	res.status(200);
        	Map<String, Object> model = new HashMap<>();
        	User user=new User("misael","jimenez");
        	model.put("user", user);
        	model.put("titulo", "Datos");
        	
        	return new ModelAndView(model, "casa.ftl");
        }, new FreeMarkerEngine());
        
       
        //para logear
        get("/home", (req , res) ->{
        	res.status(200);
        	Map<String, Object> model = new HashMap<>();
        	model.put("titulo", "Home");
        	
        	return new ModelAndView(model, "home.ftl");
        }, new FreeMarkerEngine());
       
        post("/userinfo",(req, res)->{
        	 
        	 String nombre = req.queryParamOrDefault("nombre", "misael");
        	 String apellido = req.queryParamOrDefault("apellido", "jimenez");
        	 Map<String, Object> model = new HashMap<>();
        	 model.put("titulo", "Datos");
        	 User user = new User(nombre, apellido);
        	 model.put("user", user);
        	 
        	 return new ModelAndView(model, "userinfo.ftl");
        },new FreeMarkerEngine());
        
        
        // infinitos usuarios
        
        get("/login", (req, res) -> {
    		res.redirect("/contact.html");
    		return null;
    	});
    	
        post("/login", (req, res)-> {
        	String nombres = req.queryParams("nombres");
        	String apellidos = req.queryParams("apellidos");
        	
        	
        	User user = new User(nombres, apellidos);
        	ArrayList<User> lista1 = req.session().attribute("usuarios");
        	
        	if (lista1 == null) { // Si el usuario1 NO existe, lo agregamos:
        		lista1 = new ArrayList<User>();
        	} 
        	lista1.add(user);
        	req.session().attribute("usuarios",lista1);

        	req.session().attribute("user",user);
        	return user.getInfo();
        });
        
        
        get("/usuario", (req, res) -> {
        	ArrayList<User> lista1 = req.session().attribute("usuarios");
        	if(lista1 == null) {return "no hay usuario";}
        	for (User use : lista1) { log.info((String) use.getInfo()); }
        	
        	return "Paran!";
        });
        
        ///**************/////////****//**/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*//*
        
    	
    	//home
        
    	get("/home", (req, res) -> {
    		res.status(200);
    		res.redirect("/contact.html");
    		return null;
    	
    	});
    	
    	get("/login", (req, res) -> {
    		res.status(200);
    		res.redirect("/contact.html");
    		return "Claro";
    	});
        
        //-------------------------------------------------//
        
    	//articulos
    	
    	before("/articulos" ,(req,res) -> {  
    		
    		User user = req.session().attribute("user");
    		
    		if (user == null) { halt(302, "First Logeese my broda"); }
    	});
    	
    	exception(Articulos.class, (e,req,res) -> {
    		
    		res.status(302); 
    		res.body(e.toString());
    	});

        
        //registro
        
        get("/registro", (req, res) -> {  
        	
        	ArrayList<User> lista = req.session().attribute("usuarios");
        
        	if(lista == null) {
        		res.status(302);
        		return "NO HAY DATO A MOSTRAR...";
        	}
        	else {
        		res.status(200);
        		for(User u : lista) { log.info(u.getInfo()); }
        	}
        	
        	return "hola";
        });
        
        
        //me
        
        get("/me", (req, res)->{
        	ArrayList<User> list = req.session().attribute("usuarios");
        	req.session().attribute("usuarios",list);
        	Map<String, Object> model = new HashMap<>();
        	model.put("titulo", "Datos");
        	User u = req.session().attribute("user");
        	model.put("user", u);
        	return new ModelAndView(model, "me.ftl");	
        }, new FreeMarkerEngine());
        
        //logout
        
        get("/logout", (req, res)->{
        	req.session().removeAttribute("usuarios");
        	return "Ha cerrado sesion";
        });
        
    }
}
