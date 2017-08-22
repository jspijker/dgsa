# dgsa
Dutch Geochemical Soil Atlas, R Package

This package contains the data of the Dutch Geochemical Soil Atlas,
together with some functions to visualise the data.

The Dutch Geochemical Soil Atlas, in Dutch,  is available via
[Wageningen Academic Publishers](https://doi.org/10.3920/978-90-8686-743-1), both in print and as Open Acces and in print.  

Information how the data of the Dutch Geochemical Soil Atlas was obtained, please see the accompaniyng thesis of [Van Der Veer (2006)](https://dspace.library.uu.nl/handle/1874/13275).

The DGSA package contains the data and 3 functions to visualise the data, these function are:
 * distribution
 * map
 * scatter
 
Documentation of these functions can be found in man pages. These functions give a ggplot2 object as result, see the ggplot2 library and man page.

The dataset is a single large data.frame named 'atlas' and a second data.frame with meta data named 'atlasmeta'. Please see the man pages of atlas and atlasmeta for more information

for an example how to use the data, please see the [dgsa-doc](https://github.com/jspijker/dgsa-doc)
repository
