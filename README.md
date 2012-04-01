Squeez-0.1 on OpenShift
========================
Squeez is a simple application written on web.py framework which helps in
squeezing/shortening long URLs. It also has features such as copying to 
clipboard and sending the squeezd urls via email.

Running on OpenShift
--------------------

Create an account at http://openshift.redhat.com/

Create a Python application

       rhc app create -a squeez -t python-2.6

Create a MySQL database which will be used by Squeez

       rhc app cartridge add -a squeez -c mysql-5.1

Add this upstream Squeez quickstart repo

    cd squeez
    git remote add upstream -m master git://github.com/stylesen/squeez-quickstart.git
    git pull -s recursive -X theirs upstream master

Then push the repo upstream to OpenShift

     git push

That's it! Squeez is up and running! Visit the site here:

     http://squeez-$yourlogin.rhcloud.com

Email Configuration
-------------------

In order to send emails from Squeez application, edit deploy script which
has code holding all email related config parameters:

    cd squeez
    vi .openshift/action_hooks/deploy
    git add .
    git commit -a -m 'Email configuration done.'
    git push
