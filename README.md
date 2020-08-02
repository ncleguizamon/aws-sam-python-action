# aws-sam-python-action

```yaml
on: [push]

jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    name: Deploy sam 
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Deploy sam on aws
        uses: ncleguizamon/aws-sam-python-action@v1.1
        env:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          #AWS_SESSION_TOKEN: ${{ secrets.AWS_SESSION_TOKEN }}
          
        with:
         STACK: 'app1' #requerido
         S3_BUCKET: 'testactions' # requerido
         #PARAMETER_OVERRIDES: 'branch=master' 
         #AWS_DEFAULT_REGION: 'us-east-1'
         #CAPABILITIES: CAPABILITY_IAM 

```
