; ModuleID = '/llk/IR_all_yes/drivers/ntb/hw/epf/ntb_hw_epf.c_pt.bc'
source_filename = "../drivers/ntb/hw/epf/ntb_hw_epf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ntb_epf_data = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ntb_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.ntb_epf_dev = type { %struct.ntb_dev, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i64 }
%struct.ntb_dev = type { %struct.device, ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.completion, ptr }

@__UNIQUE_ID_description237 = internal constant [41 x i8] c"description=PCI ENDPOINT NTB HOST DRIVER\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [46 x i8] c"author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@ntb_epf_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ntb_epf_pci_tbl, ptr @ntb_epf_pci_probe, ptr @ntb_epf_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ntb_hw_epf\00", [21 x i8] zeroinitializer }, align 32
@ntb_epf_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4172, i32 45069, i32 -1, i32 -1, i32 327680, i32 16776960, i32 ptrtoint (ptr @j721e_data to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@j721e_data = internal constant { %struct.ntb_epf_data, [20 x i8] } { %struct.ntb_epf_data { i32 0, i32 1, i32 2 }, [20 x i8] zeroinitializer }, align 32
@ntb_epf_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ndev->cmd_lock\00", [16 x i8] zeroinitializer }, align 32
@ntb_epf_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 692, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to init PCI\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ntb_epf_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/ntb/hw/epf/ntb_hw_epf.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ntb_epf_pci_probe._entry_ptr = internal global ptr @ntb_epf_pci_probe._entry, section ".printk_index", align 4
@ntb_epf_pci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 698, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to init device\0A\00", [41 x i8] zeroinitializer }, align 32
@ntb_epf_pci_probe._entry_ptr.9 = internal global ptr @ntb_epf_pci_probe._entry.7, section ".printk_index", align 4
@ntb_epf_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 704, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register NTB device\0A\00", [33 x i8] zeroinitializer }, align 32
@ntb_epf_pci_probe._entry_ptr.12 = internal global ptr @ntb_epf_pci_probe._entry.10, section ".printk_index", align 4
@ntb_epf_ops = internal constant { %struct.ntb_dev_ops, [32 x i8] } { %struct.ntb_dev_ops { ptr null, ptr null, ptr null, ptr null, ptr @ntb_epf_link_is_up, ptr @ntb_epf_link_enable, ptr @ntb_epf_link_disable, ptr @ntb_epf_mw_count, ptr @ntb_epf_mw_get_align, ptr @ntb_epf_mw_set_trans, ptr @ntb_epf_mw_clear_trans, ptr @ntb_epf_peer_mw_count, ptr @ntb_epf_peer_mw_get_addr, ptr null, ptr null, ptr null, ptr @ntb_epf_db_valid_mask, ptr null, ptr null, ptr @ntb_epf_db_read, ptr null, ptr @ntb_epf_db_clear, ptr null, ptr @ntb_epf_db_set_mask, ptr @ntb_epf_db_clear_mask, ptr null, ptr null, ptr @ntb_epf_peer_db_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ntb_epf_spad_count, ptr @ntb_epf_spad_read, ptr @ntb_epf_spad_write, ptr null, ptr @ntb_epf_peer_spad_read, ptr @ntb_epf_peer_spad_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ntb_epf_link_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 292, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fail to enable link\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ntb_epf_link_enable\00", [44 x i8] zeroinitializer }, align 32
@ntb_epf_link_enable._entry_ptr = internal global ptr @ntb_epf_link_enable._entry, section ".printk_index", align 4
@ntb_epf_link_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 307, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Fail to disable link\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ntb_epf_link_disable\00", [43 x i8] zeroinitializer }, align 32
@ntb_epf_link_disable._entry_ptr = internal global ptr @ntb_epf_link_disable._entry, section ".printk_index", align 4
@ntb_epf_mw_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 154, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unsupported Peer ID %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ntb_epf_mw_count\00", [47 x i8] zeroinitializer }, align 32
@ntb_epf_mw_count._entry_ptr = internal global ptr @ntb_epf_mw_count._entry, section ".printk_index", align 4
@ntb_epf_mw_get_align._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.4, i32 171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ntb_epf_mw_get_align\00", [43 x i8] zeroinitializer }, align 32
@ntb_epf_mw_get_align._entry_ptr = internal global ptr @ntb_epf_mw_get_align._entry, section ".printk_index", align 4
@ntb_epf_mw_to_bar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported Memory Window index %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ntb_epf_mw_to_bar\00", [46 x i8] zeroinitializer }, align 32
@ntb_epf_mw_to_bar._entry_ptr = internal global ptr @ntb_epf_mw_to_bar._entry, section ".printk_index", align 4
@ntb_epf_mw_set_trans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.22, ptr @.str.4, i32 410, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ntb_epf_mw_set_trans\00", [43 x i8] zeroinitializer }, align 32
@ntb_epf_mw_set_trans._entry_ptr = internal global ptr @ntb_epf_mw_set_trans._entry, section ".printk_index", align 4
@ntb_epf_mw_set_trans._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 420, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Size:%pa is greater than the MW size %pa\0A\00", [54 x i8] zeroinitializer }, align 32
@ntb_epf_mw_set_trans._entry_ptr.25 = internal global ptr @ntb_epf_mw_set_trans._entry.23, section ".printk_index", align 4
@ntb_epf_mw_clear_trans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 441, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to teardown memory window\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ntb_epf_mw_clear_trans\00", [41 x i8] zeroinitializer }, align 32
@ntb_epf_mw_clear_trans._entry_ptr = internal global ptr @ntb_epf_mw_clear_trans._entry, section ".printk_index", align 4
@ntb_epf_peer_db_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 478, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DB interrupt %d greater than Max Supported %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ntb_epf_peer_db_set\00", [44 x i8] zeroinitializer }, align 32
@ntb_epf_peer_db_set._entry_ptr = internal global ptr @ntb_epf_peer_db_set._entry, section ".printk_index", align 4
@ntb_epf_spad_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"READ: Invalid ScratchPad Index %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ntb_epf_spad_read\00", [46 x i8] zeroinitializer }, align 32
@ntb_epf_spad_read._entry_ptr = internal global ptr @ntb_epf_spad_read._entry, section ".printk_index", align 4
@ntb_epf_spad_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"WRITE: Invalid ScratchPad Index %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ntb_epf_spad_write\00", [45 x i8] zeroinitializer }, align 32
@ntb_epf_spad_write._entry_ptr = internal global ptr @ntb_epf_spad_write._entry, section ".printk_index", align 4
@ntb_epf_peer_spad_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.34, ptr @.str.4, i32 246, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ntb_epf_peer_spad_read\00", [41 x i8] zeroinitializer }, align 32
@ntb_epf_peer_spad_read._entry_ptr = internal global ptr @ntb_epf_peer_spad_read._entry, section ".printk_index", align 4
@ntb_epf_peer_spad_read._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"WRITE: Invalid Peer ScratchPad Index %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ntb_epf_peer_spad_read._entry_ptr.37 = internal global ptr @ntb_epf_peer_spad_read._entry.35, section ".printk_index", align 4
@ntb_epf_peer_spad_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.38, ptr @.str.4, i32 267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ntb_epf_peer_spad_write\00", [40 x i8] zeroinitializer }, align 32
@ntb_epf_peer_spad_write._entry_ptr = internal global ptr @ntb_epf_peer_spad_write._entry, section ".printk_index", align 4
@ntb_epf_peer_spad_write._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.38, ptr @.str.4, i32 272, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ntb_epf_peer_spad_write._entry_ptr.40 = internal global ptr @ntb_epf_peer_spad_write._entry.39, section ".printk_index", align 4
@ntb_epf_init_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 574, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ntb_epf_init_pci\00", [47 x i8] zeroinitializer }, align 32
@ntb_epf_init_pci._entry_ptr = internal global ptr @ntb_epf_init_pci._entry, section ".printk_index", align 4
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ntb\00", [28 x i8] zeroinitializer }, align 32
@ntb_epf_init_pci._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.4, i32 580, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot obtain PCI resources\0A\00", [35 x i8] zeroinitializer }, align 32
@ntb_epf_init_pci._entry_ptr.46 = internal global ptr @ntb_epf_init_pci._entry.44, section ".printk_index", align 4
@ntb_epf_init_pci._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.42, ptr @.str.4, i32 590, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot set DMA mask\0A\00", [43 x i8] zeroinitializer }, align 32
@ntb_epf_init_pci._entry_ptr.49 = internal global ptr @ntb_epf_init_pci._entry.47, section ".printk_index", align 4
@ntb_epf_init_pci._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.42, ptr @.str.4, i32 593, ptr @.str.52, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot DMA highmem\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ntb_epf_init_pci._entry_ptr.53 = internal global ptr @ntb_epf_init_pci._entry.50, section ".printk_index", align 4
@ntb_epf_init_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 553, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to init ISR\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ntb_epf_init_dev\00", [47 x i8] zeroinitializer }, align 32
@ntb_epf_init_dev._entry_ptr = internal global ptr @ntb_epf_init_dev._entry, section ".printk_index", align 4
@ntb_epf_init_isr.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.4, ptr @.str.57, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ntb_epf_init_isr\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get MSIX interrupts\0A\00", [33 x i8] zeroinitializer }, align 32
@ntb_epf_init_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.4, i32 345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get MSI interrupts\0A\00", [34 x i8] zeroinitializer }, align 32
@ntb_epf_init_isr._entry_ptr = internal global ptr @ntb_epf_init_isr._entry, section ".printk_index", align 4
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ntb_epf\00", [24 x i8] zeroinitializer }, align 32
@ntb_epf_init_isr._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.4, i32 355, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@ntb_epf_init_isr._entry_ptr.62 = internal global ptr @ntb_epf_init_isr._entry.60, section ".printk_index", align 4
@ntb_epf_init_isr._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.4, i32 365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to configure doorbell\0A\00", [34 x i8] zeroinitializer }, align 32
@ntb_epf_init_isr._entry_ptr.65 = internal global ptr @ntb_epf_init_isr._entry.63, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"ntb_epf_pci_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 743, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 749, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"ntb_epf_pci_tbl\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 734, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [11 x i8] c"j721e_data\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 728, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 688, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 692, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 698, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 704, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"ntb_epf_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 513, i32 33 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 292, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 307, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 154, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 171, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 141, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 410, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 419, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 441, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 477, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 210, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 228, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 246, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 251, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 267, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 272, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 574, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 578, i32 34 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 580, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 590, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 593, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 553, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 341, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 345, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 353, i32 10 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 355, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private constant [35 x i8] c"../drivers/ntb/hw/epf/ntb_hw_epf.c\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 365, i32 3 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_license239, ptr @ntb_epf_init_dev._entry, ptr @ntb_epf_init_dev._entry_ptr, ptr @ntb_epf_init_isr._entry, ptr @ntb_epf_init_isr._entry.60, ptr @ntb_epf_init_isr._entry.63, ptr @ntb_epf_init_isr._entry_ptr, ptr @ntb_epf_init_isr._entry_ptr.62, ptr @ntb_epf_init_isr._entry_ptr.65, ptr @ntb_epf_init_pci._entry, ptr @ntb_epf_init_pci._entry.44, ptr @ntb_epf_init_pci._entry.47, ptr @ntb_epf_init_pci._entry.50, ptr @ntb_epf_init_pci._entry_ptr, ptr @ntb_epf_init_pci._entry_ptr.46, ptr @ntb_epf_init_pci._entry_ptr.49, ptr @ntb_epf_init_pci._entry_ptr.53, ptr @ntb_epf_link_disable._entry, ptr @ntb_epf_link_disable._entry_ptr, ptr @ntb_epf_link_enable._entry, ptr @ntb_epf_link_enable._entry_ptr, ptr @ntb_epf_mw_clear_trans._entry, ptr @ntb_epf_mw_clear_trans._entry_ptr, ptr @ntb_epf_mw_count._entry, ptr @ntb_epf_mw_count._entry_ptr, ptr @ntb_epf_mw_get_align._entry, ptr @ntb_epf_mw_get_align._entry_ptr, ptr @ntb_epf_mw_set_trans._entry, ptr @ntb_epf_mw_set_trans._entry.23, ptr @ntb_epf_mw_set_trans._entry_ptr, ptr @ntb_epf_mw_set_trans._entry_ptr.25, ptr @ntb_epf_mw_to_bar._entry, ptr @ntb_epf_mw_to_bar._entry_ptr, ptr @ntb_epf_pci_probe._entry, ptr @ntb_epf_pci_probe._entry.10, ptr @ntb_epf_pci_probe._entry.7, ptr @ntb_epf_pci_probe._entry_ptr, ptr @ntb_epf_pci_probe._entry_ptr.12, ptr @ntb_epf_pci_probe._entry_ptr.9, ptr @ntb_epf_peer_db_set._entry, ptr @ntb_epf_peer_db_set._entry_ptr, ptr @ntb_epf_peer_spad_read._entry, ptr @ntb_epf_peer_spad_read._entry.35, ptr @ntb_epf_peer_spad_read._entry_ptr, ptr @ntb_epf_peer_spad_read._entry_ptr.37, ptr @ntb_epf_peer_spad_write._entry, ptr @ntb_epf_peer_spad_write._entry.39, ptr @ntb_epf_peer_spad_write._entry_ptr, ptr @ntb_epf_peer_spad_write._entry_ptr.40, ptr @ntb_epf_spad_read._entry, ptr @ntb_epf_spad_read._entry_ptr, ptr @ntb_epf_spad_write._entry, ptr @ntb_epf_spad_write._entry_ptr, ptr @ntb_epf_pci_driver, ptr @.str, ptr @ntb_epf_pci_tbl, ptr @j721e_data, ptr @ntb_epf_pci_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @ntb_epf_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_pci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_ops to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_link_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_link_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_mw_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_mw_get_align._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_mw_to_bar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_mw_set_trans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_mw_set_trans._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_mw_clear_trans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_peer_db_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_spad_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_spad_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_peer_spad_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_peer_spad_read._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_peer_spad_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_peer_spad_write._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_init_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_init_pci._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_init_pci._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_init_pci._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_init_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_init_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_init_isr._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_epf_init_isr._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ntb_epf_pci_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @ntb_epf_pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %hdr_type.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 13
  %0 = ptrtoint ptr %hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr_type.i, align 1
  %2 = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %3 = icmp ult i8 %2, 2
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1208, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end4.if.end22_crit_edge, label %if.then6

if.end4.if.end22_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %6 = inttoptr i32 %5 to ptr
  %peer_spad_reg_bar7 = getelementptr inbounds %struct.ntb_epf_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %peer_spad_reg_bar7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %peer_spad_reg_bar7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool8.not, i32 1, i32 %8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %db_reg_bar17 = getelementptr inbounds %struct.ntb_epf_data, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %db_reg_bar17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %db_reg_bar17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not = icmp eq i32 %12, 0
  %spec.select85 = select i1 %tobool18.not, i32 2, i32 %12
  br label %if.end22

if.end22:                                         ; preds = %if.then6, %if.end4.if.end22_crit_edge
  %peer_spad_reg_bar.1 = phi i32 [ 1, %if.end4.if.end22_crit_edge ], [ %spec.select, %if.then6 ]
  %ctrl_reg_bar.1 = phi i32 [ 0, %if.end4.if.end22_crit_edge ], [ %10, %if.then6 ]
  %db_reg_bar.0 = phi i32 [ 2, %if.end4.if.end22_crit_edge ], [ %spec.select85, %if.then6 ]
  %peer_spad_reg_bar23 = getelementptr inbounds %struct.ntb_epf_dev, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %peer_spad_reg_bar23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %peer_spad_reg_bar.1, ptr %peer_spad_reg_bar23, align 4
  %ctrl_reg_bar24 = getelementptr inbounds %struct.ntb_epf_dev, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %ctrl_reg_bar24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %ctrl_reg_bar.1, ptr %ctrl_reg_bar24, align 8
  %db_reg_bar25 = getelementptr inbounds %struct.ntb_epf_dev, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %db_reg_bar25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %db_reg_bar.0, ptr %db_reg_bar25, align 8
  %dev26 = getelementptr inbounds %struct.ntb_epf_dev, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev1, ptr %dev26, align 8
  %pdev1.i = getelementptr inbounds %struct.ntb_dev, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pdev, ptr %pdev1.i, align 8
  %topo.i = getelementptr inbounds %struct.ntb_dev, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %topo.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %topo.i, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ntb_epf_ops, ptr %ops.i, align 8
  %cmd_lock = getelementptr inbounds %struct.ntb_epf_dev, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ntb_epf_pci_probe.__key) #9
  %20 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev26, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %call.i86 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool.not.i = icmp eq i32 %call.i86, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.41) #12
  br label %do.end32

