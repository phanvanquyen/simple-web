#!/bin/bash

# Tạo mã màu ngẫu nhiên
COLOR=$(printf '#%06X\n' $((RANDOM*RANDOM)))

# Tạo file HTML
cat <<EOL > index.html
<!DOCTYPE html>
<html>
<head>
    <title>Amazing HTML Page</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }
        
        h1 {
            color: $COLOR;
            text-align: center;
        }
        
        p {
            color: #666;
            text-align: center;
        }
        
    </style>
    
</head>
<body>
    <h1 id="title">Welcome to  Amazing HTML Page!</h1>
    <p>This is just the beginning of something incredible.</p>
    
    <div style="text-align: center;">
        <i class="fas fa-smile"></i> <!-- Add your funny icon class here -->
        <img src="cat.gif" alt="Funny Image"> <!-- Add the path to your image here -->
    </div>
    
</body>
</html>
EOL
cp index.html /usr/share/nginx/html/index.html
nginx -g 'daemon off;'
