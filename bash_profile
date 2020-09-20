source ~/.profile

newCommand(){
  atom ~/.bash_profile
}

newRepo(){
git init
git add .
git commit -m"initial commit";
git remote add origin https://github.com/Heyneysey/$1.git
}


newSite(){
  # Change directory to Sites
  cd /Users/jhennessy/Sites
  # Make directory with name $1
  mkdir "$1"
  # Go to directory $1
  cd "$1"
  # Make index.html file with content
  cat > index.html << EOF

        <!DOCTYPE html>
        <html lang="en">

        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <meta http-equiv="X-UA-Compatible" content="ie=edge">
          <title>Document</title>
          <link rel="stylesheet" href="css/style.css">
        </head>

        <body>

          <script src="js/script.js"></script>
        </body>

        </html>

EOF

# Create directory css > Go to directory > Create file style.css
      mkdir css
      cd css
      touch style.css
      cat > style.css << EOF

          /* http://meyerweb.com/eric/tools/css/reset/
             v2.0 | 20110126
             License: none (public domain)
          */
          html, body, div, span, applet, object, iframe,
          h1, h2, h3, h4, h5, h6, p, blockquote, pre,
          a, abbr, acronym, address, big, cite, code,
          del, dfn, em, img, ins, kbd, q, s, samp,
          small, strike, strong, sub, sup, tt, var,
          b, u, i, center,
          dl, dt, dd, ol, ul, li,
          fieldset, form, label, legend,
          table, caption, tbody, tfoot, thead, tr, th, td,
          article, aside, canvas, details, embed,
          figure, figcaption, footer, header, hgroup,
          menu, nav, output, ruby, section, summary,
          time, mark, audio, video {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline;
          }

          /* HTML5 display-role reset for older browsers */
          article, aside, details, figcaption, figure,
          footer, header, hgroup, menu, nav, section {
            display: block;
          }

          body {
            line-height: 1;
          }

          ol, ul {
            list-style: none;
          }

          blockquote, q {
            quotes: none;
          }

          blockquote:before, blockquote:after,
          q:before, q:after {
            content: '';
            content: none;
          }

          table {
            border-collapse: collapse;
            border-spacing: 0;
          }

EOF
# Create directory js > Go to directory > Create file script.js
      cd ..
      mkdir js
      cd js
      touch script.js

cd ..

atom .

}
