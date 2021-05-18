package Boletim;

public class TabelaDeMedia {

    String html = "";

    public String getMedia() {
        return html;
    }

    /**
     *
     * @param nota1sem
     * @param nota2sem
     * @param media
     * @return
     */
    public float CalculoMedia(float nota1sem,float nota2sem,float media){
        media = (nota1sem + nota2sem)/5;
        return media;
        
    }
   }