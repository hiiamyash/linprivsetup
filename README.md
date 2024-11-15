LinPrivSetup
LinPrivSetup is a quick and simple Bash script designed for Linux privilege escalation tasks. It automates the setup of a stabilized reverse shell and fetches essential tools like linpeas and pspy for enumeration and monitoring.

🚀 Features
IP and Port Validation: Ensures inputs are properly formatted.
Reverse Shell Stabilization: Sets up a comfortable working shell environment.
Tool Downloads: Automatically retrieves and makes linpeas and pspy executable.
Ease of Use: Provides clear instructions for manual terminal tweaks.
🛠️ Usage
Clone this repository:


Copy code
git clone https://github.com/yourusername/LinPrivSetup.git
cd LinPrivSetup
Make the script executable:


Copy code
chmod +x linprivsetup.sh
Run the script with your target's IP and port:


Copy code
./linprivsetup.sh <IP> <PORT>
Correct format example:

bash
Copy code
./linprivsetup.sh 192.168.1.10 8080
Suspend shell (Ctrl+Z) and adjust terminal:


Copy code
stty raw -echo; fg
📝 Notes
Ensure the target is hosting linpeas.sh and pspy64 at the specified IP and port.