if.end.i:                                         ; preds = %if.end22
  %call2.i = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end8.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.45) #12
  br label %err_pci_regions.i

if.end8.i:                                        ; preds = %if.end.i
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %21, i64 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dma_set_mask_and_coherent.exit.thread.i, label %if.then11.i

dma_set_mask_and_coherent.exit.thread.i:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %21, i64 noundef -1) #9
  br label %if.end23.i

if.then11.i:                                      ; preds = %if.end8.i
  %call.i68.i = tail call i32 @dma_set_mask(ptr noundef %21, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %cmp.i69.i = icmp eq i32 %call.i68.i, 0
  br i1 %cmp.i69.i, label %do.end21.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.48) #12
  br label %err_dma_mask.i

do.end21.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i70.i = tail call i32 @dma_set_coherent_mask(ptr noundef %21, i64 noundef 4294967295) #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.51) #12
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end21.i, %dma_set_mask_and_coherent.exit.thread.i
  %23 = ptrtoint ptr %ctrl_reg_bar24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctrl_reg_bar24, align 8
  %call24.i = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %24, i32 noundef 0) #9
  %ctrl_reg.i = getelementptr inbounds %struct.ntb_epf_dev, ptr %call.i, i32 0, i32 9
  %25 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call24.i, ptr %ctrl_reg.i, align 8
  %tobool26.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool26.not.i, label %if.end23.i.err_dma_mask.i_crit_edge, label %if.end28.i

