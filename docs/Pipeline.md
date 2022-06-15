# Pipeline

1. Pushing code to GitHub.
1. CircleCI picks it up and starts installing the dependencies for the front and back ends.
1. It lints the project.
1. Then it builds the front and back ends.
1. CircleCI waits for the developer's approval to deploy the app.
1. After approving CircleCI deploys the project to AWS.
    1. Deploys the backend to Elastic Beanstalk.
    1. Deploys the frontend to S3.

## This diagram represents the pipeline

![pipeline diagram](/docs/diagram/pipeline.webp)
