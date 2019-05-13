module github.com/tamalsaha/kube-backup

go 1.12

require (
	github.com/Azure/go-autorest v11.1.2+incompatible // indirect
	github.com/aws/aws-sdk-go v1.14.33 // indirect
	github.com/emicklei/go-restful v2.9.4+incompatible // indirect
	github.com/go-openapi/jsonpointer v0.17.2 // indirect
	github.com/go-openapi/jsonreference v0.17.2 // indirect
	github.com/go-openapi/swag v0.17.2 // indirect
	github.com/imdario/mergo v0.3.7 // indirect
	github.com/kr/pty v1.1.4 // indirect
	github.com/tamalsaha/go-oneliners v0.0.0-20190126213733-6d24eabef827
	google.golang.org/grpc v1.19.1 // indirect
	gopkg.in/natefinch/lumberjack.v2 v2.0.0 // indirect
	gopkg.in/square/go-jose.v2 v2.2.2 // indirect
	k8s.io/client-go v11.0.0+incompatible
	k8s.io/kubernetes v1.14.1 // indirect
	kmodules.xyz/client-go v0.0.0-20190513060007-c4499946f4aa
)

replace (
	github.com/graymeta/stow => github.com/appscode/stow v0.0.0-20190506085026-ca5baa008ea3
	k8s.io/api => k8s.io/api v0.0.0-20190313235455-40a48860b5ab
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.0.0-20190315093550-53c4693659ed
	k8s.io/apimachinery => github.com/kmodules/apimachinery v0.0.0-20190508045248-a52a97a7a2bf
	k8s.io/apiserver => github.com/kmodules/apiserver v0.0.0-20190508082252-8397d761d4b5
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.0.0-20190314001948-2899ed30580f
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.0.0-20190314002645-c892ea32361a
	k8s.io/klog => k8s.io/klog v0.3.0
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.0.0-20190314000639-da8327669ac5
	k8s.io/kube-openapi => k8s.io/kube-openapi v0.0.0-20190228160746-b3a7cee44a30
	k8s.io/metrics => k8s.io/metrics v0.0.0-20190314001731-1bd6a4002213
	k8s.io/utils => k8s.io/utils v0.0.0-20190221042446-c2654d5206da
)