if.end23.i.err_dma_mask.i_crit_edge:              ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dma_mask.i

if.end28.i:                                       ; preds = %if.end23.i
  %26 = ptrtoint ptr %peer_spad_reg_bar23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %peer_spad_reg_bar23, align 4
  %call29.i = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %27, i32 noundef 0) #9
  %peer_spad_reg.i = getelementptr inbounds %struct.ntb_epf_dev, ptr %call.i, i32 0, i32 11
  %28 = ptrtoint ptr %peer_spad_reg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call29.i, ptr %peer_spad_reg.i, align 8
  %tobool31.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool31.not.i, label %if.end28.i.err_dma_mask.i_crit_edge, label %if.end33.i

if.end28.i.err_dma_mask.i_crit_edge:              ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dma_mask.i

if.end33.i:                                       ; preds = %if.end28.i
  %29 = ptrtoint ptr %db_reg_bar25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %db_reg_bar25, align 8
  %call34.i = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %30, i32 noundef 0) #9
  %db_reg.i = getelementptr inbounds %struct.ntb_epf_dev, ptr %call.i, i32 0, i32 10
  %31 = ptrtoint ptr %db_reg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call34.i, ptr %db_reg.i, align 4
  %tobool36.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool36.not.i, label %if.end33.i.err_dma_mask.i_crit_edge, label %if.end33

