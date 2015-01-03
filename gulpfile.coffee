gulp = require 'gulp'
coffee = require 'gulp-coffee'
jade = require 'gulp-jade'
browserify = require 'gulp-browserify'

gulp.task 'coffee', ->
  gulp.src 'src/index.coffee'
    .pipe coffee()
    .pipe gulp.dest 'prebuild'

gulp.task 'jade', ->
  gulp.src 'src/index.jade'
    .pipe jade()
    .pipe gulp.dest 'build'

gulp.task 'browserify', ['coffee'], ->
  gulp.src 'prebuild/index.js'
    .pipe browserify()
    .pipe gulp.dest 'build'

gulp.task 'default', ['jade', 'browserify']
