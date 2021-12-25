# terragrunt-demo
The demo of [terragrunt](http://terragrunt.gruntwork.io)

All features of terragrunt please check [here](https://terragrunt.gruntwork.io/docs/#features)

# How to play?

```bash
git clone --recursive git@github.com:Firxiao/terragrunt-demo.git
cd terragrunt-demo
terragrunt run-all plan -out plan
terragrunt run-all apply "plan"
terragrunt run-all destroy
```