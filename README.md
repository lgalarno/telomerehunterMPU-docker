# TelomereHunter in docker #

This is the repository to generate a docker image for telomerehunter.
path
## Information about TelomereHunter ##
TelomereHunter is a tool for estimating telomere content from human whole-genome sequencing data. It is designed to take BAM files from a tumor and a matching control sample as input. However, it is also possible to run TelomereHunter with one input file. TelomereHunter extracts and sorts telomeric reads from the input sample(s). For the estimation of telomere content, GC biases are taken into account. Finally, the results of TelomereHunter are visualized in several diagrams.TelomereHunter can be found here:

https://www.dkfz.de/en/applied-bioinformatics/telomerehunter/telomerehunter.html

Further information can be found in the research article here:
https://doi.org/10.1186/s12859-019-2851-0
 
Original code for the docker file and scripts by keiranmraine and available here:
https://github.com/cancerit/telomerehunter-docker


## Installation Instructions ##

### Option 1: Download the Docker image from Docker Hub ###

A Docker image from Docker Hub will be available soon.

### Option 2: Build the Docker image locally ###

You can build the images locally from this GitHub repository. Note that building the image will take 10 to 20 minutes depending on your machine since it compiles a few libraries from scratch.

* git clone git@github.com:lgalarno/telomerehunterMPU-docker.git

* cd cd telomerehunterMPU-docker

* docker build -t telomerehunter .

## Usage ##

* docker run -v /local-path:/mnt/data -t telomerehunter telomerehunter -ibt /mnt/data/TUMOR_BAM -ibc /mnt/data/CONTROL_BAM -o /mnt/data/RESULT_DIRECTORY -p PROJECT

- local-path : the path to your files on your computer.
- /mnt/data  : the path used internally by the image. It will reflect the structure of the local-path, including subdirectories.
- TUMOR_BAM : the bam file of the tumor alignment. See more information in the Notes below.
- CONTROL_BAM : the bam file of the control sample alignment.
- RESULT_DIRECTORY : a folder where telomerehunter will output the resulst of the analysies.
- PROJECT : Name of the project. The folder structure of the results will look like: /local-path/RESULT_DIRECTORY/PROJECT See more information in the Notes below.

* All possible TelomereHunter options can be found using the -h/--help option, eg docker run -v /local/path:/mnt/data -t telomerehunter telomerehunter -h

## Notes ##

* TUMOR_BAM : By the authors choice, the samples are labelled "tumor and control" in the results. This is hardcoded by desing and cannot be changed. However, any treatment can in principle be analyzed by TelomereHunter. 
* PROJECT : A project may often contain one control and many treatments (different samples from the same tumor, different drugs or physical treatment, and time lapse). You may want to use the same RESULT_DIRECTORY with different PROJECT folders for comparisons with the same control, for instance. The results folder structure will then be:
```bash
RESULT_DIRECTORY
│
└───PROJECT_treament1
│   │   file011.csv
│   │   file012.pdf
│   │
│   └───subfolder1
│       │   file111.png
│       │   file112.pdf
│       │   ...
│   
└───PROJECT_treament2
│   │   file011.csv
│   │   file012.pdf
...
```

* The original Python code was slightly modified to fix of a bug that prevented completion of the analysis. However, for questions about TelomereHunter, please contact the development team (see the Information above).
