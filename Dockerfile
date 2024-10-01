# Sử dụng Python base image
FROM python:3.9.20-alpine

# Đặt thư mục làm việc
WORKDIR /app

# Cập nhật pip lên phiên bản mới nhất
RUN pip install --upgrade pip

# Cài đặt pip và các dependencies từ requirements.txt
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép mã nguồn
COPY . .

# Sao chép wait-for-it.sh để đảm bảo PostgreSQL sẵn sàng
# COPY wait-for-it.sh /wait-for-it.sh
# RUN chmod +x /wait-for-it.sh

# Chạy ứng dụng Django
# CMD ["db:5432", "--", "python", "manage.py", "migrate", "&&", "python", "manage.py", "runserver", "0.0.0.0:9000"]
