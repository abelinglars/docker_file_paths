FROM python:3.13

WORKDIR /app

COPY src/ ./copied_with_slash
COPY src ./copied_without_slash

COPY src/ ./dest_slash/
COPY src ./without_dest_slash

COPY README.md /app/single_file_without_slash
COPY README.md /app/single_file_with_slash/

#COPY . .

CMD ["bash"]
