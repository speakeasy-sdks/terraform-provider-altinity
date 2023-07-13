terraform {
  required_providers {
    altinity = {
      source  = "altinity/altinity"
      version = "0.0.1"
    }
  }
}

provider "altinity" {

}

variable "speakeasy_admin_pass" {
  type = "string"
}

resource "altinity_clickhouse_cluster" "my_clickhousecluster" {
  admin_pass = var.speakeasy_admin_pass
  admin_user = "admin"
  alternate_endpoints = []
  azlist = [
    "us-west1-a",
  ]
  backup_options {
    arn                = "monitor"
    bucket             = "altinity-cloud-prod-000p23wu50-clickhouse-backup"
    compression_format = "tar"
    day                = 844266
    enable             = true
    keep               = "7"
    path               = "pixel"
    provider           = "gcp"
    region             = "bus"
    schedule           = "daily"
    secret_key         = "*******"
    settings = [
      {
        day    = 1
        keep   = 1
        period = "daily"
        time   = "05:00"
      },
    ]
    time = "05:00"
  }
  datadog_settings {
    logs    = false
    metrics = false
  }
  disks                = 1
  domain_name          = "dev.speakeasyapi.altinity.cloud"
  host                 = "localhost"
  http_port            = 5123
  id_environment       = "675"
  internal_domain_name = "bus"
  ip_whitelist         = "31.94.0.155"
  lb_type              = "ingress"
  name                 = "dev"
  nodes                = 1
  node_type            = "n2d-standard-2"
  port                 = 9900
  public_endpoint      = true
  region               = "system"
  replicas             = "1"
  replicate_schema     = true
  secure               = true
  shards               = 1
  size                 = 100
  ssh_port             = 2222
  storage_class        = "pd-balanced"
  type                 = "kubernetes"
  uptime               = "stop"
  uptime_settings {
    inactive_hours = 24
    schedule {
      fri {
        active  = true
        all_day = true
      }
      mon {
        active  = true
        all_day = true
      }
      sat {
        active  = true
        all_day = true
      }
      sun {
        active  = true
        all_day = true
      }
      thu {
        active  = true
        all_day = true
      }
      tue {
        active  = true
        all_day = true
      }
      wed {
        active  = true
        all_day = true
      }
    }
  }
  version       = "22.8.15.25.altinitystable"
  version_image = ""
  zookeeper     = "launch"
  zookeeper_options {
    root = "1"
    size = "single"
    tag  = ""
  }
}