if.end33.i.err_dma_mask.i_crit_edge:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dma_mask.i

err_dma_mask.i:                                   ; preds = %if.end33.i.err_dma_mask.i_crit_edge, %if.end28.i.err_dma_mask.i_crit_edge, %if.end23.i.err_dma_mask.i_crit_edge, %do.end17.i
  %ret.0.i = phi i32 [ %call.i68.i, %do.end17.i ], [ -5, %if.end23.i.err_dma_mask.i_crit_edge ], [ -5, %if.end28.i.err_dma_mask.i_crit_edge ], [ -5, %if.end33.i.err_dma_mask.i_crit_edge ]
  tail call void @pci_clear_master(ptr noundef %pdev) #9
  br label %err_pci_regions.i

err_pci_regions.i:                                ; preds = %err_dma_mask.i, %do.end7.i
  %ret.1.i = phi i32 [ %call2.i, %do.end7.i ], [ %ret.0.i, %err_dma_mask.i ]
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %do.end32

do.end32:                                         ; preds = %err_pci_regions.i, %do.end.i
  %ret.2.i = phi i32 [ %call.i86, %do.end.i ], [ %ret.1.i, %err_pci_regions.i ]
  %32 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %driver_data.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end33.i
  %33 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev26, align 8
  %call.i88 = tail call fastcc i32 @ntb_epf_init_isr(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i89 = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i89, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.54) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #12
  br label %err_init_dev

