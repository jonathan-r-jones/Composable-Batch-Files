# Composable Batch Files

. . .are batch files that can execute a single function or be strung together like legos to create a whole Millennium Falcon script.

## Usage

Most of the batch files are run using a single parameter.

For example, running Hello_World.bat in the following way will yield the following output:


d:\dropbox\it\composable_batch_files>hello_world step_1

<em>
* Step 1. A call to this batch file.
</em>

Put some code here.

d:\dropbox\it\composable_batch_files>hello_world_2 step_2

* Step 2. A call to another batch file.

Put some code here.

d:\dropbox\it\composable_batch_files>hello_world step_3

* Step 3.

Put some code here.

d:\dropbox\it\composable_batch_files>hello_world some_steps

* Some steps.

* Step 1. A call to this batch file.

Put some code here.

* Step 2. A call to another batch file.

Put some code here.

d:\dropbox\it\composable_batch_files>hello_world all_steps

* All steps.

* Step 1. A call to this batch file.

Put some code here.

* Step 2. A call to another batch file.

Put some code here.

* Step 3.

Put some code here.



To see list of the commonly used composed batch files type:

d:\dropbox\it\composable_batch_files>m list

* List of common CBF Helper Batch files.

File  Description 
<br/>
----  -----------------------------------------------------------------
<br/>
  c:  Clear screen and reset color.
<br/>
 cn:  Used for Git cloning tasks.
<br/>
 cy:  Copy file(s).
<br/>
 fn:  Filename lookup. Used as a resource by "no" and "npp" batch files.
<br/>
  g:  Perform Git-related tasks.
<br  />
  h:  Perform Sencha-related tasks.
  m:  Perform miscellaneous tasks. (The main file.)
 me:  Execute Multi-Edit against either current folder file or a lookup.
 no:  Execute Notepad against either a current folder file or a lookup.
npp:  Execute Notepad++ against either a current folder file or a lookup.
 of:  Open Folder.
  s:  SQL/Database, including LDAP, related tasks.
 sm:  Execute Sublime against either a current folder file or a lookup.
 td:  Transform Directory.



To see the help for a particular batch file type in the batch file name plus " /?" or in some 
cases, just leave off the parameter. For example:

d:\dropbox\it\composable_batch_files>g [or g /? g -help]

* Perform Git-related tasks.

Usage: g [single parameter]

    Parameter  Description
-------------  -----------------------------------------------------
            a  Add changes.
          asf  Add single file.
            c  Commit changes for only those files that were staged.
         pull  Get-latest.
         push  Push changes.
         rvfd  Revert folder.
         rvfl  Revert file.
          rvp  Revert persistent files.
            s  Get status.
           ss  Get super status.



To see a brief PowerPoint Presentation on CBF, type:

d:\dropbox\it\composable_batch_files>m ppt