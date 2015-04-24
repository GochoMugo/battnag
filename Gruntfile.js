/**
* Run script for Grunt, task runner
*
* The MIT License (MIT)
* Copyright (c) 2015 GochoMugo <mugo@forfuture.co.ke>
*/


var pkg = require("./package.json");


exports = module.exports = function(grunt) {
  "use strict";

  grunt.initConfig({
    jshint: {
      all: [
        "Gruntfile.js",
        "js/**/*.js",
      ],
      options: {
        jshintrc: true
      }
    },
    nodewebkit: {
      options: {
        platforms: pkg.platforms,
        buildDir: "./releases",
        buildType: function() {
          return "battnag-v" + pkg.version;
        }
      },
      src: ["./out/app/**/*"]
    }
  });

  grunt.loadNpmTasks("grunt-contrib-jshint");
  grunt.loadNpmTasks("grunt-node-webkit-builder");

  grunt.registerTask("test", ["jshint"]);
  grunt.registerTask("dist", ["nodewebkit"]);
};