if.end40:                                         ; preds = %if.end33
  %db_count.i = getelementptr inbounds %struct.ntb_epf_dev, ptr %call.i, i32 0, i32 8
  %35 = ptrtoint ptr %db_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %db_count.i, align 4
  %sh_prom.i = zext i32 %36 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %sub.i = xor i64 %notmask.i, -1
  %db_valid_mask.i = getelementptr inbounds %struct.ntb_epf_dev, ptr %call.i, i32 0, i32 15
  %37 = ptrtoint ptr %db_valid_mask.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %sub.i, ptr %db_valid_mask.i, align 8
  %38 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctrl_reg.i, align 8
  %add.ptr.i = getelementptr i8, ptr %39, i32 32
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !154
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  %mw_count.i = getelementptr inbounds %struct.ntb_epf_dev, ptr %call.i, i32 0, i32 6
  %42 = ptrtoint ptr %mw_count.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %mw_count.i, align 4
  %43 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctrl_reg.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %44, i32 44
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #9, !srcloc !154
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  %spad_count.i = getelementptr inbounds %struct.ntb_epf_dev, ptr %call.i, i32 0, i32 7
  %47 = ptrtoint ptr %spad_count.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %spad_count.i, align 8
  %call41 = tail call i32 @ntb_register_device(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %do.end46

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #12
  tail call fastcc void @ntb_epf_cleanup_isr(ptr noundef nonnull %call.i)
  br label %err_init_dev

err_init_dev:                                     ; preds = %do.end46, %do.end39
  %ret.0 = phi i32 [ %call.i88, %do.end39 ], [ %call41, %do.end46 ]
  %48 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev1.i, align 8
  %50 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrl_reg.i, align 8
  tail call void @pci_iounmap(ptr noundef %49, ptr noundef %51) #9
  %52 = ptrtoint ptr %peer_spad_reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %peer_spad_reg.i, align 8
  tail call void @pci_iounmap(ptr noundef %49, ptr noundef %53) #9
  %54 = ptrtoint ptr %db_reg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %db_reg.i, align 4
  tail call void @pci_iounmap(ptr noundef %49, ptr noundef %55) #9
  tail call void @pci_clear_master(ptr noundef %49) #9
  tail call void @pci_release_regions(ptr noundef %49) #9
  tail call void @pci_disable_device(ptr noundef %49) #9
  %driver_data.i.i.i97 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44, i32 8
  %56 = ptrtoint ptr %driver_data.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %driver_data.i.i.i97, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_init_dev, %if.end40.cleanup_crit_edge, %do.end32, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2.i, %do.end32 ], [ %ret.0, %err_init_dev ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_epf_pci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @ntb_unregister_device(ptr noundef %1) #9
  %pdev1.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1.i, align 8
  %db_count.i = getelementptr inbounds %struct.ntb_epf_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %db_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %db_count.i, align 4
  %add.i = add i32 %5, 1
  %call.i = tail call fastcc i32 @ntb_epf_send_command(ptr noundef %1, i32 noundef 2, i32 noundef %add.i) #9
  %6 = ptrtoint ptr %db_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %db_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp14.not.i = icmp eq i32 %7, -1
  br i1 %cmp14.not.i, label %entry.ntb_epf_cleanup_isr.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ntb_epf_cleanup_isr.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_epf_cleanup_isr.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call4.i = tail call i32 @pci_irq_vector(ptr noundef %3, i32 noundef %i.015.i) #9
  %call5.i = tail call ptr @free_irq(i32 noundef %call4.i, ptr noundef %1) #9
  %inc.i = add nuw i32 %i.015.i, 1
  %8 = ptrtoint ptr %db_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %db_count.i, align 4
  %add3.i = add i32 %9, 1
  %cmp.i = icmp ult i32 %inc.i, %add3.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ntb_epf_cleanup_isr.exit_crit_edge

for.body.i.ntb_epf_cleanup_isr.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_epf_cleanup_isr.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ntb_epf_cleanup_isr.exit:                         ; preds = %for.body.i.ntb_epf_cleanup_isr.exit_crit_edge, %entry.ntb_epf_cleanup_isr.exit_crit_edge
  tail call void @pci_free_irq_vectors(ptr noundef %3) #9
  %10 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev1.i, align 8
  %ctrl_reg.i = getelementptr inbounds %struct.ntb_epf_dev, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_reg.i, align 8
  tail call void @pci_iounmap(ptr noundef %11, ptr noundef %13) #9
  %peer_spad_reg.i = getelementptr inbounds %struct.ntb_epf_dev, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %peer_spad_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peer_spad_reg.i, align 8
  tail call void @pci_iounmap(ptr noundef %11, ptr noundef %15) #9
  %db_reg.i = getelementptr inbounds %struct.ntb_epf_dev, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %db_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %db_reg.i, align 4
  tail call void @pci_iounmap(ptr noundef %11, ptr noundef %17) #9
  tail call void @pci_clear_master(ptr noundef %11) #9
  tail call void @pci_release_regions(ptr noundef %11) #9
  tail call void @pci_disable_device(ptr noundef %11) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %driver_data.i.i.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ntb_epf_cleanup_isr(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %db_count = getelementptr inbounds %struct.ntb_epf_dev, ptr %ndev, i32 0, i32 8
  %2 = ptrtoint ptr %db_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %db_count, align 4
  %add = add i32 %3, 1
  %call = tail call fastcc i32 @ntb_epf_send_command(ptr noundef %ndev, i32 noundef 2, i32 noundef %add)
  %4 = ptrtoint ptr %db_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %db_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp14.not = icmp eq i32 %5, -1
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call4 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %i.015) #9
  %call5 = tail call ptr @free_irq(i32 noundef %call4, ptr noundef %ndev) #9
  %inc = add nuw i32 %i.015, 1
  %6 = ptrtoint ptr %db_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %db_count, align 4
  %add3 = add i32 %7, 1
  %cmp = icmp ult i32 %inc, %add3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @pci_free_irq_vectors(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ntb_epf_link_is_up(ptr nocapture noundef readonly %ntb, ptr nocapture noundef readnone %speed, ptr nocapture noundef readnone %width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_reg = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr1 = getelementptr i8, ptr %1, i32 10
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1) #9, !srcloc !157
  %3 = lshr i16 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %4 = and i16 %3, 1
  %conv4 = zext i16 %4 to i64
  ret i64 %conv4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_link_enable(ptr noundef %ntb, i32 noundef %max_speed, i32 noundef %max_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call = tail call fastcc i32 @ntb_epf_send_command(ptr noundef %ntb, i32 noundef 5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_link_disable(ptr noundef %ntb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call = tail call fastcc i32 @ntb_epf_send_command(ptr noundef %ntb, i32 noundef 6, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_mw_count(ptr nocapture noundef readonly %ntb, i32 noundef %pidx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp.not = icmp eq i32 %pidx, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %pidx) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mw_count = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 6
  %2 = ptrtoint ptr %mw_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mw_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_mw_get_align(ptr nocapture noundef readonly %ntb, i32 noundef %pidx, i32 noundef %idx, ptr noundef writeonly %addr_align, ptr noundef writeonly %size_align, ptr noundef writeonly %size_max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp.not = icmp eq i32 %pidx, 0
  %dev1.i = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 1
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 8
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %pidx) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp.i = icmp slt i32 %idx, 0
  br i1 %cmp.i, label %if.end.ntb_epf_mw_to_bar.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.ntb_epf_mw_to_bar.exit.thread_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_epf_mw_to_bar.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %mw_count.i = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 6
  %2 = ptrtoint ptr %mw_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mw_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %idx)
  %cmp2.i = icmp ult i32 %3, %idx
  br i1 %cmp2.i, label %lor.lhs.false.i.ntb_epf_mw_to_bar.exit.thread_crit_edge, label %ntb_epf_mw_to_bar.exit

lor.lhs.false.i.ntb_epf_mw_to_bar.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_epf_mw_to_bar.exit.thread

ntb_epf_mw_to_bar.exit.thread:                    ; preds = %lor.lhs.false.i.ntb_epf_mw_to_bar.exit.thread_crit_edge, %if.end.ntb_epf_mw_to_bar.exit.thread_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %idx) #12
  br label %cleanup

ntb_epf_mw_to_bar.exit:                           ; preds = %lor.lhs.false.i
  %add.i = add nuw i32 %idx, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp2 = icmp slt i32 %add.i, 0
  br i1 %cmp2, label %ntb_epf_mw_to_bar.exit.cleanup_crit_edge, label %if.end4

ntb_epf_mw_to_bar.exit.cleanup_crit_edge:         ; preds = %ntb_epf_mw_to_bar.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %ntb_epf_mw_to_bar.exit
  %tobool.not = icmp eq ptr %addr_align, null
  br i1 %tobool.not, label %if.end4.if.end6_crit_edge, label %if.then5

if.end4.if.end6_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %addr_align to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %addr_align, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end4.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %size_align, null
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %size_align to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %size_align, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %size_max, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %end = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 %add.i, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13 = icmp eq i32 %9, 0
  br i1 %cmp13, label %if.then11.cond.end_crit_edge, label %cond.false

if.then11.cond.end_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 %add.i
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %9, 1
  %add = sub i32 %sub, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then11.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.then11.cond.end_crit_edge ]
  %12 = ptrtoint ptr %size_max to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %size_max, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end9.cleanup_crit_edge, %ntb_epf_mw_to_bar.exit.cleanup_crit_edge, %ntb_epf_mw_to_bar.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %add.i, %ntb_epf_mw_to_bar.exit.cleanup_crit_edge ], [ 0, %cond.end ], [ 0, %if.end9.cleanup_crit_edge ], [ -22, %ntb_epf_mw_to_bar.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_mw_set_trans(ptr noundef %ntb, i32 noundef %pidx, i32 noundef %idx, i32 noundef %addr, i32 noundef %size) #2 align 64 {
entry:
  %size.addr = alloca i32, align 4
  %mw_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %size.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %size, ptr %size.addr, align 4
  %dev1 = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mw_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp.not = icmp eq i32 %pidx, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %pidx) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %idx, 2
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %end = getelementptr %struct.pci_dev, ptr %4, i32 0, i32 47, i32 %add, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.pci_dev, ptr %4, i32 0, i32 47, i32 %add
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %6, 1
  %add10 = sub i32 %sub, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %add10, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %9 = ptrtoint ptr %mw_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %mw_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %size)
  %cmp11 = icmp ult i32 %cond, %size
  br i1 %cmp11, label %do.end15, label %do.body17

do.end15:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef nonnull %size.addr, ptr noundef nonnull %mw_size) #12
  br label %cleanup

