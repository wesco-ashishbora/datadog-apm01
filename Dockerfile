FROM python:3.9-slim

# Install dependencies
RUN pip install flask ddtrace

# Copy application code
COPY app.py /app/app.py

# Set the working directory
WORKDIR /app

# Install Datadog profiler
RUN pip install ddtrace

# Set environment variables for Datadog
ENV DD_PROFILING_ENABLED=true
ENV DD_TRACE_AGENT_HOSTNAME=datadog-agent
ENV DD_TRACE_AGENT_PORT=8126

# Add Datadog tracing to Python
CMD ddtrace-run python app.py
