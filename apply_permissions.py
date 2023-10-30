import os

with open("permissions.txt", "r") as file:
    for line in file:
        parts = line.split()
        if len(parts) == 2:
            permissions, file_path = parts
            try:
                permissions = int(permissions, 8)  # Convert permissions from octal string to integer
                if os.path.exists(file_path):
                    os.chmod(file_path, permissions)
                    #print(f"Changed permissions for {file_path} to {oct(permissions)}")
                else:
                    print(f"File {file_path} does not exist. Skipped.")
            except ValueError:
                print(f"Invalid permissions value in line: {line}")
        else:
            print(f"Invalid line format: {line}")

