# ss4a-ol-map-brmpo
OpenLayers map/app for SS4A grant application for Boston Region MPO area

## Software Dependencies
This application depends upon the following JavaScript libraries:
* [jQuery](https://jquery.com/)
* [OpenLayers](https://openlayers.org/)
* [Matt Walker's OpenLayers layer switcher add-on control](https://github.com/walkermatt/ol-layerswitcher).

The jQuery and OpenLayers libraries are loaded from a CDN; the OpenLayers layer switcher add-on library is loaded locally.

## Data Sources
* [Stamen 'toner-lite' basemap](http://maps.stamen.com/)
* [MassGIS Basemap](https://www.mass.gov/service-details/massgis-base-map)
* [OpenStreetMap](https://www.openstreetmap.org)
* Boundary of the Boston Region MPO: [MassGIS TOWNS_POLYM layer](https://www.mass.gov/info-details/massgis-data-municipalities),
 [CTPS list of Boston Region MPO towns](https://www.ctps.org/mpo_communities)
* Boundary of towns in MAPC, but not in Boston Region MPO: [MassGIS TOWNS_POLYM layer](https://www.mass.gov/info-details/massgis-data-municipalities), 
[MAPC website](https://www.mapc.org/)
* [Areas of Persistent Poverty and Historically Disadvantaged Communities](https://datahub.transportation.gov/stories/s/tsyd-k6ij)
* [NHSTA Fatal Analysis Reporting System crash data](https://www.nhtsa.gov/file-downloads?p=nhtsa/downloads/FARS/)

## Data Processing
Documentation on the method used to prepare the data for this application 
may be found in the document __SS4A_processing.html__ in the __html__ subfolder of this repository.

## Repository Structure
The contents this repository are as follows:
| Subdirectory | Contents |
| ------------ | ----------- |
| README.md | This README.md file |
| LICENSE | License file |
| index.html | HTML page for app |
| About.html | 'About' page for app |
| css | CSS for styling the app itself |
| data | GeoJSON for map layers (some are replaced by WMS layers) |
| html | HTML page documenting SS4A data processing |
| img | Image files for CTPS 'branding' |
| js | JavaScript code for app logic |
| libs | JavaScript and CSS files for libraries loaded locally |
| sld | XML for Styled Layer Descriptors (SLDs) for WMS map layers (not all are currently used) |
| sql | SQL scripts to create tables in PostGIS |

## Running the app 
The app is entirely self-contained, requiring no backing database to be run.
As such it can be run on any laptop or desktop \(in addition to a web server\).  

To run the app on a desktop or laptop:
* Clone the repository into a directory, call it 'x'
* 'cd x'
* python -m http.server 8888 --bind localhost
* In a web browser:
  * http://localhost:8888

## Colophon
Author: [Ben Krepp](mailto:bkrepp@ctps.org)  
Address: Central Transportation Planning Staff, Boston Region Metropolitan Planning Agency  
10 Park Plaza  
Suite 2150  
Boston, MA 02116  
United States