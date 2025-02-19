data "template_file" "sftd-ubuntu-userdata" {
  template = "${file("${path.module}/userdata-scripts/ubuntu-userdata-sftd.sh")}"

  vars {
    sftd_version     = "${var.sftd_version}"
    enrollment_token = "${var.enrollment_token}"
  }
}

data "template_file" "sftd-ubuntu-bastion-userdata" {
  template = "${file("${path.module}/userdata-scripts/ubuntu-bastion-userdata-sftd.sh")}"

  vars {
    sftd_version     = "${var.sftd_version}"
    enrollment_token = "${var.enrollment_token}"
  }
}


data "template_file" "sftd-windows-userdata" {
  template = "${file("${path.module}/userdata-scripts/userdata-sftd.ps1")}"

  vars {
    canonical_name   = "${var.windows_canonical_name}"
    sftd_version     = "${var.sftd_version}"
    enrollment_token = "${var.enrollment_token}"
  }
}
