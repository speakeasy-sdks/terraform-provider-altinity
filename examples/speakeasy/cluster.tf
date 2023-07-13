terraform {
  required_providers {
    altinity = {
      source  = "altinity/altinity"
      version = "0.0.1"
    }
  }
}

provider "altinity" {
  api_key = var.altinity_api_key
}

variable "altinity_api_key" {
  type      = string
  sensitive = true
}

variable "speakeasy_admin_pass" {
  type = string
}

resource "altinity_clickhouse_cluster" "my_clickhousecluster" {
  admin_pass = var.speakeasy_admin_pass
  admin_user = "admin"
  azlist = [
    "us-west1-a",
  ]
  backup_options = {
    arn                = "monitor"
    bucket             = "altinity-cloud-prod-000p23wu50-clickhouse-backup"
    compression_format = "tar"
    day                = 0
    enable             = true
    path               = ""
    provider           = "gcp"
    region             = ""
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
  datadog_settings = {
    logs    = false
    metrics = false
  }
  disks            = 1
  domain_name      = "dev.speakeasyapi.altinity.cloud"
  host             = "localhost"
  http_port        = 5123
  id_environment   = "675"
  ip_whitelist     = "31.94.0.155"
  lb_type          = "ingress"
  name             = "dev"
  nodes            = 1
  node_type        = "n2d-standard-2"
  port             = 9900
  public_endpoint  = true
  region           = "system"
  replicas         = "1"
  replicate_schema = true
  secure           = true
  size             = 100
  ssh_port         = 2222
  storage_class    = "pd-balanced"
  type             = "kubernetes"
  uptime           = "stop"
  uptime_settings = {
    inactive_hours = 24
    schedule = {
      fri = {
        active  = true
        all_day = true
        range = {
          from = ""
          to   = ""
        }
      }
      mon = {
        active  = true
        all_day = true
        range = {
          from = ""
          to   = ""
        }
      }
      sat = {
        active  = true
        all_day = true
        range = {
          from = ""
          to   = ""
        }
      }
      sun = {
        active  = true
        all_day = true
        range = {
          from = ""
          to   = ""
        }
      }
      thu = {
        active  = true
        all_day = true
        range = {
          from = ""
          to   = ""
        }
      }
      tue = {
        active  = true
        all_day = true
        range = {
          from = ""
          to   = ""
        }
      }
      wed = {
        active  = true
        all_day = true
        range = {
          from = ""
          to   = ""
        }
      }
    }
  }
  version   = "22.8.15.25.altinitystable"
  zookeeper = "launch"
  zookeeper_options = {
    root = "1"
    size = "single"
  }
}