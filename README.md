# telomerehunter in docker #

This is the repository to generate a docker image for telomerehunter.

TelomereHunter is a tool for estimating telomere content from human whole-genome sequencing data. It is designed to take BAM files from a tumor and a matching control sample as input. However, it is also possible to run TelomereHunter with one input file. TelomereHunter extracts and sorts telomeric reads from the input sample(s). For the estimation of telomere content, GC biases are taken into account. Finally, the results of TelomereHunter are visualized in several diagrams.TelomereHunter can be found here:

https://www.dkfz.de/en/applied-bioinformatics/telomerehunter/telomerehunter.html

Further information can be found in the research article here:
https://doi.org/10.1186/s12859-019-2851-0
 
Original code for the docker file and scripts by keiranmraine and available here:
https://github.com/cancerit/telomerehunter-docker

