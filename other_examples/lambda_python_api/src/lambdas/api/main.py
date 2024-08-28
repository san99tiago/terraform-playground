import random
import datetime

# External imports
from fastapi import FastAPI
from mangum import Mangum
import boto3


app = FastAPI()


NAMES = [
    "Juan",
    "Pedro",
    "Pablo",
    "Maria",
    "Ana",
    "Lucia",
    "Luis",
    "Carlos",
    "Jose",
    "Jorge",
]
LASTNAMES = [
    "Perez",
    "Gonzalez",
    "Rodriguez",
    "Fernandez",
    "Lopez",
    "Martinez",
    "Sanchez",
    "Gomez",
    "Diaz",
    "Torres",
]

# IN MEMORY LIST (DEMO PURPOSES)
ALL_CONTACTS = []

# Initialize Dynamodb client
dynamodb_client = boto3.client("dynamodb")


@app.get("/")
async def root():
    # Save random contact
    contact = random.choice(NAMES) + " " + random.choice(LASTNAMES)
    print(f"Created random contact: {contact}")

    # Add contact to our contact list in memory
    ALL_CONTACTS.append(contact)

    # # Guardar contacto en DynamoDB
    # dynamodb_client.put_item(
    #     TableName="san99tiago-terraform-dev",
    #     Item={
    #         "LockID": {"S": contact},
    #         "DateTime": {"S": datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")},
    #         "Type": {"S": "Contact"},
    #         "Number": {"N": str(random.randint(1, 100))},
    #     },
    # )

    return {"contacts": [contact]}


# This is the Lambda Function's entrypoint (handler)
handler = Mangum(app)
