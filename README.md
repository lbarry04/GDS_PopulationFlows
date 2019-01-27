# GDS_PopulationFlows
The Geographical Data Science of Population Flows

This respository hosts the code produced in stages by Lorraine Barry for undertaking regionalization, spatial interaction modelling, factor analysis and elements of geovisualization as part of a PhD in the Geographical Data Science of Population Flows.

The methodolody is based on the creation of fit for purpose regions with the application of spatial interaction modelling and factor analysis to evaluation the demographic tendencies of interaction data notably commuting flows with reference to the example of Northern Ireland. Data sources are the UK Census 2001 and Census 2011 origin destination journey to work datasets at super output area level and ward level, together with key demographic variables from the Census 2011 and 2001. Due to safeguarded use of the journey to work data, core origin destination data files are not made available as part of this public hosting of the methodology.

Stage 2 of the thesis methodology is regionalization which aims to create fit for purpose regions based on the aggregation of ward or super output area census boundaries. It makes use of the Python Spatial Analysis Library (PySAL) notably the pysal.region module, as developed at https://github.com/pysal (PYSAL DEVELOPERS(2014-) and REY, S.(., 2009-. PySAL. Revision 2a9218fe. edn. Github. )

Stage 3 of the thesis methodology is demographic data preparation and linkage. It prepares demographic data, variables and flow counts for the geography created at stage 2. This is a necessary linking stage between stage 2 regionalization and stage 4 spatial interaction modelling and it thus creates a seamless flow between the two processes negating the need to switch between software packages.

Stage 4 of the metholody is spatial interaction modelling based on the psyal.spint module (reference as above). It seeks to analyse the spatial interaction between origins and destinations of regions as set out in stage 2 regionalization based on a set of eight demographic explanatory variables for the precentage of employees within NSEC professional levels 1-3; the percentage of households with no car; deprivation rank; number of jobs; percentage Catholic difference between origin and destination; population density, number of workers; and road distance to nearest employment centre.

Stage 5 relates to factor analysis and correlation analysis on the modelled coefficients from stage 4 spatial interaction modelling. It aims to draw out broad tendencies on the demographics of commuting based on the spatial interactions of created regionalizations. Correlation analysis is undertaken using the python package sklearn https://github.com/scikit-learn/scikit-learn and factor analysis is undertaken using factanal library https://www.rdocumentation.org/packages/stats/versions/3.5.1/topics/factanal and nFactors library https://cran.r-project.org/web/packages/nFactors/nFactors.pdf within R. 

This code provides a seamless flow between the creation of regions more suited to the analysis of interaction data and the use of those regions to understand the demographic tendencies of flows.

This research draws on coding inspiration from Taylor Oshan 2016 and Adam Dennett 2017.
