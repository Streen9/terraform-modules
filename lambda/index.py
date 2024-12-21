import json
import os


def handler(event, context):
    # Get environment variables
    env_var_1 = os.environ.get('ENV_VAR_1', 'default_value')
    env_var_2 = os.environ.get('ENV_VAR_2', 'default_value')

    # Process the event
    print(f"Received event: {json.dumps(event)}")

    # Create response
    response = {
        'statusCode': 200,
        'body': json.dumps({
            'message': 'Hello from Lambda!',
            'event': event,
            'env_vars': {
                'ENV_VAR_1': env_var_1,
                'ENV_VAR_2': env_var_2
            }
        })
    }

    return response
