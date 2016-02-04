module.exports = function(grunt) {

    grunt.initConfig({
        stylus:{
            compile: {
                options: {
                    compress:false,
                    import: [      //  @import 'foo', 'bar/moo', etc. into every .styl file
                        'nib/*',       //  that is compiled. These might be findable based on values you gave
                    ]
                },
                files:{
                    'css/style.css':['css/style.styl']
                }
            }
        },
        bower_concat:{
            all:{
                dest:'./js/app.js',
                cssDest:'./css/app.css',
                mainFiles:{
                    'bootstrap':[
                        'dist/css/bootstrap.min.css',
                        'dist/css/bootstrap-theme.min.css',
                        'dist/js/bootstrap.min.js'
                    ],
                    'font-awesome':[
                        './css/font-awesome.min.css'
                    ],
                },
                dependencies:{
                    'angular':'jquery',
                    'boostrap':'jquery',
                    'boostrap':'normalize-css',
                    'font-awesome':'normalize-css'
                }
            },
        },
        copy:{
            main:{
                files:[
                    {expand:true, cwd:'./libs/font-awesome/fonts/' , src:'**', dest:'./fonts/'},
                    {expand:true, cwd:'./libs/bootstrap/dist/fonts/' , src:'**', dest:'./fonts/'}
                ]
            }
        },
        watch:{
            options: {
                livereload: true,
            },
            stylus:{
                files:['css/style.styl'],
                tasks:['stylus']
            },
            bower_concat:{
                files:['bower.json'],
                tasks:['bower_concat']
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-stylus');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-bower-concat');
    grunt.loadNpmTasks('grunt-contrib-copy');

    grunt.registerTask('default',['watch']);
};