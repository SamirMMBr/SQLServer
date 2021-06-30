-- Samir M. Morimoto - 2021
-- Problem: List files and extract DirectoryPathFile and FileName
-- Create variable to receive result from DIR command
DECLARE @cmdOutputDir TABLE ( fullPath varchar(MAX) )
/*
Use procedure xp_cmdshell to execute DIR command, parameters:
    https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/dir
    /S    Lists every occurrence of the specified file name within the specified directory and all subdirectories.

    /B    Uses bare format (no heading information or summary).

    /A    Displays files with specified attributes.
          attributes   D  Directories      R  Read-only files
                       H  Hidden files     A  Files ready for archiving
                       S  System files     -  Prefix meaning not
*/
-- Note: Used attribute -D to suppress Directories on result
INSERT INTO @cmdOutputDir
EXEC xp_cmdshell 'DIR D:\Adm\Vendas\SINTEGRA /S /B /A-D' 

-- Show result
SELECT * FROM @cmdOutputDir

-- Extracting: DirectoryPathFile and FileName
SELECT d.fullPath 
     , PostionBarFromRightToLeft = CHARINDEX('\', REVERSE(d.fullPath))
     , DirectoryPathFile = LEFT(d.fullPath, LEN(d.fullPath) - CHARINDEX('\', REVERSE(d.fullPath)))
     , FileName = RIGHT(d.fullPath, CHARINDEX('\', REVERSE(d.fullPath)) -1)
FROM @cmdOutputDir d
WHERE d.fullPath IS NOT NULL
ORDER BY d.fullPath
