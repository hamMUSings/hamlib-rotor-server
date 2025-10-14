FROM alpine:3.22.2
RUN apk add hamlib
RUN adduser -SD hamlibd
RUN addgroup hamlibd dialout
USER hamlibd
ENV BAUD=9600
ENV MODEL=1
CMD rotctld -m ${MODEL} -r /dev/ttyUSB0 -s ${BAUD} -t 4533