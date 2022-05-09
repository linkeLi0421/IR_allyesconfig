; ModuleID = '/llk/IR_all_yes/drivers/pci/probe.c_pt.bc'
source_filename = "../drivers/pci/probe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pci_root_buses\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_root_buses\09\09\09\09"
module asm "\09.long\09__crc_pci_root_buses\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_root_buses:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_root_buses\22\09\09\09\09\09"
module asm "__kstrtabns_pci_root_buses:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+no_pci_devices\22, \22a\22\09"
module asm "\09.weak\09__crc_no_pci_devices\09\09\09\09"
module asm "\09.long\09__crc_no_pci_devices\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_no_pci_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22no_pci_devices\22\09\09\09\09\09"
module asm "__kstrtabns_no_pci_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_alloc_host_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_alloc_host_bridge\09\09\09\09"
module asm "\09.long\09__crc_pci_alloc_host_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_alloc_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_alloc_host_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_pci_alloc_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_pci_alloc_host_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_pci_alloc_host_bridge\09\09\09\09"
module asm "\09.long\09__crc_devm_pci_alloc_host_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pci_alloc_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pci_alloc_host_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pci_alloc_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_free_host_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_free_host_bridge\09\09\09\09"
module asm "\09.long\09__crc_pci_free_host_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_free_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_free_host_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_pci_free_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcie_link_speed\22, \22a\22\09"
module asm "\09.weak\09__crc_pcie_link_speed\09\09\09\09"
module asm "\09.long\09__crc_pcie_link_speed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_link_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_link_speed\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_link_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_speed_string\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_speed_string\09\09\09\09"
module asm "\09.long\09__crc_pci_speed_string\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_speed_string:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_speed_string\22\09\09\09\09\09"
module asm "__kstrtabns_pci_speed_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcie_update_link_speed\22, \22a\22\09"
module asm "\09.weak\09__crc_pcie_update_link_speed\09\09\09\09"
module asm "\09.long\09__crc_pcie_update_link_speed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_update_link_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_update_link_speed\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_update_link_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_add_new_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_add_new_bus\09\09\09\09"
module asm "\09.long\09__crc_pci_add_new_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_add_new_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_add_new_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_add_new_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_scan_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_scan_bridge\09\09\09\09"
module asm "\09.long\09__crc_pci_scan_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcie_relaxed_ordering_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_pcie_relaxed_ordering_enabled\09\09\09\09"
module asm "\09.long\09__crc_pcie_relaxed_ordering_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_relaxed_ordering_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_relaxed_ordering_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_relaxed_ordering_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_alloc_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_alloc_dev\09\09\09\09"
module asm "\09.long\09__crc_pci_alloc_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_alloc_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_alloc_dev\22\09\09\09\09\09"
module asm "__kstrtabns_pci_alloc_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_bus_read_dev_vendor_id\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_bus_read_dev_vendor_id\09\09\09\09"
module asm "\09.long\09__crc_pci_bus_read_dev_vendor_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_read_dev_vendor_id:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_read_dev_vendor_id\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_read_dev_vendor_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_scan_single_device\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_scan_single_device\09\09\09\09"
module asm "\09.long\09__crc_pci_scan_single_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_single_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_single_device\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_single_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_scan_slot\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_scan_slot\09\09\09\09"
module asm "\09.long\09__crc_pci_scan_slot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_slot\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcie_bus_configure_settings\22, \22a\22\09"
module asm "\09.weak\09__crc_pcie_bus_configure_settings\09\09\09\09"
module asm "\09.long\09__crc_pcie_bus_configure_settings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_bus_configure_settings:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_bus_configure_settings\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_bus_configure_settings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_scan_child_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_scan_child_bus\09\09\09\09"
module asm "\09.long\09__crc_pci_scan_child_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_child_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_child_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_child_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_create_root_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_create_root_bus\09\09\09\09"
module asm "\09.long\09__crc_pci_create_root_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_create_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_create_root_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_create_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_host_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_host_probe\09\09\09\09"
module asm "\09.long\09__crc_pci_host_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_host_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_host_probe\22\09\09\09\09\09"
module asm "__kstrtabns_pci_host_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_scan_root_bus_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_scan_root_bus_bridge\09\09\09\09"
module asm "\09.long\09__crc_pci_scan_root_bus_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_root_bus_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_root_bus_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_root_bus_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_scan_root_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_scan_root_bus\09\09\09\09"
module asm "\09.long\09__crc_pci_scan_root_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_root_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_scan_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_scan_bus\09\09\09\09"
module asm "\09.long\09__crc_pci_scan_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_rescan_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_rescan_bus\09\09\09\09"
module asm "\09.long\09__crc_pci_rescan_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_rescan_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_rescan_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_rescan_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_lock_rescan_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_lock_rescan_remove\09\09\09\09"
module asm "\09.long\09__crc_pci_lock_rescan_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_lock_rescan_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_lock_rescan_remove\22\09\09\09\09\09"
module asm "__kstrtabns_pci_lock_rescan_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_unlock_rescan_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_unlock_rescan_remove\09\09\09\09"
module asm "\09.long\09__crc_pci_unlock_rescan_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_unlock_rescan_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_unlock_rescan_remove\22\09\09\09\09\09"
module asm "__kstrtabns_pci_unlock_rescan_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_hp_add_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_hp_add_bridge\09\09\09\09"
module asm "\09.long\09__crc_pci_hp_add_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_hp_add_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_hp_add_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_pci_hp_add_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_bus_region = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.77, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.77 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.pci_sriov = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, i32, i8, i16, i16, [6 x i32], i8 }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.pci_domain_busn_res = type { %struct.list_head, %struct.resource, i32 }

@pci_root_buses = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pci_root_buses, ptr @pci_root_buses }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_pci_root_buses = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_root_buses = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_root_buses = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_root_buses to i32), ptr @__kstrtab_pci_root_buses, ptr @__kstrtabns_pci_root_buses }, section "___ksymtab+pci_root_buses", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_no_pci_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_no_pci_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_no_pci_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @no_pci_devices to i32), ptr @__kstrtab_no_pci_devices, ptr @__kstrtabns_no_pci_devices }, section "___ksymtab+no_pci_devices", align 4
@__initcall__kmod_probe__237_109_pcibus_class_init2 = internal global ptr @pcibus_class_init, section ".initcall2.init", align 4
@__pci_read_base._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 259, ptr @.str.3, ptr @.str.4 }, align 1
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[Firmware Bug]: reg 0x%x: invalid BAR (can't size)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__pci_read_base\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/pci/probe.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__pci_read_base._entry_ptr = internal global ptr @__pci_read_base._entry, section ".printk_index", align 4
@__pci_read_base._entry.5 = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 270, ptr @.str.7, ptr @.str.4 }, align 1
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"reg 0x%x: can't handle BAR larger than 4GB (size %#010llx)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@__pci_read_base._entry_ptr.8 = internal global ptr @__pci_read_base._entry.5, section ".printk_index", align 4
@__pci_read_base._entry.9 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 280, ptr @.str.3, ptr @.str.4 }, align 1
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"reg 0x%x: can't handle BAR above 4GB (bus address %#010llx)\0A\00", [35 x i8] zeroinitializer }, align 32
@__pci_read_base._entry_ptr.11 = internal global ptr @__pci_read_base._entry.9, section ".printk_index", align 4
@__pci_read_base._entry.12 = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 307, ptr @.str.3, ptr @.str.4 }, align 1
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"reg 0x%x: initial BAR value %#010llx invalid\0A\00", [50 x i8] zeroinitializer }, align 32
@__pci_read_base._entry_ptr.14 = internal global ptr @__pci_read_base._entry.12, section ".printk_index", align 4
@__pci_read_base._entry.15 = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 317, ptr @.str.3, ptr @.str.4 }, align 1
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg 0x%x: %pR\0A\00", [17 x i8] zeroinitializer }, align 32
@__pci_read_base._entry_ptr.17 = internal global ptr @__pci_read_base._entry.15, section ".printk_index", align 4
@pci_read_bridge_bases._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 525, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCI bridge to %pR%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci_read_bridge_bases\00", [42 x i8] zeroinitializer }, align 32
@pci_read_bridge_bases._entry_ptr = internal global ptr @pci_read_bridge_bases._entry, section ".printk_index", align 4
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" (subtractive decode)\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@pci_read_bridge_bases._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.2, i32 541, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"  bridge window %pR (subtractive decode)\0A\00", [54 x i8] zeroinitializer }, align 32
@pci_read_bridge_bases._entry_ptr.24 = internal global ptr @pci_read_bridge_bases._entry.22, section ".printk_index", align 4
@__kstrtab_pci_alloc_host_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_alloc_host_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_alloc_host_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_alloc_host_bridge to i32), ptr @__kstrtab_pci_alloc_host_bridge, ptr @__kstrtabns_pci_alloc_host_bridge }, section "___ksymtab+pci_alloc_host_bridge", align 4
@__kstrtab_devm_pci_alloc_host_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pci_alloc_host_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pci_alloc_host_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pci_alloc_host_bridge to i32), ptr @__kstrtab_devm_pci_alloc_host_bridge, ptr @__kstrtabns_devm_pci_alloc_host_bridge }, section "___ksymtab+devm_pci_alloc_host_bridge", align 4
@__kstrtab_pci_free_host_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_free_host_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_free_host_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_free_host_bridge to i32), ptr @__kstrtab_pci_free_host_bridge, ptr @__kstrtabns_pci_free_host_bridge }, section "___ksymtab+pci_free_host_bridge", align 4
@pcie_link_speed = dso_local constant { [16 x i8], [16 x i8] } { [16 x i8] c"\FF\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\FF\FF\FF", [16 x i8] zeroinitializer }, align 32
@__kstrtab_pcie_link_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_link_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_link_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_link_speed to i32), ptr @__kstrtab_pcie_link_speed, ptr @__kstrtabns_pcie_link_speed }, section "___ksymtab_gpl+pcie_link_speed", align 4
@pci_speed_string.speed_strings = internal constant { [26 x ptr], [56 x i8] } { [26 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr null, ptr null, ptr null, ptr null, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"33 MHz PCI\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"66 MHz PCI\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"66 MHz PCI-X\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"100 MHz PCI-X\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"133 MHz PCI-X\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"66 MHz PCI-X 266\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"100 MHz PCI-X 266\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"133 MHz PCI-X 266\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Unknown AGP\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1x AGP\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2x AGP\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4x AGP\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8x AGP\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"66 MHz PCI-X 533\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"100 MHz PCI-X 533\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"133 MHz PCI-X 533\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"2.5 GT/s PCIe\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"5.0 GT/s PCIe\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"8.0 GT/s PCIe\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"16.0 GT/s PCIe\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"32.0 GT/s PCIe\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"64.0 GT/s PCIe\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_pci_speed_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_speed_string = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_speed_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_speed_string to i32), ptr @__kstrtab_pci_speed_string, ptr @__kstrtabns_pci_speed_string }, section "___ksymtab_gpl+pci_speed_string", align 4
@__kstrtab_pcie_update_link_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_update_link_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_update_link_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_update_link_speed to i32), ptr @__kstrtab_pcie_update_link_speed, ptr @__kstrtabns_pcie_update_link_speed }, section "___ksymtab_gpl+pcie_update_link_speed", align 4
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@__kstrtab_pci_add_new_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_add_new_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_add_new_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_add_new_bus to i32), ptr @__kstrtab_pci_add_new_bus, ptr @__kstrtabns_pci_add_new_bus }, section "___ksymtab+pci_add_new_bus", align 4
@__kstrtab_pci_scan_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_bridge to i32), ptr @__kstrtab_pci_scan_bridge, ptr @__kstrtabns_pci_scan_bridge }, section "___ksymtab+pci_scan_bridge", align 4
@set_pcie_port_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1553, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"claims to be downstream port but is acting as upstream port, correcting type\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_pcie_port_type\00", [45 x i8] zeroinitializer }, align 32
@set_pcie_port_type._entry_ptr = internal global ptr @set_pcie_port_type._entry, section ".printk_index", align 4
@set_pcie_port_type._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 1564, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"claims to be upstream port but is acting as downstream port, correcting type\0A\00", [50 x i8] zeroinitializer }, align 32
@set_pcie_port_type._entry_ptr.52 = internal global ptr @set_pcie_port_type._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%04x:%02x:%02x.%d\00", [46 x i8] zeroinitializer }, align 32
@pci_early_dump = external dso_local local_unnamed_addr global i8, align 1
@pci_setup_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1876, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%04x:%04x] type %02x class %#08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_setup_device\00", [47 x i8] zeroinitializer }, align 32
@pci_setup_device._entry_ptr = internal global ptr @pci_setup_device._entry, section ".printk_index", align 4
@pci_setup_device._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 1884, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"device has non-compliant BARs; disabling IO/MEM decoding\0A\00", [38 x i8] zeroinitializer }, align 32
@pci_setup_device._entry_ptr.58 = internal global ptr @pci_setup_device._entry.56, section ".printk_index", align 4
@pci_setup_device._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.2, i32 1918, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"legacy IDE quirk: reg 0x10: %pR\0A\00", [63 x i8] zeroinitializer }, align 32
@pci_setup_device._entry_ptr.61 = internal global ptr @pci_setup_device._entry.59, section ".printk_index", align 4
@pci_setup_device._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.2, i32 1925, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"legacy IDE quirk: reg 0x14: %pR\0A\00", [63 x i8] zeroinitializer }, align 32
@pci_setup_device._entry_ptr.64 = internal global ptr @pci_setup_device._entry.62, section ".printk_index", align 4
@pci_setup_device._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.2, i32 1934, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"legacy IDE quirk: reg 0x18: %pR\0A\00", [63 x i8] zeroinitializer }, align 32
@pci_setup_device._entry_ptr.67 = internal global ptr @pci_setup_device._entry.65, section ".printk_index", align 4
@pci_setup_device._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.55, ptr @.str.2, i32 1941, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"legacy IDE quirk: reg 0x1c: %pR\0A\00", [63 x i8] zeroinitializer }, align 32
@pci_setup_device._entry_ptr.70 = internal global ptr @pci_setup_device._entry.68, section ".printk_index", align 4
@pci_setup_device._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.55, ptr @.str.2, i32 1975, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unknown header type %02x, ignoring device\0A\00", [53 x i8] zeroinitializer }, align 32
@pci_setup_device._entry_ptr.73 = internal global ptr @pci_setup_device._entry.71, section ".printk_index", align 4
@pci_setup_device._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.55, ptr @.str.2, i32 1981, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ignoring class %#08x (doesn't match header type %02x)\0A\00", [41 x i8] zeroinitializer }, align 32
@pci_setup_device._entry_ptr.76 = internal global ptr @pci_setup_device._entry.74, section ".printk_index", align 4
@pci_configure_extended_tags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 2090, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disabling Extended Tags\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pci_configure_extended_tags\00", [36 x i8] zeroinitializer }, align 32
@pci_configure_extended_tags._entry_ptr = internal global ptr @pci_configure_extended_tags._entry, section ".printk_index", align 4
@pci_configure_extended_tags._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 2098, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enabling Extended Tags\0A\00", [40 x i8] zeroinitializer }, align 32
@pci_configure_extended_tags._entry_ptr.81 = internal global ptr @pci_configure_extended_tags._entry.79, section ".printk_index", align 4
@__kstrtab_pcie_relaxed_ordering_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_relaxed_ordering_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_relaxed_ordering_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_relaxed_ordering_enabled to i32), ptr @__kstrtab_pcie_relaxed_ordering_enabled, ptr @__kstrtabns_pcie_relaxed_ordering_enabled }, section "___ksymtab+pcie_relaxed_ordering_enabled", align 4
@pci_dev_type = external dso_local constant %struct.device_type, align 4
@pci_alloc_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->msi_lock\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_pci_alloc_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_alloc_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_alloc_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_alloc_dev to i32), ptr @__kstrtab_pci_alloc_dev, ptr @__kstrtabns_pci_alloc_dev }, section "___ksymtab+pci_alloc_dev", align 4
@__kstrtab_pci_bus_read_dev_vendor_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_read_dev_vendor_id = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_read_dev_vendor_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_read_dev_vendor_id to i32), ptr @__kstrtab_pci_bus_read_dev_vendor_id, ptr @__kstrtabns_pci_bus_read_dev_vendor_id }, section "___ksymtab+pci_bus_read_dev_vendor_id", align 4
@__kstrtab_pci_scan_single_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_single_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_single_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_single_device to i32), ptr @__kstrtab_pci_scan_single_device, ptr @__kstrtabns_pci_scan_single_device }, section "___ksymtab+pci_scan_single_device", align 4
@__kstrtab_pci_scan_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_slot to i32), ptr @__kstrtab_pci_scan_slot, ptr @__kstrtabns_pci_scan_slot }, section "___ksymtab+pci_scan_slot", align 4
@pcie_bus_config = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_pcie_bus_configure_settings = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_bus_configure_settings = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_bus_configure_settings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_bus_configure_settings to i32), ptr @__kstrtab_pcie_bus_configure_settings, ptr @__kstrtabns_pcie_bus_configure_settings }, section "___ksymtab_gpl+pcie_bus_configure_settings", align 4
@__kstrtab_pci_scan_child_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_child_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_child_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_child_bus to i32), ptr @__kstrtab_pci_scan_child_bus, ptr @__kstrtabns_pci_scan_child_bus }, section "___ksymtab_gpl+pci_scan_child_bus", align 4
@__kstrtab_pci_create_root_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_create_root_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_create_root_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_create_root_bus to i32), ptr @__kstrtab_pci_create_root_bus, ptr @__kstrtabns_pci_create_root_bus }, section "___ksymtab_gpl+pci_create_root_bus", align 4
@pci_host_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 3059, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Scanning root bridge failed\00", [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pci_host_probe\00", [17 x i8] zeroinitializer }, align 32
@pci_host_probe._entry_ptr = internal global ptr @pci_host_probe._entry, section ".printk_index", align 4
@__kstrtab_pci_host_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_host_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_host_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_host_probe to i32), ptr @__kstrtab_pci_host_probe, ptr @__kstrtabns_pci_host_probe }, section "___ksymtab_gpl+pci_host_probe", align 4
@pci_bus_insert_busn_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 3107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"busn_res: can not insert %pR under %s%pR (conflicts with %s %pR)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pci_bus_insert_busn_res\00", [40 x i8] zeroinitializer }, align 32
@pci_bus_insert_busn_res._entry_ptr = internal global ptr @pci_bus_insert_busn_res._entry, section ".printk_index", align 4
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"domain \00", [24 x i8] zeroinitializer }, align 32
@pci_bus_update_busn_res_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 3125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"busn_res: %pR end %s updated to %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pci_bus_update_busn_res_end\00", [36 x i8] zeroinitializer }, align 32
@pci_bus_update_busn_res_end._entry_ptr = internal global ptr @pci_bus_update_busn_res_end._entry, section ".printk_index", align 4
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"can not be\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"is\00", [29 x i8] zeroinitializer }, align 32
@pci_bus_release_busn_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 3143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"busn_res: %pR %s released\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci_bus_release_busn_res\00", [39 x i8] zeroinitializer }, align 32
@pci_bus_release_busn_res._entry_ptr = internal global ptr @pci_bus_release_busn_res._entry, section ".printk_index", align 4
@pci_scan_root_bus_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 3173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"No busn resource found for root bus, will use [bus %02x-ff]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci_scan_root_bus_bridge\00", [39 x i8] zeroinitializer }, align 32
@pci_scan_root_bus_bridge._entry_ptr = internal global ptr @pci_scan_root_bus_bridge._entry, section ".printk_index", align 4
@__kstrtab_pci_scan_root_bus_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_root_bus_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_root_bus_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_root_bus_bridge to i32), ptr @__kstrtab_pci_scan_root_bus_bridge, ptr @__kstrtabns_pci_scan_root_bus_bridge }, section "___ksymtab+pci_scan_root_bus_bridge", align 4
@pci_scan_root_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.96, ptr @.str.2, i32 3207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_scan_root_bus\00", [46 x i8] zeroinitializer }, align 32
@pci_scan_root_bus._entry_ptr = internal global ptr @pci_scan_root_bus._entry, section ".printk_index", align 4
@__kstrtab_pci_scan_root_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_root_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_root_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_root_bus to i32), ptr @__kstrtab_pci_scan_root_bus, ptr @__kstrtabns_pci_scan_root_bus }, section "___ksymtab+pci_scan_root_bus", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@busn_resource = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 0, i32 255, ptr @.str.185, i32 4096, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_pci_scan_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_bus to i32), ptr @__kstrtab_pci_scan_bus, ptr @__kstrtabns_pci_scan_bus }, section "___ksymtab+pci_scan_bus", align 4
@__kstrtab_pci_rescan_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_rescan_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_rescan_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_rescan_bus to i32), ptr @__kstrtab_pci_rescan_bus, ptr @__kstrtabns_pci_rescan_bus }, section "___ksymtab_gpl+pci_rescan_bus", align 4
@pci_rescan_remove_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.186, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_rescan_remove_lock, i64 52), ptr getelementptr (i8, ptr @pci_rescan_remove_lock, i64 52) }, ptr @pci_rescan_remove_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.187, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_pci_lock_rescan_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_lock_rescan_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_lock_rescan_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_lock_rescan_remove to i32), ptr @__kstrtab_pci_lock_rescan_remove, ptr @__kstrtabns_pci_lock_rescan_remove }, section "___ksymtab_gpl+pci_lock_rescan_remove", align 4
@__kstrtab_pci_unlock_rescan_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_unlock_rescan_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_unlock_rescan_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_unlock_rescan_remove to i32), ptr @__kstrtab_pci_unlock_rescan_remove, ptr @__kstrtabns_pci_unlock_rescan_remove }, section "___ksymtab_gpl+pci_unlock_rescan_remove", align 4
@pci_hp_add_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 3338, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"No bus number available for hot-added bridge\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_hp_add_bridge\00", [46 x i8] zeroinitializer }, align 32
@pci_hp_add_bridge._entry_ptr = internal global ptr @pci_hp_add_bridge._entry, section ".printk_index", align 4
@__kstrtab_pci_hp_add_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_hp_add_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_hp_add_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_hp_add_bridge to i32), ptr @__kstrtab_pci_hp_add_bridge, ptr @__kstrtabns_pci_hp_add_bridge }, section "___ksymtab_gpl+pci_hp_add_bridge", align 4
@pcibus_class_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pcibus_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.99, ptr null, ptr null, ptr @pcibus_groups, ptr null, ptr null, ptr null, ptr null, ptr @release_pcibus_dev, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci_bus\00", [24 x i8] zeroinitializer }, align 32
@pcibus_groups = external dso_local global [0 x ptr], align 4
@pci_read_bridge_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 435, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  bridge window %pR\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci_read_bridge_io\00", [45 x i8] zeroinitializer }, align 32
@pci_read_bridge_io._entry_ptr = internal global ptr @pci_read_bridge_io._entry, section ".printk_index", align 4
@pci_read_bridge_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.102, ptr @.str.2, i32 457, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pci_read_bridge_mmio\00", [43 x i8] zeroinitializer }, align 32
@pci_read_bridge_mmio._entry_ptr = internal global ptr @pci_read_bridge_mmio._entry, section ".printk_index", align 4
@pci_read_bridge_mmio_pref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 498, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"can't handle bridge window above 4GB (bus address %#010llx)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci_read_bridge_mmio_pref\00", [38 x i8] zeroinitializer }, align 32
@pci_read_bridge_mmio_pref._entry_ptr = internal global ptr @pci_read_bridge_mmio_pref._entry, section ".printk_index", align 4
@pci_read_bridge_mmio_pref._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.104, ptr @.str.2, i32 510, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@pci_read_bridge_mmio_pref._entry_ptr.106 = internal global ptr @pci_read_bridge_mmio_pref._entry.105, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%04x:%02x\00", [22 x i8] zeroinitializer }, align 32
@pci_alloc_child_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 1129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"extended config space not accessible\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci_alloc_child_bus\00", [44 x i8] zeroinitializer }, align 32
@pci_alloc_child_bus._entry_ptr = internal global ptr @pci_alloc_child_bus._entry, section ".printk_index", align 4
@pci_alloc_child_bus._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 1149, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to add bus: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@pci_alloc_child_bus._entry_ptr.112 = internal global ptr @pci_alloc_child_bus._entry.110, section ".printk_index", align 4
@pcix_bus_speed = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\FF\02\03\04\FF\05\06\07\FF\09\0A\0B\FF\11\12\13", [16 x i8] zeroinitializer }, align 32
@agp_speeds = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0C\0D\0E\0F\10", [27 x i8] zeroinitializer }, align 32
@pci_scan_bridge_extend.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.114, ptr @.str.2, ptr @.str.115, i8 1, i8 62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"probe\00", [26 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci_scan_bridge_extend\00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"scanning [bus %02x-%02x] behind bridge, pass %d\0A\00", [47 x i8] zeroinitializer }, align 32
@pci_scan_bridge_extend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.2, i32 1275, ptr @.str.117, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Primary bus is hard wired to 0\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pci_scan_bridge_extend._entry_ptr = internal global ptr @pci_scan_bridge_extend._entry, section ".printk_index", align 4
@pci_scan_bridge_extend._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.114, ptr @.str.2, i32 1284, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"bridge configuration invalid ([bus %02x-%02x]), reconfiguring\0A\00", [33 x i8] zeroinitializer }, align 32
@pci_scan_bridge_extend._entry_ptr.120 = internal global ptr @pci_scan_bridge_extend._entry.118, section ".printk_index", align 4
@pci_scan_bridge_extend._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.114, ptr @.str.2, i32 1328, ptr @.str.117, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bridge has subordinate %02x but max busn %02x\0A\00", [49 x i8] zeroinitializer }, align 32
@pci_scan_bridge_extend._entry_ptr.123 = internal global ptr @pci_scan_bridge_extend._entry.121, section ".printk_index", align 4
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PCI CardBus %04x:%02x\00", [42 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCI Bus %04x:%02x\00", [46 x i8] zeroinitializer }, align 32
@pci_scan_bridge_extend._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.114, ptr @.str.2, i32 1458, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"devices behind bridge are unusable because %pR cannot be assigned for them\0A\00", [52 x i8] zeroinitializer }, align 32
@pci_scan_bridge_extend._entry_ptr.128 = internal global ptr @pci_scan_bridge_extend._entry.126, section ".printk_index", align 4
@early_dump_pci_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 1798, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"config space:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"early_dump_pci_device\00", [42 x i8] zeroinitializer }, align 32
@early_dump_pci_device._entry_ptr = internal global ptr @early_dump_pci_device._entry, section ".printk_index", align 4
@pci_bus_wait_crs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 2338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014pci %04x:%02x:%02x.%d: not ready after %dms; giving up\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_bus_wait_crs\00", [47 x i8] zeroinitializer }, align 32
@pci_bus_wait_crs._entry_ptr = internal global ptr @pci_bus_wait_crs._entry, section ".printk_index", align 4
@pci_bus_wait_crs._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.2, i32 2345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016pci %04x:%02x:%02x.%d: not ready after %dms; waiting\0A\00", [40 x i8] zeroinitializer }, align 32
@pci_bus_wait_crs._entry_ptr.135 = internal global ptr @pci_bus_wait_crs._entry.133, section ".printk_index", align 4
@pci_bus_wait_crs._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.132, ptr @.str.2, i32 2357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016pci %04x:%02x:%02x.%d: ready after %dms\0A\00", [53 x i8] zeroinitializer }, align 32
@pci_bus_wait_crs._entry_ptr.138 = internal global ptr @pci_bus_wait_crs._entry.136, section ".printk_index", align 4
@pci_configure_mps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 2013, ptr @.str.117, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"can't set Max Payload Size to %d; if necessary, use \22pci=pcie_bus_safe\22 and report a bug\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_configure_mps\00", [46 x i8] zeroinitializer }, align 32
@pci_configure_mps._entry_ptr = internal global ptr @pci_configure_mps._entry, section ".printk_index", align 4
@pci_configure_mps._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 2029, ptr @.str.117, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"Max Payload Size %d, but upstream %s set to %d; if necessary, use \22pci=pcie_bus_safe\22 and report a bug\0A\00", [56 x i8] zeroinitializer }, align 32
@pci_configure_mps._entry_ptr.143 = internal global ptr @pci_configure_mps._entry.141, section ".printk_index", align 4
@pci_configure_mps._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.2, i32 2044, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Upstream bridge's Max Payload Size set to %d (was %d, max %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@pci_configure_mps._entry_ptr.146 = internal global ptr @pci_configure_mps._entry.144, section ".printk_index", align 4
@pci_configure_mps._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 2051, ptr @.str.117, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@pci_configure_mps._entry_ptr.148 = internal global ptr @pci_configure_mps._entry.147, section ".printk_index", align 4
@pci_configure_mps._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.140, ptr @.str.2, i32 2056, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Max Payload Size set to %d (was %d, max %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@pci_configure_mps._entry_ptr.151 = internal global ptr @pci_configure_mps._entry.149, section ".printk_index", align 4
@pci_configure_relaxed_ordering._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 2143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Relaxed Ordering disabled because the Root Port didn't support it\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pci_configure_relaxed_ordering\00", [33 x i8] zeroinitializer }, align 32
@pci_configure_relaxed_ordering._entry_ptr = internal global ptr @pci_configure_relaxed_ordering._entry, section ".printk_index", align 4
@pci_release_dev.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.154, ptr @.str.2, ptr @.str.155, i8 2, i8 60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci_release_dev\00", [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device released\0A\00", [47 x i8] zeroinitializer }, align 32
@pcie_bus_configure_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.2, i32 2795, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Max Payload Size set to %4d/%4d (was %4d), Max Read Rq %4d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcie_bus_configure_set\00", [41 x i8] zeroinitializer }, align 32
@pcie_bus_configure_set._entry_ptr = internal global ptr @pcie_bus_configure_set._entry, section ".printk_index", align 4
@pcie_write_mps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 2735, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed attempting to set the MPS\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcie_write_mps\00", [17 x i8] zeroinitializer }, align 32
@pcie_write_mps._entry_ptr = internal global ptr @pcie_write_mps._entry, section ".printk_index", align 4
@pcie_write_mrrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.2, i32 2768, ptr @.str.117, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed attempting to set the MRRS\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcie_write_mrrs\00", [16 x i8] zeroinitializer }, align 32
@pcie_write_mrrs._entry_ptr = internal global ptr @pcie_write_mrrs._entry, section ".printk_index", align 4
@pcie_write_mrrs._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.2, i32 2773, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"MRRS was unable to be configured with a safe value.  If problems are experienced, try running with pci=pcie_bus_safe\0A\00", [42 x i8] zeroinitializer }, align 32
@pcie_write_mrrs._entry_ptr.164 = internal global ptr @pcie_write_mrrs._entry.162, section ".printk_index", align 4
@pci_scan_child_bus_extend.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.165, ptr @.str.2, ptr @.str.166, i8 2, i8 -52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci_scan_child_bus_extend\00", [38 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"scanning bus\0A\00", [18 x i8] zeroinitializer }, align 32
@pci_scan_child_bus_extend.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.165, ptr @.str.2, ptr @.str.167, i8 2, i8 -45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fixups for bus\0A\00", [16 x i8] zeroinitializer }, align 32
@pci_hotplug_bus_size = external dso_local local_unnamed_addr global i32, align 4
@pci_scan_child_bus_extend.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.165, ptr @.str.2, ptr @.str.168, i8 2, i8 -25, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%pR extended by %#02x\0A\00", [41 x i8] zeroinitializer }, align 32
@pci_scan_child_bus_extend.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.165, ptr @.str.2, ptr @.str.169, i8 2, i8 -22, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bus scan returning with max=%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jailhouse,cell\00", [17 x i8] zeroinitializer }, align 32
@pci_register_host_bridge.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.171, ptr @.str.2, ptr @.str.172, i8 0, i8 -28, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci_register_host_bridge\00", [39 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bus already known\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci%04x:%02x\00", [19 x i8] zeroinitializer }, align 32
@pci_register_host_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.171, ptr @.str.2, i32 959, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@pci_register_host_bridge._entry_ptr = internal global ptr @pci_register_host_bridge._entry, section ".printk_index", align 4
@pci_register_host_bridge._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.171, ptr @.str.2, i32 966, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCI host bridge to bus %s\0A\00", [37 x i8] zeroinitializer }, align 32
@pci_register_host_bridge._entry_ptr.176 = internal global ptr @pci_register_host_bridge._entry.174, section ".printk_index", align 4
@pci_register_host_bridge._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.171, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016PCI host bridge to bus %s\0A\00", [35 x i8] zeroinitializer }, align 32
@pci_register_host_bridge._entry_ptr.179 = internal global ptr @pci_register_host_bridge._entry.177, section ".printk_index", align 4
@.str.180 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" (bus address [%#06llx-%#06llx])\00", [63 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" (bus address [%#010llx-%#010llx])\00", [61 x i8] zeroinitializer }, align 32
@pci_register_host_bridge._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.171, ptr @.str.2, i32 1019, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"root bus resource %pR%s\0A\00", [39 x i8] zeroinitializer }, align 32
@pci_register_host_bridge._entry_ptr.184 = internal global ptr @pci_register_host_bridge._entry.182, section ".printk_index", align 4
@pci_flags = external dso_local local_unnamed_addr global i32, align 4
@pci_domain_busn_res_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pci_domain_busn_res_list, ptr @pci_domain_busn_res_list }, [24 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCI busn\00", [23 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pci_rescan_remove_lock.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci_rescan_remove_lock\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.189 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.190 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 65535, i64 4294901760, i64 4294967295]
@__sancov_gen_cov_switch_values.191 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.194 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.195 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 8]
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"pci_root_buses\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 36, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 258, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 269, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 279, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 306, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 317, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 523, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 540, i32 5 }
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"pcie_link_speed\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 675, i32 21 }
@___asan_gen_.253 = private unnamed_addr constant [14 x i8] c"speed_strings\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 698, i32 21 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 699, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 700, i32 6 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 701, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 702, i32 6 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 703, i32 6 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 708, i32 6 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 709, i32 6 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 710, i32 6 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 711, i32 6 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 712, i32 6 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 713, i32 6 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 714, i32 6 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 715, i32 6 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 716, i32 6 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 717, i32 6 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 718, i32 6 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 719, i32 6 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 720, i32 6 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 721, i32 6 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 722, i32 6 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 723, i32 6 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 724, i32 6 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 729, i32 9 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1553, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1564, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1847, i32 26 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1875, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1884, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1917, i32 5 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1924, i32 5 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1933, i32 5 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1940, i32 5 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1974, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1980, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2090, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2098, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2307, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 3059, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 3104, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 3124, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 3142, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 3171, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 3205, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant [14 x i8] c"busn_resource\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 28, i32 24 }
@___asan_gen_.478 = private unnamed_addr constant [23 x i8] c"pci_rescan_remove_lock\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 3338, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 107, i32 9 }
@___asan_gen_.493 = private unnamed_addr constant [13 x i8] c"pcibus_class\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 99, i32 21 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 100, i32 11 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 435, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 457, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 497, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 510, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1104, i32 28 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1129, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1149, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant [15 x i8] c"pcix_bus_speed\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 655, i32 28 }
@___asan_gen_.547 = private unnamed_addr constant [11 x i8] c"agp_speeds\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 739, i32 22 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1271, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1275, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1283, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1327, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1448, i32 17 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1448, i32 43 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1457, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1798, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2336, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2343, i32 4 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2355, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2012, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2028, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2043, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2050, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2055, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2143, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2291, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2793, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2735, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2768, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2773, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2865, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2894, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2974, i32 4 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 2986, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant [30 x i8] c"../include/linux/hypervisor.h\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 30, i32 45 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 914, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 919, i32 29 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 959, i32 4 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 966, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 968, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1009, i32 11 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1011, i32 11 }
@___asan_gen_.748 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 1019, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant [25 x i8] c"pci_domain_busn_res_list\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 39, i32 8 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 29, i32 10 }
@___asan_gen_.763 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.764 = private constant [23 x i8] c"../drivers/pci/probe.c\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.764, i32 3289, i32 8 }
@llvm.compiler.used = appending global [276 x ptr] [ptr @__initcall__kmod_probe__237_109_pcibus_class_init2, ptr @__ksymtab_devm_pci_alloc_host_bridge, ptr @__ksymtab_no_pci_devices, ptr @__ksymtab_pci_add_new_bus, ptr @__ksymtab_pci_alloc_dev, ptr @__ksymtab_pci_alloc_host_bridge, ptr @__ksymtab_pci_bus_read_dev_vendor_id, ptr @__ksymtab_pci_create_root_bus, ptr @__ksymtab_pci_free_host_bridge, ptr @__ksymtab_pci_host_probe, ptr @__ksymtab_pci_hp_add_bridge, ptr @__ksymtab_pci_lock_rescan_remove, ptr @__ksymtab_pci_rescan_bus, ptr @__ksymtab_pci_root_buses, ptr @__ksymtab_pci_scan_bridge, ptr @__ksymtab_pci_scan_bus, ptr @__ksymtab_pci_scan_child_bus, ptr @__ksymtab_pci_scan_root_bus, ptr @__ksymtab_pci_scan_root_bus_bridge, ptr @__ksymtab_pci_scan_single_device, ptr @__ksymtab_pci_scan_slot, ptr @__ksymtab_pci_speed_string, ptr @__ksymtab_pci_unlock_rescan_remove, ptr @__ksymtab_pcie_bus_configure_settings, ptr @__ksymtab_pcie_link_speed, ptr @__ksymtab_pcie_relaxed_ordering_enabled, ptr @__ksymtab_pcie_update_link_speed, ptr @__pci_read_base._entry, ptr @__pci_read_base._entry.12, ptr @__pci_read_base._entry.15, ptr @__pci_read_base._entry.5, ptr @__pci_read_base._entry.9, ptr @__pci_read_base._entry_ptr, ptr @__pci_read_base._entry_ptr.11, ptr @__pci_read_base._entry_ptr.14, ptr @__pci_read_base._entry_ptr.17, ptr @__pci_read_base._entry_ptr.8, ptr @early_dump_pci_device._entry, ptr @early_dump_pci_device._entry_ptr, ptr @pci_alloc_child_bus._entry, ptr @pci_alloc_child_bus._entry.110, ptr @pci_alloc_child_bus._entry_ptr, ptr @pci_alloc_child_bus._entry_ptr.112, ptr @pci_bus_insert_busn_res._entry, ptr @pci_bus_insert_busn_res._entry_ptr, ptr @pci_bus_release_busn_res._entry, ptr @pci_bus_release_busn_res._entry_ptr, ptr @pci_bus_update_busn_res_end._entry, ptr @pci_bus_update_busn_res_end._entry_ptr, ptr @pci_bus_wait_crs._entry, ptr @pci_bus_wait_crs._entry.133, ptr @pci_bus_wait_crs._entry.136, ptr @pci_bus_wait_crs._entry_ptr, ptr @pci_bus_wait_crs._entry_ptr.135, ptr @pci_bus_wait_crs._entry_ptr.138, ptr @pci_configure_extended_tags._entry, ptr @pci_configure_extended_tags._entry.79, ptr @pci_configure_extended_tags._entry_ptr, ptr @pci_configure_extended_tags._entry_ptr.81, ptr @pci_configure_mps._entry, ptr @pci_configure_mps._entry.141, ptr @pci_configure_mps._entry.144, ptr @pci_configure_mps._entry.147, ptr @pci_configure_mps._entry.149, ptr @pci_configure_mps._entry_ptr, ptr @pci_configure_mps._entry_ptr.143, ptr @pci_configure_mps._entry_ptr.146, ptr @pci_configure_mps._entry_ptr.148, ptr @pci_configure_mps._entry_ptr.151, ptr @pci_configure_relaxed_ordering._entry, ptr @pci_configure_relaxed_ordering._entry_ptr, ptr @pci_host_probe._entry, ptr @pci_host_probe._entry_ptr, ptr @pci_hp_add_bridge._entry, ptr @pci_hp_add_bridge._entry_ptr, ptr @pci_read_bridge_bases._entry, ptr @pci_read_bridge_bases._entry.22, ptr @pci_read_bridge_bases._entry_ptr, ptr @pci_read_bridge_bases._entry_ptr.24, ptr @pci_read_bridge_io._entry, ptr @pci_read_bridge_io._entry_ptr, ptr @pci_read_bridge_mmio._entry, ptr @pci_read_bridge_mmio._entry_ptr, ptr @pci_read_bridge_mmio_pref._entry, ptr @pci_read_bridge_mmio_pref._entry.105, ptr @pci_read_bridge_mmio_pref._entry_ptr, ptr @pci_read_bridge_mmio_pref._entry_ptr.106, ptr @pci_register_host_bridge._entry, ptr @pci_register_host_bridge._entry.174, ptr @pci_register_host_bridge._entry.177, ptr @pci_register_host_bridge._entry.182, ptr @pci_register_host_bridge._entry_ptr, ptr @pci_register_host_bridge._entry_ptr.176, ptr @pci_register_host_bridge._entry_ptr.179, ptr @pci_register_host_bridge._entry_ptr.184, ptr @pci_scan_bridge_extend._entry, ptr @pci_scan_bridge_extend._entry.118, ptr @pci_scan_bridge_extend._entry.121, ptr @pci_scan_bridge_extend._entry.126, ptr @pci_scan_bridge_extend._entry_ptr, ptr @pci_scan_bridge_extend._entry_ptr.120, ptr @pci_scan_bridge_extend._entry_ptr.123, ptr @pci_scan_bridge_extend._entry_ptr.128, ptr @pci_scan_root_bus._entry, ptr @pci_scan_root_bus._entry_ptr, ptr @pci_scan_root_bus_bridge._entry, ptr @pci_scan_root_bus_bridge._entry_ptr, ptr @pci_setup_device._entry, ptr @pci_setup_device._entry.56, ptr @pci_setup_device._entry.59, ptr @pci_setup_device._entry.62, ptr @pci_setup_device._entry.65, ptr @pci_setup_device._entry.68, ptr @pci_setup_device._entry.71, ptr @pci_setup_device._entry.74, ptr @pci_setup_device._entry_ptr, ptr @pci_setup_device._entry_ptr.58, ptr @pci_setup_device._entry_ptr.61, ptr @pci_setup_device._entry_ptr.64, ptr @pci_setup_device._entry_ptr.67, ptr @pci_setup_device._entry_ptr.70, ptr @pci_setup_device._entry_ptr.73, ptr @pci_setup_device._entry_ptr.76, ptr @pcie_bus_configure_set._entry, ptr @pcie_bus_configure_set._entry_ptr, ptr @pcie_write_mps._entry, ptr @pcie_write_mps._entry_ptr, ptr @pcie_write_mrrs._entry, ptr @pcie_write_mrrs._entry.162, ptr @pcie_write_mrrs._entry_ptr, ptr @pcie_write_mrrs._entry_ptr.164, ptr @set_pcie_port_type._entry, ptr @set_pcie_port_type._entry.50, ptr @set_pcie_port_type._entry_ptr, ptr @set_pcie_port_type._entry_ptr.52, ptr @pci_root_buses, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @pcie_link_speed, ptr @pci_speed_string.speed_strings, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @pci_alloc_dev.__key, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @busn_resource, ptr @pci_rescan_remove_lock, ptr @.str.97, ptr @.str.98, ptr @pcibus_class_init.__key, ptr @pcibus_class, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @pcix_bus_speed, ptr @agp_speeds, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.183, ptr @pci_domain_busn_res_list, ptr @.str.185, ptr @.str.186, ptr @.str.187], section "llvm.metadata"
@0 = internal global [190 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_root_buses to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_read_bridge_bases._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_read_bridge_bases._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_link_speed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_speed_string.speed_strings to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_pcie_port_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_pcie_port_type._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_device._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_device._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_device._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_device._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_device._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_device._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_device._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_configure_extended_tags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_configure_extended_tags._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_alloc_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_host_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_insert_busn_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_update_busn_res_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_release_busn_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_scan_root_bus_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_scan_root_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @busn_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_rescan_remove_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_hp_add_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcibus_class_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcibus_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_read_bridge_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_read_bridge_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_read_bridge_mmio_pref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_read_bridge_mmio_pref._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_alloc_child_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_alloc_child_bus._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcix_bus_speed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agp_speeds to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_scan_bridge_extend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_scan_bridge_extend._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_scan_bridge_extend._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_scan_bridge_extend._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_dump_pci_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_wait_crs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_wait_crs._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_wait_crs._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_configure_mps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_configure_mps._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_configure_mps._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_configure_mps._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_configure_mps._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_configure_relaxed_ordering._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_bus_configure_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_write_mps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_write_mrrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_write_mrrs._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_register_host_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_register_host_bridge._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_register_host_bridge._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_register_host_bridge._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_domain_busn_res_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @no_pci_devices() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @device_match_any) #14
  %cmp = icmp eq ptr %call.i, null
  %conv = zext i1 %cmp to i32
  tail call void @put_device(ptr noundef %call.i) #14
  ret i32 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcibus_class_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__class_register(ptr noundef nonnull @pcibus_class, ptr noundef nonnull @pcibus_class_init.__key) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__pci_read_base(ptr noundef %dev, i32 noundef %type, ptr noundef %res, i32 noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  %l = alloca i32, align 4
  %sz = alloca i32, align 4
  %orig_cmd = alloca i16, align 2
  %region = alloca %struct.pci_bus_region, align 4
  %inverted_region = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #14
  %0 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %l, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz) #14
  %1 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sz, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %orig_cmd) #14
  %2 = ptrtoint ptr %orig_cmd to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %orig_cmd, align 2, !annotation !424
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #14
  %3 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %region, align 4, !annotation !424
  %4 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inverted_region) #14
  %6 = ptrtoint ptr %inverted_region to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %inverted_region, align 4, !annotation !424
  %7 = getelementptr inbounds %struct.pci_bus_region, ptr %inverted_region, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool.not = icmp eq i32 %type, 0
  %cond = select i1 %tobool.not, i32 -1, i32 -2048
  %mmio_always_on = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 33
  %9 = ptrtoint ptr %mmio_always_on to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %bf.load = load i32, ptr %mmio_always_on, align 2
  %10 = and i32 %bf.load, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not = icmp eq i32 %10, 0
  br i1 %tobool1.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  %call = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %orig_cmd) #14
  %11 = ptrtoint ptr %orig_cmd to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %orig_cmd, align 2
  %13 = and i16 %12, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool2.not = icmp eq i16 %13, 0
  br i1 %tobool2.not, label %if.then.if.end8_crit_edge, label %if.then3

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %and5 = and i16 %12, -4
  %call7 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 4, i16 noundef zeroext %and5) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end8.pci_name.exit_crit_edge

if.end8.pci_name.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end8.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.end8.pci_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 2
  %18 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i.i, ptr %name, align 4
  %call10 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %pos, ptr noundef nonnull %l) #14
  %19 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %l, align 4
  %or = or i32 %20, %cond
  %call11 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %pos, i32 noundef %or) #14
  %call12 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %pos, ptr noundef nonnull %sz) #14
  %21 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %l, align 4
  %call13 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %pos, i32 noundef %22) #14
  %23 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp = icmp eq i32 %24, -1
  br i1 %cmp, label %if.then15, label %pci_name.exit.if.end16_crit_edge

pci_name.exit.if.end16_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then15:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sz, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %pci_name.exit.if.end16_crit_edge
  %26 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %l, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp17 = icmp eq i32 %27, -1
  br i1 %cmp17, label %if.then19, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %l, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %29 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %l, align 4
  %and.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then23, label %if.else40

if.then23:                                        ; preds = %if.end20
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  %and1.i = and i32 %30, 3
  %or.i = or i32 %and1.i, 256
  br label %decode_bar.exit

if.end.i:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  %and2.i = and i32 %30, 15
  %and4.i = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 512, i32 8704
  %spec.select.i = or i32 %spec.select.v.i, %and2.i
  %and8.i = and i32 %30, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and8.i)
  %cond.i = icmp eq i32 %and8.i, 4
  %or9.i = or i32 %spec.select.i, 1048576
  %flags.1.i = select i1 %cond.i, i32 %or9.i, i32 %spec.select.i
  br label %decode_bar.exit

decode_bar.exit:                                  ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %or.i, %if.then.i ], [ %flags.1.i, %if.end.i ]
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %or26 = or i32 %retval.0.i, 262144
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or26, ptr %flags, align 4
  %and28 = and i32 %retval.0.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %decode_bar.exit
  call void @__sanitizer_cov_trace_pc() #16
  %and31 = and i32 %30, -4
  %32 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sz, align 4
  %and33 = and i32 %33, -4
  br label %if.end51

if.else:                                          ; preds = %decode_bar.exit
  call void @__sanitizer_cov_trace_pc() #16
  %and35 = and i32 %30, -16
  %34 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sz, align 4
  %and37 = and i32 %35, -16
  br label %if.end51

if.else40:                                        ; preds = %if.end20
  br i1 %cmp.not.i, label %if.else40.if.end46_crit_edge, label %if.then43

if.else40.if.end46_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then43:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #16
  %flags44 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %36 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags44, align 4
  %or45 = or i32 %37, 1
  store i32 %or45, ptr %flags44, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.else40.if.end46_crit_edge
  %and47 = and i32 %30, -2048
  %38 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sz, align 4
  %and49 = and i32 %39, -2048
  br label %if.end51

if.end51:                                         ; preds = %if.end46, %if.else, %if.then30
  %l64.0.in = phi i32 [ %and31, %if.then30 ], [ %and35, %if.else ], [ %and47, %if.end46 ]
  %sz64.0.in = phi i32 [ %and33, %if.then30 ], [ %and37, %if.else ], [ %and49, %if.end46 ]
  %mask64.0 = phi i64 [ 1048572, %if.then30 ], [ 4294967280, %if.else ], [ 4294965248, %if.end46 ]
  %sz64.0 = zext i32 %sz64.0.in to i64
  %l64.0 = zext i32 %l64.0.in to i64
  %flags52 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %40 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags52, align 4
  %and53 = and i32 %41, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.if.end69_crit_edge, label %if.then55

if.end51.if.end69_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i32 %pos, 4
  %call56 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %l) #14
  %call58 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add, i32 noundef -1) #14
  %call60 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %sz) #14
  %42 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %l, align 4
  %call62 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add, i32 noundef %43) #14
  %44 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %l, align 4
  %conv63 = zext i32 %45 to i64
  %shl = shl nuw i64 %conv63, 32
  %or64 = or i64 %shl, %l64.0
  %46 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sz, align 4
  %conv65 = zext i32 %47 to i64
  %shl66 = shl nuw i64 %conv65, 32
  %or67 = or i64 %shl66, %sz64.0
  %or68 = or i64 %mask64.0, -4294967296
  br label %if.end69

if.end69:                                         ; preds = %if.then55, %if.end51.if.end69_crit_edge
  %l64.1 = phi i64 [ %or64, %if.then55 ], [ %l64.0, %if.end51.if.end69_crit_edge ]
  %sz64.1 = phi i64 [ %or67, %if.then55 ], [ %sz64.0, %if.end51.if.end69_crit_edge ]
  %mask64.1 = phi i64 [ %or68, %if.then55 ], [ %mask64.0, %if.end51.if.end69_crit_edge ]
  %48 = ptrtoint ptr %mmio_always_on to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %bf.load71 = load i32, ptr %mmio_always_on, align 2
  %49 = and i32 %bf.load71, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool74.not = icmp eq i32 %49, 0
  br i1 %tobool74.not, label %land.lhs.true, label %if.end69.if.end80_crit_edge

if.end69.if.end80_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

land.lhs.true:                                    ; preds = %if.end69
  %50 = ptrtoint ptr %orig_cmd to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %orig_cmd, align 2
  %52 = and i16 %51, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool77.not = icmp eq i16 %52, 0
  br i1 %tobool77.not, label %land.lhs.true.if.end80_crit_edge, label %if.then78

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.then78:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call79 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 4, i16 noundef zeroext %51) #14
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %land.lhs.true.if.end80_crit_edge, %if.end69.if.end80_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sz64.1)
  %tobool81.not = icmp eq i64 %sz64.1, 0
  br i1 %tobool81.not, label %if.end80.out.thread_crit_edge, label %if.end83

if.end80.out.thread_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.end83:                                         ; preds = %if.end80
  %and.i222 = and i64 %mask64.1, %sz64.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i222)
  %tobool.not.i223 = icmp eq i64 %and.i222, 0
  br i1 %tobool.not.i223, label %if.end83.do.end_crit_edge, label %if.end.i225

if.end83.do.end_crit_edge:                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i225:                                      ; preds = %if.end83
  %neg.i = sub i64 0, %and.i222
  %and1.i224 = and i64 %and.i222, %neg.i
  call void @__sanitizer_cov_trace_cmp8(i64 %l64.1, i64 %sz64.1)
  %cmp.i = icmp eq i64 %l64.1, %sz64.1
  br i1 %cmp.i, label %land.lhs.true.i, label %pci_size.exit

land.lhs.true.i:                                  ; preds = %if.end.i225
  %sub2.i = add i64 %and1.i224, -1
  %or.i226 = or i64 %sub2.i, %l64.1
  %and3.i = and i64 %or.i226, %mask64.1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i, i64 %mask64.1)
  %cmp4.not.i = icmp ne i64 %and3.i, %mask64.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i224)
  %tobool85.not = icmp eq i64 %and1.i224, 0
  %or.cond = select i1 %cmp4.not.i, i1 true, i1 %tobool85.not
  br i1 %or.cond, label %land.lhs.true.i.do.end_crit_edge, label %land.lhs.true.i.if.end88_crit_edge

land.lhs.true.i.if.end88_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

pci_size.exit:                                    ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i224)
  %tobool85.not.old = icmp eq i64 %and1.i224, 0
  br i1 %tobool85.not.old, label %pci_size.exit.do.end_crit_edge, label %pci_size.exit.if.end88_crit_edge

pci_size.exit.if.end88_crit_edge:                 ; preds = %pci_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

pci_size.exit.do.end_crit_edge:                   ; preds = %pci_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %pci_size.exit.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %if.end83.do.end_crit_edge
  %dev87 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev87, ptr noundef nonnull @.str, i32 noundef %pos) #17
  br label %out.thread

if.end88:                                         ; preds = %pci_size.exit.if.end88_crit_edge, %land.lhs.true.i.if.end88_crit_edge
  %53 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags52, align 4
  %and90 = and i32 %54, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end88.if.end115_crit_edge, label %if.then92

if.end88.if.end115_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and1.i224)
  %cmp93 = icmp ugt i64 %and1.i224, 4294967296
  br i1 %cmp93, label %if.then95, label %if.end102

if.then95:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #16
  %or97 = or i32 %54, 805306368
  %55 = ptrtoint ptr %flags52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or97, ptr %flags52, align 4
  %56 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %res, align 4
  %end = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %57 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %end, align 4
  %dev101 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev101, ptr noundef nonnull @.str.6, i32 noundef %pos, i64 noundef %and1.i224) #17
  br label %out

if.end102:                                        ; preds = %if.then92
  %58 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %l, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool103.not = icmp eq i32 %59, 0
  br i1 %tobool103.not, label %if.end102.if.end115_crit_edge, label %if.then104

if.end102.if.end115_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then104:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  %or106 = or i32 %54, 536870912
  %60 = ptrtoint ptr %flags52 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or106, ptr %flags52, align 4
  %61 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %res, align 4
  %62 = trunc i64 %and1.i224 to i32
  %conv108 = add i32 %62, -1
  %end109 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %63 = ptrtoint ptr %end109 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv108, ptr %end109, align 4
  %dev113 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev113, ptr noundef nonnull @.str.10, i32 noundef %pos, i64 noundef %l64.1) #17
  br label %out

if.end115:                                        ; preds = %if.end102.if.end115_crit_edge, %if.end88.if.end115_crit_edge
  %conv116 = trunc i64 %l64.1 to i32
  %64 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv116, ptr %region, align 4
  %add118 = add i64 %and1.i224, %l64.1
  %65 = trunc i64 %add118 to i32
  %conv120 = add i32 %65, -1
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv120, ptr %4, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %67 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus, align 8
  call void @pcibios_bus_to_resource(ptr noundef %68, ptr noundef %res, ptr noundef nonnull %region) #14
  %69 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bus, align 8
  call void @pcibios_resource_to_bus(ptr noundef %70, ptr noundef nonnull %inverted_region, ptr noundef %res) #14
  %71 = ptrtoint ptr %inverted_region to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %inverted_region, align 4
  %73 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %region, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp125.not = icmp eq i32 %72, %74
  br i1 %cmp125.not, label %if.end115.out_crit_edge, label %if.then127

if.end115.out_crit_edge:                          ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then127:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags52, align 4
  %or129 = or i32 %76, 536870912
  store i32 %or129, ptr %flags52, align 4
  %77 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %res, align 4
  %78 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %4, align 4
  %sub133 = sub i32 %79, %74
  %end134 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %80 = ptrtoint ptr %end134 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub133, ptr %end134, align 4
  %dev138 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %conv140 = zext i32 %74 to i64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev138, ptr noundef nonnull @.str.13, i32 noundef %pos, i64 noundef %conv140) #17
  br label %out

out.thread:                                       ; preds = %do.end, %if.end80.out.thread_crit_edge
  %81 = ptrtoint ptr %flags52 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %flags52, align 4
  br label %if.end150

out:                                              ; preds = %if.then127, %if.end115.out_crit_edge, %if.then104, %if.then95
  %82 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr = load i32, ptr %flags52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool144.not = icmp eq i32 %.pr, 0
  br i1 %tobool144.not, label %out.if.end150_crit_edge, label %do.end148

out.if.end150_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end150

do.end148:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %dev149 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev149, ptr noundef nonnull @.str.16, i32 noundef %pos, ptr noundef %res) #17
  br label %if.end150

if.end150:                                        ; preds = %do.end148, %out.if.end150_crit_edge, %out.thread
  %83 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags52, align 4
  %and152 = lshr i32 %84, 20
  %and152.lobit = and i32 %and152, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inverted_region) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %orig_cmd) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #14
  ret i32 %and152.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_bus_to_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_read_bridge_bases(ptr noundef %child) local_unnamed_addr #0 align 64 {
entry:
  %mem_base_lo.i65 = alloca i16, align 2
  %mem_limit_lo.i66 = alloca i16, align 2
  %region.i67 = alloca %struct.pci_bus_region, align 4
  %mem_base_hi.i = alloca i32, align 4
  %mem_limit_hi.i = alloca i32, align 4
  %mem_base_lo.i = alloca i16, align 2
  %mem_limit_lo.i = alloca i16, align 2
  %region.i52 = alloca %struct.pci_bus_region, align 4
  %io_base_lo.i = alloca i8, align 1
  %io_limit_lo.i = alloca i8, align 1
  %region.i = alloca %struct.pci_bus_region, align 4
  %io_base_hi.i = alloca i16, align 2
  %io_limit_hi.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %self = getelementptr inbounds %struct.pci_bus, ptr %child, i32 0, i32 4
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %self, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %busn_res = getelementptr inbounds %struct.pci_bus, ptr %child, i32 0, i32 8
  %transparent = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %transparent to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load = load i40, ptr %transparent, align 1
  %tobool.not = icmp sgt i40 %bf.load, -1
  %cond = select i1 %tobool.not, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef %busn_res, ptr noundef nonnull %cond) #17
  tail call void @pci_bus_remove_resources(ptr noundef %child) #14
  %arrayidx = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 13
  %arrayidx3 = getelementptr %struct.pci_bus, ptr %child, i32 0, i32 6, i32 0
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %arrayidx3, align 4
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 14
  %arrayidx3.1 = getelementptr %struct.pci_bus, ptr %child, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.1, ptr %arrayidx3.1, align 4
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 15
  %arrayidx3.2 = getelementptr %struct.pci_bus, ptr %child, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.2, ptr %arrayidx3.2, align 4
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 16
  %arrayidx3.3 = getelementptr %struct.pci_bus, ptr %child, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.3, ptr %arrayidx3.3, align 4
  %9 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %self, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %io_base_lo.i) #14
  %11 = ptrtoint ptr %io_base_lo.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %io_base_lo.i, align 1, !annotation !424
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %io_limit_lo.i) #14
  %12 = ptrtoint ptr %io_limit_lo.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %io_limit_lo.i, align 1, !annotation !424
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region.i) #14
  %13 = getelementptr inbounds %struct.pci_bus_region, ptr %region.i, i32 0, i32 1
  %io_window_1k.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 49
  %14 = ptrtoint ptr %io_window_1k.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 5)
  %bf.load.i = load i40, ptr %io_window_1k.i, align 1
  %15 = and i40 %bf.load.i, 512
  %tobool.not.i51 = icmp eq i40 %15, 0
  %spec.select.i = select i1 %tobool.not.i51, i32 -16, i32 -4
  %call.i = call i32 @pci_read_config_byte(ptr noundef %10, i32 noundef 28, ptr noundef nonnull %io_base_lo.i) #14
  %call1.i = call i32 @pci_read_config_byte(ptr noundef %10, i32 noundef 29, ptr noundef nonnull %io_limit_lo.i) #14
  %16 = ptrtoint ptr %io_base_lo.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %io_base_lo.i, align 1
  %conv.i = zext i8 %17 to i32
  %and.i = and i32 %spec.select.i, %conv.i
  %shl.i = shl nuw nsw i32 %and.i, 8
  %18 = ptrtoint ptr %io_limit_lo.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %io_limit_lo.i, align 1
  %conv2.i = zext i8 %19 to i32
  %and3.i = and i32 %spec.select.i, %conv2.i
  %shl4.i = shl nuw nsw i32 %and3.i, 8
  %and6.i = and i32 %conv.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and6.i)
  %cmp.i = icmp eq i32 %and6.i, 1
  br i1 %cmp.i, label %if.then8.i, label %do.end.if.end16.i_crit_edge

do.end.if.end16.i_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.then8.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %io_base_hi.i) #14
  %20 = ptrtoint ptr %io_base_hi.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %io_base_hi.i, align 2, !annotation !424
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %io_limit_hi.i) #14
  %21 = ptrtoint ptr %io_limit_hi.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %io_limit_hi.i, align 2, !annotation !424
  %call9.i = call i32 @pci_read_config_word(ptr noundef %10, i32 noundef 48, ptr noundef nonnull %io_base_hi.i) #14
  %call10.i = call i32 @pci_read_config_word(ptr noundef %10, i32 noundef 50, ptr noundef nonnull %io_limit_hi.i) #14
  %22 = ptrtoint ptr %io_base_hi.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %io_base_hi.i, align 2
  %conv11.i = zext i16 %23 to i32
  %shl12.i = shl nuw i32 %conv11.i, 16
  %or.i = or i32 %shl12.i, %shl.i
  %24 = ptrtoint ptr %io_limit_hi.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %io_limit_hi.i, align 2
  %conv13.i = zext i16 %25 to i32
  %shl14.i = shl nuw i32 %conv13.i, 16
  %or15.i = or i32 %shl14.i, %shl4.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %io_limit_hi.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %io_base_hi.i) #14
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then8.i, %do.end.if.end16.i_crit_edge
  %base.0.i = phi i32 [ %or.i, %if.then8.i ], [ %shl.i, %do.end.if.end16.i_crit_edge ]
  %limit.0.i = phi i32 [ %or15.i, %if.then8.i ], [ %shl4.i, %do.end.if.end16.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %base.0.i, i32 %limit.0.i)
  %cmp17.not.i = icmp ugt i32 %base.0.i, %limit.0.i
  br i1 %cmp17.not.i, label %if.end16.i.pci_read_bridge_io.exit_crit_edge, label %if.then19.i

if.end16.i.pci_read_bridge_io.exit_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_read_bridge_io.exit

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %io_base_lo.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %io_base_lo.i, align 1
  %28 = and i8 %27, 15
  %and21.i = zext i8 %28 to i32
  %or22.i = or i32 %and21.i, 256
  %flags.i = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 13, i32 3
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or22.i, ptr %flags.i, align 4
  %30 = ptrtoint ptr %region.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %base.0.i, ptr %region.i, align 4
  %add.i = select i1 %tobool.not.i51, i32 4095, i32 1023
  %sub.i = add i32 %limit.0.i, %add.i
  %31 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i, ptr %13, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 1
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 8
  call void @pcibios_bus_to_resource(ptr noundef %33, ptr noundef %arrayidx, ptr noundef nonnull %region.i) #14
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev23.i, ptr noundef nonnull @.str.100, ptr noundef %arrayidx) #17
  br label %pci_read_bridge_io.exit

pci_read_bridge_io.exit:                          ; preds = %if.then19.i, %if.end16.i.pci_read_bridge_io.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %io_limit_lo.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %io_base_lo.i) #14
  %34 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %self, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mem_base_lo.i) #14
  %36 = ptrtoint ptr %mem_base_lo.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %mem_base_lo.i, align 2, !annotation !424
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mem_limit_lo.i) #14
  %37 = ptrtoint ptr %mem_limit_lo.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %mem_limit_lo.i, align 2, !annotation !424
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region.i52) #14
  %38 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx3.1, align 4
  %call.i54 = call i32 @pci_read_config_word(ptr noundef %35, i32 noundef 32, ptr noundef nonnull %mem_base_lo.i) #14
  %call1.i55 = call i32 @pci_read_config_word(ptr noundef %35, i32 noundef 34, ptr noundef nonnull %mem_limit_lo.i) #14
  %40 = ptrtoint ptr %mem_base_lo.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mem_base_lo.i, align 2
  %conv.i56 = zext i16 %41 to i32
  %and.i57 = shl nuw i32 %conv.i56, 16
  %shl.i58 = and i32 %and.i57, -1048576
  %42 = ptrtoint ptr %mem_limit_lo.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mem_limit_lo.i, align 2
  %44 = and i16 %43, -16
  %and3.i59 = zext i16 %44 to i32
  %shl4.i60 = shl nuw i32 %and3.i59, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i58, i32 %shl4.i60)
  %cmp.not.i = icmp ugt i32 %shl.i58, %shl4.i60
  br i1 %cmp.not.i, label %pci_read_bridge_io.exit.pci_read_bridge_mmio.exit_crit_edge, label %if.then.i

pci_read_bridge_io.exit.pci_read_bridge_mmio.exit_crit_edge: ; preds = %pci_read_bridge_io.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_read_bridge_mmio.exit

if.then.i:                                        ; preds = %pci_read_bridge_io.exit
  call void @__sanitizer_cov_trace_pc() #16
  %45 = getelementptr inbounds %struct.pci_bus_region, ptr %region.i52, i32 0, i32 1
  %and7.i = and i32 %conv.i56, 15
  %or.i61 = or i32 %and7.i, 512
  %flags.i62 = getelementptr inbounds %struct.resource, ptr %39, i32 0, i32 3
  %46 = ptrtoint ptr %flags.i62 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i61, ptr %flags.i62, align 4
  %47 = ptrtoint ptr %region.i52 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl.i58, ptr %region.i52, align 4
  %add.i63 = or i32 %shl4.i60, 1048575
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.i63, ptr %45, align 4
  %bus.i64 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 1
  %49 = ptrtoint ptr %bus.i64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus.i64, align 8
  call void @pcibios_bus_to_resource(ptr noundef %50, ptr noundef %39, ptr noundef nonnull %region.i52) #14
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8.i, ptr noundef nonnull @.str.100, ptr noundef %39) #17
  br label %pci_read_bridge_mmio.exit

pci_read_bridge_mmio.exit:                        ; preds = %if.then.i, %pci_read_bridge_io.exit.pci_read_bridge_mmio.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region.i52) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mem_limit_lo.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mem_base_lo.i) #14
  %51 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %self, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mem_base_lo.i65) #14
  %53 = ptrtoint ptr %mem_base_lo.i65 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -1, ptr %mem_base_lo.i65, align 2, !annotation !424
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mem_limit_lo.i66) #14
  %54 = ptrtoint ptr %mem_limit_lo.i66 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %mem_limit_lo.i66, align 2, !annotation !424
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region.i67) #14
  %55 = getelementptr inbounds %struct.pci_bus_region, ptr %region.i67, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx3.2, align 8
  %call.i70 = call i32 @pci_read_config_word(ptr noundef %52, i32 noundef 36, ptr noundef nonnull %mem_base_lo.i65) #14
  %call1.i71 = call i32 @pci_read_config_word(ptr noundef %52, i32 noundef 38, ptr noundef nonnull %mem_limit_lo.i66) #14
  %58 = ptrtoint ptr %mem_base_lo.i65 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %mem_base_lo.i65, align 2
  %conv.i72 = zext i16 %59 to i32
  %and.i73 = shl nuw i32 %conv.i72, 16
  %shl.i74 = and i32 %and.i73, -1048576
  %60 = ptrtoint ptr %mem_limit_lo.i66 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %mem_limit_lo.i66, align 2
  %62 = and i16 %61, -16
  %and4.i = zext i16 %62 to i32
  %shl5.i = shl nuw i32 %and4.i, 16
  %and8.i = and i32 %conv.i72, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and8.i)
  %cmp.i75 = icmp eq i32 %and8.i, 1
  br i1 %cmp.i75, label %if.then.i79, label %pci_read_bridge_mmio.exit.if.end28.i_crit_edge

pci_read_bridge_mmio.exit.if.end28.i_crit_edge:   ; preds = %pci_read_bridge_mmio.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

if.then.i79:                                      ; preds = %pci_read_bridge_mmio.exit
  %conv2.i76 = zext i32 %shl.i74 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_base_hi.i) #14
  %63 = ptrtoint ptr %mem_base_hi.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %mem_base_hi.i, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_limit_hi.i) #14
  %64 = ptrtoint ptr %mem_limit_hi.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %mem_limit_hi.i, align 4, !annotation !424
  %call10.i77 = call i32 @pci_read_config_dword(ptr noundef %52, i32 noundef 40, ptr noundef nonnull %mem_base_hi.i) #14
  %call11.i = call i32 @pci_read_config_dword(ptr noundef %52, i32 noundef 44, ptr noundef nonnull %mem_limit_hi.i) #14
  %65 = ptrtoint ptr %mem_base_hi.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mem_base_hi.i, align 4
  %67 = ptrtoint ptr %mem_limit_hi.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mem_limit_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp12.not.i = icmp ugt i32 %66, %68
  %conv15.i = zext i32 %66 to i64
  %shl16.i = shl nuw i64 %conv15.i, 32
  %or.i78 = or i64 %shl16.i, %conv2.i76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_limit_hi.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_base_hi.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or.i78)
  %69 = icmp ult i64 %or.i78, 4294967296
  %or.cond.i = select i1 %cmp12.not.i, i1 true, i1 %69
  br i1 %or.cond.i, label %if.then.i79.if.end28.i_crit_edge, label %do.end.i

if.then.i79.if.end28.i_crit_edge:                 ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

do.end.i:                                         ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #16
  %dev27.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i, ptr noundef nonnull @.str.103, i64 noundef %or.i78) #17
  br label %pci_read_bridge_mmio_pref.exit

if.end28.i:                                       ; preds = %if.then.i79.if.end28.i_crit_edge, %pci_read_bridge_mmio.exit.if.end28.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %shl5.i, i32 %shl.i74)
  %cmp29.not.i = icmp ult i32 %shl5.i, %shl.i74
  br i1 %cmp29.not.i, label %if.end28.i.pci_read_bridge_mmio_pref.exit_crit_edge, label %if.then31.i

if.end28.i.pci_read_bridge_mmio_pref.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_read_bridge_mmio_pref.exit

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %mem_base_lo.i65 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %mem_base_lo.i65, align 2
  %72 = and i16 %71, 15
  %73 = or i16 %72, 8704
  %or35.i = zext i16 %73 to i32
  %flags.i80 = getelementptr inbounds %struct.resource, ptr %57, i32 0, i32 3
  %and37.i = shl i32 %or35.i, 20
  %74 = and i32 %and37.i, 1048576
  %75 = or i32 %74, %or35.i
  %76 = ptrtoint ptr %flags.i80 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %flags.i80, align 4
  %77 = ptrtoint ptr %region.i67 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %shl.i74, ptr %region.i67, align 4
  %add.i81 = or i32 %shl5.i, 1048575
  %78 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add.i81, ptr %55, align 4
  %bus.i82 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 1
  %79 = ptrtoint ptr %bus.i82 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus.i82, align 8
  call void @pcibios_bus_to_resource(ptr noundef %80, ptr noundef %57, ptr noundef nonnull %region.i67) #14
  %dev45.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev45.i, ptr noundef nonnull @.str.100, ptr noundef %57) #17
  br label %pci_read_bridge_mmio_pref.exit

pci_read_bridge_mmio_pref.exit:                   ; preds = %if.then31.i, %if.end28.i.pci_read_bridge_mmio_pref.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region.i67) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mem_limit_lo.i66) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mem_base_lo.i65) #14
  %81 = ptrtoint ptr %transparent to i32
  call void @__asan_loadN_noabort(i32 %81, i32 5)
  %bf.load5 = load i40, ptr %transparent, align 1
  %tobool8.not = icmp sgt i40 %bf.load5, -1
  br i1 %tobool8.not, label %pci_read_bridge_mmio_pref.exit.cleanup_crit_edge, label %for.cond10.preheader

pci_read_bridge_mmio_pref.exit.cleanup_crit_edge: ; preds = %pci_read_bridge_mmio_pref.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond10.preheader:                             ; preds = %pci_read_bridge_mmio_pref.exit
  %82 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %parent.i, align 8
  %call1184 = call ptr @pci_bus_resource_n(ptr noundef %83, i32 noundef 0) #14
  %tobool12.not85 = icmp eq ptr %call1184, null
  br label %for.body14

for.body14:                                       ; preds = %for.inc23.for.body14_crit_edge, %for.cond10.preheader
  %tobool12.not88 = phi i1 [ %tobool12.not85, %for.cond10.preheader ], [ %tobool12.not, %for.inc23.for.body14_crit_edge ]
  %call1187 = phi ptr [ %call1184, %for.cond10.preheader ], [ %call11, %for.inc23.for.body14_crit_edge ]
  %i.186 = phi i32 [ 0, %for.cond10.preheader ], [ %inc24, %for.inc23.for.body14_crit_edge ]
  br i1 %tobool12.not88, label %for.body14.for.inc23_crit_edge, label %land.lhs.true

for.body14.for.inc23_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc23

land.lhs.true:                                    ; preds = %for.body14
  %flags = getelementptr inbounds %struct.resource, ptr %call1187, i32 0, i32 3
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool16.not = icmp eq i32 %85, 0
  br i1 %tobool16.not, label %land.lhs.true.for.inc23_crit_edge, label %if.then17

land.lhs.true.for.inc23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc23

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call void @pci_bus_add_resource(ptr noundef %child, ptr noundef nonnull %call1187, i32 noundef 1) #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.23, ptr noundef nonnull %call1187) #17
  br label %for.inc23

for.inc23:                                        ; preds = %if.then17, %land.lhs.true.for.inc23_crit_edge, %for.body14.for.inc23_crit_edge
  %inc24 = add i32 %i.186, 1
  %86 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %parent.i, align 8
  %call11 = call ptr @pci_bus_resource_n(ptr noundef %87, i32 noundef %inc24) #14
  %tobool12.not = icmp eq ptr %call11, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc24)
  %cmp13 = icmp sgt i32 %inc24, 3
  %88 = and i1 %cmp13, %tobool12.not
  br i1 %88, label %for.inc23.cleanup_crit_edge, label %for.inc23.for.body14_crit_edge

for.inc23.for.body14_crit_edge:                   ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body14

for.inc23.cleanup_crit_edge:                      ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc23.cleanup_crit_edge, %pci_read_bridge_mmio_pref.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_remove_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_bus_resource_n(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_add_resource(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_alloc_host_bridge(i32 noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %priv, 1024
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #18
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %windows.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call9.i.i, i32 0, i32 7
  %0 = ptrtoint ptr %windows.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %windows.i, ptr %windows.i, align 8
  %prev.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call9.i.i, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %windows.i, ptr %prev.i.i, align 4
  %dma_ranges.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call9.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %dma_ranges.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %dma_ranges.i, ptr %dma_ranges.i, align 64
  %prev.i25.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call9.i.i, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %prev.i25.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dma_ranges.i, ptr %prev.i25.i, align 4
  %native_aer.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call9.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %native_aer.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %native_aer.i, align 8
  %bf.set15.i = or i16 %bf.load.i, 16128
  store i16 %bf.set15.i, ptr %native_aer.i, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call9.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %domain_nr.i, align 4
  tail call void @device_initialize(ptr noundef nonnull %call9.i.i) #14
  %release = getelementptr inbounds %struct.device, ptr %call9.i.i, i32 0, i32 35
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pci_release_host_bridge_dev, ptr %release, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_release_host_bridge_dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %release_fn = getelementptr inbounds %struct.pci_host_bridge, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %release_fn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release_fn, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %1(ptr noundef %dev) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %dev, i32 0, i32 7
  tail call void @pci_free_resource_list(ptr noundef %windows) #14
  %dma_ranges = getelementptr inbounds %struct.pci_host_bridge, ptr %dev, i32 0, i32 8
  tail call void @pci_free_resource_list(ptr noundef %dma_ranges) #14
  tail call void @kfree(ptr noundef %dev) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef %dev, i32 noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %priv, 1024
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #18
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %windows.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call9.i.i.i, i32 0, i32 7
  %0 = ptrtoint ptr %windows.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %windows.i.i, ptr %windows.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call9.i.i.i, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %windows.i.i, ptr %prev.i.i.i, align 4
  %dma_ranges.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call9.i.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %dma_ranges.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %dma_ranges.i.i, ptr %dma_ranges.i.i, align 64
  %prev.i25.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call9.i.i.i, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %prev.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dma_ranges.i.i, ptr %prev.i25.i.i, align 4
  %native_aer.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call9.i.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %native_aer.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %native_aer.i.i, align 8
  %bf.set15.i.i = or i16 %bf.load.i.i, 16128
  store i16 %bf.set15.i.i, ptr %native_aer.i.i, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call9.i.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %domain_nr.i.i, align 4
  tail call void @device_initialize(ptr noundef nonnull %call9.i.i.i) #14
  %release.i = getelementptr inbounds %struct.device, ptr %call9.i.i.i, i32 0, i32 35
  %6 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pci_release_host_bridge_dev, ptr %release.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %call9.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent, align 8
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_pci_alloc_host_bridge_release, ptr noundef nonnull %call9.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i18 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i18, label %if.end5, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @put_device(ptr noundef nonnull %call9.i.i.i) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call i32 @devm_of_pci_bridge_init(ptr noundef %dev, ptr noundef nonnull %call9.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %call. = select i1 %tobool7.not, ptr %call9.i.i.i, ptr null
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %devm_add_action_or_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %devm_add_action_or_reset.exit ], [ %call., %if.end5 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_pci_alloc_host_bridge_release(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_device(ptr noundef %data) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_pci_bridge_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_free_host_bridge(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_device(ptr noundef %bridge) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @pci_speed_string(i32 noundef %speed) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %speed)
  %cmp = icmp ult i32 %speed, 26
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [26 x ptr], ptr @pci_speed_string.speed_strings, i32 0, i32 %speed
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.then ], [ @.str.47, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pcie_update_link_speed(ptr nocapture noundef writeonly %bus, i16 noundef zeroext %linksta) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %linksta, 15
  %and = zext i16 %0 to i32
  %arrayidx = getelementptr [16 x i8], ptr @pcie_link_speed, i32 0, i32 %and
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %cur_bus_speed = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 15
  %3 = ptrtoint ptr %cur_bus_speed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %cur_bus_speed, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_add_new_bus(ptr noundef %parent, ptr noundef %dev, i32 noundef %busnr) #0 align 64 {
entry:
  %status.i182.i = alloca i32, align 4
  %agpstat.i.i = alloca i32, align 4
  %agpcmd.i.i = alloca i32, align 4
  %status.i.i = alloca i16, align 2
  %linkcap.i.i = alloca i32, align 4
  %linksta.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1120) #19
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %if.end.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %children.i.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %children.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %children.i.i, ptr %children.i.i, align 4
  %prev.i15.i.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i15.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %children.i.i, ptr %prev.i15.i.i, align 8
  %devices.i.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %devices.i.i, ptr %devices.i.i, align 4
  %prev.i16.i.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i16.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %devices.i.i, ptr %prev.i16.i.i, align 8
  %slots.i.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %slots.i.i, ptr %slots.i.i, align 8
  %prev.i17.i.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %slots.i.i, ptr %prev.i17.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 8
  %prev.i18.i.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %prev.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %resources.i.i, ptr %prev.i18.i.i, align 4
  %max_bus_speed.i.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 14
  %11 = ptrtoint ptr %max_bus_speed.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %max_bus_speed.i.i, align 2
  %cur_bus_speed.i.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 15
  %12 = ptrtoint ptr %cur_bus_speed.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %cur_bus_speed.i.i, align 1
  %tobool1.not.i.i = icmp eq ptr %parent, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %parent, i32 0, i32 16
  %13 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %domain_nr.i.i, align 8
  %domain_nr3.i.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %domain_nr3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %domain_nr3.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i.i, %if.end.i.i.if.end.i_crit_edge
  %parent1.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %parent1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %parent, ptr %parent1.i, align 8
  %sysdata.i = getelementptr inbounds %struct.pci_bus, ptr %parent, i32 0, i32 10
  %17 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sysdata.i, align 4
  %sysdata2.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %sysdata2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %sysdata2.i, align 4
  %bus_flags.i = getelementptr inbounds %struct.pci_bus, ptr %parent, i32 0, i32 19
  %20 = ptrtoint ptr %bus_flags.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bus_flags.i, align 2
  %bus_flags3.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %bus_flags3.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %bus_flags3.i, align 2
  %call4.i = tail call ptr @pci_find_host_bridge(ptr noundef %parent) #14
  %child_ops.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call4.i, i32 0, i32 3
  %23 = ptrtoint ptr %child_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %child_ops.i, align 8
  %tobool5.not.i = icmp eq ptr %24, null
  br i1 %tobool5.not.i, label %if.else.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %ops8.i = getelementptr inbounds %struct.pci_bus, ptr %parent, i32 0, i32 9
  %25 = ptrtoint ptr %ops8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops8.i, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.end.i.if.end10.i_crit_edge
  %.sink.i = phi ptr [ %26, %if.else.i ], [ %24, %if.end.i.if.end10.i_crit_edge ]
  %27 = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %.sink.i, ptr %27, align 8
  %dev.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 21
  %class.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 21, i32 33
  %29 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pcibus_class, ptr %class.i, align 4
  %domain_nr.i177.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 16
  %30 = ptrtoint ptr %domain_nr.i177.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %domain_nr.i177.i, align 8
  %call13.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i, ptr noundef nonnull @.str.107, i32 noundef %31, i32 noundef %busnr) #14
  %busn_res.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %busn_res.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %busnr, ptr %busn_res.i, align 8
  %conv.i = trunc i32 %busnr to i8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 12
  %33 = ptrtoint ptr %number.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %number.i, align 4
  %busn_res14.i = getelementptr inbounds %struct.pci_bus, ptr %parent, i32 0, i32 8
  %34 = ptrtoint ptr %busn_res14.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %busn_res14.i, align 8
  %conv16.i = trunc i32 %35 to i8
  %primary.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 13
  %36 = ptrtoint ptr %primary.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv16.i, ptr %primary.i, align 1
  %end.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 255, ptr %end.i, align 4
  %tobool18.not.i = icmp eq ptr %dev, null
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end23.i

if.then19.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %bridge20.i = getelementptr inbounds %struct.pci_bus, ptr %parent, i32 0, i32 20
  %38 = ptrtoint ptr %bridge20.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bridge20.i, align 8
  %parent22.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 21, i32 1
  %40 = ptrtoint ptr %parent22.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %parent22.i, align 8
  br label %land.rhs.i.i.preheader

if.end23.i:                                       ; preds = %if.end10.i
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %self.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev, ptr %self.i, align 4
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call25.i = tail call ptr @get_device(ptr noundef %dev24.i) #14
  %bridge26.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 20
  %42 = ptrtoint ptr %bridge26.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call25.i, ptr %bridge26.i, align 8
  %parent29.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 21, i32 1
  %43 = ptrtoint ptr %parent29.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call25.i, ptr %parent29.i, align 8
  tail call void @pci_set_bus_of_node(ptr noundef nonnull %call7.i.i.i.i) #14
  %44 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %self.i, align 4
  %call.i.i = tail call zeroext i8 @pci_find_capability(ptr noundef %45, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %tobool.not.i178.i = icmp eq i8 %call.i.i, 0
  br i1 %tobool.not.i178.i, label %if.end.i179.i, label %if.end23.i.if.then4.i.i_crit_edge

if.end23.i.if.then4.i.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i.i

if.end.i179.i:                                    ; preds = %if.end23.i
  %call1.i.i = tail call zeroext i8 @pci_find_capability(ptr noundef %45, i32 noundef 14) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.i.i)
  %tobool3.not.i.i = icmp eq i8 %call1.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i179.i.if.end15.i.i_crit_edge, label %if.end.i179.i.if.then4.i.i_crit_edge

if.end.i179.i.if.then4.i.i_crit_edge:             ; preds = %if.end.i179.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i.i

if.end.i179.i.if.end15.i.i_crit_edge:             ; preds = %if.end.i179.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i.i

if.then4.i.i:                                     ; preds = %if.end.i179.i.if.then4.i.i_crit_edge, %if.end23.i.if.then4.i.i_crit_edge
  %pos.0.in106.i.i = phi i8 [ %call1.i.i, %if.end.i179.i.if.then4.i.i_crit_edge ], [ %call.i.i, %if.end23.i.if.then4.i.i_crit_edge ]
  %pos.0.i.i = zext i8 %pos.0.in106.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agpstat.i.i) #14
  %46 = ptrtoint ptr %agpstat.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %agpstat.i.i, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agpcmd.i.i) #14
  %47 = ptrtoint ptr %agpcmd.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %agpcmd.i.i, align 4, !annotation !424
  %add.i.i = add nuw nsw i32 %pos.0.i.i, 4
  %call5.i.i = call i32 @pci_read_config_dword(ptr noundef %45, i32 noundef %add.i.i, ptr noundef nonnull %agpstat.i.i) #14
  %48 = ptrtoint ptr %agpstat.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %agpstat.i.i, align 4
  %and.i.i = and i32 %49, 8
  %and.i.i.i = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then4.i.i.if.end10.i.i.i_crit_edge

if.then4.i.i.if.end10.i.i.i_crit_edge:            ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i.i

if.else.i.i.i:                                    ; preds = %if.then4.i.i
  %and1.i.i.i = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.else4.i.i.i, label %if.else.i.i.i.if.end10.i.i.i_crit_edge

if.else.i.i.i.if.end10.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i.i

if.else4.i.i.i:                                   ; preds = %if.else.i.i.i
  %and5.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.else4.i.i.i.agp_speed.exit.i.i_crit_edge, label %if.else4.i.i.i.if.end10.i.i.i_crit_edge

if.else4.i.i.i.if.end10.i.i.i_crit_edge:          ; preds = %if.else4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i.i

if.else4.i.i.i.agp_speed.exit.i.i_crit_edge:      ; preds = %if.else4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %agp_speed.exit.i.i

if.end10.i.i.i:                                   ; preds = %if.else4.i.i.i.if.end10.i.i.i_crit_edge, %if.else.i.i.i.if.end10.i.i.i_crit_edge, %if.then4.i.i.if.end10.i.i.i_crit_edge
  %index.0.i.i.i = phi i32 [ 3, %if.then4.i.i.if.end10.i.i.i_crit_edge ], [ 2, %if.else.i.i.i.if.end10.i.i.i_crit_edge ], [ 1, %if.else4.i.i.i.if.end10.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.end10.i.i.i.agp_speed.exit.i.i_crit_edge, label %if.then12.i.i.i

if.end10.i.i.i.agp_speed.exit.i.i_crit_edge:      ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %agp_speed.exit.i.i

if.then12.i.i.i:                                  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.i.i.i = add nuw nsw i32 %index.0.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %add.i.i.i)
  %cmp.i.i.i = icmp eq i32 %add.i.i.i, 5
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  br label %agp_speed.exit.i.i

agp_speed.exit.i.i:                               ; preds = %if.then12.i.i.i, %if.end10.i.i.i.agp_speed.exit.i.i_crit_edge, %if.else4.i.i.i.agp_speed.exit.i.i_crit_edge
  %index.1.i.i.i = phi i32 [ %spec.store.select.i.i.i, %if.then12.i.i.i ], [ %index.0.i.i.i, %if.end10.i.i.i.agp_speed.exit.i.i_crit_edge ], [ 0, %if.else4.i.i.i.agp_speed.exit.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [5 x i8], ptr @agp_speeds, i32 0, i32 %index.1.i.i.i
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i.i, align 1
  %52 = ptrtoint ptr %max_bus_speed.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %max_bus_speed.i.i, align 2
  %add9.i.i = add nuw nsw i32 %pos.0.i.i, 8
  %call10.i.i = call i32 @pci_read_config_dword(ptr noundef %45, i32 noundef %add9.i.i, ptr noundef nonnull %agpcmd.i.i) #14
  %53 = ptrtoint ptr %agpstat.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %agpstat.i.i, align 4
  %and11.i.i = and i32 %54, 8
  %55 = ptrtoint ptr %agpcmd.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %agpcmd.i.i, align 4
  %and.i83.i.i = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83.i.i)
  %tobool.not.i84.i.i = icmp eq i32 %and.i83.i.i, 0
  br i1 %tobool.not.i84.i.i, label %if.else.i87.i.i, label %agp_speed.exit.i.i.if.end10.i93.i.i_crit_edge

agp_speed.exit.i.i.if.end10.i93.i.i_crit_edge:    ; preds = %agp_speed.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i93.i.i

if.else.i87.i.i:                                  ; preds = %agp_speed.exit.i.i
  %and1.i85.i.i = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i85.i.i)
  %tobool2.not.i86.i.i = icmp eq i32 %and1.i85.i.i, 0
  br i1 %tobool2.not.i86.i.i, label %if.else4.i90.i.i, label %if.else.i87.i.i.if.end10.i93.i.i_crit_edge

if.else.i87.i.i.if.end10.i93.i.i_crit_edge:       ; preds = %if.else.i87.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i93.i.i

if.else4.i90.i.i:                                 ; preds = %if.else.i87.i.i
  %and5.i88.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i88.i.i)
  %tobool6.not.i89.i.i = icmp eq i32 %and5.i88.i.i, 0
  br i1 %tobool6.not.i89.i.i, label %if.else4.i90.i.i.agp_speed.exit101.i.i_crit_edge, label %if.else4.i90.i.i.if.end10.i93.i.i_crit_edge

if.else4.i90.i.i.if.end10.i93.i.i_crit_edge:      ; preds = %if.else4.i90.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i93.i.i

if.else4.i90.i.i.agp_speed.exit101.i.i_crit_edge: ; preds = %if.else4.i90.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %agp_speed.exit101.i.i

if.end10.i93.i.i:                                 ; preds = %if.else4.i90.i.i.if.end10.i93.i.i_crit_edge, %if.else.i87.i.i.if.end10.i93.i.i_crit_edge, %agp_speed.exit.i.i.if.end10.i93.i.i_crit_edge
  %index.0.i91.i.i = phi i32 [ 3, %agp_speed.exit.i.i.if.end10.i93.i.i_crit_edge ], [ 2, %if.else.i87.i.i.if.end10.i93.i.i_crit_edge ], [ 1, %if.else4.i90.i.i.if.end10.i93.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool11.not.i92.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool11.not.i92.i.i, label %if.end10.i93.i.i.agp_speed.exit101.i.i_crit_edge, label %if.then12.i97.i.i

if.end10.i93.i.i.agp_speed.exit101.i.i_crit_edge: ; preds = %if.end10.i93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %agp_speed.exit101.i.i

if.then12.i97.i.i:                                ; preds = %if.end10.i93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.i94.i.i = add nuw nsw i32 %index.0.i91.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %add.i94.i.i)
  %cmp.i95.i.i = icmp eq i32 %add.i94.i.i, 5
  %spec.store.select.i96.i.i = select i1 %cmp.i95.i.i, i32 0, i32 %add.i94.i.i
  br label %agp_speed.exit101.i.i

agp_speed.exit101.i.i:                            ; preds = %if.then12.i97.i.i, %if.end10.i93.i.i.agp_speed.exit101.i.i_crit_edge, %if.else4.i90.i.i.agp_speed.exit101.i.i_crit_edge
  %index.1.i98.i.i = phi i32 [ %spec.store.select.i96.i.i, %if.then12.i97.i.i ], [ %index.0.i91.i.i, %if.end10.i93.i.i.agp_speed.exit101.i.i_crit_edge ], [ 0, %if.else4.i90.i.i.agp_speed.exit101.i.i_crit_edge ]
  %arrayidx.i99.i.i = getelementptr [5 x i8], ptr @agp_speeds, i32 0, i32 %index.1.i98.i.i
  %57 = ptrtoint ptr %arrayidx.i99.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i99.i.i, align 1
  %59 = ptrtoint ptr %cur_bus_speed.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %cur_bus_speed.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agpcmd.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agpstat.i.i) #14
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %agp_speed.exit101.i.i, %if.end.i179.i.if.end15.i.i_crit_edge
  %call16.i.i = call zeroext i8 @pci_find_capability(ptr noundef %45, i32 noundef 7) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call16.i.i)
  %tobool18.not.i.i = icmp eq i8 %call16.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end50.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.end15.i.i
  %conv17.i.i = zext i8 %call16.i.i to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i.i) #14
  %60 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 -1, ptr %status.i.i, align 2, !annotation !424
  %add20.i.i = add nuw nsw i32 %conv17.i.i, 2
  %call21.i.i = call i32 @pci_read_config_word(ptr noundef %45, i32 noundef %add20.i.i, ptr noundef nonnull %status.i.i) #14
  %61 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %status.i.i, align 2
  %conv22.i.i = zext i16 %62 to i32
  %and23.i.i = and i32 %conv22.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.else.i.i, label %if.then19.i.i.if.end44.i.i_crit_edge

if.then19.i.i.if.end44.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i.i

if.else.i.i:                                      ; preds = %if.then19.i.i
  %and27.i.i = and i32 %conv22.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.else30.i.i, label %if.else.i.i.if.end44.i.i_crit_edge

if.else.i.i.if.end44.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i.i

if.else30.i.i:                                    ; preds = %if.else.i.i
  %and32.i.i = and i32 %conv22.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i)
  %tobool33.not.i.i = icmp eq i32 %and32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.else30.i.i.if.end44.i.i_crit_edge, label %if.then34.i.i

if.else30.i.i.if.end44.i.i_crit_edge:             ; preds = %if.else30.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i.i

if.then34.i.i:                                    ; preds = %if.else30.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and36.i.i = and i32 %conv22.i.i, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and36.i.i)
  %cmp.i.i = icmp eq i32 %and36.i.i, 8192
  %..i.i = select i1 %cmp.i.i, i8 7, i8 4
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then34.i.i, %if.else30.i.i.if.end44.i.i_crit_edge, %if.else.i.i.if.end44.i.i_crit_edge, %if.then19.i.i.if.end44.i.i_crit_edge
  %max.0.i.i = phi i8 [ 19, %if.then19.i.i.if.end44.i.i_crit_edge ], [ 11, %if.else.i.i.if.end44.i.i_crit_edge ], [ %..i.i, %if.then34.i.i ], [ 2, %if.else30.i.i.if.end44.i.i_crit_edge ]
  %63 = ptrtoint ptr %max_bus_speed.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %max.0.i.i, ptr %max_bus_speed.i.i, align 2
  %64 = lshr i16 %62, 6
  %65 = and i16 %64, 15
  %66 = zext i16 %65 to i32
  %arrayidx.i.i = getelementptr [16 x i8], ptr @pcix_bus_speed, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i.i, align 1
  %69 = ptrtoint ptr %cur_bus_speed.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %cur_bus_speed.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i.i) #14
  br label %pci_set_bus_speed.exit.i

if.end50.i.i:                                     ; preds = %if.end15.i.i
  %pcie_cap.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 19
  %70 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.i.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool.i.not.i.i, label %if.end50.i.i.pci_set_bus_speed.exit.i_crit_edge, label %if.then52.i.i

if.end50.i.i.pci_set_bus_speed.exit.i_crit_edge:  ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_set_bus_speed.exit.i

if.then52.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %linkcap.i.i) #14
  %72 = ptrtoint ptr %linkcap.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %linkcap.i.i, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %linksta.i.i) #14
  %73 = ptrtoint ptr %linksta.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -1, ptr %linksta.i.i, align 2, !annotation !424
  %call53.i.i = call i32 @pcie_capability_read_dword(ptr noundef %45, i32 noundef 12, ptr noundef nonnull %linkcap.i.i) #14
  %74 = ptrtoint ptr %linkcap.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %linkcap.i.i, align 4
  %and54.i.i = and i32 %75, 15
  %arrayidx55.i.i = getelementptr [16 x i8], ptr @pcie_link_speed, i32 0, i32 %and54.i.i
  %76 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx55.i.i, align 1
  %78 = ptrtoint ptr %max_bus_speed.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %max_bus_speed.i.i, align 2
  %link_active_reporting.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 49
  %79 = ptrtoint ptr %link_active_reporting.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 5)
  %bf.load.i.i = load i40, ptr %link_active_reporting.i.i, align 1
  %80 = lshr i32 %75, 15
  %81 = and i32 %80, 32
  %bf.shl.i.i = zext i32 %81 to i40
  %bf.clear.i.i = and i40 %bf.load.i.i, -33
  %bf.set.i.i = or i40 %bf.clear.i.i, %bf.shl.i.i
  store i40 %bf.set.i.i, ptr %link_active_reporting.i.i, align 1
  %call60.i.i = call i32 @pcie_capability_read_word(ptr noundef %45, i32 noundef 18, ptr noundef nonnull %linksta.i.i) #14
  %82 = ptrtoint ptr %linksta.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %linksta.i.i, align 2
  %84 = and i16 %83, 15
  %and.i102.i.i = zext i16 %84 to i32
  %arrayidx.i103.i.i = getelementptr [16 x i8], ptr @pcie_link_speed, i32 0, i32 %and.i102.i.i
  %85 = ptrtoint ptr %arrayidx.i103.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i103.i.i, align 1
  %87 = ptrtoint ptr %cur_bus_speed.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %cur_bus_speed.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %linksta.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %linkcap.i.i) #14
  br label %pci_set_bus_speed.exit.i

pci_set_bus_speed.exit.i:                         ; preds = %if.then52.i.i, %if.end50.i.i.pci_set_bus_speed.exit.i_crit_edge, %if.end44.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i182.i) #14
  %88 = ptrtoint ptr %status.i182.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %status.i182.i, align 4, !annotation !424
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %89 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bus.i.i, align 8
  %bus_flags.i.i = getelementptr inbounds %struct.pci_bus, ptr %90, i32 0, i32 19
  %91 = ptrtoint ptr %bus_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %bus_flags.i.i, align 2
  %93 = and i16 %92, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool.not.i183.i = icmp eq i16 %93, 0
  br i1 %tobool.not.i183.i, label %if.end.i186.i, label %pci_set_bus_speed.exit.i.pci_bridge_child_ext_cfg_accessible.exit.thread.i_crit_edge

pci_set_bus_speed.exit.i.pci_bridge_child_ext_cfg_accessible.exit.thread.i_crit_edge: ; preds = %pci_set_bus_speed.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bridge_child_ext_cfg_accessible.exit.thread.i

if.end.i186.i:                                    ; preds = %pci_set_bus_speed.exit.i
  %pcie_cap.i.i.i184.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %94 = ptrtoint ptr %pcie_cap.i.i.i184.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %pcie_cap.i.i.i184.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.i.not.i185.i = icmp eq i8 %95, 0
  br i1 %tobool.i.not.i185.i, label %if.end.i186.i.if.end12.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i186.i.if.end12.i.i_crit_edge:             ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i186.i
  %pcie_flags_reg.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %96 = ptrtoint ptr %pcie_flags_reg.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %pcie_flags_reg.i.i.i.i, align 2
  %98 = lshr i16 %97, 4
  %99 = and i16 %98, 15
  %100 = zext i16 %99 to i32
  %.off.i.i = add nsw i32 %100, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  br i1 %switch.i.i, label %pci_bridge_child_ext_cfg_accessible.exit.thread193.i, label %land.lhs.true.i.i.if.end12.i.i_crit_edge

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i.i

pci_bridge_child_ext_cfg_accessible.exit.thread193.i: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i182.i) #14
  br label %if.end36.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i.i.if.end12.i.i_crit_edge, %if.end.i186.i.if.end12.i.i_crit_edge
  %call13.i.i = call zeroext i8 @pci_find_capability(ptr noundef nonnull %dev, i32 noundef 7) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call13.i.i)
  %tobool15.not.i.i = icmp eq i8 %call13.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end12.i.i.pci_bridge_child_ext_cfg_accessible.exit.thread.i_crit_edge, label %pci_bridge_child_ext_cfg_accessible.exit.i

if.end12.i.i.pci_bridge_child_ext_cfg_accessible.exit.thread.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bridge_child_ext_cfg_accessible.exit.thread.i

pci_bridge_child_ext_cfg_accessible.exit.thread.i: ; preds = %if.end12.i.i.pci_bridge_child_ext_cfg_accessible.exit.thread.i_crit_edge, %pci_set_bus_speed.exit.i.pci_bridge_child_ext_cfg_accessible.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i182.i) #14
  br label %if.then31.i

pci_bridge_child_ext_cfg_accessible.exit.i:       ; preds = %if.end12.i.i
  %conv14.i.i = zext i8 %call13.i.i to i32
  %add.i187.i = add nuw nsw i32 %conv14.i.i, 4
  %call18.i.i = call i32 @pci_read_config_dword(ptr noundef nonnull %dev, i32 noundef %add.i187.i, ptr noundef nonnull %status.i182.i) #14
  %101 = ptrtoint ptr %status.i182.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %status.i182.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %102)
  %tobool20.i.i = icmp ugt i32 %102, 1073741823
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i182.i) #14
  br i1 %tobool20.i.i, label %pci_bridge_child_ext_cfg_accessible.exit.i.if.end36.i_crit_edge, label %pci_bridge_child_ext_cfg_accessible.exit.i.if.then31.i_crit_edge

pci_bridge_child_ext_cfg_accessible.exit.i.if.then31.i_crit_edge: ; preds = %pci_bridge_child_ext_cfg_accessible.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then31.i

pci_bridge_child_ext_cfg_accessible.exit.i.if.end36.i_crit_edge: ; preds = %pci_bridge_child_ext_cfg_accessible.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then31.i:                                      ; preds = %pci_bridge_child_ext_cfg_accessible.exit.i.if.then31.i_crit_edge, %pci_bridge_child_ext_cfg_accessible.exit.thread.i
  %103 = ptrtoint ptr %bus_flags3.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %bus_flags3.i, align 2
  %105 = or i16 %104, 8
  store i16 %105, ptr %bus_flags3.i, align 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.108) #17
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then31.i, %pci_bridge_child_ext_cfg_accessible.exit.i.if.end36.i_crit_edge, %pci_bridge_child_ext_cfg_accessible.exit.thread193.i
  %name.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 17
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 13
  %arrayidx39.i = getelementptr %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 6, i32 0
  %106 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %arrayidx.i, ptr %arrayidx39.i, align 8
  %name42.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 13, i32 2
  %107 = ptrtoint ptr %name42.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %name.i, ptr %name42.i, align 4
  %arrayidx.1.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 14
  %arrayidx39.1.i = getelementptr %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 6, i32 1
  %108 = ptrtoint ptr %arrayidx39.1.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %arrayidx.1.i, ptr %arrayidx39.1.i, align 4
  %name42.1.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 14, i32 2
  %109 = ptrtoint ptr %name42.1.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %name.i, ptr %name42.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 15
  %arrayidx39.2.i = getelementptr %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 6, i32 2
  %110 = ptrtoint ptr %arrayidx39.2.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %arrayidx.2.i, ptr %arrayidx39.2.i, align 8
  %name42.2.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 15, i32 2
  %111 = ptrtoint ptr %name42.2.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %name.i, ptr %name42.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 16
  %arrayidx39.3.i = getelementptr %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 6, i32 3
  %112 = ptrtoint ptr %arrayidx39.3.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %arrayidx.3.i, ptr %arrayidx39.3.i, align 4
  %name42.3.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 16, i32 2
  %113 = ptrtoint ptr %name42.3.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %name.i, ptr %name42.3.i, align 4
  %subordinate.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 2
  %114 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call7.i.i.i.i, ptr %subordinate.i, align 4
  br label %land.rhs.i.i.preheader

land.rhs.i.i.preheader:                           ; preds = %if.end36.i, %if.then19.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %land.rhs.i.i.preheader
  %b.020.i.i = phi ptr [ %116, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %call7.i.i.i.i, %land.rhs.i.i.preheader ]
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %b.020.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i.i188.i = icmp eq ptr %116, null
  br i1 %tobool.not.i.i188.i, label %if.then5.critedge.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %self.i189.i = getelementptr inbounds %struct.pci_bus, ptr %b.020.i.i, i32 0, i32 4
  %117 = ptrtoint ptr %self.i189.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %self.i189.i, align 4
  %tobool1.not.i190.i = icmp eq ptr %118, null
  br i1 %tobool1.not.i190.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %msi.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 44, i32 16
  %119 = ptrtoint ptr %msi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %msi.i.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %d.1.i.i = phi ptr [ %120, %if.then.i.i ], [ null, %for.body.i.i.for.inc.i.i_crit_edge ]
  %tobool.not.i191.i = icmp eq ptr %d.1.i.i, null
  br i1 %tobool.not.i191.i, label %for.inc.i.i.land.rhs.i.i_crit_edge, label %for.inc.i.i.pci_set_bus_msi_domain.exit.i_crit_edge

for.inc.i.i.pci_set_bus_msi_domain.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_set_bus_msi_domain.exit.i

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i

if.then5.critedge.i.i:                            ; preds = %land.rhs.i.i
  %bridge.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %b.020.i.i, i32 0, i32 20
  %121 = ptrtoint ptr %bridge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bridge.i.i.i, align 8
  %msi.i.i.i.i = getelementptr inbounds %struct.device, ptr %122, i32 0, i32 16
  %123 = ptrtoint ptr %msi.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %msi.i.i.i.i, align 4
  %tobool.not.i16.i.i = icmp eq ptr %124, null
  br i1 %tobool.not.i16.i.i, label %if.end.i.i.i, label %if.then5.critedge.i.i.pci_set_bus_msi_domain.exit.i_crit_edge

if.then5.critedge.i.i.pci_set_bus_msi_domain.exit.i_crit_edge: ; preds = %if.then5.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_set_bus_msi_domain.exit.i

if.end.i.i.i:                                     ; preds = %if.then5.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i.i.i = call ptr @pci_host_bridge_of_msi_domain(ptr noundef nonnull %b.020.i.i) #14
  br label %pci_set_bus_msi_domain.exit.i

pci_set_bus_msi_domain.exit.i:                    ; preds = %if.end.i.i.i, %if.then5.critedge.i.i.pci_set_bus_msi_domain.exit.i_crit_edge, %for.inc.i.i.pci_set_bus_msi_domain.exit.i_crit_edge
  %d.2.i.i = phi ptr [ %124, %if.then5.critedge.i.i.pci_set_bus_msi_domain.exit.i_crit_edge ], [ %call1.i.i.i, %if.end.i.i.i ], [ %d.1.i.i, %for.inc.i.i.pci_set_bus_msi_domain.exit.i_crit_edge ]
  %msi.i17.i.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i.i, i32 0, i32 21, i32 16
  %125 = ptrtoint ptr %msi.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %d.2.i.i, ptr %msi.i17.i.i, align 4
  %call44.i = call i32 @device_register(ptr noundef %dev.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %do.end58.i, label %pci_set_bus_msi_domain.exit.i.if.end64.i_crit_edge, !prof !425

pci_set_bus_msi_domain.exit.i.if.end64.i_crit_edge: ; preds = %pci_set_bus_msi_domain.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64.i

do.end58.i:                                       ; preds = %pci_set_bus_msi_domain.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1142, i32 noundef 9, ptr noundef null) #14
  br label %if.end64.i

if.end64.i:                                       ; preds = %do.end58.i, %pci_set_bus_msi_domain.exit.i.if.end64.i_crit_edge
  call void @pcibios_add_bus(ptr noundef %call7.i.i.i.i) #14
  %126 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %27, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %tobool72.not.i = icmp eq ptr %129, null
  br i1 %tobool72.not.i, label %if.end64.i.if.then_crit_edge, label %if.then73.i

if.end64.i.if.then_crit_edge:                     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then73.i:                                      ; preds = %if.end64.i
  %call76.i = call i32 %129(ptr noundef %call7.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp78.i = icmp slt i32 %call76.i, 0
  br i1 %cmp78.i, label %do.end95.i, label %if.then73.i.if.then_crit_edge, !prof !425

if.then73.i.if.then_crit_edge:                    ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

do.end95.i:                                       ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1148, i32 noundef 9, ptr noundef null) #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.111, i32 noundef %call76.i) #17
  br label %if.then

if.then:                                          ; preds = %do.end95.i, %if.then73.i.if.then_crit_edge, %if.end64.i.if.then_crit_edge
  call void @down_write(ptr noundef nonnull @pci_bus_sem) #14
  %children = getelementptr inbounds %struct.pci_bus, ptr %parent, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.pci_bus, ptr %parent, i32 0, i32 2, i32 1
  %130 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i, align 4
  %call.i.i4 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %131, ptr noundef %children) #14
  br i1 %call.i.i4, label %if.end.i.i5, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i5:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %132 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call7.i.i.i.i, ptr %prev.i, align 4
  %133 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %children, ptr %call7.i.i.i.i, align 8
  %134 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %131, ptr %prev.i.i.i, align 4
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %call7.i.i.i.i, ptr %131, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i5, %if.then.list_add_tail.exit_crit_edge
  call void @up_write(ptr noundef nonnull @pci_bus_sem) #14
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit, %entry.if.end_crit_edge
  ret ptr %call7.i.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_scan_bridge(ptr noundef %bus, ptr noundef %dev, i32 noundef %max, i32 noundef %pass) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pci_scan_bridge_extend(ptr noundef %bus, ptr noundef %dev, i32 noundef %max, i32 noundef 0, i32 noundef %pass)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci_scan_bridge_extend(ptr noundef %bus, ptr noundef %dev, i32 noundef %max, i32 noundef %available_buses, i32 noundef %pass) unnamed_addr #0 align 64 {
entry:
  %old_res.i = alloca %struct.resource, align 4
  %dw.i = alloca i32, align 4
  %root_cap.i = alloca i16, align 2
  %buses = alloca i32, align 4
  %bctl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr_type = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %hdr_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buses) #14
  %2 = ptrtoint ptr %buses to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buses, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bctl) #14
  %3 = ptrtoint ptr %bctl to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %bctl, align 2, !annotation !424
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev2, i32 noundef 4) #14
  %call3 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 24, ptr noundef nonnull %buses) #14
  %4 = ptrtoint ptr %buses to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buses, align 4
  %conv4 = trunc i32 %5 to i8
  %shr = lshr i32 %5, 8
  %shr7 = lshr i32 %5, 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_scan_bridge_extend.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci_scan_bridge_extend, %do.end)) #14
          to label %if.then [label %do.end], !srcloc !426

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv15 = and i32 %shr, 255
  %conv16 = and i32 %shr7, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_scan_bridge_extend.__UNIQUE_ID_ddebug239, ptr noundef %dev2, ptr noundef nonnull @.str.115, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %pass) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4)
  %tobool17.not = icmp eq i8 %conv4, 0
  br i1 %tobool17.not, label %land.lhs.true, label %do.end.if.end34_crit_edge

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

land.lhs.true:                                    ; preds = %do.end
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp20.not = icmp eq i8 %7, 0
  %8 = and i32 %5, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool24.not = icmp eq i32 %8, 0
  %or.cond = select i1 %cmp20.not, i1 true, i1 %tobool24.not
  %9 = and i32 %5, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool27.not = icmp eq i32 %9, 0
  %or.cond387 = select i1 %or.cond, i1 true, i1 %tobool27.not
  br i1 %or.cond387, label %land.lhs.true.if.end34_crit_edge, label %do.end31

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

do.end31:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.116) #17
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number, align 4
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %land.lhs.true.if.end34_crit_edge, %do.end.if.end34_crit_edge
  %primary.0 = phi i8 [ %conv4, %do.end.if.end34_crit_edge ], [ %11, %do.end31 ], [ 0, %land.lhs.true.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass)
  %tobool35.not = icmp eq i32 %pass, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %if.end34.if.end59_crit_edge

if.end34.if.end59_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

land.lhs.true36:                                  ; preds = %if.end34
  %number38 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %12 = ptrtoint ptr %number38 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %number38, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %primary.0, i8 %13)
  %cmp40.not = icmp eq i8 %primary.0, %13
  br i1 %cmp40.not, label %lor.lhs.false, label %land.lhs.true36.do.end55_crit_edge

land.lhs.true36.do.end55_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = and i32 %shr, 255
  %.pre440 = and i32 %shr7, 255
  br label %do.end55

lor.lhs.false:                                    ; preds = %land.lhs.true36
  %conv39 = zext i8 %primary.0 to i32
  %conv42 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv42, i32 %conv39)
  %cmp45.not = icmp ule i32 %conv42, %conv39
  %conv49 = and i32 %shr7, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv42, i32 %conv49)
  %cmp50 = icmp ugt i32 %conv42, %conv49
  %or.cond388 = select i1 %cmp45.not, i1 true, i1 %cmp50
  br i1 %or.cond388, label %lor.lhs.false.do.end55_crit_edge, label %lor.lhs.false.if.end59_crit_edge

lor.lhs.false.if.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

lor.lhs.false.do.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end55

do.end55:                                         ; preds = %lor.lhs.false.do.end55_crit_edge, %land.lhs.true36.do.end55_crit_edge
  %conv58.pre-phi = phi i32 [ %.pre440, %land.lhs.true36.do.end55_crit_edge ], [ %conv49, %lor.lhs.false.do.end55_crit_edge ]
  %conv57.pre-phi = phi i32 [ %.pre, %land.lhs.true36.do.end55_crit_edge ], [ %conv42, %lor.lhs.false.do.end55_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.119, i32 noundef %conv57.pre-phi, i32 noundef %conv58.pre-phi) #17
  br label %if.end59

if.end59:                                         ; preds = %do.end55, %lor.lhs.false.if.end59_crit_edge, %if.end34.if.end59_crit_edge
  %tobool118.not = phi i1 [ true, %do.end55 ], [ false, %if.end34.if.end59_crit_edge ], [ false, %lor.lhs.false.if.end59_crit_edge ]
  %call60 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 62, ptr noundef nonnull %bctl) #14
  %14 = ptrtoint ptr %bctl to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bctl, align 2
  %16 = and i16 %15, -33
  %call64 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 62, i16 noundef zeroext %16) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %root_cap.i) #14
  %17 = ptrtoint ptr %root_cap.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %root_cap.i, align 2
  %call.i400 = call i32 @pcie_capability_read_word(ptr noundef %dev, i32 noundef 30, ptr noundef nonnull %root_cap.i) #14
  %18 = ptrtoint ptr %root_cap.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %root_cap.i, align 2
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i, label %if.end59.pci_enable_crs.exit_crit_edge, label %if.then.i

if.end59.pci_enable_crs.exit_crit_edge:           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_enable_crs.exit

if.then.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = call i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef 28, i16 noundef zeroext 0, i16 noundef zeroext 16) #14
  br label %pci_enable_crs.exit

pci_enable_crs.exit:                              ; preds = %if.then.i, %if.end59.pci_enable_crs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %root_cap.i) #14
  %conv65 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv65)
  %tobool66.not = icmp eq i32 %conv65, 0
  %21 = and i32 %5, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool69.not = icmp eq i32 %21, 0
  %or.cond389 = select i1 %tobool66.not, i1 %tobool69.not, i1 false
  br i1 %or.cond389, label %pci_enable_crs.exit.if.else_crit_edge, label %land.lhs.true70

pci_enable_crs.exit.if.else_crit_edge:            ; preds = %pci_enable_crs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true70:                                  ; preds = %pci_enable_crs.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_flags to i32))
  %22 = load i32, ptr @pci_flags, align 4
  %and.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool72.not = icmp ne i32 %and.i, 0
  %brmerge = select i1 %tobool72.not, i1 true, i1 %cmp
  %brmerge390 = or i1 %tobool118.not, %brmerge
  br i1 %brmerge390, label %land.lhs.true70.if.else_crit_edge, label %if.then77

land.lhs.true70.if.else_crit_edge:                ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then77:                                        ; preds = %land.lhs.true70
  br i1 %tobool35.not, label %if.end80, label %if.then77.out_crit_edge

if.then77.out_crit_edge:                          ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end80:                                         ; preds = %if.then77
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 16
  %23 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %domain_nr.i, align 8
  %call83 = call ptr @pci_find_bus(i32 noundef %24, i32 noundef %conv65) #14
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %if.then85, label %if.end80.if.end95_crit_edge

if.end80.if.end95_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  %.pre441 = and i32 %shr7, 255
  br label %if.end95

if.then85:                                        ; preds = %if.end80
  %call87 = call ptr @pci_add_new_bus(ptr noundef %bus, ptr noundef %dev, i32 noundef %conv65)
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.then85.out_crit_edge, label %if.end90

if.then85.out_crit_edge:                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end90:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #16
  %primary91 = getelementptr inbounds %struct.pci_bus, ptr %call87, i32 0, i32 13
  %25 = ptrtoint ptr %primary91 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %primary.0, ptr %primary91, align 1
  %conv93 = and i32 %shr7, 255
  %call94 = call i32 @pci_bus_insert_busn_res(ptr noundef nonnull %call87, i32 noundef %conv65, i32 noundef %conv93)
  %26 = ptrtoint ptr %bctl to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bctl, align 2
  %bridge_ctl = getelementptr inbounds %struct.pci_bus, ptr %call87, i32 0, i32 18
  %28 = ptrtoint ptr %bridge_ctl to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %bridge_ctl, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end90, %if.end80.if.end95_crit_edge
  %conv97.pre-phi = phi i32 [ %.pre441, %if.end80.if.end95_crit_edge ], [ %conv93, %if.end90 ]
  %child.0 = phi ptr [ %call83, %if.end80.if.end95_crit_edge ], [ %call87, %if.end90 ]
  %call.i401 = call fastcc i32 @pci_scan_child_bus_extend(ptr noundef nonnull %child.0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i401, i32 %conv97.pre-phi)
  %cmp98 = icmp ugt i32 %call.i401, %conv97.pre-phi
  br i1 %cmp98, label %do.end103, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end103:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.122, i32 noundef %conv97.pre-phi, i32 noundef %call.i401) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end103, %if.end95.cleanup_crit_edge
  %29 = call i32 @llvm.smax.i32(i32 %conv97.pre-phi, i32 %max)
  br label %if.end211

if.else:                                          ; preds = %land.lhs.true70.if.else_crit_edge, %pci_enable_crs.exit.if.else_crit_edge
  br i1 %tobool35.not, label %if.then114, label %if.end125

if.then114:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_flags to i32))
  %30 = load i32, ptr @pci_flags, align 4
  %and.i402 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i402)
  %tobool116.not = icmp ne i32 %and.i402, 0
  %brmerge393 = or i1 %tobool118.not, %tobool116.not
  %brmerge394 = select i1 %brmerge393, i1 true, i1 %cmp
  br i1 %brmerge394, label %if.then121, label %if.then114.out_crit_edge

if.then114.out_crit_edge:                         ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then121:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %buses to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buses, align 4
  %and122 = and i32 %32, -16777216
  %call123 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 24, i32 noundef %and122) #14
  br label %out

if.end125:                                        ; preds = %if.else
  %call126 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 6, i16 noundef zeroext -1) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dw.i) #14
  %33 = ptrtoint ptr %dw.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %dw.i, align 4, !annotation !424
  %34 = ptrtoint ptr %hdr_type to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hdr_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp.not.i = icmp eq i8 %35, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end125.if.else132_crit_edge

if.end125.if.else132_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else132

if.end.i:                                         ; preds = %if.end125
  %call.i403 = call zeroext i8 @pci_find_capability(ptr noundef %dev, i32 noundef 20) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i403)
  %tobool.not.i404 = icmp eq i8 %call.i403, 0
  br i1 %tobool.not.i404, label %if.end.i.if.else132_crit_edge, label %if.end4.i

if.end.i.if.else132_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else132

if.end4.i:                                        ; preds = %if.end.i
  %conv2.i = zext i8 %call.i403 to i32
  %add.i = add nuw nsw i32 %conv2.i, 4
  %call5.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add.i, ptr noundef nonnull %dw.i) #14
  %36 = ptrtoint ptr %dw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dw.i, align 4
  %and7.i = lshr i32 %37, 8
  %conv9.i = and i32 %37, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9.i)
  %cmp10.i = icmp eq i32 %conv9.i, 0
  %conv12.i = and i32 %and7.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12.i, i32 %conv9.i)
  %cmp14.i = icmp ult i32 %conv12.i, %conv9.i
  %or.cond.i = select i1 %cmp10.i, i1 true, i1 %cmp14.i
  br i1 %or.cond.i, label %if.end4.i.if.else132_crit_edge, label %if.then130

if.end4.i.if.else132_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else132

if.then130:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dw.i) #14
  br label %if.end133

if.else132:                                       ; preds = %if.end4.i.if.else132_crit_edge, %if.end.i.if.else132_crit_edge, %if.end125.if.else132_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dw.i) #14
  %add = add i32 %max, 1
  br label %if.end133

if.end133:                                        ; preds = %if.else132, %if.then130
  %retval.0.i405426 = phi i1 [ true, %if.then130 ], [ false, %if.else132 ]
  %fixed_sub.0424 = phi i32 [ %conv12.i, %if.then130 ], [ 255, %if.else132 ]
  %next_busnr.0 = phi i32 [ %conv9.i, %if.then130 ], [ %add, %if.else132 ]
  %domain_nr.i406 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 16
  %38 = ptrtoint ptr %domain_nr.i406 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %domain_nr.i406, align 8
  %call135 = call ptr @pci_find_bus(i32 noundef %39, i32 noundef %next_busnr.0) #14
  %tobool136.not = icmp eq ptr %call135, null
  br i1 %tobool136.not, label %if.then137, label %if.end133.if.end143_crit_edge

if.end133.if.end143_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143

if.then137:                                       ; preds = %if.end133
  %call138 = call ptr @pci_add_new_bus(ptr noundef %bus, ptr noundef %dev, i32 noundef %next_busnr.0)
  %tobool139.not = icmp eq ptr %call138, null
  br i1 %tobool139.not, label %if.then137.out_crit_edge, label %if.end141

if.then137.out_crit_edge:                         ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end141:                                        ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #16
  %end = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %end, align 4
  %call142 = call i32 @pci_bus_insert_busn_res(ptr noundef nonnull %call138, i32 noundef %next_busnr.0, i32 noundef %41)
  br label %if.end143

if.end143:                                        ; preds = %if.end141, %if.end133.if.end143_crit_edge
  %child.2 = phi ptr [ %call135, %if.end133.if.end143_crit_edge ], [ %call138, %if.end141 ]
  %inc = add i32 %max, 1
  %42 = ptrtoint ptr %buses to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buses, align 4
  %and147 = and i32 %43, -16777216
  %primary148 = getelementptr inbounds %struct.pci_bus, ptr %child.2, i32 0, i32 13
  %44 = ptrtoint ptr %primary148 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %primary148, align 1
  %conv149 = zext i8 %45 to i32
  %or = or i32 %and147, %conv149
  %busn_res150 = getelementptr inbounds %struct.pci_bus, ptr %child.2, i32 0, i32 8
  %46 = ptrtoint ptr %busn_res150 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %busn_res150, align 8
  %shl151 = shl i32 %47, 8
  %or152 = or i32 %or, %shl151
  %end154 = getelementptr inbounds %struct.pci_bus, ptr %child.2, i32 0, i32 8, i32 1
  %48 = ptrtoint ptr %end154 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %end154, align 4
  %shl155 = shl i32 %49, 16
  %or156 = or i32 %or152, %shl155
  %and159 = and i32 %or156, 16777215
  %or160 = or i32 %and159, -1342177280
  %storemerge = select i1 %cmp, i32 %or160, i32 %or156
  store i32 %storemerge, ptr %buses, align 4
  %call162 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 24, i32 noundef %storemerge) #14
  br i1 %cmp, label %for.cond.preheader, label %if.then164

for.cond.preheader:                               ; preds = %if.end143
  %parent177434 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %50 = ptrtoint ptr %domain_nr.i406 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %domain_nr.i406, align 8
  %add172 = add i32 %max, 2
  %call173 = call ptr @pci_find_bus(i32 noundef %51, i32 noundef %add172) #14
  %tobool174.not = icmp eq ptr %call173, null
  br i1 %tobool174.not, label %while.cond.preheader, label %for.cond.preheader.for.end.loopexit_crit_edge

for.cond.preheader.for.end.loopexit_crit_edge:    ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.loopexit

if.then164:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %available_buses)
  %tobool144.not = icmp eq i32 %available_buses, 0
  %dec = add i32 %available_buses, -1
  %spec.select395 = select i1 %tobool144.not, i32 0, i32 %dec
  %52 = ptrtoint ptr %bctl to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bctl, align 2
  %bridge_ctl165 = getelementptr inbounds %struct.pci_bus, ptr %child.2, i32 0, i32 18
  %54 = ptrtoint ptr %bridge_ctl165 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %bridge_ctl165, align 4
  %call166 = call fastcc i32 @pci_scan_child_bus_extend(ptr noundef nonnull %child.2, i32 noundef %spec.select395)
  br label %if.end203

while.cond.preheader:                             ; preds = %for.cond.preheader
  %55 = ptrtoint ptr %parent177434 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parent177434, align 8
  %tobool178.not435 = icmp eq ptr %56, null
  br i1 %tobool178.not435, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %57 = phi ptr [ %59, %while.body.while.body_crit_edge ], [ %56, %while.cond.preheader.while.body_crit_edge ]
  %parent177 = getelementptr inbounds %struct.pci_bus, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %parent177 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent177, align 8
  %tobool178.not = icmp eq ptr %59, null
  br i1 %tobool178.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %60 = ptrtoint ptr %domain_nr.i406 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %domain_nr.i406, align 8
  %add172.1 = add i32 %max, 3
  %call173.1 = call ptr @pci_find_bus(i32 noundef %61, i32 noundef %add172.1) #14
  %tobool174.not.1 = icmp eq ptr %call173.1, null
  br i1 %tobool174.not.1, label %while.cond.preheader.1, label %for.inc.for.end.loopexit_crit_edge

for.inc.for.end.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.loopexit

while.cond.preheader.1:                           ; preds = %for.inc
  %62 = ptrtoint ptr %parent177434 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent177434, align 8
  %tobool178.not435.1 = icmp eq ptr %63, null
  br i1 %tobool178.not435.1, label %while.cond.preheader.1.for.inc.1_crit_edge, label %while.body.lr.ph.1

while.cond.preheader.1.for.inc.1_crit_edge:       ; preds = %while.cond.preheader.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

while.body.lr.ph.1:                               ; preds = %while.cond.preheader.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_flags to i32))
  %64 = load i32, ptr @pci_flags, align 4
  %and.i408.1 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i408.1)
  %tobool180.not.1 = icmp eq i32 %and.i408.1, 0
  br label %while.body.1

while.body.1:                                     ; preds = %if.end193.1.while.body.1_crit_edge, %while.body.lr.ph.1
  %65 = phi ptr [ %63, %while.body.lr.ph.1 ], [ %69, %if.end193.1.while.body.1_crit_edge ]
  %parent.0437.1 = phi ptr [ %bus, %while.body.lr.ph.1 ], [ %65, %if.end193.1.while.body.1_crit_edge ]
  %j.1436.1 = phi i32 [ 0, %while.body.lr.ph.1 ], [ %j.2.1, %if.end193.1.while.body.1_crit_edge ]
  br i1 %tobool180.not.1, label %land.lhs.true181.1, label %while.body.1.if.end193.1_crit_edge

while.body.1.if.end193.1_crit_edge:               ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end193.1

land.lhs.true181.1:                               ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #16
  %end183.1 = getelementptr inbounds %struct.pci_bus, ptr %parent.0437.1, i32 0, i32 8, i32 1
  %66 = ptrtoint ptr %end183.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %end183.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %inc)
  %cmp184.1 = icmp ule i32 %67, %inc
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %add172)
  %cmp190.not.1 = icmp ugt i32 %67, %add172
  %or.cond396.1 = or i1 %cmp184.1, %cmp190.not.1
  %spec.select399.1 = select i1 %or.cond396.1, i32 %j.1436.1, i32 1
  br label %if.end193.1

if.end193.1:                                      ; preds = %land.lhs.true181.1, %while.body.1.if.end193.1_crit_edge
  %j.2.1 = phi i32 [ %j.1436.1, %while.body.1.if.end193.1_crit_edge ], [ %spec.select399.1, %land.lhs.true181.1 ]
  %parent177.1 = getelementptr inbounds %struct.pci_bus, ptr %65, i32 0, i32 1
  %68 = ptrtoint ptr %parent177.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %parent177.1, align 8
  %tobool178.not.1 = icmp eq ptr %69, null
  br i1 %tobool178.not.1, label %while.end.1, label %if.end193.1.while.body.1_crit_edge

if.end193.1.while.body.1_crit_edge:               ; preds = %if.end193.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.1

while.end.1:                                      ; preds = %if.end193.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.2.1)
  %tobool195.not.1 = icmp eq i32 %j.2.1, 0
  br i1 %tobool195.not.1, label %while.end.1.for.inc.1_crit_edge, label %while.end.1.for.end_crit_edge

while.end.1.for.end_crit_edge:                    ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

while.end.1.for.inc.1_crit_edge:                  ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %while.end.1.for.inc.1_crit_edge, %while.cond.preheader.1.for.inc.1_crit_edge
  %70 = ptrtoint ptr %domain_nr.i406 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %domain_nr.i406, align 8
  %add172.2 = add i32 %max, 4
  %call173.2 = call ptr @pci_find_bus(i32 noundef %71, i32 noundef %add172.2) #14
  %tobool174.not.2 = icmp eq ptr %call173.2, null
  br i1 %tobool174.not.2, label %while.cond.preheader.2, label %for.inc.1.for.end.loopexit_crit_edge

for.inc.1.for.end.loopexit_crit_edge:             ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.loopexit

while.cond.preheader.2:                           ; preds = %for.inc.1
  %72 = ptrtoint ptr %parent177434 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %parent177434, align 8
  %tobool178.not435.2 = icmp eq ptr %73, null
  br i1 %tobool178.not435.2, label %while.cond.preheader.2.for.end.loopexit_crit_edge, label %while.body.lr.ph.2

while.cond.preheader.2.for.end.loopexit_crit_edge: ; preds = %while.cond.preheader.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.loopexit

while.body.lr.ph.2:                               ; preds = %while.cond.preheader.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_flags to i32))
  %74 = load i32, ptr @pci_flags, align 4
  %and.i408.2 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i408.2)
  %tobool180.not.2 = icmp eq i32 %and.i408.2, 0
  br label %while.body.2

while.body.2:                                     ; preds = %if.end193.2.while.body.2_crit_edge, %while.body.lr.ph.2
  %75 = phi ptr [ %73, %while.body.lr.ph.2 ], [ %79, %if.end193.2.while.body.2_crit_edge ]
  %parent.0437.2 = phi ptr [ %bus, %while.body.lr.ph.2 ], [ %75, %if.end193.2.while.body.2_crit_edge ]
  %j.1436.2 = phi i32 [ 0, %while.body.lr.ph.2 ], [ %j.2.2, %if.end193.2.while.body.2_crit_edge ]
  br i1 %tobool180.not.2, label %land.lhs.true181.2, label %while.body.2.if.end193.2_crit_edge

while.body.2.if.end193.2_crit_edge:               ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end193.2

land.lhs.true181.2:                               ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #16
  %end183.2 = getelementptr inbounds %struct.pci_bus, ptr %parent.0437.2, i32 0, i32 8, i32 1
  %76 = ptrtoint ptr %end183.2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %end183.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %inc)
  %cmp184.2 = icmp ule i32 %77, %inc
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %add172.1)
  %cmp190.not.2 = icmp ugt i32 %77, %add172.1
  %or.cond396.2 = or i1 %cmp184.2, %cmp190.not.2
  %spec.select399.2 = select i1 %or.cond396.2, i32 %j.1436.2, i32 1
  br label %if.end193.2

if.end193.2:                                      ; preds = %land.lhs.true181.2, %while.body.2.if.end193.2_crit_edge
  %j.2.2 = phi i32 [ %j.1436.2, %while.body.2.if.end193.2_crit_edge ], [ %spec.select399.2, %land.lhs.true181.2 ]
  %parent177.2 = getelementptr inbounds %struct.pci_bus, ptr %75, i32 0, i32 1
  %78 = ptrtoint ptr %parent177.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %parent177.2, align 8
  %tobool178.not.2 = icmp eq ptr %79, null
  br i1 %tobool178.not.2, label %while.end.2, label %if.end193.2.while.body.2_crit_edge

if.end193.2.while.body.2_crit_edge:               ; preds = %if.end193.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.2

while.end.2:                                      ; preds = %if.end193.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.2.2)
  %tobool195.not.2 = icmp eq i32 %j.2.2, 0
  br i1 %tobool195.not.2, label %while.end.2.for.end.loopexit_crit_edge, label %while.end.2.for.end_crit_edge

while.end.2.for.end_crit_edge:                    ; preds = %while.end.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

while.end.2.for.end.loopexit_crit_edge:           ; preds = %while.end.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %while.end.2.for.end.loopexit_crit_edge, %while.cond.preheader.2.for.end.loopexit_crit_edge, %for.inc.1.for.end.loopexit_crit_edge, %for.inc.for.end.loopexit_crit_edge, %for.cond.preheader.for.end.loopexit_crit_edge
  %i.2.ph = phi i32 [ 0, %for.cond.preheader.for.end.loopexit_crit_edge ], [ 1, %for.inc.for.end.loopexit_crit_edge ], [ 2, %for.inc.1.for.end.loopexit_crit_edge ], [ 3, %while.end.2.for.end.loopexit_crit_edge ], [ 3, %while.cond.preheader.2.for.end.loopexit_crit_edge ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %while.end.2.for.end_crit_edge, %while.end.1.for.end_crit_edge
  %i.2 = phi i32 [ %i.2.ph, %for.end.loopexit ], [ 0, %while.end.1.for.end_crit_edge ], [ 1, %while.end.2.for.end_crit_edge ]
  %add202 = add i32 %i.2, %inc
  br label %if.end203

if.end203:                                        ; preds = %for.end, %if.then164
  %max.addr.2 = phi i32 [ %add202, %for.end ], [ %call166, %if.then164 ]
  %spec.select432 = select i1 %retval.0.i405426, i32 %fixed_sub.0424, i32 %max.addr.2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old_res.i) #14
  %80 = call ptr @memcpy(ptr %old_res.i, ptr %busn_res150, i32 32)
  %81 = ptrtoint ptr %busn_res150 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %busn_res150, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %spec.select432)
  %cmp.i = icmp ugt i32 %82, %spec.select432
  br i1 %cmp.i, label %if.end203.pci_bus_update_busn_res_end.exit_crit_edge, label %if.end.i412

if.end203.pci_bus_update_busn_res_end.exit_crit_edge: ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bus_update_busn_res_end.exit

if.end.i412:                                      ; preds = %if.end203
  %sub.i = add i32 %spec.select432, 1
  %add.i409 = sub i32 %sub.i, %82
  %call.i410 = call i32 @adjust_resource(ptr noundef %busn_res150, i32 noundef %82, i32 noundef %add.i409) #14
  %dev.i = getelementptr inbounds %struct.pci_bus, ptr %child.2, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i410)
  %tobool.not.i411 = icmp eq i32 %call.i410, 0
  %cond.i = select i1 %tobool.not.i411, ptr @.str.91, ptr @.str.90
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.88, ptr noundef nonnull %old_res.i, ptr noundef nonnull %cond.i, i32 noundef %spec.select432) #17
  br i1 %tobool.not.i411, label %land.lhs.true.i, label %if.end.i412.pci_bus_update_busn_res_end.exit_crit_edge

if.end.i412.pci_bus_update_busn_res_end.exit_crit_edge: ; preds = %if.end.i412
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bus_update_busn_res_end.exit

land.lhs.true.i:                                  ; preds = %if.end.i412
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %child.2, i32 0, i32 8, i32 5
  %83 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %parent.i, align 4
  %tobool4.not.i = icmp eq ptr %84, null
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.pci_bus_update_busn_res_end.exit_crit_edge

land.lhs.true.i.pci_bus_update_busn_res_end.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bus_update_busn_res_end.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %busn_res150 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %busn_res150, align 4
  %87 = ptrtoint ptr %end154 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %end154, align 4
  %call7.i = call i32 @pci_bus_insert_busn_res(ptr noundef %child.2, i32 noundef %86, i32 noundef %88) #14
  br label %pci_bus_update_busn_res_end.exit

pci_bus_update_busn_res_end.exit:                 ; preds = %if.then5.i, %land.lhs.true.i.pci_bus_update_busn_res_end.exit_crit_edge, %if.end.i412.pci_bus_update_busn_res_end.exit_crit_edge, %if.end203.pci_bus_update_busn_res_end.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old_res.i) #14
  %conv209 = trunc i32 %spec.select432 to i8
  %call210 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 26, i8 noundef zeroext %conv209) #14
  br label %if.end211

if.end211:                                        ; preds = %pci_bus_update_busn_res_end.exit, %cleanup
  %max.addr.4 = phi i32 [ %spec.select432, %pci_bus_update_busn_res_end.exit ], [ %29, %cleanup ]
  %child.3 = phi ptr [ %child.2, %pci_bus_update_busn_res_end.exit ], [ %child.0, %cleanup ]
  %name = getelementptr inbounds %struct.pci_bus, ptr %child.3, i32 0, i32 17
  %cond = select i1 %cmp, ptr @.str.124, ptr @.str.125
  %domain_nr.i414 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 16
  %89 = ptrtoint ptr %domain_nr.i414 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %domain_nr.i414, align 8
  %number214 = getelementptr inbounds %struct.pci_bus, ptr %child.3, i32 0, i32 12
  %91 = ptrtoint ptr %number214 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %number214, align 4
  %conv215 = zext i8 %92 to i32
  %call216 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull %cond, i32 noundef %90, i32 noundef %conv215)
  %end222 = getelementptr inbounds %struct.pci_bus, ptr %child.3, i32 0, i32 8, i32 1
  br label %while.cond217

while.cond217:                                    ; preds = %lor.lhs.false234.while.cond217_crit_edge, %if.end211
  %bus.addr.0 = phi ptr [ %bus, %if.end211 ], [ %94, %lor.lhs.false234.while.cond217_crit_edge ]
  %parent218 = getelementptr inbounds %struct.pci_bus, ptr %bus.addr.0, i32 0, i32 1
  %93 = ptrtoint ptr %parent218 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %parent218, align 8
  %tobool219.not = icmp eq ptr %94, null
  br i1 %tobool219.not, label %while.cond217.out_crit_edge, label %while.body220

while.cond217.out_crit_edge:                      ; preds = %while.cond217
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body220:                                    ; preds = %while.cond217
  %95 = ptrtoint ptr %end222 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %end222, align 4
  %end224 = getelementptr inbounds %struct.pci_bus, ptr %bus.addr.0, i32 0, i32 8, i32 1
  %97 = ptrtoint ptr %end224 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %end224, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp225 = icmp ugt i32 %96, %98
  br i1 %cmp225, label %while.body220.do.end251_crit_edge, label %lor.lhs.false227

while.body220.do.end251_crit_edge:                ; preds = %while.body220
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end251

lor.lhs.false227:                                 ; preds = %while.body220
  %99 = ptrtoint ptr %number214 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %number214, align 4
  %conv229 = zext i8 %100 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %conv229)
  %cmp232 = icmp ult i32 %98, %conv229
  br i1 %cmp232, label %lor.lhs.false227.do.end251_crit_edge, label %lor.lhs.false234

lor.lhs.false227.do.end251_crit_edge:             ; preds = %lor.lhs.false227
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end251

lor.lhs.false234:                                 ; preds = %lor.lhs.false227
  %number237 = getelementptr inbounds %struct.pci_bus, ptr %bus.addr.0, i32 0, i32 12
  %101 = ptrtoint ptr %number237 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %number237, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %100, i8 %102)
  %cmp239 = icmp ult i8 %100, %102
  %conv238 = zext i8 %102 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %conv238)
  %cmp246 = icmp ult i32 %96, %conv238
  %or.cond398 = select i1 %cmp239, i1 true, i1 %cmp246
  br i1 %or.cond398, label %lor.lhs.false234.do.end251_crit_edge, label %lor.lhs.false234.while.cond217_crit_edge

lor.lhs.false234.while.cond217_crit_edge:         ; preds = %lor.lhs.false234
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond217

lor.lhs.false234.do.end251_crit_edge:             ; preds = %lor.lhs.false234
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end251

do.end251:                                        ; preds = %lor.lhs.false234.do.end251_crit_edge, %lor.lhs.false227.do.end251_crit_edge, %while.body220.do.end251_crit_edge
  %busn_res221.le = getelementptr inbounds %struct.pci_bus, ptr %child.3, i32 0, i32 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.127, ptr noundef %busn_res221.le) #17
  br label %out

out:                                              ; preds = %do.end251, %while.cond217.out_crit_edge, %if.then137.out_crit_edge, %if.then121, %if.then114.out_crit_edge, %if.then85.out_crit_edge, %if.then77.out_crit_edge
  %max.addr.5 = phi i32 [ %max.addr.4, %do.end251 ], [ %max, %if.then137.out_crit_edge ], [ %max, %if.then121 ], [ %max, %if.then114.out_crit_edge ], [ %max, %if.then77.out_crit_edge ], [ %max, %if.then85.out_crit_edge ], [ %max.addr.4, %while.cond217.out_crit_edge ]
  %103 = ptrtoint ptr %bctl to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %bctl, align 2
  %call257 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 62, i16 noundef zeroext %104) #14
  %call.i415 = call i32 @__pm_runtime_idle(ptr noundef %dev2, i32 noundef 5) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bctl) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buses) #14
  ret i32 %max.addr.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_pcie_port_type(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %reg16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16) #14
  %0 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg16, align 2, !annotation !424
  %call = tail call zeroext i8 @pci_find_capability(ptr noundef %pdev, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %call to i32
  %pcie_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 19
  %1 = ptrtoint ptr %pcie_cap to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %call, ptr %pcie_cap, align 8
  %add = add nuw nsw i32 %conv, 2
  %call2 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add, ptr noundef nonnull %reg16) #14
  %2 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg16, align 2
  %pcie_flags_reg = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 25
  %4 = ptrtoint ptr %pcie_flags_reg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %pcie_flags_reg, align 2
  %add3 = add nuw nsw i32 %conv, 4
  %devcap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 18
  %call4 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add3, ptr noundef %devcap) #14
  %5 = ptrtoint ptr %devcap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devcap, align 4
  %7 = trunc i32 %6 to i8
  %pcie_mpss = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 22
  %8 = ptrtoint ptr %pcie_mpss to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %pcie_mpss, align 1
  %bf.shl = shl i8 %7, 5
  %bf.clear = and i8 %bf.load, 31
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %pcie_mpss, align 1
  %is_virtfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %9 = ptrtoint ptr %is_virtfn.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 5)
  %bf.load.i.i = load i40, ptr %is_virtfn.i.i, align 1
  %10 = and i40 %bf.load.i.i, 65536
  %tobool.not.i.i = icmp eq i40 %10, 0
  br i1 %tobool.not.i.i, label %if.end.pci_physfn.exit.i_crit_edge, label %if.then.i.i

if.end.pci_physfn.exit.i_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_physfn.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %11 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 66
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  br label %pci_physfn.exit.i

pci_physfn.exit.i:                                ; preds = %if.then.i.i, %if.end.pci_physfn.exit.i_crit_edge
  %dev.addr.0.i.i = phi ptr [ %13, %if.then.i.i ], [ %pdev, %if.end.pci_physfn.exit.i_crit_edge ]
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i5.i = icmp eq ptr %17, null
  br i1 %tobool.not.i5.i, label %pci_physfn.exit.i.cleanup_crit_edge, label %pci_upstream_bridge.exit

pci_physfn.exit.i.cleanup_crit_edge:              ; preds = %pci_physfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

pci_upstream_bridge.exit:                         ; preds = %pci_physfn.exit.i
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %self.i, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %pci_upstream_bridge.exit.cleanup_crit_edge, label %if.end22

pci_upstream_bridge.exit.cleanup_crit_edge:       ; preds = %pci_upstream_bridge.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22:                                         ; preds = %pci_upstream_bridge.exit
  %20 = ptrtoint ptr %pcie_flags_reg to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pcie_flags_reg, align 2
  %22 = lshr i16 %21, 4
  %23 = and i16 %22, 15
  %24 = zext i16 %23 to i32
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %if.end22.cleanup_crit_edge [
    i32 6, label %if.then25
    i32 5, label %if.then41
  ]

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  %pcie_flags_reg.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 25
  %26 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %28 = lshr i16 %27, 4
  %29 = and i16 %28, 15
  %30 = zext i16 %29 to i32
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %30, label %if.then25.cleanup_crit_edge [
    i32 4, label %if.then25.cleanup.sink.split_crit_edge
    i32 6, label %if.then25.cleanup.sink.split_crit_edge91
    i32 8, label %if.then25.cleanup.sink.split_crit_edge92
  ]

if.then25.cleanup.sink.split_crit_edge92:         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then25.cleanup.sink.split_crit_edge91:         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then25.cleanup.sink.split_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then41:                                        ; preds = %if.end22
  %pcie_flags_reg.i.i85 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 25
  %32 = ptrtoint ptr %pcie_flags_reg.i.i85 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pcie_flags_reg.i.i85, align 2
  %34 = and i16 %33, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %34)
  %cmp43 = icmp eq i16 %34, 80
  br i1 %cmp43, label %if.then41.cleanup.sink.split_crit_edge, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then41.cleanup.sink.split_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then41.cleanup.sink.split_crit_edge, %if.then25.cleanup.sink.split_crit_edge, %if.then25.cleanup.sink.split_crit_edge91, %if.then25.cleanup.sink.split_crit_edge92
  %.str.48.sink = phi ptr [ @.str.48, %if.then25.cleanup.sink.split_crit_edge ], [ @.str.48, %if.then25.cleanup.sink.split_crit_edge91 ], [ @.str.48, %if.then25.cleanup.sink.split_crit_edge92 ], [ @.str.51, %if.then41.cleanup.sink.split_crit_edge ]
  %.sink90 = phi i16 [ -246, %if.then25.cleanup.sink.split_crit_edge ], [ -246, %if.then25.cleanup.sink.split_crit_edge91 ], [ -246, %if.then25.cleanup.sink.split_crit_edge92 ], [ -247, %if.then41.cleanup.sink.split_crit_edge ]
  %.sink89 = phi i16 [ 5, %if.then25.cleanup.sink.split_crit_edge ], [ 5, %if.then25.cleanup.sink.split_crit_edge91 ], [ 5, %if.then25.cleanup.sink.split_crit_edge92 ], [ 6, %if.then41.cleanup.sink.split_crit_edge ]
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.48.sink) #17
  %35 = ptrtoint ptr %pcie_flags_reg to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %pcie_flags_reg, align 2
  %37 = and i16 %36, %.sink90
  %38 = or i16 %37, %.sink89
  store i16 %38, ptr %pcie_flags_reg, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then41.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %pci_upstream_bridge.exit.cleanup_crit_edge, %pci_physfn.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_pcie_hotplug_bridge(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %reg32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32) #14
  %0 = ptrtoint ptr %reg32 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg32, align 4, !annotation !424
  %call = call i32 @pcie_capability_read_dword(ptr noundef %pdev, i32 noundef 20, ptr noundef nonnull %reg32) #14
  %1 = ptrtoint ptr %reg32 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg32, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %is_hotplug_bridge = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %3 = ptrtoint ptr %is_hotplug_bridge to i32
  call void @__asan_loadN_noabort(i32 %3, i32 5)
  %bf.load = load i40, ptr %is_hotplug_bridge, align 1
  %bf.set = or i40 %bf.load, 32768
  store i40 %bf.set, ptr %is_hotplug_bridge, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_cfg_space_size(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %header.i.i57 = alloca i32, align 4
  %tmp.i.i58 = alloca i32, align 4
  %status.i59 = alloca i32, align 4
  %header.i.i36 = alloca i32, align 4
  %tmp.i.i37 = alloca i32, align 4
  %status.i38 = alloca i32, align 4
  %header.i.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #14
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !424
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %1 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %1, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %2 = and i40 %bf.load, 65536
  %tobool.not = icmp eq i40 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 8
  %bus_flags = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %bus_flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %bus_flags, align 2
  %7 = and i16 %6, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not = icmp eq i16 %7, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %class4 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %8 = ptrtoint ptr %class4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %class4, align 8
  %10 = and i32 %9, 16776960
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %10)
  %cmp = icmp eq i32 %10, 393216
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #14
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %status.i, align 4, !annotation !424
  %call.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %status.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then8.pci_cfg_space_size_ext.exit_crit_edge

if.then8.pci_cfg_space_size_ext.exit_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_cfg_space_size_ext.exit

if.end.i:                                         ; preds = %if.then8
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp1.i = icmp eq i32 %13, -1
  br i1 %cmp1.i, label %if.end.i.pci_cfg_space_size_ext.exit_crit_edge, label %lor.lhs.false.i

if.end.i.pci_cfg_space_size_ext.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_cfg_space_size_ext.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header.i.i) #14
  %14 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %header.i.i, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #14
  %15 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !424
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %header.i.i) #14
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %lor.lhs.false.i.i
  %add.i.i = add nuw nsw i32 %pos.09.i.i, 256
  %cmp.i.i = icmp ult i32 %pos.09.i.i, 3840
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %20

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %lor.lhs.false.i
  %pos.09.i.i = phi i32 [ 256, %lor.lhs.false.i ], [ %add.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %call1.i.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %pos.09.i.i, ptr noundef nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.not.i.i, label %lor.lhs.false.i.i, label %for.body.i.i.pci_ext_cfg_is_aliased.exit.thread.i_crit_edge

for.body.i.i.pci_ext_cfg_is_aliased.exit.thread.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_ext_cfg_is_aliased.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %16 = ptrtoint ptr %header.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %header.i.i, align 4
  %18 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp3.not.i.i = icmp eq i32 %17, %19
  br i1 %cmp3.not.i.i, label %for.cond.i.i, label %lor.lhs.false.i.i.pci_ext_cfg_is_aliased.exit.thread.i_crit_edge

lor.lhs.false.i.i.pci_ext_cfg_is_aliased.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_ext_cfg_is_aliased.exit.thread.i

pci_ext_cfg_is_aliased.exit.thread.i:             ; preds = %lor.lhs.false.i.i.pci_ext_cfg_is_aliased.exit.thread.i_crit_edge, %for.body.i.i.pci_ext_cfg_is_aliased.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i.i) #14
  br label %pci_cfg_space_size_ext.exit

20:                                               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i.i) #14
  br label %pci_cfg_space_size_ext.exit

pci_cfg_space_size_ext.exit:                      ; preds = %20, %pci_ext_cfg_is_aliased.exit.thread.i, %if.end.i.pci_cfg_space_size_ext.exit_crit_edge, %if.then8.pci_cfg_space_size_ext.exit_crit_edge
  %retval.0.i = phi i32 [ 256, %if.then8.pci_cfg_space_size_ext.exit_crit_edge ], [ 256, %if.end.i.pci_cfg_space_size_ext.exit_crit_edge ], [ 256, %20 ], [ 4096, %pci_ext_cfg_is_aliased.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %21 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i.not = icmp eq i8 %22, 0
  br i1 %tobool.i.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i38) #14
  %23 = ptrtoint ptr %status.i38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %status.i38, align 4, !annotation !424
  %call.i39 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %status.i38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp.not.i40 = icmp eq i32 %call.i39, 0
  br i1 %cmp.not.i40, label %if.end.i42, label %if.then11.pci_cfg_space_size_ext.exit56_crit_edge

if.then11.pci_cfg_space_size_ext.exit56_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_cfg_space_size_ext.exit56

if.end.i42:                                       ; preds = %if.then11
  %24 = ptrtoint ptr %status.i38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp1.i41 = icmp eq i32 %25, -1
  br i1 %cmp1.i41, label %if.end.i42.pci_cfg_space_size_ext.exit56_crit_edge, label %lor.lhs.false.i44

if.end.i42.pci_cfg_space_size_ext.exit56_crit_edge: ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_cfg_space_size_ext.exit56

lor.lhs.false.i44:                                ; preds = %if.end.i42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header.i.i36) #14
  %26 = ptrtoint ptr %header.i.i36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %header.i.i36, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i37) #14
  %27 = ptrtoint ptr %tmp.i.i37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %tmp.i.i37, align 4, !annotation !424
  %call.i.i43 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %header.i.i36) #14
  br label %for.body.i.i51

for.cond.i.i47:                                   ; preds = %lor.lhs.false.i.i53
  %add.i.i45 = add nuw nsw i32 %pos.09.i.i48, 256
  %cmp.i.i46 = icmp ult i32 %pos.09.i.i48, 3840
  br i1 %cmp.i.i46, label %for.cond.i.i47.for.body.i.i51_crit_edge, label %32

for.cond.i.i47.for.body.i.i51_crit_edge:          ; preds = %for.cond.i.i47
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i51

for.body.i.i51:                                   ; preds = %for.cond.i.i47.for.body.i.i51_crit_edge, %lor.lhs.false.i44
  %pos.09.i.i48 = phi i32 [ 256, %lor.lhs.false.i44 ], [ %add.i.i45, %for.cond.i.i47.for.body.i.i51_crit_edge ]
  %call1.i.i49 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %pos.09.i.i48, ptr noundef nonnull %tmp.i.i37) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i49)
  %cmp2.not.i.i50 = icmp eq i32 %call1.i.i49, 0
  br i1 %cmp2.not.i.i50, label %lor.lhs.false.i.i53, label %for.body.i.i51.pci_ext_cfg_is_aliased.exit.thread.i54_crit_edge

for.body.i.i51.pci_ext_cfg_is_aliased.exit.thread.i54_crit_edge: ; preds = %for.body.i.i51
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_ext_cfg_is_aliased.exit.thread.i54

lor.lhs.false.i.i53:                              ; preds = %for.body.i.i51
  %28 = ptrtoint ptr %header.i.i36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %header.i.i36, align 4
  %30 = ptrtoint ptr %tmp.i.i37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tmp.i.i37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp3.not.i.i52 = icmp eq i32 %29, %31
  br i1 %cmp3.not.i.i52, label %for.cond.i.i47, label %lor.lhs.false.i.i53.pci_ext_cfg_is_aliased.exit.thread.i54_crit_edge

lor.lhs.false.i.i53.pci_ext_cfg_is_aliased.exit.thread.i54_crit_edge: ; preds = %lor.lhs.false.i.i53
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_ext_cfg_is_aliased.exit.thread.i54

pci_ext_cfg_is_aliased.exit.thread.i54:           ; preds = %lor.lhs.false.i.i53.pci_ext_cfg_is_aliased.exit.thread.i54_crit_edge, %for.body.i.i51.pci_ext_cfg_is_aliased.exit.thread.i54_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i37) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i.i36) #14
  br label %pci_cfg_space_size_ext.exit56

32:                                               ; preds = %for.cond.i.i47
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i37) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i.i36) #14
  br label %pci_cfg_space_size_ext.exit56

pci_cfg_space_size_ext.exit56:                    ; preds = %32, %pci_ext_cfg_is_aliased.exit.thread.i54, %if.end.i42.pci_cfg_space_size_ext.exit56_crit_edge, %if.then11.pci_cfg_space_size_ext.exit56_crit_edge
  %retval.0.i55 = phi i32 [ 256, %if.then11.pci_cfg_space_size_ext.exit56_crit_edge ], [ 256, %if.end.i42.pci_cfg_space_size_ext.exit56_crit_edge ], [ 256, %32 ], [ 4096, %pci_ext_cfg_is_aliased.exit.thread.i54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i38) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call zeroext i8 @pci_find_capability(ptr noundef %dev, i32 noundef 7) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call14)
  %tobool16.not = icmp eq i8 %call14, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %conv15 = zext i8 %call14 to i32
  %add = add nuw nsw i32 %conv15, 4
  %call19 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %status) #14
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %34)
  %tobool21.not = icmp ult i32 %34, 1073741824
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %if.then22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then22:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i59) #14
  %35 = ptrtoint ptr %status.i59 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %status.i59, align 4, !annotation !424
  %call.i60 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %status.i59) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp.not.i61 = icmp eq i32 %call.i60, 0
  br i1 %cmp.not.i61, label %if.end.i63, label %if.then22.pci_cfg_space_size_ext.exit77_crit_edge

if.then22.pci_cfg_space_size_ext.exit77_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_cfg_space_size_ext.exit77

if.end.i63:                                       ; preds = %if.then22
  %36 = ptrtoint ptr %status.i59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp1.i62 = icmp eq i32 %37, -1
  br i1 %cmp1.i62, label %if.end.i63.pci_cfg_space_size_ext.exit77_crit_edge, label %lor.lhs.false.i65

if.end.i63.pci_cfg_space_size_ext.exit77_crit_edge: ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_cfg_space_size_ext.exit77

lor.lhs.false.i65:                                ; preds = %if.end.i63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header.i.i57) #14
  %38 = ptrtoint ptr %header.i.i57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %header.i.i57, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i58) #14
  %39 = ptrtoint ptr %tmp.i.i58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %tmp.i.i58, align 4, !annotation !424
  %call.i.i64 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %header.i.i57) #14
  br label %for.body.i.i72

for.cond.i.i68:                                   ; preds = %lor.lhs.false.i.i74
  %add.i.i66 = add nuw nsw i32 %pos.09.i.i69, 256
  %cmp.i.i67 = icmp ult i32 %pos.09.i.i69, 3840
  br i1 %cmp.i.i67, label %for.cond.i.i68.for.body.i.i72_crit_edge, label %44

for.cond.i.i68.for.body.i.i72_crit_edge:          ; preds = %for.cond.i.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i72

for.body.i.i72:                                   ; preds = %for.cond.i.i68.for.body.i.i72_crit_edge, %lor.lhs.false.i65
  %pos.09.i.i69 = phi i32 [ 256, %lor.lhs.false.i65 ], [ %add.i.i66, %for.cond.i.i68.for.body.i.i72_crit_edge ]
  %call1.i.i70 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %pos.09.i.i69, ptr noundef nonnull %tmp.i.i58) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i70)
  %cmp2.not.i.i71 = icmp eq i32 %call1.i.i70, 0
  br i1 %cmp2.not.i.i71, label %lor.lhs.false.i.i74, label %for.body.i.i72.pci_ext_cfg_is_aliased.exit.thread.i75_crit_edge

for.body.i.i72.pci_ext_cfg_is_aliased.exit.thread.i75_crit_edge: ; preds = %for.body.i.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_ext_cfg_is_aliased.exit.thread.i75

lor.lhs.false.i.i74:                              ; preds = %for.body.i.i72
  %40 = ptrtoint ptr %header.i.i57 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %header.i.i57, align 4
  %42 = ptrtoint ptr %tmp.i.i58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tmp.i.i58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp3.not.i.i73 = icmp eq i32 %41, %43
  br i1 %cmp3.not.i.i73, label %for.cond.i.i68, label %lor.lhs.false.i.i74.pci_ext_cfg_is_aliased.exit.thread.i75_crit_edge

lor.lhs.false.i.i74.pci_ext_cfg_is_aliased.exit.thread.i75_crit_edge: ; preds = %lor.lhs.false.i.i74
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_ext_cfg_is_aliased.exit.thread.i75

pci_ext_cfg_is_aliased.exit.thread.i75:           ; preds = %lor.lhs.false.i.i74.pci_ext_cfg_is_aliased.exit.thread.i75_crit_edge, %for.body.i.i72.pci_ext_cfg_is_aliased.exit.thread.i75_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i58) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i.i57) #14
  br label %pci_cfg_space_size_ext.exit77

44:                                               ; preds = %for.cond.i.i68
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i58) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i.i57) #14
  br label %pci_cfg_space_size_ext.exit77

pci_cfg_space_size_ext.exit77:                    ; preds = %44, %pci_ext_cfg_is_aliased.exit.thread.i75, %if.end.i63.pci_cfg_space_size_ext.exit77_crit_edge, %if.then22.pci_cfg_space_size_ext.exit77_crit_edge
  %retval.0.i76 = phi i32 [ 256, %if.then22.pci_cfg_space_size_ext.exit77_crit_edge ], [ 256, %if.end.i63.pci_cfg_space_size_ext.exit77_crit_edge ], [ 256, %44 ], [ 4096, %pci_ext_cfg_is_aliased.exit.thread.i75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i59) #14
  br label %cleanup

cleanup:                                          ; preds = %pci_cfg_space_size_ext.exit77, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %pci_cfg_space_size_ext.exit56, %pci_cfg_space_size_ext.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %pci_cfg_space_size_ext.exit ], [ %retval.0.i55, %pci_cfg_space_size_ext.exit56 ], [ %retval.0.i76, %pci_cfg_space_size_ext.exit77 ], [ 4096, %entry.cleanup_crit_edge ], [ 256, %if.end.cleanup_crit_edge ], [ 256, %if.end13.cleanup_crit_edge ], [ 256, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_setup_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %irq.i384 = alloca i8, align 1
  %reg32.i = alloca i32, align 4
  %io.i = alloca i16, align 2
  %pmem.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %irq.i331 = alloca i8, align 1
  %irq.i = alloca i8, align 1
  %orig.i = alloca i16, align 2
  %new.i = alloca i16, align 2
  %value.i = alloca [64 x i32], align 4
  %class.i = alloca i32, align 4
  %hdr_type.i = alloca i8, align 1
  %cmd = alloca i16, align 2
  %region = alloca %struct.pci_bus_region, align 4
  %progif = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #14
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cmd, align 2, !annotation !424
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #14
  %1 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %region, align 4, !annotation !424
  %2 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr_type.i) #14
  %4 = ptrtoint ptr %hdr_type.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %hdr_type.i, align 1, !annotation !424
  %is_virtfn.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %5 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 5)
  %bf.load.i = load i40, ptr %is_virtfn.i, align 1
  %6 = and i40 %bf.load.i, 65536
  %tobool.not.i = icmp eq i40 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 66
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 66
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %hdr_type1.i = getelementptr inbounds %struct.pci_sriov, ptr %12, i32 0, i32 17
  br label %pci_hdr_type.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 14, ptr noundef nonnull %hdr_type.i) #14
  br label %pci_hdr_type.exit

pci_hdr_type.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.in.i = phi ptr [ %hdr_type1.i, %if.then.i ], [ %hdr_type.i, %if.end.i ]
  %13 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %retval.0.i = load i8, ptr %retval.0.in.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr_type.i) #14
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 8
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sysdata, align 4
  %sysdata1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 3
  %18 = ptrtoint ptr %sysdata1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %sysdata1, align 8
  %bridge = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 20
  %19 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bridge, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %parent, align 8
  %bus5 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 5
  %22 = ptrtoint ptr %bus5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pci_bus_type, ptr %bus5, align 8
  %and = and i8 %retval.0.i, 127
  %hdr_type7 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 13
  %23 = ptrtoint ptr %hdr_type7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %and, ptr %hdr_type7, align 1
  %call.lobit = lshr i8 %retval.0.i, 7
  %24 = zext i8 %call.lobit to i40
  %25 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 5)
  %bf.load = load i40, ptr %is_virtfn.i, align 1
  %bf.shl = shl nuw nsw i40 %24, 35
  %bf.clear = and i40 %bf.load, -34359738369
  %bf.set = or i40 %bf.clear, %bf.shl
  store i40 %bf.set, ptr %is_virtfn.i, align 1
  %error_state = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 43
  %26 = ptrtoint ptr %error_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %error_state, align 4
  call void @set_pcie_port_type(ptr noundef %dev)
  call void @pci_set_of_node(ptr noundef %dev) #14
  call void @pci_dev_assign_slot(ptr noundef %dev) #14
  %dma_mask = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 28
  %27 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 4294967295, ptr %dma_mask, align 8
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %domain_nr.i, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %29, i32 0, i32 12
  %32 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %number, align 4
  %conv15 = zext i8 %33 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %34 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %35, 3
  %and16 = and i32 %shr, 31
  %and18 = and i32 %35, 7
  %call19 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev3, ptr noundef nonnull @.str.53, i32 noundef %31, i32 noundef %conv15, i32 noundef %and16, i32 noundef %and18) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %class.i) #14
  %36 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %class.i, align 4, !annotation !424
  %37 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 5)
  %bf.load.i278 = load i40, ptr %is_virtfn.i, align 1
  %38 = and i40 %bf.load.i278, 65536
  %tobool.not.i279 = icmp eq i40 %38, 0
  br i1 %tobool.not.i279, label %if.end.i282, label %if.then.i280

if.then.i280:                                     ; preds = %pci_hdr_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  %39 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 66
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %42 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 66
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %class1.i = getelementptr inbounds %struct.pci_sriov, ptr %44, i32 0, i32 16
  br label %pci_class.exit

if.end.i282:                                      ; preds = %pci_hdr_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call.i281 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 8, ptr noundef nonnull %class.i) #14
  br label %pci_class.exit

pci_class.exit:                                   ; preds = %if.end.i282, %if.then.i280
  %retval.0.in.i283 = phi ptr [ %class1.i, %if.then.i280 ], [ %class.i, %if.end.i282 ]
  %45 = ptrtoint ptr %retval.0.in.i283 to i32
  call void @__asan_load4_noabort(i32 %45)
  %retval.0.i284 = load i32, ptr %retval.0.in.i283, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %class.i) #14
  %conv22 = trunc i32 %retval.0.i284 to i8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 12
  %46 = ptrtoint ptr %revision to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv22, ptr %revision, align 4
  %shr23 = lshr i32 %retval.0.i284, 8
  %class24 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %47 = ptrtoint ptr %class24 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr23, ptr %class24, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pci_early_dump to i32))
  %48 = load i8, ptr @pci_early_dump, align 1, !range !427
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool25.not = icmp eq i8 %48, 0
  br i1 %tobool25.not, label %pci_class.exit.if.end_crit_edge, label %if.then

pci_class.exit.if.end_crit_edge:                  ; preds = %pci_class.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %pci_class.exit
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %value.i) #14
  %49 = call ptr @memset(ptr %value.i, i32 255, i32 256)
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.129) #17
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.06.i = phi i32 [ 0, %if.then ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %div5.i = lshr exact i32 %i.06.i, 2
  %arrayidx.i = getelementptr [64 x i32], ptr %value.i, i32 0, i32 %div5.i
  %call.i285 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %i.06.i, ptr noundef %arrayidx.i) #14
  %add.i = add nuw nsw i32 %i.06.i, 4
  %cmp.i = icmp ult i32 %i.06.i, 252
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %early_dump_pci_device.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

early_dump_pci_device.exit:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.21, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %value.i, i32 noundef 256, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %value.i) #14
  br label %if.end

if.end:                                           ; preds = %early_dump_pci_device.exit, %pci_class.exit.if.end_crit_edge
  %call26 = call i32 @pci_cfg_space_size(ptr noundef %dev)
  %cfg_size = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 45
  %50 = ptrtoint ptr %cfg_size to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call26, ptr %cfg_size, align 8
  %call.i286 = call zeroext i16 @pci_find_vsec_capability(ptr noundef %dev, i16 noundef zeroext -32634, i32 noundef 4660) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i286)
  %tobool.not.i287 = icmp eq i16 %call.i286, 0
  br i1 %tobool.not.i287, label %if.end.set_pcie_thunderbolt.exit_crit_edge, label %if.then.i289

if.end.set_pcie_thunderbolt.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_pcie_thunderbolt.exit

if.then.i289:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 5)
  %bf.load.i288 = load i40, ptr %is_virtfn.i, align 1
  %bf.set.i = or i40 %bf.load.i288, 8192
  store i40 %bf.set.i, ptr %is_virtfn.i, align 1
  br label %set_pcie_thunderbolt.exit

set_pcie_thunderbolt.exit:                        ; preds = %if.then.i289, %if.end.set_pcie_thunderbolt.exit_crit_edge
  %52 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 5)
  %bf.load.i.i.i = load i40, ptr %is_virtfn.i, align 1
  %53 = and i40 %bf.load.i.i.i, 65536
  %tobool.not.i.i.i = icmp eq i40 %53, 0
  br i1 %tobool.not.i.i.i, label %set_pcie_thunderbolt.exit.pci_physfn.exit.i.i_crit_edge, label %if.then.i.i.i

set_pcie_thunderbolt.exit.pci_physfn.exit.i.i_crit_edge: ; preds = %set_pcie_thunderbolt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_physfn.exit.i.i

if.then.i.i.i:                                    ; preds = %set_pcie_thunderbolt.exit
  call void @__sanitizer_cov_trace_pc() #16
  %54 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 66
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  br label %pci_physfn.exit.i.i

pci_physfn.exit.i.i:                              ; preds = %if.then.i.i.i, %set_pcie_thunderbolt.exit.pci_physfn.exit.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %56, %if.then.i.i.i ], [ %dev, %set_pcie_thunderbolt.exit.pci_physfn.exit.i.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i5.i.i, label %pci_physfn.exit.i.i.set_pcie_untrusted.exit_crit_edge, label %pci_upstream_bridge.exit.i

pci_physfn.exit.i.i.set_pcie_untrusted.exit_crit_edge: ; preds = %pci_physfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_pcie_untrusted.exit

pci_upstream_bridge.exit.i:                       ; preds = %pci_physfn.exit.i.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %58, i32 0, i32 4
  %61 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %self.i.i, align 4
  %tobool.not.i291 = icmp eq ptr %62, null
  br i1 %tobool.not.i291, label %pci_upstream_bridge.exit.i.set_pcie_untrusted.exit_crit_edge, label %land.lhs.true.i

pci_upstream_bridge.exit.i.set_pcie_untrusted.exit_crit_edge: ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_pcie_untrusted.exit

land.lhs.true.i:                                  ; preds = %pci_upstream_bridge.exit.i
  %untrusted.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 49
  %63 = ptrtoint ptr %untrusted.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 5)
  %bf.load.i292 = load i40, ptr %untrusted.i, align 1
  %64 = and i40 %bf.load.i292, 6144
  %65 = icmp eq i40 %64, 0
  br i1 %65, label %land.lhs.true.i.set_pcie_untrusted.exit_crit_edge, label %if.then.i294

land.lhs.true.i.set_pcie_untrusted.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_pcie_untrusted.exit

if.then.i294:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set.i293 = or i40 %bf.load.i.i.i, 4096
  %66 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 5)
  store i40 %bf.set.i293, ptr %is_virtfn.i, align 1
  br label %set_pcie_untrusted.exit

set_pcie_untrusted.exit:                          ; preds = %if.then.i294, %land.lhs.true.i.set_pcie_untrusted.exit_crit_edge, %pci_upstream_bridge.exit.i.set_pcie_untrusted.exit_crit_edge, %pci_physfn.exit.i.i.set_pcie_untrusted.exit_crit_edge
  %current_state = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 30
  %67 = ptrtoint ptr %current_state to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 5, ptr %current_state, align 4
  call void @pci_fixup_device(i32 noundef 0, ptr noundef %dev) #14
  %68 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 5)
  %bf.load.i.i.i297 = load i40, ptr %is_virtfn.i, align 1
  %69 = and i40 %bf.load.i.i.i297, 65536
  %tobool.not.i.i.i298 = icmp eq i40 %69, 0
  br i1 %tobool.not.i.i.i298, label %set_pcie_untrusted.exit.pci_physfn.exit.i.i304_crit_edge, label %if.then.i.i.i299

set_pcie_untrusted.exit.pci_physfn.exit.i.i304_crit_edge: ; preds = %set_pcie_untrusted.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_physfn.exit.i.i304

if.then.i.i.i299:                                 ; preds = %set_pcie_untrusted.exit
  call void @__sanitizer_cov_trace_pc() #16
  %70 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 66
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  br label %pci_physfn.exit.i.i304

pci_physfn.exit.i.i304:                           ; preds = %if.then.i.i.i299, %set_pcie_untrusted.exit.pci_physfn.exit.i.i304_crit_edge
  %dev.addr.0.i.i.i300 = phi ptr [ %72, %if.then.i.i.i299 ], [ %dev, %set_pcie_untrusted.exit.pci_physfn.exit.i.i304_crit_edge ]
  %bus.i.i301 = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i300, i32 0, i32 1
  %73 = ptrtoint ptr %bus.i.i301 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus.i.i301, align 8
  %parent.i.i.i302 = getelementptr inbounds %struct.pci_bus, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %parent.i.i.i302 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %parent.i.i.i302, align 8
  %tobool.not.i5.i.i303 = icmp eq ptr %76, null
  br i1 %tobool.not.i5.i.i303, label %pci_physfn.exit.i.i304.pci_set_removable.exit_crit_edge, label %pci_upstream_bridge.exit.i307

pci_physfn.exit.i.i304.pci_set_removable.exit_crit_edge: ; preds = %pci_physfn.exit.i.i304
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_set_removable.exit

pci_upstream_bridge.exit.i307:                    ; preds = %pci_physfn.exit.i.i304
  %self.i.i305 = getelementptr inbounds %struct.pci_bus, ptr %74, i32 0, i32 4
  %77 = ptrtoint ptr %self.i.i305 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %self.i.i305, align 4
  %tobool.not.i306 = icmp eq ptr %78, null
  br i1 %tobool.not.i306, label %pci_upstream_bridge.exit.i307.pci_set_removable.exit_crit_edge, label %land.lhs.true.i309

pci_upstream_bridge.exit.i307.pci_set_removable.exit_crit_edge: ; preds = %pci_upstream_bridge.exit.i307
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_set_removable.exit

land.lhs.true.i309:                               ; preds = %pci_upstream_bridge.exit.i307
  %external_facing.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 49
  %79 = ptrtoint ptr %external_facing.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 5)
  %bf.load.i308 = load i40, ptr %external_facing.i, align 1
  %80 = and i40 %bf.load.i308, 2048
  %tobool1.not.i = icmp eq i40 %80, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %land.lhs.true.i309.if.then.i310_crit_edge

land.lhs.true.i309.if.then.i310_crit_edge:        ; preds = %land.lhs.true.i309
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i310

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i309
  %removable.i.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44, i32 38
  %81 = ptrtoint ptr %removable.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %removable.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp.i.i = icmp eq i32 %82, 3
  br i1 %cmp.i.i, label %lor.lhs.false.i.if.then.i310_crit_edge, label %lor.lhs.false.i.pci_set_removable.exit_crit_edge

lor.lhs.false.i.pci_set_removable.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_set_removable.exit

lor.lhs.false.i.if.then.i310_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i310

if.then.i310:                                     ; preds = %lor.lhs.false.i.if.then.i310_crit_edge, %land.lhs.true.i309.if.then.i310_crit_edge
  %removable1.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 38
  %83 = ptrtoint ptr %removable1.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %removable1.i.i, align 8
  br label %pci_set_removable.exit

pci_set_removable.exit:                           ; preds = %if.then.i310, %lor.lhs.false.i.pci_set_removable.exit_crit_edge, %pci_upstream_bridge.exit.i307.pci_set_removable.exit_crit_edge, %pci_physfn.exit.i.i304.pci_set_removable.exit_crit_edge
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %84 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %vendor, align 8
  %conv28 = zext i16 %85 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %86 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %device, align 2
  %conv29 = zext i16 %87 to i32
  %88 = ptrtoint ptr %hdr_type7 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %hdr_type7, align 1
  %conv31 = zext i8 %89 to i32
  %90 = ptrtoint ptr %class24 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %class24, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.54, i32 noundef %conv28, i32 noundef %conv29, i32 noundef %conv31, i32 noundef %91) #17
  %92 = ptrtoint ptr %class24 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %class24, align 8
  %shr34 = lshr i32 %93, 8
  %94 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 5)
  %bf.load35 = load i40, ptr %is_virtfn.i, align 1
  %95 = and i40 %bf.load35, 128
  %tobool37.not = icmp eq i40 %95, 0
  br i1 %tobool37.not, label %pci_set_removable.exit.if.end60_crit_edge, label %land.lhs.true

pci_set_removable.exit.if.end60_crit_edge:        ; preds = %pci_set_removable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true:                                    ; preds = %pci_set_removable.exit
  %mmio_always_on = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 33
  %96 = ptrtoint ptr %mmio_always_on to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %bf.load38 = load i32, ptr %mmio_always_on, align 2
  %97 = and i32 %bf.load38, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool41.not = icmp eq i32 %97, 0
  br i1 %tobool41.not, label %if.then42, label %land.lhs.true.if.end60_crit_edge

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then42:                                        ; preds = %land.lhs.true
  %call43 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %cmd) #14
  %98 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %cmd, align 2
  %100 = and i16 %99, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool46.not = icmp eq i16 %100, 0
  br i1 %tobool46.not, label %if.then42.if.end60_crit_edge, label %do.end50

if.then42.if.end60_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

do.end50:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.57) #17
  %101 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %cmd, align 2
  %103 = and i16 %102, -4
  store i16 %103, ptr %cmd, align 2
  %call58 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 4, i16 noundef zeroext %103) #14
  br label %if.end60

if.end60:                                         ; preds = %do.end50, %if.then42.if.end60_crit_edge, %land.lhs.true.if.end60_crit_edge, %pci_set_removable.exit.if.end60_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %orig.i) #14
  %104 = ptrtoint ptr %orig.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -1, ptr %orig.i, align 2, !annotation !424
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %new.i) #14
  %105 = ptrtoint ptr %new.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 -1, ptr %new.i, align 2, !annotation !424
  %call.i312 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %orig.i) #14
  %106 = ptrtoint ptr %orig.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %orig.i, align 2
  %108 = xor i16 %107, 1024
  %call2.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 4, i16 noundef zeroext %108) #14
  %call3.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %new.i) #14
  %109 = ptrtoint ptr %orig.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %orig.i, align 2
  %call4.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 4, i16 noundef zeroext %110) #14
  %111 = ptrtoint ptr %new.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %new.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %112, i16 %108)
  %cmp.not.i.not = icmp eq i16 %112, %108
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %new.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %orig.i) #14
  %113 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 5)
  %bf.load62 = load i40, ptr %is_virtfn.i, align 1
  %bf.shl64 = select i1 %cmp.not.i.not, i40 0, i40 1024
  %bf.clear65 = and i40 %bf.load62, -1025
  %bf.set66 = or i40 %bf.clear65, %bf.shl64
  store i40 %bf.set66, ptr %is_virtfn.i, align 1
  %114 = ptrtoint ptr %hdr_type7 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %hdr_type7, align 1
  %116 = zext i8 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.189)
  switch i8 %115, label %do.end157 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb125
    i8 2, label %sw.bb146
  ]

sw.bb:                                            ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 1540, i32 %shr34)
  %cmp = icmp eq i32 %shr34, 1540
  br i1 %cmp, label %sw.bb.do.end163_crit_edge, label %if.end72

sw.bb.do.end163_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end163

if.end72:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irq.i) #14
  %117 = ptrtoint ptr %irq.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -1, ptr %irq.i, align 1, !annotation !424
  %118 = and i40 %bf.load62, 65536
  %tobool.not.i315 = icmp eq i40 %118, 0
  br i1 %tobool.not.i315, label %if.end.i318, label %if.then.i316

if.then.i316:                                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  %pin.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 24
  %119 = ptrtoint ptr %pin.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %pin.i, align 1
  br label %pci_read_irq.exit

if.end.i318:                                      ; preds = %if.end72
  %call.i317 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 61, ptr noundef nonnull %irq.i) #14
  %120 = ptrtoint ptr %irq.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %irq.i, align 1
  %pin2.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 24
  %122 = ptrtoint ptr %pin2.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %pin2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool3.not.i = icmp eq i8 %121, 0
  br i1 %tobool3.not.i, label %if.end.i318.if.end6.i_crit_edge, label %if.then4.i

if.end.i318.if.end6.i_crit_edge:                  ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #16
  %call5.i = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 60, ptr noundef nonnull %irq.i) #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i318.if.end6.i_crit_edge
  %123 = ptrtoint ptr %irq.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %irq.i, align 1
  %conv.i = zext i8 %124 to i32
  br label %pci_read_irq.exit

pci_read_irq.exit:                                ; preds = %if.end6.i, %if.then.i316
  %conv.sink.i = phi i32 [ %conv.i, %if.end6.i ], [ 0, %if.then.i316 ]
  %irq7.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %125 = ptrtoint ptr %irq7.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv.sink.i, ptr %irq7.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irq.i) #14
  %126 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 5)
  %bf.load.i319 = load i40, ptr %is_virtfn.i, align 1
  %127 = and i40 %bf.load.i319, 65664
  %128 = icmp eq i40 %127, 0
  br i1 %128, label %pci_read_irq.exit.for.body.i324_crit_edge, label %pci_read_irq.exit.pci_read_bases.exit_crit_edge

pci_read_irq.exit.pci_read_bases.exit_crit_edge:  ; preds = %pci_read_irq.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_read_bases.exit

pci_read_irq.exit.for.body.i324_crit_edge:        ; preds = %pci_read_irq.exit
  br label %for.body.i324

for.body.i324:                                    ; preds = %for.body.i324.for.body.i324_crit_edge, %pci_read_irq.exit.for.body.i324_crit_edge
  %pos.031.i = phi i32 [ %inc.i, %for.body.i324.for.body.i324_crit_edge ], [ 0, %pci_read_irq.exit.for.body.i324_crit_edge ]
  %arrayidx.i320 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %pos.031.i
  %shl.i = shl nuw nsw i32 %pos.031.i, 2
  %add.i321 = add nuw nsw i32 %shl.i, 16
  %call.i322 = call i32 @__pci_read_base(ptr noundef %dev, i32 noundef 0, ptr noundef %arrayidx.i320, i32 noundef %add.i321) #14
  %add8.i = add nuw nsw i32 %pos.031.i, 1
  %inc.i = add i32 %add8.i, %call.i322
  %cmp.i323 = icmp ult i32 %inc.i, 6
  br i1 %cmp.i323, label %for.body.i324.for.body.i324_crit_edge, label %for.end.i

for.body.i324.for.body.i324_crit_edge:            ; preds = %for.body.i324
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i324

for.end.i:                                        ; preds = %for.body.i324
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx13.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 6
  %rom_base_reg.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 23
  %129 = ptrtoint ptr %rom_base_reg.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 48, ptr %rom_base_reg.i, align 4
  %flags.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 6, i32 3
  %130 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 287232, ptr %flags.i, align 4
  %call14.i = call i32 @__pci_read_base(ptr noundef %dev, i32 noundef 2, ptr noundef %arrayidx13.i, i32 noundef 48) #14
  br label %pci_read_bases.exit

pci_read_bases.exit:                              ; preds = %for.end.i, %pci_read_irq.exit.pci_read_bases.exit_crit_edge
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %131 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 5)
  %bf.load.i326 = load i40, ptr %is_virtfn.i, align 1
  %132 = and i40 %bf.load.i326, 65536
  %tobool.not.i327 = icmp eq i40 %132, 0
  br i1 %tobool.not.i327, label %if.end.i330, label %if.then.i328

if.then.i328:                                     ; preds = %pci_read_bases.exit
  call void @__sanitizer_cov_trace_pc() #16
  %133 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 66
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 8
  %136 = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 66
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 8
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_sriov, ptr %138, i32 0, i32 18
  %139 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %subsystem_vendor.i, align 2
  %141 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %subsystem_vendor, align 2
  %142 = load ptr, ptr %136, align 8
  %subsystem_device.i = getelementptr inbounds %struct.pci_sriov, ptr %142, i32 0, i32 19
  %143 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %subsystem_device.i, align 4
  %145 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %subsystem_device, align 2
  br label %pci_subsystem_ids.exit

if.end.i330:                                      ; preds = %pci_read_bases.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call.i329 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 44, ptr noundef %subsystem_vendor) #14
  %call1.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 46, ptr noundef %subsystem_device) #14
  br label %pci_subsystem_ids.exit

pci_subsystem_ids.exit:                           ; preds = %if.end.i330, %if.then.i328
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %shr34)
  %cmp73 = icmp eq i32 %shr34, 257
  br i1 %cmp73, label %if.then75, label %pci_subsystem_ids.exit.cleanup_crit_edge

pci_subsystem_ids.exit.cleanup_crit_edge:         ; preds = %pci_subsystem_ids.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then75:                                        ; preds = %pci_subsystem_ids.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %progif) #14
  %146 = ptrtoint ptr %progif to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -1, ptr %progif, align 1, !annotation !424
  %call76 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 9, ptr noundef nonnull %progif) #14
  %147 = ptrtoint ptr %progif to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %progif, align 1
  %149 = and i8 %148, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %cmp79 = icmp eq i8 %149, 0
  br i1 %cmp79, label %if.then81, label %if.then75.if.end97_crit_edge

if.then75.if.end97_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

if.then81:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  %150 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 496, ptr %region, align 4
  %151 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 503, ptr %2, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %152 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 272, ptr %flags, align 4
  %153 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bus, align 8
  call void @pcibios_bus_to_resource(ptr noundef %154, ptr noundef %resource, ptr noundef nonnull %region) #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.60, ptr noundef %resource) #17
  %155 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 1014, ptr %region, align 4
  %156 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 1014, ptr %2, align 4
  %arrayidx90 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %flags91 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 3
  %157 = ptrtoint ptr %flags91 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 272, ptr %flags91, align 4
  %158 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bus, align 8
  call void @pcibios_bus_to_resource(ptr noundef %159, ptr noundef %arrayidx90, ptr noundef nonnull %region) #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.63, ptr noundef %arrayidx90) #17
  br label %if.end97

if.end97:                                         ; preds = %if.then81, %if.then75.if.end97_crit_edge
  %160 = ptrtoint ptr %progif to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %progif, align 1
  %162 = and i8 %161, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %cmp100 = icmp eq i8 %162, 0
  br i1 %cmp100, label %if.then102, label %if.end97.if.end123_crit_edge

if.end97.if.end123_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  %163 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 368, ptr %region, align 4
  %164 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 375, ptr %2, align 4
  %arrayidx106 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2
  %flags107 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2, i32 3
  %165 = ptrtoint ptr %flags107 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 272, ptr %flags107, align 4
  %166 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %bus, align 8
  call void @pcibios_bus_to_resource(ptr noundef %167, ptr noundef %arrayidx106, ptr noundef nonnull %region) #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.66, ptr noundef %arrayidx106) #17
  %168 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 886, ptr %region, align 4
  %169 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 886, ptr %2, align 4
  %arrayidx116 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3
  %flags117 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3, i32 3
  %170 = ptrtoint ptr %flags117 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 272, ptr %flags117, align 4
  %171 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bus, align 8
  call void @pcibios_bus_to_resource(ptr noundef %172, ptr noundef %arrayidx116, ptr noundef nonnull %region) #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.69, ptr noundef %arrayidx116) #17
  br label %if.end123

if.end123:                                        ; preds = %if.then102, %if.end97.if.end123_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %progif) #14
  br label %cleanup

sw.bb125:                                         ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irq.i331) #14
  %173 = ptrtoint ptr %irq.i331 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 -1, ptr %irq.i331, align 1, !annotation !424
  %174 = and i40 %bf.load62, 65536
  %tobool.not.i334 = icmp eq i40 %174, 0
  br i1 %tobool.not.i334, label %if.end.i340, label %if.then.i336

if.then.i336:                                     ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #16
  %pin.i335 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 24
  %175 = ptrtoint ptr %pin.i335 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %pin.i335, align 1
  br label %pci_read_irq.exit347

if.end.i340:                                      ; preds = %sw.bb125
  %call.i337 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 61, ptr noundef nonnull %irq.i331) #14
  %176 = ptrtoint ptr %irq.i331 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %irq.i331, align 1
  %pin2.i338 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 24
  %178 = ptrtoint ptr %pin2.i338 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %pin2.i338, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool3.not.i339 = icmp eq i8 %177, 0
  br i1 %tobool3.not.i339, label %if.end.i340.if.end6.i344_crit_edge, label %if.then4.i342

if.end.i340.if.end6.i344_crit_edge:               ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i344

if.then4.i342:                                    ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #16
  %call5.i341 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 60, ptr noundef nonnull %irq.i331) #14
  br label %if.end6.i344

if.end6.i344:                                     ; preds = %if.then4.i342, %if.end.i340.if.end6.i344_crit_edge
  %179 = ptrtoint ptr %irq.i331 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %irq.i331, align 1
  %conv.i343 = zext i8 %180 to i32
  br label %pci_read_irq.exit347

pci_read_irq.exit347:                             ; preds = %if.end6.i344, %if.then.i336
  %conv.sink.i345 = phi i32 [ %conv.i343, %if.end6.i344 ], [ 0, %if.then.i336 ]
  %irq7.i346 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %181 = ptrtoint ptr %irq7.i346 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %conv.sink.i345, ptr %irq7.i346, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irq.i331) #14
  %182 = ptrtoint ptr %class24 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %class24, align 8
  %and127 = and i32 %183, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and127)
  %cmp128 = icmp eq i32 %and127, 1
  %184 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %184, i32 5)
  %bf.load130 = load i40, ptr %is_virtfn.i, align 1
  %bf.shl132 = select i1 %cmp128, i40 -549755813888, i40 0
  %bf.clear133 = and i40 %bf.load130, 549755813887
  %bf.set134 = or i40 %bf.shl132, %bf.clear133
  store i40 %bf.set134, ptr %is_virtfn.i, align 1
  %185 = and i40 %bf.load130, 65664
  %186 = icmp eq i40 %185, 0
  br i1 %186, label %pci_read_irq.exit347.for.body.i359_crit_edge, label %pci_read_irq.exit347.pci_read_bases.exit365_crit_edge

pci_read_irq.exit347.pci_read_bases.exit365_crit_edge: ; preds = %pci_read_irq.exit347
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_read_bases.exit365

pci_read_irq.exit347.for.body.i359_crit_edge:     ; preds = %pci_read_irq.exit347
  br label %for.body.i359

for.body.i359:                                    ; preds = %for.body.i359.for.body.i359_crit_edge, %pci_read_irq.exit347.for.body.i359_crit_edge
  %pos.031.i351 = phi i32 [ %inc.i357, %for.body.i359.for.body.i359_crit_edge ], [ 0, %pci_read_irq.exit347.for.body.i359_crit_edge ]
  %arrayidx.i352 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %pos.031.i351
  %shl.i353 = shl nuw nsw i32 %pos.031.i351, 2
  %add.i354 = add nuw nsw i32 %shl.i353, 16
  %call.i355 = call i32 @__pci_read_base(ptr noundef %dev, i32 noundef 0, ptr noundef %arrayidx.i352, i32 noundef %add.i354) #14
  %add8.i356 = add nuw nsw i32 %pos.031.i351, 1
  %inc.i357 = add i32 %add8.i356, %call.i355
  %cmp.i358 = icmp ult i32 %inc.i357, 2
  br i1 %cmp.i358, label %for.body.i359.for.body.i359_crit_edge, label %for.end.i360

for.body.i359.for.body.i359_crit_edge:            ; preds = %for.body.i359
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i359

for.end.i360:                                     ; preds = %for.body.i359
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx13.i361 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 6
  %rom_base_reg.i362 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 23
  %187 = ptrtoint ptr %rom_base_reg.i362 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 56, ptr %rom_base_reg.i362, align 4
  %flags.i363 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 6, i32 3
  %188 = ptrtoint ptr %flags.i363 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 287232, ptr %flags.i363, align 4
  %call14.i364 = call i32 @__pci_read_base(ptr noundef %dev, i32 noundef 2, ptr noundef %arrayidx13.i361, i32 noundef 56) #14
  br label %pci_read_bases.exit365

pci_read_bases.exit365:                           ; preds = %for.end.i360, %pci_read_irq.exit347.pci_read_bases.exit365_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %io.i) #14
  %189 = ptrtoint ptr %io.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 -1, ptr %io.i, align 2, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmem.i) #14
  %190 = ptrtoint ptr %pmem.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -1, ptr %pmem.i, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %191 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 -1, ptr %tmp.i, align 4, !annotation !424
  %call.i366 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 28, ptr noundef nonnull %io.i) #14
  %192 = ptrtoint ptr %io.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %io.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %193)
  %tobool.not.i367 = icmp eq i16 %193, 0
  br i1 %tobool.not.i367, label %if.end.i371, label %pci_read_bases.exit365.if.then5.i_crit_edge

pci_read_bases.exit365.if.then5.i_crit_edge:      ; preds = %pci_read_bases.exit365
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5.i

if.end.i371:                                      ; preds = %pci_read_bases.exit365
  %call1.i368 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 28, i16 noundef zeroext -7952) #14
  %call2.i369 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 28, ptr noundef nonnull %io.i) #14
  %call3.i370 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 28, i16 noundef zeroext 0) #14
  %194 = ptrtoint ptr %io.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %.pr.i = load i16, ptr %io.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i)
  %tobool4.not.i = icmp eq i16 %.pr.i, 0
  br i1 %tobool4.not.i, label %if.end.i371.if.end6.i375_crit_edge, label %if.end.i371.if.then5.i_crit_edge

if.end.i371.if.then5.i_crit_edge:                 ; preds = %if.end.i371
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5.i

if.end.i371.if.end6.i375_crit_edge:               ; preds = %if.end.i371
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i375

if.then5.i:                                       ; preds = %if.end.i371.if.then5.i_crit_edge, %pci_read_bases.exit365.if.then5.i_crit_edge
  %195 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %195, i32 5)
  %bf.load.i372 = load i40, ptr %is_virtfn.i, align 1
  %bf.set.i373 = or i40 %bf.load.i372, 274877906944
  store i40 %bf.set.i373, ptr %is_virtfn.i, align 1
  br label %if.end6.i375

if.end6.i375:                                     ; preds = %if.then5.i, %if.end.i371.if.end6.i375_crit_edge
  %196 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4113, i16 %197)
  %cmp.i374 = icmp eq i16 %197, 4113
  br i1 %cmp.i374, label %land.lhs.true.i376, label %if.end6.i375.if.end12.i_crit_edge

if.end6.i375.if.end12.i_crit_edge:                ; preds = %if.end6.i375
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

land.lhs.true.i376:                               ; preds = %if.end6.i375
  %198 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %199)
  %cmp9.i = icmp eq i16 %199, 1
  br i1 %cmp9.i, label %land.lhs.true.i376.pci_read_bridge_windows.exit_crit_edge, label %land.lhs.true.i376.if.end12.i_crit_edge

land.lhs.true.i376.if.end12.i_crit_edge:          ; preds = %land.lhs.true.i376
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

land.lhs.true.i376.pci_read_bridge_windows.exit_crit_edge: ; preds = %land.lhs.true.i376
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_read_bridge_windows.exit

if.end12.i:                                       ; preds = %land.lhs.true.i376.if.end12.i_crit_edge, %if.end6.i375.if.end12.i_crit_edge
  %call13.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 36, ptr noundef nonnull %pmem.i) #14
  %200 = ptrtoint ptr %pmem.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %pmem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool14.not.i = icmp eq i32 %201, 0
  br i1 %tobool14.not.i, label %if.end19.i, label %if.end12.i.if.end22.i_crit_edge

if.end12.i.if.end22.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

if.end19.i:                                       ; preds = %if.end12.i
  %call16.i = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 36, i32 noundef -2031632) #14
  %call17.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 36, ptr noundef nonnull %pmem.i) #14
  %call18.i = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 36, i32 noundef 0) #14
  %202 = ptrtoint ptr %pmem.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %.pr59.i = load i32, ptr %pmem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr59.i)
  %tobool20.not.i = icmp eq i32 %.pr59.i, 0
  br i1 %tobool20.not.i, label %if.end19.i.pci_read_bridge_windows.exit_crit_edge, label %if.end19.i.if.end22.i_crit_edge

if.end19.i.if.end22.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

if.end19.i.pci_read_bridge_windows.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_read_bridge_windows.exit

if.end22.i:                                       ; preds = %if.end19.i.if.end22.i_crit_edge, %if.end12.i.if.end22.i_crit_edge
  %203 = phi i32 [ %.pr59.i, %if.end19.i.if.end22.i_crit_edge ], [ %201, %if.end12.i.if.end22.i_crit_edge ]
  %204 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 5)
  %bf.load23.i = load i40, ptr %is_virtfn.i, align 1
  %bf.set25.i = or i40 %bf.load23.i, 137438953472
  store i40 %bf.set25.i, ptr %is_virtfn.i, align 1
  %and.i = and i32 %203, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp26.i = icmp eq i32 %and.i, 1
  br i1 %cmp26.i, label %if.then28.i, label %if.end22.i.pci_read_bridge_windows.exit_crit_edge

if.end22.i.pci_read_bridge_windows.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_read_bridge_windows.exit

if.then28.i:                                      ; preds = %if.end22.i
  %call29.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 40, ptr noundef nonnull %pmem.i) #14
  %call30.i = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 40, i32 noundef -1) #14
  %call31.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 40, ptr noundef nonnull %tmp.i) #14
  %205 = ptrtoint ptr %pmem.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %pmem.i, align 4
  %call32.i = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 40, i32 noundef %206) #14
  %207 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool33.not.i = icmp eq i32 %208, 0
  br i1 %tobool33.not.i, label %if.then28.i.pci_read_bridge_windows.exit_crit_edge, label %if.then34.i

if.then28.i.pci_read_bridge_windows.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_read_bridge_windows.exit

if.then34.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #16
  %209 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 5)
  %bf.load35.i = load i40, ptr %is_virtfn.i, align 1
  %bf.set37.i = or i40 %bf.load35.i, 68719476736
  store i40 %bf.set37.i, ptr %is_virtfn.i, align 1
  br label %pci_read_bridge_windows.exit

pci_read_bridge_windows.exit:                     ; preds = %if.then34.i, %if.then28.i.pci_read_bridge_windows.exit_crit_edge, %if.end22.i.pci_read_bridge_windows.exit_crit_edge, %if.end19.i.pci_read_bridge_windows.exit_crit_edge, %land.lhs.true.i376.pci_read_bridge_windows.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmem.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %io.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32.i) #14
  %210 = ptrtoint ptr %reg32.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 -1, ptr %reg32.i, align 4, !annotation !424
  %call.i377 = call i32 @pcie_capability_read_dword(ptr noundef %dev, i32 noundef 20, ptr noundef nonnull %reg32.i) #14
  %211 = ptrtoint ptr %reg32.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %reg32.i, align 4
  %and.i378 = and i32 %212, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i378)
  %tobool.not.i379 = icmp eq i32 %and.i378, 0
  br i1 %tobool.not.i379, label %pci_read_bridge_windows.exit.set_pcie_hotplug_bridge.exit_crit_edge, label %if.then.i382

pci_read_bridge_windows.exit.set_pcie_hotplug_bridge.exit_crit_edge: ; preds = %pci_read_bridge_windows.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_pcie_hotplug_bridge.exit

if.then.i382:                                     ; preds = %pci_read_bridge_windows.exit
  call void @__sanitizer_cov_trace_pc() #16
  %213 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %213, i32 5)
  %bf.load.i380 = load i40, ptr %is_virtfn.i, align 1
  %bf.set.i381 = or i40 %bf.load.i380, 32768
  store i40 %bf.set.i381, ptr %is_virtfn.i, align 1
  br label %set_pcie_hotplug_bridge.exit

set_pcie_hotplug_bridge.exit:                     ; preds = %if.then.i382, %pci_read_bridge_windows.exit.set_pcie_hotplug_bridge.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32.i) #14
  %call136 = call zeroext i8 @pci_find_capability(ptr noundef %dev, i32 noundef 13) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call136)
  %tobool138.not = icmp eq i8 %call136, 0
  br i1 %tobool138.not, label %set_pcie_hotplug_bridge.exit.cleanup_crit_edge, label %if.then139

set_pcie_hotplug_bridge.exit.cleanup_crit_edge:   ; preds = %set_pcie_hotplug_bridge.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then139:                                       ; preds = %set_pcie_hotplug_bridge.exit
  call void @__sanitizer_cov_trace_pc() #16
  %conv137 = zext i8 %call136 to i32
  %add = add nuw nsw i32 %conv137, 4
  %subsystem_vendor140 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %call141 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add, ptr noundef %subsystem_vendor140) #14
  %add142 = add nuw nsw i32 %conv137, 6
  %subsystem_device143 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %call144 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add142, ptr noundef %subsystem_device143) #14
  br label %cleanup

sw.bb146:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 1543, i32 %shr34)
  %cmp147.not = icmp eq i32 %shr34, 1543
  br i1 %cmp147.not, label %if.end150, label %sw.bb146.do.end163_crit_edge

sw.bb146.do.end163_crit_edge:                     ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end163

if.end150:                                        ; preds = %sw.bb146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irq.i384) #14
  %214 = ptrtoint ptr %irq.i384 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -1, ptr %irq.i384, align 1, !annotation !424
  %215 = and i40 %bf.load62, 65536
  %tobool.not.i387 = icmp eq i40 %215, 0
  br i1 %tobool.not.i387, label %if.end.i393, label %if.then.i389

if.then.i389:                                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  %pin.i388 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 24
  %216 = ptrtoint ptr %pin.i388 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %pin.i388, align 1
  br label %pci_read_irq.exit400

if.end.i393:                                      ; preds = %if.end150
  %call.i390 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 61, ptr noundef nonnull %irq.i384) #14
  %217 = ptrtoint ptr %irq.i384 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %irq.i384, align 1
  %pin2.i391 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 24
  %219 = ptrtoint ptr %pin2.i391 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %pin2.i391, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool3.not.i392 = icmp eq i8 %218, 0
  br i1 %tobool3.not.i392, label %if.end.i393.if.end6.i397_crit_edge, label %if.then4.i395

if.end.i393.if.end6.i397_crit_edge:               ; preds = %if.end.i393
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i397

if.then4.i395:                                    ; preds = %if.end.i393
  call void @__sanitizer_cov_trace_pc() #16
  %call5.i394 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 60, ptr noundef nonnull %irq.i384) #14
  br label %if.end6.i397

if.end6.i397:                                     ; preds = %if.then4.i395, %if.end.i393.if.end6.i397_crit_edge
  %220 = ptrtoint ptr %irq.i384 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %irq.i384, align 1
  %conv.i396 = zext i8 %221 to i32
  br label %pci_read_irq.exit400

pci_read_irq.exit400:                             ; preds = %if.end6.i397, %if.then.i389
  %conv.sink.i398 = phi i32 [ %conv.i396, %if.end6.i397 ], [ 0, %if.then.i389 ]
  %irq7.i399 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %222 = ptrtoint ptr %irq7.i399 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %conv.sink.i398, ptr %irq7.i399, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irq.i384) #14
  %223 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %223, i32 5)
  %bf.load.i402 = load i40, ptr %is_virtfn.i, align 1
  %224 = and i40 %bf.load.i402, 65664
  %225 = icmp eq i40 %224, 0
  br i1 %225, label %for.body.i412.preheader, label %pci_read_irq.exit400.pci_read_bases.exit414_crit_edge

pci_read_irq.exit400.pci_read_bases.exit414_crit_edge: ; preds = %pci_read_irq.exit400
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_read_bases.exit414

for.body.i412.preheader:                          ; preds = %pci_read_irq.exit400
  %arrayidx.i405 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0
  br label %for.body.i412

for.body.i412:                                    ; preds = %for.body.i412.for.body.i412_crit_edge, %for.body.i412.preheader
  %call.i408 = call i32 @__pci_read_base(ptr noundef %dev, i32 noundef 0, ptr noundef %arrayidx.i405, i32 noundef 16) #14
  %cmp.i411 = icmp eq i32 %call.i408, -1
  br i1 %cmp.i411, label %for.body.i412.for.body.i412_crit_edge, label %for.body.i412.pci_read_bases.exit414_crit_edge

for.body.i412.pci_read_bases.exit414_crit_edge:   ; preds = %for.body.i412
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_read_bases.exit414

for.body.i412.for.body.i412_crit_edge:            ; preds = %for.body.i412
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i412

pci_read_bases.exit414:                           ; preds = %for.body.i412.pci_read_bases.exit414_crit_edge, %pci_read_irq.exit400.pci_read_bases.exit414_crit_edge
  %subsystem_vendor151 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %call152 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 64, ptr noundef %subsystem_vendor151) #14
  %subsystem_device153 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %call154 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 66, ptr noundef %subsystem_device153) #14
  br label %cleanup

do.end157:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %conv69 = zext i8 %115 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.72, i32 noundef %conv69) #17
  call void @pci_release_of_node(ptr noundef %dev) #14
  br label %cleanup

do.end163:                                        ; preds = %sw.bb146.do.end163_crit_edge, %sw.bb.do.end163_crit_edge
  %226 = ptrtoint ptr %class24 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %class24, align 8
  %conv167 = zext i8 %115 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.75, i32 noundef %227, i32 noundef %conv167) #17
  %228 = ptrtoint ptr %class24 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %class24, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end163, %do.end157, %pci_read_bases.exit414, %if.then139, %set_pcie_hotplug_bridge.exit.cleanup_crit_edge, %if.end123, %pci_subsystem_ids.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end157 ], [ 0, %set_pcie_hotplug_bridge.exit.cleanup_crit_edge ], [ 0, %if.then139 ], [ 0, %pci_subsystem_ids.exit.cleanup_crit_edge ], [ 0, %if.end123 ], [ 0, %do.end163 ], [ 0, %pci_read_bases.exit414 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_of_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_assign_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_fixup_device(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_of_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_configure_extended_tags(ptr noundef %dev, ptr nocapture readnone %ign) local_unnamed_addr #0 align 64 {
entry:
  %cap = alloca i32, align 4
  %ctl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap) #14
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cap, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctl) #14
  %1 = ptrtoint ptr %ctl to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %ctl, align 2, !annotation !424
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @pcie_capability_read_dword(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %cap) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cap, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call7 = call i32 @pcie_capability_read_word(ptr noundef %dev, i32 noundef 8, ptr noundef nonnull %ctl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %call11 = call ptr @pci_find_host_bridge(ptr noundef %7) #14
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %no_ext_tags = getelementptr inbounds %struct.pci_host_bridge, ptr %call11, i32 0, i32 13
  %8 = ptrtoint ptr %no_ext_tags to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %no_ext_tags, align 8
  %9 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool15.not = icmp eq i16 %9, 0
  %10 = ptrtoint ptr %ctl to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ctl, align 2
  %12 = and i16 %11, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool26.not = icmp eq i16 %12, 0
  br i1 %tobool15.not, label %if.end23, label %if.then16

if.then16:                                        ; preds = %if.end14
  br i1 %tobool26.not, label %if.then16.cleanup_crit_edge, label %do.end

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.77) #17
  %call.i = call i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef 8, i16 noundef zeroext 256, i16 noundef zeroext 0) #14
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  br i1 %tobool26.not, label %do.end30, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31, ptr noundef nonnull @.str.80) #17
  %call.i46 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef 8, i16 noundef zeroext 0, i16 noundef zeroext 256) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end23.cleanup_crit_edge, %do.end, %if.then16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctl) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pcie_relaxed_ordering_enabled(ptr noundef %dev) #0 align 64 {
entry:
  %v = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v) #14
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %v, align 2, !annotation !424
  %call = call i32 @pcie_capability_read_word(ptr noundef %dev, i32 noundef 8, ptr noundef nonnull %v) #14
  %1 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %v, align 2
  %3 = and i16 %2, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool = icmp ne i16 %3, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v) #14
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_alloc_dev(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2040) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %type = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i, i32 0, i32 44, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pci_dev_type, ptr %type, align 4
  %call2 = tail call ptr @pci_bus_get(ptr noundef %bus) #14
  %bus3 = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %bus3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %bus3, align 8
  %msi_lock = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i, i32 0, i32 61
  tail call void @__raw_spin_lock_init(ptr noundef %msi_lock, ptr noundef nonnull @.str.82, ptr noundef nonnull @pci_alloc_dev.__key, i16 noundef signext 2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_bus_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_bus_generic_read_dev_vendor_id(ptr noundef %bus, i32 noundef %devfn, ptr noundef %l, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_bus_read_config_dword(ptr noundef %bus, i32 noundef %devfn, i32 noundef 0, ptr noundef %l) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %1, label %if.end7 [
    i32 -1, label %if.end.return_crit_edge
    i32 0, label %if.end.return_crit_edge57
    i32 65535, label %if.end.return_crit_edge58
    i32 -65536, label %if.end.return_crit_edge59
  ]

if.end.return_crit_edge59:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.return_crit_edge58:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.return_crit_edge57:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end7:                                          ; preds = %if.end
  %and.i = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %if.end.i, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not.i = icmp eq i32 %timeout, 0
  br i1 %tobool.not.i, label %if.end.i.return_crit_edge, label %while.cond.preheader.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

while.cond.preheader.i:                           ; preds = %if.end.i
  %domain_nr.i69.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 16
  %number17.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %3 = lshr i32 %devfn, 3
  %and20.i = and i32 %3, 31
  %and21.i = and i32 %devfn, 7
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end24.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %delay.0.i = phi i32 [ %mul.i, %if.end24.i.while.cond.i_crit_edge ], [ 1, %while.cond.preheader.i ]
  %4 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l, align 4
  %and.i67.i = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i67.i)
  %cmp.i68.i = icmp eq i32 %and.i67.i, 1
  br i1 %cmp.i68.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %delay.0.i, i32 %timeout)
  %cmp.i20 = icmp sgt i32 %delay.0.i, %timeout
  br i1 %cmp.i20, label %while.body.i.cleanup.sink.split.i_crit_edge, label %if.end8.i

while.body.i.cleanup.sink.split.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i

if.end8.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %delay.0.i)
  %cmp9.i = icmp sgt i32 %delay.0.i, 999
  br i1 %cmp9.i, label %do.end14.i, label %if.end8.i.if.end24.i_crit_edge

if.end8.i.if.end24.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i

do.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %domain_nr.i69.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %domain_nr.i69.i, align 8
  %8 = ptrtoint ptr %number17.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %number17.i, align 4
  %conv18.i = zext i8 %9 to i32
  %sub22.i = add nsw i32 %delay.0.i, -1
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %7, i32 noundef %conv18.i, i32 noundef %and20.i, i32 noundef %and21.i, i32 noundef %sub22.i) #17
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end14.i, %if.end8.i.if.end24.i_crit_edge
  tail call void @msleep(i32 noundef %delay.0.i) #14
  %mul.i = shl i32 %delay.0.i, 1
  %call25.i = tail call i32 @pci_bus_read_config_dword(ptr noundef %bus, i32 noundef %devfn, i32 noundef 0, ptr noundef %l) #14
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.while.cond.i_crit_edge, label %if.end24.i.return_crit_edge

if.end24.i.return_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end24.i.while.cond.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %delay.0.i)
  %cmp29.i = icmp sgt i32 %delay.0.i, 999
  br i1 %cmp29.i, label %while.end.i.cleanup.sink.split.i_crit_edge, label %while.end.i.return_crit_edge

while.end.i.return_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

while.end.i.cleanup.sink.split.i_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %while.end.i.cleanup.sink.split.i_crit_edge, %while.body.i.cleanup.sink.split.i_crit_edge
  %.str.137.sink.i = phi ptr [ @.str.137, %while.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.131, %while.body.i.cleanup.sink.split.i_crit_edge ]
  %10 = xor i1 %cmp.i68.i, true
  %11 = ptrtoint ptr %domain_nr.i69.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %domain_nr.i69.i, align 8
  %13 = ptrtoint ptr %number17.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %number17.i, align 4
  %conv38.i = zext i8 %14 to i32
  %sub42.i = add i32 %delay.0.i, -1
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.137.sink.i, i32 noundef %12, i32 noundef %conv38.i, i32 noundef %and20.i, i32 noundef %and21.i, i32 noundef %sub42.i) #17
  br label %return

return:                                           ; preds = %cleanup.sink.split.i, %while.end.i.return_crit_edge, %if.end24.i.return_crit_edge, %if.end.i.return_crit_edge, %if.end7.return_crit_edge, %if.end.return_crit_edge, %if.end.return_crit_edge57, %if.end.return_crit_edge58, %if.end.return_crit_edge59, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end.return_crit_edge57 ], [ false, %if.end.return_crit_edge58 ], [ false, %if.end.return_crit_edge59 ], [ true, %if.end7.return_crit_edge ], [ false, %if.end.i.return_crit_edge ], [ true, %while.end.i.return_crit_edge ], [ %10, %cleanup.sink.split.i ], [ false, %if.end24.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_read_config_dword(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_bus_read_dev_vendor_id(ptr noundef %bus, i32 noundef %devfn, ptr noundef %l, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %self = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4381, i16 %3)
  %cmp = icmp eq i16 %3, 4381
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32587, i16 %5)
  %cmp4 = icmp eq i16 %5, -32587
  br i1 %cmp4, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @pci_idt_bus_quirk(ptr noundef %bus, i32 noundef %devfn, ptr noundef %l, i32 noundef %timeout) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6 = icmp ne i32 %call, 0
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call7 = tail call zeroext i1 @pci_bus_generic_read_dev_vendor_id(ptr noundef %bus, i32 noundef %devfn, ptr noundef %l, i32 noundef %timeout)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %tobool6, %if.then ], [ %call7, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_idt_bus_quirk(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_report_downtraining(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %2 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %4 = lshr i16 %3, 4
  %5 = and i16 %4, 15
  %6 = zext i16 %5 to i32
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %6, label %if.end.return_crit_edge [
    i32 0, label %if.end.if.end8_crit_edge
    i32 1, label %if.end.if.end8_crit_edge20
    i32 5, label %if.end.if.end8_crit_edge21
  ]

if.end.if.end8_crit_edge21:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end.if.end8_crit_edge20:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.end.if.end8_crit_edge20, %if.end.if.end8_crit_edge21
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn, align 4
  %and = and i32 %9, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9.not = icmp eq i32 %and, 0
  br i1 %cmp9.not, label %lor.lhs.false, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false:                                    ; preds = %if.end8
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %10 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %10, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %11 = and i40 %bf.load, 65536
  %tobool.not = icmp eq i40 %11, 0
  br i1 %tobool.not, label %if.end11, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__pcie_print_link_status(ptr noundef %dev, i1 noundef zeroext false) #14
  br label %return

return:                                           ; preds = %if.end11, %lor.lhs.false.return_crit_edge, %if.end8.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pcie_print_link_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_device_add(ptr noundef %dev, ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %control.i.i = alloca i16, align 2
  %cap.i28.i = alloca i32, align 4
  %cap.i.i = alloca i32, align 4
  %ctl.i.i = alloca i32, align 4
  %v.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %is_virtfn.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load.i.i.i.i = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %1 = and i40 %bf.load.i.i.i.i, 65536
  %tobool.not.i.i.i.i = icmp eq i40 %1, 0
  br i1 %tobool.not.i.i.i.i, label %entry.pci_physfn.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

entry.pci_physfn.exit.i.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_physfn.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 66
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  br label %pci_physfn.exit.i.i.i

pci_physfn.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %entry.pci_physfn.exit.i.i.i_crit_edge
  %dev.addr.0.i.i.i.i = phi ptr [ %4, %if.then.i.i.i.i ], [ %dev, %entry.pci_physfn.exit.i.i.i_crit_edge ]
  %bus.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i.i.i, align 8
  %parent.i.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i.i.i.i, align 8
  %tobool.not.i5.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i5.i.i.i, label %pci_physfn.exit.i.i.i.pci_upstream_bridge.exit.i.i_crit_edge, label %if.end.i.i.i

pci_physfn.exit.i.i.i.pci_upstream_bridge.exit.i.i_crit_edge: ; preds = %pci_physfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_upstream_bridge.exit.i.i

if.end.i.i.i:                                     ; preds = %pci_physfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %self.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %self.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %self.i.i.i, align 4
  br label %pci_upstream_bridge.exit.i.i

pci_upstream_bridge.exit.i.i:                     ; preds = %if.end.i.i.i, %pci_physfn.exit.i.i.i.pci_upstream_bridge.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %10, %if.end.i.i.i ], [ null, %pci_physfn.exit.i.i.i.pci_upstream_bridge.exit.i.i_crit_edge ]
  %pcie_cap.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.not117.i.i = icmp eq i8 %12, 0
  %tobool.not.i.i.not.i.i = xor i1 %tobool.not.i.i.i.i, true
  %brmerge.i.i = select i1 %tobool.i.not117.i.i, i1 true, i1 %tobool.not.i.i.not.i.i
  br i1 %brmerge.i.i, label %pci_upstream_bridge.exit.i.i.pci_configure_mps.exit.i_crit_edge, label %if.end3.i.i

pci_upstream_bridge.exit.i.i.pci_configure_mps.exit.i_crit_edge: ; preds = %pci_upstream_bridge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_mps.exit.i

if.end3.i.i:                                      ; preds = %pci_upstream_bridge.exit.i.i
  %pcie_flags_reg.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %13 = ptrtoint ptr %pcie_flags_reg.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pcie_flags_reg.i.i.i.i, align 2
  %15 = and i16 %14, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 144, i16 %15)
  %cmp.i.i = icmp eq i16 %15, 144
  br i1 %cmp.i.i, label %if.then5.i.i, label %if.end16.i.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcie_bus_config to i32))
  %16 = load i32, ptr @pcie_bus_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp6.i.i = icmp eq i32 %16, 4
  br i1 %cmp6.i.i, label %if.then5.i.i.if.end10.i.i_crit_edge, label %if.else.i.i

if.then5.i.i.if.end10.i.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pcie_mpss.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 22
  %17 = ptrtoint ptr %pcie_mpss.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load8.i.i = load i8, ptr %pcie_mpss.i.i, align 1
  %bf.lshr9.i.i = lshr i8 %bf.load8.i.i, 5
  %conv.i.i = zext i8 %bf.lshr9.i.i to i32
  %shl.i.i = shl nuw nsw i32 128, %conv.i.i
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else.i.i, %if.then5.i.i.if.end10.i.i_crit_edge
  %mps.0.i.i = phi i32 [ %shl.i.i, %if.else.i.i ], [ 128, %if.then5.i.i.if.end10.i.i_crit_edge ]
  %call11.i.i = tail call i32 @pcie_set_mps(ptr noundef %dev, i32 noundef %mps.0.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end10.i.i.pci_configure_mps.exit.i_crit_edge, label %do.end.i.i

if.end10.i.i.pci_configure_mps.exit.i_crit_edge:  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_mps.exit.i

do.end.i.i:                                       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev14.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev14.i.i, ptr noundef nonnull @.str.139, i32 noundef %mps.0.i.i) #17
  br label %pci_configure_mps.exit.i

if.end16.i.i:                                     ; preds = %if.end3.i.i
  %tobool17.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool17.not.i.i, label %if.end16.i.i.pci_configure_mps.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end16.i.i.pci_configure_mps.exit.i_crit_edge:  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_mps.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end16.i.i
  %pcie_cap.i.i113.i.i = getelementptr inbounds %struct.pci_dev, ptr %retval.0.i.i.i, i32 0, i32 19
  %18 = ptrtoint ptr %pcie_cap.i.i113.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pcie_cap.i.i113.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.i114.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool.i114.not.i.i, label %lor.lhs.false.i.i.pci_configure_mps.exit.i_crit_edge, label %if.end20.i.i

lor.lhs.false.i.i.pci_configure_mps.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_mps.exit.i

if.end20.i.i:                                     ; preds = %lor.lhs.false.i.i
  %call21.i.i = tail call i32 @pcie_get_mps(ptr noundef %dev) #14
  %call22.i.i = tail call i32 @pcie_get_mps(ptr noundef nonnull %retval.0.i.i.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call21.i.i, i32 %call22.i.i)
  %cmp23.i.i = icmp eq i32 %call21.i.i, %call22.i.i
  br i1 %cmp23.i.i, label %if.end20.i.i.pci_configure_mps.exit.i_crit_edge, label %if.end26.i.i

if.end20.i.i.pci_configure_mps.exit.i_crit_edge:  ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_mps.exit.i

if.end26.i.i:                                     ; preds = %if.end20.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcie_bus_config to i32))
  %20 = load i32, ptr @pcie_bus_config, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %20, label %if.end26.i.i.pci_configure_mps.exit.i_crit_edge [
    i32 0, label %do.end32.i.i
    i32 1, label %if.end39.i.i
  ]

if.end26.i.i.pci_configure_mps.exit.i_crit_edge:  ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_mps.exit.i

do.end32.i.i:                                     ; preds = %if.end26.i.i
  %dev33.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %retval.0.i.i.i, i32 0, i32 44, i32 3
  %22 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i115.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i115.i.i, label %if.end.i.i.i.i, label %do.end32.i.i.pci_name.exit.i.i_crit_edge

do.end32.i.i.pci_name.exit.i.i_crit_edge:         ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %retval.0.i.i.i, i32 0, i32 44
  %24 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i.i, align 4
  br label %pci_name.exit.i.i

pci_name.exit.i.i:                                ; preds = %if.end.i.i.i.i, %do.end32.i.i.pci_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %25, %if.end.i.i.i.i ], [ %23, %do.end32.i.i.pci_name.exit.i.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev33.i.i, ptr noundef nonnull @.str.142, i32 noundef %call21.i.i, ptr noundef %retval.0.i.i.i.i, i32 noundef %call22.i.i) #17
  br label %pci_configure_mps.exit.i

if.end39.i.i:                                     ; preds = %if.end26.i.i
  %pcie_mpss40.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 22
  %26 = ptrtoint ptr %pcie_mpss40.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load41.i.i = load i8, ptr %pcie_mpss40.i.i, align 1
  %bf.lshr42.i.i = lshr i8 %bf.load41.i.i, 5
  %conv43.i.i = zext i8 %bf.lshr42.i.i to i32
  %shl44.i.i = shl nuw nsw i32 128, %conv43.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl44.i.i, i32 %call22.i.i)
  %cmp45.i.i = icmp slt i32 %shl44.i.i, %call22.i.i
  br i1 %cmp45.i.i, label %land.lhs.true.i.i, label %if.end39.i.i.if.end62.i.i_crit_edge

if.end39.i.i.if.end62.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62.i.i

land.lhs.true.i.i:                                ; preds = %if.end39.i.i
  %pcie_flags_reg.i.i116.i.i = getelementptr inbounds %struct.pci_dev, ptr %retval.0.i.i.i, i32 0, i32 25
  %27 = ptrtoint ptr %pcie_flags_reg.i.i116.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pcie_flags_reg.i.i116.i.i, align 2
  %29 = and i16 %28, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %29)
  %cmp48.i.i = icmp eq i16 %29, 64
  br i1 %cmp48.i.i, label %if.then50.i.i, label %land.lhs.true.i.i.if.end62.i.i_crit_edge

land.lhs.true.i.i.if.end62.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62.i.i

if.then50.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call51.i.i = tail call i32 @pcie_set_mps(ptr noundef nonnull %retval.0.i.i.i, i32 noundef %shl44.i.i) #14
  %dev55.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %pcie_mpss56.i.i = getelementptr inbounds %struct.pci_dev, ptr %retval.0.i.i.i, i32 0, i32 22
  %30 = ptrtoint ptr %pcie_mpss56.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load57.i.i = load i8, ptr %pcie_mpss56.i.i, align 1
  %bf.lshr58.i.i = lshr i8 %bf.load57.i.i, 5
  %conv59.i.i = zext i8 %bf.lshr58.i.i to i32
  %shl60.i.i = shl nuw nsw i32 128, %conv59.i.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev55.i.i, ptr noundef nonnull @.str.145, i32 noundef %shl44.i.i, i32 noundef %call22.i.i, i32 noundef %shl60.i.i) #17
  %call61.i.i = tail call i32 @pcie_get_mps(ptr noundef nonnull %retval.0.i.i.i) #14
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.then50.i.i, %land.lhs.true.i.i.if.end62.i.i_crit_edge, %if.end39.i.i.if.end62.i.i_crit_edge
  %p_mps.0.i.i = phi i32 [ %call61.i.i, %if.then50.i.i ], [ %call22.i.i, %land.lhs.true.i.i.if.end62.i.i_crit_edge ], [ %call22.i.i, %if.end39.i.i.if.end62.i.i_crit_edge ]
  %call63.i.i = tail call i32 @pcie_set_mps(ptr noundef %dev, i32 noundef %p_mps.0.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i.i)
  %tobool64.not.i.i = icmp eq i32 %call63.i.i, 0
  %dev74.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br i1 %tobool64.not.i.i, label %do.end73.i.i, label %do.end68.i.i

do.end68.i.i:                                     ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev74.i.i, ptr noundef nonnull @.str.139, i32 noundef %p_mps.0.i.i) #17
  br label %pci_configure_mps.exit.i

do.end73.i.i:                                     ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev74.i.i, ptr noundef nonnull @.str.150, i32 noundef %p_mps.0.i.i, i32 noundef %call21.i.i, i32 noundef %shl44.i.i) #17
  br label %pci_configure_mps.exit.i

pci_configure_mps.exit.i:                         ; preds = %do.end73.i.i, %do.end68.i.i, %pci_name.exit.i.i, %if.end26.i.i.pci_configure_mps.exit.i_crit_edge, %if.end20.i.i.pci_configure_mps.exit.i_crit_edge, %lor.lhs.false.i.i.pci_configure_mps.exit.i_crit_edge, %if.end16.i.i.pci_configure_mps.exit.i_crit_edge, %do.end.i.i, %if.end10.i.i.pci_configure_mps.exit.i_crit_edge, %pci_upstream_bridge.exit.i.i.pci_configure_mps.exit.i_crit_edge
  %call.i = tail call i32 @pci_configure_extended_tags(ptr noundef %dev, ptr undef) #14
  %31 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 5)
  %bf.load.i.i = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %32 = and i40 %bf.load.i.i, 65536
  %tobool.not.i.i = icmp eq i40 %32, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %pci_configure_mps.exit.i.pci_configure_relaxed_ordering.exit.i_crit_edge

pci_configure_mps.exit.i.pci_configure_relaxed_ordering.exit.i_crit_edge: ; preds = %pci_configure_mps.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_relaxed_ordering.exit.i

if.end.i.i:                                       ; preds = %pci_configure_mps.exit.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v.i.i.i) #14
  %33 = ptrtoint ptr %v.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -1, ptr %v.i.i.i, align 2, !annotation !424
  %call.i.i.i = call i32 @pcie_capability_read_word(ptr noundef %dev, i32 noundef 8, ptr noundef nonnull %v.i.i.i) #14
  %34 = ptrtoint ptr %v.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %v.i.i.i, align 2
  %36 = and i16 %35, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.i.i.i = icmp eq i16 %36, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v.i.i.i) #14
  %tobool.not7.i.i.i = icmp eq ptr %dev, null
  %or.cond.i.i = or i1 %tobool.not7.i.i.i, %tobool.i.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.pci_configure_relaxed_ordering.exit.i_crit_edge, label %if.end.i.i.while.body.i.i.i_crit_edge

if.end.i.i.while.body.i.i.i_crit_edge:            ; preds = %if.end.i.i
  br label %while.body.i.i.i

if.end.i.i.pci_configure_relaxed_ordering.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_relaxed_ordering.exit.i

while.body.i.i.i:                                 ; preds = %pci_upstream_bridge.exit.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i.while.body.i.i.i_crit_edge
  %dev.addr.08.i.i.i = phi ptr [ %52, %pci_upstream_bridge.exit.i.i.i.while.body.i.i.i_crit_edge ], [ %dev, %if.end.i.i.while.body.i.i.i_crit_edge ]
  %pcie_cap.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i.i, i32 0, i32 19
  %37 = ptrtoint ptr %pcie_cap.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pcie_cap.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.i.not.i.i.i = icmp eq i8 %38, 0
  br i1 %tobool.i.not.i.i.i, label %while.body.i.i.i.if.end.i.i8.i_crit_edge, label %land.lhs.true.i.i.i

while.body.i.i.i.if.end.i.i8.i_crit_edge:         ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i8.i

land.lhs.true.i.i.i:                              ; preds = %while.body.i.i.i
  %pcie_flags_reg.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i.i, i32 0, i32 25
  %39 = ptrtoint ptr %pcie_flags_reg.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pcie_flags_reg.i.i.i.i.i, align 2
  %41 = and i16 %40, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %41)
  %cmp.i.i.i = icmp eq i16 %41, 64
  br i1 %cmp.i.i.i, label %if.end6.i.i, label %land.lhs.true.i.i.i.if.end.i.i8.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i8.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i8.i

if.end.i.i8.i:                                    ; preds = %land.lhs.true.i.i.i.if.end.i.i8.i_crit_edge, %while.body.i.i.i.if.end.i.i8.i_crit_edge
  %is_virtfn.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i.i, i32 0, i32 49
  %42 = ptrtoint ptr %is_virtfn.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 5)
  %bf.load.i.i.i.i.i = load i40, ptr %is_virtfn.i.i.i.i.i, align 1
  %43 = and i40 %bf.load.i.i.i.i.i, 65536
  %tobool.not.i.i.i.i.i = icmp eq i40 %43, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i8.i.pci_physfn.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

if.end.i.i8.i.pci_physfn.exit.i.i.i.i_crit_edge:  ; preds = %if.end.i.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_physfn.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end.i.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  %44 = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i.i, i32 0, i32 66
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  br label %pci_physfn.exit.i.i.i.i

pci_physfn.exit.i.i.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.end.i.i8.i.pci_physfn.exit.i.i.i.i_crit_edge
  %dev.addr.0.i.i.i.i.i = phi ptr [ %46, %if.then.i.i.i.i.i ], [ %dev.addr.08.i.i.i, %if.end.i.i8.i.pci_physfn.exit.i.i.i.i_crit_edge ]
  %bus.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus.i.i.i.i, align 8
  %parent.i.i.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %parent.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parent.i.i.i.i.i, align 8
  %tobool.not.i5.i.i.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i5.i.i.i.i, label %pci_physfn.exit.i.i.i.i.pci_configure_relaxed_ordering.exit.i_crit_edge, label %pci_upstream_bridge.exit.i.i.i

pci_physfn.exit.i.i.i.i.pci_configure_relaxed_ordering.exit.i_crit_edge: ; preds = %pci_physfn.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_relaxed_ordering.exit.i

pci_upstream_bridge.exit.i.i.i:                   ; preds = %pci_physfn.exit.i.i.i.i
  %self.i.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %48, i32 0, i32 4
  %51 = ptrtoint ptr %self.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %self.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %pci_upstream_bridge.exit.i.i.i.pci_configure_relaxed_ordering.exit.i_crit_edge, label %pci_upstream_bridge.exit.i.i.i.while.body.i.i.i_crit_edge

pci_upstream_bridge.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %pci_upstream_bridge.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i

pci_upstream_bridge.exit.i.i.i.pci_configure_relaxed_ordering.exit.i_crit_edge: ; preds = %pci_upstream_bridge.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_relaxed_ordering.exit.i

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i.i
  %dev_flags.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i.i, i32 0, i32 50
  %53 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %dev_flags.i.i, align 2
  %55 = and i16 %54, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool7.not.i.i = icmp eq i16 %55, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.pci_configure_relaxed_ordering.exit.i_crit_edge, label %if.then8.i.i

if.end6.i.i.pci_configure_relaxed_ordering.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_relaxed_ordering.exit.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i17.i.i = call i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef 8, i16 noundef zeroext 16, i16 noundef zeroext 0) #14
  %dev10.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10.i.i, ptr noundef nonnull @.str.152) #17
  br label %pci_configure_relaxed_ordering.exit.i

pci_configure_relaxed_ordering.exit.i:            ; preds = %if.then8.i.i, %if.end6.i.i.pci_configure_relaxed_ordering.exit.i_crit_edge, %pci_upstream_bridge.exit.i.i.i.pci_configure_relaxed_ordering.exit.i_crit_edge, %pci_physfn.exit.i.i.i.i.pci_configure_relaxed_ordering.exit.i_crit_edge, %if.end.i.i.pci_configure_relaxed_ordering.exit.i_crit_edge, %pci_configure_mps.exit.i.pci_configure_relaxed_ordering.exit.i_crit_edge
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %56 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i.i, align 8
  %call.i.i = call ptr @pci_find_host_bridge(ptr noundef %57) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap.i.i) #14
  %58 = ptrtoint ptr %cap.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %cap.i.i, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctl.i.i) #14
  %59 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %ctl.i.i, align 4, !annotation !424
  %60 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.i.not.i.i = icmp eq i8 %61, 0
  br i1 %tobool.i.not.i.i, label %pci_configure_ltr.exit.thread.i, label %if.end.i11.i

pci_configure_ltr.exit.thread.i:                  ; preds = %pci_configure_relaxed_ordering.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctl.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap.i28.i) #14
  br label %pci_configure_eetlp_prefix.exit.i

if.end.i11.i:                                     ; preds = %pci_configure_relaxed_ordering.exit.i
  %call2.i.i = call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 30) #14
  %l1ss.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 40
  %62 = ptrtoint ptr %l1ss.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %call2.i.i, ptr %l1ss.i.i, align 2
  %call3.i.i = call i32 @pcie_capability_read_dword(ptr noundef %dev, i32 noundef 36, ptr noundef nonnull %cap.i.i) #14
  %63 = ptrtoint ptr %cap.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cap.i.i, align 4
  %and.i.i = and i32 %64, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i10.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i10.i, label %if.end.i11.i.pci_configure_ltr.exit.i_crit_edge, label %if.end5.i.i

if.end.i11.i.pci_configure_ltr.exit.i_crit_edge:  ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_ltr.exit.i

if.end5.i.i:                                      ; preds = %if.end.i11.i
  %call6.i.i = call i32 @pcie_capability_read_dword(ptr noundef %dev, i32 noundef 40, ptr noundef nonnull %ctl.i.i) #14
  %65 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ctl.i.i, align 4
  %and7.i.i = and i32 %66, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end24.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end5.i.i
  %pcie_flags_reg.i.i.i12.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %67 = ptrtoint ptr %pcie_flags_reg.i.i.i12.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %pcie_flags_reg.i.i.i12.i, align 2
  %69 = and i16 %68, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %69)
  %cmp.i13.i = icmp eq i16 %69, 64
  br i1 %cmp.i13.i, label %if.then9.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end12.i.i

if.then9.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i.i

if.end12.i.i:                                     ; preds = %if.then9.i.i
  %70 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 5)
  %bf.load.i.i.i15.i = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %71 = and i40 %bf.load.i.i.i15.i, 65536
  %tobool.not.i.i.i16.i = icmp eq i40 %71, 0
  br i1 %tobool.not.i.i.i16.i, label %if.end12.i.i.pci_physfn.exit.i.i22.i_crit_edge, label %if.then.i.i.i17.i

if.end12.i.i.pci_physfn.exit.i.i22.i_crit_edge:   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_physfn.exit.i.i22.i

if.then.i.i.i17.i:                                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %72 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 66
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  br label %pci_physfn.exit.i.i22.i

pci_physfn.exit.i.i22.i:                          ; preds = %if.then.i.i.i17.i, %if.end12.i.i.pci_physfn.exit.i.i22.i_crit_edge
  %dev.addr.0.i.i.i18.i = phi ptr [ %74, %if.then.i.i.i17.i ], [ %dev, %if.end12.i.i.pci_physfn.exit.i.i22.i_crit_edge ]
  %bus.i.i19.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i18.i, i32 0, i32 1
  %75 = ptrtoint ptr %bus.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus.i.i19.i, align 8
  %parent.i.i.i20.i = getelementptr inbounds %struct.pci_bus, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %parent.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %parent.i.i.i20.i, align 8
  %tobool.not.i5.i.i21.i = icmp eq ptr %78, null
  br i1 %tobool.not.i5.i.i21.i, label %pci_physfn.exit.i.i22.i.pci_configure_ltr.exit.i_crit_edge, label %pci_upstream_bridge.exit.i24.i

pci_physfn.exit.i.i22.i.pci_configure_ltr.exit.i_crit_edge: ; preds = %pci_physfn.exit.i.i22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_ltr.exit.i

pci_upstream_bridge.exit.i24.i:                   ; preds = %pci_physfn.exit.i.i22.i
  %self.i.i23.i = getelementptr inbounds %struct.pci_bus, ptr %76, i32 0, i32 4
  %79 = ptrtoint ptr %self.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %self.i.i23.i, align 4
  %tobool14.not.i.i = icmp eq ptr %80, null
  br i1 %tobool14.not.i.i, label %pci_upstream_bridge.exit.i24.i.pci_configure_ltr.exit.i_crit_edge, label %land.lhs.true.i26.i

pci_upstream_bridge.exit.i24.i.pci_configure_ltr.exit.i_crit_edge: ; preds = %pci_upstream_bridge.exit.i24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_ltr.exit.i

land.lhs.true.i26.i:                              ; preds = %pci_upstream_bridge.exit.i24.i
  %ltr_path15.i.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 38
  %81 = ptrtoint ptr %ltr_path15.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load16.i.i = load i8, ptr %ltr_path15.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16.i.i)
  %tobool17.not.i25.i = icmp sgt i8 %bf.load16.i.i, -1
  br i1 %tobool17.not.i25.i, label %land.lhs.true.i26.i.pci_configure_ltr.exit.i_crit_edge, label %land.lhs.true.i26.i.cleanup.sink.split.i.i_crit_edge

land.lhs.true.i26.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i.i

land.lhs.true.i26.i.pci_configure_ltr.exit.i_crit_edge: ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_ltr.exit.i

if.end24.i.i:                                     ; preds = %if.end5.i.i
  %native_ltr.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i.i, i32 0, i32 13
  %82 = ptrtoint ptr %native_ltr.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load25.i.i = load i16, ptr %native_ltr.i.i, align 8
  %83 = and i16 %bf.load25.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool29.not.i.i = icmp eq i16 %83, 0
  br i1 %tobool29.not.i.i, label %if.end24.i.i.pci_configure_ltr.exit.i_crit_edge, label %if.end31.i.i

if.end24.i.i.pci_configure_ltr.exit.i_crit_edge:  ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_ltr.exit.i

if.end31.i.i:                                     ; preds = %if.end24.i.i
  %pcie_flags_reg.i.i78.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %84 = ptrtoint ptr %pcie_flags_reg.i.i78.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %pcie_flags_reg.i.i78.i.i, align 2
  %86 = and i16 %85, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %86)
  %cmp33.i.i = icmp eq i16 %86, 64
  br i1 %cmp33.i.i, label %if.end31.i.i.cleanup.sink.split.sink.split.i.i_crit_edge, label %if.end40.i.i

if.end31.i.i.cleanup.sink.split.sink.split.i.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.sink.split.i.i

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %87 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 5)
  %bf.load.i.i80.i.i = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %88 = and i40 %bf.load.i.i80.i.i, 65536
  %tobool.not.i.i81.i.i = icmp eq i40 %88, 0
  br i1 %tobool.not.i.i81.i.i, label %if.end40.i.i.pci_physfn.exit.i87.i.i_crit_edge, label %if.then.i.i82.i.i

if.end40.i.i.pci_physfn.exit.i87.i.i_crit_edge:   ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_physfn.exit.i87.i.i

if.then.i.i82.i.i:                                ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %89 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 66
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 8
  br label %pci_physfn.exit.i87.i.i

pci_physfn.exit.i87.i.i:                          ; preds = %if.then.i.i82.i.i, %if.end40.i.i.pci_physfn.exit.i87.i.i_crit_edge
  %dev.addr.0.i.i83.i.i = phi ptr [ %91, %if.then.i.i82.i.i ], [ %dev, %if.end40.i.i.pci_physfn.exit.i87.i.i_crit_edge ]
  %bus.i84.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i83.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %bus.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus.i84.i.i, align 8
  %parent.i.i85.i.i = getelementptr inbounds %struct.pci_bus, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %parent.i.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %parent.i.i85.i.i, align 8
  %tobool.not.i5.i86.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i5.i86.i.i, label %pci_physfn.exit.i87.i.i.pci_configure_ltr.exit.i_crit_edge, label %pci_upstream_bridge.exit91.i.i

pci_physfn.exit.i87.i.i.pci_configure_ltr.exit.i_crit_edge: ; preds = %pci_physfn.exit.i87.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_ltr.exit.i

pci_upstream_bridge.exit91.i.i:                   ; preds = %pci_physfn.exit.i87.i.i
  %self.i88.i.i = getelementptr inbounds %struct.pci_bus, ptr %93, i32 0, i32 4
  %96 = ptrtoint ptr %self.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %self.i88.i.i, align 4
  %tobool42.not.i.i = icmp eq ptr %97, null
  br i1 %tobool42.not.i.i, label %pci_upstream_bridge.exit91.i.i.pci_configure_ltr.exit.i_crit_edge, label %land.lhs.true43.i.i

pci_upstream_bridge.exit91.i.i.pci_configure_ltr.exit.i_crit_edge: ; preds = %pci_upstream_bridge.exit91.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_ltr.exit.i

land.lhs.true43.i.i:                              ; preds = %pci_upstream_bridge.exit91.i.i
  %ltr_path44.i.i = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 38
  %98 = ptrtoint ptr %ltr_path44.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load45.i.i = load i8, ptr %ltr_path44.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load45.i.i)
  %tobool48.not.i.i = icmp sgt i8 %bf.load45.i.i, -1
  br i1 %tobool48.not.i.i, label %land.lhs.true43.i.i.pci_configure_ltr.exit.i_crit_edge, label %if.then49.i.i

land.lhs.true43.i.i.pci_configure_ltr.exit.i_crit_edge: ; preds = %land.lhs.true43.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_ltr.exit.i

if.then49.i.i:                                    ; preds = %land.lhs.true43.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @pci_bridge_reconfigure_ltr(ptr noundef %dev) #14
  br label %cleanup.sink.split.sink.split.i.i

cleanup.sink.split.sink.split.i.i:                ; preds = %if.then49.i.i, %if.end31.i.i.cleanup.sink.split.sink.split.i.i_crit_edge
  %call.i.i27.i = call i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef 40, i16 noundef zeroext 0, i16 noundef zeroext 1024) #14
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %cleanup.sink.split.sink.split.i.i, %land.lhs.true.i26.i.cleanup.sink.split.i.i_crit_edge, %if.then9.i.i.cleanup.sink.split.i.i_crit_edge
  %ltr_path.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 38
  %99 = ptrtoint ptr %ltr_path.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load52.i.i = load i8, ptr %ltr_path.i.i, align 4
  %bf.set54.i.i = or i8 %bf.load52.i.i, -128
  store i8 %bf.set54.i.i, ptr %ltr_path.i.i, align 4
  br label %pci_configure_ltr.exit.i

pci_configure_ltr.exit.i:                         ; preds = %cleanup.sink.split.i.i, %land.lhs.true43.i.i.pci_configure_ltr.exit.i_crit_edge, %pci_upstream_bridge.exit91.i.i.pci_configure_ltr.exit.i_crit_edge, %pci_physfn.exit.i87.i.i.pci_configure_ltr.exit.i_crit_edge, %if.end24.i.i.pci_configure_ltr.exit.i_crit_edge, %land.lhs.true.i26.i.pci_configure_ltr.exit.i_crit_edge, %pci_upstream_bridge.exit.i24.i.pci_configure_ltr.exit.i_crit_edge, %pci_physfn.exit.i.i22.i.pci_configure_ltr.exit.i_crit_edge, %if.end.i11.i.pci_configure_ltr.exit.i_crit_edge
  %100 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %.pr.i = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctl.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap.i28.i) #14
  %101 = ptrtoint ptr %cap.i28.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %cap.i28.i, align 4, !annotation !424
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool.i.not.i30.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool.i.not.i30.i, label %pci_configure_ltr.exit.i.pci_configure_eetlp_prefix.exit.i_crit_edge, label %if.end.i33.i

pci_configure_ltr.exit.i.pci_configure_eetlp_prefix.exit.i_crit_edge: ; preds = %pci_configure_ltr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_eetlp_prefix.exit.i

if.end.i33.i:                                     ; preds = %pci_configure_ltr.exit.i
  %call1.i.i = call i32 @pcie_capability_read_dword(ptr noundef %dev, i32 noundef 36, ptr noundef nonnull %cap.i28.i) #14
  %102 = ptrtoint ptr %cap.i28.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cap.i28.i, align 4
  %and.i31.i = and i32 %103, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i32.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i32.i, label %if.end.i33.i.pci_configure_eetlp_prefix.exit.i_crit_edge, label %if.end3.i35.i

if.end.i33.i.pci_configure_eetlp_prefix.exit.i_crit_edge: ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_eetlp_prefix.exit.i

if.end3.i35.i:                                    ; preds = %if.end.i33.i
  %pcie_flags_reg.i.i.i34.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %104 = ptrtoint ptr %pcie_flags_reg.i.i.i34.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %pcie_flags_reg.i.i.i34.i, align 2
  %106 = lshr i16 %105, 4
  %107 = and i16 %106, 15
  %108 = zext i16 %107 to i32
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %108, label %if.else.i39.i [
    i32 4, label %if.end3.i35.i.cleanup.sink.split.i52.i_crit_edge
    i32 9, label %if.end3.i35.i.cleanup.sink.split.i52.i_crit_edge112
  ]

if.end3.i35.i.cleanup.sink.split.i52.i_crit_edge112: ; preds = %if.end3.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i52.i

if.end3.i35.i.cleanup.sink.split.i52.i_crit_edge: ; preds = %if.end3.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i52.i

if.else.i39.i:                                    ; preds = %if.end3.i35.i
  %110 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 5)
  %bf.load.i.i.i37.i = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %111 = and i40 %bf.load.i.i.i37.i, 65536
  %tobool.not.i.i.i38.i = icmp eq i40 %111, 0
  br i1 %tobool.not.i.i.i38.i, label %if.else.i39.i.pci_physfn.exit.i.i45.i_crit_edge, label %if.then.i.i.i40.i

if.else.i39.i.pci_physfn.exit.i.i45.i_crit_edge:  ; preds = %if.else.i39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_physfn.exit.i.i45.i

if.then.i.i.i40.i:                                ; preds = %if.else.i39.i
  call void @__sanitizer_cov_trace_pc() #16
  %112 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 66
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 8
  br label %pci_physfn.exit.i.i45.i

pci_physfn.exit.i.i45.i:                          ; preds = %if.then.i.i.i40.i, %if.else.i39.i.pci_physfn.exit.i.i45.i_crit_edge
  %dev.addr.0.i.i.i41.i = phi ptr [ %114, %if.then.i.i.i40.i ], [ %dev, %if.else.i39.i.pci_physfn.exit.i.i45.i_crit_edge ]
  %bus.i.i42.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i41.i, i32 0, i32 1
  %115 = ptrtoint ptr %bus.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bus.i.i42.i, align 8
  %parent.i.i.i43.i = getelementptr inbounds %struct.pci_bus, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %parent.i.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %parent.i.i.i43.i, align 8
  %tobool.not.i5.i.i44.i = icmp eq ptr %118, null
  br i1 %tobool.not.i5.i.i44.i, label %pci_physfn.exit.i.i45.i.pci_configure_eetlp_prefix.exit.i_crit_edge, label %pci_upstream_bridge.exit.i48.i

pci_physfn.exit.i.i45.i.pci_configure_eetlp_prefix.exit.i_crit_edge: ; preds = %pci_physfn.exit.i.i45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_eetlp_prefix.exit.i

pci_upstream_bridge.exit.i48.i:                   ; preds = %pci_physfn.exit.i.i45.i
  %self.i.i46.i = getelementptr inbounds %struct.pci_bus, ptr %116, i32 0, i32 4
  %119 = ptrtoint ptr %self.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %self.i.i46.i, align 4
  %tobool8.not.i47.i = icmp eq ptr %120, null
  br i1 %tobool8.not.i47.i, label %pci_upstream_bridge.exit.i48.i.pci_configure_eetlp_prefix.exit.i_crit_edge, label %land.lhs.true.i50.i

pci_upstream_bridge.exit.i48.i.pci_configure_eetlp_prefix.exit.i_crit_edge: ; preds = %pci_upstream_bridge.exit.i48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_eetlp_prefix.exit.i

land.lhs.true.i50.i:                              ; preds = %pci_upstream_bridge.exit.i48.i
  %eetlp_prefix_path9.i.i = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 41
  %121 = ptrtoint ptr %eetlp_prefix_path9.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %bf.load10.i.i = load i8, ptr %eetlp_prefix_path9.i.i, align 8
  %122 = and i8 %bf.load10.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool12.not.i49.i = icmp eq i8 %122, 0
  br i1 %tobool12.not.i49.i, label %land.lhs.true.i50.i.pci_configure_eetlp_prefix.exit.i_crit_edge, label %land.lhs.true.i50.i.cleanup.sink.split.i52.i_crit_edge

land.lhs.true.i50.i.cleanup.sink.split.i52.i_crit_edge: ; preds = %land.lhs.true.i50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i52.i

land.lhs.true.i50.i.pci_configure_eetlp_prefix.exit.i_crit_edge: ; preds = %land.lhs.true.i50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_eetlp_prefix.exit.i

cleanup.sink.split.i52.i:                         ; preds = %land.lhs.true.i50.i.cleanup.sink.split.i52.i_crit_edge, %if.end3.i35.i.cleanup.sink.split.i52.i_crit_edge, %if.end3.i35.i.cleanup.sink.split.i52.i_crit_edge112
  %eetlp_prefix_path14.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 41
  %123 = ptrtoint ptr %eetlp_prefix_path14.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load.i51.i = load i8, ptr %eetlp_prefix_path14.i.i, align 8
  %bf.set.i.i = or i8 %bf.load.i51.i, 64
  store i8 %bf.set.i.i, ptr %eetlp_prefix_path14.i.i, align 8
  br label %pci_configure_eetlp_prefix.exit.i

pci_configure_eetlp_prefix.exit.i:                ; preds = %cleanup.sink.split.i52.i, %land.lhs.true.i50.i.pci_configure_eetlp_prefix.exit.i_crit_edge, %pci_upstream_bridge.exit.i48.i.pci_configure_eetlp_prefix.exit.i_crit_edge, %pci_physfn.exit.i.i45.i.pci_configure_eetlp_prefix.exit.i_crit_edge, %if.end.i33.i.pci_configure_eetlp_prefix.exit.i_crit_edge, %pci_configure_ltr.exit.i.pci_configure_eetlp_prefix.exit.i_crit_edge, %pci_configure_ltr.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap.i28.i) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i.i) #14
  %124 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 -1, ptr %control.i.i, align 2, !annotation !424
  %hdr_type.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 13
  %125 = ptrtoint ptr %hdr_type.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %hdr_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %126)
  %cmp.i53.i = icmp eq i8 %126, 1
  br i1 %cmp.i53.i, label %if.then.i.i, label %pci_configure_eetlp_prefix.exit.i.pci_configure_device.exit_crit_edge

pci_configure_eetlp_prefix.exit.i.pci_configure_device.exit_crit_edge: ; preds = %pci_configure_eetlp_prefix.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_device.exit

if.then.i.i:                                      ; preds = %pci_configure_eetlp_prefix.exit.i
  %call.i54.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 62, ptr noundef nonnull %control.i.i) #14
  %127 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %control.i.i, align 2
  %129 = and i16 %128, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool.not.i55.i = icmp eq i16 %129, 0
  br i1 %tobool.not.i55.i, label %if.then3.i.i, label %if.then.i.i.pci_configure_device.exit_crit_edge

if.then.i.i.pci_configure_device.exit_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_configure_device.exit

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i.i = or i16 %128, 2
  %130 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %or.i.i, ptr %control.i.i, align 2
  %call6.i56.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 62, i16 noundef zeroext %or.i.i) #14
  br label %pci_configure_device.exit

pci_configure_device.exit:                        ; preds = %if.then3.i.i, %if.then.i.i.pci_configure_device.exit_crit_edge, %pci_configure_eetlp_prefix.exit.i.pci_configure_device.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i.i) #14
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void @device_initialize(ptr noundef %dev1) #14
  %release = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 35
  %131 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @pci_release_dev, ptr %release, align 4
  %dma_mask = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 28
  %dma_mask5 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 18
  %132 = ptrtoint ptr %dma_mask5 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %dma_mask, ptr %dma_mask5, align 8
  %dma_parms = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 29
  %dma_parms7 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 22
  %133 = ptrtoint ptr %dma_parms7 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %dma_parms, ptr %dma_parms7, align 4
  %coherent_dma_mask = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 19
  %134 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 4294967295, ptr %coherent_dma_mask, align 8
  %tobool.not.i = icmp eq ptr %dma_parms, null
  br i1 %tobool.not.i, label %pci_configure_device.exit.dma_set_seg_boundary.exit_crit_edge, label %dma_set_max_seg_size.exit

pci_configure_device.exit.dma_set_seg_boundary.exit_crit_edge: ; preds = %pci_configure_device.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_set_seg_boundary.exit

dma_set_max_seg_size.exit:                        ; preds = %pci_configure_device.exit
  %135 = ptrtoint ptr %dma_parms to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 65536, ptr %dma_parms, align 4
  %136 = ptrtoint ptr %dma_parms7 to i32
  call void @__asan_load4_noabort(i32 %136)
  %.pr = load ptr, ptr %dma_parms7, align 4
  %tobool.not.i88 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i88, label %dma_set_max_seg_size.exit.dma_set_seg_boundary.exit_crit_edge, label %if.then.i89

dma_set_max_seg_size.exit.dma_set_seg_boundary.exit_crit_edge: ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_set_seg_boundary.exit

if.then.i89:                                      ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  %segment_boundary_mask.i = getelementptr inbounds %struct.device_dma_parameters, ptr %.pr, i32 0, i32 2
  %137 = ptrtoint ptr %segment_boundary_mask.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %segment_boundary_mask.i, align 4
  br label %dma_set_seg_boundary.exit

dma_set_seg_boundary.exit:                        ; preds = %if.then.i89, %dma_set_max_seg_size.exit.dma_set_seg_boundary.exit_crit_edge, %pci_configure_device.exit.dma_set_seg_boundary.exit_crit_edge
  call void @pci_fixup_device(i32 noundef 1, ptr noundef %dev) #14
  call void @pci_reassigndev_resource_alignment(ptr noundef %dev) #14
  %138 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 5)
  %bf.load = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %bf.clear = and i40 %bf.load, -262145
  store i40 %bf.clear, ptr %is_virtfn.i.i.i.i, align 1
  call void @pci_ea_init(ptr noundef %dev) #14
  call void @pci_msi_init(ptr noundef %dev) #14
  call void @pci_msix_init(ptr noundef %dev) #14
  call void @pci_allocate_cap_save_buffers(ptr noundef %dev) #14
  call void @pci_pm_init(ptr noundef %dev) #14
  call void @pci_vpd_init(ptr noundef %dev) #14
  call void @pci_configure_ari(ptr noundef %dev) #14
  %call.i90 = call i32 @pci_iov_init(ptr noundef %dev) #14
  call void @pci_ats_init(ptr noundef %dev) #14
  call void @pci_pri_init(ptr noundef %dev) #14
  call void @pci_pasid_init(ptr noundef %dev) #14
  call void @pci_acs_init(ptr noundef %dev) #14
  call void @pci_ptm_init(ptr noundef %dev) #14
  call void @pci_aer_init(ptr noundef %dev) #14
  call void @pci_dpc_init(ptr noundef %dev) #14
  call void @pci_rcec_init(ptr noundef %dev) #14
  %139 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.i.not.i.i92 = icmp eq i8 %140, 0
  br i1 %tobool.i.not.i.i92, label %dma_set_seg_boundary.exit.pci_init_capabilities.exit_crit_edge, label %if.end.i.i94

dma_set_seg_boundary.exit.pci_init_capabilities.exit_crit_edge: ; preds = %dma_set_seg_boundary.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_init_capabilities.exit

if.end.i.i94:                                     ; preds = %dma_set_seg_boundary.exit
  %pcie_flags_reg.i.i.i.i93 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %141 = ptrtoint ptr %pcie_flags_reg.i.i.i.i93 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %pcie_flags_reg.i.i.i.i93, align 2
  %143 = lshr i16 %142, 4
  %144 = and i16 %143, 15
  %145 = zext i16 %144 to i32
  %146 = zext i32 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %145, label %if.end.i.i94.pci_init_capabilities.exit_crit_edge [
    i32 0, label %if.end.i.i94.if.end8.i.i_crit_edge
    i32 1, label %if.end.i.i94.if.end8.i.i_crit_edge113
    i32 5, label %if.end.i.i94.if.end8.i.i_crit_edge114
  ]

if.end.i.i94.if.end8.i.i_crit_edge114:            ; preds = %if.end.i.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.end.i.i94.if.end8.i.i_crit_edge113:            ; preds = %if.end.i.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.end.i.i94.if.end8.i.i_crit_edge:               ; preds = %if.end.i.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.end.i.i94.pci_init_capabilities.exit_crit_edge: ; preds = %if.end.i.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_init_capabilities.exit

if.end8.i.i:                                      ; preds = %if.end.i.i94.if.end8.i.i_crit_edge, %if.end.i.i94.if.end8.i.i_crit_edge113, %if.end.i.i94.if.end8.i.i_crit_edge114
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %147 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %devfn.i.i, align 4
  %and.i.i95 = and i32 %148, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95)
  %cmp9.not.i.i = icmp eq i32 %and.i.i95, 0
  br i1 %cmp9.not.i.i, label %lor.lhs.false.i.i98, label %if.end8.i.i.pci_init_capabilities.exit_crit_edge

if.end8.i.i.pci_init_capabilities.exit_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_init_capabilities.exit

lor.lhs.false.i.i98:                              ; preds = %if.end8.i.i
  %149 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 5)
  %bf.load.i.i96 = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %150 = and i40 %bf.load.i.i96, 65536
  %tobool.not.i.i97 = icmp eq i40 %150, 0
  br i1 %tobool.not.i.i97, label %if.end11.i.i, label %lor.lhs.false.i.i98.pci_init_capabilities.exit_crit_edge

lor.lhs.false.i.i98.pci_init_capabilities.exit_crit_edge: ; preds = %lor.lhs.false.i.i98
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_init_capabilities.exit

if.end11.i.i:                                     ; preds = %lor.lhs.false.i.i98
  call void @__sanitizer_cov_trace_pc() #16
  call void @__pcie_print_link_status(ptr noundef %dev, i1 noundef zeroext false) #14
  br label %pci_init_capabilities.exit

pci_init_capabilities.exit:                       ; preds = %if.end11.i.i, %lor.lhs.false.i.i98.pci_init_capabilities.exit_crit_edge, %if.end8.i.i.pci_init_capabilities.exit_crit_edge, %if.end.i.i94.pci_init_capabilities.exit_crit_edge, %dma_set_seg_boundary.exit.pci_init_capabilities.exit_crit_edge
  call void @pci_init_reset_methods(ptr noundef %dev) #14
  call void @down_write(ptr noundef nonnull @pci_bus_sem) #14
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3, i32 1
  %151 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %prev.i, align 4
  %call.i.i99 = call zeroext i1 @__list_add_valid(ptr noundef %dev, ptr noundef %152, ptr noundef %devices) #14
  br i1 %call.i.i99, label %if.end.i.i100, label %pci_init_capabilities.exit.list_add_tail.exit_crit_edge

pci_init_capabilities.exit.list_add_tail.exit_crit_edge: ; preds = %pci_init_capabilities.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i100:                                    ; preds = %pci_init_capabilities.exit
  call void @__sanitizer_cov_trace_pc() #16
  %153 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %dev, ptr %prev.i, align 4
  %154 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %devices, ptr %dev, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %dev, i32 0, i32 1
  %155 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %152, ptr %prev3.i.i, align 4
  %156 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %dev, ptr %152, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i100, %pci_init_capabilities.exit.list_add_tail.exit_crit_edge
  call void @up_write(ptr noundef nonnull @pci_bus_sem) #14
  %call12 = call i32 @pcibios_device_add(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end, label %list_add_tail.exit.if.end_crit_edge, !prof !425

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2551, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %list_add_tail.exit.if.end_crit_edge
  %msi.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 16
  %157 = ptrtoint ptr %msi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %msi.i.i.i, align 4
  %tobool.not.i.i101 = icmp eq ptr %158, null
  br i1 %tobool.not.i.i101, label %pci_dev_msi_domain.exit.i, label %if.end.pci_set_msi_domain.exit_crit_edge

if.end.pci_set_msi_domain.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_set_msi_domain.exit

pci_dev_msi_domain.exit.i:                        ; preds = %if.end
  %call2.i.i102 = call ptr @pci_msi_get_device_domain(ptr noundef %dev) #14
  %tobool.not.i103 = icmp eq ptr %call2.i.i102, null
  br i1 %tobool.not.i103, label %if.then.i104, label %pci_dev_msi_domain.exit.i.pci_set_msi_domain.exit_crit_edge

pci_dev_msi_domain.exit.i.pci_set_msi_domain.exit_crit_edge: ; preds = %pci_dev_msi_domain.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_set_msi_domain.exit

if.then.i104:                                     ; preds = %pci_dev_msi_domain.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %159 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bus.i.i, align 8
  %msi.i.i = getelementptr inbounds %struct.pci_bus, ptr %160, i32 0, i32 21, i32 16
  %161 = ptrtoint ptr %msi.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %msi.i.i, align 4
  br label %pci_set_msi_domain.exit

pci_set_msi_domain.exit:                          ; preds = %if.then.i104, %pci_dev_msi_domain.exit.i.pci_set_msi_domain.exit_crit_edge, %if.end.pci_set_msi_domain.exit_crit_edge
  %d.0.i = phi ptr [ %call2.i.i102, %pci_dev_msi_domain.exit.i.pci_set_msi_domain.exit_crit_edge ], [ %162, %if.then.i104 ], [ %158, %if.end.pci_set_msi_domain.exit_crit_edge ]
  %163 = ptrtoint ptr %msi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %d.0.i, ptr %msi.i.i.i, align 4
  %match_driver = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 48
  %164 = ptrtoint ptr %match_driver to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %match_driver, align 8
  %call32 = call i32 @device_add(ptr noundef %dev1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp34 = icmp slt i32 %call32, 0
  br i1 %cmp34, label %do.end50, label %pci_set_msi_domain.exit.if.end56_crit_edge, !prof !425

pci_set_msi_domain.exit.if.end56_crit_edge:       ; preds = %pci_set_msi_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

do.end50:                                         ; preds = %pci_set_msi_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2559, i32 noundef 9, ptr noundef null) #14
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %pci_set_msi_domain.exit.if.end56_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_release_dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  tail call void @pci_aer_exit(ptr noundef %add.ptr) #14
  tail call void @pci_rcec_exit(ptr noundef %add.ptr) #14
  tail call void @pci_iov_release(ptr noundef %add.ptr) #14
  tail call void @pci_free_cap_save_buffers(ptr noundef %add.ptr) #14
  tail call void @pci_release_of_node(ptr noundef %add.ptr) #14
  tail call void @pcibios_release_device(ptr noundef %add.ptr) #14
  %bus = getelementptr i8, ptr %dev, i32 -128
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  tail call void @pci_bus_put(ptr noundef %1) #14
  %driver_override = getelementptr i8, ptr %dev, i32 1888
  %2 = ptrtoint ptr %driver_override to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_override, align 8
  tail call void @kfree(ptr noundef %3) #14
  %dma_alias_mask = getelementptr i8, ptr %dev, i32 -64
  %4 = ptrtoint ptr %dma_alias_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_alias_mask, align 8
  tail call void @bitmap_free(ptr noundef %5) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_release_dev.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci_release_dev, %do.end)) #14
          to label %if.then [label %do.end], !srcloc !426

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_release_dev.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.155) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_reassigndev_resource_alignment(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcibios_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_scan_single_device(ptr noundef %bus, i32 noundef %devfn) #0 align 64 {
entry:
  %l.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pci_get_slot(ptr noundef %bus, i32 noundef %devfn) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_dev_put(ptr noundef nonnull %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l.i) #14
  %0 = ptrtoint ptr %l.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %l.i, align 4, !annotation !424
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %1 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %self.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.pci_bus_read_dev_vendor_id.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.pci_bus_read_dev_vendor_id.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bus_read_dev_vendor_id.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %vendor.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vendor.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4381, i16 %4)
  %cmp.i.i = icmp eq i16 %4, 4381
  br i1 %cmp.i.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i.pci_bus_read_dev_vendor_id.exit.i_crit_edge

land.lhs.true.i.i.pci_bus_read_dev_vendor_id.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bus_read_dev_vendor_id.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32587, i16 %6)
  %cmp4.i.i = icmp eq i16 %6, -32587
  br i1 %cmp4.i.i, label %if.then.i.i, label %land.lhs.true2.i.i.pci_bus_read_dev_vendor_id.exit.i_crit_edge

land.lhs.true2.i.i.pci_bus_read_dev_vendor_id.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bus_read_dev_vendor_id.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  %call.i.i = call i32 @pci_idt_bus_quirk(ptr noundef %bus, i32 noundef %devfn, ptr noundef nonnull %l.i, i32 noundef 60000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.i.not.i, label %if.then.i.i.pci_scan_device.exit.thread_crit_edge, label %if.then.i.i.if.end.i_crit_edge

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i.i.pci_scan_device.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_scan_device.exit.thread

pci_bus_read_dev_vendor_id.exit.i:                ; preds = %land.lhs.true2.i.i.pci_bus_read_dev_vendor_id.exit.i_crit_edge, %land.lhs.true.i.i.pci_bus_read_dev_vendor_id.exit.i_crit_edge, %if.end.pci_bus_read_dev_vendor_id.exit.i_crit_edge
  %call7.i.i = call zeroext i1 @pci_bus_generic_read_dev_vendor_id(ptr noundef %bus, i32 noundef %devfn, ptr noundef nonnull %l.i, i32 noundef 60000) #14
  br i1 %call7.i.i, label %pci_bus_read_dev_vendor_id.exit.i.if.end.i_crit_edge, label %pci_bus_read_dev_vendor_id.exit.i.pci_scan_device.exit.thread_crit_edge

pci_bus_read_dev_vendor_id.exit.i.pci_scan_device.exit.thread_crit_edge: ; preds = %pci_bus_read_dev_vendor_id.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_scan_device.exit.thread

pci_bus_read_dev_vendor_id.exit.i.if.end.i_crit_edge: ; preds = %pci_bus_read_dev_vendor_id.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %pci_bus_read_dev_vendor_id.exit.i.if.end.i_crit_edge, %if.then.i.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 2040) #19
  %tobool.not.i22.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i22.i, label %if.end.i.pci_scan_device.exit.thread_crit_edge, label %if.end3.i

if.end.i.pci_scan_device.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_scan_device.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i.i.i, i32 0, i32 44, i32 4
  %10 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pci_dev_type, ptr %type.i.i, align 4
  %call2.i.i = call ptr @pci_bus_get(ptr noundef %bus) #14
  %bus3.i.i = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %bus3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call2.i.i, ptr %bus3.i.i, align 8
  %msi_lock.i.i = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i.i.i, i32 0, i32 61
  call void @__raw_spin_lock_init(ptr noundef %msi_lock.i.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @pci_alloc_dev.__key, i16 noundef signext 2) #14
  %devfn4.i = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %devfn4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %devfn, ptr %devfn4.i, align 4
  %13 = ptrtoint ptr %l.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l.i, align 4
  %conv.i = trunc i32 %14 to i16
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %vendor.i, align 8
  %shr.i = lshr i32 %14, 16
  %conv6.i = trunc i32 %shr.i to i16
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv6.i, ptr %device.i, align 2
  %call7.i = call i32 @pci_setup_device(ptr noundef nonnull %call7.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end4, label %if.then9.i

if.then9.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %bus3.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus3.i.i, align 8
  call void @pci_bus_put(ptr noundef %18) #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #14
  br label %pci_scan_device.exit.thread

pci_scan_device.exit.thread:                      ; preds = %if.then9.i, %if.end.i.pci_scan_device.exit.thread_crit_edge, %pci_bus_read_dev_vendor_id.exit.i.pci_scan_device.exit.thread_crit_edge, %if.then.i.i.pci_scan_device.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l.i) #14
  br label %cleanup

if.end4:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l.i) #14
  call void @pci_device_add(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %bus)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %pci_scan_device.exit.thread, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %call7.i.i.i.i, %if.end4 ], [ null, %pci_scan_device.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_scan_slot(ptr noundef %bus, i32 noundef %devfn) #0 align 64 {
entry:
  %cap.i53 = alloca i16, align 2
  %cap.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %0 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_flags to i32))
  %2 = load i32, ptr @pci_flags, align 4
  %and.i.i = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp ne i32 %and.i.i, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not.i = icmp eq i8 %4, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %pcie_flags_reg.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %pcie_flags_reg.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pcie_flags_reg.i.i.i.i, align 2
  %7 = lshr i16 %6, 4
  %8 = and i16 %7, 15
  %9 = zext i16 %8 to i32
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %9, label %land.lhs.true3.i.if.end_crit_edge [
    i32 4, label %land.lhs.true3.i.only_one_child.exit_crit_edge
    i32 6, label %land.lhs.true3.i.only_one_child.exit_crit_edge95
    i32 8, label %land.lhs.true3.i.only_one_child.exit_crit_edge96
  ]

land.lhs.true3.i.only_one_child.exit_crit_edge96: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %only_one_child.exit

land.lhs.true3.i.only_one_child.exit_crit_edge95: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %only_one_child.exit

land.lhs.true3.i.only_one_child.exit_crit_edge:   ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %only_one_child.exit

land.lhs.true3.i.if.end_crit_edge:                ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

only_one_child.exit:                              ; preds = %land.lhs.true3.i.only_one_child.exit_crit_edge, %land.lhs.true3.i.only_one_child.exit_crit_edge95, %land.lhs.true3.i.only_one_child.exit_crit_edge96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devfn)
  %cmp = icmp sgt i32 %devfn, 0
  br i1 %cmp, label %only_one_child.exit.cleanup_crit_edge, label %only_one_child.exit.if.end_crit_edge

only_one_child.exit.if.end_crit_edge:             ; preds = %only_one_child.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

only_one_child.exit.cleanup_crit_edge:            ; preds = %only_one_child.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %only_one_child.exit.if.end_crit_edge, %land.lhs.true3.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call ptr @pci_scan_single_device(ptr noundef %bus, i32 noundef %devfn)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv_flags.i = getelementptr inbounds %struct.pci_dev, ptr %call1, i32 0, i32 81
  %11 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %priv_flags.i, align 4
  %and1.i.i = and i32 %12, 1
  %13 = xor i32 %and1.i.i, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cap.i) #14
  %14 = ptrtoint ptr %cap.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %cap.i, align 2
  %15 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %self.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end4.lor.lhs.false.i_crit_edge, label %pci_ari_enabled.exit.i

if.end4.lor.lhs.false.i_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

pci_ari_enabled.exit.i:                           ; preds = %if.end4
  %ari_enabled.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 49
  %17 = ptrtoint ptr %ari_enabled.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 5)
  %bf.load.i.i = load i40, ptr %ari_enabled.i.i, align 1
  %18 = and i40 %bf.load.i.i, 33554432
  %tobool2.i.not.i = icmp eq i40 %18, 0
  br i1 %tobool2.i.not.i, label %pci_ari_enabled.exit.i.lor.lhs.false.i_crit_edge, label %if.end.i

pci_ari_enabled.exit.i.lor.lhs.false.i_crit_edge: ; preds = %pci_ari_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

if.end.i:                                         ; preds = %pci_ari_enabled.exit.i
  %call2.i = tail call zeroext i16 @pci_find_ext_capability(ptr noundef nonnull %call1, i32 noundef 14) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call2.i)
  %tobool3.not.i = icmp eq i16 %call2.i, 0
  br i1 %tobool3.not.i, label %next_fn.exit.thread, label %if.end5.i

next_fn.exit.thread:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cap.i) #14
  br label %for.end

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = zext i16 %call2.i to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  %call6.i = call i32 @pci_read_config_word(ptr noundef nonnull %call1, i32 noundef %add.i, ptr noundef nonnull %cap.i) #14
  %19 = ptrtoint ptr %cap.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cap.i, align 2
  %21 = lshr i16 %20, 8
  %22 = zext i16 %21 to i32
  br label %next_fn.exit

lor.lhs.false.i:                                  ; preds = %pci_ari_enabled.exit.i.lor.lhs.false.i_crit_edge, %if.end4.lor.lhs.false.i_crit_edge
  %multifunction.i = getelementptr inbounds %struct.pci_dev, ptr %call1, i32 0, i32 49
  %23 = ptrtoint ptr %multifunction.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 5)
  %bf.load.i = load i40, ptr %multifunction.i, align 1
  %24 = lshr i40 %bf.load.i, 35
  %25 = trunc i40 %24 to i32
  %26 = and i32 %25, 1
  br label %next_fn.exit

next_fn.exit:                                     ; preds = %lor.lhs.false.i, %if.end5.i
  %retval.0.i49 = phi i32 [ %22, %if.end5.i ], [ %26, %lor.lhs.false.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cap.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i49)
  %cmp9.not84 = icmp eq i32 %retval.0.i49, 0
  br i1 %cmp9.not84, label %next_fn.exit.for.end_crit_edge, label %next_fn.exit.for.body_crit_edge

next_fn.exit.for.body_crit_edge:                  ; preds = %next_fn.exit
  br label %for.body

next_fn.exit.for.end_crit_edge:                   ; preds = %next_fn.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %next_fn.exit78.for.body_crit_edge, %next_fn.exit.for.body_crit_edge
  %nr.186 = phi i32 [ %nr.3, %next_fn.exit78.for.body_crit_edge ], [ %13, %next_fn.exit.for.body_crit_edge ]
  %fn.085 = phi i32 [ %retval.0.i77, %next_fn.exit78.for.body_crit_edge ], [ %retval.0.i49, %next_fn.exit.for.body_crit_edge ]
  %add = add i32 %fn.085, %devfn
  %call10 = call ptr @pci_scan_single_device(ptr noundef %bus, i32 noundef %add)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %priv_flags.i50 = getelementptr inbounds %struct.pci_dev, ptr %call10, i32 0, i32 81
  %27 = ptrtoint ptr %priv_flags.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %priv_flags.i50, align 4
  %and1.i.i51 = and i32 %28, 1
  %29 = xor i32 %and1.i.i51, 1
  %spec.select46 = add i32 %29, %nr.186
  %multifunction = getelementptr inbounds %struct.pci_dev, ptr %call10, i32 0, i32 49
  %30 = ptrtoint ptr %multifunction to i32
  call void @__asan_loadN_noabort(i32 %30, i32 5)
  %bf.load = load i40, ptr %multifunction, align 1
  %bf.set = or i40 %bf.load, 34359738368
  store i40 %bf.set, ptr %multifunction, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %nr.3 = phi i32 [ %spec.select46, %if.then12 ], [ %nr.186, %for.body.for.inc_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cap.i53) #14
  %31 = ptrtoint ptr %cap.i53 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %cap.i53, align 2
  %32 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %self.i, align 4
  %tobool.not.i.i55 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i55, label %for.inc.if.end11.i71_crit_edge, label %pci_ari_enabled.exit.i59

for.inc.if.end11.i71_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i71

pci_ari_enabled.exit.i59:                         ; preds = %for.inc
  %ari_enabled.i.i56 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 49
  %34 = ptrtoint ptr %ari_enabled.i.i56 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 5)
  %bf.load.i.i57 = load i40, ptr %ari_enabled.i.i56, align 1
  %35 = and i40 %bf.load.i.i57, 33554432
  %tobool2.i.not.i58 = icmp eq i40 %35, 0
  br i1 %tobool2.i.not.i58, label %pci_ari_enabled.exit.i59.if.end11.i71_crit_edge, label %if.then.i61

pci_ari_enabled.exit.i59.if.end11.i71_crit_edge:  ; preds = %pci_ari_enabled.exit.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i71

if.then.i61:                                      ; preds = %pci_ari_enabled.exit.i59
  br i1 %tobool11.not, label %if.then.i61.next_fn.exit78.thread_crit_edge, label %if.end.i64

if.then.i61.next_fn.exit78.thread_crit_edge:      ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #16
  br label %next_fn.exit78.thread

if.end.i64:                                       ; preds = %if.then.i61
  %call2.i62 = call zeroext i16 @pci_find_ext_capability(ptr noundef nonnull %call10, i32 noundef 14) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call2.i62)
  %tobool3.not.i63 = icmp eq i16 %call2.i62, 0
  br i1 %tobool3.not.i63, label %if.end.i64.next_fn.exit78.thread_crit_edge, label %if.end5.i69

if.end.i64.next_fn.exit78.thread_crit_edge:       ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #16
  br label %next_fn.exit78.thread

if.end5.i69:                                      ; preds = %if.end.i64
  %conv.i65 = zext i16 %call2.i62 to i32
  %add.i66 = add nuw nsw i32 %conv.i65, 4
  %call6.i67 = call i32 @pci_read_config_word(ptr noundef nonnull %call10, i32 noundef %add.i66, ptr noundef nonnull %cap.i53) #14
  %36 = ptrtoint ptr %cap.i53 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %cap.i53, align 2
  %38 = lshr i16 %37, 8
  %39 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %fn.085, i32 %39)
  %cmp.not.i68 = icmp ult i32 %fn.085, %39
  br i1 %cmp.not.i68, label %if.end5.i69.next_fn.exit78_crit_edge, label %if.end5.i69.next_fn.exit78.thread_crit_edge

if.end5.i69.next_fn.exit78.thread_crit_edge:      ; preds = %if.end5.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %next_fn.exit78.thread

if.end5.i69.next_fn.exit78_crit_edge:             ; preds = %if.end5.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %next_fn.exit78

if.end11.i71:                                     ; preds = %pci_ari_enabled.exit.i59.if.end11.i71_crit_edge, %for.inc.if.end11.i71_crit_edge
  br i1 %tobool11.not, label %if.end11.i71.if.then14.i76_crit_edge, label %lor.lhs.false.i75

if.end11.i71.if.then14.i76_crit_edge:             ; preds = %if.end11.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14.i76

lor.lhs.false.i75:                                ; preds = %if.end11.i71
  %multifunction.i72 = getelementptr inbounds %struct.pci_dev, ptr %call10, i32 0, i32 49
  %40 = ptrtoint ptr %multifunction.i72 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 5)
  %bf.load.i73 = load i40, ptr %multifunction.i72, align 1
  %41 = and i40 %bf.load.i73, 34359738368
  %tobool13.not.i74 = icmp eq i40 %41, 0
  br i1 %tobool13.not.i74, label %lor.lhs.false.i75.next_fn.exit78.thread_crit_edge, label %lor.lhs.false.i75.if.then14.i76_crit_edge

lor.lhs.false.i75.if.then14.i76_crit_edge:        ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14.i76

lor.lhs.false.i75.next_fn.exit78.thread_crit_edge: ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_pc() #16
  br label %next_fn.exit78.thread

if.then14.i76:                                    ; preds = %lor.lhs.false.i75.if.then14.i76_crit_edge, %if.end11.i71.if.then14.i76_crit_edge
  %add15.i = add nsw i32 %fn.085, 1
  %rem.i = and i32 %add15.i, 7
  br label %next_fn.exit78

next_fn.exit78.thread:                            ; preds = %lor.lhs.false.i75.next_fn.exit78.thread_crit_edge, %if.end5.i69.next_fn.exit78.thread_crit_edge, %if.end.i64.next_fn.exit78.thread_crit_edge, %if.then.i61.next_fn.exit78.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cap.i53) #14
  br label %for.end

next_fn.exit78:                                   ; preds = %if.then14.i76, %if.end5.i69.next_fn.exit78_crit_edge
  %retval.0.i77 = phi i32 [ %rem.i, %if.then14.i76 ], [ %39, %if.end5.i69.next_fn.exit78_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cap.i53) #14
  %cmp9.not = icmp eq i32 %retval.0.i77, 0
  br i1 %cmp9.not, label %next_fn.exit78.for.end_crit_edge, label %next_fn.exit78.for.body_crit_edge

next_fn.exit78.for.body_crit_edge:                ; preds = %next_fn.exit78
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

next_fn.exit78.for.end_crit_edge:                 ; preds = %next_fn.exit78
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %next_fn.exit78.for.end_crit_edge, %next_fn.exit78.thread, %next_fn.exit.for.end_crit_edge, %next_fn.exit.thread
  %nr.1.lcssa = phi i32 [ %13, %next_fn.exit.for.end_crit_edge ], [ %13, %next_fn.exit.thread ], [ %nr.3, %next_fn.exit78.thread ], [ %nr.3, %next_fn.exit78.for.end_crit_edge ]
  %42 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %self.i, align 4
  %tobool19.not = icmp eq ptr %43, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.1.lcssa)
  %tobool21.not = icmp eq i32 %nr.1.lcssa, 0
  %or.cond47 = select i1 %tobool19.not, i1 true, i1 %tobool21.not
  br i1 %or.cond47, label %for.end.cleanup_crit_edge, label %if.then22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @pcie_aspm_init_link_state(ptr noundef nonnull %43) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %only_one_child.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %only_one_child.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %nr.1.lcssa, %if.then22 ], [ %nr.1.lcssa, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_aspm_init_link_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_bus_configure_settings(ptr noundef %bus) #0 align 64 {
entry:
  %smpss = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %smpss) #14
  %0 = ptrtoint ptr %smpss to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %smpss, align 1
  %self = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %1 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %self, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not = icmp eq i8 %4, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcie_bus_config to i32))
  %5 = load i32, ptr @pcie_bus_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cond = icmp eq i32 %5, 2
  br i1 %cond, label %if.then7, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then7:                                         ; preds = %if.end3
  %pcie_mpss = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 22
  %6 = ptrtoint ptr %pcie_mpss to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %pcie_mpss, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %7 = ptrtoint ptr %smpss to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.lshr, ptr %smpss, align 1
  %8 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not.i = icmp eq i8 %9, 0
  br i1 %tobool.i.not.i, label %if.then7.pcie_find_smpss.exit_crit_edge, label %if.end.i

if.then7.pcie_find_smpss.exit_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %pcie_find_smpss.exit

if.end.i:                                         ; preds = %if.then7
  %is_hotplug_bridge.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 49
  %10 = ptrtoint ptr %is_hotplug_bridge.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 5)
  %bf.load.i = load i40, ptr %is_hotplug_bridge.i, align 1
  %11 = and i40 %bf.load.i, 32768
  %tobool.not.i = icmp eq i40 %11, 0
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %pcie_flags_reg.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 25
  %12 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %14 = and i16 %13, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %14)
  %cmp.not.i = icmp eq i16 %14, 64
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end3.i_crit_edge, label %if.then2.i

land.lhs.true.i.if.end3.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %smpss to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %smpss, align 1
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %land.lhs.true.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %16 = ptrtoint ptr %smpss to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %smpss, align 1
  %18 = ptrtoint ptr %pcie_mpss to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load4.i = load i8, ptr %pcie_mpss, align 1
  %bf.lshr5.i = lshr i8 %bf.load4.i, 5
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %bf.lshr5.i)
  %cmp7.i = icmp ugt i8 %17, %bf.lshr5.i
  br i1 %cmp7.i, label %if.then9.i, label %if.end3.i.pcie_find_smpss.exit_crit_edge

if.end3.i.pcie_find_smpss.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pcie_find_smpss.exit

if.then9.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %smpss to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.lshr5.i, ptr %smpss, align 1
  br label %pcie_find_smpss.exit

pcie_find_smpss.exit:                             ; preds = %if.then9.i, %if.end3.i.pcie_find_smpss.exit_crit_edge, %if.then7.pcie_find_smpss.exit_crit_edge
  call void @pci_walk_bus(ptr noundef %bus, ptr noundef nonnull @pcie_find_smpss, ptr noundef nonnull %smpss) #14
  br label %if.end11

if.end11:                                         ; preds = %pcie_find_smpss.exit, %if.end3.if.end11_crit_edge
  %20 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %self, align 4
  %call13 = call i32 @pcie_bus_configure_set(ptr noundef %21, ptr noundef nonnull %smpss)
  call void @pci_walk_bus(ptr noundef %bus, ptr noundef nonnull @pcie_bus_configure_set, ptr noundef nonnull %smpss) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %smpss) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcie_find_smpss(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_hotplug_bridge = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %2 = ptrtoint ptr %is_hotplug_bridge to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %is_hotplug_bridge, align 1
  %3 = and i40 %bf.load, 32768
  %tobool.not = icmp eq i40 %3, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %4 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %6 = and i16 %5, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %6)
  %cmp.not = icmp eq i16 %6, 64
  br i1 %cmp.not, label %land.lhs.true.if.end3_crit_edge, label %if.then2

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %data, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  %pcie_mpss = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 22
  %10 = ptrtoint ptr %pcie_mpss to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load4 = load i8, ptr %pcie_mpss, align 1
  %bf.lshr5 = lshr i8 %bf.load4, 5
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %bf.lshr5)
  %cmp7 = icmp ugt i8 %9, %bf.lshr5
  br i1 %cmp7, label %if.then9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.lshr5, ptr %data, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_bus_configure_set(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcie_bus_config to i32))
  %2 = load i32, ptr @pcie_bus_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %conv = zext i8 %4 to i32
  %shl = shl i32 128, %conv
  %call4 = tail call i32 @pcie_get_mps(ptr noundef %dev) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcie_bus_config to i32))
  %5 = load i32, ptr @pcie_bus_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i = icmp eq i32 %5, 3
  br i1 %cmp.i, label %if.then.i, label %if.end3.if.end9.i_crit_edge

if.end3.if.end9.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

if.then.i:                                        ; preds = %if.end3
  %pcie_mpss.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 22
  %6 = ptrtoint ptr %pcie_mpss.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %pcie_mpss.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 5
  %conv.i = zext i8 %bf.lshr.i to i32
  %shl.i = shl nuw nsw i32 128, %conv.i
  %pcie_flags_reg.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %7 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %9 = and i16 %8, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %9)
  %cmp1.not.i = icmp eq i16 %9, 64
  br i1 %cmp1.not.i, label %if.then.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %self.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then3.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i = tail call i32 @pcie_get_mps(ptr noundef nonnull %13) #14
  %14 = tail call i32 @llvm.smin.i32(i32 %shl.i, i32 %call6.i) #14
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then3.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.then.i.if.end9.i_crit_edge, %if.end3.if.end9.i_crit_edge
  %mps.addr.0.i = phi i32 [ %14, %if.then3.i ], [ %shl.i, %land.lhs.true.i.if.end9.i_crit_edge ], [ %shl.i, %if.then.i.if.end9.i_crit_edge ], [ %shl, %if.end3.if.end9.i_crit_edge ]
  %call10.i = tail call i32 @pcie_set_mps(ptr noundef %dev, i32 noundef %mps.addr.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.pcie_write_mps.exit_crit_edge, label %do.end.i

if.end9.i.pcie_write_mps.exit_crit_edge:          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pcie_write_mps.exit

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.158) #17
  br label %pcie_write_mps.exit

pcie_write_mps.exit:                              ; preds = %do.end.i, %if.end9.i.pcie_write_mps.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcie_bus_config to i32))
  %15 = load i32, ptr @pcie_bus_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 3
  br i1 %cmp.not.i, label %if.end.i, label %pcie_write_mps.exit.pcie_write_mrrs.exit_crit_edge

pcie_write_mps.exit.pcie_write_mrrs.exit_crit_edge: ; preds = %pcie_write_mps.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %pcie_write_mrrs.exit

if.end.i:                                         ; preds = %pcie_write_mps.exit
  %call.i = tail call i32 @pcie_get_mps(ptr noundef %dev) #14
  %call128.i = tail call i32 @pcie_get_readrq(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call128.i)
  %cmp2.not29.i = icmp ne i32 %call.i, %call128.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call.i)
  %cmp330.i = icmp sgt i32 %call.i, 127
  %or.cond31.i = and i1 %cmp330.i, %cmp2.not29.i
  br i1 %or.cond31.i, label %while.body.lr.ph.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i19.while.body.i_crit_edge, %while.body.lr.ph.i
  %mrrs.032.i = phi i32 [ %call.i, %while.body.lr.ph.i ], [ %div2526.i, %do.end.i19.while.body.i_crit_edge ]
  %call4.i = tail call i32 @pcie_set_readrq(ptr noundef %dev, i32 noundef %mrrs.032.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i18 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i18, label %while.body.i.pcie_write_mrrs.exit_crit_edge, label %do.end.i19

while.body.i.pcie_write_mrrs.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pcie_write_mrrs.exit

do.end.i19:                                       ; preds = %while.body.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i, ptr noundef nonnull @.str.160) #17
  %div2526.i = lshr i32 %mrrs.032.i, 1
  %call1.i = tail call i32 @pcie_get_readrq(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %div2526.i, i32 %call1.i)
  %cmp2.not.i = icmp ne i32 %div2526.i, %call1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %mrrs.032.i)
  %cmp3.i = icmp ugt i32 %mrrs.032.i, 255
  %or.cond.i = and i1 %cmp3.i, %cmp2.not.i
  br i1 %or.cond.i, label %do.end.i19.while.body.i_crit_edge, label %do.end.i19.while.end.i_crit_edge

do.end.i19.while.end.i_crit_edge:                 ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

do.end.i19.while.body.i_crit_edge:                ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.i:                                      ; preds = %do.end.i19.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %mrrs.0.lcssa.i = phi i32 [ %call.i, %if.end.i.while.end.i_crit_edge ], [ %div2526.i, %do.end.i19.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %mrrs.0.lcssa.i)
  %cmp8.i = icmp slt i32 %mrrs.0.lcssa.i, 128
  br i1 %cmp8.i, label %do.end12.i, label %while.end.i.pcie_write_mrrs.exit_crit_edge

while.end.i.pcie_write_mrrs.exit_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pcie_write_mrrs.exit

do.end12.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev13.i20 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i20, ptr noundef nonnull @.str.163) #17
  br label %pcie_write_mrrs.exit

pcie_write_mrrs.exit:                             ; preds = %do.end12.i, %while.end.i.pcie_write_mrrs.exit_crit_edge, %while.body.i.pcie_write_mrrs.exit_crit_edge, %pcie_write_mps.exit.pcie_write_mrrs.exit_crit_edge
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call6 = tail call i32 @pcie_get_mps(ptr noundef %dev) #14
  %pcie_mpss = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 22
  %16 = ptrtoint ptr %pcie_mpss to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %pcie_mpss, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %conv7 = zext i8 %bf.lshr to i32
  %shl8 = shl nuw nsw i32 128, %conv7
  %call9 = tail call i32 @pcie_get_readrq(ptr noundef %dev) #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.156, i32 noundef %call6, i32 noundef %shl8, i32 noundef %call4, i32 noundef %call9) #17
  br label %cleanup

cleanup:                                          ; preds = %pcie_write_mrrs.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @pcibios_fixup_bus(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_scan_child_bus(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef %bus, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci_scan_child_bus_extend(ptr noundef %bus, i32 noundef %available_buses) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %busn_res = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 8
  %0 = ptrtoint ptr %busn_res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %busn_res, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_scan_child_bus_extend.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci_scan_child_bus_extend, %for.body)) #14
          to label %if.then [label %for.body], !srcloc !426

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev5 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_scan_child_bus_extend.__UNIQUE_ID_ddebug248, ptr noundef %dev5, ptr noundef nonnull @.str.166) #14
  br label %for.body

for.body:                                         ; preds = %for.inc18.for.body_crit_edge, %if.then, %entry
  %devfn.0323 = phi i32 [ %add19, %for.inc18.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %call6 = tail call i32 @pci_scan_slot(ptr noundef %bus, i32 noundef %devfn.0323)
  %call.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.170) #14
  %tobool.i = icmp ne ptr %call.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8 = icmp eq i32 %call6, 0
  %or.cond = select i1 %tobool.i, i1 %cmp8, i1 false
  br i1 %or.cond, label %for.body12.preheader, label %for.body.for.inc18_crit_edge

for.body.for.inc18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18

for.body12.preheader:                             ; preds = %for.body
  %add = or i32 %devfn.0323, 1
  %call13 = tail call ptr @pci_scan_single_device(ptr noundef %bus, i32 noundef %add)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %for.body12.preheader.for.inc_crit_edge, label %if.then15

for.body12.preheader.for.inc_crit_edge:           ; preds = %for.body12.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then15:                                        ; preds = %for.body12.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %multifunction = getelementptr inbounds %struct.pci_dev, ptr %call13, i32 0, i32 49
  %2 = ptrtoint ptr %multifunction to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %multifunction, align 1
  %bf.set = or i40 %bf.load, 34359738368
  store i40 %bf.set, ptr %multifunction, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %for.body12.preheader.for.inc_crit_edge
  %add.1 = or i32 %devfn.0323, 2
  %call13.1 = tail call ptr @pci_scan_single_device(ptr noundef %bus, i32 noundef %add.1)
  %tobool14.not.1 = icmp eq ptr %call13.1, null
  br i1 %tobool14.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then15.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then15.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %multifunction.1 = getelementptr inbounds %struct.pci_dev, ptr %call13.1, i32 0, i32 49
  %3 = ptrtoint ptr %multifunction.1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 5)
  %bf.load.1 = load i40, ptr %multifunction.1, align 1
  %bf.set.1 = or i40 %bf.load.1, 34359738368
  store i40 %bf.set.1, ptr %multifunction.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then15.1, %for.inc.for.inc.1_crit_edge
  %add.2 = or i32 %devfn.0323, 3
  %call13.2 = tail call ptr @pci_scan_single_device(ptr noundef %bus, i32 noundef %add.2)
  %tobool14.not.2 = icmp eq ptr %call13.2, null
  br i1 %tobool14.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then15.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then15.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %multifunction.2 = getelementptr inbounds %struct.pci_dev, ptr %call13.2, i32 0, i32 49
  %4 = ptrtoint ptr %multifunction.2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load.2 = load i40, ptr %multifunction.2, align 1
  %bf.set.2 = or i40 %bf.load.2, 34359738368
  store i40 %bf.set.2, ptr %multifunction.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then15.2, %for.inc.1.for.inc.2_crit_edge
  %add.3 = or i32 %devfn.0323, 4
  %call13.3 = tail call ptr @pci_scan_single_device(ptr noundef %bus, i32 noundef %add.3)
  %tobool14.not.3 = icmp eq ptr %call13.3, null
  br i1 %tobool14.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then15.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.then15.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  %multifunction.3 = getelementptr inbounds %struct.pci_dev, ptr %call13.3, i32 0, i32 49
  %5 = ptrtoint ptr %multifunction.3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 5)
  %bf.load.3 = load i40, ptr %multifunction.3, align 1
  %bf.set.3 = or i40 %bf.load.3, 34359738368
  store i40 %bf.set.3, ptr %multifunction.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then15.3, %for.inc.2.for.inc.3_crit_edge
  %add.4 = or i32 %devfn.0323, 5
  %call13.4 = tail call ptr @pci_scan_single_device(ptr noundef %bus, i32 noundef %add.4)
  %tobool14.not.4 = icmp eq ptr %call13.4, null
  br i1 %tobool14.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then15.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.then15.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  %multifunction.4 = getelementptr inbounds %struct.pci_dev, ptr %call13.4, i32 0, i32 49
  %6 = ptrtoint ptr %multifunction.4 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 5)
  %bf.load.4 = load i40, ptr %multifunction.4, align 1
  %bf.set.4 = or i40 %bf.load.4, 34359738368
  store i40 %bf.set.4, ptr %multifunction.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then15.4, %for.inc.3.for.inc.4_crit_edge
  %add.5 = or i32 %devfn.0323, 6
  %call13.5 = tail call ptr @pci_scan_single_device(ptr noundef %bus, i32 noundef %add.5)
  %tobool14.not.5 = icmp eq ptr %call13.5, null
  br i1 %tobool14.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then15.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.then15.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  %multifunction.5 = getelementptr inbounds %struct.pci_dev, ptr %call13.5, i32 0, i32 49
  %7 = ptrtoint ptr %multifunction.5 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 5)
  %bf.load.5 = load i40, ptr %multifunction.5, align 1
  %bf.set.5 = or i40 %bf.load.5, 34359738368
  store i40 %bf.set.5, ptr %multifunction.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then15.5, %for.inc.4.for.inc.5_crit_edge
  %add.6 = or i32 %devfn.0323, 7
  %call13.6 = tail call ptr @pci_scan_single_device(ptr noundef %bus, i32 noundef %add.6)
  %tobool14.not.6 = icmp eq ptr %call13.6, null
  br i1 %tobool14.not.6, label %for.inc.5.for.inc18_crit_edge, label %if.then15.6

for.inc.5.for.inc18_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18

if.then15.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  %multifunction.6 = getelementptr inbounds %struct.pci_dev, ptr %call13.6, i32 0, i32 49
  %8 = ptrtoint ptr %multifunction.6 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 5)
  %bf.load.6 = load i40, ptr %multifunction.6, align 1
  %bf.set.6 = or i40 %bf.load.6, 34359738368
  store i40 %bf.set.6, ptr %multifunction.6, align 1
  br label %for.inc18

for.inc18:                                        ; preds = %if.then15.6, %for.inc.5.for.inc18_crit_edge, %for.body.for.inc18_crit_edge
  %add19 = add nuw nsw i32 %devfn.0323, 8
  %cmp = icmp ult i32 %devfn.0323, 248
  br i1 %cmp, label %for.inc18.for.body_crit_edge, label %for.end20

for.inc18.for.body_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end20:                                        ; preds = %for.inc18
  %call21 = tail call i32 @pci_iov_bus_range(ptr noundef %bus) #14
  %add22 = add i32 %call21, %1
  %is_added = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 24
  %9 = ptrtoint ptr %is_added to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load23 = load i8, ptr %is_added, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load23)
  %tobool24.not = icmp sgt i8 %bf.load23, -1
  br i1 %tobool24.not, label %do.body26, label %for.end20.if.end49_crit_edge

for.end20.if.end49_crit_edge:                     ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

do.body26:                                        ; preds = %for.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_scan_child_bus_extend.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci_scan_child_bus_extend, %do.end44)) #14
          to label %if.then40 [label %do.end44], !srcloc !426

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  %dev41 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_scan_child_bus_extend.__UNIQUE_ID_ddebug249, ptr noundef %dev41, ptr noundef nonnull @.str.167) #14
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body26
  tail call void @pcibios_fixup_bus(ptr noundef %bus)
  %10 = ptrtoint ptr %is_added to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load46 = load i8, ptr %is_added, align 8
  %bf.set48 = or i8 %bf.load46, -128
  store i8 %bf.set48, ptr %is_added, align 8
  br label %if.end49

if.end49:                                         ; preds = %do.end44, %for.end20.if.end49_crit_edge
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %11 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %11)
  %dev.0325 = load ptr, ptr %devices, align 4
  %cmp53.not326 = icmp eq ptr %dev.0325, %devices
  br i1 %cmp53.not326, label %if.end49.for.cond113.preheader_crit_edge, label %if.end49.for.body56_crit_edge

if.end49.for.body56_crit_edge:                    ; preds = %if.end49
  br label %for.body56

if.end49.for.cond113.preheader_crit_edge:         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond113.preheader

for.body56:                                       ; preds = %for.inc70.for.body56_crit_edge, %if.end49.for.body56_crit_edge
  %dev.0329 = phi ptr [ %dev.0, %for.inc70.for.body56_crit_edge ], [ %dev.0325, %if.end49.for.body56_crit_edge ]
  %normal_bridges.0328 = phi i32 [ %normal_bridges.1, %for.inc70.for.body56_crit_edge ], [ 0, %if.end49.for.body56_crit_edge ]
  %hotplug_bridges.0327 = phi i32 [ %hotplug_bridges.1, %for.inc70.for.body56_crit_edge ], [ 0, %if.end49.for.body56_crit_edge ]
  %hdr_type.i = getelementptr inbounds %struct.pci_dev, ptr %dev.0329, i32 0, i32 13
  %12 = ptrtoint ptr %hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hdr_type.i, align 1
  %14 = add i8 %13, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %if.else, label %for.body56.for.inc70_crit_edge

for.body56.for.inc70_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc70

if.else:                                          ; preds = %for.body56
  %is_hotplug_bridge = getelementptr inbounds %struct.pci_dev, ptr %dev.0329, i32 0, i32 49
  %16 = ptrtoint ptr %is_hotplug_bridge to i32
  call void @__asan_loadN_noabort(i32 %16, i32 5)
  %bf.load59 = load i40, ptr %is_hotplug_bridge, align 1
  %17 = and i40 %bf.load59, 32768
  %tobool63.not = icmp eq i40 %17, 0
  br i1 %tobool63.not, label %if.else66, label %if.then64

if.then64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %inc65 = add i32 %hotplug_bridges.0327, 1
  br label %for.inc70

if.else66:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %inc67 = add i32 %normal_bridges.0328, 1
  br label %for.inc70

for.inc70:                                        ; preds = %if.else66, %if.then64, %for.body56.for.inc70_crit_edge
  %hotplug_bridges.1 = phi i32 [ %inc65, %if.then64 ], [ %hotplug_bridges.0327, %if.else66 ], [ %hotplug_bridges.0327, %for.body56.for.inc70_crit_edge ]
  %normal_bridges.1 = phi i32 [ %normal_bridges.0328, %if.then64 ], [ %inc67, %if.else66 ], [ %normal_bridges.0328, %for.body56.for.inc70_crit_edge ]
  %18 = ptrtoint ptr %dev.0329 to i32
  call void @__asan_load4_noabort(i32 %18)
  %dev.0 = load ptr, ptr %dev.0329, align 4
  %cmp53.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp53.not, label %for.inc70.for.body88_crit_edge, label %for.inc70.for.body56_crit_edge

for.inc70.for.body56_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body56

for.inc70.for.body88_crit_edge:                   ; preds = %for.inc70
  br label %for.body88

for.cond113.preheader:                            ; preds = %for.inc101.for.cond113.preheader_crit_edge, %if.end49.for.cond113.preheader_crit_edge
  %normal_bridges.0.lcssa348 = phi i32 [ 0, %if.end49.for.cond113.preheader_crit_edge ], [ %normal_bridges.1, %for.inc101.for.cond113.preheader_crit_edge ]
  %hotplug_bridges.0.lcssa347 = phi i32 [ 0, %if.end49.for.cond113.preheader_crit_edge ], [ %hotplug_bridges.1, %for.inc101.for.cond113.preheader_crit_edge ]
  %max.0.lcssa = phi i32 [ %add22, %if.end49.for.cond113.preheader_crit_edge ], [ %max.1, %for.inc101.for.cond113.preheader_crit_edge ]
  %used_buses.0.lcssa = phi i32 [ %call21, %if.end49.for.cond113.preheader_crit_edge ], [ %used_buses.1, %for.inc101.for.cond113.preheader_crit_edge ]
  %19 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %19)
  %dev.2338 = load ptr, ptr %devices, align 4
  %cmp116.not339 = icmp eq ptr %dev.2338, %devices
  br i1 %cmp116.not339, label %for.cond113.preheader.for.end156_crit_edge, label %for.body119.lr.ph

for.cond113.preheader.for.end156_crit_edge:       ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end156

for.body119.lr.ph:                                ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hotplug_bridges.0.lcssa347)
  %tobool123.not = icmp eq i32 %hotplug_bridges.0.lcssa347, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %normal_bridges.0.lcssa348)
  %cmp125 = icmp eq i32 %normal_bridges.0.lcssa348, 1
  %or.cond305 = select i1 %tobool123.not, i1 %cmp125, i1 false
  %sub135 = add i32 %available_buses, 1
  br label %for.body119

for.body88:                                       ; preds = %for.inc101.for.body88_crit_edge, %for.inc70.for.body88_crit_edge
  %dev.1335 = phi ptr [ %dev.1, %for.inc101.for.body88_crit_edge ], [ %dev.0325, %for.inc70.for.body88_crit_edge ]
  %used_buses.0334 = phi i32 [ %used_buses.1, %for.inc101.for.body88_crit_edge ], [ %call21, %for.inc70.for.body88_crit_edge ]
  %max.0333 = phi i32 [ %max.1, %for.inc101.for.body88_crit_edge ], [ %add22, %for.inc70.for.body88_crit_edge ]
  %hdr_type.i316 = getelementptr inbounds %struct.pci_dev, ptr %dev.1335, i32 0, i32 13
  %20 = ptrtoint ptr %hdr_type.i316 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hdr_type.i316, align 1
  %22 = add i8 %21, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %23 = icmp ult i8 %22, 2
  br i1 %23, label %if.else91, label %for.body88.for.inc101_crit_edge

for.body88.for.inc101_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc101

if.else91:                                        ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #16
  %call92 = tail call fastcc i32 @pci_scan_bridge_extend(ptr noundef %bus, ptr noundef %dev.1335, i32 noundef %max.0333, i32 noundef 0, i32 noundef 0)
  %sub = sub i32 %max.0333, %call92
  %24 = tail call i32 @llvm.umax.i32(i32 %sub, i32 1)
  %spec.select = add i32 %24, %used_buses.0334
  br label %for.inc101

for.inc101:                                       ; preds = %if.else91, %for.body88.for.inc101_crit_edge
  %max.1 = phi i32 [ %max.0333, %for.body88.for.inc101_crit_edge ], [ %call92, %if.else91 ]
  %used_buses.1 = phi i32 [ %used_buses.0334, %for.body88.for.inc101_crit_edge ], [ %spec.select, %if.else91 ]
  %25 = ptrtoint ptr %dev.1335 to i32
  call void @__asan_load4_noabort(i32 %25)
  %dev.1 = load ptr, ptr %dev.1335, align 4
  %cmp85.not = icmp eq ptr %dev.1, %devices
  br i1 %cmp85.not, label %for.inc101.for.cond113.preheader_crit_edge, label %for.inc101.for.body88_crit_edge

for.inc101.for.body88_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body88

for.inc101.for.cond113.preheader_crit_edge:       ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond113.preheader

for.body119:                                      ; preds = %for.inc150.for.body119_crit_edge, %for.body119.lr.ph
  %dev.2343 = phi ptr [ %dev.2338, %for.body119.lr.ph ], [ %dev.2, %for.inc150.for.body119_crit_edge ]
  %used_buses.2341 = phi i32 [ %used_buses.0.lcssa, %for.body119.lr.ph ], [ %used_buses.4, %for.inc150.for.body119_crit_edge ]
  %max.2340 = phi i32 [ %max.0.lcssa, %for.body119.lr.ph ], [ %max.3, %for.inc150.for.body119_crit_edge ]
  %hdr_type.i317 = getelementptr inbounds %struct.pci_dev, ptr %dev.2343, i32 0, i32 13
  %26 = ptrtoint ptr %hdr_type.i317 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hdr_type.i317, align 1
  %28 = add i8 %27, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %29 = icmp ult i8 %28, 2
  br i1 %29, label %if.else122, label %for.body119.for.inc150_crit_edge

for.body119.for.inc150_crit_edge:                 ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc150

if.else122:                                       ; preds = %for.body119
  br i1 %or.cond305, label %if.else122.if.end140_crit_edge, label %if.else127

if.else122.if.end140_crit_edge:                   ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end140

if.else127:                                       ; preds = %if.else122
  %is_hotplug_bridge128 = getelementptr inbounds %struct.pci_dev, ptr %dev.2343, i32 0, i32 49
  %30 = ptrtoint ptr %is_hotplug_bridge128 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 5)
  %bf.load129 = load i40, ptr %is_hotplug_bridge128, align 1
  %31 = and i40 %bf.load129, 32768
  %tobool133.not = icmp eq i40 %31, 0
  br i1 %tobool133.not, label %if.else127.if.end140_crit_edge, label %if.then134

if.else127.if.end140_crit_edge:                   ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end140

if.then134:                                       ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #16
  %div = udiv i32 %available_buses, %hotplug_bridges.0.lcssa347
  %add136 = sub i32 %sub135, %used_buses.2341
  %32 = tail call i32 @llvm.umin.i32(i32 %div, i32 %add136)
  br label %if.end140

if.end140:                                        ; preds = %if.then134, %if.else127.if.end140_crit_edge, %if.else122.if.end140_crit_edge
  %buses.0 = phi i32 [ %32, %if.then134 ], [ 0, %if.else127.if.end140_crit_edge ], [ %available_buses, %if.else122.if.end140_crit_edge ]
  %call141 = tail call fastcc i32 @pci_scan_bridge_extend(ptr noundef %bus, ptr noundef %dev.2343, i32 noundef %max.2340, i32 noundef %buses.0, i32 noundef 1)
  %sub142 = sub i32 %call141, %max.2340
  %33 = tail call i32 @llvm.usub.sat.i32(i32 %sub142, i32 1)
  %used_buses.3 = add i32 %33, %used_buses.2341
  br label %for.inc150

for.inc150:                                       ; preds = %if.end140, %for.body119.for.inc150_crit_edge
  %max.3 = phi i32 [ %call141, %if.end140 ], [ %max.2340, %for.body119.for.inc150_crit_edge ]
  %used_buses.4 = phi i32 [ %used_buses.3, %if.end140 ], [ %used_buses.2341, %for.body119.for.inc150_crit_edge ]
  %34 = ptrtoint ptr %dev.2343 to i32
  call void @__asan_load4_noabort(i32 %34)
  %dev.2 = load ptr, ptr %dev.2343, align 4
  %cmp116.not = icmp eq ptr %dev.2, %devices
  br i1 %cmp116.not, label %for.inc150.for.end156_crit_edge, label %for.inc150.for.body119_crit_edge

for.inc150.for.body119_crit_edge:                 ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body119

for.inc150.for.end156_crit_edge:                  ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end156

for.end156:                                       ; preds = %for.inc150.for.end156_crit_edge, %for.cond113.preheader.for.end156_crit_edge
  %max.2.lcssa = phi i32 [ %max.0.lcssa, %for.cond113.preheader.for.end156_crit_edge ], [ %max.3, %for.inc150.for.end156_crit_edge ]
  %self = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %35 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %self, align 4
  %tobool157.not = icmp eq ptr %36, null
  br i1 %tobool157.not, label %for.end156.do.body207_crit_edge, label %land.lhs.true158

for.end156.do.body207_crit_edge:                  ; preds = %for.end156
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body207

land.lhs.true158:                                 ; preds = %for.end156
  %is_hotplug_bridge160 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 49
  %37 = ptrtoint ptr %is_hotplug_bridge160 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 5)
  %bf.load161 = load i40, ptr %is_hotplug_bridge160, align 1
  %38 = and i40 %bf.load161, 32768
  %tobool165.not = icmp eq i40 %38, 0
  br i1 %tobool165.not, label %land.lhs.true158.do.body207_crit_edge, label %if.then166

land.lhs.true158.do.body207_crit_edge:            ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body207

if.then166:                                       ; preds = %land.lhs.true158
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_hotplug_bus_size to i32))
  %39 = load i32, ptr @pci_hotplug_bus_size, align 4
  %sub167 = add i32 %39, -1
  %40 = tail call i32 @llvm.umax.i32(i32 %sub167, i32 %available_buses)
  %sub174 = sub i32 %max.2.lcssa, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub174, i32 %40)
  %cmp175 = icmp ult i32 %sub174, %40
  br i1 %cmp175, label %if.then176, label %if.then166.do.body207_crit_edge

if.then166.do.body207_crit_edge:                  ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body207

if.then176:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #16
  %add177 = add i32 %40, %1
  %end = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %end, align 4
  %43 = tail call i32 @llvm.umin.i32(i32 %add177, i32 %42)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_scan_child_bus_extend.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci_scan_child_bus_extend, %do.body207)) #14
          to label %if.then198 [label %do.body207], !srcloc !426

if.then198:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #16
  %dev199 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  %sub201 = sub i32 %43, %1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_scan_child_bus_extend.__UNIQUE_ID_ddebug254, ptr noundef %dev199, ptr noundef nonnull @.str.168, ptr noundef %busn_res, i32 noundef %sub201) #14
  br label %do.body207

do.body207:                                       ; preds = %if.then198, %if.then176, %if.then166.do.body207_crit_edge, %land.lhs.true158.do.body207_crit_edge, %for.end156.do.body207_crit_edge
  %max.5 = phi i32 [ %43, %if.then198 ], [ %max.2.lcssa, %if.then166.do.body207_crit_edge ], [ %max.2.lcssa, %land.lhs.true158.do.body207_crit_edge ], [ %max.2.lcssa, %for.end156.do.body207_crit_edge ], [ %43, %if.then176 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_scan_child_bus_extend.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci_scan_child_bus_extend, %do.end225)) #14
          to label %if.then221 [label %do.end225], !srcloc !426

if.then221:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #16
  %dev222 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_scan_child_bus_extend.__UNIQUE_ID_ddebug255, ptr noundef %dev222, ptr noundef nonnull @.str.169, i32 noundef %max.5) #14
  br label %do.end225

do.end225:                                        ; preds = %if.then221, %do.body207
  ret i32 %max.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_root_bridge_prepare(ptr noundef %bridge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @pcibios_add_bus(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @pcibios_remove_bus(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_create_root_bus(ptr noundef %parent, i32 noundef %bus, ptr noundef %ops, ptr noundef %sysdata, ptr noundef %resources) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1024) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %windows.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call7.i.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %windows.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %windows.i.i, ptr %windows.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %windows.i.i, ptr %prev.i.i.i, align 4
  %dma_ranges.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call7.i.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %dma_ranges.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %dma_ranges.i.i, ptr %dma_ranges.i.i, align 8
  %prev.i25.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_ranges.i.i, ptr %prev.i25.i.i, align 4
  %native_aer.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call7.i.i.i, i32 0, i32 13
  %5 = ptrtoint ptr %native_aer.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i.i = load i16, ptr %native_aer.i.i, align 8
  %bf.set15.i.i = or i16 %bf.load.i.i, 16128
  store i16 %bf.set15.i.i, ptr %native_aer.i.i, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call7.i.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %domain_nr.i.i, align 4
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i.i) #14
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 35
  %7 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pci_release_host_bridge_dev, ptr %release.i, align 4
  %parent1 = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %parent1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent, ptr %parent1, align 8
  %9 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %resources, align 4
  %cmp.i.not.i = icmp eq ptr %10, %resources
  br i1 %cmp.i.not.i, label %if.end.list_splice_init.exit_crit_edge, label %if.then.i

if.end.list_splice_init.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %windows.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %windows.i.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 1
  %13 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %windows.i.i, ptr %prev3.i.i, align 4
  store ptr %10, ptr %windows.i.i, align 8
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %12, ptr %14, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev6.i.i, align 4
  %18 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources, ptr %resources, align 4
  store ptr %resources, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end.list_splice_init.exit_crit_edge
  %sysdata2 = getelementptr inbounds %struct.pci_host_bridge, ptr %call7.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %sysdata2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sysdata, ptr %sysdata2, align 4
  %busnr = getelementptr inbounds %struct.pci_host_bridge, ptr %call7.i.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %busnr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bus, ptr %busnr, align 16
  %ops3 = getelementptr inbounds %struct.pci_host_bridge, ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %ops3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ops, ptr %ops3, align 4
  %call4 = tail call fastcc i32 @pci_register_host_bridge(ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %err_out, label %if.end6

if.end6:                                          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %bus7 = getelementptr inbounds %struct.pci_host_bridge, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %bus7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus7, align 32
  br label %cleanup

err_out:                                          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @put_device(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_out ], [ %23, %if.end6 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci_register_host_bridge(ptr noundef %bridge) unnamed_addr #0 align 64 {
entry:
  %resources = alloca %struct.list_head, align 4
  %addr = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.device, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resources) #14
  %2 = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 1
  %3 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %resources, ptr %resources, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %resources, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %addr) #14
  %5 = call ptr @memset(ptr %addr, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1120) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %children.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %children.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %children.i, ptr %children.i, align 4
  %prev.i15.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %children.i, ptr %prev.i15.i, align 8
  %devices.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %devices.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %devices.i, ptr %devices.i, align 4
  %prev.i16.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i16.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %devices.i, ptr %prev.i16.i, align 8
  %slots.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %slots.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %slots.i, ptr %slots.i, align 8
  %prev.i17.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %prev.i17.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %slots.i, ptr %prev.i17.i, align 4
  %resources.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %resources.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i, ptr %resources.i, align 8
  %prev.i18.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %prev.i18.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i, ptr %prev.i18.i, align 4
  %max_bus_speed.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 14
  %17 = ptrtoint ptr %max_bus_speed.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %max_bus_speed.i, align 2
  %cur_bus_speed.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 15
  %18 = ptrtoint ptr %cur_bus_speed.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %cur_bus_speed.i, align 1
  %bus3 = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 1
  %19 = ptrtoint ptr %bus3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i.i, ptr %bus3, align 32
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 4
  %20 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sysdata, align 4
  %sysdata4 = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %sysdata4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %sysdata4, align 4
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 2
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %ops5 = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %ops5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %ops5, align 8
  %busnr = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 5
  %26 = ptrtoint ptr %busnr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %busnr, align 16
  %busn_res = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 8
  %28 = ptrtoint ptr %busn_res to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %busn_res, align 8
  %conv = trunc i32 %27 to i8
  %number = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 12
  %29 = ptrtoint ptr %number to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %number, align 4
  %domain_nr = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 6
  %30 = ptrtoint ptr %domain_nr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %domain_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp = icmp eq i32 %31, -1
  br i1 %cmp, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = call i32 @pci_bus_find_domain_nr(ptr noundef nonnull %call7.i.i.i, ptr noundef %1) #14
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %.sink = phi i32 [ %call8, %if.then7 ], [ %31, %if.end.if.end12_crit_edge ]
  %32 = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 16
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %32, align 8
  %34 = ptrtoint ptr %busnr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %busnr, align 16
  %call15 = call ptr @pci_find_bus(i32 noundef %.sink, i32 noundef %35) #14
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end26, label %do.body

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_register_host_bridge.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci_register_host_bridge, %free)) #14
          to label %if.then23 [label %free], !srcloc !426

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev24 = getelementptr inbounds %struct.pci_bus, ptr %call15, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_register_host_bridge.__UNIQUE_ID_ddebug238, ptr noundef %dev24, ptr noundef nonnull @.str.172) #14
  br label %free

if.end26:                                         ; preds = %if.end12
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %32, align 8
  %38 = ptrtoint ptr %busnr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %busnr, align 16
  %call30 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %bridge, ptr noundef nonnull @.str.173, i32 noundef %37, i32 noundef %39) #14
  %call31 = call i32 @pcibios_root_bridge_prepare(ptr noundef %bridge)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end26.free_crit_edge

if.end26.free_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %free

if.end34:                                         ; preds = %if.end26
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 7
  %40 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %windows, align 4
  %cmp.i.not.i = icmp eq ptr %41, %windows
  br i1 %cmp.i.not.i, label %if.end34.list_splice_init.exit_crit_edge, label %if.then.i

if.end34.list_splice_init.exit_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %resources, align 4
  %prev2.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %resources, ptr %prev3.i.i, align 4
  store ptr %41, ptr %resources, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %43, ptr %45, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev6.i.i, align 4
  %49 = ptrtoint ptr %windows to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %windows, ptr %windows, align 4
  store ptr %windows, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end34.list_splice_init.exit_crit_edge
  %call36 = call i32 @device_add(ptr noundef %bridge) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @put_device(ptr noundef %bridge) #14
  br label %free

if.end40:                                         ; preds = %list_splice_init.exit
  %call42 = call ptr @get_device(ptr noundef %bridge) #14
  %bridge43 = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 20
  %50 = ptrtoint ptr %bridge43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call42, ptr %bridge43, align 8
  %is_prepared.i = getelementptr inbounds %struct.device, ptr %call42, i32 0, i32 12, i32 1
  %51 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %52 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %bf.cast.not.i = icmp eq i16 %52, 0
  br i1 %bf.cast.not.i, label %if.then.i362, label %if.end40.device_enable_async_suspend.exit_crit_edge

if.end40.device_enable_async_suspend.exit_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_enable_async_suspend.exit

if.then.i362:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set.i = or i16 %bf.load.i, 16384
  %53 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit

device_enable_async_suspend.exit:                 ; preds = %if.then.i362, %if.end40.device_enable_async_suspend.exit_crit_edge
  call void @pci_set_bus_of_node(ptr noundef nonnull %call7.i.i.i) #14
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %device_enable_async_suspend.exit
  %b.020.i = phi ptr [ %call7.i.i.i, %device_enable_async_suspend.exit ], [ %55, %for.inc.i.land.rhs.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %b.020.i, i32 0, i32 1
  %54 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %if.then5.critedge.i, label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %b.020.i, i32 0, i32 4
  %56 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %self.i, align 4
  %tobool1.not.i = icmp eq ptr %57, null
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i364

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i364:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %msi.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44, i32 16
  %58 = ptrtoint ptr %msi.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %msi.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i364, %for.body.i.for.inc.i_crit_edge
  %d.1.i = phi ptr [ %59, %if.then.i364 ], [ null, %for.body.i.for.inc.i_crit_edge ]
  %tobool.not.i365 = icmp eq ptr %d.1.i, null
  br i1 %tobool.not.i365, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.pci_set_bus_msi_domain.exit_crit_edge

for.inc.i.pci_set_bus_msi_domain.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_set_bus_msi_domain.exit

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.then5.critedge.i:                              ; preds = %land.rhs.i
  %bridge.i.i = getelementptr inbounds %struct.pci_bus, ptr %b.020.i, i32 0, i32 20
  %60 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bridge.i.i, align 8
  %msi.i.i.i = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %msi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %msi.i.i.i, align 4
  %tobool.not.i16.i = icmp eq ptr %63, null
  br i1 %tobool.not.i16.i, label %if.end.i.i, label %if.then5.critedge.i.pci_set_bus_msi_domain.exit_crit_edge

if.then5.critedge.i.pci_set_bus_msi_domain.exit_crit_edge: ; preds = %if.then5.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_set_bus_msi_domain.exit

if.end.i.i:                                       ; preds = %if.then5.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i.i = call ptr @pci_host_bridge_of_msi_domain(ptr noundef nonnull %b.020.i) #14
  br label %pci_set_bus_msi_domain.exit

pci_set_bus_msi_domain.exit:                      ; preds = %if.end.i.i, %if.then5.critedge.i.pci_set_bus_msi_domain.exit_crit_edge, %for.inc.i.pci_set_bus_msi_domain.exit_crit_edge
  %d.2.i = phi ptr [ %63, %if.then5.critedge.i.pci_set_bus_msi_domain.exit_crit_edge ], [ %call1.i.i, %if.end.i.i ], [ %d.1.i, %for.inc.i.pci_set_bus_msi_domain.exit_crit_edge ]
  %msi.i17.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 21, i32 16
  %64 = ptrtoint ptr %msi.i17.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %d.2.i, ptr %msi.i17.i, align 4
  %msi_domain = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 13
  %65 = ptrtoint ptr %msi_domain to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load = load i16, ptr %msi_domain, align 8
  %66 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool45.not = icmp eq i16 %66, 0
  br i1 %tobool45.not, label %pci_set_bus_msi_domain.exit.if.end54_crit_edge, label %land.lhs.true

pci_set_bus_msi_domain.exit.if.end54_crit_edge:   ; preds = %pci_set_bus_msi_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

land.lhs.true:                                    ; preds = %pci_set_bus_msi_domain.exit
  %67 = ptrtoint ptr %msi.i17.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %msi.i17.i, align 4
  %tobool48.not = icmp eq ptr %68, null
  br i1 %tobool48.not, label %land.lhs.true49, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

land.lhs.true49:                                  ; preds = %land.lhs.true
  %call50 = call zeroext i1 @pci_host_of_has_msi_map(ptr noundef %1) #14
  br i1 %call50, label %land.lhs.true49.if.end54_crit_edge, label %if.then51

land.lhs.true49.if.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #16
  %bus_flags = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 19
  %69 = ptrtoint ptr %bus_flags to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %bus_flags, align 2
  %71 = or i16 %70, 1
  store i16 %71, ptr %bus_flags, align 2
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %land.lhs.true49.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge, %pci_set_bus_msi_domain.exit.if.end54_crit_edge
  %tobool55.not = icmp eq ptr %1, null
  %dev59 = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 21
  %class = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 21, i32 33
  %72 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @pcibus_class, ptr %class, align 4
  %73 = ptrtoint ptr %bridge43 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bridge43, align 8
  %parent62 = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %75 = ptrtoint ptr %parent62 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %parent62, align 8
  %76 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %32, align 8
  %78 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %number, align 4
  %conv66 = zext i8 %79 to i32
  %call67 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev59, ptr noundef nonnull @.str.107, i32 noundef %77, i32 noundef %conv66) #14
  %init_name.i = getelementptr inbounds %struct.pci_bus, ptr %call7.i.i.i, i32 0, i32 21, i32 3
  %80 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i367 = icmp eq ptr %81, null
  br i1 %tobool.not.i367, label %if.end.i368, label %if.end54.dev_name.exit_crit_edge

if.end54.dev_name.exit_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i368:                                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev59, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i368, %if.end54.dev_name.exit_crit_edge
  %retval.0.i369 = phi ptr [ %83, %if.end.i368 ], [ %81, %if.end54.dev_name.exit_crit_edge ]
  %call71 = call i32 @device_register(ptr noundef %dev59) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %unregister

if.end74:                                         ; preds = %dev_name.exit
  call void @pcibios_add_bus(ptr noundef %call7.i.i.i)
  %84 = ptrtoint ptr %ops5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops5, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %tobool76.not = icmp eq ptr %87, null
  br i1 %tobool76.not, label %if.end74.if.end119_crit_edge, label %if.then77

if.end74.if.end119_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.then77:                                        ; preds = %if.end74
  %call80 = call i32 %87(ptr noundef %call7.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %do.end98, label %if.then77.if.end119_crit_edge, !prof !425

if.then77.if.end119_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

do.end98:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 958, i32 noundef 9, ptr noundef null) #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.111, i32 noundef %call80) #17
  br label %if.end119

if.end119:                                        ; preds = %do.end98, %if.then77.if.end119_crit_edge, %if.end74.if.end119_crit_edge
  br i1 %tobool55.not, label %do.end128, label %do.end124

do.end124:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %1, ptr noundef nonnull @.str.175, ptr noundef %retval.0.i369) #17
  br label %if.end131

do.end128:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  %call130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef %retval.0.i369) #17
  br label %if.end131

if.end131:                                        ; preds = %do.end128, %do.end124
  %88 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %resources, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %n.0374 = load ptr, ptr %89, align 4
  %cmp139.not375 = icmp eq ptr %89, %resources
  %cmp.i.not376 = icmp eq ptr %n.0374, %resources
  %or.cond377 = select i1 %cmp139.not375, i1 true, i1 %cmp.i.not376
  br i1 %or.cond377, label %if.end131.for.end_crit_edge, label %if.end131.if.end147_crit_edge

if.end131.if.end147_crit_edge:                    ; preds = %if.end131
  br label %if.end147

if.end131.for.end_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end147:                                        ; preds = %for.inc.if.end147_crit_edge, %if.end131.if.end147_crit_edge
  %n.0379 = phi ptr [ %n.0, %for.inc.if.end147_crit_edge ], [ %n.0374, %if.end131.if.end147_crit_edge ]
  %window.0378 = phi ptr [ %n.0379, %for.inc.if.end147_crit_edge ], [ %89, %if.end131.if.end147_crit_edge ]
  %res154 = getelementptr inbounds %struct.resource_entry, ptr %window.0378, i32 0, i32 1
  %91 = ptrtoint ptr %res154 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %res154, align 4
  %res156 = getelementptr inbounds %struct.resource_entry, ptr %n.0379, i32 0, i32 1
  %93 = ptrtoint ptr %res156 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %res156, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %92, i32 0, i32 3
  %95 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags, align 4
  %flags157 = getelementptr inbounds %struct.resource, ptr %94, i32 0, i32 3
  %97 = ptrtoint ptr %flags157 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags157, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp158.not = icmp eq i32 %96, %98
  br i1 %cmp158.not, label %lor.lhs.false, label %if.end147.for.inc_crit_edge

if.end147.for.inc_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end147
  %offset155 = getelementptr inbounds %struct.resource_entry, ptr %n.0379, i32 0, i32 2
  %99 = ptrtoint ptr %offset155 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %offset155, align 4
  %offset153 = getelementptr inbounds %struct.resource_entry, ptr %window.0378, i32 0, i32 2
  %101 = ptrtoint ptr %offset153 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %offset153, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %100)
  %cmp160.not = icmp eq i32 %102, %100
  br i1 %cmp160.not, label %if.end163, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end163:                                        ; preds = %lor.lhs.false
  %end = getelementptr inbounds %struct.resource, ptr %92, i32 0, i32 1
  %103 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %end, align 4
  %add = add i32 %104, 1
  %105 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %106)
  %cmp165 = icmp eq i32 %add, %106
  br i1 %cmp165, label %if.then167, label %if.end163.for.inc_crit_edge

if.end163.for.inc_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then167:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  %107 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %92, align 4
  %109 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %94, align 4
  %110 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %end, align 4
  store i32 0, ptr %92, align 4
  %111 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then167, %if.end163.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end147.for.inc_crit_edge
  %112 = ptrtoint ptr %n.0379 to i32
  call void @__asan_load4_noabort(i32 %112)
  %n.0 = load ptr, ptr %n.0379, align 4
  %cmp139.not = icmp eq ptr %n.0379, %resources
  %cmp.i.not = icmp eq ptr %n.0, %resources
  %or.cond = select i1 %cmp139.not, i1 true, i1 %cmp.i.not
  br i1 %or.cond, label %for.inc.for.end_crit_edge, label %for.inc.if.end147_crit_edge

for.inc.if.end147_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end131.for.end_crit_edge
  %113 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %resources, align 4
  %cmp190.not381 = icmp eq ptr %114, %resources
  br i1 %cmp190.not381, label %for.end.for.end239_crit_edge, label %for.end.for.body194_crit_edge

for.end.for.body194_crit_edge:                    ; preds = %for.end
  br label %for.body194

for.end.for.end239_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end239

for.body194:                                      ; preds = %for.inc233.for.body194_crit_edge, %for.end.for.body194_crit_edge
  %window.1382 = phi ptr [ %n.1383, %for.inc233.for.body194_crit_edge ], [ %114, %for.end.for.body194_crit_edge ]
  %115 = ptrtoint ptr %window.1382 to i32
  call void @__asan_load4_noabort(i32 %115)
  %n.1383 = load ptr, ptr %window.1382, align 4
  %offset195 = getelementptr inbounds %struct.resource_entry, ptr %window.1382, i32 0, i32 2
  %116 = ptrtoint ptr %offset195 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %offset195, align 4
  %res196 = getelementptr inbounds %struct.resource_entry, ptr %window.1382, i32 0, i32 1
  %118 = ptrtoint ptr %res196 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %res196, align 4
  %end197 = getelementptr inbounds %struct.resource, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %end197 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %end197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool198.not = icmp eq i32 %121, 0
  br i1 %tobool198.not, label %for.body194.for.inc233_crit_edge, label %if.end200

for.body194.for.inc233_crit_edge:                 ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc233

if.end200:                                        ; preds = %for.body194
  call fastcc void @list_move_tail(ptr noundef %window.1382, ptr noundef %windows)
  %flags203 = getelementptr inbounds %struct.resource, ptr %119, i32 0, i32 3
  %122 = ptrtoint ptr %flags203 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags203, align 4
  %and = and i32 %123, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool204.not = icmp eq i32 %and, 0
  br i1 %tobool204.not, label %if.else210, label %if.then205

if.then205:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #16
  %124 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %number, align 4
  %conv207 = zext i8 %125 to i32
  %126 = ptrtoint ptr %end197 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %end197, align 4
  %call209 = call i32 @pci_bus_insert_busn_res(ptr noundef %call7.i.i.i, i32 noundef %conv207, i32 noundef %127)
  br label %if.end211

if.else210:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #16
  call void @pci_bus_add_resource(ptr noundef %call7.i.i.i, ptr noundef %119, i32 noundef 0) #14
  br label %if.end211

if.end211:                                        ; preds = %if.else210, %if.then205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool212.not = icmp eq i32 %117, 0
  br i1 %tobool212.not, label %if.else226, label %if.then213

if.then213:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #16
  %128 = ptrtoint ptr %flags203 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %flags203, align 4
  %and.i = and i32 %129, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i)
  %cmp215 = icmp eq i32 %and.i, 256
  %.str.180..str.181 = select i1 %cmp215, ptr @.str.180, ptr @.str.181
  %130 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %119, align 4
  %sub = sub i32 %131, %117
  %conv221 = zext i32 %sub to i64
  %132 = ptrtoint ptr %end197 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %end197, align 4
  %sub223 = sub i32 %133, %117
  %conv224 = zext i32 %sub223 to i64
  %call225 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %addr, i32 noundef 64, ptr noundef nonnull %.str.180..str.181, i64 noundef %conv221, i64 noundef %conv224)
  br label %do.end230

if.else226:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #16
  %134 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %addr, align 1
  br label %do.end230

do.end230:                                        ; preds = %if.else226, %if.then213
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev59, ptr noundef nonnull @.str.183, ptr noundef %119, ptr noundef nonnull %addr) #17
  br label %for.inc233

for.inc233:                                       ; preds = %do.end230, %for.body194.for.inc233_crit_edge
  %cmp190.not = icmp eq ptr %n.1383, %resources
  br i1 %cmp190.not, label %for.inc233.for.end239_crit_edge, label %for.inc233.for.body194_crit_edge

for.inc233.for.body194_crit_edge:                 ; preds = %for.inc233
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body194

for.inc233.for.end239_crit_edge:                  ; preds = %for.inc233
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end239

for.end239:                                       ; preds = %for.inc233.for.end239_crit_edge, %for.end.for.end239_crit_edge
  call void @down_write(ptr noundef nonnull @pci_bus_sem) #14
  %135 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @pci_root_buses, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i.i, ptr noundef %135, ptr noundef nonnull @pci_root_buses) #14
  br i1 %call.i.i, label %if.end.i.i371, label %for.end239.list_add_tail.exit_crit_edge

for.end239.list_add_tail.exit_crit_edge:          ; preds = %for.end239
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i371:                                    ; preds = %for.end239
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @pci_root_buses, i32 0, i32 1), align 4
  %136 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @pci_root_buses, ptr %call7.i.i.i, align 8
  %137 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %135, ptr %prev.i.i, align 4
  %138 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %call7.i.i.i, ptr %135, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i371, %for.end239.list_add_tail.exit_crit_edge
  call void @up_write(ptr noundef nonnull @pci_bus_sem) #14
  br label %cleanup

unregister:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @put_device(ptr noundef %bridge) #14
  call void @device_del(ptr noundef %bridge) #14
  br label %free

free:                                             ; preds = %unregister, %if.then38, %if.end26.free_crit_edge, %if.then23, %do.body
  %err.0 = phi i32 [ %call31, %if.end26.free_crit_edge ], [ %call36, %if.then38 ], [ %call71, %unregister ], [ -17, %if.then23 ], [ -17, %do.body ]
  call void @kfree(ptr noundef %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %free, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %free ], [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %addr) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resources) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_host_probe(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_scan_root_bus_bridge(ptr noundef %bridge)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %parent = getelementptr inbounds %struct.device, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.83) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus1 = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 1
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_flags to i32))
  %4 = load i32, ptr @pci_flags, align 4
  %and.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_bus_claim_resources(ptr noundef %3) #14
  br label %if.end11

if.else:                                          ; preds = %if.end
  tail call void @pci_bus_size_bridges(ptr noundef %3) #14
  tail call void @pci_bus_assign_resources(ptr noundef %3) #14
  %children = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %5)
  %child.024 = load ptr, ptr %children, align 4
  %cmp5.not25 = icmp eq ptr %child.024, %children
  br i1 %cmp5.not25, label %if.else.if.end11_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %child.026 = phi ptr [ %child.0, %for.body.for.body_crit_edge ], [ %child.024, %if.else.for.body_crit_edge ]
  tail call void @pcie_bus_configure_settings(ptr noundef %child.026)
  %6 = ptrtoint ptr %child.026 to i32
  call void @__asan_load4_noabort(i32 %6)
  %child.0 = load ptr, ptr %child.026, align 4
  %cmp5.not = icmp eq ptr %child.0, %children
  br i1 %cmp5.not, label %for.body.if.end11_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end11:                                         ; preds = %for.body.if.end11_crit_edge, %if.else.if.end11_crit_edge, %if.then3
  tail call void @pci_bus_add_devices(ptr noundef %3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_scan_root_bus_bridge(ptr noundef %bridge) #0 align 64 {
entry:
  %old_res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bridge, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %window.0.in = phi ptr [ %windows, %if.end ], [ %window.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %window.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %window.0 = load ptr, ptr %window.0.in, align 4
  %cmp.not = icmp eq ptr %window.0, %windows
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %res = getelementptr inbounds %struct.resource_entry, ptr %window.0, i32 0, i32 1
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %res, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 4096
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.cond_crit_edge, label %for.end.thread

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = tail call fastcc i32 @pci_register_host_bridge(ptr noundef nonnull %bridge)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %for.end.cleanup_crit_edge, label %if.then22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.end.thread:                                   ; preds = %for.body
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %busnr = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 5
  %7 = ptrtoint ptr %busnr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %busnr, align 16
  %call46 = tail call fastcc i32 @pci_register_host_bridge(ptr noundef nonnull %bridge)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp1147 = icmp slt i32 %call46, 0
  br i1 %cmp1147, label %for.end.thread.cleanup_crit_edge, label %if.end19.thread

for.end.thread.cleanup_crit_edge:                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19.thread:                                  ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  %bus1448 = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 1
  %8 = ptrtoint ptr %bus1448 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus1448, align 32
  %call.i49 = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef %9, i32 noundef 0) #14
  br label %cleanup

if.then22:                                        ; preds = %for.end
  %bus14 = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 1
  %10 = ptrtoint ptr %bus14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus14, align 32
  %busnr15 = getelementptr inbounds %struct.pci_host_bridge, ptr %bridge, i32 0, i32 5
  %12 = ptrtoint ptr %busnr15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %busnr15, align 16
  %dev = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %13) #17
  %call18 = tail call i32 @pci_bus_insert_busn_res(ptr noundef %11, i32 noundef %13, i32 noundef 255)
  %call.i = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef %11, i32 noundef 0) #14
  %busn_res.i = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old_res.i) #14
  %14 = call ptr @memcpy(ptr %old_res.i, ptr %busn_res.i, i32 32)
  %15 = ptrtoint ptr %busn_res.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %busn_res.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call.i)
  %cmp.i = icmp ugt i32 %16, %call.i
  br i1 %cmp.i, label %if.then22.pci_bus_update_busn_res_end.exit_crit_edge, label %if.end.i

if.then22.pci_bus_update_busn_res_end.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bus_update_busn_res_end.exit

if.end.i:                                         ; preds = %if.then22
  %sub.i = add i32 %call.i, 1
  %add.i = sub i32 %sub.i, %16
  %call.i45 = tail call i32 @adjust_resource(ptr noundef %busn_res.i, i32 noundef %16, i32 noundef %add.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i = icmp eq i32 %call.i45, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.91, ptr @.str.90
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.88, ptr noundef nonnull %old_res.i, ptr noundef nonnull %cond.i, i32 noundef %call.i) #17
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.i.pci_bus_update_busn_res_end.exit_crit_edge

if.end.i.pci_bus_update_busn_res_end.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bus_update_busn_res_end.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 8, i32 5
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i, align 4
  %tobool4.not.i = icmp eq ptr %18, null
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.pci_bus_update_busn_res_end.exit_crit_edge

land.lhs.true.i.pci_bus_update_busn_res_end.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bus_update_busn_res_end.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %busn_res.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %busn_res.i, align 4
  %end.i = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i, align 4
  %call7.i = call i32 @pci_bus_insert_busn_res(ptr noundef %11, i32 noundef %20, i32 noundef %22) #14
  br label %pci_bus_update_busn_res_end.exit

pci_bus_update_busn_res_end.exit:                 ; preds = %if.then5.i, %land.lhs.true.i.pci_bus_update_busn_res_end.exit_crit_edge, %if.end.i.pci_bus_update_busn_res_end.exit_crit_edge, %if.then22.pci_bus_update_busn_res_end.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old_res.i) #14
  br label %cleanup

cleanup:                                          ; preds = %pci_bus_update_busn_res_end.exit, %if.end19.thread, %for.end.thread.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %for.end.cleanup_crit_edge ], [ 0, %pci_bus_update_busn_res_end.exit ], [ %call46, %for.end.thread.cleanup_crit_edge ], [ 0, %if.end19.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_claim_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_size_bridges(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_assign_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_add_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_bus_insert_busn_res(ptr noundef %b, i32 noundef %bus, i32 noundef %bus_max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %busn_res = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 8
  %0 = ptrtoint ptr %busn_res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %bus, ptr %busn_res, align 4
  %end = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bus_max, ptr %end, align 4
  %flags = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %flags, align 4
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %busn_res1 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 8
  br label %if.end

if.else:                                          ; preds = %entry
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 16
  %5 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %domain_nr.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.else
  %r.0.in.i = phi ptr [ @pci_domain_busn_res_list, %if.else ], [ %r.0.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %r.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %r.0.i = load ptr, ptr %r.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %r.0.i, @pci_domain_busn_res_list
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %domain_nr1.i = getelementptr inbounds %struct.pci_domain_busn_res, ptr %r.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %domain_nr1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %domain_nr1.i, align 4
  %cmp2.i = icmp eq i32 %9, %6
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %res.i = getelementptr inbounds %struct.pci_domain_busn_res, ptr %r.0.i, i32 0, i32 1
  br label %get_pci_domain_busn_res.exit

for.end.i:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 44) #19
  %tobool.not.i23 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i23, label %for.end.i.get_pci_domain_busn_res.exit_crit_edge, label %if.end8.i

for.end.i.get_pci_domain_busn_res.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_pci_domain_busn_res.exit

if.end8.i:                                        ; preds = %for.end.i
  %domain_nr9.i = getelementptr inbounds %struct.pci_domain_busn_res, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %domain_nr9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %6, ptr %domain_nr9.i, align 8
  %res10.i = getelementptr inbounds %struct.pci_domain_busn_res, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %res10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %res10.i, align 8
  %end.i = getelementptr inbounds %struct.pci_domain_busn_res, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 255, ptr %end.i, align 4
  %flags.i = getelementptr inbounds %struct.pci_domain_busn_res, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4112, ptr %flags.i, align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @pci_domain_busn_res_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %15, ptr noundef nonnull @pci_domain_busn_res_list) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end8.i.get_pci_domain_busn_res.exit_crit_edge

if.end8.i.get_pci_domain_busn_res.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_pci_domain_busn_res.exit

if.end.i.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @pci_domain_busn_res_list, i32 0, i32 1), align 4
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @pci_domain_busn_res_list, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call7.i.i.i, ptr %15, align 4
  br label %get_pci_domain_busn_res.exit

get_pci_domain_busn_res.exit:                     ; preds = %if.end.i.i.i, %if.end8.i.get_pci_domain_busn_res.exit_crit_edge, %for.end.i.get_pci_domain_busn_res.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %res.i, %if.then.i ], [ null, %for.end.i.get_pci_domain_busn_res.exit_crit_edge ], [ %res10.i, %if.end8.i.get_pci_domain_busn_res.exit_crit_edge ], [ %res10.i, %if.end.i.i.i ]
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %or = or i32 %20, 16
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %get_pci_domain_busn_res.exit, %if.then
  %parent_res.0 = phi ptr [ %retval.0.i, %get_pci_domain_busn_res.exit ], [ %busn_res1, %if.then ]
  %call5 = tail call ptr @request_resource_conflict(ptr noundef %parent_res.0, ptr noundef %busn_res) #14
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %do.end

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 21
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 8
  %tobool.not.i25 = icmp eq ptr %22, null
  %cond = select i1 %tobool.not.i25, ptr @.str.87, ptr @.str.21
  %name = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 2
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.85, ptr noundef %busn_res, ptr noundef nonnull %cond, ptr noundef %parent_res.0, ptr noundef %24, ptr noundef nonnull %call5) #17
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge
  %conv = zext i1 %tobool.not to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_resource_conflict(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_bus_update_busn_res_end(ptr noundef %b, i32 noundef %bus_max) local_unnamed_addr #0 align 64 {
entry:
  %old_res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %busn_res = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old_res) #14
  %0 = call ptr @memcpy(ptr %old_res, ptr %busn_res, i32 32)
  %1 = ptrtoint ptr %busn_res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %busn_res, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %bus_max)
  %cmp = icmp ugt i32 %2, %bus_max
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %bus_max, 1
  %add = sub i32 %sub, %2
  %call = tail call i32 @adjust_resource(ptr noundef %busn_res, i32 noundef %2, i32 noundef %add) #14
  %dev = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, ptr @.str.91, ptr @.str.90
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.88, ptr noundef nonnull %old_res, ptr noundef nonnull %cond, i32 noundef %bus_max) #17
  br i1 %tobool.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %parent = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 8, i32 5
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %busn_res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %busn_res, align 4
  %end = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  %call7 = call i32 @pci_bus_insert_busn_res(ptr noundef %b, i32 noundef %6, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old_res) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adjust_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_bus_release_busn_res(ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %busn_res = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 8
  %flags = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 8, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %parent = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @release_resource(ptr noundef %busn_res) #14
  %dev = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool2.not, ptr @.str.91, ptr @.str.90
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.92, ptr noundef %busn_res, ptr noundef nonnull %cond) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_scan_root_bus(ptr noundef %parent, i32 noundef %bus, ptr noundef %ops, ptr noundef %sysdata, ptr noundef %resources) #0 align 64 {
entry:
  %old_res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %window.0.in = phi ptr [ %resources, %entry ], [ %window.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %window.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %window.0 = load ptr, ptr %window.0.in, align 4
  %cmp.not = icmp eq ptr %window.0, %resources
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %res = getelementptr inbounds %struct.resource_entry, ptr %window.0, i32 0, i32 1
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %res, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 4096
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.end.thread

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = tail call ptr @pci_create_root_bus(ptr noundef %parent, i32 noundef %bus, ptr noundef %ops, ptr noundef %sysdata, ptr noundef %resources)
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %for.end.cleanup_crit_edge, label %if.then15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.end.thread:                                   ; preds = %for.body
  %call34 = tail call ptr @pci_create_root_bus(ptr noundef %parent, i32 noundef %bus, ptr noundef %ops, ptr noundef %sysdata, ptr noundef %resources)
  %tobool6.not35 = icmp eq ptr %call34, null
  br i1 %tobool6.not35, label %for.end.thread.cleanup_crit_edge, label %if.end12.thread

for.end.thread.cleanup_crit_edge:                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12.thread:                                  ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  %call.i41 = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef nonnull %call34, i32 noundef 0) #14
  br label %cleanup

if.then15:                                        ; preds = %for.end
  %dev = getelementptr inbounds %struct.pci_bus, ptr %call, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %bus) #17
  %call11 = tail call i32 @pci_bus_insert_busn_res(ptr noundef nonnull %call, i32 noundef %bus, i32 noundef 255)
  %call.i = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef nonnull %call, i32 noundef 0) #14
  %busn_res.i = getelementptr inbounds %struct.pci_bus, ptr %call, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old_res.i) #14
  %5 = call ptr @memcpy(ptr %old_res.i, ptr %busn_res.i, i32 32)
  %6 = ptrtoint ptr %busn_res.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %busn_res.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call.i)
  %cmp.i = icmp ugt i32 %7, %call.i
  br i1 %cmp.i, label %if.then15.pci_bus_update_busn_res_end.exit_crit_edge, label %if.end.i

if.then15.pci_bus_update_busn_res_end.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bus_update_busn_res_end.exit

if.end.i:                                         ; preds = %if.then15
  %sub.i = add i32 %call.i, 1
  %add.i = sub i32 %sub.i, %7
  %call.i33 = tail call i32 @adjust_resource(ptr noundef %busn_res.i, i32 noundef %7, i32 noundef %add.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i = icmp eq i32 %call.i33, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.91, ptr @.str.90
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.88, ptr noundef nonnull %old_res.i, ptr noundef nonnull %cond.i, i32 noundef %call.i) #17
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.i.pci_bus_update_busn_res_end.exit_crit_edge

if.end.i.pci_bus_update_busn_res_end.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bus_update_busn_res_end.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %call, i32 0, i32 8, i32 5
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.pci_bus_update_busn_res_end.exit_crit_edge

land.lhs.true.i.pci_bus_update_busn_res_end.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_bus_update_busn_res_end.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %busn_res.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %busn_res.i, align 4
  %end.i = getelementptr inbounds %struct.pci_bus, ptr %call, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i, align 4
  %call7.i = call i32 @pci_bus_insert_busn_res(ptr noundef nonnull %call, i32 noundef %11, i32 noundef %13) #14
  br label %pci_bus_update_busn_res_end.exit

pci_bus_update_busn_res_end.exit:                 ; preds = %if.then5.i, %land.lhs.true.i.pci_bus_update_busn_res_end.exit_crit_edge, %if.end.i.pci_bus_update_busn_res_end.exit_crit_edge, %if.then15.pci_bus_update_busn_res_end.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old_res.i) #14
  br label %cleanup

cleanup:                                          ; preds = %pci_bus_update_busn_res_end.exit, %if.end12.thread, %for.end.thread.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end.cleanup_crit_edge ], [ %call, %pci_bus_update_busn_res_end.exit ], [ null, %for.end.thread.cleanup_crit_edge ], [ %call34, %if.end12.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_scan_bus(i32 noundef %bus, ptr noundef %ops, ptr noundef %sysdata) #0 align 64 {
entry:
  %resources = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resources) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 1
  %1 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %resources, ptr %resources, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %resources, ptr %0, align 4
  call void @pci_add_resource(ptr noundef nonnull %resources, ptr noundef nonnull @ioport_resource) #14
  call void @pci_add_resource(ptr noundef nonnull %resources, ptr noundef nonnull @iomem_resource) #14
  call void @pci_add_resource(ptr noundef nonnull %resources, ptr noundef nonnull @busn_resource) #14
  %call = call ptr @pci_create_root_bus(ptr noundef null, i32 noundef %bus, ptr noundef %ops, ptr noundef %sysdata, ptr noundef nonnull %resources)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = call fastcc i32 @pci_scan_child_bus_extend(ptr noundef nonnull %call, i32 noundef 0) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @pci_free_resource_list(ptr noundef nonnull %resources) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resources) #14
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_add_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_resource_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_rescan_bus_bridge_resize(ptr noundef %bridge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subordinate, align 4
  %call.i = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef %1, i32 noundef 0) #14
  tail call void @pci_assign_unassigned_bridge_resources(ptr noundef %bridge) #14
  tail call void @pci_bus_add_devices(ptr noundef %1) #14
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_assign_unassigned_bridge_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_rescan_bus(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef %bus, i32 noundef 0) #14
  tail call void @pci_assign_unassigned_bus_resources(ptr noundef %bus) #14
  tail call void @pci_bus_add_devices(ptr noundef %bus) #14
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_assign_unassigned_bus_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_lock_rescan_remove() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pci_rescan_remove_lock, i32 noundef 0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_unlock_rescan_remove() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @pci_rescan_remove_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_sort_breadthfirst() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bus_sort_breadthfirst(ptr noundef nonnull @pci_bus_type, ptr noundef nonnull @pci_sort_bf_cmp) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_sort_breadthfirst(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pci_sort_bf_cmp(ptr nocapture noundef readonly %d_a, ptr nocapture noundef readonly %d_b) #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr i8, ptr %d_a, i32 -128
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %domain_nr.i, align 8
  %bus4 = getelementptr i8, ptr %d_b, i32 -128
  %4 = ptrtoint ptr %bus4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus4, align 8
  %domain_nr.i56 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %domain_nr.i56 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %domain_nr.i56, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp = icmp slt i32 %3, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp10 = icmp sgt i32 %3, %7
  br i1 %cmp10, label %if.else.cleanup_crit_edge, label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %number = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %number, align 4
  %number15 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %number15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number15, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp17 = icmp ult i8 %9, %11
  br i1 %cmp17, label %if.end12.cleanup_crit_edge, label %if.else20

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp27 = icmp ugt i8 %9, %11
  br i1 %cmp27, label %if.else20.cleanup_crit_edge, label %if.end31

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %if.else20
  %devfn = getelementptr i8, ptr %d_a, i32 -108
  %12 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn, align 4
  %devfn32 = getelementptr i8, ptr %d_b, i32 -108
  %14 = ptrtoint ptr %devfn32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devfn32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp33 = icmp ult i32 %13, %15
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.else36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp39 = icmp ugt i32 %13, %15
  %. = zext i1 %cmp39 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else36, %if.end31.cleanup_crit_edge, %if.else20.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ -1, %if.end12.cleanup_crit_edge ], [ 1, %if.else20.cleanup_crit_edge ], [ -1, %if.end31.cleanup_crit_edge ], [ %., %if.else36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_hp_add_bridge(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %busn_res = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %busn_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %busn_res, align 8
  %end3 = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %end3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not35 = icmp sgt i32 %3, %5
  br i1 %cmp.not35, label %entry.do.end_crit_edge, label %for.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %busnr.036 = phi i32 [ %3, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %domain_nr.i, align 8
  %call4 = tail call ptr @pci_find_bus(i32 noundef %7, i32 noundef %busnr.036) #14
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end8, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add i32 %busnr.036, 1
  %cmp.not = icmp sgt i32 %inc, %5
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.97) #17
  br label %cleanup

if.end8:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add i32 %busnr.036, -1
  %call.i = tail call fastcc i32 @pci_scan_bridge_extend(ptr noundef %1, ptr noundef %dev, i32 noundef %dec, i32 noundef 0, i32 noundef 0) #14
  %sub = sub i32 %5, %call.i
  %call10 = tail call fastcc i32 @pci_scan_bridge_extend(ptr noundef %1, ptr noundef %dev, i32 noundef %call.i, i32 noundef %sub, i32 noundef 1)
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subordinate, align 4
  %tobool11.not = icmp eq ptr %9, null
  %. = sext i1 %tobool11.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %., %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_bus(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_any(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_pcibus_dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -176
  %bridge = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 8
  tail call void @put_device(ptr noundef %1) #14
  tail call void @pci_bus_remove_resources(ptr noundef %add.ptr) #14
  tail call void @pci_release_bus_of_node(ptr noundef %add.ptr) #14
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_bus_of_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_bus_of_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_host_bridge_of_msi_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_vsec_capability(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_mps(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_mps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bridge_reconfigure_ltr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_release_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_aer_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_rcec_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iov_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_cap_save_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ea_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msix_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_allocate_cap_save_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_pm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_vpd_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_configure_ari(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_iov_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ats_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_pri_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_pasid_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_acs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ptm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_aer_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dpc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_rcec_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_init_reset_methods(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_get_device_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_readrq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_iov_bus_range(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_find_domain_nr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_host_of_has_msi_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move_tail(ptr noundef %list, ptr noundef %head) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %prev.i2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i2, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %head) #14
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add_tail.exit_crit_edge

__list_del_entry.exit.list_add_tail.exit_crit_edge: ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %__list_del_entry.exit.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !167, !168, !170, !172, !174, !176, !178, !180, !182, !184, !185, !186, !187, !189, !191, !192, !193, !194, !195, !197, !198, !199, !200, !201, !202, !204, !205, !206, !207, !209, !210, !211, !212, !214, !216, !217, !218, !220, !222, !224, !226, !228, !230, !231, !232, !233, !235, !237, !239, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !258, !260, !262, !263, !264, !265, !267, !268, !269, !271, !273, !275, !276, !277, !278, !280, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !295, !297, !298, !299, !301, !302, !303, !304, !306, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !322, !324, !325, !326, !328, !329, !330, !332, !333, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !348, !349, !350, !351, !353, !354, !355, !356, !358, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !374, !375, !377, !378, !380, !382, !383, !384, !386, !388, !389, !391, !392, !393, !395, !396, !397, !399, !401, !403, !404, !405, !407, !409, !411, !413, !414}
!llvm.module.flags = !{!415, !416, !417, !418, !419, !420, !421, !422}
!llvm.ident = !{!423}

!0 = !{ptr @pci_root_buses, !1, !"pci_root_buses", i1 false, i1 false}
!1 = !{!"../drivers/pci/probe.c", i32 36, i32 1}
!2 = !{ptr @__ksymtab_pci_root_buses, !3, !"__ksymtab_pci_root_buses", i1 false, i1 false}
!3 = !{!"../drivers/pci/probe.c", i32 37, i32 1}
!4 = !{ptr @__ksymtab_no_pci_devices, !5, !"__ksymtab_no_pci_devices", i1 false, i1 false}
!5 = !{!"../drivers/pci/probe.c", i32 84, i32 1}
!6 = !{ptr @__initcall__kmod_probe__237_109_pcibus_class_init2, !7, !"__initcall__kmod_probe__237_109_pcibus_class_init2", i1 false, i1 false}
!7 = !{!"../drivers/pci/probe.c", i32 109, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/probe.c", i32 258, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__pci_read_base._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @__pci_read_base._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/probe.c", i32 269, i32 4}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__pci_read_base._entry.5, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @__pci_read_base._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/probe.c", i32 279, i32 4}
!23 = !{ptr @__pci_read_base._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @__pci_read_base._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/probe.c", i32 306, i32 3}
!27 = !{ptr @__pci_read_base._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @__pci_read_base._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/probe.c", i32 317, i32 3}
!31 = !{ptr @__pci_read_base._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @__pci_read_base._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/probe.c", i32 523, i32 2}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pci_read_bridge_bases._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @pci_read_bridge_bases._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/probe.c", i32 540, i32 5}
!42 = !{ptr @pci_read_bridge_bases._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pci_read_bridge_bases._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__ksymtab_pci_alloc_host_bridge, !45, !"__ksymtab_pci_alloc_host_bridge", i1 false, i1 false}
!45 = !{!"../drivers/pci/probe.c", i32 616, i32 1}
!46 = !{ptr @__ksymtab_devm_pci_alloc_host_bridge, !47, !"__ksymtab_devm_pci_alloc_host_bridge", i1 false, i1 false}
!47 = !{!"../drivers/pci/probe.c", i32 646, i32 1}
!48 = !{ptr @__ksymtab_pci_free_host_bridge, !49, !"__ksymtab_pci_free_host_bridge", i1 false, i1 false}
!49 = !{!"../drivers/pci/probe.c", i32 652, i32 1}
!50 = !{ptr @pcie_link_speed, !51, !"pcie_link_speed", i1 false, i1 false}
!51 = !{!"../drivers/pci/probe.c", i32 675, i32 21}
!52 = !{ptr @__ksymtab_pcie_link_speed, !53, !"__ksymtab_pcie_link_speed", i1 false, i1 false}
!53 = !{!"../drivers/pci/probe.c", i32 693, i32 1}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pci/probe.c", i32 699, i32 6}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/probe.c", i32 700, i32 6}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/probe.c", i32 701, i32 6}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pci/probe.c", i32 702, i32 6}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/probe.c", i32 703, i32 6}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/probe.c", i32 708, i32 6}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pci/probe.c", i32 709, i32 6}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pci/probe.c", i32 710, i32 6}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pci/probe.c", i32 711, i32 6}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/probe.c", i32 712, i32 6}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pci/probe.c", i32 713, i32 6}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pci/probe.c", i32 714, i32 6}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/probe.c", i32 715, i32 6}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pci/probe.c", i32 716, i32 6}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pci/probe.c", i32 717, i32 6}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pci/probe.c", i32 718, i32 6}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/probe.c", i32 719, i32 6}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pci/probe.c", i32 720, i32 6}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pci/probe.c", i32 721, i32 6}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pci/probe.c", i32 722, i32 6}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pci/probe.c", i32 723, i32 6}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/probe.c", i32 724, i32 6}
!98 = !{ptr @pci_speed_string.speed_strings, !99, !"speed_strings", i1 false, i1 false}
!99 = !{!"../drivers/pci/probe.c", i32 698, i32 21}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pci/probe.c", i32 729, i32 9}
!102 = !{ptr @__ksymtab_pci_speed_string, !103, !"__ksymtab_pci_speed_string", i1 false, i1 false}
!103 = !{!"../drivers/pci/probe.c", i32 731, i32 1}
!104 = !{ptr @__ksymtab_pcie_update_link_speed, !105, !"__ksymtab_pcie_update_link_speed", i1 false, i1 false}
!105 = !{!"../drivers/pci/probe.c", i32 737, i32 1}
!106 = !{ptr @__ksymtab_pci_add_new_bus, !107, !"__ksymtab_pci_add_new_bus", i1 false, i1 false}
!107 = !{!"../drivers/pci/probe.c", i32 1171, i32 1}
!108 = !{ptr @__ksymtab_pci_scan_bridge, !109, !"__ksymtab_pci_scan_bridge", i1 false, i1 false}
!109 = !{!"../drivers/pci/probe.c", i32 1495, i32 1}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/probe.c", i32 1553, i32 4}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @set_pcie_port_type._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @set_pcie_port_type._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pci/probe.c", i32 1564, i32 4}
!117 = !{ptr @set_pcie_port_type._entry.50, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @set_pcie_port_type._entry_ptr.52, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pci/probe.c", i32 1847, i32 26}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pci/probe.c", i32 1875, i32 2}
!123 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @pci_setup_device._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @pci_setup_device._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pci/probe.c", i32 1884, i32 4}
!128 = !{ptr @pci_setup_device._entry.56, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @pci_setup_device._entry_ptr.58, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pci/probe.c", i32 1917, i32 5}
!132 = !{ptr @pci_setup_device._entry.59, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @pci_setup_device._entry_ptr.61, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pci/probe.c", i32 1924, i32 5}
!136 = !{ptr @pci_setup_device._entry.62, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @pci_setup_device._entry_ptr.64, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pci/probe.c", i32 1933, i32 5}
!140 = !{ptr @pci_setup_device._entry.65, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @pci_setup_device._entry_ptr.67, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pci/probe.c", i32 1940, i32 5}
!144 = !{ptr @pci_setup_device._entry.68, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @pci_setup_device._entry_ptr.70, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pci/probe.c", i32 1974, i32 3}
!148 = !{ptr @pci_setup_device._entry.71, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @pci_setup_device._entry_ptr.73, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pci/probe.c", i32 1980, i32 3}
!152 = !{ptr @pci_setup_device._entry.74, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @pci_setup_device._entry_ptr.76, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pci/probe.c", i32 2090, i32 4}
!156 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @pci_configure_extended_tags._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @pci_configure_extended_tags._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pci/probe.c", i32 2098, i32 3}
!161 = !{ptr @pci_configure_extended_tags._entry.79, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @pci_configure_extended_tags._entry_ptr.81, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @__ksymtab_pcie_relaxed_ordering_enabled, !164, !"__ksymtab_pcie_relaxed_ordering_enabled", i1 false, i1 false}
!164 = !{!"../drivers/pci/probe.c", i32 2119, i32 1}
!165 = !{ptr @pci_alloc_dev.__key, !166, !"__key", i1 false, i1 false}
!166 = !{!"../drivers/pci/probe.c", i32 2307, i32 2}
!167 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @__ksymtab_pci_alloc_dev, !169, !"__ksymtab_pci_alloc_dev", i1 false, i1 false}
!169 = !{!"../drivers/pci/probe.c", i32 2311, i32 1}
!170 = !{ptr @__ksymtab_pci_bus_read_dev_vendor_id, !171, !"__ksymtab_pci_bus_read_dev_vendor_id", i1 false, i1 false}
!171 = !{!"../drivers/pci/probe.c", i32 2396, i32 1}
!172 = !{ptr @__ksymtab_pci_scan_single_device, !173, !"__ksymtab_pci_scan_single_device", i1 false, i1 false}
!173 = !{!"../drivers/pci/probe.c", i32 2580, i32 1}
!174 = !{ptr @__ksymtab_pci_scan_slot, !175, !"__ksymtab_pci_scan_slot", i1 false, i1 false}
!175 = !{!"../drivers/pci/probe.c", i32 2673, i32 1}
!176 = !{ptr @__ksymtab_pcie_bus_configure_settings, !177, !"__ksymtab_pcie_bus_configure_settings", i1 false, i1 false}
!177 = !{!"../drivers/pci/probe.c", i32 2833, i32 1}
!178 = !{ptr @__ksymtab_pci_scan_child_bus, !179, !"__ksymtab_pci_scan_child_bus", i1 false, i1 false}
!179 = !{!"../drivers/pci/probe.c", i32 3001, i32 1}
!180 = !{ptr @__ksymtab_pci_create_root_bus, !181, !"__ksymtab_pci_create_root_bus", i1 false, i1 false}
!181 = !{!"../drivers/pci/probe.c", i32 3050, i32 1}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pci/probe.c", i32 3059, i32 3}
!184 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @pci_host_probe._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @pci_host_probe._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @__ksymtab_pci_host_probe, !188, !"__ksymtab_pci_host_probe", i1 false, i1 false}
!188 = !{!"../drivers/pci/probe.c", i32 3083, i32 1}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/pci/probe.c", i32 3104, i32 3}
!191 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @pci_bus_insert_busn_res._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @pci_bus_insert_busn_res._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.88, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/pci/probe.c", i32 3124, i32 2}
!197 = !{ptr @.str.89, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @pci_bus_update_busn_res_end._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @pci_bus_update_busn_res_end._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pci/probe.c", i32 3142, i32 2}
!204 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @pci_bus_release_busn_res._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @pci_bus_release_busn_res._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.94, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/pci/probe.c", i32 3171, i32 3}
!209 = !{ptr @.str.95, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @pci_scan_root_bus_bridge._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @pci_scan_root_bus_bridge._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @__ksymtab_pci_scan_root_bus_bridge, !213, !"__ksymtab_pci_scan_root_bus_bridge", i1 false, i1 false}
!213 = !{!"../drivers/pci/probe.c", i32 3184, i32 1}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pci/probe.c", i32 3205, i32 3}
!216 = !{ptr @pci_scan_root_bus._entry, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @pci_scan_root_bus._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @__ksymtab_pci_scan_root_bus, !219, !"__ksymtab_pci_scan_root_bus", i1 false, i1 false}
!219 = !{!"../drivers/pci/probe.c", i32 3218, i32 1}
!220 = !{ptr @__ksymtab_pci_scan_bus, !221, !"__ksymtab_pci_scan_bus", i1 false, i1 false}
!221 = !{!"../drivers/pci/probe.c", i32 3237, i32 1}
!222 = !{ptr @__ksymtab_pci_rescan_bus, !223, !"__ksymtab_pci_rescan_bus", i1 false, i1 false}
!223 = !{!"../drivers/pci/probe.c", i32 3283, i32 1}
!224 = !{ptr @__ksymtab_pci_lock_rescan_remove, !225, !"__ksymtab_pci_lock_rescan_remove", i1 false, i1 false}
!225 = !{!"../drivers/pci/probe.c", i32 3295, i32 1}
!226 = !{ptr @__ksymtab_pci_unlock_rescan_remove, !227, !"__ksymtab_pci_unlock_rescan_remove", i1 false, i1 false}
!227 = !{!"../drivers/pci/probe.c", i32 3301, i32 1}
!228 = !{ptr @.str.97, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/pci/probe.c", i32 3338, i32 3}
!230 = !{ptr @.str.98, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @pci_hp_add_bridge._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @pci_hp_add_bridge._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @__ksymtab_pci_hp_add_bridge, !234, !"__ksymtab_pci_hp_add_bridge", i1 false, i1 false}
!234 = !{!"../drivers/pci/probe.c", i32 3359, i32 1}
!235 = !{ptr @pcibus_class_init.__key, !236, !"__key", i1 false, i1 false}
!236 = !{!"../drivers/pci/probe.c", i32 107, i32 9}
!237 = !{ptr @.str.99, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/pci/probe.c", i32 100, i32 11}
!239 = !{ptr @pcibus_class, !240, !"pcibus_class", i1 false, i1 false}
!240 = !{!"../drivers/pci/probe.c", i32 99, i32 21}
!241 = !{ptr @.str.100, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/pci/probe.c", i32 435, i32 3}
!243 = !{ptr @.str.101, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @pci_read_bridge_io._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @pci_read_bridge_io._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.102, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pci/probe.c", i32 457, i32 3}
!248 = !{ptr @pci_read_bridge_mmio._entry, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @pci_read_bridge_mmio._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.103, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/pci/probe.c", i32 497, i32 3}
!252 = !{ptr @.str.104, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @pci_read_bridge_mmio_pref._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @pci_read_bridge_mmio_pref._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @pci_read_bridge_mmio_pref._entry.105, !256, !"_entry", i1 false, i1 false}
!256 = !{!"../drivers/pci/probe.c", i32 510, i32 3}
!257 = !{ptr @pci_read_bridge_mmio_pref._entry_ptr.106, !256, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.107, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/pci/probe.c", i32 1104, i32 28}
!260 = !{ptr @.str.108, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pci/probe.c", i32 1129, i32 3}
!262 = !{ptr @.str.109, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @pci_alloc_child_bus._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @pci_alloc_child_bus._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.111, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/pci/probe.c", i32 1149, i32 4}
!267 = !{ptr @pci_alloc_child_bus._entry.110, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @pci_alloc_child_bus._entry_ptr.112, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @agp_speeds, !270, !"agp_speeds", i1 false, i1 false}
!270 = !{!"../drivers/pci/probe.c", i32 739, i32 22}
!271 = !{ptr @pcix_bus_speed, !272, !"pcix_bus_speed", i1 false, i1 false}
!272 = !{!"../drivers/pci/probe.c", i32 655, i32 28}
!273 = !{ptr @.str.113, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/pci/probe.c", i32 1271, i32 2}
!275 = !{ptr @.str.114, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.115, !274, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @pci_scan_bridge_extend.__UNIQUE_ID_ddebug239, !274, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!278 = !{ptr @.str.116, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/pci/probe.c", i32 1275, i32 3}
!280 = !{ptr @.str.117, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @pci_scan_bridge_extend._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @pci_scan_bridge_extend._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.119, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/pci/probe.c", i32 1283, i32 3}
!285 = !{ptr @pci_scan_bridge_extend._entry.118, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @pci_scan_bridge_extend._entry_ptr.120, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.122, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/pci/probe.c", i32 1327, i32 4}
!289 = !{ptr @pci_scan_bridge_extend._entry.121, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @pci_scan_bridge_extend._entry_ptr.123, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.124, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/pci/probe.c", i32 1448, i32 17}
!293 = !{ptr @.str.125, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/pci/probe.c", i32 1448, i32 43}
!295 = !{ptr @.str.127, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/pci/probe.c", i32 1457, i32 4}
!297 = !{ptr @pci_scan_bridge_extend._entry.126, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @pci_scan_bridge_extend._entry_ptr.128, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.129, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/pci/probe.c", i32 1798, i32 2}
!301 = !{ptr @.str.130, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @early_dump_pci_device._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @early_dump_pci_device._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.131, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/pci/probe.c", i32 2336, i32 4}
!306 = !{ptr @.str.132, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @pci_bus_wait_crs._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @pci_bus_wait_crs._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.134, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/pci/probe.c", i32 2343, i32 4}
!311 = !{ptr @pci_bus_wait_crs._entry.133, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @pci_bus_wait_crs._entry_ptr.135, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.137, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/pci/probe.c", i32 2355, i32 3}
!315 = !{ptr @pci_bus_wait_crs._entry.136, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @pci_bus_wait_crs._entry_ptr.138, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.139, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/pci/probe.c", i32 2012, i32 4}
!319 = !{ptr @.str.140, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @pci_configure_mps._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @pci_configure_mps._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.142, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/pci/probe.c", i32 2028, i32 3}
!324 = !{ptr @pci_configure_mps._entry.141, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @pci_configure_mps._entry_ptr.143, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.145, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/pci/probe.c", i32 2043, i32 3}
!328 = !{ptr @pci_configure_mps._entry.144, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @pci_configure_mps._entry_ptr.146, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @pci_configure_mps._entry.147, !331, !"_entry", i1 false, i1 false}
!331 = !{!"../drivers/pci/probe.c", i32 2050, i32 3}
!332 = !{ptr @pci_configure_mps._entry_ptr.148, !331, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.150, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/pci/probe.c", i32 2055, i32 2}
!335 = !{ptr @pci_configure_mps._entry.149, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @pci_configure_mps._entry_ptr.151, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.152, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/pci/probe.c", i32 2143, i32 3}
!339 = !{ptr @.str.153, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @pci_configure_relaxed_ordering._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @pci_configure_relaxed_ordering._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.154, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/pci/probe.c", i32 2291, i32 2}
!344 = !{ptr @.str.155, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @pci_release_dev.__UNIQUE_ID_ddebug245, !343, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!346 = !{ptr @.str.156, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/pci/probe.c", i32 2793, i32 2}
!348 = !{ptr @.str.157, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @pcie_bus_configure_set._entry, !347, !"_entry", i1 false, i1 false}
!350 = !{ptr @pcie_bus_configure_set._entry_ptr, !347, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.158, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/pci/probe.c", i32 2735, i32 3}
!353 = !{ptr @.str.159, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @pcie_write_mps._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @pcie_write_mps._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.160, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/pci/probe.c", i32 2768, i32 3}
!358 = !{ptr @.str.161, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @pcie_write_mrrs._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @pcie_write_mrrs._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.163, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/pci/probe.c", i32 2773, i32 3}
!363 = !{ptr @pcie_write_mrrs._entry.162, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @pcie_write_mrrs._entry_ptr.164, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.165, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/pci/probe.c", i32 2865, i32 2}
!367 = !{ptr @.str.166, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @pci_scan_child_bus_extend.__UNIQUE_ID_ddebug248, !366, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!369 = !{ptr @.str.167, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/pci/probe.c", i32 2894, i32 3}
!371 = !{ptr @pci_scan_child_bus_extend.__UNIQUE_ID_ddebug249, !370, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!372 = !{ptr @.str.168, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/pci/probe.c", i32 2974, i32 4}
!374 = !{ptr @pci_scan_child_bus_extend.__UNIQUE_ID_ddebug254, !373, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!375 = !{ptr @.str.169, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/pci/probe.c", i32 2986, i32 2}
!377 = !{ptr @pci_scan_child_bus_extend.__UNIQUE_ID_ddebug255, !376, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!378 = !{ptr @.str.170, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../include/linux/hypervisor.h", i32 30, i32 45}
!380 = !{ptr @.str.171, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/pci/probe.c", i32 914, i32 3}
!382 = !{ptr @.str.172, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @pci_register_host_bridge.__UNIQUE_ID_ddebug238, !381, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!384 = !{ptr @.str.173, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/pci/probe.c", i32 919, i32 29}
!386 = !{ptr @pci_register_host_bridge._entry, !387, !"_entry", i1 false, i1 false}
!387 = !{!"../drivers/pci/probe.c", i32 959, i32 4}
!388 = !{ptr @pci_register_host_bridge._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.175, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/pci/probe.c", i32 966, i32 3}
!391 = !{ptr @pci_register_host_bridge._entry.174, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @pci_register_host_bridge._entry_ptr.176, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.178, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/pci/probe.c", i32 968, i32 3}
!395 = !{ptr @pci_register_host_bridge._entry.177, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @pci_register_host_bridge._entry_ptr.179, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.180, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/pci/probe.c", i32 1009, i32 11}
!399 = !{ptr @.str.181, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/pci/probe.c", i32 1011, i32 11}
!401 = !{ptr @.str.183, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/pci/probe.c", i32 1019, i32 3}
!403 = !{ptr @pci_register_host_bridge._entry.182, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @pci_register_host_bridge._entry_ptr.184, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @pci_domain_busn_res_list, !406, !"pci_domain_busn_res_list", i1 false, i1 false}
!406 = !{!"../drivers/pci/probe.c", i32 39, i32 8}
!407 = !{ptr @.str.185, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/pci/probe.c", i32 29, i32 10}
!409 = !{ptr @busn_resource, !410, !"busn_resource", i1 false, i1 false}
!410 = !{!"../drivers/pci/probe.c", i32 28, i32 24}
!411 = !{ptr @.str.186, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/pci/probe.c", i32 3289, i32 8}
!413 = !{ptr @.str.187, !412, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @pci_rescan_remove_lock, !412, !"pci_rescan_remove_lock", i1 false, i1 false}
!415 = !{i32 1, !"wchar_size", i32 2}
!416 = !{i32 1, !"min_enum_size", i32 4}
!417 = !{i32 8, !"branch-target-enforcement", i32 0}
!418 = !{i32 8, !"sign-return-address", i32 0}
!419 = !{i32 8, !"sign-return-address-all", i32 0}
!420 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!421 = !{i32 7, !"uwtable", i32 1}
!422 = !{i32 7, !"frame-pointer", i32 2}
!423 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!424 = !{!"auto-init"}
!425 = !{!"branch_weights", i32 1, i32 2000}
!426 = !{i64 2148777490, i64 2148777495, i64 2148777508, i64 2148777552, i64 2148777586, i64 2148777607}
!427 = !{i8 0, i8 2}
