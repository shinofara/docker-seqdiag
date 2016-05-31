FROM python
RUN apt-get update ; apt-get install -y  fonts-ipafont ; apt-get clean

# seqdiagインストール手順
# http://blockdiag.com/ja/seqdiag/introduction.html#setup
# pillow funcparserlibがseqdiagなどで必要
# reportlabはPDF化の為に必要
RUN pip install pillow funcparserlib blockdiag seqdiag actdiag nwdiag reportlab
VOLUME ["/work"]
WORKDIR /work