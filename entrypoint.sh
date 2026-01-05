#!/bin/sh

# استخدم قيمة PORT أو 80 لو مش متحدد
PORT=${PORT:-80}

# اكتب إعداد Nginx ديناميكيًا
cat > /etc/nginx/conf.d/default.conf <<EOF
server {
    listen ${PORT};

    location / {
        root /usr/share/nginx/html;
        index index.html;
    }
}
EOF

# شغّل Nginx
nginx -g "daemon off;"
