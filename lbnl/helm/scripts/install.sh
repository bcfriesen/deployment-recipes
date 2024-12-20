#!/bin/bash

repo="$1"
namespace="$2"

helm install \
  ochami \
  . \
  -n "${namespace}" \
  --wait \
  --create-namespace \
  --set bss.deployment.image.repository="${repo}" \
  --set init.job.image.repository="${repo}" \
  --set smd.deployment.image.repository="${repo}" \
  --set dnsmasq.deployment.image.repository="${repo}" \
  --set hydra.deployment.image.repository="${repo}" \
  --set hydra_consent.deployment.image.repository="${repo}" \
  --set swiss_army_knife.deployment.image.repository="${repo}" \
  --set tftpd.deployment.image.repository="${repo}" \
