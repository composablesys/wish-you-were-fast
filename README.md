# wish-you-were-fast

Wish-you-were-fast is a real-time wasm benchmarking + visualization plaftorm. This README attempts to explain the 
various directories and the parts of the platform they represent.

* API Server

    Hosts a Flask Server acting as an API Gateway microservice between the WASM visualization frontend and
    the PostgresQL database (storing the benchmarking results). Currently, the API Server provides 3 REST APIs necessary to provide the initial 3 views of the frontend visualization. It receives request parameters from the 
    frontend service, queries the database, parses it and returns a JSON result containing the requested data. 

* Client

    Provides a barebones html file which hosts the vegalite-based visualizations. Easiest way to get this running locally is to go to the directory on cmdline and start a http server using 
    "python -m http.server". The visualization would then be available on localhost:8000/visualize.html.

    Note: The visualization currently provides only the first view. While the API Server supports the necessary APIs for all 3 views, we are yet to figure out how an interactive datarange
    on the first vegalite view (i.e the x-axis select interval) can be converted from vegalite object to a dynamic REST API parameter. Once done, the remaining 2 views can be impleted similar to the multiview-exec.vl.json specification in the vegalite folder.

* historical-data

    Contains raw data for each of the 6 engines on PolyBenchC for a 6 month duration from Sept '22 to Feb '23, sampled at a monthly interval. Also contains a consolidated csv which can be used to load data directly to the PostgresQL database.

* vegalite

    Contains examples and test-scripts for visualizing and learning vegalite

* DBSchema.txt

    Lays down the DB schema to create the PostgresQL database

* DBQueries.txt

    Documents the queries required to create the 3 initial vegalite views




