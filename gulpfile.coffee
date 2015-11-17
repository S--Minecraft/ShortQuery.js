gulp = require "gulp"
del = require "del"
header = require "gulp-header"
notify = require "gulp-notify"
plumber = require "gulp-plumber"
concat = require "gulp-concat"
coffee = require "gulp-coffee"
uglify = require "gulp-uglify"

packageJson = require "./package.json"
banner = [
  "/*!"
  " * <%= packageJson.name %> v<%= packageJson.version %>  <%= packageJson.license %> License"
  " */"
].join "\n"
src = "./src"
bin = "./bin"

gulp.task "coffee", ->
  return gulp.src("#{src}/**/*.coffee")
    .pipe(plumber({errorHandler: notify.onError("Error: <%= error.message %>")}))
    .pipe(coffee())
    .pipe(concat("shortQuery.js"))
    .pipe(uglify({preserveComments:"license"}))
    .pipe(header(banner, {packageJson: packageJson}))
    .pipe(gulp.dest(bin))

gulp.task "default", ["coffee"]
gulp.task "compile", ["coffee"]

gulp.task "clean", (cb) ->
  return del ["./bin", "./release"], cb

gulp.task "watch", ["default"], ->
  gulp.watch "#{src}/*.coffee", ["coffee"]
  return
