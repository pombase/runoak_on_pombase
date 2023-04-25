"""
This script takes a set of queries in JSON format and runs them against the PomBase API.
These files are located in the pombase_queries directory.
The results are saved as a list of gene IDs in a text file.
The output is written to the background_lists directory.
"""

import requests
import json
import glob

# Get the list of query files
query_files = glob.glob('pombase_queries/*.json')

for query_file in query_files:
    # Get the name of the query file
    query_name = query_file.split('/')[-1].split('.')[0]

    with open(query_file) as ins:
        query_json = json.load(ins)

    # Run the query against the PomBase API
    resp = requests.post('https://www.pombase.org/api/v1/dataset/latest/query', json=query_json)
    resp_json = resp.json()

    # Write the results to a text file
    with open(f'background_lists/{query_name}.txt', 'w') as out:
        for element in resp_json['rows']:
            out.write(f"PomBase:{element['gene_uniquename']}\n")
