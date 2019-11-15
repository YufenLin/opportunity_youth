# A Revised Update on the Number of Opportunity Youth in South King County

This project offers an updated estimate of the number of Opportunity Youth in South King County using the 2017 5-year American Community Survey [(ACS)](https://www.census.gov/programs-surveys/acs/about.html) Public Use Microdata Survey [(PUMS)](https://www.census.gov/programs-surveys/acs/technical-documentation/pums.html).

## Findings

These trends may indicate that current projects aimed at younger Opportunity Youth have helped positively in aiding more to graduate high school. However since we are seeing less Opportunity Youth enter college or graduate college, this might be an opportunity for more targeted aid aimed at Opportunity Youth who have graduated high school, but have not entered the workforce or entered/finished college.

* There are just over 12,000 Opportunity Youth in the Road Map Project region (South Seattle and South King County). This is a marked decrease to the 19,000 reported in the 2016 study (and recently reported in the Seattle Times).
* A possible trend we have identified is that the percentage of Opportunity Youth with a college degree (Associates degree or higher) has decreased by 6% (total between all age groups) when compared to 2014 figures.
* We have also found that in the 19-21 age group, college enrollment has decreased by 3% relative to 2014. 
* Another trend we have identified is that the percentage of Opportunity Youth that have completed High School (or obtained a GED) has increased by 6%. 


## Process
* A map that visualizes which parts of King County are a part of South King County;
* Estimated number of opportunity youth in South King County from US Census PUMS data in 2017([PUMS_Data_Dictionary_2017](references/PUMS_Data_Dictionary_2017.pdf)). According to:                
    + PUMA is in South King County. (PUMA)
    + Public use microdata area code (PUMA) based on 2010 Census definition    
    + Employment status recode(ESR)
    + School enrollment (SCH)
    + Age (AGEP)                    
    + Educational attainment (SCHL)
    + Person’s weight (PWGTP)


## Methodology

* Query data from a PostgreSQL database;
* Using Jupyter Notebook to combine our code, our notes, and data visualization. To visualize descriptive statistics, we use matplotlib to create bar charts and geopandas to create population choropleth map;


## Setup Instructions

To download the necessary data, please run the following command:

```bash
# installs necessary requirements and downloads necessary data
# note: this may take anywhere from 10-20 minutes
sh setup.sh
```

### `oy-env` conda environment

This project relies on you using the [`environment.yml`](environment.yml) file to recreate the `oy-env` conda environment. To do so, please run the following commands:

```bash
# create the oy-env conda environment
# note: this make take anywhere from 10-20 minutes
conda env create -f environment.yml

# activate the oy-env conda environment
conda activate oy-env

# make oy-env available to you as a kernel in jupyter
python -m ipykernel install --user --name oy-env --display-name "oy-env"
```
