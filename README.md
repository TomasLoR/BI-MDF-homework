# BI-MDF.21 Semestrální projekt

## Autor
**Jméno**: Tomáš Peterka

## Přehled
Tento repozitář obsahuje semestrální projekt pro předmět BI-MDF. Projekt se zaměřuje na práci s různými datovými formáty a technikami dotazování, včetně RDF, SPARQL, XML, JSON a CSV.

## Struktura projektu

### [Conceptual Model](conceptual)
- **domain.png, domain.svg**: Grafické znázornění doménového modelu.
- **domain.txt**: Textová reprezentace doménového modelu.
- **queries.txt**: Dotazy k doménovému modelu.

### [RDF](rdf)
- **data.ttl**: RDF data ve formátu Turtle.

### [SPARQL](sparql)
- **query-1.sparql, query-2.sparql, query-3.sparql, query-4.sparql**: SPARQL dotazy pro získávání dat.

### [XML](xml)
- **data-1.xml, data-2.xml, data-3.xml, data-4.xml, data-all.xml**: XML data.
- **schema-*.xsd**: Schémata pro validaci XML dat.
- **query-*.xpath**: XPath dotazy.
- **transform.xslt**: XSLT transformace.

### [JSON](json)
- **data-*.jsonld**: JSON-LD data.
- **schema-*.json**: Schémata pro validaci JSON dat.
- **query-*.jq**: Dotazy v jazyce JQ.
- **readme.txt**: Dodatečné informace k JSON datům.

### [CSV](csv)
- **data-*.csv**: CSV data.
- **data-*.ttl**: Transformace CSV dat do RDF.
- **tablegroup.json**: Metadata k CSV datům.
