import os
import glob
import sys
import shlex

def copy_to_clipboard(text):
    escaped_text = shlex.quote(text)
    os.system(f'echo {escaped_text} | xclip -selection clipboard')

def main(directory):
    files = glob.glob(f'{directory}/*.txt')
    files.sort(key=lambda x: int(x.split('_')[-1].split('.')[0]))

    for file in files:
        with open(file, 'r') as f:
            text = f.read()
            print(f"Reading file: {file}")
            copy_to_clipboard(text)
            input("Press Enter to continue...")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print('Please provide a directory path')
        sys.exit(1)
    directory = sys.argv[1] 
    main(directory)

