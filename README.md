Coffee_Jade_Stylus_inside_web2py
================================

This is how you can work with coffeescript, jade and stylus inside your web2py app



Note: this is a per app procedure!!

1 - Firs make sure you have nodejs installed in your machine
    goto http://nodejs.org/ and download it
    
2 - install gulp
    goto http://gulpjs.com/ and learn about it
    npm install -g gulp to install it globally
    
3 - there is a file called package.json at the root of the app. It has inside some dependencies to be installed.    
  from the command line execute:
  npm install, this will make all dependencies written inside package.json to be installed in a node_modules folder

4 - in the command line execute at the root of your app:
  gulp
  this command will call gulp that in turn will call gulpfile.js . gulpfilejs will then call gulpfile.coffe. Hey, I LIKE coffeescript!!

5 - if you use chrome install the live reload plugin.

6 - Start your web2py server as usual
  inside views you can create your jade files
  inside static/css you can create your stylus files
  inside satic/js you can create your coffeescript files
  
  all of these files will be automatically converted to html,css and js respectively
  
  Have fun!
