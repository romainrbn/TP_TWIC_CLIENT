package com.javaBeansUtils;

import java.io.IOException;
import java.net.URI;
import java.util.List;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.UriBuilder;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;

import com.javaBeans.Ville;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;


public class RestClient {

	public static List<Ville> getListeVilles() throws JsonParseException, JsonProcessingException, IOException {

		Client client = Client.create();
		URI uri = UriBuilder.fromUri("http://localhost:8181/").build();
		ClientResponse responseclient = client.resource(uri).path("villes").get(ClientResponse.class);
		String CorpsRepHttp = responseclient.getEntity(String.class);
		
		System.out.println(CorpsRepHttp);

		ObjectMapper mapper = new ObjectMapper();
		List<Ville> listevilles = mapper.readValue(CorpsRepHttp, new TypeReference<List<Ville>>() {
		});
		return listevilles;
	}
	
	public static Ville getVillebyCodeInsee(String codeInsee) throws JsonParseException, JsonProcessingException, IOException {

		Client client = Client.create();
		URI uri = UriBuilder.fromUri("http://localhost:8181/").build();
		ClientResponse responseclient = client.resource(uri).path("ville").queryParam("codeInsee",codeInsee).get(ClientResponse.class);
		String CorpsRepHttp = responseclient.getEntity(String.class);

		ObjectMapper mapper = new ObjectMapper();
		Ville ville = mapper.readValue(CorpsRepHttp, new TypeReference<Ville>() {
		});
		return ville;
	}

	public static List<Ville> getVillebyCodePostal(String codePostal) throws JsonParseException, JsonProcessingException, IOException {

		Client client = Client.create();
		URI uri = UriBuilder.fromUri("http://localhost:8181/").build();
		ClientResponse responseclient = client.resource(uri).path("ville").queryParam("codePostal",codePostal).get(ClientResponse.class);
		String CorpsRepHttp = responseclient.getEntity(String.class);

		ObjectMapper mapper = new ObjectMapper();
		List<Ville> listevilles = mapper.readValue(CorpsRepHttp, new TypeReference<List<Ville>>() {
		});
		return listevilles;
	}

	public static Ville getVillebyNomCommune(String nomCommune) throws JsonParseException, JsonProcessingException, IOException {

		Client client = Client.create();
		URI uri = UriBuilder.fromUri("http://localhost:8181/").build();
		ClientResponse responseclient = client.resource(uri).path("ville").queryParam("nomCommune",nomCommune).get(ClientResponse.class);
		String CorpsRepHttp = responseclient.getEntity(String.class);

		ObjectMapper mapper = new ObjectMapper();
		Ville ville = mapper.readValue(CorpsRepHttp, new TypeReference<Ville>() {
		});
		return ville;
	}

	public static void creerVille(Ville ville) throws JsonParseException, JsonProcessingException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(ville);
		OkHttpClient client = new OkHttpClient();
				RequestBody body = RequestBody.create(MediaTypeCreator.createMediaType("application/json"), json);
				Request request = new Request.Builder()
				  .url("http://localhost:8181/ville")
				  .method("POST", body)
				  .addHeader("Content-Type", "application/json")
				  .build();
		Response response = client.newCall(request).execute();
		
	}

	public static void PutVille(Ville ville, String codeInsee) throws JsonParseException, JsonProcessingException, IOException {
		OkHttpClient client = new OkHttpClient();
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(ville);
		RequestBody body = RequestBody.create(MediaTypeCreator.createMediaType("application/json; charset=utf-8"), json);
		Request request = new Request.Builder()
				.url("http://localhost:8181/ville?codeInsee="+codeInsee)
				.method("PUT", body)
				.addHeader("Content-Type", "application/json")
				.build();
		Response response = client.newCall(request).execute();
	}

	public static void DeleteVille(String codeInsee) throws JsonParseException, JsonProcessingException, IOException {
		OkHttpClient client = new OkHttpClient();
		RequestBody body = RequestBody.create(MediaTypeCreator.createMediaType("text/plain"), "");
		Request request = new Request.Builder()
				  .url("http://localhost:8181/ville?codeInsee="+codeInsee)
				  .method("DELETE", body)
				  .build();
		Response response = client.newCall(request).execute();
	}
}
