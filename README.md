# Composable Batch Files

. . .are batch files that can be built like legos, one piece at time or together to create a whole Millennium Falcon script.

## Usage

Most of the batch files are run using a single parameter, for example:

c:\>g [single parameter]

If you want to run a composite script, put multiple calls inside a single label, for example:

:start_here

call :step_1

call %0 step_2

call m.bat step_3

where in this case, the first 2 steps exist is the same batch file and the third step exists in an external batch file.

