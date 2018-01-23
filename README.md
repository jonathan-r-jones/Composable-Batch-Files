# Composable Batch Files

. . .are batch files that can execute a single function or can be strung together like legos to create a whole Millennium Falcon script.

## Usage

Most of the batch files are run using a single parameter.

For example, running Hello_World.bat in the following way will yield the following output:


d:\dropbox\it\composable_batch_files>hello_world step_1

* Step 1. A call to this batch file.

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
