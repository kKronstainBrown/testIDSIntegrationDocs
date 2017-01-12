FROM registry.ng.bluemix.net/ibmliberty

# Accept Liberty License
ENV LICENSE accept

#Logs test
RUN ln -sf /dev/stdout /logs/stdout-kristin.log 
RUN ln -sf /dev/stderr /logs/stderr-kristin.log


RUN sed -i 's/^PASS_MAX_DAYS.*/PASS_MAX_DAYS   90/' /etc/login.defs
RUN sed -i 's/^PASS_MIN_DAYS.*/PASS_MIN_DAYS   1/' /etc/login.defs
RUN sed -i 's/sha512/sha512 minlen=8/' /etc/pam.d/common-password