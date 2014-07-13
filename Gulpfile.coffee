gulp       = require 'gulp'
stylus     = require 'gulp-stylus'
prefix     = require 'gulp-autoprefixer'
cssmin     = require 'gulp-cssmin'
jade       = require 'gulp-jade'
minifyHTML = require 'gulp-minify-html'
ngClassify = require 'gulp-ng-classify'
coffee     = require 'gulp-coffee'
gutil      = require 'gulp-util' 
coffeelint = require 'gulp-coffeelint'
sourcemaps = require 'gulp-sourcemaps'
livereload = require 'gulp-livereload'
gulp.task 'coffee', ->
  gulp.src 'static/js/*.coffee'
    .pipe coffeelint()
    .pipe coffeelint.reporter()
    .pipe ngClassify()
    .pipe sourcemaps.init()
    .pipe(coffee({bare: true}).on('error', gutil.log))
    .pipe sourcemaps.write('./maps')
    .pipe gulp.dest 'static/js'
gulp.task 'css', ->
  gulp.src 'static/css/*.styl'
    .pipe stylus()
    .pipe prefix "> 1%"
    .pipe cssmin keepSpecialComments: 0
    .pipe gulp.dest 'static/css'
gulp.task 'html', ->
  gulp.src 'views/default/*.jade'
    .pipe jade()
    .pipe minifyHTML()
    .pipe gulp.dest 'views/default'
gulp.task 'watch', ->
    livereload.listen()
    gulp.watch('views/default/*.jade', ['html']).on('change',  livereload.changed)
    gulp.watch('static/css/*.styl', ['css']).on('change',  livereload.changed)
    gulp.watch('static/js/*.coffee', ['coffee']).on('change',  livereload.changed)
gulp.task 'default', ['css', 'html','coffee','watch']