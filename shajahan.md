# Running on SGA data

1. Follow the instructions in the readme file for installing (takes a while).
2. Activate the virtual environment by running `poetry shell`.
3. To make sure that it works, and to download the necessary files:
   1. Remove the content of the folder `results`
   2. Run `bash get_data.sh; bash example_enrichment.sh` (this should generate two files in the folder `results/`).
4. Copy the file `SGA_aal1D_aal1OE_Any_Two_overlap_and_Background.xlsx` into the folder `data`. This file should be an excel file with the following columns:
    1. aal1D_Any_Two_Overlapped
    1. aal1D_Background
    1. aal1OE_Any_Two_Overlapped
    1. aal1OE_Background
5. Then run `bash enrichment_shajahan.sh` (see comments in the script). That should write the output files in the `results/` directory.