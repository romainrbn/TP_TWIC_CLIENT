package com.javaBeans;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Ville {
    String codeCommuneINSEE;
    String nomCommune;
    String codePostal;
    String libelleAcheminement;
    String ligne5;
    String latitude;
    String longitude;
    
    public Ville() {
    	
    }

    public Ville(String codeCommuneINSEE, String nomCommune, String codePostal, String libelleAcheminement, String ligne5, String latitude, String longitude) {
        this.codeCommuneINSEE = codeCommuneINSEE;
        this.nomCommune = nomCommune;
        this.codePostal = codePostal;
        this.libelleAcheminement = libelleAcheminement;
        this.ligne5 = ligne5;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public Ville(String codeCommuneINSEE) {
        this.codeCommuneINSEE = codeCommuneINSEE;
    }

    public String getCodeCommuneINSEE() {
        return this.codeCommuneINSEE;
    }

    public void setCodeCommuneINSEE(String codeCommuneINSEE) {
        this.codeCommuneINSEE = codeCommuneINSEE;
    }

    public String getNomCommune() {
        return this.nomCommune;
    }

    public void setNomCommune(String nomCommune) {
        this.nomCommune = nomCommune;
    }

    public String getCodePostal() {
        return this.codePostal;
    }

    public void setCodePostal(String codePostal) {
        this.codePostal = codePostal;
    }

    public String getLibelleAcheminement() {
        return this.libelleAcheminement;
    }

    public void setLibelleAcheminement(String libelleAcheminement) {
        this.libelleAcheminement = libelleAcheminement;
    }

    public String getLigne5() {
        return this.ligne5;
    }

    public void setLigne5(String ligne5) {
        this.ligne5 = ligne5;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return this.longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }
    
    public double calculerDistance(Ville ville2) {

        double distance = 0;

        double longitudeVille1 = Double.valueOf(this.getLongitude());
        double longitudeVille2 = Double.valueOf(ville2.getLongitude());

        double latitudeVille1 = Double.valueOf(this.getLatitude());
        double latitudeVille2 = Double.valueOf(ville2.getLatitude());


        double first = (longitudeVille2 - longitudeVille1) * Math.cos((latitudeVille2 + latitudeVille1)/2);

        double second = latitudeVille2 - latitudeVille1;

        double third = Math.sqrt(Math.pow(first, 2) + Math.pow(second, 2));

        distance = 1.852 * 60 * third;


        return distance;
    }
    
}