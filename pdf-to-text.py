import sys
from pdfminer.high_level import extract_text

def pdf_to_text(pdf_file, text_file):
    # Extract text from the PDF file
    text = extract_text(pdf_file)

    # Write the extracted text to the output text file
    with open(text_file, 'w') as file:
        file.write(text)

if __name__ == "__main__":
    # Check if the user provided the correct number of command-line arguments
    if len(sys.argv) != 3:
        print("Error: Incorrect number of arguments.")
        print("Usage: python script_name.py input.pdf output.txt")
        sys.exit(1)

    # Get the input PDF file and output text file from the command-line arguments
    input_pdf = sys.argv[1]
    output_text = sys.argv[2]

    # Convert the PDF to text
    pdf_to_text(input_pdf, output_text)

