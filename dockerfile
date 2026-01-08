FROM python:3.13.9
WORKDIR /student_enquriy
COPY . .
RUN pip install --no-cache-dir pytest
# Run tests at build time (CI)
RUN pytest -v
# Fixed entrypoint (never replaced)
CMD ["python", "student.py"]