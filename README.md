Coffee_Jade_Stylus_inside_web2py
================================

This is how you can work with coffeescript, jade and stylus inside your web2py app

see a youtube video here
https://www.youtube.com/watch?v=zt5gnKk40Zw

Note: this is a per app procedure!!

1 - Firs make sure you have nodejs installed in your machine
    goto http://nodejs.org/ and download/install it<br>
2 - install gulp<br>
    goto http://gulpjs.com/ and learn about it<br>
    install it with<br>
    npm install -g gulp <br>
    to install it globally<br>
3 - there is a file called package.json at the root of the app. It has inside some dependencies to be installed.<br>    
  from the command line execute:<br>
  npm install<br>
  this will make all dependencies written inside package.json to be installed in a node_modules folder<br>
4 - in the command line execute at the root of your app:<br>
  gulp<br>
  this command will call gulp that in turn will call gulpfile.js . gulpfilejs will then call gulpfile.coffe. Hey, I LIKE coffeescript!!<br>

5 - if you use chrome install the live reload plugin.

6 - Start your web2py server as usual<br>
  inside views/default/ folder you can create your jade files<br>
  inside static/css folder you can create your stylus files<br>
  inside satic/js folder you can create your coffeescript files<br>
  
  all of these files will be automatically converted to the same html,css and js respectively<br>
  
  This is just an example it can be tweaked as we wish. For that just change the gulpfile.coffee file.<br>
  
  Note: there is a ng-classify and sourcemaps task inside my gulpfile.coffee. <br>
  Ignore them for this example. <br>
  Have fun!
