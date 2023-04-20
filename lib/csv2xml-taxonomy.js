// Import necessary modules
const csv = require('csvtojson'); // Module for converting CSV to JSON
const builder = require('xmlbuilder'); // Module for creating XML
const fs = require('fs'); // Module for working with the file system

// Define input and output file paths
const csvFilePath = 'input.csv'; // Path to the CSV input file
const xmlFilePath = 'output.xml'; // Path to the XML output file

// Map CSV columns to XML elements and attributes with custom names
const elementMappings = {
  'description': 'catDesc', // Map the 'description' CSV column to the 'catDesc' XML element
};
const attributeMappings = {
  'label': 'xml:id', // Map the 'label' CSV column to the 'xml:id' XML attribute
  'term': 'n' // Map the 'term' CSV column to the 'n' XML attribute
};

// Convert CSV to JSON
csv()
  .fromFile(csvFilePath)
  .then((json) => {
    // Create root element
    const root = builder.create('taxonomy'); // Create the root 'taxonomy' XML element

    // Loop through JSON data and create XML elements and attributes with custom names
    json.forEach((item) => {
      const element = root.ele('category'); // Create a 'category' XML element for each item
      Object.keys(item).forEach((key) => {
        if (elementMappings.hasOwnProperty(key)) {
          element.ele(elementMappings[key], item[key]); // Create an XML element with a custom name for the current CSV column
        } else if (attributeMappings.hasOwnProperty(key)) {
          element.att(attributeMappings[key], item[key]); // Create an XML attribute with a custom name for the current CSV column
        }
      });
    });

    // Write XML to file
    const xml = root.end({ pretty: true }); // Convert the XML object to a string with indentation
    fs.writeFileSync(xmlFilePath, xml); // Write the XML string to the output file
  });
