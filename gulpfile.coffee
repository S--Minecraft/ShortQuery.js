gulp = require "gulp"
del = require "del"
notify = require "gulp-notify"
plumber = require "gulp-plumber"
concat = require "gulp-concat"
coffee = require "gulp-coffee"
uglify = require "gulp-uglify"

src = "./src"
bin = "./bin"

gulp.task "coffee", ->
  return gulp.src("#{src}/**/*.coffee")
    .pipe(plumber({errorHandler: notify.onError("Error: <%= error.message %>")}))
    .pipe(coffee({bare: true}))
    .pipe(concat("shortQuery.js"))
    .pipe(uglify())
    .pipe(gulp.dest(bin))

gulp.task "default", ["coffee"]
gulp.task "compile", ["coffee"]

gulp.task "clean", (cb) ->
  return del ["./bin", "./release"], cb

gulp.task "watch", ["default"], ->
  gulp.watch "#{src}/*.coffee", ["coffee"]
  return