do.body17:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %ctrl_reg = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 9
  %11 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr20 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %10) #9, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr26 = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #9, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.addr, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr32 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %17) #9, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr39 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 0) #9, !srcloc !160
  %call = tail call fastcc i32 @ntb_epf_send_command(ptr noundef %ntb, i32 noundef 3, i32 noundef %idx)
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %do.end15, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end15 ], [ 0, %do.body17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mw_size) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_mw_clear_trans(ptr noundef %ntb, i32 noundef %pidx, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ntb_epf_send_command(ptr noundef %ntb, i32 noundef 4, i32 noundef %idx)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntb_epf_peer_mw_count(ptr nocapture noundef readonly %ntb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mw_count = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 6
  %0 = ptrtoint ptr %mw_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mw_count, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_peer_mw_get_addr(ptr nocapture noundef readonly %ntb, i32 noundef %idx, ptr noundef writeonly %base, ptr noundef writeonly %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp = icmp eq i32 %idx, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_reg = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr1 = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #9, !srcloc !154
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %offset.0 = phi i32 [ %3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %add = add i32 %idx, 2
  %tobool.not = icmp eq ptr %base, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %arrayidx = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %add
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  %add6 = add i32 %7, %offset.0
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add6, ptr %base, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %size, null
  br i1 %tobool8.not, label %if.end7.if.end27_crit_edge, label %if.then9

if.end7.if.end27_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then9:                                         ; preds = %if.end7
  %pdev11 = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %9 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev11, align 8
  %end = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 %add, i32 1
  %11 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp14 = icmp eq i32 %12, 0
  br i1 %cmp14, label %if.then9.cond.end_crit_edge, label %cond.false

if.then9.cond.end_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 %add
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx13, align 8
  %sub = add i32 %12, 1
  %add25 = sub i32 %sub, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then9.cond.end_crit_edge
  %cond = phi i32 [ %add25, %cond.false ], [ 0, %if.then9.cond.end_crit_edge ]
  %sub26 = sub i32 %cond, %offset.0
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub26, ptr %size, align 4
  br label %if.end27

if.end27:                                         ; preds = %cond.end, %if.end7.if.end27_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @ntb_epf_db_valid_mask(ptr nocapture noundef readonly %ntb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %db_valid_mask = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 15
  %0 = ptrtoint ptr %db_valid_mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %db_valid_mask, align 8
  ret i64 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @ntb_epf_db_read(ptr nocapture noundef readonly %ntb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %db_val = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 14
  %0 = ptrtoint ptr %db_val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %db_val, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ntb_epf_db_clear(ptr nocapture noundef writeonly %ntb, i64 noundef %db_bits) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %db_val = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 14
  %0 = ptrtoint ptr %db_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %db_val, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntb_epf_db_set_mask(ptr nocapture noundef readnone %ntb, i64 noundef %db_bits) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntb_epf_db_clear_mask(ptr nocapture noundef readnone %ntb, i64 noundef %db_bits) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_peer_db_set(ptr nocapture noundef readonly %ntb, i64 noundef %db_bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %db_bits to i32
  %0 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 true), !range !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %iszero = icmp eq i32 %conv, 0
  %.op = add nuw nsw i32 %0, 2
  %add = select i1 %iszero, i32 1, i32 %.op
  %db_count = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 8
  %1 = ptrtoint ptr %db_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %db_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %2)
  %cmp = icmp ugt i32 %add, %2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 1
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef %add, i32 noundef %2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_reg = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 9
  %5 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr4 = getelementptr i8, ptr %6, i32 48
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !154
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %9 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_reg, align 8
  %mul = shl nuw nsw i32 %add, 2
  %add10 = add nuw nsw i32 %mul, 52
  %add.ptr11 = getelementptr i8, ptr %10, i32 %add10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #9, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %12 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_reg, align 8
  %add19 = add nuw nsw i32 %mul, 180
  %add.ptr20 = getelementptr i8, ptr %13, i32 %add19
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !154
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %db_reg = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 10
  %16 = ptrtoint ptr %db_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %db_reg, align 4
  %mul27 = mul i32 %8, %add
  %add.ptr28 = getelementptr i8, ptr %17, i32 %mul27
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %11) #9, !srcloc !160
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntb_epf_spad_count(ptr nocapture noundef readonly %ntb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %spad_count = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 7
  %0 = ptrtoint ptr %spad_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spad_count, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_spad_read(ptr nocapture noundef readonly %ntb, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp = icmp slt i32 %idx, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %spad_count = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 7
  %2 = ptrtoint ptr %spad_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spad_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %idx)
  %cmp2.not = icmp ugt i32 %3, %idx
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %idx) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_reg = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 9
  %4 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !154
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %shl = shl i32 %idx, 2
  %add = add i32 %7, %shl
  %8 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr9 = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #9, !srcloc !154
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %11, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_spad_write(ptr nocapture noundef readonly %ntb, i32 noundef %idx, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp = icmp slt i32 %idx, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %spad_count = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 7
  %2 = ptrtoint ptr %spad_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spad_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %idx)
  %cmp2.not = icmp ugt i32 %3, %idx
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %idx) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_reg = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 9
  %4 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !154
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %shl = shl i32 %idx, 2
  %add = add i32 %7, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %val)
  %9 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr10 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %8) #9, !srcloc !160
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_peer_spad_read(ptr nocapture noundef readonly %ntb, i32 noundef %pidx, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp.not = icmp eq i32 %pidx, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %pidx) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp2 = icmp slt i32 %idx, 0
  br i1 %cmp2, label %if.end.do.end7_crit_edge, label %lor.lhs.false

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

lor.lhs.false:                                    ; preds = %if.end
  %spad_count = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 7
  %2 = ptrtoint ptr %spad_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spad_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %idx)
  %cmp3.not = icmp ugt i32 %3, %idx
  br i1 %cmp3.not, label %if.end8, label %lor.lhs.false.do.end7_crit_edge

