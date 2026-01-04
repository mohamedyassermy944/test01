# المرحلة الأولى: نسخ من nginx:alpine
FROM nginx:alpine AS test

# المرحلة الثانية: بناء على المرحلة الأولى
FROM test AS stage

# ننسخ السكربت إلى داخل الكونتينر
COPY entrypoint.sh /entrypoint.sh

# ننسخ ملف إعداد Nginx (ملف server block)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# ننسخ ملف HTML
COPY index.html /usr/share/nginx/html/index.html


# ندي صلاحية تنفيذ للسكريبت
RUN chmod +x /entrypoint.sh

# نستخدم السكربت كـ ENTRYPOINT
ENTRYPOINT ["/entrypoint.sh"]
