import os
import subprocess

def find_transformice_files(root_folder):
    transformice_files = []
    for dirpath, _, filenames in os.walk(root_folder):
        for filename in filenames:
            if filename == 'transformice_2.swf':
                transformice_files.append(os.path.join(dirpath, filename))
    return transformice_files

def run_swfdump_and_save_output(swf_file):
    output_file = os.path.join(os.path.dirname(swf_file), 'output.txt')
    command = f'swfdump.exe -a {swf_file} > {output_file}'
    subprocess.run(command, shell=True)

def main():
    root_folder = '.'
    transformice_files = find_transformice_files(root_folder)
    for swf_file in transformice_files:
        run_swfdump_and_save_output(swf_file)

if __name__ == '__main__':
    main()
