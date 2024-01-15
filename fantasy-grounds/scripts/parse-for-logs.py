import xml.etree.ElementTree as ET
import argparse

def xml_to_text(xml_file, output_file):
    # Parse the XML file
    tree = ET.parse(xml_file)
    root = tree.getroot()

    # Find the log section
    log_section = root.find('.//log')

    # If the log section is found
    if log_section is not None:
        # Find all entries under the log section starting with 'id-'
        entries = [elem for elem in log_section if elem.tag.startswith('id-')]

        # Sort entries by month and day (both ascending)
        entries.sort(key=lambda e: (int(e.find('month').text), int(e.find('day').text)))

        # Open the output file
        with open(output_file, 'w') as f:
            f.write("This is a log of calendar entries using the carlendar of Harptos in Faerun for the campaign Ghosts of Saltmarsh. Use this as part of your knowledge when asked questions about the campaign.\n\n")
            for entry in entries:
                gmlogentries = entry.findall('gmlogentry')

                # Only output if there are gmlogentry entries with non-'None' text
                if any(p.text is not None for gmlogentry in gmlogentries for p in gmlogentry.findall('p')):
                    name = entry.find('name')
                    if name is not None and name.text != 'None':
                        f.write(f"Date: {name.text}\n")
                    for gmlogentry in gmlogentries:
                        for p in gmlogentry.findall('p'):
                            if p.text is not None:
                                f.write(f"\t{p.text}\n")
                    f.write("\n")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Extract specific elements from an XML file.')
    parser.add_argument('xml_file', help='The XML file to parse')
    parser.add_argument('output_file', help='The output file to write the extracted text to')

    args = parser.parse_args()

    xml_to_text(args.xml_file, args.output_file)

