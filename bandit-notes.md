
**bandit0**
**Goal** Find the password in readme file of home directory
**Commands Used** 'ls','cat readme'



**bandit1**
**Goal** Find the password in dash filename
**Commands Used** 'ls','cat ./filename '

**bandit2**
**Goal** Find the password in spaced filename
**Commands Used** 'ls','cat "./filename" '
 
**bandit3**
**Goal** Find the password in hidden files
**Commands Used** 'ls -la','cat filename '

**bandit4**
**Goal** Find the password in a human readable file
**Commands Used** 'ls -la','file ./*'


**bandit5**
**Goal** Find the password in a human readable, 1033 bytes size and non executables
**Commands Used** find . -type f -size 1033c ! -executable -exec file {} \; | grep "ASCII text"


**bandit6**
**Goal** Find the password in a file with owned by user bandit7 and group bandit6 , 33 bytes size anywhere
**Commands Used**find / -user bandit7 -group bandit6 -size 33c 2>/dev/null

**bandit7**
**Goal** Find the password in a file data.txt next to the word millionth
**Commands Used**grep "millionth" data.txt

**bandit8**
**Goal** The password for the next level is stored in the file data.txt and is the only line of text that occurs only once
**Commands Used**sort data.txt | uniq -c

**bandit9**
**Goal**  The password for the next level is stored in the file data.txt in one of the few human-readable strings,
  preceded by several ‘=’ characters.
**Commands Used**strings data.txt | grep "=="


**bandit10**
**Goal** The password for the next level is stored in the file data.txt, which contains base64 encoded data
**Commands Used**base64 -d data.txt

**bandit11**
**Goal** The password for the next level is stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) 
letters have been rotated by 13 positions
**Commands Used** tr 'A-Za-z' 'N-ZA-Mn-za-m'<data.txt

**bandit12**
**Goal** The password for the next level is stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed
**Commands Used** copied data.txt to /tmp folder and renamed the file using mv and unwrapped each layer after checking file type until I
 get ASCII type. I used gunzip, tar, bunzip2 commands


**bandit13**
**Goal** you get a private SSH key that can be used to log into the next level
**Commands Used** ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220..after copying sshkey.private to local folder


**bandit14**
**Goal** The password for the next level can be retrieved by submitting the password of the current level to port 30000 on localhost.
**Commands Used** nc localhost 30000

**bandit15**
**Goal** The password for the next level can be retrieved by submitting the password of the current level to port 30001 on localhost 
using SSL/TLS encryption.
**Commands Used** openssl s_client -connect localhost:30001

**bandit16**
**Goal** The credentials for the next level can be retrieved by submitting the password of the current level to a port on localhost in the range 31000 to 32000
**Commands Used** nmap -p 31000-32000 localhost, openssl s_client -connect localhost:31790 -quiet

**bandit17**
**Goal** The password for the next level is in passwords.new and is the only line that has been changed between passwords.old and passwords.new
**Commands Used** diff passwords.new passwords.old
