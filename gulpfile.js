var gulp = require('gulp');
var sass = require('gulp-ruby-sass');
var sourcemaps = require('gulp-sourcemaps');


gulp.task('sass', function () {
    return sass('./themes/hurtwood/sass/main.scss', {sourcemap: true})
        .on('error', function (err) {
            console.error('Error!', err.message);
        })
        .pipe(sourcemaps.write('./', {
            includeContent: false,
            sourceRoot: './themes/hurtwood/sass'
        }))
        .pipe(gulp.dest('./themes/hurtwood/css'));     
});

gulp.task('watch', function() {
    gulp.watch('./themes/hurtwood/sass/**/*', ['sass']);
});

gulp.task('default', ['sass', 'watch']);

