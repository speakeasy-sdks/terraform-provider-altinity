resource "altinity_clickhouse_cluster" "my_clickhousecluster" {
  admin_pass = "hard drive"
  admin_user = "admin"
  alternate_endpoints = [
    "provident",
  ]
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
        day    = 544883
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
        range {
          from = "pixel"
          to   = "alarm"
        }
      }
      mon {
        active  = true
        all_day = true
        range {
          from = "interface"
          to   = "system"
        }
      }
      sat {
        active  = true
        all_day = true
        range {
          from = "card"
          to   = "circuit"
        }
      }
      sun {
        active  = true
        all_day = true
        range {
          from = "protocol"
          to   = "matrix"
        }
      }
      thu {
        active  = true
        all_day = true
        range {
          from = "port"
          to   = "interface"
        }
      }
      tue {
        active  = true
        all_day = true
        range {
          from = "sensor"
          to   = "transmitter"
        }
      }
      wed {
        active  = true
        all_day = true
        range {
          from = "transmitter"
          to   = "firewall"
        }
      }
    }
  }
  version       = "22.8.15.25.altinitystable"
  version_image = "sensor"
  zookeeper     = "launch"
  zookeeper_options {
    root = "1"
    size = "single"
    tag  = "hard drive"
  }
}