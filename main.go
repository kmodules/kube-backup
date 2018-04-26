package main

import (
	"path/filepath"

	"github.com/appscode/go/log"
	"github.com/appscode/kutil/tools/backup"
	"github.com/tamalsaha/go-oneliners"
	_ "k8s.io/client-go/plugin/pkg/client/auth"
	"k8s.io/client-go/tools/clientcmd"
	"k8s.io/client-go/util/homedir"
)

func main() {
	masterURL := ""
	kubeconfigPath := filepath.Join(homedir.HomeDir(), ".kube/config")

	config, err := clientcmd.BuildConfigFromFlags(masterURL, kubeconfigPath)
	if err != nil {
		log.Fatalf("Could not get Kubernetes config: %s", err)
	}

	mgr := backup.NewBackupManager("", config, false)
	filename, err := mgr.BackupToTar("/tmp")
	if err != nil {
		log.Fatalln(err)
	}
	oneliners.FILE(filename)
}
