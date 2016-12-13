FROM registry.ng.bluemix.net/ibmliberty

# Accept Liberty License
ENV LICENSE accept

#Logs test
RUN ln -sf /dev/stdout /logs/stdout-kristin.log 
RUN ln -sf /dev/stderr /logs/stderr-kristin.log

ENV PASS_MIN_DAYS 1