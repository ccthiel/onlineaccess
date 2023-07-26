import os
import sys

# This program just splits massive text files into smaller chunks.
def split_text_file(input_file, output_dir, output_file_base):
    # Ensure the output directory exists
    os.makedirs(output_dir, exist_ok=True)

    with open(input_file, 'r') as file:
        text = file.read()

    # Split the text into chunks of approximately 8000 characters each
    chunks = []
    start = 0
    while start < len(text):
        end = start + 8000
        if end < len(text):
            # Ensure we don't cut off a sentence in the middle
            while end < len(text) and text[end] not in '.!?':
                end += 1
        chunk = text[start:end+1]
        chunks.append(chunk)
        start = end + 1

    # Write each chunk to a separate file
    for i, chunk in enumerate(chunks, start=1):
        output_file = os.path.join(output_dir, f"{output_file_base}_{i:02}.txt")
        with open(output_file, 'w') as file:
            file.write(chunk)

if __name__ == "__main__":
    # Check if the user provided the correct number of command-line arguments
    if len(sys.argv) != 4:
        print("Error: Incorrect number of arguments.")
        print("Usage: python script_name.py input.txt output_directory output_file_base")
        sys.exit(1)

    # Get the input text file, output directory, and output file base from the command-line arguments
    input_text = sys.argv[1]
    output_dir = sys.argv[2]
    output_file_base = sys.argv[3]

    # Split the text file
    split_text_file(input_text, output_dir, output_file_base)