lor.lhs.false.do.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end7:                                          ; preds = %lor.lhs.false.do.end7_crit_edge, %if.end.do.end7_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %idx) #12
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i32 %idx, 2
  %peer_spad_reg = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 11
  %4 = ptrtoint ptr %peer_spad_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer_spad_reg, align 8
  %add.ptr9 = getelementptr i8, ptr %5, i32 %shl
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #9, !srcloc !154
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ %7, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_peer_spad_write(ptr nocapture noundef readonly %ntb, i32 noundef %pidx, i32 noundef %idx, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp.not = icmp eq i32 %pidx, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %pidx) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp2 = icmp slt i32 %idx, 0
  br i1 %cmp2, label %if.end.do.end7_crit_edge, label %lor.lhs.false

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

lor.lhs.false:                                    ; preds = %if.end
  %spad_count = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 7
  %2 = ptrtoint ptr %spad_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spad_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %idx)
  %cmp3.not = icmp ugt i32 %3, %idx
  br i1 %cmp3.not, label %if.end8, label %lor.lhs.false.do.end7_crit_edge

lor.lhs.false.do.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end7:                                          ; preds = %lor.lhs.false.do.end7_crit_edge, %if.end.do.end7_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %idx) #12
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i32 %idx, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %val)
  %peer_spad_reg = getelementptr inbounds %struct.ntb_epf_dev, ptr %ntb, i32 0, i32 11
  %5 = ptrtoint ptr %peer_spad_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %peer_spad_reg, align 8
  %add.ptr12 = getelementptr i8, ptr %6, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %4) #9, !srcloc !160
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntb_epf_send_command(ptr noundef %ndev, i32 noundef %command, i32 noundef %argument) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_lock = getelementptr inbounds %struct.ntb_epf_dev, ptr %ndev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %0 = tail call i32 @llvm.bswap.i32(i32 %argument)
  %ctrl_reg = getelementptr inbounds %struct.ntb_epf_dev, ptr %ndev, i32 0, i32 9
  %1 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #9, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %command)
  %4 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_reg, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #9, !srcloc !160
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 1000000000
  br label %while.cond

while.cond:                                       ; preds = %if.end45, %entry
  %call7 = tail call i64 @ktime_get() #9
  %6 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr10 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %if.end17 [
    i16 512, label %do.body46.loopexit
    i16 256, label %while.cond.do.body46_crit_edge
  ]

while.cond.do.body46_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

if.end17:                                         ; preds = %while.cond
  %cmp3.i.i = icmp sgt i64 %call7, %add.i
  br i1 %cmp3.i.i, label %do.end29, label %if.end45, !prof !179

do.end29:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 122, i32 noundef 9, ptr noundef null) #9
  br label %do.body46

if.end45:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #9
  br label %while.cond

do.body46.loopexit:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

do.body46:                                        ; preds = %do.body46.loopexit, %do.end29, %while.cond.do.body46_crit_edge
  %ret.0 = phi i32 [ -110, %do.end29 ], [ -22, %do.body46.loopexit ], [ 0, %while.cond.do.body46_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_reg, align 8
  %add.ptr50 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr50, i16 0) #9, !srcloc !181
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntb_epf_init_isr(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %dev2 = getelementptr inbounds %struct.ntb_epf_dev, ptr %ndev, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %1, i32 noundef 4, i32 noundef 32, i32 noundef 4, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ntb_epf_init_isr.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ntb_epf_init_isr, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !182

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ntb_epf_init_isr.__UNIQUE_ID_ddebug236, ptr noundef %3, ptr noundef nonnull @.str.57) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %call.i1 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %1, i32 noundef 4, i32 noundef 32, i32 noundef 2, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp8 = icmp slt i32 %call.i1, 0
  br i1 %cmp8, label %do.end12, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.58) #12
  br label %cleanup

if.end14:                                         ; preds = %do.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %argument.0 = phi i32 [ 65536, %entry.if.end14_crit_edge ], [ 0, %do.end.if.end14_crit_edge ]
  %irq.0 = phi i32 [ %call.i, %entry.if.end14_crit_edge ], [ %call.i1, %do.end.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq.0)
  %cmp154.not = icmp eq i32 %irq.0, 0
  br i1 %cmp154.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %irq.0
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end14.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  %call16 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %i.05) #9
  %call.i2 = tail call i32 @request_threaded_irq(i32 noundef %call16, ptr noundef nonnull @ntb_epf_vec_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.59, ptr noundef %ndev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool18.not = icmp eq i32 %call.i2, 0
  br i1 %tobool18.not, label %for.cond, label %do.end22

do.end22:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.61) #12
  br label %err_request_irq

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end14.for.end_crit_edge
  %sub = add nsw i32 %irq.0, -1
  %db_count = getelementptr inbounds %struct.ntb_epf_dev, ptr %ndev, i32 0, i32 8
  %4 = ptrtoint ptr %db_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %db_count, align 4
  %or = or i32 %irq.0, %argument.0
  %call24 = tail call fastcc i32 @ntb_epf_send_command(ptr noundef %ndev, i32 noundef 1, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.end.cleanup_crit_edge, label %do.end29

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end29:                                         ; preds = %for.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.64) #12
  %5 = ptrtoint ptr %db_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %db_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp337.not = icmp eq i32 %6, -1
  br i1 %cmp337.not, label %do.end29.err_request_irq_crit_edge, label %do.end29.for.body34_crit_edge

do.end29.for.body34_crit_edge:                    ; preds = %do.end29
  br label %for.body34

do.end29.err_request_irq_crit_edge:               ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_request_irq

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %do.end29.for.body34_crit_edge
  %i.18 = phi i32 [ %inc38, %for.body34.for.body34_crit_edge ], [ 0, %do.end29.for.body34_crit_edge ]
  %call35 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %i.18) #9
  %call36 = tail call ptr @free_irq(i32 noundef %call35, ptr noundef %ndev) #9
  %inc38 = add nuw i32 %i.18, 1
  %7 = ptrtoint ptr %db_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %db_count, align 4
  %add = add i32 %8, 1
  %cmp33 = icmp ult i32 %inc38, %add
  br i1 %cmp33, label %for.body34.for.body34_crit_edge, label %for.body34.err_request_irq_crit_edge

for.body34.err_request_irq_crit_edge:             ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_request_irq

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34

