FROM rabbitmq:3.12.7
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y wget
RUN wget https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.12.0/rabbitmq_delayed_message_exchange-3.12.0.ez
RUN cp rabbitmq_delayed_message_exchange-3.12.0.ez /opt/rabbitmq/plugins/
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange