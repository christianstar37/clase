import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class CrearlibrosXMLej3 {
    public static void main(String[] args) {
        try {
            // Crear una nueva instancia de DocumentBuilderFactory
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();

            // Crear un nuevo documento XML
            Document document = builder.newDocument();

            // Crear el elemento raíz
            Element root = document.createElement("libros");
            document.appendChild(root);

            root.setAttribute("editorial", "paraninfo");

            // Crear un elemento hijo
            Element libro = document.createElement("Libro");
            root.appendChild(libro);

            libro.setAttribute("id", "1");
            libro.setAttribute("digital", "false");
            libro.setAttribute("papel", "true");

            // Crear subelementos
            Element titulo = document.createElement("titulo");
            titulo.appendChild(document.createTextNode("LENGUAJE DE MARCAS Y SISTEMAS DE GESTIÓN DE LA INFORMACIÓN"));
            libro.appendChild(titulo);

            libro = document.createElement("Libro");
            root.appendChild(libro);

            libro.setAttribute("id", "2");
            libro.setAttribute("digital", "true");
            libro.setAttribute("papel", "true");

            titulo = document.createElement("titulo");
            titulo.appendChild(document.createTextNode("SISTEMAS INFORMATICOS"));
            libro.appendChild(titulo);


            libro = document.createElement("Libro");
            root.appendChild(libro);

            libro.setAttribute("id", "3");
            libro.setAttribute("digital", "false");
            libro.setAttribute("papel", "true");

            titulo = document.createElement("titulo");
            titulo.appendChild(document.createTextNode("BASES DE DATOS"));
            libro.appendChild(titulo);

            libro = document.createElement("Libro");
            root.appendChild(libro);

            libro.setAttribute("id", "4");
            libro.setAttribute("digital", "true");
            libro.setAttribute("papel", "true");

            titulo = document.createElement("titulo");
            titulo.appendChild(document.createTextNode("ENTORNOS DE DESARROLLO"));
            libro.appendChild(titulo);

            libro = document.createElement("Libro");
            root.appendChild(libro);

            libro.setAttribute("id", "5");
            libro.setAttribute("digital", "false");
            libro.setAttribute("papel", "true");

            titulo = document.createElement("titulo");
            titulo.appendChild(document.createTextNode("PROGRAMACIÓN"));
            libro.appendChild(titulo);

            libro = document.createElement("Libro");
            root.appendChild(libro);

            libro.setAttribute("id", "6");
            libro.setAttribute("digital", "true");
            libro.setAttribute("papel", "true");

            titulo = document.createElement("titulo");
            titulo.appendChild(document.createTextNode("FORMACIÓN Y ORIENTACIÓN LABORAL"));
            libro.appendChild(titulo);

            // Guardar el documento XML en un archivo
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            DOMSource source = new DOMSource(document);
            StreamResult result = new StreamResult(new File("libros.xml"));

            transformer.transform(source, result);

            System.out.println("Archivo XML creado exitosamente.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}