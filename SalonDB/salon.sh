#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=salon --tuples-only --no-align -c"

chmod +x salon.sh

SERVICE_ID_SELECTED=0
SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id;")

while [[  -z "$($PSQL "SELECT name FROM services WHERE service_id='$SERVICE_ID_SELECTED'")" ]]
do 

  echo "$SERVICES" | while IFS="|" read SERVICE_ID NAME
  do
    echo "$SERVICE_ID) $NAME"
  done

  read SERVICE_ID_SELECTED
done

SERVICE_SELECTED="$($PSQL "SELECT name FROM services WHERE service_id='$SERVICE_ID_SELECTED'")"

echo "What's your phone number?"
read CUSTOMER_PHONE

if [ -z "$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")" ]
then
  echo "I don't have a record for that phone number, what's your name?"
  read CUSTOMER_NAME

  $PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')"
fi

CUSTOMER_ID="$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")"
CUSTOMER_NAME="$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")"

echo "what time would you like to book appointment for selected service?"
read SERVICE_TIME

$PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')"
echo "I have put you down for a $SERVICE_SELECTED at $SERVICE_TIME, $CUSTOMER_NAME."
