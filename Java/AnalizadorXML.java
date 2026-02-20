import org.w3c.dom.*;
import javax.xml.parsers.*;
import java.io.*;

public class AnalizadorXML {
    public static void main(String[] args) {
        try {
            // Cargar el archivo XML
            File archivo = new File("libros.xml");
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.parse(archivo);

            // Normalizar el documento
            doc.getDocumentElement().normalize();

            // Obtener el elemento raíz
            Element raiz = doc.getDocumentElement();
            System.out.println("Editorial: " + raiz.getAttribute("editorial"));

            // Obtener la lista de elementos <libro>
            NodeList listaLibros = doc.getElementsByTagName("libro");

            // Recorrer los libros
            for (int i = 0; i < listaLibros.getLength(); i++) {
                Node nodo = listaLibros.item(i);

                if (nodo.getNodeType() == Node.ELEMENT_NODE) {
                    Element libro = (Element) nodo;
                    String id = libro.getAttribute("id");
                    String digital = libro.getAttribute("digital");
                    String papel = libro.getAttribute("papel");

                    // Obtener el título del libro
                    String titulo = libro.getElementsByTagName("titulo").item(0).getTextContent();

                    // Imprimir información del libro
                    System.out.println("Libro ID: " + id);
                    System.out.println("Título: " + titulo);
                    System.out.println("Digital: " + digital);
                    System.out.println("Papel: " + papel);
                    System.out.println("---------------------");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
