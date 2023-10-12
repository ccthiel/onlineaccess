import sys
import os
from PyPDF2 import PdfReader, PdfWriter

def split_pdf(input_pdf, pages_per_file=50):
    try:
        # Check if the input file exists
        if not os.path.exists(input_pdf):
            print(f"File '{input_pdf}' does not exist.")
            return

        # Create a PdfReader object to read the input PDF
        pdf_reader = PdfReader(input_pdf)
        
        # Get the total number of pages in the input PDF
        total_pages = len(pdf_reader.pages)

        # Get the base filename (without extension)
        base_filename = os.path.splitext(os.path.basename(input_pdf))[0]

        # Create an output directory with the same name as the input file (without extension)
        output_dir = f"{base_filename}_split"
        os.makedirs(output_dir, exist_ok=True)

        # Loop through the pages and create individual PDFs with the specified number of pages
        for start_page in range(0, total_pages, pages_per_file):
            end_page = min(start_page + pages_per_file, total_pages)
            
            pdf_writer = PdfWriter()
            
            for page_num in range(start_page, end_page):
                pdf_writer.add_page(pdf_reader.pages[page_num])

            # Save the output PDF with the original name and a page range
            output_pdf = os.path.join(output_dir, f"{base_filename}_{start_page + 1:02d}-{end_page}.pdf")
            
            with open(output_pdf, 'wb') as output_file:
                pdf_writer.write(output_file)
                print(f"Created {output_pdf}")

        print(f"PDF split into {total_pages // pages_per_file} smaller PDFs in '{output_dir}' directory.")

    except Exception as e:
        print(f"An error occurred: {str(e)}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python split_pdf.py <input_pdf>")
    else:
        input_pdf = sys.argv[1]
        split_pdf(input_pdf, pages_per_file=50)

