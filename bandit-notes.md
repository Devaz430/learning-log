
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
