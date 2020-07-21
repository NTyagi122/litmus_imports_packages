# Imports SSIS Packages

This repository contains the SQL Server Integration packages that are used for importing data that didn't fit into the Seattle process. Everything is contained in one solution file. 

The Visual Studio soloution is stored in a sub folder called __solution__, it contains two projects: an SSIS project also called __integration__ and a Database project called __database__.

## SSIS Project
The SSIS project contains the three following SSIS packages:
### import_just_giving_api.dtsx
This package imports data from the Just Giving API and was requested by [Dionne Findley](mailto:Dionne.Findley@alzheimers.org.uk). The API is a bit restricted and only allows 3 months worth of data to be extracted in one request, therefore package loops through a range of dates making several calles to the API and imports the data into a temporary staging table before updating the final table. This table is called __just_giving_pages__ in the __import_reports__ database on the __TASPDCPSQL20__ server. The package is executed by a SQL Agent task on the same server called __Import Justgiving API__ which runs four times a day.

### import_mitel_calls.dtsx
This package works much the same as the one above, it makes calls to an API in a loop which loads data into a temporary table which then finally updates an actual table. This import was requested by [Gary Grant](mailto:Gary.Grant@alzheimers.org.uk). The package is executed by a SQL Task on the __TASPDCSQL20__ server called __Import Mitel API__ and it loads data into a table called __mitel_calls__ in the __mitel__ database on server __TASSDCDSQL16__.

### import_bulk_conthist.dtsx
This package is a work in progress which as not yet been completed or deployed, it was requested by [Dionne Findley](mailto:Dionne.Findley@alzheimers.org.uk). The intention of the package is load bulk Progress contact history from a CSV file fast. The current method uses Seattle which on a typical run can lock up Progress for 4+ hours, this package can do the same in a mater of minutes.

