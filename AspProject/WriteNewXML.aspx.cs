using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProject
{
    public partial class WriteNewXML : System.Web.UI.Page
    {
        protected void CreateXml_Click(object sender, EventArgs e)
        {
            //Create a new , empty document
            System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
            System.Xml.XmlNode docNode = doc.CreateXmlDeclaration("1.0", "UTF-8", null);
            doc.AppendChild(docNode);

            //Create and insert a new element
            System.Xml.XmlNode productsNode = doc.CreateElement("products");
            doc.AppendChild(productsNode);

            //Create a nested element (with an attribute)
            System.Xml.XmlNode productNode = doc.CreateElement("product");
            System.Xml.XmlAttribute productAttribute = doc.CreateAttribute("id");
            productAttribute.Value = "1001";
            productNode.Attributes.Append(productAttribute);
            productsNode.AppendChild(productNode);

            //Create and add the subelementd for this product node (with contained text data)
            System.Xml.XmlNode nameNode = doc.CreateElement("productName");
            nameNode.AppendChild(doc.CreateTextNode("3 in 1 Coffee"));
            productNode.AppendChild(nameNode);
            System.Xml.XmlNode priceNode = doc.CreateElement("productPrice");
            priceNode.AppendChild(doc.CreateTextNode("6.99"));
            productNode.AppendChild(priceNode);

            //Save the document
            doc.Save(Server.MapPath("product.xml"));

        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            //Load XML document
            System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
            doc.Load(Server.MapPath("product.xml"));

            //Create a nested element (with an attribute).
            System.Xml.XmlNode productNode = doc.CreateElement("product");
            System.Xml.XmlAttribute productAttributes = doc.CreateAttribute("id");
            productAttributes.Value = this.RegNum.Text;
            productNode.Attributes.Append(productAttributes);
            doc.DocumentElement.AppendChild(productNode);

            //Create and add the subelements for this product node (with contained text data).
            System.Xml.XmlNode nameNode = doc.CreateElement("productName");
            nameNode.AppendChild(doc.CreateTextNode(this.PName.Text));
            productNode.AppendChild(nameNode);

            //Create and add the subelements for this product node (with contained text data).
            System.Xml.XmlNode priceNode = doc.CreateElement("productPrice");
            priceNode.AppendChild(doc.CreateTextNode(this.PPrice.Text));
            productNode.AppendChild(priceNode);

            //Save Document
            doc.Save(Server.MapPath("product.xml"));
        }
    }
}