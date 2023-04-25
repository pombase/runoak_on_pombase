# PomBase OAK

A few script to test runoak on PomBase data

## Installation

To install the dependencies, we used poetry (see [poetry installation instructions](https://python-poetry.org/docs/)). These scripts work with poetry version 1.4.2, to update you can do `$poetry self update`.

In the source directory run:

```
poetry install
```

This should create a folder `.venv` with the python virtual environment. To activate the virtual environment, then run:

```
poetry shell
```

Now when you call `python`, it will be the one from the `.venv`.

## Downloading pombase data

Execute the bash script `get_data.sh`, see the comments to see what the script does.

## Running the enrichment

To run the enrichments, see `example_enrichment.sh`. Full documentation on how to run the enrichment can be found [here](https://incatools.github.io/ontology-access-kit/cli.html#runoak-enrichment).
