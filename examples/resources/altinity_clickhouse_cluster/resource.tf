resource "altinity_clickhouse_cluster" "my_clickhousecluster" {
  admin_pass = "...my_adminPass..."
  admin_user = "admin"
  alternate_endpoints = [
    "{ \"see\": \"documentation\" }",
  ]
  azlist = [
    "us-west1-a",
  ]
  backup_options {
    arn                = "...my_arn..."
    bucket             = "altinity-cloud-prod-000p23wu50-clickhouse-backup"
    compression_format = "tar"
    day                = 6
    enable             = true
    keep               = "7"
    path               = "...my_path..."
    provider           = "gcp"
    region             = "...my_region..."
    schedule           = "daily"
    secret_key         = "*******"
    settings = [
      {
        day    = 7
        keep   = 1
        period = "daily"
        time   = "05:00"
      },
    ]
    time = "05:00"
  }
  datadog_settings {
    logs    = false
    metrics = true
  }
  disks                = 1
  domain_name          = "dev.speakeasyapi.altinity.cloud"
  host                 = "localhost"
  http_port            = 5123
  id_environment       = "675"
  internal_domain_name = "...my_internalDomainName..."
  ip_whitelist         = "31.94.0.155"
  lb_type              = "ingress"
  name                 = "dev"
  nodes                = 1
  node_type            = "n2d-standard-2"
  port                 = 9900
  public_endpoint      = true
  region               = "...my_region..."
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
          from = "...my_from..."
          to   = "...my_to..."
        }
      }
      mon {
        active  = true
        all_day = true
        range {
          from = "...my_from..."
          to   = "...my_to..."
        }
      }
      sat {
        active  = true
        all_day = true
        range {
          from = "...my_from..."
          to   = "...my_to..."
        }
      }
      sun {
        active  = true
        all_day = true
        range {
          from = "...my_from..."
          to   = "...my_to..."
        }
      }
      thu {
        active  = true
        all_day = true
        range {
          from = "...my_from..."
          to   = "...my_to..."
        }
      }
      tue {
        active  = true
        all_day = true
        range {
          from = "...my_from..."
          to   = "...my_to..."
        }
      }
      wed {
        active  = true
        all_day = true
        range {
          from = "...my_from..."
          to   = "...my_to..."
        }
      }
    }
  }
  version       = "22.8.15.25.altinitystable"
  version_image = "...my_versionImage..."
  zookeeper     = "launch"
  zookeeper_options {
    root = "1"
    size = "single"
    tag  = "...my_tag..."
  }
}