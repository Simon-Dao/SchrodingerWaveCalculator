#build schrodinger file
# FROM python:3 as build

# RUN apt-get update && apt-get install -y gfortran && rm -rf /var/lib/apt/lists/*

# RUN pip install numpy

# WORKDIR /build

# COPY schrodinger.f90 . 

# RUN f2py -c schrodinger.f90 -m schrodinger

#removed the fortran compiler
FROM python:3-slim as runtime

# RUN pip install numpy

WORKDIR /app

# COPY --from=build /build/schrodinger.so .
COPY parallel_worker.py .

ENV JOB_COMPLETION_INDEX=0

CMD ["python", "parallel_worker.py"]