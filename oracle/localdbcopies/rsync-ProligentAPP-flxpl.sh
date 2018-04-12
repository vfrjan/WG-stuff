#!/bin/sh
set -x
rsync -avz -L --progress --partial Administrator@192.23.244.62:/cygdrive/e/Proligent/DocumentIntegrationService /mfg_images/DB-backup/ProligentAPP-flxpl
