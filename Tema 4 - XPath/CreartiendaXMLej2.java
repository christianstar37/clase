import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class CreartiendaXMLej2 {
    public static void main(String[] args) {
        try {
            // Crear una nueva instancia de DocumentBuilderFactory
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();

            // Crear un nuevo documento XML
            Document document = builder.newDocument();

            // Crear el elemento raíz
            Element root = document.createElement("Tienda");
            document.appendChild(root);

            // Crear un elemento hijo
            Element producto = document.createElement("Producto");
            root.appendChild(producto);

            // Crear subelementos
            Element nombre = document.createElement("Nombre");
            nombre.appendChild(document.createTextNode("Laptop"));
            producto.appendChild(nombre);

            Element precio = document.createElement("Precio");
            precio.appendChild(document.createTextNode("1200"));
            producto.appendChild(precio);
            
            Element categoria = document.createElement("Categoria");
            categoria.appendChild(document.createTextNode("Electrónica"));
            producto.appendChild(categoria);

            // Crear un elemento hijo
            producto = document.createElement("Producto");
            root.appendChild(producto);

            // Crear subelementos
            nombre = document.createElement("Nombre");
            nombre.appendChild(document.createTextNode("Teléfono"));
            producto.appendChild(nombre);

            precio = document.createElement("Precio");
            precio.appendChild(document.createTextNode("800"));
            producto.appendChild(precio);
            
            categoria = document.createElement("Categoria");
            categoria.appendChild(document.createTextNode("Electrónica"));
            producto.appendChild(categoria);

            // Guardar el documento XML en un archivo
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            DOMSource source = new DOMSource(document);
            StreamResult result = new StreamResult(new File("tienda.xml"));

            transformer.transform(source, result);

            System.out.println("Archivo XML creado exitosamente.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}