Squeeze-0.1 on OpenShift
========================
Squeeze is a simple application written on web.py framework which helps in
squeezing/shortening long URLs. It also has features such as copying to 
clipboard and sending the squeezed urls via email.

Running on OpenShift
--------------------

Create an account at http://openshift.redhat.com/

Create a Python application

       rhc app create -a squeeze -t python-2.6

Create a MySQL database which will be used by Squeeze

       rhc app cartridge add -a squeeze -c mysql-5.1

Add this upstream Squeeze quickstart repo

    cd squeeze
    git remote add upstream -m master git://github.com/stylesen/squeeze-quickstart.git
    git pull -s recursive -X theirs upstream master

Then push the repo upstream to OpenShift

     git push

That's it! Squeeze is up and running! Visit the site here:

     http://squeeze-$yourlogin.rhcloud.com

Email Configuration
-------------------

In order to send emails from Squeeze application, then edit squeeze.cfg which
has a section called '[email]' holding all email related config parameters:

   cd squeeze
   vi data/squeeze.cfg
   git add .
   git commit -a -m 'Email configuration done.'
   git push
