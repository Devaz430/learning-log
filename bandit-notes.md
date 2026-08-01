
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
