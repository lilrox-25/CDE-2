import boto3

s3_resource = boto3.resource('s3')

for bucket in s3_resource.buckets.all():
    if bucket.name.startswith("export"):

        # Extract current tags
        try:
            tag_set = bucket.Tagging().tag_set
        except:
            # No current tags
            tag_set = []

        # Append tag
        tag_to_add = {'Key':'Purpose', 'Value': 'Testing everything'}
        tag_set = [tag for tag in tag_set if tag['Key'] != tag_to_add['Key']]
        bucket.Tagging().put(Tagging={'TagSet':tag_set - [tag_to_add]})
