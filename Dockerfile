FROM python:3.6

RUN pip install matplotlib pandas numpy

WORKDIR /LeanReportCreator
ADD . /LeanReportCreator

RUN tar -xvf /LeanReportCreator/open-sans-condensed.tar -C /usr/share/fonts/truetype

ENTRYPOINT ["python", "GenerateReportDocker.py"]

#Usage:
#docker run -i --rm jasonhillier/lean-report-creator < ./json/sample.json > ./report.html
