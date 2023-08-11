package main

import (
	"fmt"
	"log"

	_ "k8s.io/client-go/plugin/pkg/client/auth"
	"k8s.io/klog/v2/klogr"
	"kmodules.xyz/client-go/tools/backup"
	ctrl "sigs.k8s.io/controller-runtime"
)

func main() {
	ctrl.SetLogger(klogr.New())
	cfg := ctrl.GetConfigOrDie()
	cfg.QPS = 100
	cfg.Burst = 100

	mgr := backup.NewBackupManager("", cfg, false)
	filename, err := mgr.BackupToTar("/tmp")
	if err != nil {
		log.Fatalln(err)
	}
	fmt.Print(filename)
}
