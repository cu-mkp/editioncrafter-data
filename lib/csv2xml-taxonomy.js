// Import necessary modules
const csv = require('csvtojson');
const builder = require('xmlbuilder');
const fs = require('fs');

// Define input and output file paths
const csvFilePath = 'input.csv';
const xmlFilePath = 'output.xml';

// Map CSV columns to XML elements and attributes with custom names
const elementMappings = {
  'description': 'catDesc',
};
const attributeMappings = {
  'label': 'xml:id',
  'term': 'n'
};

// Convert CSV to JSON
csv()
  .fromFile(csvFilePath)
  .then((json) => {
    // Create root element
    const root = builder.create('taxonomy');

    // Loop through JSON data and create XML elements and attributes with custom names
    json.forEach((item) => {
      const element = root.ele('category');
      Object.keys(item).forEach((key) => {
        if (elementMappings.hasOwnProperty(key)) {
          element.ele(elementMappings[key], item[key]); // create XML element with custom name
        } else if (attributeMappings.hasOwnProperty(key)) {
          element.att(attributeMappings[key], item[key]); // create XML attribute with custom name
        }
      });
    });

    // Write XML to file
    const xml = root.end({ pretty: true });
    fs.writeFileSync(xmlFilePath, xml);
  });
