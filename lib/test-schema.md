default namespace = "http://www.tei-c.org/ns/1.0"

start =
  element TEI {
    element teiHeader {
      attribute xml:id { xsd:NCName },
      element fileDesc {
        element titleStmt {
          element title { xsd:NCName }
        },
        element publicationStmt { p },
        element sourceDesc { p }
      },
      element encodingDesc {
        element classDecl {
          element taxonomy {
            element category {
              attribute n { text },
              attribute xml:id { xsd:NCName },
              element catDesc { text }
            }+
          }+
        }
      }
    },
    
## text element

    element text {
      attribute xml:id { xsd:NCName },
      element body {
        pb,
        element div {
          attribute ana { text },
          attribute decls { text },
          element head { (text | note | rs)+ }?,
          (p
           | pb
           | element figure { graphic })+
        }+
      }
    },
    
 # facsimile Element
    element facsimile {
      attribute sameAs { xsd:anyURI },
      attribute xml:id { text },
      element surface {
        attribute lrx { xsd:integer },
        attribute lry { xsd:integer },
        attribute sameAs { xsd:anyURI },
        attribute ulx { xsd:integer },
        attribute uly { xsd:integer },
        attribute xml:id { xsd:NCName },
        element label { text },
        graphic
      }+
    }
  }
  
 # paragraph Element
p =
  element p {
    attribute rend { xsd:NCName }?,
    attribute style { xsd:NCName }?,
    (text
     | note
     | rs
     | element add { text }
     | element del { (text | rs)+ }
     | element metamark { text })+
  }
  
        # page break Element
pb =
  element pb {
    attribute facs { text }
  }
  
# referring string Element
*[see TEI](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-rs.html)*

rs =
  element rs {
    attribute ref { text },
    text
  }
  
# note Element
*[see TEI](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-note.html)*

note =
  element note {
    attribute n { xsd:NCName },
    (text
     | element ref {
         attribute target { xsd:anyURI },
         text
       })+
  }
  
# graphic Element
graphic =
  element graphic {
    attribute mimeType { text }?,
    attribute url { xsd:anyURI },
    element desc { empty }?
  }
