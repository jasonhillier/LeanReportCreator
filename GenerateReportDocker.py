# Reads report JSON from stdin, then outputs the final HTML report to stdout
# usage: GenerateReportDocker.py < ./sample.json > ./report.html
from LeanReportCreator import LeanReportCreator

lrc = LeanReportCreator("/dev/stdin")
lrc.genearte_report()

with open("./outputs/Report.html", "r") as reportfile:
    print(reportfile.read())
