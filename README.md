## EKS Cluster Lab

:page_facing_up: The terraform available on this repository creates an EKS Cluster and all necessary infrastructure around it. It is used in most of the labs and guides published on [contains(cloud)](https://containscloud.com) ☁️.

:warning: The terraform code tries to use as many as free tiers as possible and is not recommended to be used in production.

:round_pushpin: K8s version: 1.31

:memo: Features activated:

&check; [EKS Pod Identity Agent](https://docs.aws.amazon.com/eks/latest/userguide/pod-id-how-it-works.html)

&check; Public access

&check; [CoreDNS](https://docs.aws.amazon.com/eks/latest/userguide/managing-coredns.html)

&check; [Kube Proxy](https://docs.aws.amazon.com/eks/latest/userguide/managing-kube-proxy.html)

&check; [VPC CNI](https://docs.aws.amazon.com/eks/latest/userguide/managing-vpc-cni.html)

## Creating and connecting to the cluster

To create and connect to the EKS cluster, perform the following steps:

1. [Sign in on AWS using AWS CLI](https://docs.aws.amazon.com/signin/latest/userguide/command-line-sign-in.html)

    ```sh
    aws sso login --profile <my-profile>
    ```

2. Run terraform
    ```sh
    terraform init
    terraform plan
    terraform apply
    ```

3. Connect to the EKS
    ```sh
    aws eks update-kubeconfig --name <eks-name>
    ```

## License

This code is licensed under the [MIT License](LICENSE).