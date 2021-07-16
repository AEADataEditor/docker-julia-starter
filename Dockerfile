# Specify the Julia version here
FROM julia:1.6.1-buster

# Create a setup file that simply installs non-versioned packages
COPY 0setup.jl /0setup.jl
RUN julia /0setup.jl

# Change the default to /code
WORKDIR /code

# Default to running Julia
CMD ["julia"]
