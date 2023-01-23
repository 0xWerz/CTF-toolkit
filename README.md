# CTF ToolKit


This repository contains a collection of useful scripts for CTF players and cybersecurity enthusiasts. The scripts are written in Bash and can be used to automate various tasks such as encryption, decryption, hash cracking, and network scanning.

## Scripts List
- [rsa_decrypt.sh](/decrypt/RSA/rsa_decrypt.sh) - Decrypts a message using an RSA private key.
- [rsa_keygen.sh](/decrypt/RSA/rsa_keygen.sh) - Generates a new RSA key pair.
- [aes_decrypt.sh](/decrypt/AES/aes_decrypt.sh) - Decrypts a message using AES algorithm.
- [aes_keygen.sh](/decrypt/AES/aes_keygen.sh) - Generates a new AES key.
- [hashcat.sh](/hashcrack/hashcat.sh) - Cracks a hash using hashcat.
- [john_the_ripper.sh](/hashcrack/john_the_ripper.sh) - Cracks a hash using John the Ripper.
- [nmap.sh](/network-scan/nmap.sh) - Scans a target using nmap.
- [masscan.sh](/network-scan/masscan.sh) - Scans a target using masscan.
- [steghide.sh](/stego-solver/steghide.sh) - Extracts hidden data from an image using steghide.
- [crunch.sh](/password-list-generator/crunch.sh) - Generates a wordlist using crunch.
- [cewl.sh](/password-list-generator/cewl.sh) - Generates a wordlist from a website using cewl.
- [msfvenom.sh](/exploit-builder/msfvenom.sh) - Generates a payload using msfvenom.

## Usage
1. Clone the repository: `git clone https://github.com/0xWerz/CTF-toolkit`
2. Navigate to the repository: `cd /CTF-toolkit`
3. Make the scripts executable: `chmod +x <script_name>`
4. Run the script: `./<script_name> <arguments>`