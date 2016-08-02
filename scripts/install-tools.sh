#!/bin/sh
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://testtoolshed.g2.bx.psu.edu/ -n filebrowser -o pitagora -r d2eb5a5a26a3 --panel-section-name "Pitagora Tools"
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://testtoolshed.g2.bx.psu.edu/ -n imp_exp -o pitagora -r 4c225e57d44b --panel-section-name "Pitagora Tools"
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://testtoolshed.g2.bx.psu.edu/ -n sailfish_linux -o pitagora -r 655e814b3dc3 --panel-section-name "RNA-seq" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://testtoolshed.g2.bx.psu.edu/ -n sratoolkit_centos -o pitagora -r b88e52ddb532 --panel-section-name "NGS Tools" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://testtoolshed.g2.bx.psu.edu/ -n tool_shed_test_1 -o pitagora-mak -r 3bbc8d428ef1 --panel-section-name "Variant Call"
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://testtoolshed.g2.bx.psu.edu/ -n unix_tools -o pitagora -r 8fd5091a4091 --panel-section-name "Pitagora Tools"
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n bam_to_sam -o devteam -r 250151b4d934 --panel-section-name "NGS Tools" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n bedtools -o iuc -r 82aac94b06c3 --panel-section-name "BED Tools" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n bowtie2 -o devteam -r ceb6467e276c --panel-section-name "NGS Tools" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n bsfcall -o yutaka-saito -r f274c166e738 --panel-section-name "BS-seq" --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n bwa_wrappers -o devteam -r b4427dbb6ced --panel-section-name "NGS Tools" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n commet -o yutaka-saito -r dfdfbdd47b32 --panel-section-name "BS-seq" --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n cuffdiff -o devteam -r 604fa75232a2 --panel-section-name "RNA-seq" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n cufflinks -o devteam -r 5346d5eea8b1 --panel-section-name "RNA-seq" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n cuffmerge -o devteam -r b6e3849293b1 --panel-section-name "RNA-seq" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n elapsed_time -o pitagora -r 6ea5fd3cbf6a --panel-section-name "Pitagora Tools" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n fastqc -o devteam -r 0b201de108b9 --panel-section-name "NGS Tools" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n fastq_mcf -o jjohnson -r b61f1466ce8f --panel-section-name "NGS Tools" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n join -o devteam -r de21bdbb8d28 --panel-section-name "General" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n macs -o devteam -r ae2ec275332a --panel-section-name "ChIP-seq" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n macs14 -o ryo-tas -r c23082638ba0 --panel-section-name "ChIP-seq" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n macs2 -o iuc -r 859c982b1f7f --panel-section-name "ChIP-seq" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n picard -o devteam -r 379fdf4c41ac --panel-section-name "Picard" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n rsem -o jjohnson -r 30a8343fb0e7 --panel-section-name "RNA-seq" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n sam2interval -o devteam -r 8c737b8ddc45 --panel-section-name "NGS Tools"
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n sam_to_bam -o devteam -r 8176b2575aa1 --panel-section-name "NGS Tools" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n sicer -o devteam -r 82a8234e03f2 --panel-section-name "ChIP-seq" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n snpsift -o iuc -r 9e8280e19338 --panel-section-name "SnpSift" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n sql_tools -o sem4j -r 51847f1c0acb --panel-section-name "SQL Tools"
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://testtoolshed.g2.bx.psu.edu/ -n tophat2_docker -o ryotas -r 92e9168067b6 --panel-section-name "RNA-seq"
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n trinityrnaseq -o biomonika -r 39b85d32b0bf --panel-section-name "RNA-seq" --repository-deps --tool-deps
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n import_mpileup -o takakoron -r 804ab104d508 --panel-section-name "DNAPod"
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n detect_snps -o takakoron -r 8215a6fdb038 --panel-section-name "DNAPod"
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n detect_indels -o takakoron -r b9e2d98c720d --panel-section-name "DNAPod"
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n merge_snpsindels_files -o takakoron -r 5da57f040f2e --panel-section-name "DNAPod"
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n distribution_of_dna_polymorphism -o takakoron -r 9aa9da228b8c --panel-section-name "DNAPod"
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://toolshed.g2.bx.psu.edu/ -n snpeff_3_6c -o takakoron -r 216d02ec973a --panel-section-name "DNAPod"
python ~/galaxy/scripts/api/install_tool_shed_repositories.py -a $1 -l http://localhost:8080 -u https://testtoolshed.g2.bx.psu.edu/ -n megap_pre -o emihat -r dfa3aa2e0e42 --panel-section-name "MeGAP"
echo "Tool installation completed!"