err_request_irq:                                  ; preds = %for.body34.err_request_irq_crit_edge, %do.end29.err_request_irq_crit_edge, %do.end22
  %ret.0 = phi i32 [ %call.i2, %do.end22 ], [ %call24, %do.end29.err_request_irq_crit_edge ], [ %call24, %for.body34.err_request_irq_crit_edge ]
  tail call void @pci_free_irq_vectors(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %err_request_irq, %for.end.cleanup_crit_edge, %do.end12
  %retval.0 = phi i32 [ %call.i1, %do.end12 ], [ %ret.0, %err_request_irq ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_epf_vec_isr(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef 0) #9
  %sub = sub i32 %irq, %call
  %add = add i32 %sub, 1
  %db_val = getelementptr inbounds %struct.ntb_epf_dev, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %db_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %db_val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %irq)
  %cmp = icmp eq i32 %call, %irq
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ntb_link_event(ptr noundef %dev) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ntb_db_event(ptr noundef %dev, i32 noundef %sub) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_link_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_db_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !139, !140, !141, !143, !144}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__UNIQUE_ID_description237, !1, !"__UNIQUE_ID_description237", i1 false, i1 false}
!1 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 751, i32 1}
!2 = !{ptr @__UNIQUE_ID_author238, !3, !"__UNIQUE_ID_author238", i1 false, i1 false}
!3 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 752, i32 1}
!4 = !{ptr @__UNIQUE_ID_license239, !5, !"__UNIQUE_ID_license239", i1 false, i1 false}
!5 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 753, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 749, i32 1}
!8 = !{ptr @ntb_epf_pci_driver, !9, !"ntb_epf_pci_driver", i1 false, i1 false}
!9 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 743, i32 26}
!10 = !{ptr @ntb_epf_pci_tbl, !11, !"ntb_epf_pci_tbl", i1 false, i1 false}
!11 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 734, i32 35}
!12 = !{ptr @j721e_data, !13, !"j721e_data", i1 false, i1 false}
!13 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 728, i32 34}
!14 = !{ptr @ntb_epf_pci_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 688, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 692, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ntb_epf_pci_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ntb_epf_pci_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 698, i32 3}
!27 = !{ptr @ntb_epf_pci_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ntb_epf_pci_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 704, i32 3}
!31 = !{ptr @ntb_epf_pci_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ntb_epf_pci_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ntb_epf_ops, !34, !"ntb_epf_ops", i1 false, i1 false}
!34 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 513, i32 33}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 292, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ntb_epf_link_enable._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ntb_epf_link_enable._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 307, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ntb_epf_link_disable._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ntb_epf_link_disable._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 154, i32 3}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ntb_epf_mw_count._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ntb_epf_mw_count._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 171, i32 3}
!52 = !{ptr @ntb_epf_mw_get_align._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ntb_epf_mw_get_align._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 141, i32 3}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ntb_epf_mw_to_bar._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ntb_epf_mw_to_bar._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 410, i32 3}
!61 = !{ptr @ntb_epf_mw_set_trans._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ntb_epf_mw_set_trans._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 419, i32 3}
!65 = !{ptr @ntb_epf_mw_set_trans._entry.23, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ntb_epf_mw_set_trans._entry_ptr.25, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 441, i32 3}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ntb_epf_mw_clear_trans._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ntb_epf_mw_clear_trans._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 477, i32 3}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ntb_epf_peer_db_set._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @ntb_epf_peer_db_set._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 210, i32 3}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ntb_epf_spad_read._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @ntb_epf_spad_read._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 228, i32 3}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ntb_epf_spad_write._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @ntb_epf_spad_write._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 246, i32 3}
!89 = !{ptr @ntb_epf_peer_spad_read._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ntb_epf_peer_spad_read._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 251, i32 3}
!93 = !{ptr @ntb_epf_peer_spad_read._entry.35, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ntb_epf_peer_spad_read._entry_ptr.37, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 267, i32 3}
!97 = !{ptr @ntb_epf_peer_spad_write._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ntb_epf_peer_spad_write._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @ntb_epf_peer_spad_write._entry.39, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 272, i32 3}
!101 = !{ptr @ntb_epf_peer_spad_write._entry_ptr.40, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 574, i32 3}
!104 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ntb_epf_init_pci._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @ntb_epf_init_pci._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 578, i32 34}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 580, i32 3}
!111 = !{ptr @ntb_epf_init_pci._entry.44, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ntb_epf_init_pci._entry_ptr.46, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 590, i32 4}
!115 = !{ptr @ntb_epf_init_pci._entry.47, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @ntb_epf_init_pci._entry_ptr.49, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 593, i32 3}
!119 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ntb_epf_init_pci._entry.50, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @ntb_epf_init_pci._entry_ptr.53, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 553, i32 3}
!124 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ntb_epf_init_dev._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @ntb_epf_init_dev._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 341, i32 3}
!129 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ntb_epf_init_isr.__UNIQUE_ID_ddebug236, !128, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 345, i32 4}
!133 = !{ptr @ntb_epf_init_isr._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @ntb_epf_init_isr._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 353, i32 10}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 355, i32 4}
!139 = !{ptr @ntb_epf_init_isr._entry.60, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @ntb_epf_init_isr._entry_ptr.62, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/ntb/hw/epf/ntb_hw_epf.c", i32 365, i32 3}
!143 = !{ptr @ntb_epf_init_isr._entry.63, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @ntb_epf_init_isr._entry_ptr.65, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{i64 5002543}
!155 = !{i64 2154568828}
!156 = !{i64 2154569335}
!157 = !{i64 5001705}
!158 = !{i64 2154512391}
!159 = !{i64 2154551865}
!160 = !{i64 5002125}
!161 = !{i64 2154552408}
!162 = !{i64 2154552952}
!163 = !{i64 2154553495}
!164 = !{i64 2154558336}
!165 = !{i32 0, i32 33}
!166 = !{i64 2154562335}
!167 = !{i64 2154562972}
!168 = !{i64 2154563609}
!169 = !{i64 2154563876}
!170 = !{i64 2154515868}
!171 = !{i64 2154516378}
!172 = !{i64 2154519785}
!173 = !{i64 2154520005}
!174 = !{i64 2154525263}
!175 = !{i64 2154530035}
!176 = !{i64 2154500993}
!177 = !{i64 2154501411}
!178 = !{i64 2154502108}
!179 = !{!"branch_weights", i32 1, i32 2000}
!180 = !{i64 2154502841}
!181 = !{i64 5001505}
!182 = !{i64 2148771206, i64 2148771211, i64 2148771224, i64 2148771268, i64 2148771302, i64 2148771323}
