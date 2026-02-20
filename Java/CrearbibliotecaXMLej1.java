import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class CrearbibliotecaXMLej1 {
    public static void main(String[] args) {
        try {
            // Crear una nueva instancia de DocumentBuilderFactory
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();

            // Crear un nuevo documento XML
            Document document = builder.newDocument();

            // Crear el elemento raíz
            Element root = document.createElement("biblioteca");
            document.appendChild(root);

            // Crear un elemento hijo
            Element libro = document.createElement("libro");
            root.appendChild(libro);

            // Agregar atributos al elemento hijo
            libro.setAttribute("id", "1");

            // Crear subelementos
            Element titulo = document.createElement("titulo");
            titulo.appendChild(document.createTextNode("Java Básico"));
            libro.appendChild(titulo);

            // Guardar el documento XML en un archivo
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            DOMSource source = new DOMSource(document);
            StreamResult result = new StreamResult(new File("biblioteca.xml"));

            transformer.transform(source, result);

            System.out.println("Archivo XML creado exitosamente.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}