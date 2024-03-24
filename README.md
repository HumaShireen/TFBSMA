# Employing Genome-wide Transcriptional Regulatory Circuits to Predict Tissue-specific Enhancers

## Purpose
This code aims to map transcription factor binding sites in any DNA sequence. In Phase-1 of the study, it was utilized to map the binding sites of 23 transcription factors, while in Phase-2, it was employed to map the binding sites of 6 core forebrain-specific transcription factors.

## Operating System
The code is compatible with Biolinux.

## Programming Language
Perl version 5.32.1 is used for implementation.

## How to Run the Code
1. Clone this repository to your local machine using the following command:
```
 git clone https://github.com/HumaShireen/TFBSMA.git

```

2. Open the Linux terminal.
3. Navigate to the directory containing the cloned repository.
4. Execute the following command: 
```
perl src/TFBSMA.pl
```
5. Press enter to run the code.

## Input Files
Target genomic sequence.

## Pre-processing Required for Creating Target Genomic Sequence File
For genome-wide prediction of CRMs, the following steps were executed:

1. Download repeat-masked sequence for the target chromosome (e.g., chromosome 1).
2. Mask exons using a BED file and BED tools.
3. Reverse the chromosome sequence to obtain the complementary strand using the script `dna_rev.pl`.
4. Download the whole chromosome BED file and exonic BED file from the UCSC Genome Browser.
5. Remove unnecessary columns from the BED files.
6. Make separate BED files for the positive and negative strands for masking.
7. Mask the target genomic sequence using BED tools.
8. The target genomic sequence is now ready to be used as input in this code.

