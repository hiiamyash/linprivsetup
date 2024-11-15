LinPrivSetup
Description
LinPrivSetup is a Bash script designed to assist in setting up a shell environment and automating the download of common privilege escalation tools, such as linpeas.sh and pspy64, from a specified server. This tool is useful in scenarios where privilege escalation scripts need to be fetched and executed during penetration testing or CTF challenges.

Features
Validates the provided IP address and port.
Stabilizes the shell for enhanced usability.
Automatically downloads linpeas.sh and pspy64 from a remote server.
Prepares the terminal for a better interactive experience.
Prerequisites
Ensure you have Python installed to run the HTTP server (python3 -m http.server).
Place the files (linpeas.sh and pspy64) in the directory where the Python HTTP server is started.
Usage
Clone the repository and make the script executable:

bash
Copy code
chmod +x linprivsetup.sh
Start a Python HTTP server in the directory containing the required files:

bash
Copy code
python3 -m http.server 9999
Replace 9999 with the desired port if needed. Ensure linpeas.sh and pspy64 exist in this directory.

Run the script:

bash
Copy code
./linprivsetup.sh <IP> <PORT>
Replace <IP> with the IP address of the server hosting the files (e.g., 10.2.37.78) and <PORT> with the port number used by the Python HTTP server (e.g., 9999).

Example
bash
Copy code
./linprivsetup.sh 10.2.37.78 9999
Output:

bash
Copy code
Valid IP and Port. Proceeding...
Stabilizing the shell
Ctrl+Z to suspend the shell. Then run: stty raw -echo; fg
Files to Prepare
Make sure the following files exist in the folder where you start the Python HTTP server:

linpeas.sh: A powerful privilege escalation script.
pspy64: A process monitoring tool for Linux.
Notes
If the script reports a wrong format, double-check that the IP address and port are correctly formatted.
After stabilizing the shell, you may need to suspend the shell using Ctrl+Z and execute the following commands:
bash
Copy code
stty raw -echo; fg
