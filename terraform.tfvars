vm = {
    vmss = {
        vm_name = "l03-App"
    },
    vm1 = {
        vm_name = "l03-Rldapi"
    },
    vm1 = {
        vm_name = "l03-Snap"
    },
    vm1 = {
        vm_name = "l03-tgi-FileServer"
    },
    vm1 = {
        vm_name = "l03-tgi-SolrVM20240606"
    }
}




metric = {
    M1vmss = {
        alertname = "CPU Greater than 80 Percentage || l03-App"
        description = "Action will be triggered when CPU Greater than 80 Percentage."
        metric_namespace = "Microsoft.Compute/virtualMachineScaleSets"
        metric_name = "Percentage CPU"
        aggregation = "Average"
        operator = "GreaterThan"
        threshold = 80
    },
    M1 = {
        alertname = "CPU Greater than 80 Percentage || l03-Rldapi"
        description = "Action will be triggered when CPU Greater than 80 Percentage."
        metric_namespace = "Microsoft.Compute/virtualMachine"
        metric_name = "Percentage CPU"
        aggregation = "Average"
        operator = "GreaterThan"
        threshold = 80
    },
    M2 = {
        alertname = "CPU Greater than 80 Percentage || l03-Snap"
        description = "Action will be triggered when CPU Greater than 80 Percentage."
        metric_namespace = "Microsoft.Compute/virtualMachine"
        metric_name = "Percentage CPU"
        aggregation = "Average"
        operator = "GreaterThan"
        threshold = 80
    },
    M4 = {
        alertname = "CPU Greater than 80 Percentage || l03-tgi-FileServer"
        description = "Action will be triggered when CPU Greater than 80 Percentage."
        metric_namespace = "Microsoft.Compute/virtualMachine"
        metric_name = "Percentage CPU"
        aggregation = "Average"
        operator = "GreaterThan"
        threshold = 80
    },
    M5 = {
        alertname = "CPU Greater than 80 Percentage || l03-solr"
        description = "Action will be triggered when CPU Greater than 80 Percentage."
        metric_namespace = "Microsoft.Compute/virtualMachine"
        metric_name = "Percentage CPU"
        aggregation = "Average"
        operator = "GreaterThan"
        threshold = 80
    }

}
