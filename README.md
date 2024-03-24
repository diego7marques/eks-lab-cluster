## EKS Cluster Lab

:page_facing_up: The terraform available on this repository creates an EKS Cluster and all necessary infrastructure around it. It is used in most of the labs and guides published on [contains(cloud)](https://containscloud.com) ☁️.

:warning: The terraform code tries to use as many as free tiers as possible and is not recommended to be used in production.

:round_pushpin: K8s version: 1.29

:memo: Features activated:

&check; [EKS Pod Identity Agent](https://docs.aws.amazon.com/eks/latest/userguide/pod-id-how-it-works.html)

&check; Public access

&check; [CoreDNS](https://docs.aws.amazon.com/eks/latest/userguide/managing-coredns.html)

&check; [Kube Proxy](https://docs.aws.amazon.com/eks/latest/userguide/managing-kube-proxy.html)

&check; [VPC CNI](https://docs.aws.amazon.com/eks/latest/userguide/managing-vpc-cni.html)

## License

This code is licensed under the [MIT License](LICENSE).