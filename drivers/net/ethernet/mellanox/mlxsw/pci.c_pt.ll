; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/pci.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlxsw_pci_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc_mlxsw_pci_driver_register\09\09\09\09"
module asm "\09.long\09__crc_mlxsw_pci_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlxsw_pci_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22mlxsw_pci_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_mlxsw_pci_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlxsw_pci_driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_mlxsw_pci_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_mlxsw_pci_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlxsw_pci_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22mlxsw_pci_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_mlxsw_pci_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_bus = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.mlxsw_pci_queue_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.mlxsw_pci = type { ptr, ptr, i64, [4 x %struct.mlxsw_pci_queue_type_group], i32, ptr, %struct.anon.129, %struct.anon.130, %struct.mlxsw_bus_info, ptr, i32, i8 }
%struct.mlxsw_pci_queue_type_group = type { ptr, i8 }
%struct.anon.129 = type { ptr, i32 }
%struct.anon.130 = type { %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item, %struct.mutex, i8, %struct.wait_queue_head, i8, %struct.anon.131 }
%struct.mlxsw_pci_mem_item = type { ptr, i32, i32 }
%struct.anon.131 = type { i8, i64 }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }
%struct.mlxsw_tx_info = type { i16, i8 }
%struct.mlxsw_pci_queue = type { %struct.spinlock, %struct.mlxsw_pci_mem_item, ptr, i16, i16, i16, i8, i8, i32, %struct.tasklet_struct, ptr, %union.anon.126 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.125, i32 }
%union.anon.125 = type { ptr }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i32 }
%struct.mlxsw_pci_queue_elem_info = type { ptr, %union.anon.122 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mlxsw_config_profile = type { i16, i8, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i8, i16, i16, i16, i8, i16, i8, i32, i8, i8, i8, [8 x %struct.mlxsw_swid_config] }
%struct.mlxsw_swid_config = type { i8, i8, i8 }
%struct.mlxsw_res = type { [48 x i8], [48 x i64] }
%struct.mlxsw_rx_info = type { i8, %union.anon.136, i16, i8, i32 }
%union.anon.136 = type { i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlxsw_pci\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_mlxsw_pci_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlxsw_pci_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_mlxsw_pci_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlxsw_pci_driver_register to i32), ptr @__kstrtab_mlxsw_pci_driver_register, ptr @__kstrtabns_mlxsw_pci_driver_register }, section "___ksymtab+mlxsw_pci_driver_register", align 4
@__kstrtab_mlxsw_pci_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlxsw_pci_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_mlxsw_pci_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlxsw_pci_driver_unregister to i32), ptr @__kstrtab_mlxsw_pci_driver_unregister, ptr @__kstrtabns_mlxsw_pci_driver_unregister }, section "___ksymtab+mlxsw_pci_driver_unregister", align 4
@__initcall__kmod_mlxsw_pci__347_2000_mlxsw_pci_module_init6 = internal global ptr @mlxsw_pci_module_init, section ".initcall6.init", align 4
@__exitcall_mlxsw_pci_module_exit = internal global ptr @mlxsw_pci_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file348 = internal constant [61 x i8] c"mlxsw_pci.file=drivers/net/ethernet/mellanox/mlxsw/mlxsw_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license349 = internal constant [31 x i8] c"mlxsw_pci.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author350 = internal constant [48 x i8] c"mlxsw_pci.author=Jiri Pirko <jiri@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description351 = internal constant [59 x i8] c"mlxsw_pci.description=Mellanox switch PCI interface driver\00", section ".modinfo", align 1
@mlxsw_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1892, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci_enable_device failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlxsw_pci_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/mellanox/mlxsw/pci.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_pci_probe._entry_ptr = internal global ptr @mlxsw_pci_probe._entry, section ".printk_index", align 4
@mlxsw_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1898, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pci_request_regions failed\0A\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_pci_probe._entry_ptr.8 = internal global ptr @mlxsw_pci_probe._entry.6, section ".printk_index", align 4
@mlxsw_pci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1906, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma_set_mask failed\0A\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_pci_probe._entry_ptr.11 = internal global ptr @mlxsw_pci_probe._entry.9, section ".printk_index", align 4
@mlxsw_pci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1912, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid PCI region size\0A\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_pci_probe._entry_ptr.14 = internal global ptr @mlxsw_pci_probe._entry.12, section ".printk_index", align 4
@mlxsw_pci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1920, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap failed\0A\00", [16 x i8] zeroinitializer }, align 32
@mlxsw_pci_probe._entry_ptr.17 = internal global ptr @mlxsw_pci_probe._entry.15, section ".printk_index", align 4
@mlxsw_pci_bus = internal constant { %struct.mlxsw_bus, [60 x i8] } { %struct.mlxsw_bus { ptr @.str.26, ptr @mlxsw_pci_init, ptr @mlxsw_pci_fini, ptr @mlxsw_pci_skb_transmit_busy, ptr @mlxsw_pci_skb_transmit, ptr @mlxsw_pci_cmd_exec, ptr @mlxsw_pci_read_frc_h, ptr @mlxsw_pci_read_frc_l, i8 3 }, [60 x i8] zeroinitializer }, align 32
@mlxsw_pci_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1943, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot register bus device\0A\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_pci_probe._entry_ptr.20 = internal global ptr @mlxsw_pci_probe._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlxsw_pci_cmd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mlxsw_pci->cmd.lock\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_pci_cmd_init.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mlxsw_pci->cmd.wait\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_pci_mbox_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 1409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed allocating memory for mailbox\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlxsw_pci_mbox_alloc\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_pci_mbox_alloc._entry_ptr = internal global ptr @mlxsw_pci_mbox_alloc._entry, section ".printk_index", align 4
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pci\00", [28 x i8] zeroinitializer }, align 32
@mlxsw_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MSI-X init failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlxsw_pci_init\00", [17 x i8] zeroinitializer }, align 32
@mlxsw_pci_init._entry_ptr = internal global ptr @mlxsw_pci_init._entry, section ".printk_index", align 4
@mlxsw_pci_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 1531, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unsupported cmd interface revision ID queried from hw\0A\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_pci_init._entry_ptr.31 = internal global ptr @mlxsw_pci_init._entry.29, section ".printk_index", align 4
@mlxsw_pci_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.3, i32 1536, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unsupported doorbell page bar queried from hw\0A\00", [49 x i8] zeroinitializer }, align 32
@mlxsw_pci_init._entry_ptr.34 = internal global ptr @mlxsw_pci_init._entry.32, section ".printk_index", align 4
@mlxsw_pci_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.3, i32 1545, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Unsupported free running clock BAR queried from hw\0A\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_pci_init._entry_ptr.37 = internal global ptr @mlxsw_pci_init._entry.35, section ".printk_index", align 4
@mlxsw_pci_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.3, i32 1577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Invalid supported CQE version combination reported\0A\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_pci_init._entry_ptr.40 = internal global ptr @mlxsw_pci_init._entry.38, section ".printk_index", align 4
@mlxsw_pci_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.28, ptr @.str.3, i32 1593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IRQ request failed\0A\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_pci_init._entry_ptr.43 = internal global ptr @mlxsw_pci_init._entry.41, section ".printk_index", align 4
@mlxsw_pci_sw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 1459, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Failed to reach system ready status before reset. Status is 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlxsw_pci_sw_reset\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_pci_sw_reset._entry_ptr = internal global ptr @mlxsw_pci_sw_reset._entry, section ".printk_index", align 4
@mlxsw_reg_mrsr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28637, i16 8, ptr @.str.54 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_pci_sw_reset._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 1471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Failed to reach system ready status after reset. Status is 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@mlxsw_pci_sw_reset._entry_ptr.48 = internal global ptr @mlxsw_pci_sw_reset._entry.46, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.51, i32 35, ptr null, ptr null }, align 1
@.str.49 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_mrsr_command\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mrsr\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_pci_alloc_irq_vectors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.55, ptr @.str.3, i32 1484, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlxsw_pci_alloc_irq_vectors\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_pci_alloc_irq_vectors._entry_ptr = internal global ptr @mlxsw_pci_alloc_irq_vectors._entry, section ".printk_index", align 4
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd_mbox_query_fw_fw_rev_major\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd_mbox_query_fw_fw_rev_minor\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cmd_mbox_query_fw_fw_rev_subminor\00", [62 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cmd_mbox_query_fw_cmd_interface_rev\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cmd_mbox_query_fw_doorbell_page_bar\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cmd_mbox_query_fw_doorbell_page_offset\00", [57 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cmd_mbox_query_fw_fr_rn_clk_bar\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cmd_mbox_query_fw_free_running_clock_offset\00", [52 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cmd_mbox_query_fw_fw_pages\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmd_mbox_map_fa_pa\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cmd_mbox_map_fa_log2size\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_pci_boardinfo_xm_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 1287, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid number of XM local ports\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mlxsw_pci_boardinfo_xm_process\00", [33 x i8] zeroinitializer }, align 32
@mlxsw_pci_boardinfo_xm_process._entry_ptr = internal global ptr @mlxsw_pci_boardinfo_xm_process._entry, section ".printk_index", align 4
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cmd_mbox_boardinfo_xm_num_local_ports\00", [58 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cmd_mbox_boardinfo_xm_exists\00", [35 x i8] zeroinitializer }, align 32
@__mlxsw_item_bit_array_offset._entry = internal constant %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.51, i32 216, ptr null, ptr null }, align 1
@.str.86 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,element_size=%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__mlxsw_item_bit_array_offset\00", [34 x i8] zeroinitializer }, align 32
@__mlxsw_item_bit_array_offset._entry_ptr = internal global ptr @__mlxsw_item_bit_array_offset._entry, section ".printk_index", align 4
@.str.88 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cmd_mbox_boardinfo_xm_local_port_entry\00", [57 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cmd_mbox_config_profile_set_max_vepa_channels\00", [50 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cmd_mbox_config_profile_max_vepa_channels\00", [54 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cmd_mbox_config_profile_set_max_mid\00", [60 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cmd_mbox_config_profile_max_mid\00", [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cmd_mbox_config_profile_set_max_pgt\00", [60 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cmd_mbox_config_profile_max_pgt\00", [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cmd_mbox_config_profile_set_max_system_port\00", [52 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cmd_mbox_config_profile_max_system_port\00", [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cmd_mbox_config_profile_set_max_vlan_groups\00", [52 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cmd_mbox_config_profile_max_vlan_groups\00", [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cmd_mbox_config_profile_set_max_regions\00", [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cmd_mbox_config_profile_max_regions\00", [60 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cmd_mbox_config_profile_set_flood_tables\00", [55 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cmd_mbox_config_profile_max_flood_tables\00", [55 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cmd_mbox_config_profile_max_vid_flood_tables\00", [51 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"cmd_mbox_config_profile_max_fid_offset_flood_tables\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"cmd_mbox_config_profile_fid_offset_flood_table_size\00", [44 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cmd_mbox_config_profile_max_fid_flood_tables\00", [51 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cmd_mbox_config_profile_fid_flood_table_size\00", [51 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cmd_mbox_config_profile_set_flood_mode\00", [57 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cmd_mbox_config_profile_flood_mode\00", [61 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cmd_mbox_config_profile_set_max_ib_mc\00", [58 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cmd_mbox_config_profile_max_ib_mc\00", [62 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cmd_mbox_config_profile_set_max_pkey\00", [59 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cmd_mbox_config_profile_max_pkey\00", [63 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cmd_mbox_config_profile_set_ar_sec\00", [61 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd_mbox_config_profile_ar_sec\00", [33 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"cmd_mbox_config_profile_set_adaptive_routing_group_cap\00", [41 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"cmd_mbox_config_profile_adaptive_routing_group_cap\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cmd_mbox_config_profile_set_kvd_linear_size\00", [52 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cmd_mbox_config_profile_kvd_linear_size\00", [56 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/mellanox/mlxsw/resources.h\00", [48 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cmd_mbox_config_profile_set_kvd_hash_single_size\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cmd_mbox_config_profile_kvd_hash_single_size\00", [51 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cmd_mbox_config_profile_set_kvd_hash_double_size\00", [47 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cmd_mbox_config_profile_kvd_hash_double_size\00", [51 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cmd_mbox_config_profile_set_kvh_xlt_cache_mode\00", [49 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cmd_mbox_config_profile_kvh_xlt_cache_mode\00", [53 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cmd_mbox_config_profile_swid_config_type\00", [55 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cmd_mbox_config_profile_swid_config_properties\00", [49 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cmd_mbox_config_profile_swid_config_mask\00", [55 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cmd_mbox_config_profile_set_cqe_version\00", [56 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cmd_mbox_config_profile_cqe_version\00", [60 x i8] zeroinitializer }, align 32
@mlxsw_pci_aqs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.3, i32 1040, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported number of queues\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlxsw_pci_aqs_init\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_pci_aqs_init._entry_ptr = internal global ptr @mlxsw_pci_aqs_init._entry, section ".printk_index", align 4
@mlxsw_pci_aqs_init._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.3, i32 1050, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unsupported number of async queue descriptors\0A\00", [49 x i8] zeroinitializer }, align 32
@mlxsw_pci_aqs_init._entry_ptr.178 = internal global ptr @mlxsw_pci_aqs_init._entry.176, section ".printk_index", align 4
@mlxsw_pci_eq_ops = internal constant { %struct.mlxsw_pci_queue_ops, [60 x i8] } { %struct.mlxsw_pci_queue_ops { ptr null, i32 3, ptr null, ptr @mlxsw_pci_eq_init, ptr @mlxsw_pci_eq_fini, ptr @mlxsw_pci_eq_tasklet, ptr null, ptr null, i16 2048, i8 16 }, [60 x i8] zeroinitializer }, align 32
@mlxsw_pci_aqs_init._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.175, ptr @.str.3, i32 1059, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize event queues\0A\00", [61 x i8] zeroinitializer }, align 32
@mlxsw_pci_aqs_init._entry_ptr.181 = internal global ptr @mlxsw_pci_aqs_init._entry.179, section ".printk_index", align 4
@mlxsw_pci_cq_ops = internal constant { %struct.mlxsw_pci_queue_ops, [60 x i8] } { %struct.mlxsw_pci_queue_ops { ptr null, i32 2, ptr @mlxsw_pci_cq_pre_init, ptr @mlxsw_pci_cq_init, ptr @mlxsw_pci_cq_fini, ptr @mlxsw_pci_cq_tasklet, ptr @mlxsw_pci_cq_elem_count, ptr @mlxsw_pci_cq_elem_size, i16 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@mlxsw_pci_aqs_init._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.175, ptr @.str.3, i32 1066, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to initialize completion queues\0A\00", [56 x i8] zeroinitializer }, align 32
@mlxsw_pci_aqs_init._entry_ptr.184 = internal global ptr @mlxsw_pci_aqs_init._entry.182, section ".printk_index", align 4
@mlxsw_pci_sdq_ops = internal constant { %struct.mlxsw_pci_queue_ops, [60 x i8] } { %struct.mlxsw_pci_queue_ops { ptr null, i32 0, ptr null, ptr @mlxsw_pci_sdq_init, ptr @mlxsw_pci_sdq_fini, ptr null, ptr null, ptr null, i16 1024, i8 32 }, [60 x i8] zeroinitializer }, align 32
@mlxsw_pci_aqs_init._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.175, ptr @.str.3, i32 1073, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to initialize send descriptor queues\0A\00", [51 x i8] zeroinitializer }, align 32
@mlxsw_pci_aqs_init._entry_ptr.187 = internal global ptr @mlxsw_pci_aqs_init._entry.185, section ".printk_index", align 4
@mlxsw_pci_rdq_ops = internal constant { %struct.mlxsw_pci_queue_ops, [60 x i8] } { %struct.mlxsw_pci_queue_ops { ptr null, i32 1, ptr null, ptr @mlxsw_pci_rdq_init, ptr @mlxsw_pci_rdq_fini, ptr null, ptr null, ptr null, i16 1024, i8 32 }, [60 x i8] zeroinitializer }, align 32
@mlxsw_pci_aqs_init._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.175, ptr @.str.3, i32 1080, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to initialize receive descriptor queues\0A\00", [48 x i8] zeroinitializer }, align 32
@mlxsw_pci_aqs_init._entry_ptr.190 = internal global ptr @mlxsw_pci_aqs_init._entry.188, section ".printk_index", align 4
@.str.191 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cmd_mbox_query_aq_cap_max_num_sdqs\00", [61 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cmd_mbox_query_aq_cap_log_max_sdq_sz\00", [59 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cmd_mbox_query_aq_cap_max_num_rdqs\00", [61 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cmd_mbox_query_aq_cap_log_max_rdq_sz\00", [59 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cmd_mbox_query_aq_cap_max_num_cqs\00", [62 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cmd_mbox_query_aq_cap_log_max_cq_sz\00", [60 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cmd_mbox_query_aq_cap_log_max_cqv2_sz\00", [58 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cmd_mbox_query_aq_cap_max_num_eqs\00", [62 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cmd_mbox_query_aq_cap_log_max_eq_sz\00", [60 x i8] zeroinitializer }, align 32
@mlxsw_pci_queue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.209 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&q->lock\00", [23 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pci_eqe_owner\00", [18 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cmd_mbox_sw2hw_eq_int_msix\00", [37 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cmd_mbox_sw2hw_eq_st\00", [43 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmd_mbox_sw2hw_eq_log_eq_size\00", [34 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cmd_mbox_sw2hw_eq_pa\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_pci_doorbell_type_offset = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 512, i16 1024, i16 1536], [24 x i8] zeroinitializer }, align 32
@mlxsw_pci_doorbell_arm_type_offset = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 0, i16 2048, i16 2560], [24 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci_eqe_cmd_status\00", [45 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pci_eqe_cmd_out_param_h\00", [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pci_eqe_cmd_out_param_l\00", [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci_eqe_cqn\00", [20 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci_cqe01_owner\00", [16 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe01_owner_item = internal constant { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, [16 x i8] } { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 1, i8 undef }, ptr @.str.228 }, [16 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pci_cqe2_owner\00", [17 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe2_owner_item = internal constant { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, [16 x i8] } { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 28, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 1, i8 undef }, ptr @.str.230 }, [16 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cmd_mbox_sw2hw_cq_cqe_ver\00", [38 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cmd_mbox_sw2hw_cq_c_eqn\00", [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cmd_mbox_sw2hw_cq_st\00", [43 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmd_mbox_sw2hw_cq_log_cq_size\00", [34 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cmd_mbox_sw2hw_cq_pa\00", [43 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci_cqe_wqe_counter\00", [44 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci_cqe0_sr\00", [20 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci_cqe12_sr\00", [19 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci_cqe0_dqn\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe0_dqn_item = internal constant { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, [16 x i8] } { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 12, i16 0, i16 0, i8 1, i8 0, i8 0, i8 undef, { i8, i8 } { i8 5, i8 undef }, ptr @.str.248 }, [16 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pci_cqe12_dqn\00", [18 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe12_dqn_item = internal constant { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, [16 x i8] } { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 12, i16 0, i16 0, i8 1, i8 0, i8 0, i8 undef, { i8, i8 } { i8 6, i8 undef }, ptr @.str.250 }, [16 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe_sdq_handle._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.252, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe_sdq_handle.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.253, ptr @.str.3, ptr @.str.254, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.253 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxsw_pci_cqe_sdq_handle\00", [39 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Consumer counter does not match limit in SDQ\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci_wqe_byte_count\00", [45 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci_wqe_address\00", [16 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe_rdq_handle._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.252, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe_rdq_handle.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.259, ptr @.str.3, ptr @.str.260, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.259 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxsw_pci_cqe_rdq_handle\00", [39 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Consumer counter does not match limit in RDQ\0A\00", [50 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe_rdq_handle._rs.261 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.252, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe_rdq_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.259, ptr @.str.3, i32 615, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to alloc skb for RDQ\0A\00", [35 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe_rdq_handle._entry_ptr = internal global ptr @mlxsw_pci_cqe_rdq_handle._entry, section ".printk_index", align 4
@mlxsw_pci_wqe_frag_map._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.252, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mlxsw_pci_wqe_frag_map = private unnamed_addr constant [23 x i8] c"mlxsw_pci_wqe_frag_map\00", align 1
@mlxsw_pci_wqe_frag_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @__func__.mlxsw_pci_wqe_frag_map, ptr @.str.3, i32 332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to dma map tx frag\0A\00", [37 x i8] zeroinitializer }, align 32
@mlxsw_pci_wqe_frag_map._entry_ptr = internal global ptr @mlxsw_pci_wqe_frag_map._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.264 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.266 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci_cqe0_lag\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe0_lag_item = internal constant { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, [16 x i8] } { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 23, i8 0, i8 0, i8 undef, { i8, i8 } { i8 1, i8 undef }, ptr @.str.266 }, [16 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pci_cqe12_lag\00", [18 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe12_lag_item = internal constant { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, [16 x i8] } { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 24, i8 0, i8 0, i8 undef, { i8, i8 } { i8 1, i8 undef }, ptr @.str.268 }, [16 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci_cqe0_lag_id\00", [16 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_cqe12_lag_id\00", [47 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pci_cqe0_lag_subport\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe0_lag_subport_item = internal constant { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, [16 x i8] } { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.274 }, [16 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci_cqe12_lag_subport\00", [42 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe12_lag_subport_item = internal constant { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, [16 x i8] } { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, ptr @.str.276 }, [16 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci_cqe_system_port\00", [44 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci_cqe_trap_id\00", [16 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pci_cqe2_user_def_val_orig_pkt_len\00", [61 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci_cqe2_mirror_reason\00", [41 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci_cqe2_mirror_cong_high\00", [38 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci_cqe2_mirror_cong_low\00", [39 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pci_cqe2_mirror_latency\00", [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci_cqe2_mirror_tclass\00", [41 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci_cqe2_tx_lag\00", [16 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci_cqe2_tx_lag_id\00", [45 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pci_cqe2_tx_lag_subport\00", [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pci_cqe2_tx_system_port\00", [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci_cqe_byte_count\00", [45 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci_cqe0_crc\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe0_crc_item = internal constant { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, [16 x i8] } { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 12, i16 0, i16 0, i8 8, i8 0, i8 0, i8 undef, { i8, i8 } { i8 1, i8 undef }, ptr @.str.304 }, [16 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pci_cqe12_crc\00", [18 x i8] zeroinitializer }, align 32
@mlxsw_pci_cqe12_crc_item = internal constant { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, [16 x i8] } { { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 12, i16 0, i16 0, i8 9, i8 0, i8 0, i8 undef, { i8, i8 } { i8 1, i8 undef }, ptr @.str.306 }, [16 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cmd_mbox_sw2hw_dq_cq\00", [43 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cmd_mbox_sw2hw_dq_sdq_lp\00", [39 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cmd_mbox_sw2hw_dq_sdq_tclass\00", [35 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cmd_mbox_sw2hw_dq_log2_dq_sz\00", [35 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cmd_mbox_sw2hw_dq_pa\00", [43 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci_wqe_c\00", [22 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_wqe_lp\00", [21 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci_wqe_type\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.324 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.325 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.326 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.327 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1981, i32 9 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1892, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1898, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1906, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1912, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1920, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant [14 x i8] c"mlxsw_pci_bus\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1837, i32 31 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1943, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1853, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1854, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1409, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1838, i32 12 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1515, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1531, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1536, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1545, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1577, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1593, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1458, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mrsr\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1470, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 33, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 10382, i32 1 }
@___asan_gen_.476 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 10374, i32 1 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1484, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 214, i32 1 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 224, i32 1 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 219, i32 1 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 236, i32 1 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 318, i32 1 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 312, i32 1 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 330, i32 1 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 323, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 209, i32 1 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 489, i32 1 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 495, i32 1 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1287, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 352, i32 1 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 357, i32 1 }
@___asan_gen_.536 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 215, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 361, i32 1 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 572, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 687, i32 1 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 590, i32 1 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 703, i32 1 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 596, i32 1 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 709, i32 1 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 602, i32 1 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 714, i32 1 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 608, i32 1 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 719, i32 1 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 614, i32 1 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 724, i32 1 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 626, i32 1 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 730, i32 1 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 737, i32 1 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 753, i32 1 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 759, i32 1 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 768, i32 1 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 773, i32 1 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 620, i32 1 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 748, i32 1 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 632, i32 1 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 779, i32 1 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 638, i32 1 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 784, i32 1 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 651, i32 1 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 794, i32 1 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 644, i32 1 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 801, i32 1 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 657, i32 1 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 821, i32 1 }
@___asan_gen_.635 = private unnamed_addr constant [51 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/resources.h\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 132, i32 6 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 663, i32 1 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 830, i32 1 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 669, i32 1 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 839, i32 1 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 681, i32 1 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 814, i32 1 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 860, i32 1 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 866, i32 1 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 849, i32 1 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 675, i32 1 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 875, i32 1 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1040, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1050, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant [17 x i8] c"mlxsw_pci_eq_ops\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 884, i32 41 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1059, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant [17 x i8] c"mlxsw_pci_cq_ops\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 874, i32 41 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1066, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant [18 x i8] c"mlxsw_pci_sdq_ops\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 858, i32 41 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1073, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant [18 x i8] c"mlxsw_pci_rdq_ops\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 866, i32 41 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1080, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 415, i32 1 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 410, i32 1 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 425, i32 1 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 420, i32 1 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 440, i32 1 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 430, i32 1 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 435, i32 1 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 450, i32 1 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 445, i32 1 }
@___asan_gen_.748 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 905, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 319, i32 1 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 1177, i32 1 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 1186, i32 1 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 1191, i32 1 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 1203, i32 1 }
@___asan_gen_.769 = private unnamed_addr constant [31 x i8] c"mlxsw_pci_doorbell_type_offset\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 39, i32 18 }
@___asan_gen_.772 = private unnamed_addr constant [35 x i8] c"mlxsw_pci_doorbell_arm_type_offset\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 46, i32 18 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 329, i32 1 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 334, i32 1 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 339, i32 1 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 314, i32 1 }
@___asan_gen_.790 = private unnamed_addr constant [27 x i8] c"mlxsw_pci_cqe01_owner_item\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 295, i32 1 }
@___asan_gen_.796 = private unnamed_addr constant [26 x i8] c"mlxsw_pci_cqe2_owner_item\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 296, i32 1 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 1090, i32 1 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 1095, i32 1 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 1102, i32 1 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 1107, i32 1 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 1119, i32 1 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 167, i32 1 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 209, i32 1 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 210, i32 1 }
@___asan_gen_.826 = private unnamed_addr constant [24 x i8] c"mlxsw_pci_cqe0_dqn_item\00", align 1
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 216, i32 1 }
@___asan_gen_.832 = private unnamed_addr constant [25 x i8] c"mlxsw_pci_cqe12_dqn_item\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 217, i32 1 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 540, i32 3 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 99, i32 1 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 105, i32 1 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 611, i32 3 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 615, i32 3 }
@___asan_gen_.871 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.874 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.878 = private constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/pci.c\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 332, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 326, i32 6 }
@___asan_gen_.889 = private unnamed_addr constant [24 x i8] c"mlxsw_pci_cqe0_lag_item\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 146, i32 1 }
@___asan_gen_.895 = private unnamed_addr constant [25 x i8] c"mlxsw_pci_cqe12_lag_item\00", align 1
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 147, i32 1 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 157, i32 1 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 158, i32 1 }
@___asan_gen_.907 = private unnamed_addr constant [32 x i8] c"mlxsw_pci_cqe0_lag_subport_item\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 160, i32 1 }
@___asan_gen_.913 = private unnamed_addr constant [33 x i8] c"mlxsw_pci_cqe12_lag_subport_item\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 161, i32 1 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 156, i32 1 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 188, i32 1 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 276, i32 1 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 281, i32 1 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 183, i32 1 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 261, i32 1 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 290, i32 1 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 226, i32 1 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 231, i32 1 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 247, i32 1 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 237, i32 1 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 254, i32 1 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 174, i32 1 }
@___asan_gen_.958 = private unnamed_addr constant [24 x i8] c"mlxsw_pci_cqe0_crc_item\00", align 1
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 194, i32 1 }
@___asan_gen_.964 = private unnamed_addr constant [25 x i8] c"mlxsw_pci_cqe12_crc_item\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 195, i32 1 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 936, i32 1 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 948, i32 1 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 954, i32 1 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 959, i32 1 }
@___asan_gen_.980 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/cmd.h\00", align 1
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 964, i32 1 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 77, i32 1 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 89, i32 1 }
@___asan_gen_.988 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.989 = private unnamed_addr constant [48 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.989, i32 94, i32 1 }
@llvm.compiler.used = appending global [259 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file348, ptr @__UNIQUE_ID_license349, ptr @__exitcall_mlxsw_pci_module_exit, ptr @__initcall__kmod_mlxsw_pci__347_2000_mlxsw_pci_module_init6, ptr @__ksymtab_mlxsw_pci_driver_register, ptr @__ksymtab_mlxsw_pci_driver_unregister, ptr @__mlxsw_item_bit_array_offset._entry, ptr @__mlxsw_item_bit_array_offset._entry_ptr, ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_pci_alloc_irq_vectors._entry, ptr @mlxsw_pci_alloc_irq_vectors._entry_ptr, ptr @mlxsw_pci_aqs_init._entry, ptr @mlxsw_pci_aqs_init._entry.176, ptr @mlxsw_pci_aqs_init._entry.179, ptr @mlxsw_pci_aqs_init._entry.182, ptr @mlxsw_pci_aqs_init._entry.185, ptr @mlxsw_pci_aqs_init._entry.188, ptr @mlxsw_pci_aqs_init._entry_ptr, ptr @mlxsw_pci_aqs_init._entry_ptr.178, ptr @mlxsw_pci_aqs_init._entry_ptr.181, ptr @mlxsw_pci_aqs_init._entry_ptr.184, ptr @mlxsw_pci_aqs_init._entry_ptr.187, ptr @mlxsw_pci_aqs_init._entry_ptr.190, ptr @mlxsw_pci_boardinfo_xm_process._entry, ptr @mlxsw_pci_boardinfo_xm_process._entry_ptr, ptr @mlxsw_pci_cqe_rdq_handle._entry, ptr @mlxsw_pci_cqe_rdq_handle._entry_ptr, ptr @mlxsw_pci_init._entry, ptr @mlxsw_pci_init._entry.29, ptr @mlxsw_pci_init._entry.32, ptr @mlxsw_pci_init._entry.35, ptr @mlxsw_pci_init._entry.38, ptr @mlxsw_pci_init._entry.41, ptr @mlxsw_pci_init._entry_ptr, ptr @mlxsw_pci_init._entry_ptr.31, ptr @mlxsw_pci_init._entry_ptr.34, ptr @mlxsw_pci_init._entry_ptr.37, ptr @mlxsw_pci_init._entry_ptr.40, ptr @mlxsw_pci_init._entry_ptr.43, ptr @mlxsw_pci_mbox_alloc._entry, ptr @mlxsw_pci_mbox_alloc._entry_ptr, ptr @mlxsw_pci_module_exit, ptr @mlxsw_pci_probe._entry, ptr @mlxsw_pci_probe._entry.12, ptr @mlxsw_pci_probe._entry.15, ptr @mlxsw_pci_probe._entry.18, ptr @mlxsw_pci_probe._entry.6, ptr @mlxsw_pci_probe._entry.9, ptr @mlxsw_pci_probe._entry_ptr, ptr @mlxsw_pci_probe._entry_ptr.11, ptr @mlxsw_pci_probe._entry_ptr.14, ptr @mlxsw_pci_probe._entry_ptr.17, ptr @mlxsw_pci_probe._entry_ptr.20, ptr @mlxsw_pci_probe._entry_ptr.8, ptr @mlxsw_pci_sw_reset._entry, ptr @mlxsw_pci_sw_reset._entry.46, ptr @mlxsw_pci_sw_reset._entry_ptr, ptr @mlxsw_pci_sw_reset._entry_ptr.48, ptr @mlxsw_pci_wqe_frag_map._entry, ptr @mlxsw_pci_wqe_frag_map._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @mlxsw_pci_bus, ptr @.str.19, ptr @mlxsw_pci_cmd_init.__key, ptr @.str.21, ptr @mlxsw_pci_cmd_init.__key.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @mlxsw_reg_mrsr, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @.str.177, ptr @mlxsw_pci_eq_ops, ptr @.str.180, ptr @mlxsw_pci_cq_ops, ptr @.str.183, ptr @mlxsw_pci_sdq_ops, ptr @.str.186, ptr @mlxsw_pci_rdq_ops, ptr @.str.189, ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr @.str.197, ptr @.str.199, ptr @.str.201, ptr @.str.203, ptr @.str.205, ptr @.str.207, ptr @mlxsw_pci_queue_init.__key, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.214, ptr @.str.216, ptr @.str.218, ptr @mlxsw_pci_doorbell_type_offset, ptr @mlxsw_pci_doorbell_arm_type_offset, ptr @.str.220, ptr @.str.222, ptr @.str.224, ptr @.str.226, ptr @.str.228, ptr @mlxsw_pci_cqe01_owner_item, ptr @.str.230, ptr @mlxsw_pci_cqe2_owner_item, ptr @.str.232, ptr @.str.234, ptr @.str.236, ptr @.str.238, ptr @.str.240, ptr @.str.242, ptr @.str.244, ptr @.str.246, ptr @.str.248, ptr @mlxsw_pci_cqe0_dqn_item, ptr @.str.250, ptr @mlxsw_pci_cqe12_dqn_item, ptr @mlxsw_pci_cqe_sdq_handle._rs, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.257, ptr @mlxsw_pci_cqe_rdq_handle._rs, ptr @.str.259, ptr @.str.260, ptr @mlxsw_pci_cqe_rdq_handle._rs.261, ptr @.str.262, ptr @mlxsw_pci_wqe_frag_map._rs, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @mlxsw_pci_cqe0_lag_item, ptr @.str.268, ptr @mlxsw_pci_cqe12_lag_item, ptr @.str.270, ptr @.str.272, ptr @.str.274, ptr @mlxsw_pci_cqe0_lag_subport_item, ptr @.str.276, ptr @mlxsw_pci_cqe12_lag_subport_item, ptr @.str.278, ptr @.str.280, ptr @.str.282, ptr @.str.284, ptr @.str.286, ptr @.str.288, ptr @.str.290, ptr @.str.292, ptr @.str.294, ptr @.str.296, ptr @.str.298, ptr @.str.300, ptr @.str.302, ptr @.str.304, ptr @mlxsw_pci_cqe0_crc_item, ptr @.str.306, ptr @mlxsw_pci_cqe12_crc_item, ptr @.str.308, ptr @.str.310, ptr @.str.312, ptr @.str.314, ptr @.str.316, ptr @.str.318, ptr @.str.320, ptr @.str.322], section "llvm.metadata"
@0 = internal global [221 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_bus to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cmd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cmd_init.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_mbox_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_sw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mrsr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_sw_reset._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_alloc_irq_vectors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_boardinfo_xm_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_aqs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_aqs_init._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_eq_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_aqs_init._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cq_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_aqs_init._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_sdq_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_aqs_init._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_rdq_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_aqs_init._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_queue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_doorbell_type_offset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_doorbell_arm_type_offset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe01_owner_item to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe2_owner_item to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe0_dqn_item to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe12_dqn_item to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe_sdq_handle._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe_rdq_handle._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe_rdq_handle._rs.261 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe_rdq_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_wqe_frag_map._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_wqe_frag_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe0_lag_item to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe12_lag_item to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe0_lag_subport_item to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe12_lag_subport_item to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe0_crc_item to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_pci_cqe12_crc_item to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_pci_driver_register(ptr noundef %pci_driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %probe = getelementptr inbounds %struct.pci_driver, ptr %pci_driver, i32 0, i32 3
  %0 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlxsw_pci_probe, ptr %probe, align 4
  %remove = getelementptr inbounds %struct.pci_driver, ptr %pci_driver, i32 0, i32 4
  %1 = ptrtoint ptr %remove to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mlxsw_pci_remove, ptr %remove, align 4
  %shutdown = getelementptr inbounds %struct.pci_driver, ptr %pci_driver, i32 0, i32 7
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mlxsw_pci_remove, ptr %shutdown, align 4
  %call = tail call i32 @__pci_register_driver(ptr noundef %pci_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_pci_probe(ptr noundef %pdev, ptr noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 520) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #15
  br label %err_pci_enable_device

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #15
  br label %err_pci_request_regions

if.end14:                                         ; preds = %if.end6
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %dma_set_mask_and_coherent.exit.thread, label %if.then18

dma_set_mask_and_coherent.exit.thread:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #11
  br label %if.end28

if.then18:                                        ; preds = %if.end14
  %call20 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then18.if.end28_crit_edge, label %do.end25

if.then18.if.end28_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

do.end25:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #15
  br label %err_pci_set_dma_mask

if.end28:                                         ; preds = %if.then18.if.end28_crit_edge, %dma_set_mask_and_coherent.exit.thread
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %1 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.end28.do.end38_crit_edge, label %cond.false

if.end28.do.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

cond.false:                                       ; preds = %if.end28
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resource, align 8
  %sub = sub i32 %2, %4
  %add = add i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %add)
  %phi.cmp = icmp ult i32 %add, 1048576
  br i1 %phi.cmp, label %cond.false.do.end38_crit_edge, label %if.end40

cond.false.do.end38_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

do.end38:                                         ; preds = %cond.false.do.end38_crit_edge, %if.end28.do.end38_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #15
  br label %err_pci_set_dma_mask

if.end40:                                         ; preds = %cond.false
  %call60 = tail call ptr @ioremap(i32 noundef %4, i32 noundef %add) #11
  %hw_addr = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %hw_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call60, ptr %hw_addr, align 4
  %tobool62.not = icmp eq ptr %call60, null
  br i1 %tobool62.not, label %do.end66, label %if.end68

do.end66:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #15
  br label %err_pci_set_dma_mask

if.end68:                                         ; preds = %if.end40
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 7, i32 2
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @mlxsw_pci_cmd_init.__key) #11
  %wait.i = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 7, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @mlxsw_pci_cmd_init.__key.22) #11
  %in_mbox.i = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 2
  %10 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %size.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %mapaddr.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 4096, ptr noundef %mapaddr.i.i, i32 noundef 3264, i32 noundef 0) #11
  %11 = ptrtoint ptr %in_mbox.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i.i, ptr %in_mbox.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %mlxsw_pci_mbox_alloc.exit.i, label %if.end.i

mlxsw_pci_mbox_alloc.exit.i:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.24) #15
  br label %mlxsw_pci_cmd_init.exit

if.end.i:                                         ; preds = %if.end68
  %cmd.i = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  %size.i25.i = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 2
  %14 = ptrtoint ptr %size.i25.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %size.i25.i, align 8
  %dev.i26.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %mapaddr.i27.i = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1
  %call.i.i28.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i26.i, i32 noundef 4096, ptr noundef %mapaddr.i27.i, i32 noundef 3264, i32 noundef 0) #11
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i28.i, ptr %cmd.i, align 8
  %tobool.not.i29.i = icmp eq ptr %call.i.i28.i, null
  br i1 %tobool.not.i29.i, label %err_out_mbox_alloc.i, label %if.end73

err_out_mbox_alloc.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i26.i, ptr noundef nonnull @.str.24) #15
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  %dev.i33.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %in_mbox.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %in_mbox.i, align 4
  %20 = ptrtoint ptr %mapaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mapaddr.i.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i33.i, i32 noundef 4096, ptr noundef %19, i32 noundef %21, i32 noundef 0) #11
  br label %mlxsw_pci_cmd_init.exit

mlxsw_pci_cmd_init.exit:                          ; preds = %err_out_mbox_alloc.i, %mlxsw_pci_mbox_alloc.exit.i
  tail call void @mutex_destroy(ptr noundef %lock.i) #11
  br label %err_pci_cmd_init

if.end73:                                         ; preds = %if.end.i
  %bus_info = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %bus_info to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %bus_info, align 8
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i141 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i141, label %if.end.i.i, label %if.end73.pci_name.exit_crit_edge

if.end73.pci_name.exit_crit_edge:                 ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end73.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i ], [ %26, %if.end73.pci_name.exit_crit_edge ]
  %device_name = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i.i, ptr %device_name, align 4
  %dev79 = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 8, i32 2
  %30 = ptrtoint ptr %dev79 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev, ptr %dev79, align 8
  %read_frc_capable = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 8, i32 6
  %31 = ptrtoint ptr %read_frc_capable to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %read_frc_capable, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %read_frc_capable, align 4
  %id81 = getelementptr inbounds %struct.mlxsw_pci, ptr %call7.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %id81 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %id, ptr %id81, align 4
  %call83 = tail call i32 @mlxsw_core_bus_device_register(ptr noundef %bus_info, ptr noundef nonnull @mlxsw_pci_bus, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %pci_name.exit.cleanup_crit_edge, label %do.end88

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end88:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #15
  tail call fastcc void @mlxsw_pci_cmd_fini(ptr noundef nonnull %call7.i.i)
  br label %err_pci_cmd_init

err_pci_cmd_init:                                 ; preds = %do.end88, %mlxsw_pci_cmd_init.exit
  %err.0 = phi i32 [ -12, %mlxsw_pci_cmd_init.exit ], [ %call83, %do.end88 ]
  %33 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_addr, align 4
  tail call void @iounmap(ptr noundef %34) #11
  br label %err_pci_set_dma_mask

err_pci_set_dma_mask:                             ; preds = %err_pci_cmd_init, %do.end66, %do.end38, %do.end25
  %err.1 = phi i32 [ %call20, %do.end25 ], [ -22, %do.end38 ], [ %err.0, %err_pci_cmd_init ], [ -5, %do.end66 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  br label %err_pci_request_regions

err_pci_request_regions:                          ; preds = %err_pci_set_dma_mask, %do.end12
  %err.2 = phi i32 [ %call7, %do.end12 ], [ %err.1, %err_pci_set_dma_mask ]
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %err_pci_enable_device

err_pci_enable_device:                            ; preds = %err_pci_request_regions, %do.end
  %err.3 = phi i32 [ %call2, %do.end ], [ %err.2, %err_pci_request_regions ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_pci_enable_device, %pci_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_pci_enable_device ], [ -12, %entry.cleanup_crit_edge ], [ 0, %pci_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_pci_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  tail call void @mlxsw_core_bus_device_unregister(ptr noundef %3, i1 noundef zeroext false) #11
  %cmd.i = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd.i, align 4
  %mapaddr.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %mapaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mapaddr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef 4096, ptr noundef %7, i32 noundef %9, i32 noundef 0) #11
  %in_mbox.i = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %dev.i7.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %in_mbox.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %in_mbox.i, align 4
  %mapaddr.i8.i = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 7, i32 1, i32 1
  %14 = ptrtoint ptr %mapaddr.i8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mapaddr.i8.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i7.i, i32 noundef 4096, ptr noundef %13, i32 noundef %15, i32 noundef 0) #11
  %lock.i = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 7, i32 2
  tail call void @mutex_destroy(ptr noundef %lock.i) #11
  %hw_addr = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr, align 4
  tail call void @iounmap(ptr noundef %17) #11
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  tail call void @pci_release_regions(ptr noundef %19) #11
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  tail call void @pci_disable_device(ptr noundef %21) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_pci_driver_unregister(ptr noundef %pci_driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef %pci_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_pci_module_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_pci_module_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_bus_device_register(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_pci_cmd_fini(ptr noundef %mlxsw_pci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 7
  %0 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_pci, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %mapaddr.i = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapaddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef %3, i32 noundef %5, i32 noundef 0) #11
  %in_mbox = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mlxsw_pci, align 8
  %dev.i7 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %in_mbox to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in_mbox, align 4
  %mapaddr.i8 = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 7, i32 1, i32 1
  %10 = ptrtoint ptr %mapaddr.i8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapaddr.i8, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i7, i32 noundef 4096, ptr noundef %9, i32 noundef %11, i32 noundef 0) #11
  %lock = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 7, i32 2
  tail call void @mutex_destroy(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_pci_init(ptr noundef %bus_priv, ptr noundef %mlxsw_core, ptr noundef %profile, ptr noundef %res) #0 align 64 {
entry:
  %mrsr_pl.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_priv, align 8
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 5
  %2 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mlxsw_core, ptr %core, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4096) #14
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bus_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_priv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mrsr_pl.i) #11
  tail call void @msleep(i32 noundef 200) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %hw_addr.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 1
  %add.neg.i.i = sub i32 -90000, %6
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.end
  %7 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 661572
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !554
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !555
  %and.i.i = and i32 %9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 94
  br i1 %cmp.i.i, label %if.end.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 1440, i32 noundef 0) #11
  %call.i.i.i = tail call i32 @__cond_resched() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %10
  %cmp4.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %do.end.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

do.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.44, i32 noundef %and.i.i) #15
  br label %mlxsw_pci_sw_reset.exit.thread

if.end.i:                                         ; preds = %do.body.i.i
  %11 = ptrtoint ptr %mrsr_pl.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %mrsr_pl.i, align 8
  store i32 1, ptr %mrsr_pl.i, align 8
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %call3.i = call i32 @mlxsw_reg_write(ptr noundef %13, ptr noundef nonnull @mlxsw_reg_mrsr, ptr noundef nonnull %mrsr_pl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.mlxsw_pci_sw_reset.exit.thread_crit_edge

if.end.i.mlxsw_pci_sw_reset.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_sw_reset.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  call void @msleep(i32 noundef 200) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i2.i = sub i32 -90000, %14
  br label %do.body.i6.i

do.body.i6.i:                                     ; preds = %if.end.i10.i.do.body.i6.i_crit_edge, %if.end6.i
  %15 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %16, i32 661572
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #11, !srcloc !554
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !555
  %and.i4.i = and i32 %17, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %and.i4.i)
  %cmp.i5.i = icmp eq i32 %and.i4.i, 94
  br i1 %cmp.i5.i, label %if.end5, label %if.end.i10.i

if.end.i10.i:                                     ; preds = %do.body.i6.i
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 1440, i32 noundef 0) #11
  %call.i.i7.i = call i32 @__cond_resched() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i8.i = add i32 %add.neg.i2.i, %18
  %cmp4.i9.i = icmp slt i32 %sub.i8.i, 0
  br i1 %cmp4.i9.i, label %if.end.i10.i.do.body.i6.i_crit_edge, label %do.end12.i

if.end.i10.i.do.body.i6.i_crit_edge:              ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i6.i

do.end12.i:                                       ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.47, i32 noundef %and.i4.i) #15
  br label %mlxsw_pci_sw_reset.exit.thread

mlxsw_pci_sw_reset.exit.thread:                   ; preds = %do.end12.i, %if.end.i.mlxsw_pci_sw_reset.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call3.i, %if.end.i.mlxsw_pci_sw_reset.exit.thread_crit_edge ], [ -16, %do.end12.i ], [ -16, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mrsr_pl.i) #11
  br label %mbox_put

if.end5:                                          ; preds = %do.body.i6.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mrsr_pl.i) #11
  %19 = ptrtoint ptr %bus_priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_priv, align 8
  %call.i.i = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %20, i32 noundef 1, i32 noundef 1, i32 noundef 4, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %bus_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus_priv, align 8
  %dev.i179 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i179, ptr noundef nonnull @.str.27) #15
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #15
  br label %mbox_put

if.end8:                                          ; preds = %if.end5
  %call.i.i182 = call i32 @mlxsw_cmd_exec(ptr noundef %mlxsw_core, i16 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef %call7.i.i.i, i32 noundef 4096) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i182)
  %tobool10.not = icmp eq i32 %call.i.i182, 0
  br i1 %tobool10.not, label %mlxsw_cmd_mbox_query_fw_fw_rev_major_get.exit, label %if.end8.err_query_fw_crit_edge

if.end8.err_query_fw_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_query_fw

mlxsw_cmd_mbox_query_fw_fw_rev_major_get.exit:    ; preds = %if.end8
  %23 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call7.i.i.i, align 8
  %conv = trunc i32 %24 to i16
  %bus_info = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 8
  %fw_rev = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 8, i32 3
  %25 = ptrtoint ptr %fw_rev to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %fw_rev, align 4
  %arrayidx.i.i199 = getelementptr i32, ptr %call7.i.i.i, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i199 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i199, align 4
  %conv15 = trunc i32 %27 to i16
  %minor = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 8, i32 3, i32 1
  %28 = ptrtoint ptr %minor to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv15, ptr %minor, align 2
  %shr.i.i226 = lshr i32 %27, 16
  %conv19 = trunc i32 %shr.i.i226 to i16
  %subminor = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 8, i32 3, i32 2
  %29 = ptrtoint ptr %subminor to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv19, ptr %subminor, align 4
  %arrayidx.i.i249 = getelementptr i32, ptr %call7.i.i.i, i32 2
  %30 = ptrtoint ptr %arrayidx.i.i249 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i249, align 8
  %and4.i.i255 = and i32 %31, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4.i.i255)
  %cmp23.not = icmp eq i32 %and4.i.i255, 1
  br i1 %cmp23.not, label %mlxsw_cmd_mbox_query_fw_doorbell_page_bar_get.exit, label %do.end28

do.end28:                                         ; preds = %mlxsw_cmd_mbox_query_fw_fw_rev_major_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.30) #15
  br label %err_query_fw

mlxsw_cmd_mbox_query_fw_doorbell_page_bar_get.exit: ; preds = %mlxsw_cmd_mbox_query_fw_fw_rev_major_get.exit
  %arrayidx.i.i274 = getelementptr i32, ptr %call7.i.i.i, i32 18
  %32 = ptrtoint ptr %arrayidx.i.i274 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i274, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %33)
  %cmp32.not = icmp ult i32 %33, 1073741824
  br i1 %cmp32.not, label %mlxsw_cmd_mbox_query_fw_doorbell_page_offset_get.exit, label %do.end37

do.end37:                                         ; preds = %mlxsw_cmd_mbox_query_fw_doorbell_page_bar_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.33) #15
  br label %err_query_fw

mlxsw_cmd_mbox_query_fw_doorbell_page_offset_get.exit: ; preds = %mlxsw_cmd_mbox_query_fw_doorbell_page_bar_get.exit
  %arrayidx.i.i296 = getelementptr i64, ptr %call7.i.i.i, i32 8
  %34 = ptrtoint ptr %arrayidx.i.i296 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.i.i296, align 8
  %conv41 = trunc i64 %35 to i32
  %doorbell_offset = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 4
  %36 = ptrtoint ptr %doorbell_offset to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv41, ptr %doorbell_offset, align 8
  %arrayidx.i.i318 = getelementptr i32, ptr %call7.i.i.i, i32 22
  %37 = ptrtoint ptr %arrayidx.i.i318 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i318, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %38)
  %cmp43.not = icmp ult i32 %38, 1073741824
  br i1 %cmp43.not, label %mlxsw_cmd_mbox_query_fw_free_running_clock_offset_get.exit, label %do.end48

do.end48:                                         ; preds = %mlxsw_cmd_mbox_query_fw_doorbell_page_offset_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.36) #15
  br label %err_query_fw

mlxsw_cmd_mbox_query_fw_free_running_clock_offset_get.exit: ; preds = %mlxsw_cmd_mbox_query_fw_doorbell_page_offset_get.exit
  %arrayidx.i.i343 = getelementptr i64, ptr %call7.i.i.i, i32 10
  %39 = ptrtoint ptr %arrayidx.i.i343 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx.i.i343, align 8
  %free_running_clock_offset = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 2
  %41 = ptrtoint ptr %free_running_clock_offset to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %free_running_clock_offset, align 8
  %42 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call7.i.i.i, align 8
  %shr.i.i371 = lshr i32 %43, 16
  %44 = mul nuw nsw i32 %shr.i.i371, 12
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef 3520) #16
  %fw_area.i = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 6
  %45 = ptrtoint ptr %fw_area.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call8.i.i.i, ptr %fw_area.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %mlxsw_cmd_mbox_query_fw_free_running_clock_offset_get.exit.err_query_fw_crit_edge, label %if.end.i379

mlxsw_cmd_mbox_query_fw_free_running_clock_offset_get.exit.err_query_fw_crit_edge: ; preds = %mlxsw_cmd_mbox_query_fw_free_running_clock_offset_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_query_fw

if.end.i379:                                      ; preds = %mlxsw_cmd_mbox_query_fw_free_running_clock_offset_get.exit
  %count.i = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shr.i.i371, ptr %count.i, align 4
  %47 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %43)
  %cmp145.not.i = icmp ult i32 %43, 65536
  br i1 %cmp145.not.i, label %if.end.i379.if.end57_crit_edge, label %for.body.i.preheader

if.end.i379.if.end57_crit_edge:                   ; preds = %if.end.i379
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

for.body.i.preheader:                             ; preds = %if.end.i379
  %48 = ptrtoint ptr %fw_area.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fw_area.i, align 8
  %size.i467 = getelementptr %struct.mlxsw_pci_mem_item, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %size.i467 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4096, ptr %size.i467, align 4
  %51 = ptrtoint ptr %bus_priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus_priv, align 8
  %dev.i381468 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %mapaddr.i469 = getelementptr %struct.mlxsw_pci_mem_item, ptr %49, i32 0, i32 1
  %call.i.i382470 = call ptr @dma_alloc_attrs(ptr noundef %dev.i381468, i32 noundef 4096, ptr noundef %mapaddr.i469, i32 noundef 3264, i32 noundef 0) #11
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i.i382470, ptr %49, align 4
  %tobool12.not.i471 = icmp eq ptr %call.i.i382470, null
  br i1 %tobool12.not.i471, label %for.body.i.preheader.mlxsw_pci_fw_area_init.exit.thread446_crit_edge, label %for.body.i.preheader.if.end14.i_crit_edge

for.body.i.preheader.if.end14.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %if.end14.i

for.body.i.preheader.mlxsw_pci_fw_area_init.exit.thread446_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_fw_area_init.exit.thread446

if.end14.i:                                       ; preds = %for.body.i.backedge.if.end14.i_crit_edge, %for.body.i.preheader.if.end14.i_crit_edge
  %mapaddr.i474 = phi ptr [ %mapaddr.i, %for.body.i.backedge.if.end14.i_crit_edge ], [ %mapaddr.i469, %for.body.i.preheader.if.end14.i_crit_edge ]
  %nent.0146.i473 = phi i32 [ %nent.0146.i.be, %for.body.i.backedge.if.end14.i_crit_edge ], [ 0, %for.body.i.preheader.if.end14.i_crit_edge ]
  %i.0147.i472 = phi i32 [ %i.0147.i.be, %for.body.i.backedge.if.end14.i_crit_edge ], [ 0, %for.body.i.preheader.if.end14.i_crit_edge ]
  %54 = ptrtoint ptr %mapaddr.i474 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mapaddr.i474, align 4
  %conv.i.i.i.i384 = and i32 %nent.0146.i473, 65535
  %56 = and i32 %55, -4096
  %and8.i.i.i = zext i32 %56 to i64
  %arrayidx.i.i.i = getelementptr i64, ptr %call7.i.i.i, i32 %conv.i.i.i.i384
  %57 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx.i.i.i, align 8
  %and9.i.i.i = and i64 %58, 4095
  %or.i.i.i = or i64 %and9.i.i.i, %and8.i.i.i
  store i64 %or.i.i.i, ptr %arrayidx.i.i.i, align 8
  %mul.i.i.i112.i = shl nuw nsw i32 %conv.i.i.i.i384, 1
  %add42.i.i.i114.i = or i32 %mul.i.i.i112.i, 1
  %arrayidx.i.i119.i = getelementptr i32, ptr %call7.i.i.i, i32 %add42.i.i.i114.i
  %59 = ptrtoint ptr %arrayidx.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i119.i, align 4
  %and7.i.i.i = and i32 %60, -32
  store i32 %and7.i.i.i, ptr %arrayidx.i.i119.i, align 4
  %inc.i = add i32 %nent.0146.i473, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc.i)
  %cmp19.i = icmp eq i32 %inc.i, 32
  br i1 %cmp19.i, label %if.then21.i, label %for.inc.i

if.then21.i:                                      ; preds = %if.end14.i
  %61 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %core, align 4
  %call.i.i.i385 = call i32 @mlxsw_cmd_exec(ptr noundef %62, i16 noundef zeroext 4095, i8 noundef zeroext 0, i32 noundef 32, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %call7.i.i.i, i32 noundef 4096, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i385)
  %tobool23.not.i = icmp eq i32 %call.i.i.i385, 0
  br i1 %tobool23.not.i, label %for.inc.i.thread, label %if.then21.i.err_alloc.i_crit_edge

if.then21.i.err_alloc.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_alloc.i

for.inc.i:                                        ; preds = %if.end14.i
  %inc27.i = add nuw nsw i32 %i.0147.i472, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc27.i, i32 %shr.i.i371)
  %exitcond.not.i = icmp eq i32 %inc27.i, %shr.i.i371
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc.i.thread.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %i.0147.i.be = phi i32 [ %inc27.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %inc27.i436, %for.inc.i.thread.for.body.i.backedge_crit_edge ]
  %nent.0146.i.be = phi i32 [ %inc.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ 0, %for.inc.i.thread.for.body.i.backedge_crit_edge ]
  %63 = ptrtoint ptr %fw_area.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fw_area.i, align 8
  %arrayidx.i = getelementptr %struct.mlxsw_pci_mem_item, ptr %64, i32 %i.0147.i.be
  %size.i = getelementptr %struct.mlxsw_pci_mem_item, ptr %64, i32 %i.0147.i.be, i32 2
  %65 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4096, ptr %size.i, align 4
  %66 = ptrtoint ptr %bus_priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus_priv, align 8
  %dev.i381 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %mapaddr.i = getelementptr %struct.mlxsw_pci_mem_item, ptr %64, i32 %i.0147.i.be, i32 1
  %call.i.i382 = call ptr @dma_alloc_attrs(ptr noundef %dev.i381, i32 noundef 4096, ptr noundef %mapaddr.i, i32 noundef 3264, i32 noundef 0) #11
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i.i382, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %call.i.i382, null
  br i1 %tobool12.not.i, label %for.body.i.backedge.for.body39.i.preheader_crit_edge, label %for.body.i.backedge.if.end14.i_crit_edge

for.body.i.backedge.if.end14.i_crit_edge:         ; preds = %for.body.i.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

for.body.i.backedge.for.body39.i.preheader_crit_edge: ; preds = %for.body.i.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39.i.preheader

for.inc.i.thread:                                 ; preds = %if.then21.i
  %69 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 4096)
  %inc27.i436 = add nuw nsw i32 %i.0147.i472, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc27.i436, i32 %shr.i.i371)
  %exitcond.not.i437 = icmp eq i32 %inc27.i436, %shr.i.i371
  br i1 %exitcond.not.i437, label %for.inc.i.thread.if.end57_crit_edge, label %for.inc.i.thread.for.body.i.backedge_crit_edge

for.inc.i.thread.for.body.i.backedge_crit_edge:   ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.backedge

for.inc.i.thread.if.end57_crit_edge:              ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool28.not.i = icmp eq i32 %inc.i, 0
  br i1 %tobool28.not.i, label %for.end.i.if.end57_crit_edge, label %if.then29.i

for.end.i.if.end57_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then29.i:                                      ; preds = %for.end.i
  %70 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %core, align 4
  %call.i.i121.i = call i32 @mlxsw_cmd_exec(ptr noundef %71, i16 noundef zeroext 4095, i8 noundef zeroext 0, i32 noundef %inc.i, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %call7.i.i.i, i32 noundef 4096, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121.i)
  %tobool32.not.i = icmp eq i32 %call.i.i121.i, 0
  br i1 %tobool32.not.i, label %if.then29.i.if.end57_crit_edge, label %if.then29.i.err_alloc.i_crit_edge

if.then29.i.err_alloc.i_crit_edge:                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_alloc.i

if.then29.i.if.end57_crit_edge:                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

err_alloc.i:                                      ; preds = %if.then29.i.err_alloc.i_crit_edge, %if.then21.i.err_alloc.i_crit_edge
  %i.0138.i = phi i32 [ %shr.i.i371, %if.then29.i.err_alloc.i_crit_edge ], [ %i.0147.i472, %if.then21.i.err_alloc.i_crit_edge ]
  %err.0.i = phi i32 [ %call.i.i121.i, %if.then29.i.err_alloc.i_crit_edge ], [ %call.i.i.i385, %if.then21.i.err_alloc.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0138.i)
  %cmp37151.not.i = icmp eq i32 %i.0138.i, 0
  br i1 %cmp37151.not.i, label %err_alloc.i.mlxsw_pci_fw_area_init.exit.thread446_crit_edge, label %err_alloc.i.for.body39.i.preheader_crit_edge

err_alloc.i.for.body39.i.preheader_crit_edge:     ; preds = %err_alloc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39.i.preheader

err_alloc.i.mlxsw_pci_fw_area_init.exit.thread446_crit_edge: ; preds = %err_alloc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_fw_area_init.exit.thread446

for.body39.i.preheader:                           ; preds = %err_alloc.i.for.body39.i.preheader_crit_edge, %for.body.i.backedge.for.body39.i.preheader_crit_edge
  %err.0.i500 = phi i32 [ %err.0.i, %err_alloc.i.for.body39.i.preheader_crit_edge ], [ -12, %for.body.i.backedge.for.body39.i.preheader_crit_edge ]
  %i.0138.i499 = phi i32 [ %i.0138.i, %err_alloc.i.for.body39.i.preheader_crit_edge ], [ %i.0147.i.be, %for.body.i.backedge.for.body39.i.preheader_crit_edge ]
  br label %for.body39.i

mlxsw_pci_fw_area_init.exit.thread446:            ; preds = %err_alloc.i.mlxsw_pci_fw_area_init.exit.thread446_crit_edge, %for.body.i.preheader.mlxsw_pci_fw_area_init.exit.thread446_crit_edge
  %err.0.i494 = phi i32 [ %err.0.i, %err_alloc.i.mlxsw_pci_fw_area_init.exit.thread446_crit_edge ], [ -12, %for.body.i.preheader.mlxsw_pci_fw_area_init.exit.thread446_crit_edge ]
  %72 = ptrtoint ptr %fw_area.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fw_area.i, align 8
  call void @kfree(ptr noundef %73) #11
  br label %err_query_fw

for.body39.i:                                     ; preds = %for.body39.i.for.body39.i_crit_edge, %for.body39.i.preheader
  %i.1152.in.i = phi i32 [ %i.1152.i, %for.body39.i.for.body39.i_crit_edge ], [ %i.0138.i499, %for.body39.i.preheader ]
  %i.1152.i = add nsw i32 %i.1152.in.i, -1
  %74 = ptrtoint ptr %fw_area.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fw_area.i, align 8
  %arrayidx42.i = getelementptr %struct.mlxsw_pci_mem_item, ptr %75, i32 %i.1152.i
  %76 = ptrtoint ptr %bus_priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus_priv, align 8
  %dev44.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %size45.i = getelementptr %struct.mlxsw_pci_mem_item, ptr %75, i32 %i.1152.i, i32 2
  %78 = ptrtoint ptr %size45.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size45.i, align 4
  %80 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx42.i, align 4
  %mapaddr47.i = getelementptr %struct.mlxsw_pci_mem_item, ptr %75, i32 %i.1152.i, i32 1
  %82 = ptrtoint ptr %mapaddr47.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mapaddr47.i, align 4
  call void @dma_free_attrs(ptr noundef %dev44.i, i32 noundef %79, ptr noundef %81, i32 noundef %83, i32 noundef 0) #11
  %cmp37.not.i = icmp eq i32 %i.1152.i, 0
  br i1 %cmp37.not.i, label %mlxsw_pci_fw_area_init.exit, label %for.body39.i.for.body39.i_crit_edge

for.body39.i.for.body39.i_crit_edge:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39.i

mlxsw_pci_fw_area_init.exit:                      ; preds = %for.body39.i
  %84 = ptrtoint ptr %fw_area.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fw_area.i, align 8
  call void @kfree(ptr noundef %85) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i500)
  %tobool55.not = icmp eq i32 %err.0.i500, 0
  br i1 %tobool55.not, label %mlxsw_pci_fw_area_init.exit.if.end57_crit_edge, label %mlxsw_pci_fw_area_init.exit.err_query_fw_crit_edge

mlxsw_pci_fw_area_init.exit.err_query_fw_crit_edge: ; preds = %mlxsw_pci_fw_area_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_query_fw

mlxsw_pci_fw_area_init.exit.if.end57_crit_edge:   ; preds = %mlxsw_pci_fw_area_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.end57:                                         ; preds = %mlxsw_pci_fw_area_init.exit.if.end57_crit_edge, %if.then29.i.if.end57_crit_edge, %for.end.i.if.end57_crit_edge, %for.inc.i.thread.if.end57_crit_edge, %if.end.i379.if.end57_crit_edge
  %86 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 4096)
  %87 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %core, align 4
  %call.i.i.i388 = call i32 @mlxsw_cmd_exec(ptr noundef %88, i16 noundef zeroext 6, i8 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef %call7.i.i.i, i32 noundef 4096) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i388)
  %tobool.not.i389 = icmp eq i32 %call.i.i.i388, 0
  br i1 %tobool.not.i389, label %if.end.i397, label %if.end57.err_boardinfo_crit_edge

if.end57.err_boardinfo_crit_edge:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_boardinfo

if.end.i397:                                      ; preds = %if.end57
  %vsd.i = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 8, i32 4
  %arrayidx.i.i.i393 = getelementptr i8, ptr %call7.i.i.i, i32 32
  %89 = call ptr @memcpy(ptr %vsd.i, ptr %arrayidx.i.i.i393, i32 208)
  %psid.i = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 8, i32 5
  %arrayidx.i.i17.i = getelementptr i8, ptr %call7.i.i.i, i32 240
  %90 = call ptr @memcpy(ptr %psid.i, ptr %arrayidx.i.i17.i, i32 16)
  %91 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %call7.i.i.i, align 8
  %shr.i.i.i.i410 = lshr i32 %92, 4
  %and4.i.i.i.i = and i32 %shr.i.i.i.i410, 7
  %and4.i.i39.i.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i39.i.i)
  %tobool.not.i.i414 = icmp eq i32 %and4.i.i39.i.i, 0
  br i1 %tobool.not.i.i414, label %if.end.i397.if.end61_crit_edge, label %if.end.i.i416

if.end.i397.if.end61_crit_edge:                   ; preds = %if.end.i397
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end.i.i416:                                    ; preds = %if.end.i397
  %xm_exists.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 8, i32 6
  %93 = ptrtoint ptr %xm_exists.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load.i.i = load i8, ptr %xm_exists.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 32
  store i8 %bf.set.i.i, ptr %xm_exists.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and4.i.i.i.i)
  %cmp.i.i415 = icmp ugt i32 %and4.i.i.i.i, 4
  br i1 %cmp.i.i415, label %do.end.i.i, label %if.end3.i.i

do.end.i.i:                                       ; preds = %if.end.i.i416
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %bus_priv to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus_priv, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.80) #15
  br label %err_boardinfo

if.end3.i.i:                                      ; preds = %if.end.i.i416
  %conv.i.i417 = trunc i32 %and4.i.i.i.i to i8
  %xm_local_ports_count.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 8, i32 7
  %96 = ptrtoint ptr %xm_local_ports_count.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv.i.i417, ptr %xm_local_ports_count.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i)
  %cmp450.i.i.not = icmp eq i32 %and4.i.i.i.i, 0
  br i1 %cmp450.i.i.not, label %if.end3.i.i.if.end61_crit_edge, label %mlxsw_cmd_mbox_boardinfo_xm_local_port_entry_get.exit.i.peel.i

if.end3.i.i.if.end61_crit_edge:                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

mlxsw_cmd_mbox_boardinfo_xm_local_port_entry_get.exit.i.peel.i: ; preds = %if.end3.i.i
  %arrayidx.i.i46.i.peel.i = getelementptr i8, ptr %call7.i.i.i, i32 7
  %97 = ptrtoint ptr %arrayidx.i.i46.i.peel.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i.i46.i.peel.i, align 1
  %arrayidx.i.peel.i = getelementptr %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 8, i32 8, i32 0
  %99 = ptrtoint ptr %arrayidx.i.peel.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx.i.peel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4.i.i.i.i)
  %exitcond.not.i.peel.i = icmp eq i32 %and4.i.i.i.i, 1
  br i1 %exitcond.not.i.peel.i, label %mlxsw_cmd_mbox_boardinfo_xm_local_port_entry_get.exit.i.peel.i.if.end61_crit_edge, label %mlxsw_cmd_mbox_boardinfo_xm_local_port_entry_get.exit.i.peel.i.land.rhs.i.i.i.i.i_crit_edge

mlxsw_cmd_mbox_boardinfo_xm_local_port_entry_get.exit.i.peel.i.land.rhs.i.i.i.i.i_crit_edge: ; preds = %mlxsw_cmd_mbox_boardinfo_xm_local_port_entry_get.exit.i.peel.i
  br label %land.rhs.i.i.i.i.i

mlxsw_cmd_mbox_boardinfo_xm_local_port_entry_get.exit.i.peel.i.if.end61_crit_edge: ; preds = %mlxsw_cmd_mbox_boardinfo_xm_local_port_entry_get.exit.i.peel.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.rhs.i.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i.i.land.rhs.i.i.i.i.i_crit_edge, %mlxsw_cmd_mbox_boardinfo_xm_local_port_entry_get.exit.i.peel.i.land.rhs.i.i.i.i.i_crit_edge
  %i.051.i.i = phi i32 [ %inc.i.i, %land.rhs.i.i.i.i.i.land.rhs.i.i.i.i.i_crit_edge ], [ 1, %mlxsw_cmd_mbox_boardinfo_xm_local_port_entry_get.exit.i.peel.i.land.rhs.i.i.i.i.i_crit_edge ]
  %.neg = mul i32 %i.051.i.i, 524280
  %conv42.i.i.i.i.i = add i32 %.neg, 24
  %mul.i.i.i.i.i = lshr exact i32 %conv42.i.i.i.i.i, 3
  %conv60.i.i.i.i.i = add nuw nsw i32 %mul.i.i.i.i.i, 4
  %idxprom.i.i.i.i = and i32 %conv60.i.i.i.i.i, 65535
  %arrayidx.i.i46.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %idxprom.i.i.i.i
  %100 = ptrtoint ptr %arrayidx.i.i46.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.i46.i.i, align 1
  %arrayidx.i.i419 = getelementptr %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 8, i32 8, i32 %i.051.i.i
  %102 = ptrtoint ptr %arrayidx.i.i419 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx.i.i419, align 1
  %inc.i.i = add nuw nsw i32 %i.051.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %and4.i.i.i.i
  br i1 %exitcond.not.i.i, label %land.rhs.i.i.i.i.i.if.end61_crit_edge, label %land.rhs.i.i.i.i.i.land.rhs.i.i.i.i.i_crit_edge, !llvm.loop !556

land.rhs.i.i.i.i.i.land.rhs.i.i.i.i.i_crit_edge:  ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i.i.i.i

land.rhs.i.i.i.i.i.if.end61_crit_edge:            ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end61:                                         ; preds = %land.rhs.i.i.i.i.i.if.end61_crit_edge, %mlxsw_cmd_mbox_boardinfo_xm_local_port_entry_get.exit.i.peel.i.if.end61_crit_edge, %if.end3.i.i.if.end61_crit_edge, %if.end.i397.if.end61_crit_edge
  %call62 = call i32 @mlxsw_core_resources_query(ptr noundef %mlxsw_core, ptr noundef nonnull %call7.i.i.i, ptr noundef %res) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.err_boardinfo_crit_edge

if.end61.err_boardinfo_crit_edge:                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_boardinfo

if.end65:                                         ; preds = %if.end61
  %call66 = call zeroext i1 @mlxsw_core_res_valid(ptr noundef %mlxsw_core, i32 noundef 8) #11
  br i1 %call66, label %land.lhs.true, label %if.end65.if.else_crit_edge

if.end65.if.else_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end65
  %call68 = call i64 @mlxsw_core_res_get(ptr noundef %mlxsw_core, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call68)
  %tobool69.not = icmp eq i64 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end94_crit_edge

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end65.if.else_crit_edge
  %call71 = call zeroext i1 @mlxsw_core_res_valid(ptr noundef %mlxsw_core, i32 noundef 7) #11
  br i1 %call71, label %land.lhs.true73, label %if.else.if.else78_crit_edge

if.else.if.else78_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else78

land.lhs.true73:                                  ; preds = %if.else
  %call74 = call i64 @mlxsw_core_res_get(ptr noundef %mlxsw_core, i32 noundef 7) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call74)
  %tobool75.not = icmp eq i64 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.if.else78_crit_edge, label %land.lhs.true73.if.end94_crit_edge

land.lhs.true73.if.end94_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

land.lhs.true73.if.else78_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else78

if.else78:                                        ; preds = %land.lhs.true73.if.else78_crit_edge, %if.else.if.else78_crit_edge
  %call79 = call zeroext i1 @mlxsw_core_res_valid(ptr noundef %mlxsw_core, i32 noundef 6) #11
  br i1 %call79, label %land.lhs.true81, label %if.else78.lor.lhs.false_crit_edge

if.else78.lor.lhs.false_crit_edge:                ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true81:                                  ; preds = %if.else78
  %call82 = call i64 @mlxsw_core_res_get(ptr noundef %mlxsw_core, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call82)
  %tobool83.not = icmp eq i64 %call82, 0
  br i1 %tobool83.not, label %land.lhs.true81.lor.lhs.false_crit_edge, label %land.lhs.true81.if.end94_crit_edge

land.lhs.true81.if.end94_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

land.lhs.true81.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true81.lor.lhs.false_crit_edge, %if.else78.lor.lhs.false_crit_edge
  %call84 = call zeroext i1 @mlxsw_core_res_valid(ptr noundef %mlxsw_core, i32 noundef 6) #11
  br i1 %call84, label %do.end90, label %lor.lhs.false.if.end94_crit_edge

lor.lhs.false.if.end94_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

do.end90:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %dev91 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev91, ptr noundef nonnull @.str.39) #15
  br label %err_boardinfo

if.end94:                                         ; preds = %lor.lhs.false.if.end94_crit_edge, %land.lhs.true81.if.end94_crit_edge, %land.lhs.true73.if.end94_crit_edge, %land.lhs.true.if.end94_crit_edge
  %.sink = phi i32 [ 2, %land.lhs.true.if.end94_crit_edge ], [ 1, %land.lhs.true73.if.end94_crit_edge ], [ 0, %lor.lhs.false.if.end94_crit_edge ], [ 0, %land.lhs.true81.if.end94_crit_edge ]
  %max_cqe_ver77 = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 10
  %103 = ptrtoint ptr %max_cqe_ver77 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %.sink, ptr %max_cqe_ver77, align 8
  %call95 = call fastcc i32 @mlxsw_pci_config_profile(ptr noundef %bus_priv, ptr noundef nonnull %call7.i.i.i, ptr noundef %profile, ptr noundef %res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end94.err_boardinfo_crit_edge

if.end94.err_boardinfo_crit_edge:                 ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_boardinfo

if.end98:                                         ; preds = %if.end94
  %call99 = call fastcc i32 @mlxsw_pci_aqs_init(ptr noundef %bus_priv, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end98.err_boardinfo_crit_edge

if.end98.err_boardinfo_crit_edge:                 ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_boardinfo

if.end102:                                        ; preds = %if.end98
  %call103 = call i32 @pci_irq_vector(ptr noundef %1, i32 noundef 0) #11
  %104 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus_info, align 8
  %call.i = call i32 @request_threaded_irq(i32 noundef %call103, ptr noundef nonnull @mlxsw_pci_eq_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %105, ptr noundef %bus_priv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool106.not = icmp eq i32 %call.i, 0
  br i1 %tobool106.not, label %if.end102.mbox_put_crit_edge, label %do.end110

if.end102.mbox_put_crit_edge:                     ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %mbox_put

do.end110:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev111, ptr noundef nonnull @.str.42) #15
  call fastcc void @mlxsw_pci_aqs_fini(ptr noundef %bus_priv)
  br label %err_boardinfo

err_boardinfo:                                    ; preds = %do.end110, %if.end98.err_boardinfo_crit_edge, %if.end94.err_boardinfo_crit_edge, %do.end90, %if.end61.err_boardinfo_crit_edge, %do.end.i.i, %if.end57.err_boardinfo_crit_edge
  %err.0 = phi i32 [ %call62, %if.end61.err_boardinfo_crit_edge ], [ %call95, %if.end94.err_boardinfo_crit_edge ], [ %call99, %if.end98.err_boardinfo_crit_edge ], [ %call.i, %do.end110 ], [ 0, %do.end90 ], [ %call.i.i.i388, %if.end57.err_boardinfo_crit_edge ], [ -22, %do.end.i.i ]
  %106 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %core, align 4
  %call.i.i.i422 = call i32 @mlxsw_cmd_exec(ptr noundef %107, i16 noundef zeroext 4094, i8 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %fw_area.i423 = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 6
  %count.i424 = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 6, i32 1
  %108 = ptrtoint ptr %count.i424 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %count.i424, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp12.not.i = icmp eq i32 %109, 0
  br i1 %cmp12.not.i, label %err_boardinfo.mlxsw_pci_fw_area_fini.exit_crit_edge, label %err_boardinfo.for.body.i431_crit_edge

err_boardinfo.for.body.i431_crit_edge:            ; preds = %err_boardinfo
  br label %for.body.i431

err_boardinfo.mlxsw_pci_fw_area_fini.exit_crit_edge: ; preds = %err_boardinfo
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_fw_area_fini.exit

for.body.i431:                                    ; preds = %for.body.i431.for.body.i431_crit_edge, %err_boardinfo.for.body.i431_crit_edge
  %i.013.i = phi i32 [ %inc.i429, %for.body.i431.for.body.i431_crit_edge ], [ 0, %err_boardinfo.for.body.i431_crit_edge ]
  %110 = ptrtoint ptr %fw_area.i423 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fw_area.i423, align 8
  %arrayidx.i425 = getelementptr %struct.mlxsw_pci_mem_item, ptr %111, i32 %i.013.i
  %112 = ptrtoint ptr %bus_priv to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bus_priv, align 8
  %dev.i426 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %size.i427 = getelementptr %struct.mlxsw_pci_mem_item, ptr %111, i32 %i.013.i, i32 2
  %114 = ptrtoint ptr %size.i427 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %size.i427, align 4
  %116 = ptrtoint ptr %arrayidx.i425 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i425, align 4
  %mapaddr.i428 = getelementptr %struct.mlxsw_pci_mem_item, ptr %111, i32 %i.013.i, i32 1
  %118 = ptrtoint ptr %mapaddr.i428 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %mapaddr.i428, align 4
  call void @dma_free_attrs(ptr noundef %dev.i426, i32 noundef %115, ptr noundef %117, i32 noundef %119, i32 noundef 0) #11
  %inc.i429 = add nuw i32 %i.013.i, 1
  %120 = ptrtoint ptr %count.i424 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %count.i424, align 4
  %cmp.i430 = icmp ult i32 %inc.i429, %121
  br i1 %cmp.i430, label %for.body.i431.for.body.i431_crit_edge, label %for.body.i431.mlxsw_pci_fw_area_fini.exit_crit_edge

for.body.i431.mlxsw_pci_fw_area_fini.exit_crit_edge: ; preds = %for.body.i431
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_fw_area_fini.exit

for.body.i431.for.body.i431_crit_edge:            ; preds = %for.body.i431
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i431

mlxsw_pci_fw_area_fini.exit:                      ; preds = %for.body.i431.mlxsw_pci_fw_area_fini.exit_crit_edge, %err_boardinfo.mlxsw_pci_fw_area_fini.exit_crit_edge
  %122 = ptrtoint ptr %fw_area.i423 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fw_area.i423, align 8
  call void @kfree(ptr noundef %123) #11
  br label %err_query_fw

err_query_fw:                                     ; preds = %mlxsw_pci_fw_area_fini.exit, %mlxsw_pci_fw_area_init.exit.err_query_fw_crit_edge, %mlxsw_pci_fw_area_init.exit.thread446, %mlxsw_cmd_mbox_query_fw_free_running_clock_offset_get.exit.err_query_fw_crit_edge, %do.end48, %do.end37, %do.end28, %if.end8.err_query_fw_crit_edge
  %err.1 = phi i32 [ %call.i.i182, %if.end8.err_query_fw_crit_edge ], [ -22, %do.end28 ], [ -22, %do.end37 ], [ -22, %do.end48 ], [ %err.0.i500, %mlxsw_pci_fw_area_init.exit.err_query_fw_crit_edge ], [ %err.0, %mlxsw_pci_fw_area_fini.exit ], [ %err.0.i494, %mlxsw_pci_fw_area_init.exit.thread446 ], [ -12, %mlxsw_cmd_mbox_query_fw_free_running_clock_offset_get.exit.err_query_fw_crit_edge ]
  %124 = ptrtoint ptr %bus_priv to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bus_priv, align 8
  call void @pci_free_irq_vectors(ptr noundef %125) #11
  br label %mbox_put

mbox_put:                                         ; preds = %err_query_fw, %if.end102.mbox_put_crit_edge, %do.end, %mlxsw_pci_sw_reset.exit.thread
  %err.2 = phi i32 [ %call.i.i, %do.end ], [ %err.1, %err_query_fw ], [ 0, %if.end102.mbox_put_crit_edge ], [ %retval.0.i.ph, %mlxsw_pci_sw_reset.exit.thread ]
  call void @kfree(ptr noundef %call7.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %mbox_put, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %mbox_put ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_pci_fini(ptr noundef %bus_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_priv, align 8
  %call = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef 0) #11
  %call1 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %bus_priv) #11
  tail call fastcc void @mlxsw_pci_aqs_fini(ptr noundef %bus_priv)
  %core.i = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 5
  %2 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core.i, align 4
  %call.i.i.i = tail call i32 @mlxsw_cmd_exec(ptr noundef %3, i16 noundef zeroext 4094, i8 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %fw_area.i = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 6
  %count.i = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not.i = icmp eq i32 %5, 0
  br i1 %cmp12.not.i, label %entry.mlxsw_pci_fw_area_fini.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mlxsw_pci_fw_area_fini.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_fw_area_fini.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %fw_area.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_area.i, align 8
  %arrayidx.i = getelementptr %struct.mlxsw_pci_mem_item, ptr %7, i32 %i.013.i
  %8 = ptrtoint ptr %bus_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_priv, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %size.i = getelementptr %struct.mlxsw_pci_mem_item, ptr %7, i32 %i.013.i, i32 2
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %mapaddr.i = getelementptr %struct.mlxsw_pci_mem_item, ptr %7, i32 %i.013.i, i32 1
  %14 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mapaddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef 0) #11
  %inc.i = add nuw i32 %i.013.i, 1
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mlxsw_pci_fw_area_fini.exit_crit_edge

for.body.i.mlxsw_pci_fw_area_fini.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_fw_area_fini.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mlxsw_pci_fw_area_fini.exit:                      ; preds = %for.body.i.mlxsw_pci_fw_area_fini.exit_crit_edge, %entry.mlxsw_pci_fw_area_fini.exit_crit_edge
  %18 = ptrtoint ptr %fw_area.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw_area.i, align 8
  tail call void @kfree(ptr noundef %19) #11
  %20 = ptrtoint ptr %bus_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus_priv, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %21) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_pci_skb_transmit_busy(ptr nocapture noundef readonly %bus_priv, ptr nocapture noundef readonly %tx_info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %is_emad.i = getelementptr inbounds %struct.mlxsw_tx_info, ptr %tx_info, i32 0, i32 1
  %0 = ptrtoint ptr %is_emad.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_emad.i, align 2, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.mlxsw_pci_sdq_pick.exit_crit_edge

entry.mlxsw_pci_sdq_pick.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_sdq_pick.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %count.i.i.i = getelementptr %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %count.i.i.i, align 4
  %sub.i = add i8 %3, -1
  %4 = ptrtoint ptr %tx_info to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_info, align 2
  %conv3.i = zext i8 %sub.i to i16
  %rem.i = urem i16 %5, %conv3.i
  %narrow.i = add nuw nsw i16 %rem.i, 1
  %phi.cast.i = zext i16 %narrow.i to i32
  br label %mlxsw_pci_sdq_pick.exit

mlxsw_pci_sdq_pick.exit:                          ; preds = %do.end.i, %entry.mlxsw_pci_sdq_pick.exit_crit_edge
  %sdqn.0.i = phi i32 [ %phi.cast.i, %do.end.i ], [ 0, %entry.mlxsw_pci_sdq_pick.exit_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i.i, align 8
  %producer_counter.i = getelementptr %struct.mlxsw_pci_queue, ptr %7, i32 %sdqn.0.i, i32 3
  %8 = ptrtoint ptr %producer_counter.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %producer_counter.i, align 4
  %count.i = getelementptr %struct.mlxsw_pci_queue, ptr %7, i32 %sdqn.0.i, i32 5
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %count.i, align 4
  %consumer_counter.i = getelementptr %struct.mlxsw_pci_queue, ptr %7, i32 %sdqn.0.i, i32 4
  %12 = ptrtoint ptr %consumer_counter.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %consumer_counter.i, align 2
  %sub5.i = sub i16 %9, %13
  call void @__sanitizer_cov_trace_cmp2(i16 %sub5.i, i16 %11)
  %cmp.i = icmp eq i16 %sub5.i, %11
  br i1 %cmp.i, label %mlxsw_pci_sdq_pick.exit.mlxsw_pci_queue_elem_info_producer_get.exit_crit_edge, label %if.end.i

mlxsw_pci_sdq_pick.exit.mlxsw_pci_queue_elem_info_producer_get.exit_crit_edge: ; preds = %mlxsw_pci_sdq_pick.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_elem_info_producer_get.exit

if.end.i:                                         ; preds = %mlxsw_pci_sdq_pick.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i = zext i16 %11 to i32
  %conv.i = zext i16 %9 to i32
  %sub.i2 = add nuw nsw i32 %conv1.i, 65535
  %and.i = and i32 %sub.i2, %conv.i
  %elem_info.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %7, i32 %sdqn.0.i, i32 2
  %14 = ptrtoint ptr %elem_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %elem_info.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %15, i32 %and.i
  %phi.cmp = icmp eq ptr %arrayidx.i.i, null
  br label %mlxsw_pci_queue_elem_info_producer_get.exit

mlxsw_pci_queue_elem_info_producer_get.exit:      ; preds = %if.end.i, %mlxsw_pci_sdq_pick.exit.mlxsw_pci_queue_elem_info_producer_get.exit_crit_edge
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %mlxsw_pci_sdq_pick.exit.mlxsw_pci_queue_elem_info_producer_get.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_pci_skb_transmit(ptr nocapture noundef readonly %bus_priv, ptr noundef %skb, ptr nocapture noundef readonly %tx_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ugt i8 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %if.then.if.end4_crit_edge, label %cond.true.i

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

cond.true.i:                                      ; preds = %if.then
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %5) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.cleanup57_crit_edge, label %cond.true.i.if.end4_crit_edge

cond.true.i.if.end4_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

cond.true.i.cleanup57_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end4:                                          ; preds = %cond.true.i.if.end4_crit_edge, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %is_emad.i = getelementptr inbounds %struct.mlxsw_tx_info, ptr %tx_info, i32 0, i32 1
  %6 = ptrtoint ptr %is_emad.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_emad.i, align 2, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end4.mlxsw_pci_sdq_pick.exit_crit_edge

if.end4.mlxsw_pci_sdq_pick.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_sdq_pick.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %count.i.i.i = getelementptr %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %count.i.i.i, align 4
  %sub.i = add i8 %9, -1
  %10 = ptrtoint ptr %tx_info to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx_info, align 2
  %conv3.i = zext i8 %sub.i to i16
  %rem.i = urem i16 %11, %conv3.i
  %narrow.i = add nuw nsw i16 %rem.i, 1
  %phi.cast.i = zext i16 %narrow.i to i32
  br label %mlxsw_pci_sdq_pick.exit

mlxsw_pci_sdq_pick.exit:                          ; preds = %do.end.i, %if.end4.mlxsw_pci_sdq_pick.exit_crit_edge
  %sdqn.0.i = phi i32 [ %phi.cast.i, %do.end.i ], [ 0, %if.end4.mlxsw_pci_sdq_pick.exit_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 3, i32 0
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 8
  %arrayidx1.i.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %13, i32 %sdqn.0.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1.i.i.i) #11
  %producer_counter.i = getelementptr %struct.mlxsw_pci_queue, ptr %13, i32 %sdqn.0.i, i32 3
  %14 = ptrtoint ptr %producer_counter.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %producer_counter.i, align 4
  %count.i = getelementptr %struct.mlxsw_pci_queue, ptr %13, i32 %sdqn.0.i, i32 5
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count.i, align 4
  %consumer_counter.i = getelementptr %struct.mlxsw_pci_queue, ptr %13, i32 %sdqn.0.i, i32 4
  %18 = ptrtoint ptr %consumer_counter.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %consumer_counter.i, align 2
  %sub5.i = sub i16 %15, %19
  call void @__sanitizer_cov_trace_cmp2(i16 %sub5.i, i16 %17)
  %cmp.i = icmp eq i16 %sub5.i, %17
  br i1 %cmp.i, label %mlxsw_pci_sdq_pick.exit.unlock_crit_edge, label %mlxsw_pci_queue_elem_info_producer_get.exit

mlxsw_pci_sdq_pick.exit.unlock_crit_edge:         ; preds = %mlxsw_pci_sdq_pick.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

mlxsw_pci_queue_elem_info_producer_get.exit:      ; preds = %mlxsw_pci_sdq_pick.exit
  %conv1.i = zext i16 %17 to i32
  %conv.i = zext i16 %15 to i32
  %sub.i104 = add nuw nsw i32 %conv1.i, 65535
  %and.i = and i32 %sub.i104, %conv.i
  %elem_info.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %13, i32 %sdqn.0.i, i32 2
  %20 = ptrtoint ptr %elem_info.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %elem_info.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %21, i32 %and.i
  %tobool7.not = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool7.not, label %mlxsw_pci_queue_elem_info_producer_get.exit.unlock_crit_edge, label %if.end9

mlxsw_pci_queue_elem_info_producer_get.exit.unlock_crit_edge: ; preds = %mlxsw_pci_queue_elem_info_producer_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end9:                                          ; preds = %mlxsw_pci_queue_elem_info_producer_get.exit
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %22 = ptrtoint ptr %tx_info to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %tx_info, align 2
  %24 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cb.i, align 4
  %u = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %21, i32 %and.i, i32 1
  %25 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %skb, ptr %u, align 4
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %or.i.i = and i32 %29, 947912703
  %or.i.i157 = or i32 %or.i.i, -2063597568
  store i32 %or.i.i157, ptr %27, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i, align 8
  %sub.i158 = sub i32 %33, %35
  %call13 = tail call fastcc i32 @mlxsw_pci_wqe_frag_map(ptr noundef %bus_priv, ptr noundef %27, i32 noundef 0, ptr noundef %31, i32 noundef %sub.i158, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end9.for.cond_crit_edge, label %if.end9.unlock_crit_edge

if.end9.unlock_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end9.for.cond_crit_edge:                       ; preds = %if.end9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end9.for.cond_crit_edge
  %i.0 = phi i32 [ %add, %for.body.for.cond_crit_edge ], [ 0, %if.end9.for.cond_crit_edge ]
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i, align 4
  %nr_frags18 = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %nr_frags18 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nr_frags18, align 2
  %conv19 = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %conv19)
  %cmp20 = icmp ult i32 %i.0, %conv19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %37, i32 0, i32 12, i32 %i.0
  %add = add nuw nsw i32 %i.0, 1
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %41) #11
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %37, i32 0, i32 12, i32 %i.0, i32 2
  %42 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %43
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %37, i32 0, i32 12, i32 %i.0, i32 1
  %44 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bv_len.i, align 4
  %call25 = tail call fastcc i32 @mlxsw_pci_wqe_frag_map(ptr noundef %bus_priv, ptr noundef %27, i32 noundef %add, ptr noundef %add.ptr.i, i32 noundef %45, i32 noundef 1)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.body.for.cond_crit_edge, label %for.body.for.body53_crit_edge

for.body.for.body53_crit_edge:                    ; preds = %for.body
  br label %for.body53

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 3
  %46 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tx_flags, align 1
  %48 = and i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool31.not = icmp eq i8 %48, 0
  br i1 %tobool31.not, label %for.end.if.end39_crit_edge, label %if.then34, !prof !559

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %49 = or i8 %47, 4
  %50 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %tx_flags, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %for.end.if.end39_crit_edge
  %i.1193 = add nuw i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1193)
  %cmp42194 = icmp slt i32 %i.1193, 3
  br i1 %cmp42194, label %if.end39.mlxsw_pci_wqe_byte_count_set.exit_crit_edge, label %if.end39.for.end48_crit_edge

if.end39.for.end48_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

if.end39.mlxsw_pci_wqe_byte_count_set.exit_crit_edge: ; preds = %if.end39
  br label %mlxsw_pci_wqe_byte_count_set.exit

mlxsw_pci_wqe_byte_count_set.exit:                ; preds = %mlxsw_pci_wqe_byte_count_set.exit.mlxsw_pci_wqe_byte_count_set.exit_crit_edge, %if.end39.mlxsw_pci_wqe_byte_count_set.exit_crit_edge
  %i.1195 = phi i32 [ %i.1, %mlxsw_pci_wqe_byte_count_set.exit.mlxsw_pci_wqe_byte_count_set.exit_crit_edge ], [ %i.1193, %if.end39.mlxsw_pci_wqe_byte_count_set.exit_crit_edge ]
  %51 = add i32 %i.1195, 1
  %div.i4.i.i = and i32 %51, 2147483647
  %arrayidx.i.i181 = getelementptr i16, ptr %27, i32 %div.i4.i.i
  %52 = ptrtoint ptr %arrayidx.i.i181 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.i.i181, align 2
  %conv16.i.i = and i16 %53, -16384
  store i16 %conv16.i.i, ptr %arrayidx.i.i181, align 2
  %i.1 = add nuw nsw i32 %i.1195, 1
  %exitcond.not = icmp eq i32 %i.1, 3
  br i1 %exitcond.not, label %mlxsw_pci_wqe_byte_count_set.exit.for.end48_crit_edge, label %mlxsw_pci_wqe_byte_count_set.exit.mlxsw_pci_wqe_byte_count_set.exit_crit_edge

mlxsw_pci_wqe_byte_count_set.exit.mlxsw_pci_wqe_byte_count_set.exit_crit_edge: ; preds = %mlxsw_pci_wqe_byte_count_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_wqe_byte_count_set.exit

mlxsw_pci_wqe_byte_count_set.exit.for.end48_crit_edge: ; preds = %mlxsw_pci_wqe_byte_count_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

for.end48:                                        ; preds = %mlxsw_pci_wqe_byte_count_set.exit.for.end48_crit_edge, %if.end39.for.end48_crit_edge
  %54 = ptrtoint ptr %producer_counter.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %producer_counter.i, align 4
  %inc49 = add i16 %55, 1
  store i16 %inc49, ptr %producer_counter.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !560
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %producer_counter.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %producer_counter.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !561
  tail call void @arm_heavy_mb() #11
  %conv.i.i183 = zext i16 %57 to i32
  %hw_addr.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 1
  %58 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw_addr.i.i, align 4
  %doorbell_offset.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 4
  %60 = ptrtoint ptr %doorbell_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %doorbell_offset.i.i, align 8
  %type.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %13, i32 %sdqn.0.i, i32 8
  %62 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i184 = getelementptr [4 x i16], ptr @mlxsw_pci_doorbell_type_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx.i.i184 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i.i184, align 2
  %conv1.i.i = zext i16 %65 to i32
  %add.i.i = add i32 %61, %conv1.i.i
  %num.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %13, i32 %sdqn.0.i, i32 6
  %66 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num.i.i, align 2
  %conv2.i.i185 = zext i8 %67 to i32
  %mul.i.i = shl nuw nsw i32 %conv2.i.i185, 2
  %add3.i.i = add i32 %add.i.i, %mul.i.i
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i.i183) #11, !srcloc !562
  br label %unlock

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %for.body.for.body53_crit_edge
  %i.2197 = phi i32 [ %dec, %for.body53.for.body53_crit_edge ], [ %i.0, %for.body.for.body53_crit_edge ]
  tail call fastcc void @mlxsw_pci_wqe_frag_unmap(ptr noundef %bus_priv, ptr noundef %27, i32 noundef %i.2197, i32 noundef 1)
  %dec = add nsw i32 %i.2197, -1
  %cmp51 = icmp sgt i32 %i.2197, 0
  br i1 %cmp51, label %for.body53.for.body53_crit_edge, label %for.body53.unlock_crit_edge

for.body53.unlock_crit_edge:                      ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body53

unlock:                                           ; preds = %for.body53.unlock_crit_edge, %for.end48, %if.end9.unlock_crit_edge, %mlxsw_pci_queue_elem_info_producer_get.exit.unlock_crit_edge, %mlxsw_pci_sdq_pick.exit.unlock_crit_edge
  %err.1 = phi i32 [ %call13, %if.end9.unlock_crit_edge ], [ 0, %for.end48 ], [ -11, %mlxsw_pci_queue_elem_info_producer_get.exit.unlock_crit_edge ], [ -11, %mlxsw_pci_sdq_pick.exit.unlock_crit_edge ], [ %call25, %for.body53.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1.i.i.i) #11
  br label %cleanup57

cleanup57:                                        ; preds = %unlock, %cond.true.i.cleanup57_crit_edge
  %retval.0 = phi i32 [ %err.1, %unlock ], [ -12, %cond.true.i.cleanup57_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_pci_cmd_exec(ptr noundef %bus_priv, i16 noundef zeroext %opcode, i8 noundef zeroext %opcode_mod, i32 noundef %in_mod, i1 noundef zeroext %out_mbox_direct, ptr noundef readonly %in_mbox, i32 noundef %in_mbox_size, ptr noundef writeonly %out_mbox, i32 noundef %out_mbox_size, ptr nocapture noundef %p_status) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 7
  %nopoll = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %nopoll to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nopoll, align 4, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %wait_done = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %p_status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %p_status, align 1
  %lock = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 7, i32 2
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %entry.cleanup171_crit_edge

entry.cleanup171_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

if.end:                                           ; preds = %entry
  %tobool6.not = icmp eq ptr %in_mbox, null
  br i1 %tobool6.not, label %if.end.do.body_crit_edge, label %if.then7

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %in_mbox9 = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %in_mbox9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %in_mbox9, align 4
  %5 = call ptr @memcpy(ptr %4, ptr %in_mbox, i32 %in_mbox_size)
  %mapaddr = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 7, i32 1, i32 1
  %6 = ptrtoint ptr %mapaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mapaddr, align 4
  br label %do.body

do.body:                                          ; preds = %if.then7, %if.end.do.body_crit_edge
  %in_mapaddr.0 = phi i32 [ %7, %if.then7 ], [ 0, %if.end.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !563
  tail call void @arm_heavy_mb() #11
  %hw_addr = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 1
  %8 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 462848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !562
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !564
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr, align 4
  %add.ptr18 = getelementptr i8, ptr %11, i32 462852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %in_mapaddr.0) #11, !srcloc !562
  %tobool19.not = icmp eq ptr %out_mbox, null
  br i1 %tobool19.not, label %do.body.do.body25_crit_edge, label %if.then20

do.body.do.body25_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %mapaddr23 = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 7, i32 0, i32 1
  %12 = ptrtoint ptr %mapaddr23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mapaddr23, align 4
  br label %do.body25

do.body25:                                        ; preds = %if.then20, %do.body.do.body25_crit_edge
  %out_mapaddr.0 = phi i32 [ %13, %if.then20 ], [ 0, %do.body.do.body25_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !565
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr, align 4
  %add.ptr31 = getelementptr i8, ptr %15, i32 462860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #11, !srcloc !562
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !566
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr, align 4
  %add.ptr37 = getelementptr i8, ptr %17, i32 462864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %out_mapaddr.0) #11, !srcloc !562
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !567
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr, align 4
  %add.ptr42 = getelementptr i8, ptr %19, i32 462856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %in_mod) #11, !srcloc !562
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !568
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr, align 4
  %add.ptr47 = getelementptr i8, ptr %21, i32 462868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 0) #11, !srcloc !562
  %22 = ptrtoint ptr %wait_done to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %wait_done, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !569
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !570
  tail call void @arm_heavy_mb() #11
  %or = select i1 %tobool.not, i32 8388608, i32 12582912
  %conv = zext i8 %opcode_mod to i32
  %shl = shl nuw nsw i32 %conv, 12
  %or55 = or i32 %or, %shl
  %conv56 = zext i16 %opcode to i32
  %or57 = or i32 %or55, %conv56
  %23 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_addr, align 4
  %add.ptr59 = getelementptr i8, ptr %24, i32 462872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %or57) #11, !srcloc !562
  br i1 %tobool.not, label %if.then61, label %if.else

if.then61:                                        ; preds = %do.body25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -100, %25
  br label %do.body62

do.body62:                                        ; preds = %do.cond74.do.body62_crit_edge, %if.then61
  %26 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_addr, align 4
  %add.ptr64 = getelementptr i8, ptr %27, i32 462872
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #11, !srcloc !554
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !571
  %and66 = and i32 %28, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %cleanup, label %do.cond74

cleanup:                                          ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %wait_done to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %wait_done, align 1
  %shr69 = lshr i32 %28, 24
  %conv70 = trunc i32 %shr69 to i8
  br label %if.end129.sink.split

do.cond74:                                        ; preds = %do.body62
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 1780, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %30
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.cond74.do.body62_crit_edge, label %do.cond74.if.end129_crit_edge

do.cond74.if.end129_crit_edge:                    ; preds = %do.cond74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

do.cond74.do.body62_crit_edge:                    ; preds = %do.cond74
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body62

if.else:                                          ; preds = %do.body25
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1783) #11
  %31 = ptrtoint ptr %wait_done to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %wait_done, align 1, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool83.not.not = icmp eq i8 %32, 0
  br i1 %tobool83.not.not, label %if.then95, label %if.else.if.end126_crit_edge

if.else.if.end126_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.then95:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %33 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %wait = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 7, i32 4
  %call98254 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %34 = ptrtoint ptr %wait_done to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %wait_done, align 1, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool100.not255.not = icmp eq i8 %35, 0
  br i1 %tobool100.not255.not, label %if.then95.cleanup120_crit_edge, label %if.then95.for.end_crit_edge

if.then95.for.end_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then95.cleanup120_crit_edge:                   ; preds = %if.then95
  br label %cleanup120

cleanup120:                                       ; preds = %cleanup120.cleanup120_crit_edge, %if.then95.cleanup120_crit_edge
  %__ret96.1257 = phi i32 [ %__ret96.1, %cleanup120.cleanup120_crit_edge ], [ 100, %if.then95.cleanup120_crit_edge ]
  %call119 = call i32 @schedule_timeout(i32 noundef %__ret96.1257) #11
  %call98 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %36 = ptrtoint ptr %wait_done to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %wait_done, align 1, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool100.not = icmp eq i8 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool105.not = icmp eq i32 %call119, 0
  %spec.store.select178 = select i1 %tobool105.not, i32 1, i32 %call119
  %__ret96.1 = select i1 %tobool100.not, i32 %call119, i32 %spec.store.select178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret96.1)
  %tobool112.not = icmp eq i32 %__ret96.1, 0
  %not.tobool100.not = xor i1 %tobool100.not, true
  %38 = select i1 %not.tobool100.not, i1 true, i1 %tobool112.not
  br i1 %38, label %cleanup120.for.end_crit_edge, label %cleanup120.cleanup120_crit_edge

cleanup120.cleanup120_crit_edge:                  ; preds = %cleanup120
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120

cleanup120.for.end_crit_edge:                     ; preds = %cleanup120
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup120.for.end_crit_edge, %if.then95.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end126

if.end126:                                        ; preds = %for.end, %if.else.if.end126_crit_edge
  %comp = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 7, i32 6
  %39 = ptrtoint ptr %comp to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %comp, align 8
  br label %if.end129.sink.split

if.end129.sink.split:                             ; preds = %if.end126, %cleanup
  %conv70.sink = phi i8 [ %conv70, %cleanup ], [ %40, %if.end126 ]
  %41 = ptrtoint ptr %p_status to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv70.sink, ptr %p_status, align 1
  br label %if.end129

if.end129:                                        ; preds = %if.end129.sink.split, %do.cond74.if.end129_crit_edge
  %42 = ptrtoint ptr %wait_done to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %wait_done, align 1, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool130.not = icmp eq i8 %43, 0
  br i1 %tobool130.not, label %if.end129.if.end168_crit_edge, label %if.end136

if.end129.if.end168_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

if.end136:                                        ; preds = %if.end129
  %44 = ptrtoint ptr %p_status to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %p_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool132.not = icmp eq i8 %45, 0
  %spec.select233 = select i1 %tobool132.not, i32 0, i32 -5
  %tobool137.not.not = xor i1 %tobool132.not, true
  %brmerge = or i1 %tobool19.not, %tobool137.not.not
  %out_mbox_direct.not = xor i1 %out_mbox_direct, true
  %brmerge234 = or i1 %brmerge, %out_mbox_direct.not
  br i1 %brmerge234, label %if.else159, label %if.then143

if.then143:                                       ; preds = %if.end136
  br i1 %tobool.not, label %if.then146, label %if.then143.if.end168_crit_edge

if.then143.if.end168_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

if.then146:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_addr, align 4
  %add.ptr149 = getelementptr i8, ptr %47, i32 462860
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149) #11, !srcloc !554
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !572
  %49 = ptrtoint ptr %out_mbox to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %out_mbox, align 1
  %50 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_addr, align 4
  %add.ptr154 = getelementptr i8, ptr %51, i32 462864
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr154) #11, !srcloc !554
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !573
  %add.ptr157 = getelementptr i8, ptr %out_mbox, i32 4
  %53 = ptrtoint ptr %add.ptr157 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %add.ptr157, align 1
  br label %if.end168

if.else159:                                       ; preds = %if.end136
  br i1 %brmerge, label %if.else159.if.end168_crit_edge, label %if.then163

if.else159.if.end168_crit_edge:                   ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

if.then163:                                       ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cmd, align 8
  %56 = call ptr @memcpy(ptr %out_mbox, ptr %55, i32 %out_mbox_size)
  br label %if.end168

if.end168:                                        ; preds = %if.then163, %if.else159.if.end168_crit_edge, %if.then146, %if.then143.if.end168_crit_edge, %if.end129.if.end168_crit_edge
  %err.0248 = phi i32 [ %spec.select233, %if.else159.if.end168_crit_edge ], [ %spec.select233, %if.then143.if.end168_crit_edge ], [ %spec.select233, %if.then146 ], [ %spec.select233, %if.then163 ], [ -110, %if.end129.if.end168_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup171

cleanup171:                                       ; preds = %if.end168, %entry.cleanup171_crit_edge
  %retval.0 = phi i32 [ %err.0248, %if.end168 ], [ %call4, %entry.cleanup171_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_pci_read_frc_h(ptr nocapture noundef readonly %bus_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %free_running_clock_offset = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 2
  %0 = ptrtoint ptr %free_running_clock_offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %free_running_clock_offset, align 8
  %hw_addr = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr, align 4
  %idx.ext = trunc i64 %1 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.ext
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !554
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !574
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_pci_read_frc_l(ptr nocapture noundef readonly %bus_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %free_running_clock_offset = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 2
  %0 = ptrtoint ptr %free_running_clock_offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %free_running_clock_offset, align 8
  %hw_addr = getelementptr inbounds %struct.mlxsw_pci, ptr %bus_priv, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr, align 4
  %4 = trunc i64 %1 to i32
  %idx.ext = add i32 %4, 4
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.ext
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !554
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !575
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_resources_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_valid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_pci_config_profile(ptr nocapture noundef readonly %mlxsw_pci, ptr noundef %mbox, ptr noundef %profile, ptr nocapture noundef %res) unnamed_addr #0 align 64 {
entry:
  %single_size.i = alloca i64, align 8
  %double_size.i = alloca i64, align 8
  %linear_size.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mbox, i32 0, i32 4096)
  %1 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %profile, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_max_vepa_channels_set.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

mlxsw_cmd_mbox_config_profile_set_max_vepa_channels_set.exit: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr i32, ptr %mbox, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %3, 1
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %max_vepa_channels = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 1
  %4 = ptrtoint ptr %max_vepa_channels to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_vepa_channels, align 2
  %conv = zext i8 %5 to i32
  %arrayidx.i.i222 = getelementptr i32, ptr %mbox, i32 4
  %6 = ptrtoint ptr %arrayidx.i.i222 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i222, align 4
  %and7.i.i224 = and i32 %7, -256
  %or.i.i225 = or i32 %and7.i.i224, %conv
  store i32 %or.i.i225, ptr %arrayidx.i.i222, align 4
  br label %if.end

if.end:                                           ; preds = %mlxsw_cmd_mbox_config_profile_set_max_vepa_channels_set.exit, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load1 = load i16, ptr %profile, align 4
  %9 = and i16 %bf.load1, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool3.not = icmp eq i16 %9, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_max_mid_set.exit

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

mlxsw_cmd_mbox_config_profile_set_max_mid_set.exit: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i250 = getelementptr i32, ptr %mbox, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i250 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i250, align 4
  %or.i.i253 = or i32 %11, 8
  store i32 %or.i.i253, ptr %arrayidx.i.i250, align 4
  %max_mid = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 2
  %12 = ptrtoint ptr %max_mid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max_mid, align 4
  %conv5 = zext i16 %13 to i32
  %arrayidx.i.i278 = getelementptr i32, ptr %mbox, i32 7
  %14 = ptrtoint ptr %arrayidx.i.i278 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i278, align 4
  %and7.i.i280 = and i32 %15, -65536
  %or.i.i281 = or i32 %and7.i.i280, %conv5
  store i32 %or.i.i281, ptr %arrayidx.i.i278, align 4
  br label %if.end6

if.end6:                                          ; preds = %mlxsw_cmd_mbox_config_profile_set_max_mid_set.exit, %if.end.if.end6_crit_edge
  %16 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load7 = load i16, ptr %profile, align 4
  %17 = and i16 %bf.load7, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool10.not = icmp eq i16 %17, 0
  br i1 %tobool10.not, label %if.end6.if.end13_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_max_pgt_set.exit

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

mlxsw_cmd_mbox_config_profile_set_max_pgt_set.exit: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i306 = getelementptr i32, ptr %mbox, i32 3
  %18 = ptrtoint ptr %arrayidx.i.i306 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i306, align 4
  %or.i.i309 = or i32 %19, 16
  store i32 %or.i.i309, ptr %arrayidx.i.i306, align 4
  %max_pgt = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 3
  %20 = ptrtoint ptr %max_pgt to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %max_pgt, align 2
  %conv12 = zext i16 %21 to i32
  %arrayidx.i.i334 = getelementptr i32, ptr %mbox, i32 8
  %22 = ptrtoint ptr %arrayidx.i.i334 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i334, align 4
  %and7.i.i336 = and i32 %23, -65536
  %or.i.i337 = or i32 %and7.i.i336, %conv12
  store i32 %or.i.i337, ptr %arrayidx.i.i334, align 4
  br label %if.end13

if.end13:                                         ; preds = %mlxsw_cmd_mbox_config_profile_set_max_pgt_set.exit, %if.end6.if.end13_crit_edge
  %24 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load14 = load i16, ptr %profile, align 4
  %25 = and i16 %bf.load14, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool17.not = icmp eq i16 %25, 0
  br i1 %tobool17.not, label %if.end13.if.end20_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_max_system_port_set.exit

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

mlxsw_cmd_mbox_config_profile_set_max_system_port_set.exit: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i362 = getelementptr i32, ptr %mbox, i32 3
  %26 = ptrtoint ptr %arrayidx.i.i362 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i362, align 4
  %or.i.i365 = or i32 %27, 32
  store i32 %or.i.i365, ptr %arrayidx.i.i362, align 4
  %max_system_port = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 4
  %28 = ptrtoint ptr %max_system_port to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %max_system_port, align 4
  %conv19 = zext i16 %29 to i32
  %arrayidx.i.i390 = getelementptr i32, ptr %mbox, i32 9
  %30 = ptrtoint ptr %arrayidx.i.i390 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i390, align 4
  %and7.i.i392 = and i32 %31, -65536
  %or.i.i393 = or i32 %and7.i.i392, %conv19
  store i32 %or.i.i393, ptr %arrayidx.i.i390, align 4
  br label %if.end20

if.end20:                                         ; preds = %mlxsw_cmd_mbox_config_profile_set_max_system_port_set.exit, %if.end13.if.end20_crit_edge
  %32 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load21 = load i16, ptr %profile, align 4
  %33 = and i16 %bf.load21, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool24.not = icmp eq i16 %33, 0
  br i1 %tobool24.not, label %if.end20.if.end27_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_max_vlan_groups_set.exit

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

mlxsw_cmd_mbox_config_profile_set_max_vlan_groups_set.exit: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i418 = getelementptr i32, ptr %mbox, i32 3
  %34 = ptrtoint ptr %arrayidx.i.i418 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i418, align 4
  %or.i.i421 = or i32 %35, 64
  store i32 %or.i.i421, ptr %arrayidx.i.i418, align 4
  %max_vlan_groups = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 5
  %36 = ptrtoint ptr %max_vlan_groups to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %max_vlan_groups, align 2
  %38 = and i16 %37, 4095
  %and6.i.i445 = zext i16 %38 to i32
  %arrayidx.i.i446 = getelementptr i32, ptr %mbox, i32 10
  %39 = ptrtoint ptr %arrayidx.i.i446 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i446, align 4
  %and7.i.i448 = and i32 %40, -4096
  %or.i.i449 = or i32 %and7.i.i448, %and6.i.i445
  store i32 %or.i.i449, ptr %arrayidx.i.i446, align 4
  br label %if.end27

if.end27:                                         ; preds = %mlxsw_cmd_mbox_config_profile_set_max_vlan_groups_set.exit, %if.end20.if.end27_crit_edge
  %41 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load28 = load i16, ptr %profile, align 4
  %42 = and i16 %bf.load28, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool31.not = icmp eq i16 %42, 0
  br i1 %tobool31.not, label %if.end27.if.end34_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_max_regions_set.exit

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

mlxsw_cmd_mbox_config_profile_set_max_regions_set.exit: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i474 = getelementptr i32, ptr %mbox, i32 3
  %43 = ptrtoint ptr %arrayidx.i.i474 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i474, align 4
  %or.i.i477 = or i32 %44, 128
  store i32 %or.i.i477, ptr %arrayidx.i.i474, align 4
  %max_regions = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 6
  %45 = ptrtoint ptr %max_regions to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %max_regions, align 4
  %conv33 = zext i16 %46 to i32
  %arrayidx.i.i502 = getelementptr i32, ptr %mbox, i32 11
  %47 = ptrtoint ptr %arrayidx.i.i502 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i502, align 4
  %and7.i.i504 = and i32 %48, -65536
  %or.i.i505 = or i32 %and7.i.i504, %conv33
  store i32 %or.i.i505, ptr %arrayidx.i.i502, align 4
  br label %if.end34

if.end34:                                         ; preds = %mlxsw_cmd_mbox_config_profile_set_max_regions_set.exit, %if.end27.if.end34_crit_edge
  %49 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load35 = load i16, ptr %profile, align 4
  %50 = and i16 %bf.load35, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool38.not = icmp eq i16 %50, 0
  br i1 %tobool38.not, label %if.end34.if.end46_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_flood_tables_set.exit

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

mlxsw_cmd_mbox_config_profile_set_flood_tables_set.exit: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i530 = getelementptr i32, ptr %mbox, i32 3
  %51 = ptrtoint ptr %arrayidx.i.i530 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i530, align 4
  %or.i.i533 = or i32 %52, 512
  store i32 %or.i.i533, ptr %arrayidx.i.i530, align 4
  %max_flood_tables = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 7
  %53 = ptrtoint ptr %max_flood_tables to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %max_flood_tables, align 2
  %conv40 = zext i8 %54 to i32
  %spec.select.i.i552 = shl nuw nsw i32 %conv40, 16
  %and6.i.i557 = and i32 %spec.select.i.i552, 983040
  %arrayidx.i.i558 = getelementptr i32, ptr %mbox, i32 12
  %55 = ptrtoint ptr %arrayidx.i.i558 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i558, align 4
  %and7.i.i560 = and i32 %56, -983041
  %or.i.i561 = or i32 %and6.i.i557, %and7.i.i560
  store i32 %or.i.i561, ptr %arrayidx.i.i558, align 4
  %max_vid_flood_tables = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 8
  %57 = ptrtoint ptr %max_vid_flood_tables to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %max_vid_flood_tables, align 1
  %conv41 = zext i8 %58 to i32
  %spec.select.i.i580 = shl nuw nsw i32 %conv41, 8
  %and6.i.i585 = and i32 %spec.select.i.i580, 3840
  %arrayidx.i.i586 = getelementptr i32, ptr %mbox, i32 12
  %59 = ptrtoint ptr %arrayidx.i.i586 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i586, align 4
  %and7.i.i588 = and i32 %60, -3841
  %or.i.i589 = or i32 %and6.i.i585, %and7.i.i588
  store i32 %or.i.i589, ptr %arrayidx.i.i586, align 4
  %max_fid_offset_flood_tables = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 10
  %61 = ptrtoint ptr %max_fid_offset_flood_tables to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %max_fid_offset_flood_tables, align 1
  %conv42 = zext i8 %62 to i32
  %spec.select.i.i608 = shl nuw i32 %conv42, 24
  %and6.i.i613 = and i32 %spec.select.i.i608, 251658240
  %arrayidx.i.i614 = getelementptr i32, ptr %mbox, i32 13
  %63 = ptrtoint ptr %arrayidx.i.i614 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i614, align 4
  %and7.i.i616 = and i32 %64, -251658241
  %or.i.i617 = or i32 %and6.i.i613, %and7.i.i616
  store i32 %or.i.i617, ptr %arrayidx.i.i614, align 4
  %fid_offset_flood_table_size = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 11
  %65 = ptrtoint ptr %fid_offset_flood_table_size to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %fid_offset_flood_table_size, align 2
  %conv43 = zext i16 %66 to i32
  %arrayidx.i.i642 = getelementptr i32, ptr %mbox, i32 13
  %and7.i.i644 = and i32 %or.i.i617, -65536
  %or.i.i645 = or i32 %and7.i.i644, %conv43
  %67 = ptrtoint ptr %arrayidx.i.i642 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or.i.i645, ptr %arrayidx.i.i642, align 4
  %max_fid_flood_tables = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 12
  %68 = ptrtoint ptr %max_fid_flood_tables to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %max_fid_flood_tables, align 4
  %conv44 = zext i8 %69 to i32
  %spec.select.i.i664 = shl nuw i32 %conv44, 24
  %and6.i.i669 = and i32 %spec.select.i.i664, 251658240
  %arrayidx.i.i670 = getelementptr i32, ptr %mbox, i32 14
  %70 = ptrtoint ptr %arrayidx.i.i670 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i670, align 4
  %and7.i.i672 = and i32 %71, -251658241
  %or.i.i673 = or i32 %and6.i.i669, %and7.i.i672
  store i32 %or.i.i673, ptr %arrayidx.i.i670, align 4
  %fid_flood_table_size = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 13
  %72 = ptrtoint ptr %fid_flood_table_size to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %fid_flood_table_size, align 2
  %conv45 = zext i16 %73 to i32
  %arrayidx.i.i698 = getelementptr i32, ptr %mbox, i32 14
  %and7.i.i700 = and i32 %or.i.i673, -65536
  %or.i.i701 = or i32 %and7.i.i700, %conv45
  %74 = ptrtoint ptr %arrayidx.i.i698 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or.i.i701, ptr %arrayidx.i.i698, align 4
  br label %if.end46

if.end46:                                         ; preds = %mlxsw_cmd_mbox_config_profile_set_flood_tables_set.exit, %if.end34.if.end46_crit_edge
  %75 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load47 = load i16, ptr %profile, align 4
  %76 = and i16 %bf.load47, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool50.not = icmp eq i16 %76, 0
  br i1 %tobool50.not, label %if.end46.if.end53_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_flood_mode_set.exit

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

mlxsw_cmd_mbox_config_profile_set_flood_mode_set.exit: ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i726 = getelementptr i32, ptr %mbox, i32 3
  %77 = ptrtoint ptr %arrayidx.i.i726 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i726, align 4
  %or.i.i729 = or i32 %78, 256
  store i32 %or.i.i729, ptr %arrayidx.i.i726, align 4
  %flood_mode = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 9
  %79 = ptrtoint ptr %flood_mode to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %flood_mode, align 4
  %81 = and i8 %80, 3
  %and6.i.i753 = zext i8 %81 to i32
  %arrayidx.i.i754 = getelementptr i32, ptr %mbox, i32 12
  %82 = ptrtoint ptr %arrayidx.i.i754 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.i754, align 4
  %and7.i.i756 = and i32 %83, -4
  %or.i.i757 = or i32 %and7.i.i756, %and6.i.i753
  store i32 %or.i.i757, ptr %arrayidx.i.i754, align 4
  br label %if.end53

if.end53:                                         ; preds = %mlxsw_cmd_mbox_config_profile_set_flood_mode_set.exit, %if.end46.if.end53_crit_edge
  %84 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %84)
  %bf.load54 = load i16, ptr %profile, align 4
  %85 = and i16 %bf.load54, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool57.not = icmp eq i16 %85, 0
  br i1 %tobool57.not, label %if.end53.if.end60_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_max_ib_mc_set.exit

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

mlxsw_cmd_mbox_config_profile_set_max_ib_mc_set.exit: ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i782 = getelementptr i32, ptr %mbox, i32 3
  %86 = ptrtoint ptr %arrayidx.i.i782 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i.i782, align 4
  %or.i.i785 = or i32 %87, 4096
  store i32 %or.i.i785, ptr %arrayidx.i.i782, align 4
  %max_ib_mc = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 14
  %88 = ptrtoint ptr %max_ib_mc to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %max_ib_mc, align 4
  %90 = and i16 %89, 32767
  %and6.i.i809 = zext i16 %90 to i32
  %arrayidx.i.i810 = getelementptr i32, ptr %mbox, i32 16
  %91 = ptrtoint ptr %arrayidx.i.i810 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i810, align 4
  %and7.i.i812 = and i32 %92, -32768
  %or.i.i813 = or i32 %and7.i.i812, %and6.i.i809
  store i32 %or.i.i813, ptr %arrayidx.i.i810, align 4
  br label %if.end60

if.end60:                                         ; preds = %mlxsw_cmd_mbox_config_profile_set_max_ib_mc_set.exit, %if.end53.if.end60_crit_edge
  %93 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load61 = load i16, ptr %profile, align 4
  %94 = and i16 %bf.load61, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool64.not = icmp eq i16 %94, 0
  br i1 %tobool64.not, label %if.end60.if.end67_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_max_pkey_set.exit

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

mlxsw_cmd_mbox_config_profile_set_max_pkey_set.exit: ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i838 = getelementptr i32, ptr %mbox, i32 3
  %95 = ptrtoint ptr %arrayidx.i.i838 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i838, align 4
  %or.i.i841 = or i32 %96, 8192
  store i32 %or.i.i841, ptr %arrayidx.i.i838, align 4
  %max_pkey = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 15
  %97 = ptrtoint ptr %max_pkey to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %max_pkey, align 2
  %99 = and i16 %98, 32767
  %and6.i.i865 = zext i16 %99 to i32
  %arrayidx.i.i866 = getelementptr i32, ptr %mbox, i32 17
  %100 = ptrtoint ptr %arrayidx.i.i866 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i.i866, align 4
  %and7.i.i868 = and i32 %101, -32768
  %or.i.i869 = or i32 %and7.i.i868, %and6.i.i865
  store i32 %or.i.i869, ptr %arrayidx.i.i866, align 4
  br label %if.end67

if.end67:                                         ; preds = %mlxsw_cmd_mbox_config_profile_set_max_pkey_set.exit, %if.end60.if.end67_crit_edge
  %102 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load68 = load i16, ptr %profile, align 4
  %103 = and i16 %bf.load68, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool71.not = icmp eq i16 %103, 0
  br i1 %tobool71.not, label %if.end67.if.end74_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_ar_sec_set.exit

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

mlxsw_cmd_mbox_config_profile_set_ar_sec_set.exit: ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i894 = getelementptr i32, ptr %mbox, i32 3
  %104 = ptrtoint ptr %arrayidx.i.i894 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i.i894, align 4
  %or.i.i897 = or i32 %105, 32768
  store i32 %or.i.i897, ptr %arrayidx.i.i894, align 4
  %ar_sec = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 16
  %106 = ptrtoint ptr %ar_sec to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %ar_sec, align 4
  %conv73 = zext i8 %107 to i32
  %spec.select.i.i916 = shl nuw i32 %conv73, 24
  %and6.i.i921 = and i32 %spec.select.i.i916, 50331648
  %arrayidx.i.i922 = getelementptr i32, ptr %mbox, i32 19
  %108 = ptrtoint ptr %arrayidx.i.i922 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i.i922, align 4
  %and7.i.i924 = and i32 %109, -50331649
  %or.i.i925 = or i32 %and6.i.i921, %and7.i.i924
  store i32 %or.i.i925, ptr %arrayidx.i.i922, align 4
  br label %if.end74

if.end74:                                         ; preds = %mlxsw_cmd_mbox_config_profile_set_ar_sec_set.exit, %if.end67.if.end74_crit_edge
  %110 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %110)
  %bf.load75 = load i16, ptr %profile, align 4
  %111 = and i16 %bf.load75, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool78.not = icmp eq i16 %111, 0
  br i1 %tobool78.not, label %if.end74.if.end81_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_adaptive_routing_group_cap_set.exit

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

mlxsw_cmd_mbox_config_profile_set_adaptive_routing_group_cap_set.exit: ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i950 = getelementptr i32, ptr %mbox, i32 3
  %112 = ptrtoint ptr %arrayidx.i.i950 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i.i950, align 4
  %or.i.i953 = or i32 %113, 16384
  store i32 %or.i.i953, ptr %arrayidx.i.i950, align 4
  %adaptive_routing_group_cap = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 17
  %114 = ptrtoint ptr %adaptive_routing_group_cap to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %adaptive_routing_group_cap, align 2
  %conv80 = zext i16 %115 to i32
  %arrayidx.i.i978 = getelementptr i32, ptr %mbox, i32 19
  %116 = ptrtoint ptr %arrayidx.i.i978 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i.i978, align 4
  %and7.i.i980 = and i32 %117, -65536
  %or.i.i981 = or i32 %and7.i.i980, %conv80
  store i32 %or.i.i981, ptr %arrayidx.i.i978, align 4
  br label %if.end81

if.end81:                                         ; preds = %mlxsw_cmd_mbox_config_profile_set_adaptive_routing_group_cap_set.exit, %if.end74.if.end81_crit_edge
  %118 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %118)
  %bf.load82 = load i16, ptr %profile, align 4
  %119 = and i16 %bf.load82, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool86.not = icmp eq i16 %119, 0
  br i1 %tobool86.not, label %if.end81.if.end99_crit_edge, label %land.lhs.true

if.end81.if.end99_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

land.lhs.true:                                    ; preds = %if.end81
  %120 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %res, align 1, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.i.not = icmp eq i8 %121, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end99_crit_edge, label %if.then88

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then88:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %single_size.i) #11
  %122 = ptrtoint ptr %single_size.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 -1, ptr %single_size.i, align 8, !annotation !576
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %double_size.i) #11
  %123 = ptrtoint ptr %double_size.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 -1, ptr %double_size.i, align 8, !annotation !576
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %linear_size.i) #11
  %124 = ptrtoint ptr %linear_size.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 -1, ptr %linear_size.i, align 8, !annotation !576
  %core.i = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  %125 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_core_kvd_sizes_get(ptr noundef %126, ptr noundef %profile, ptr noundef nonnull %single_size.i, ptr noundef nonnull %double_size.i, ptr noundef nonnull %linear_size.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end92, label %mlxsw_pci_profile_get_kvd_sizes.exit

mlxsw_pci_profile_get_kvd_sizes.exit:             ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %linear_size.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %double_size.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %single_size.i) #11
  br label %cleanup

if.end92:                                         ; preds = %if.then88
  %127 = ptrtoint ptr %single_size.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %single_size.i, align 8
  %arrayidx.i.i982 = getelementptr [48 x i8], ptr %res, i32 0, i32 45
  %129 = ptrtoint ptr %arrayidx.i.i982 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %arrayidx.i.i982, align 1
  %arrayidx1.i.i = getelementptr %struct.mlxsw_res, ptr %res, i32 0, i32 1, i32 45
  %130 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %128, ptr %arrayidx1.i.i, align 8
  %131 = ptrtoint ptr %double_size.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %double_size.i, align 8
  %arrayidx.i7.i = getelementptr [48 x i8], ptr %res, i32 0, i32 46
  %133 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %arrayidx.i7.i, align 1
  %arrayidx1.i8.i = getelementptr %struct.mlxsw_res, ptr %res, i32 0, i32 1, i32 46
  %134 = ptrtoint ptr %arrayidx1.i8.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %132, ptr %arrayidx1.i8.i, align 8
  %135 = ptrtoint ptr %linear_size.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %linear_size.i, align 8
  %arrayidx.i9.i = getelementptr [48 x i8], ptr %res, i32 0, i32 47
  %137 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %arrayidx.i9.i, align 1
  %arrayidx1.i10.i = getelementptr %struct.mlxsw_res, ptr %res, i32 0, i32 1, i32 47
  %138 = ptrtoint ptr %arrayidx1.i10.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %136, ptr %arrayidx1.i10.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %linear_size.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %double_size.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %single_size.i) #11
  %arrayidx.i.i1007 = getelementptr i32, ptr %mbox, i32 3
  %139 = ptrtoint ptr %arrayidx.i.i1007 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i.i1007, align 4
  %or.i.i1010 = or i32 %140, 16777216
  store i32 %or.i.i1010, ptr %arrayidx.i.i1007, align 4
  %141 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i9.i, align 1, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.i1011 = icmp eq i8 %142, 0
  br i1 %tobool.not.i1011, label %do.end.i, label %if.end23.i, !prof !577

do.end.i:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.151, i32 noundef 132, i32 noundef 9, ptr noundef null) #11
  br label %mlxsw_cmd_mbox_config_profile_kvd_linear_size_set.exit

if.end23.i:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %143 = ptrtoint ptr %arrayidx1.i10.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %arrayidx1.i10.i, align 8
  %extract.t = trunc i64 %144 to i32
  %phi.bo1294 = and i32 %extract.t, 16777215
  br label %mlxsw_cmd_mbox_config_profile_kvd_linear_size_set.exit

mlxsw_cmd_mbox_config_profile_kvd_linear_size_set.exit: ; preds = %if.end23.i, %do.end.i
  %retval.0.i.off0 = phi i32 [ 0, %do.end.i ], [ %phi.bo1294, %if.end23.i ]
  %arrayidx.i.i1036 = getelementptr i32, ptr %mbox, i32 21
  %145 = ptrtoint ptr %arrayidx.i.i1036 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.i.i1036, align 4
  %and7.i.i1038 = and i32 %146, -16777216
  %or.i.i1039 = or i32 %retval.0.i.off0, %and7.i.i1038
  store i32 %or.i.i1039, ptr %arrayidx.i.i1036, align 4
  %arrayidx.i.i1064 = getelementptr i32, ptr %mbox, i32 3
  %147 = ptrtoint ptr %arrayidx.i.i1064 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i.i1064, align 4
  %or.i.i1067 = or i32 %148, 33554432
  store i32 %or.i.i1067, ptr %arrayidx.i.i1064, align 4
  %149 = ptrtoint ptr %arrayidx.i.i982 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.i.i982, align 1, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i1069 = icmp eq i8 %150, 0
  br i1 %tobool.not.i1069, label %do.end.i1070, label %if.end23.i1072, !prof !577

do.end.i1070:                                     ; preds = %mlxsw_cmd_mbox_config_profile_kvd_linear_size_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.151, i32 noundef 132, i32 noundef 9, ptr noundef null) #11
  br label %mlxsw_cmd_mbox_config_profile_kvd_hash_single_size_set.exit

if.end23.i1072:                                   ; preds = %mlxsw_cmd_mbox_config_profile_kvd_linear_size_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  %151 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %arrayidx1.i.i, align 8
  %extract.t1280 = trunc i64 %152 to i32
  %phi.bo1295 = and i32 %extract.t1280, 16777215
  br label %mlxsw_cmd_mbox_config_profile_kvd_hash_single_size_set.exit

mlxsw_cmd_mbox_config_profile_kvd_hash_single_size_set.exit: ; preds = %if.end23.i1072, %do.end.i1070
  %retval.0.i1073.off0 = phi i32 [ 0, %do.end.i1070 ], [ %phi.bo1295, %if.end23.i1072 ]
  %arrayidx.i.i1099 = getelementptr i32, ptr %mbox, i32 22
  %153 = ptrtoint ptr %arrayidx.i.i1099 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.i.i1099, align 4
  %and7.i.i1101 = and i32 %154, -16777216
  %or.i.i1102 = or i32 %retval.0.i1073.off0, %and7.i.i1101
  store i32 %or.i.i1102, ptr %arrayidx.i.i1099, align 4
  %arrayidx.i.i1127 = getelementptr i32, ptr %mbox, i32 3
  %155 = ptrtoint ptr %arrayidx.i.i1127 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx.i.i1127, align 4
  %or.i.i1130 = or i32 %156, 67108864
  store i32 %or.i.i1130, ptr %arrayidx.i.i1127, align 4
  %157 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx.i7.i, align 1, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.not.i1132 = icmp eq i8 %158, 0
  br i1 %tobool.not.i1132, label %do.end.i1133, label %if.end23.i1135, !prof !577

do.end.i1133:                                     ; preds = %mlxsw_cmd_mbox_config_profile_kvd_hash_single_size_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.151, i32 noundef 132, i32 noundef 9, ptr noundef null) #11
  br label %mlxsw_cmd_mbox_config_profile_kvd_hash_double_size_set.exit

if.end23.i1135:                                   ; preds = %mlxsw_cmd_mbox_config_profile_kvd_hash_single_size_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  %159 = ptrtoint ptr %arrayidx1.i8.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %arrayidx1.i8.i, align 8
  %extract.t1281 = trunc i64 %160 to i32
  %phi.bo = and i32 %extract.t1281, 16777215
  br label %mlxsw_cmd_mbox_config_profile_kvd_hash_double_size_set.exit

mlxsw_cmd_mbox_config_profile_kvd_hash_double_size_set.exit: ; preds = %if.end23.i1135, %do.end.i1133
  %retval.0.i1136.off0 = phi i32 [ 0, %do.end.i1133 ], [ %phi.bo, %if.end23.i1135 ]
  %arrayidx.i.i1162 = getelementptr i32, ptr %mbox, i32 23
  %161 = ptrtoint ptr %arrayidx.i.i1162 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i.i1162, align 4
  %and7.i.i1164 = and i32 %162, -16777216
  %or.i.i1165 = or i32 %retval.0.i1136.off0, %and7.i.i1164
  store i32 %or.i.i1165, ptr %arrayidx.i.i1162, align 4
  br label %if.end99

if.end99:                                         ; preds = %mlxsw_cmd_mbox_config_profile_kvd_hash_double_size_set.exit, %land.lhs.true.if.end99_crit_edge, %if.end81.if.end99_crit_edge
  %163 = ptrtoint ptr %profile to i32
  call void @__asan_load2_noabort(i32 %163)
  %bf.load100 = load i16, ptr %profile, align 4
  %164 = and i16 %bf.load100, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %tobool103.not = icmp eq i16 %164, 0
  br i1 %tobool103.not, label %if.end99.for.body.preheader_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_kvh_xlt_cache_mode_set.exit

if.end99.for.body.preheader_crit_edge:            ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

mlxsw_cmd_mbox_config_profile_set_kvh_xlt_cache_mode_set.exit: ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i1190 = getelementptr i32, ptr %mbox, i32 2
  %165 = ptrtoint ptr %arrayidx.i.i1190 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.i.i1190, align 4
  %or.i.i1193 = or i32 %166, 8
  store i32 %or.i.i1193, ptr %arrayidx.i.i1190, align 4
  %kvh_xlt_cache_mode = getelementptr inbounds %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 22
  %167 = ptrtoint ptr %kvh_xlt_cache_mode to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %kvh_xlt_cache_mode, align 2
  %conv105 = zext i8 %168 to i32
  %spec.select.i.i1212 = shl nuw nsw i32 %conv105, 8
  %and6.i.i1217 = and i32 %spec.select.i.i1212, 3840
  %arrayidx.i.i1218 = getelementptr i32, ptr %mbox, i32 20
  %169 = ptrtoint ptr %arrayidx.i.i1218 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx.i.i1218, align 4
  %and7.i.i1220 = and i32 %170, -3841
  %or.i.i1221 = or i32 %and6.i.i1217, %and7.i.i1220
  store i32 %or.i.i1221, ptr %arrayidx.i.i1218, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %mlxsw_cmd_mbox_config_profile_set_kvh_xlt_cache_mode_set.exit, %if.end99.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end13.i.for.body_crit_edge, %for.body.preheader
  %i.01284 = phi i32 [ %inc, %if.end13.i.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 23, i32 %i.01284
  %171 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %171)
  %bf.load.i = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i1222 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i1222, label %for.body.if.end.i1223_crit_edge, label %if.then.i

for.body.if.end.i1223_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i1223

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %type.i = getelementptr %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 23, i32 %i.01284, i32 1
  %172 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %type.i, align 1
  %conv1.i = zext i8 %173 to i32
  %mul.i.i.i.i = shl nsw i32 %i.01284, 3
  %add.i.i.i.i = add nuw nsw i32 %mul.i.i.i.i, 96
  %div.i22.i.i.i = lshr exact i32 %add.i.i.i.i, 2
  %spec.select.i.i.i = shl nuw nsw i32 %conv1.i, 20
  %and6.i.i.i = and i32 %spec.select.i.i.i, 15728640
  %arrayidx.i.i.i = getelementptr i32, ptr %mbox, i32 %div.i22.i.i.i
  %174 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %175, -15728641
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  br label %if.end.i1223

if.end.i1223:                                     ; preds = %if.then.i, %for.body.if.end.i1223_crit_edge
  %mask.0.i = phi i8 [ 1, %if.then.i ], [ 0, %for.body.if.end.i1223_crit_edge ]
  %176 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load4.i = load i8, ptr %arrayidx, align 1
  %177 = and i8 %bf.load4.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool6.not.i = icmp eq i8 %177, 0
  br i1 %tobool6.not.i, label %if.end.i1223.if.end13.i_crit_edge, label %if.then7.i

if.end.i1223.if.end13.i_crit_edge:                ; preds = %if.end.i1223
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then7.i:                                       ; preds = %if.end.i1223
  call void @__sanitizer_cov_trace_pc() #13
  %properties.i = getelementptr %struct.mlxsw_config_profile, ptr %profile, i32 0, i32 23, i32 %i.01284, i32 2
  %178 = ptrtoint ptr %properties.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %properties.i, align 1
  %conv9.i = zext i8 %179 to i32
  %mul.i.i.i22.i = shl nsw i32 %i.01284, 3
  %add.i.i.i23.i = add nuw nsw i32 %mul.i.i.i22.i, 96
  %div.i22.i.i25.i = lshr exact i32 %add.i.i.i23.i, 2
  %arrayidx.i.i35.i = getelementptr i32, ptr %mbox, i32 %div.i22.i.i25.i
  %180 = ptrtoint ptr %arrayidx.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx.i.i35.i, align 4
  %and7.i.i37.i = and i32 %181, -256
  %or.i.i38.i = or i32 %and7.i.i37.i, %conv9.i
  store i32 %or.i.i38.i, ptr %arrayidx.i.i35.i, align 4
  %182 = or i8 %mask.0.i, 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then7.i, %if.end.i1223.if.end13.i_crit_edge
  %mask.1.i = phi i8 [ %182, %if.then7.i ], [ %mask.0.i, %if.end.i1223.if.end13.i_crit_edge ]
  %conv15.i = zext i8 %mask.1.i to i32
  %mul.i.i.i60.i = shl nsw i32 %i.01284, 3
  %add.i.i.i61.i = add nuw nsw i32 %mul.i.i.i60.i, 96
  %div.i22.i.i63.i = lshr exact i32 %add.i.i.i61.i, 2
  %spec.select.i.i67.i = shl nuw i32 %conv15.i, 24
  %arrayidx.i.i73.i = getelementptr i32, ptr %mbox, i32 %div.i22.i.i63.i
  %183 = ptrtoint ptr %arrayidx.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx.i.i73.i, align 4
  %and7.i.i75.i = and i32 %184, 16777215
  %or.i.i76.i = or i32 %spec.select.i.i67.i, %and7.i.i75.i
  store i32 %or.i.i76.i, ptr %arrayidx.i.i73.i, align 4
  %inc = add nuw nsw i32 %i.01284, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end13.i.for.body_crit_edge

if.end13.i.for.body_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end13.i
  %max_cqe_ver = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 10
  %185 = ptrtoint ptr %max_cqe_ver to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %max_cqe_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp108.not = icmp eq i32 %186, 0
  br i1 %cmp108.not, label %for.end.if.end111_crit_edge, label %mlxsw_cmd_mbox_config_profile_set_cqe_version_set.exit

for.end.if.end111_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

mlxsw_cmd_mbox_config_profile_set_cqe_version_set.exit: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i1248 = getelementptr i32, ptr %mbox, i32 2
  %187 = ptrtoint ptr %arrayidx.i.i1248 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx.i.i1248, align 4
  %or.i.i1251 = or i32 %188, 1
  store i32 %or.i.i1251, ptr %arrayidx.i.i1248, align 4
  %arrayidx.i.i1276 = getelementptr i32, ptr %mbox, i32 44
  %189 = ptrtoint ptr %arrayidx.i.i1276 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx.i.i1276, align 4
  %and7.i.i1278 = and i32 %190, -256
  %or.i.i1279 = or i32 %and7.i.i1278, 1
  store i32 %or.i.i1279, ptr %arrayidx.i.i1276, align 4
  br label %if.end111

if.end111:                                        ; preds = %mlxsw_cmd_mbox_config_profile_set_cqe_version_set.exit, %for.end.if.end111_crit_edge
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  %191 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %core, align 4
  %call.i.i = call i32 @mlxsw_cmd_exec(ptr noundef %192, i16 noundef zeroext 256, i8 noundef zeroext 1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %mbox, i32 noundef 4096, ptr noundef null, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %mlxsw_pci_profile_get_kvd_sizes.exit
  %retval.0 = phi i32 [ %call.i.i, %if.end111 ], [ %call.i, %mlxsw_pci_profile_get_kvd_sizes.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_pci_aqs_init(ptr noundef %mlxsw_pci, ptr noundef %mbox) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_pci, align 8
  %2 = call ptr @memset(ptr %mbox, i32 0, i32 4096)
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 4
  %call.i.i = tail call i32 @mlxsw_cmd_exec(ptr noundef %4, i16 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef %mbox, i32 noundef 4096) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %mlxsw_cmd_mbox_query_aq_cap_max_num_sdqs_get.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

mlxsw_cmd_mbox_query_aq_cap_max_num_sdqs_get.exit: ; preds = %entry
  %5 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbox, align 4
  %and4.i.i = and i32 %6, 255
  %conv = trunc i32 %6 to i8
  %arrayidx.i.i199 = getelementptr i32, ptr %mbox, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i199 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i199, align 4
  %and4.i.i205 = and i32 %8, 255
  %conv6 = trunc i32 %8 to i8
  %arrayidx.i.i249 = getelementptr i32, ptr %mbox, i32 2
  %9 = ptrtoint ptr %arrayidx.i.i249 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i249, align 4
  %and4.i.i255 = and i32 %10, 255
  %conv10 = trunc i32 %10 to i8
  %arrayidx.i.i324 = getelementptr i32, ptr %mbox, i32 3
  %11 = ptrtoint ptr %arrayidx.i.i324 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i324, align 4
  %and4.i.i330 = and i32 %12, 255
  %conv16 = trunc i32 %12 to i8
  %add = add nuw nsw i32 %and4.i.i205, %and4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %and4.i.i255)
  %cmp = icmp ugt i32 %add, %and4.i.i255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and4.i.i)
  %cmp24 = icmp ult i32 %and4.i.i, 2
  %or.cond = or i1 %cmp24, %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and4.i.i255)
  %cmp28 = icmp ugt i32 %and4.i.i255, 96
  %or.cond153 = or i1 %cmp28, %or.cond
  %or.cond153.not = xor i1 %or.cond153, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and4.i.i330)
  %cmp32.not = icmp eq i32 %and4.i.i330, 2
  %or.cond154 = select i1 %or.cond153.not, i1 %cmp32.not, i1 false
  br i1 %or.cond154, label %if.end35, label %do.end

do.end:                                           ; preds = %mlxsw_cmd_mbox_query_aq_cap_max_num_sdqs_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.174) #15
  br label %cleanup

if.end35:                                         ; preds = %mlxsw_cmd_mbox_query_aq_cap_max_num_sdqs_get.exit
  %arrayidx.i.i274 = getelementptr i32, ptr %mbox, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i274 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i274, align 4
  %arrayidx.i.i224 = getelementptr i32, ptr %mbox, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i224 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i224, align 4
  %17 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbox, align 4
  %shr.i.i176.mask = and i32 %18, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %shr.i.i176.mask)
  %cmp37.not = icmp eq i32 %shr.i.i176.mask, 167772160
  %shr.i.i226.mask = and i32 %16, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %shr.i.i226.mask)
  %cmp42.not = icmp eq i32 %shr.i.i226.mask, 167772160
  %or.cond155 = select i1 %cmp37.not, i1 %cmp42.not, i1 false
  %shr.i.i276.mask = and i32 %14, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 184549376, i32 %shr.i.i276.mask)
  %cmp47.not = icmp eq i32 %shr.i.i276.mask, 184549376
  %or.cond156 = select i1 %or.cond155, i1 %cmp47.not, i1 false
  br i1 %or.cond156, label %lor.lhs.false49, label %if.end35.do.end64_crit_edge

if.end35.do.end64_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64

lor.lhs.false49:                                  ; preds = %if.end35
  %max_cqe_ver = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 10
  %19 = ptrtoint ptr %max_cqe_ver to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_cqe_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp50 = icmp ne i32 %20, 2
  %21 = and i32 %10, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 655360, i32 %21)
  %cmp54.not = icmp eq i32 %21, 655360
  %or.cond157 = select i1 %cmp50, i1 true, i1 %cmp54.not
  %shr.i.i351.mask = and i32 %12, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 184549376, i32 %shr.i.i351.mask)
  %cmp59.not = icmp eq i32 %shr.i.i351.mask, 184549376
  %or.cond158 = select i1 %or.cond157, i1 %cmp59.not, i1 false
  br i1 %or.cond158, label %if.end66, label %lor.lhs.false49.do.end64_crit_edge

lor.lhs.false49.do.end64_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64

do.end64:                                         ; preds = %lor.lhs.false49.do.end64_crit_edge, %if.end35.do.end64_crit_edge
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.177) #15
  br label %cleanup

if.end66:                                         ; preds = %lor.lhs.false49
  %num_sdq_cqs = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 11
  %22 = ptrtoint ptr %num_sdq_cqs to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %num_sdq_cqs, align 4
  %call67 = tail call fastcc i32 @mlxsw_pci_queue_group_init(ptr noundef %mlxsw_pci, ptr noundef %mbox, ptr noundef nonnull @mlxsw_pci_eq_ops, i8 noundef zeroext %conv16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end74, label %do.end72

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.180) #15
  br label %cleanup

if.end74:                                         ; preds = %if.end66
  %call75 = tail call fastcc i32 @mlxsw_pci_queue_group_init(ptr noundef %mlxsw_pci, ptr noundef %mbox, ptr noundef nonnull @mlxsw_pci_cq_ops, i8 noundef zeroext %conv10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.183) #15
  br label %err_cqs_init

if.end82:                                         ; preds = %if.end74
  %call83 = tail call fastcc i32 @mlxsw_pci_queue_group_init(ptr noundef %mlxsw_pci, ptr noundef %mbox, ptr noundef nonnull @mlxsw_pci_sdq_ops, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end90, label %do.end88

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %dev89 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev89, ptr noundef nonnull @.str.186) #15
  br label %err_sdqs_init

if.end90:                                         ; preds = %if.end82
  %call91 = tail call fastcc i32 @mlxsw_pci_queue_group_init(ptr noundef %mlxsw_pci, ptr noundef %mbox, ptr noundef nonnull @mlxsw_pci_rdq_ops, i8 noundef zeroext %conv6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end98, label %do.end96

do.end96:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %dev97 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev97, ptr noundef nonnull @.str.189) #15
  tail call fastcc void @mlxsw_pci_queue_group_fini(ptr noundef %mlxsw_pci, ptr noundef nonnull @mlxsw_pci_sdq_ops)
  br label %err_sdqs_init

if.end98:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %nopoll = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %nopoll to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %nopoll, align 4
  br label %cleanup

err_sdqs_init:                                    ; preds = %do.end96, %do.end88
  %err.0 = phi i32 [ %call83, %do.end88 ], [ %call91, %do.end96 ]
  %arrayidx.i.i359 = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 2
  %count.i = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 2, i32 1
  %24 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp10.not.i = icmp eq i8 %25, 0
  br i1 %cmp10.not.i, label %err_sdqs_init.mlxsw_pci_queue_group_fini.exit_crit_edge, label %err_sdqs_init.for.body.i_crit_edge

err_sdqs_init.for.body.i_crit_edge:               ; preds = %err_sdqs_init
  br label %for.body.i

err_sdqs_init.mlxsw_pci_queue_group_fini.exit_crit_edge: ; preds = %err_sdqs_init
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_group_fini.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %err_sdqs_init.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %err_sdqs_init.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %arrayidx.i.i359 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i359, align 4
  %mem_item1.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %27, i32 %i.011.i, i32 1
  %28 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core, align 4
  %num.i = getelementptr %struct.mlxsw_pci_queue, ptr %27, i32 %i.011.i, i32 6
  %30 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num.i, align 2
  %conv.i376 = zext i8 %31 to i32
  %call.i.i.i377 = tail call i32 @mlxsw_cmd_exec(ptr noundef %29, i16 noundef zeroext 23, i8 noundef zeroext 0, i32 noundef %conv.i376, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %elem_info.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %27, i32 %i.011.i, i32 2
  %32 = ptrtoint ptr %elem_info.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %elem_info.i.i, align 4
  tail call void @kfree(ptr noundef %33) #11
  %34 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mlxsw_pci, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %size.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %27, i32 %i.011.i, i32 1, i32 2
  %36 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i.i, align 4
  %38 = ptrtoint ptr %mem_item1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mem_item1.i.i, align 4
  %mapaddr.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %27, i32 %i.011.i, i32 1, i32 1
  %40 = ptrtoint ptr %mapaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mapaddr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef %37, ptr noundef %39, i32 noundef %41, i32 noundef 0) #11
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %42 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %count.i, align 4
  %conv.i = zext i8 %43 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mlxsw_pci_queue_group_fini.exit_crit_edge

for.body.i.mlxsw_pci_queue_group_fini.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_group_fini.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mlxsw_pci_queue_group_fini.exit:                  ; preds = %for.body.i.mlxsw_pci_queue_group_fini.exit_crit_edge, %err_sdqs_init.mlxsw_pci_queue_group_fini.exit_crit_edge
  %44 = ptrtoint ptr %arrayidx.i.i359 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i359, align 4
  tail call void @kfree(ptr noundef %45) #11
  br label %err_cqs_init

err_cqs_init:                                     ; preds = %mlxsw_pci_queue_group_fini.exit, %do.end80
  %err.1 = phi i32 [ %call75, %do.end80 ], [ %err.0, %mlxsw_pci_queue_group_fini.exit ]
  %arrayidx.i.i360 = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 3
  %count.i361 = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 3, i32 1
  %46 = ptrtoint ptr %count.i361 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %count.i361, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp10.not.i362 = icmp eq i8 %47, 0
  br i1 %cmp10.not.i362, label %err_cqs_init.mlxsw_pci_queue_group_fini.exit375_crit_edge, label %err_cqs_init.for.body.i374_crit_edge

err_cqs_init.for.body.i374_crit_edge:             ; preds = %err_cqs_init
  br label %for.body.i374

err_cqs_init.mlxsw_pci_queue_group_fini.exit375_crit_edge: ; preds = %err_cqs_init
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_group_fini.exit375

for.body.i374:                                    ; preds = %for.body.i374.for.body.i374_crit_edge, %err_cqs_init.for.body.i374_crit_edge
  %i.011.i364 = phi i32 [ %inc.i371, %for.body.i374.for.body.i374_crit_edge ], [ 0, %err_cqs_init.for.body.i374_crit_edge ]
  %48 = ptrtoint ptr %arrayidx.i.i360 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i360, align 4
  %mem_item1.i.i366 = getelementptr %struct.mlxsw_pci_queue, ptr %49, i32 %i.011.i364, i32 1
  %50 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %core, align 4
  %num.i379 = getelementptr %struct.mlxsw_pci_queue, ptr %49, i32 %i.011.i364, i32 6
  %52 = ptrtoint ptr %num.i379 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %num.i379, align 2
  %conv.i380 = zext i8 %53 to i32
  %call.i.i.i381 = tail call i32 @mlxsw_cmd_exec(ptr noundef %51, i16 noundef zeroext 20, i8 noundef zeroext 0, i32 noundef %conv.i380, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %elem_info.i.i367 = getelementptr %struct.mlxsw_pci_queue, ptr %49, i32 %i.011.i364, i32 2
  %54 = ptrtoint ptr %elem_info.i.i367 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %elem_info.i.i367, align 4
  tail call void @kfree(ptr noundef %55) #11
  %56 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mlxsw_pci, align 8
  %dev.i.i368 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %size.i.i369 = getelementptr %struct.mlxsw_pci_queue, ptr %49, i32 %i.011.i364, i32 1, i32 2
  %58 = ptrtoint ptr %size.i.i369 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i.i369, align 4
  %60 = ptrtoint ptr %mem_item1.i.i366 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mem_item1.i.i366, align 4
  %mapaddr.i.i370 = getelementptr %struct.mlxsw_pci_queue, ptr %49, i32 %i.011.i364, i32 1, i32 1
  %62 = ptrtoint ptr %mapaddr.i.i370 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mapaddr.i.i370, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i368, i32 noundef %59, ptr noundef %61, i32 noundef %63, i32 noundef 0) #11
  %inc.i371 = add nuw nsw i32 %i.011.i364, 1
  %64 = ptrtoint ptr %count.i361 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %count.i361, align 4
  %conv.i372 = zext i8 %65 to i32
  %cmp.i373 = icmp ult i32 %inc.i371, %conv.i372
  br i1 %cmp.i373, label %for.body.i374.for.body.i374_crit_edge, label %for.body.i374.mlxsw_pci_queue_group_fini.exit375_crit_edge

for.body.i374.mlxsw_pci_queue_group_fini.exit375_crit_edge: ; preds = %for.body.i374
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_group_fini.exit375

for.body.i374.for.body.i374_crit_edge:            ; preds = %for.body.i374
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i374

mlxsw_pci_queue_group_fini.exit375:               ; preds = %for.body.i374.mlxsw_pci_queue_group_fini.exit375_crit_edge, %err_cqs_init.mlxsw_pci_queue_group_fini.exit375_crit_edge
  %66 = ptrtoint ptr %arrayidx.i.i360 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i360, align 4
  tail call void @kfree(ptr noundef %67) #11
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_pci_queue_group_fini.exit375, %if.end98, %do.end72, %do.end64, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end64 ], [ %call67, %do.end72 ], [ %err.1, %mlxsw_pci_queue_group_fini.exit375 ], [ 0, %if.end98 ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_pci_eq_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.mlxsw_pci, ptr %dev_id, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 8
  %state.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %1, i32 0, i32 9, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.mlxsw_pci_queue_tasklet_schedule.exit_crit_edge

entry.mlxsw_pci_queue_tasklet_schedule.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_tasklet_schedule.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet.i = getelementptr %struct.mlxsw_pci_queue, ptr %1, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %tasklet.i) #11
  br label %mlxsw_pci_queue_tasklet_schedule.exit

mlxsw_pci_queue_tasklet_schedule.exit:            ; preds = %if.then.i.i, %entry.mlxsw_pci_queue_tasklet_schedule.exit_crit_edge
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 8
  %state.i.i.1 = getelementptr %struct.mlxsw_pci_queue, ptr %3, i32 1, i32 9, i32 1
  %call.i.i.1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.i.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.i.i.1, label %if.then.i.i.1, label %mlxsw_pci_queue_tasklet_schedule.exit.mlxsw_pci_queue_tasklet_schedule.exit.1_crit_edge

mlxsw_pci_queue_tasklet_schedule.exit.mlxsw_pci_queue_tasklet_schedule.exit.1_crit_edge: ; preds = %mlxsw_pci_queue_tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_tasklet_schedule.exit.1

if.then.i.i.1:                                    ; preds = %mlxsw_pci_queue_tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet.i.1 = getelementptr %struct.mlxsw_pci_queue, ptr %3, i32 1, i32 9
  tail call void @__tasklet_schedule(ptr noundef %tasklet.i.1) #11
  br label %mlxsw_pci_queue_tasklet_schedule.exit.1

mlxsw_pci_queue_tasklet_schedule.exit.1:          ; preds = %if.then.i.i.1, %mlxsw_pci_queue_tasklet_schedule.exit.mlxsw_pci_queue_tasklet_schedule.exit.1_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_pci_aqs_fini(ptr nocapture noundef %mlxsw_pci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nopoll = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %nopoll to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %nopoll, align 4
  %arrayidx.i.i = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 1
  %count.i = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 1, i32 1
  %1 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp10.not.i = icmp eq i8 %2, 0
  br i1 %cmp10.not.i, label %entry.mlxsw_pci_queue_group_fini.exit_crit_edge, label %for.body.i.preheader

entry.mlxsw_pci_queue_group_fini.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_group_fini.exit

for.body.i.preheader:                             ; preds = %entry
  %core.i = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %mlxsw_pci_rdq_fini.exit.for.body.i_crit_edge, %for.body.i.preheader
  %i.011.i = phi i32 [ %inc.i, %mlxsw_pci_rdq_fini.exit.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %mem_item1.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %4, i32 %i.011.i, i32 1
  %5 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core.i, align 4
  %num.i = getelementptr %struct.mlxsw_pci_queue, ptr %4, i32 %i.011.i, i32 6
  %7 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num.i, align 2
  %conv.i53 = zext i8 %8 to i32
  %call.i.i.i.i = tail call i32 @mlxsw_cmd_exec(ptr noundef %6, i16 noundef zeroext 514, i8 noundef zeroext 1, i32 noundef %conv.i53, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %count.i54 = getelementptr %struct.mlxsw_pci_queue, ptr %4, i32 %i.011.i, i32 5
  %9 = ptrtoint ptr %count.i54 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %count.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp10.not.i55 = icmp eq i16 %10, 0
  br i1 %cmp10.not.i55, label %for.body.i.mlxsw_pci_rdq_fini.exit_crit_edge, label %for.body.lr.ph.i57

for.body.i.mlxsw_pci_rdq_fini.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_rdq_fini.exit

for.body.lr.ph.i57:                               ; preds = %for.body.i
  %elem_info.i.i56 = getelementptr %struct.mlxsw_pci_queue, ptr %4, i32 %i.011.i, i32 2
  br label %for.body.i62

for.body.i62:                                     ; preds = %for.body.i62.for.body.i62_crit_edge, %for.body.lr.ph.i57
  %i.011.i58 = phi i32 [ 0, %for.body.lr.ph.i57 ], [ %inc.i60, %for.body.i62.for.body.i62_crit_edge ]
  %11 = ptrtoint ptr %elem_info.i.i56 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %elem_info.i.i56, align 4
  %arrayidx.i.i59 = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %12, i32 %i.011.i58
  %u.i.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %12, i32 %i.011.i58, i32 1
  %13 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %u.i.i, align 4
  %15 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i59, align 4
  tail call fastcc void @mlxsw_pci_wqe_frag_unmap(ptr noundef %mlxsw_pci, ptr noundef %16, i32 noundef 0, i32 noundef 2) #11
  tail call void @__dev_kfree_skb_any(ptr noundef %14, i32 noundef 1) #11
  %inc.i60 = add nuw nsw i32 %i.011.i58, 1
  %17 = ptrtoint ptr %count.i54 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %count.i54, align 4
  %conv1.i = zext i16 %18 to i32
  %cmp.i61 = icmp ult i32 %inc.i60, %conv1.i
  br i1 %cmp.i61, label %for.body.i62.for.body.i62_crit_edge, label %for.body.i62.mlxsw_pci_rdq_fini.exit_crit_edge

for.body.i62.mlxsw_pci_rdq_fini.exit_crit_edge:   ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_rdq_fini.exit

for.body.i62.for.body.i62_crit_edge:              ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i62

mlxsw_pci_rdq_fini.exit:                          ; preds = %for.body.i62.mlxsw_pci_rdq_fini.exit_crit_edge, %for.body.i.mlxsw_pci_rdq_fini.exit_crit_edge
  %elem_info.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %4, i32 %i.011.i, i32 2
  %19 = ptrtoint ptr %elem_info.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %elem_info.i.i, align 4
  tail call void @kfree(ptr noundef %20) #11
  %21 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mlxsw_pci, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %size.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %4, i32 %i.011.i, i32 1, i32 2
  %23 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i.i, align 4
  %25 = ptrtoint ptr %mem_item1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mem_item1.i.i, align 4
  %mapaddr.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %4, i32 %i.011.i, i32 1, i32 1
  %27 = ptrtoint ptr %mapaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mapaddr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef %24, ptr noundef %26, i32 noundef %28, i32 noundef 0) #11
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %count.i, align 4
  %conv.i = zext i8 %30 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %mlxsw_pci_rdq_fini.exit.for.body.i_crit_edge, label %mlxsw_pci_rdq_fini.exit.mlxsw_pci_queue_group_fini.exit_crit_edge

mlxsw_pci_rdq_fini.exit.mlxsw_pci_queue_group_fini.exit_crit_edge: ; preds = %mlxsw_pci_rdq_fini.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_group_fini.exit

mlxsw_pci_rdq_fini.exit.for.body.i_crit_edge:     ; preds = %mlxsw_pci_rdq_fini.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mlxsw_pci_queue_group_fini.exit:                  ; preds = %mlxsw_pci_rdq_fini.exit.mlxsw_pci_queue_group_fini.exit_crit_edge, %entry.mlxsw_pci_queue_group_fini.exit_crit_edge
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %32) #11
  %arrayidx.i.i5 = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 0
  %count.i6 = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 0, i32 1
  %33 = ptrtoint ptr %count.i6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %count.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp10.not.i7 = icmp eq i8 %34, 0
  br i1 %cmp10.not.i7, label %mlxsw_pci_queue_group_fini.exit.mlxsw_pci_queue_group_fini.exit20_crit_edge, label %for.body.i19.preheader

mlxsw_pci_queue_group_fini.exit.mlxsw_pci_queue_group_fini.exit20_crit_edge: ; preds = %mlxsw_pci_queue_group_fini.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_group_fini.exit20

for.body.i19.preheader:                           ; preds = %mlxsw_pci_queue_group_fini.exit
  %core.i63 = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  br label %for.body.i19

for.body.i19:                                     ; preds = %for.body.i19.for.body.i19_crit_edge, %for.body.i19.preheader
  %i.011.i9 = phi i32 [ %inc.i16, %for.body.i19.for.body.i19_crit_edge ], [ 0, %for.body.i19.preheader ]
  %35 = ptrtoint ptr %arrayidx.i.i5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i5, align 4
  %mem_item1.i.i11 = getelementptr %struct.mlxsw_pci_queue, ptr %36, i32 %i.011.i9, i32 1
  %37 = ptrtoint ptr %core.i63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %core.i63, align 4
  %num.i64 = getelementptr %struct.mlxsw_pci_queue, ptr %36, i32 %i.011.i9, i32 6
  %39 = ptrtoint ptr %num.i64 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num.i64, align 2
  %conv.i65 = zext i8 %40 to i32
  %call.i.i.i.i66 = tail call i32 @mlxsw_cmd_exec(ptr noundef %38, i16 noundef zeroext 514, i8 noundef zeroext 0, i32 noundef %conv.i65, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %elem_info.i.i12 = getelementptr %struct.mlxsw_pci_queue, ptr %36, i32 %i.011.i9, i32 2
  %41 = ptrtoint ptr %elem_info.i.i12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %elem_info.i.i12, align 4
  tail call void @kfree(ptr noundef %42) #11
  %43 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mlxsw_pci, align 8
  %dev.i.i13 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %size.i.i14 = getelementptr %struct.mlxsw_pci_queue, ptr %36, i32 %i.011.i9, i32 1, i32 2
  %45 = ptrtoint ptr %size.i.i14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.i.i14, align 4
  %47 = ptrtoint ptr %mem_item1.i.i11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem_item1.i.i11, align 4
  %mapaddr.i.i15 = getelementptr %struct.mlxsw_pci_queue, ptr %36, i32 %i.011.i9, i32 1, i32 1
  %49 = ptrtoint ptr %mapaddr.i.i15 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mapaddr.i.i15, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i13, i32 noundef %46, ptr noundef %48, i32 noundef %50, i32 noundef 0) #11
  %inc.i16 = add nuw nsw i32 %i.011.i9, 1
  %51 = ptrtoint ptr %count.i6 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %count.i6, align 4
  %conv.i17 = zext i8 %52 to i32
  %cmp.i18 = icmp ult i32 %inc.i16, %conv.i17
  br i1 %cmp.i18, label %for.body.i19.for.body.i19_crit_edge, label %for.body.i19.mlxsw_pci_queue_group_fini.exit20_crit_edge

for.body.i19.mlxsw_pci_queue_group_fini.exit20_crit_edge: ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_group_fini.exit20

for.body.i19.for.body.i19_crit_edge:              ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i19

mlxsw_pci_queue_group_fini.exit20:                ; preds = %for.body.i19.mlxsw_pci_queue_group_fini.exit20_crit_edge, %mlxsw_pci_queue_group_fini.exit.mlxsw_pci_queue_group_fini.exit20_crit_edge
  %53 = ptrtoint ptr %arrayidx.i.i5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i5, align 4
  tail call void @kfree(ptr noundef %54) #11
  %arrayidx.i.i21 = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 2
  %count.i22 = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 2, i32 1
  %55 = ptrtoint ptr %count.i22 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %count.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp10.not.i23 = icmp eq i8 %56, 0
  br i1 %cmp10.not.i23, label %mlxsw_pci_queue_group_fini.exit20.mlxsw_pci_queue_group_fini.exit36_crit_edge, label %for.body.i35.preheader

mlxsw_pci_queue_group_fini.exit20.mlxsw_pci_queue_group_fini.exit36_crit_edge: ; preds = %mlxsw_pci_queue_group_fini.exit20
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_group_fini.exit36

for.body.i35.preheader:                           ; preds = %mlxsw_pci_queue_group_fini.exit20
  %core.i67 = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  br label %for.body.i35

for.body.i35:                                     ; preds = %for.body.i35.for.body.i35_crit_edge, %for.body.i35.preheader
  %i.011.i25 = phi i32 [ %inc.i32, %for.body.i35.for.body.i35_crit_edge ], [ 0, %for.body.i35.preheader ]
  %57 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.i21, align 4
  %mem_item1.i.i27 = getelementptr %struct.mlxsw_pci_queue, ptr %58, i32 %i.011.i25, i32 1
  %59 = ptrtoint ptr %core.i67 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %core.i67, align 4
  %num.i68 = getelementptr %struct.mlxsw_pci_queue, ptr %58, i32 %i.011.i25, i32 6
  %61 = ptrtoint ptr %num.i68 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %num.i68, align 2
  %conv.i69 = zext i8 %62 to i32
  %call.i.i.i = tail call i32 @mlxsw_cmd_exec(ptr noundef %60, i16 noundef zeroext 23, i8 noundef zeroext 0, i32 noundef %conv.i69, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %elem_info.i.i28 = getelementptr %struct.mlxsw_pci_queue, ptr %58, i32 %i.011.i25, i32 2
  %63 = ptrtoint ptr %elem_info.i.i28 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %elem_info.i.i28, align 4
  tail call void @kfree(ptr noundef %64) #11
  %65 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mlxsw_pci, align 8
  %dev.i.i29 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %size.i.i30 = getelementptr %struct.mlxsw_pci_queue, ptr %58, i32 %i.011.i25, i32 1, i32 2
  %67 = ptrtoint ptr %size.i.i30 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size.i.i30, align 4
  %69 = ptrtoint ptr %mem_item1.i.i27 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mem_item1.i.i27, align 4
  %mapaddr.i.i31 = getelementptr %struct.mlxsw_pci_queue, ptr %58, i32 %i.011.i25, i32 1, i32 1
  %71 = ptrtoint ptr %mapaddr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mapaddr.i.i31, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i29, i32 noundef %68, ptr noundef %70, i32 noundef %72, i32 noundef 0) #11
  %inc.i32 = add nuw nsw i32 %i.011.i25, 1
  %73 = ptrtoint ptr %count.i22 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %count.i22, align 4
  %conv.i33 = zext i8 %74 to i32
  %cmp.i34 = icmp ult i32 %inc.i32, %conv.i33
  br i1 %cmp.i34, label %for.body.i35.for.body.i35_crit_edge, label %for.body.i35.mlxsw_pci_queue_group_fini.exit36_crit_edge

for.body.i35.mlxsw_pci_queue_group_fini.exit36_crit_edge: ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_group_fini.exit36

for.body.i35.for.body.i35_crit_edge:              ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i35

mlxsw_pci_queue_group_fini.exit36:                ; preds = %for.body.i35.mlxsw_pci_queue_group_fini.exit36_crit_edge, %mlxsw_pci_queue_group_fini.exit20.mlxsw_pci_queue_group_fini.exit36_crit_edge
  %75 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i21, align 4
  tail call void @kfree(ptr noundef %76) #11
  %arrayidx.i.i37 = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 3
  %count.i38 = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 3, i32 1
  %77 = ptrtoint ptr %count.i38 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %count.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp10.not.i39 = icmp eq i8 %78, 0
  br i1 %cmp10.not.i39, label %mlxsw_pci_queue_group_fini.exit36.mlxsw_pci_queue_group_fini.exit52_crit_edge, label %for.body.i51.preheader

mlxsw_pci_queue_group_fini.exit36.mlxsw_pci_queue_group_fini.exit52_crit_edge: ; preds = %mlxsw_pci_queue_group_fini.exit36
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_group_fini.exit52

for.body.i51.preheader:                           ; preds = %mlxsw_pci_queue_group_fini.exit36
  %core.i70 = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  br label %for.body.i51

for.body.i51:                                     ; preds = %for.body.i51.for.body.i51_crit_edge, %for.body.i51.preheader
  %i.011.i41 = phi i32 [ %inc.i48, %for.body.i51.for.body.i51_crit_edge ], [ 0, %for.body.i51.preheader ]
  %79 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i.i37, align 4
  %mem_item1.i.i43 = getelementptr %struct.mlxsw_pci_queue, ptr %80, i32 %i.011.i41, i32 1
  %81 = ptrtoint ptr %core.i70 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %core.i70, align 4
  %num.i71 = getelementptr %struct.mlxsw_pci_queue, ptr %80, i32 %i.011.i41, i32 6
  %83 = ptrtoint ptr %num.i71 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %num.i71, align 2
  %conv.i72 = zext i8 %84 to i32
  %call.i.i.i73 = tail call i32 @mlxsw_cmd_exec(ptr noundef %82, i16 noundef zeroext 20, i8 noundef zeroext 0, i32 noundef %conv.i72, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %elem_info.i.i44 = getelementptr %struct.mlxsw_pci_queue, ptr %80, i32 %i.011.i41, i32 2
  %85 = ptrtoint ptr %elem_info.i.i44 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %elem_info.i.i44, align 4
  tail call void @kfree(ptr noundef %86) #11
  %87 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mlxsw_pci, align 8
  %dev.i.i45 = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44
  %size.i.i46 = getelementptr %struct.mlxsw_pci_queue, ptr %80, i32 %i.011.i41, i32 1, i32 2
  %89 = ptrtoint ptr %size.i.i46 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size.i.i46, align 4
  %91 = ptrtoint ptr %mem_item1.i.i43 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mem_item1.i.i43, align 4
  %mapaddr.i.i47 = getelementptr %struct.mlxsw_pci_queue, ptr %80, i32 %i.011.i41, i32 1, i32 1
  %93 = ptrtoint ptr %mapaddr.i.i47 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mapaddr.i.i47, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i45, i32 noundef %90, ptr noundef %92, i32 noundef %94, i32 noundef 0) #11
  %inc.i48 = add nuw nsw i32 %i.011.i41, 1
  %95 = ptrtoint ptr %count.i38 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %count.i38, align 4
  %conv.i49 = zext i8 %96 to i32
  %cmp.i50 = icmp ult i32 %inc.i48, %conv.i49
  br i1 %cmp.i50, label %for.body.i51.for.body.i51_crit_edge, label %for.body.i51.mlxsw_pci_queue_group_fini.exit52_crit_edge

for.body.i51.mlxsw_pci_queue_group_fini.exit52_crit_edge: ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_group_fini.exit52

for.body.i51.for.body.i51_crit_edge:              ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i51

mlxsw_pci_queue_group_fini.exit52:                ; preds = %for.body.i51.mlxsw_pci_queue_group_fini.exit52_crit_edge, %mlxsw_pci_queue_group_fini.exit36.mlxsw_pci_queue_group_fini.exit52_crit_edge
  %97 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i37, align 4
  tail call void @kfree(ptr noundef %98) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_cmd_exec(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_kvd_sizes_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_pci_queue_group_init(ptr noundef %mlxsw_pci, ptr noundef %mbox, ptr nocapture noundef readonly %q_ops, i8 noundef zeroext %num_qs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mlxsw_pci_queue_ops, ptr %q_ops, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 %1
  %conv = zext i8 %num_qs to i32
  %2 = mul nuw nsw i32 %conv, 112
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #16
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8.i.i, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_qs)
  %cmp67.not = icmp eq i8 %num_qs, 0
  br i1 %cmp67.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pre_init.i = getelementptr inbounds %struct.mlxsw_pci_queue_ops, ptr %q_ops, i32 0, i32 2
  %elem_count_f.i = getelementptr inbounds %struct.mlxsw_pci_queue_ops, ptr %q_ops, i32 0, i32 6
  %elem_count.i = getelementptr inbounds %struct.mlxsw_pci_queue_ops, ptr %q_ops, i32 0, i32 8
  %elem_size_f.i = getelementptr inbounds %struct.mlxsw_pci_queue_ops, ptr %q_ops, i32 0, i32 7
  %elem_size.i = getelementptr inbounds %struct.mlxsw_pci_queue_ops, ptr %q_ops, i32 0, i32 9
  %tasklet.i = getelementptr inbounds %struct.mlxsw_pci_queue_ops, ptr %q_ops, i32 0, i32 5
  %init.i = getelementptr inbounds %struct.mlxsw_pci_queue_ops, ptr %q_ops, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.068
  %conv6 = trunc i32 %i.068 to i8
  %mem_item1.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.068, i32 1
  %num.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.068, i32 6
  %6 = ptrtoint ptr %num.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv6, ptr %num.i, align 2
  %7 = ptrtoint ptr %pre_init.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pre_init.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.do.body.i_crit_edge, label %if.then.i

for.body.do.body.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %8(ptr noundef %mlxsw_pci, ptr noundef %arrayidx) #11
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %for.body.do.body.i_crit_edge
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.209, ptr noundef nonnull @mlxsw_pci_queue_init.__key, i16 noundef signext 3) #11
  %9 = ptrtoint ptr %elem_count_f.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %elem_count_f.i, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i = tail call zeroext i16 %10(ptr noundef %arrayidx) #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %elem_count.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %elem_count.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.in.i = phi i16 [ %call5.i, %cond.true.i ], [ %12, %cond.false.i ]
  %count.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.068, i32 5
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %cond.in.i, ptr %count.i, align 4
  %14 = ptrtoint ptr %elem_size_f.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %elem_size_f.i, align 4
  %tobool8.not.i = icmp eq ptr %15, null
  br i1 %tobool8.not.i, label %cond.false13.i, label %cond.true9.i

cond.true9.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = tail call zeroext i8 %15(ptr noundef %arrayidx) #11
  br label %cond.end15.i

cond.false13.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %elem_size.i, align 2
  br label %cond.end15.i

cond.end15.i:                                     ; preds = %cond.false13.i, %cond.true9.i
  %cond16.in.i = phi i8 [ %call11.i, %cond.true9.i ], [ %17, %cond.false13.i ]
  %elem_size18.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.068, i32 7
  %18 = ptrtoint ptr %elem_size18.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %cond16.in.i, ptr %elem_size18.i, align 1
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  %type19.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.068, i32 8
  %21 = ptrtoint ptr %type19.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %type19.i, align 4
  %pci.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.068, i32 10
  %22 = ptrtoint ptr %pci.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mlxsw_pci, ptr %pci.i, align 4
  %23 = ptrtoint ptr %tasklet.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tasklet.i, align 4
  %tobool20.not.i = icmp eq ptr %24, null
  br i1 %tobool20.not.i, label %cond.end15.i.if.end24.i_crit_edge, label %if.then21.i

cond.end15.i.if.end24.i_crit_edge:                ; preds = %cond.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then21.i:                                      ; preds = %cond.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet22.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.068, i32 9
  tail call void @tasklet_setup(ptr noundef %tasklet22.i, ptr noundef nonnull %24) #11
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %cond.end15.i.if.end24.i_crit_edge
  %size.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.068, i32 1, i32 2
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 32768, ptr %size.i, align 4
  %26 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mlxsw_pci, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %mapaddr.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.068, i32 1, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 32768, ptr noundef %mapaddr.i, i32 noundef 3264, i32 noundef 0) #11
  %28 = ptrtoint ptr %mem_item1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i, ptr %mem_item1.i, align 4
  %tobool28.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool28.not.i, label %if.end24.i.mlxsw_pci_queue_init.exit_crit_edge, label %if.end7.i.i.i

if.end24.i.mlxsw_pci_queue_init.exit_crit_edge:   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_init.exit

if.end7.i.i.i:                                    ; preds = %if.end24.i
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %count.i, align 4
  %conv32.i = zext i16 %30 to i32
  %31 = shl nuw nsw i32 %conv32.i, 3
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #16
  %elem_info.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.068, i32 2
  %32 = ptrtoint ptr %elem_info.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call8.i.i.i, ptr %elem_info.i, align 4
  %tobool35.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool35.not.i, label %if.end7.i.i.i.err_elem_info_alloc.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.err_elem_info_alloc.i_crit_edge:    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_elem_info_alloc.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp111.not.i = icmp eq i16 %34, 0
  br i1 %cmp111.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0112.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %elem_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %elem_info.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %36, i32 %i.0112.i
  %37 = ptrtoint ptr %elem_size18.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %elem_size18.i, align 1
  %conv44.i = zext i8 %38 to i32
  %39 = ptrtoint ptr %mem_item1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mem_item1.i, align 4
  %mul.i.i = mul i32 %i.0112.i, %conv44.i
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %mul.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i.i, ptr %arrayidx.i.i, align 4
  %inc.i = add nuw nsw i32 %i.0112.i, 1
  %42 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %count.i, align 4
  %conv39.i = zext i16 %43 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv39.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %44 = call ptr @memset(ptr %mbox, i32 0, i32 4096)
  %45 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init.i, align 4
  %call46.i = tail call i32 %46(ptr noundef %mlxsw_pci, ptr noundef %mbox, ptr noundef %arrayidx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %for.inc, label %err_q_ops_init.i

err_q_ops_init.i:                                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %elem_info.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %elem_info.i, align 4
  tail call void @kfree(ptr noundef %48) #11
  br label %err_elem_info_alloc.i

err_elem_info_alloc.i:                            ; preds = %err_q_ops_init.i, %if.end7.i.i.i.err_elem_info_alloc.i_crit_edge
  %err.0.i = phi i32 [ %call46.i, %err_q_ops_init.i ], [ -12, %if.end7.i.i.i.err_elem_info_alloc.i_crit_edge ]
  %49 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mlxsw_pci, align 8
  %dev52.i = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size.i, align 4
  %53 = ptrtoint ptr %mem_item1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mem_item1.i, align 4
  %55 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mapaddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev52.i, i32 noundef %52, ptr noundef %54, i32 noundef %56, i32 noundef 0) #11
  br label %mlxsw_pci_queue_init.exit

mlxsw_pci_queue_init.exit:                        ; preds = %err_elem_info_alloc.i, %if.end24.i.mlxsw_pci_queue_init.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %err_elem_info_alloc.i ], [ -12, %if.end24.i.mlxsw_pci_queue_init.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.068)
  %cmp1270.not = icmp eq i32 %i.068, 0
  br i1 %cmp1270.not, label %mlxsw_pci_queue_init.exit.for.end19_crit_edge, label %for.body14.lr.ph

mlxsw_pci_queue_init.exit.for.end19_crit_edge:    ; preds = %mlxsw_pci_queue_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end19

for.body14.lr.ph:                                 ; preds = %mlxsw_pci_queue_init.exit
  %fini.i = getelementptr inbounds %struct.mlxsw_pci_queue_ops, ptr %q_ops, i32 0, i32 4
  br label %for.body14

for.inc:                                          ; preds = %for.end.i
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %count = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 %1, i32 1
  %57 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %num_qs, ptr %count, align 4
  br label %cleanup

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.lr.ph
  %i.171.in = phi i32 [ %i.068, %for.body14.lr.ph ], [ %i.171, %for.body14.for.body14_crit_edge ]
  %i.171 = add nsw i32 %i.171.in, -1
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx16 = getelementptr %struct.mlxsw_pci_queue, ptr %59, i32 %i.171
  %mem_item1.i44 = getelementptr %struct.mlxsw_pci_queue, ptr %59, i32 %i.171, i32 1
  %60 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fini.i, align 4
  tail call void %61(ptr noundef %mlxsw_pci, ptr noundef %arrayidx16) #11
  %elem_info.i45 = getelementptr %struct.mlxsw_pci_queue, ptr %59, i32 %i.171, i32 2
  %62 = ptrtoint ptr %elem_info.i45 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %elem_info.i45, align 4
  tail call void @kfree(ptr noundef %63) #11
  %64 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mlxsw_pci, align 8
  %dev.i46 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %size.i47 = getelementptr %struct.mlxsw_pci_queue, ptr %59, i32 %i.171, i32 1, i32 2
  %66 = ptrtoint ptr %size.i47 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size.i47, align 4
  %68 = ptrtoint ptr %mem_item1.i44 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mem_item1.i44, align 4
  %mapaddr.i48 = getelementptr %struct.mlxsw_pci_queue, ptr %59, i32 %i.171, i32 1, i32 1
  %70 = ptrtoint ptr %mapaddr.i48 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mapaddr.i48, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i46, i32 noundef %67, ptr noundef %69, i32 noundef %71, i32 noundef 0) #11
  %cmp12 = icmp sgt i32 %i.171.in, 1
  br i1 %cmp12, label %for.body14.for.body14_crit_edge, label %for.body14.for.end19_crit_edge

for.body14.for.end19_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end19

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14

for.end19:                                        ; preds = %for.body14.for.end19_crit_edge, %mlxsw_pci_queue_init.exit.for.end19_crit_edge
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %73) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end19, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %for.end19 ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_pci_queue_group_fini(ptr noundef %mlxsw_pci, ptr nocapture noundef readonly %q_ops) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mlxsw_pci_queue_ops, ptr %q_ops, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 %1
  %count = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 %1, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp10.not = icmp eq i8 %3, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fini.i = getelementptr inbounds %struct.mlxsw_pci_queue_ops, ptr %q_ops, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.011
  %mem_item1.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.011, i32 1
  %6 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fini.i, align 4
  tail call void %7(ptr noundef %mlxsw_pci, ptr noundef %arrayidx) #11
  %elem_info.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.011, i32 2
  %8 = ptrtoint ptr %elem_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %elem_info.i, align 4
  tail call void @kfree(ptr noundef %9) #11
  %10 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mlxsw_pci, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %size.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.011, i32 1, i32 2
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  %14 = ptrtoint ptr %mem_item1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem_item1.i, align 4
  %mapaddr.i = getelementptr %struct.mlxsw_pci_queue, ptr %5, i32 %i.011, i32 1, i32 1
  %16 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mapaddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef 0) #11
  %inc = add nuw nsw i32 %i.011, 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %count, align 4
  %conv = zext i8 %19 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %21) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_pci_eq_init(ptr nocapture noundef readonly %mlxsw_pci, ptr noundef %mbox, ptr nocapture noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %consumer_counter = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %consumer_counter to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %consumer_counter, align 2
  %count = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 5
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp177.not = icmp eq i16 %2, 0
  br i1 %cmp177.not, label %entry.mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit_crit_edge, label %for.body.lr.ph

entry.mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit

for.body.lr.ph:                                   ; preds = %entry
  %elem_info.i.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %elem_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %elem_info.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %4, i32 %i.0178
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i52 = getelementptr i32, ptr %6, i32 3
  %7 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i52, align 4
  %or.i.i = or i32 %8, 1
  store i32 %or.i.i, ptr %arrayidx.i.i52, align 4
  %inc = add nuw nsw i32 %i.0178, 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %count, align 4
  %conv = zext i16 %10 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit_crit_edge

for.body.mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit:        ; preds = %for.body.mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit_crit_edge, %entry.mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit_crit_edge
  %11 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbox, align 4
  %or.i.i80 = and i32 %12, -16777985
  %or.i.i108 = or i32 %or.i.i80, 16777472
  store i32 %or.i.i108, ptr %mbox, align 4
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %count, align 4
  %conv12 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i.i109 = icmp eq i16 %14, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %conv12, i1 true) #11, !range !578
  %sub.i.op.i = and i32 %15, 15
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 15
  %and6.i.i132 = select i1 %tobool.not.i.i109, i32 15, i32 %sub.i.op.i.op
  %16 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mbox, align 4
  %and7.i.i135 = and i32 %17, -16
  %or.i.i136 = or i32 %and6.i.i132, %and7.i.i135
  store i32 %or.i.i136, ptr %mbox, align 4
  %mapaddr.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mapaddr.i, align 4
  %20 = and i32 %19, -2048
  %and8.i.i.peel = zext i32 %20 to i64
  %arrayidx.i.i155.peel = getelementptr i64, ptr %mbox, i32 2
  %21 = ptrtoint ptr %arrayidx.i.i155.peel to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i.i155.peel, align 8
  %and9.i.i.peel = and i64 %22, 2047
  %or.i.i157.peel = or i64 %and9.i.i.peel, %and8.i.i.peel
  store i64 %or.i.i157.peel, ptr %arrayidx.i.i155.peel, align 8
  %23 = load i32, ptr %mapaddr.i, align 4
  %add.i = add i32 %23, 4096
  %24 = and i32 %add.i, -2048
  %and8.i.i = zext i32 %24 to i64
  %arrayidx.i.i155 = getelementptr i64, ptr %mbox, i32 3
  %25 = ptrtoint ptr %arrayidx.i.i155 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i.i155, align 8
  %and9.i.i = and i64 %26, 2047
  %or.i.i157 = or i64 %and9.i.i, %and8.i.i
  store i64 %or.i.i157, ptr %arrayidx.i.i155, align 8
  %27 = load i32, ptr %mapaddr.i, align 4
  %add.i.1 = add i32 %27, 8192
  %28 = and i32 %add.i.1, -2048
  %and8.i.i.1 = zext i32 %28 to i64
  %arrayidx.i.i155.1 = getelementptr i64, ptr %mbox, i32 4
  %29 = ptrtoint ptr %arrayidx.i.i155.1 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.i.i155.1, align 8
  %and9.i.i.1 = and i64 %30, 2047
  %or.i.i157.1 = or i64 %and9.i.i.1, %and8.i.i.1
  store i64 %or.i.i157.1, ptr %arrayidx.i.i155.1, align 8
  %31 = load i32, ptr %mapaddr.i, align 4
  %add.i.2 = add i32 %31, 12288
  %32 = and i32 %add.i.2, -2048
  %and8.i.i.2 = zext i32 %32 to i64
  %arrayidx.i.i155.2 = getelementptr i64, ptr %mbox, i32 5
  %33 = ptrtoint ptr %arrayidx.i.i155.2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.i.i155.2, align 8
  %and9.i.i.2 = and i64 %34, 2047
  %or.i.i157.2 = or i64 %and9.i.i.2, %and8.i.i.2
  store i64 %or.i.i157.2, ptr %arrayidx.i.i155.2, align 8
  %35 = load i32, ptr %mapaddr.i, align 4
  %add.i.3 = add i32 %35, 16384
  %36 = and i32 %add.i.3, -2048
  %and8.i.i.3 = zext i32 %36 to i64
  %arrayidx.i.i155.3 = getelementptr i64, ptr %mbox, i32 6
  %37 = ptrtoint ptr %arrayidx.i.i155.3 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.i.i155.3, align 8
  %and9.i.i.3 = and i64 %38, 2047
  %or.i.i157.3 = or i64 %and9.i.i.3, %and8.i.i.3
  store i64 %or.i.i157.3, ptr %arrayidx.i.i155.3, align 8
  %39 = load i32, ptr %mapaddr.i, align 4
  %add.i.4 = add i32 %39, 20480
  %40 = and i32 %add.i.4, -2048
  %and8.i.i.4 = zext i32 %40 to i64
  %arrayidx.i.i155.4 = getelementptr i64, ptr %mbox, i32 7
  %41 = ptrtoint ptr %arrayidx.i.i155.4 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx.i.i155.4, align 8
  %and9.i.i.4 = and i64 %42, 2047
  %or.i.i157.4 = or i64 %and9.i.i.4, %and8.i.i.4
  store i64 %or.i.i157.4, ptr %arrayidx.i.i155.4, align 8
  %43 = load i32, ptr %mapaddr.i, align 4
  %add.i.5 = add i32 %43, 24576
  %44 = and i32 %add.i.5, -2048
  %and8.i.i.5 = zext i32 %44 to i64
  %arrayidx.i.i155.5 = getelementptr i64, ptr %mbox, i32 8
  %45 = ptrtoint ptr %arrayidx.i.i155.5 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx.i.i155.5, align 8
  %and9.i.i.5 = and i64 %46, 2047
  %or.i.i157.5 = or i64 %and9.i.i.5, %and8.i.i.5
  store i64 %or.i.i157.5, ptr %arrayidx.i.i155.5, align 8
  %47 = load i32, ptr %mapaddr.i, align 4
  %add.i.6 = add i32 %47, 28672
  %48 = and i32 %add.i.6, -2048
  %and8.i.i.6 = zext i32 %48 to i64
  %arrayidx.i.i155.6 = getelementptr i64, ptr %mbox, i32 9
  %49 = ptrtoint ptr %arrayidx.i.i155.6 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx.i.i155.6, align 8
  %and9.i.i.6 = and i64 %50, 2047
  %or.i.i157.6 = or i64 %and9.i.i.6, %and8.i.i.6
  store i64 %or.i.i157.6, ptr %arrayidx.i.i155.6, align 8
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  %51 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %core, align 4
  %num = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 6
  %53 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num, align 2
  %conv26 = zext i8 %54 to i32
  %call.i.i = tail call i32 @mlxsw_cmd_exec(ptr noundef %52, i16 noundef zeroext 19, i8 noundef zeroext 0, i32 noundef %conv26, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %mbox, i32 noundef 4096, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit.cleanup_crit_edge

mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit.cleanup_crit_edge: ; preds = %mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !579
  tail call void @arm_heavy_mb() #11
  %55 = ptrtoint ptr %consumer_counter to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %consumer_counter, align 2
  %57 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %count, align 4
  %add.i158 = add i16 %58, %56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !561
  tail call void @arm_heavy_mb() #11
  %conv.i.i159 = zext i16 %add.i158 to i32
  %hw_addr.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 1
  %59 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw_addr.i.i, align 4
  %doorbell_offset.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 4
  %61 = ptrtoint ptr %doorbell_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %doorbell_offset.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 8
  %63 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i160 = getelementptr [4 x i16], ptr @mlxsw_pci_doorbell_type_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx.i.i160 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.i.i160, align 2
  %conv1.i.i = zext i16 %66 to i32
  %add.i.i = add i32 %62, %conv1.i.i
  %67 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %num, align 2
  %conv2.i.i161 = zext i8 %68 to i32
  %mul.i.i = shl nuw nsw i32 %conv2.i.i161, 2
  %add3.i.i = add i32 %add.i.i, %mul.i.i
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i.i159) #11, !srcloc !562
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !580
  tail call void @arm_heavy_mb() #11
  %69 = ptrtoint ptr %consumer_counter to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %consumer_counter, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !581
  tail call void @arm_heavy_mb() #11
  %conv.i.i163 = zext i16 %70 to i32
  %71 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw_addr.i.i, align 4
  %73 = ptrtoint ptr %doorbell_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %doorbell_offset.i.i, align 8
  %75 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i167 = getelementptr [4 x i16], ptr @mlxsw_pci_doorbell_arm_type_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx.i.i167 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx.i.i167, align 2
  %conv1.i.i168 = zext i16 %78 to i32
  %add.i.i169 = add i32 %74, %conv1.i.i168
  %79 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num, align 2
  %conv2.i.i171 = zext i8 %80 to i32
  %mul.i.i172 = shl nuw nsw i32 %conv2.i.i171, 2
  %add3.i.i173 = add i32 %add.i.i169, %mul.i.i172
  %add.ptr.i.i174 = getelementptr i8, ptr %72, i32 %add3.i.i173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i174, i32 %conv.i.i163) #11, !srcloc !562
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlxsw_cmd_mbox_sw2hw_eq_int_msix_set.exit.cleanup_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_pci_eq_fini(ptr nocapture noundef readonly %mlxsw_pci, ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %num = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 6
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 2
  %conv = zext i8 %3 to i32
  %call.i.i = tail call i32 @mlxsw_cmd_exec(ptr noundef %1, i16 noundef zeroext 20, i8 noundef zeroext 0, i32 noundef %conv, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_pci_eq_tasklet(ptr nocapture noundef %t) #0 align 64 {
entry:
  %active_cqns = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr i8, ptr %t, i32 24
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %count.i.i = getelementptr %struct.mlxsw_pci, ptr %1, i32 0, i32 3, i32 2, i32 1
  %2 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %count.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %active_cqns) #11
  %count = getelementptr i8, ptr %t, i32 -8
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count, align 4
  %6 = lshr i16 %5, 1
  %7 = zext i16 %6 to i32
  %8 = call ptr @memset(ptr %active_cqns, i32 0, i32 12)
  %consumer_counter.i.i = getelementptr i8, ptr %t, i32 -10
  %elem_info.i.i.i = getelementptr i8, ptr %t, i32 -16
  %num = getelementptr i8, ptr %t, i32 -6
  %ev_comp_count = getelementptr i8, ptr %t, i32 32
  %comp.i = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 7, i32 6
  %out_param.i = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 7, i32 6, i32 1
  %wait_done.i = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 7, i32 5
  %wait.i = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 7, i32 4
  %u = getelementptr i8, ptr %t, i32 28
  %ev_other_count = getelementptr i8, ptr %t, i32 36
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.while.cond_crit_edge, %entry
  %cq_handle.0.off0 = phi i1 [ false, %entry ], [ %cq_handle.1.off0, %sw.epilog.while.cond_crit_edge ]
  %items.0 = phi i32 [ 0, %entry ], [ %inc11, %sw.epilog.while.cond_crit_edge ]
  %9 = ptrtoint ptr %consumer_counter.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %consumer_counter.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %count, align 4
  %conv1.i.i = zext i16 %12 to i32
  %sub.i.i = add nuw nsw i32 %conv1.i.i, 65535
  %and.i.i = and i32 %sub.i.i, %conv.i.i
  %13 = ptrtoint ptr %elem_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %elem_info.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %14, i32 %and.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i10.i = getelementptr i32, ptr %16, i32 3
  %17 = ptrtoint ptr %arrayidx.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i10.i, align 4
  %and4.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool.i = icmp ne i32 %and4.i.i.i, 0
  %and7.i.i = and i16 %12, %10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and7.i.i)
  %tobool3.i.i = icmp ne i16 %and7.i.i, 0
  %cmp.i.i = xor i1 %tobool3.i.i, %tobool.i
  br i1 %cmp.i.i, label %while.cond.while.end_crit_edge, label %mlxsw_pci_eq_sw_eqe_get.exit

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

mlxsw_pci_eq_sw_eqe_get.exit:                     ; preds = %while.cond
  %inc.i = add i16 %10, 1
  %19 = ptrtoint ptr %consumer_counter.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %inc.i, ptr %consumer_counter.i.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !582
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %mlxsw_pci_eq_sw_eqe_get.exit.while.end_crit_edge, label %while.body

mlxsw_pci_eq_sw_eqe_get.exit.while.end_crit_edge: ; preds = %mlxsw_pci_eq_sw_eqe_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %mlxsw_pci_eq_sw_eqe_get.exit
  %20 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num, align 2
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %while.body.sw.epilog_crit_edge [
    i8 0, label %mlxsw_pci_eqe_cmd_status_get.exit.i
    i8 1, label %mlxsw_pci_eqe_cqn_get.exit
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

mlxsw_pci_eqe_cmd_status_get.exit.i:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %16, align 4
  %conv.i = trunc i32 %24 to i8
  %25 = ptrtoint ptr %comp.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %comp.i, align 8
  %arrayidx.i.i29.i = getelementptr i32, ptr %16, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i29.i, align 4
  %conv2.i = zext i32 %27 to i64
  %shl.i = shl nuw i64 %conv2.i, 32
  %arrayidx.i.i54.i = getelementptr i32, ptr %16, i32 2
  %28 = ptrtoint ptr %arrayidx.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i54.i, align 4
  %conv4.i = zext i32 %29 to i64
  %or.i = or i64 %shl.i, %conv4.i
  %30 = ptrtoint ptr %out_param.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %or.i, ptr %out_param.i, align 8
  %31 = ptrtoint ptr %wait_done.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %wait_done.i, align 4
  call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %sw.epilog

mlxsw_pci_eqe_cqn_get.exit:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr i32, ptr %16, i32 3
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %shr.i.i = lshr i32 %33, 8
  %and4.i.i = and i32 %shr.i.i, 127
  call void @_set_bit(i32 noundef %and4.i.i, ptr noundef nonnull %active_cqns) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %mlxsw_pci_eqe_cqn_get.exit, %mlxsw_pci_eqe_cmd_status_get.exit.i, %while.body.sw.epilog_crit_edge
  %ev_other_count.sink163 = phi ptr [ %ev_comp_count, %mlxsw_pci_eqe_cqn_get.exit ], [ %u, %mlxsw_pci_eqe_cmd_status_get.exit.i ], [ %ev_other_count, %while.body.sw.epilog_crit_edge ]
  %cq_handle.1.off0 = phi i1 [ true, %mlxsw_pci_eqe_cqn_get.exit ], [ %cq_handle.0.off0, %mlxsw_pci_eqe_cmd_status_get.exit.i ], [ %cq_handle.0.off0, %while.body.sw.epilog_crit_edge ]
  %34 = ptrtoint ptr %ev_other_count.sink163 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ev_other_count.sink163, align 4
  %inc10 = add i32 %35, 1
  store i32 %inc10, ptr %ev_other_count.sink163, align 4
  %inc11 = add i32 %items.0, 1
  %cmp = icmp eq i32 %inc11, %7
  br i1 %cmp, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.cond_crit_edge

sw.epilog.while.cond_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %mlxsw_pci_eq_sw_eqe_get.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %cq_handle.2.off0 = phi i1 [ %cq_handle.1.off0, %sw.epilog.while.end_crit_edge ], [ %cq_handle.0.off0, %mlxsw_pci_eq_sw_eqe_get.exit.while.end_crit_edge ], [ %cq_handle.0.off0, %while.cond.while.end_crit_edge ]
  %items.1 = phi i32 [ %7, %sw.epilog.while.end_crit_edge ], [ %items.0, %mlxsw_pci_eq_sw_eqe_get.exit.while.end_crit_edge ], [ %items.0, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %items.1)
  %tobool13.not = icmp eq i32 %items.1, 0
  br i1 %tobool13.not, label %while.end.if.end15_crit_edge, label %if.then14

while.end.if.end15_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !579
  call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %consumer_counter.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %consumer_counter.i.i, align 2
  %38 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %count, align 4
  %add.i = add i16 %39, %37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !561
  call void @arm_heavy_mb() #11
  %conv.i.i93 = zext i16 %add.i to i32
  %hw_addr.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_addr.i.i, align 4
  %doorbell_offset.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %doorbell_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %doorbell_offset.i.i, align 8
  %type.i.i = getelementptr i8, ptr %t, i32 -4
  %44 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i94 = getelementptr [4 x i16], ptr @mlxsw_pci_doorbell_type_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i94 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.i.i94, align 2
  %conv1.i.i95 = zext i16 %47 to i32
  %add.i.i = add i32 %43, %conv1.i.i95
  %48 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num, align 2
  %conv2.i.i = zext i8 %49 to i32
  %mul.i.i = shl nuw nsw i32 %conv2.i.i, 2
  %add3.i.i = add i32 %add.i.i, %mul.i.i
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 %add3.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i.i93) #11, !srcloc !562
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !580
  call void @arm_heavy_mb() #11
  %50 = ptrtoint ptr %consumer_counter.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %consumer_counter.i.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !581
  call void @arm_heavy_mb() #11
  %conv.i.i97 = zext i16 %51 to i32
  %52 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_addr.i.i, align 4
  %54 = ptrtoint ptr %doorbell_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %doorbell_offset.i.i, align 8
  %56 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i101 = getelementptr [4 x i16], ptr @mlxsw_pci_doorbell_arm_type_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.i.i101, align 2
  %conv1.i.i102 = zext i16 %59 to i32
  %add.i.i103 = add i32 %55, %conv1.i.i102
  %60 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num, align 2
  %conv2.i.i105 = zext i8 %61 to i32
  %mul.i.i106 = shl nuw nsw i32 %conv2.i.i105, 2
  %add3.i.i107 = add i32 %add.i.i103, %mul.i.i106
  %add.ptr.i.i108 = getelementptr i8, ptr %53, i32 %add3.i.i107
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i108, i32 %conv.i.i97) #11, !srcloc !562
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.end.if.end15_crit_edge
  br i1 %cq_handle.2.off0, label %if.end18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %conv20 = zext i8 %3 to i32
  %call21 = call i32 @_find_next_bit_be(ptr noundef nonnull %active_cqns, i32 noundef %conv20, i32 noundef 0) #11
  %conv23135 = and i32 %call21, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23135, i32 %conv20)
  %cmp25136 = icmp ult i32 %conv23135, %conv20
  br i1 %cmp25136, label %for.body.lr.ph, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end18
  %arrayidx.i.i109 = getelementptr %struct.mlxsw_pci, ptr %1, i32 0, i32 3, i32 2
  br label %for.body

for.body:                                         ; preds = %mlxsw_pci_queue_tasklet_schedule.exit.for.body_crit_edge, %for.body.lr.ph
  %conv23138 = phi i32 [ %conv23135, %for.body.lr.ph ], [ %conv23, %mlxsw_pci_queue_tasklet_schedule.exit.for.body_crit_edge ]
  %cqn.0.in137 = phi i32 [ %call21, %for.body.lr.ph ], [ %call31, %mlxsw_pci_queue_tasklet_schedule.exit.for.body_crit_edge ]
  %62 = ptrtoint ptr %arrayidx.i.i109 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i109, align 8
  %idxprom.i.i = and i32 %cqn.0.in137, 255
  %state.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %63, i32 %idxprom.i.i, i32 9, i32 1
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i110 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i110, label %if.then.i.i, label %for.body.mlxsw_pci_queue_tasklet_schedule.exit_crit_edge

for.body.mlxsw_pci_queue_tasklet_schedule.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_queue_tasklet_schedule.exit

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet.i = getelementptr %struct.mlxsw_pci_queue, ptr %63, i32 %idxprom.i.i, i32 9
  call void @__tasklet_schedule(ptr noundef %tasklet.i) #11
  br label %mlxsw_pci_queue_tasklet_schedule.exit

mlxsw_pci_queue_tasklet_schedule.exit:            ; preds = %if.then.i.i, %for.body.mlxsw_pci_queue_tasklet_schedule.exit_crit_edge
  %add = add nuw nsw i32 %conv23138, 1
  %call31 = call i32 @_find_next_bit_be(ptr noundef nonnull %active_cqns, i32 noundef %conv20, i32 noundef %add) #11
  %conv23 = and i32 %call31, 255
  %cmp25 = icmp ult i32 %conv23, %conv20
  br i1 %cmp25, label %mlxsw_pci_queue_tasklet_schedule.exit.for.body_crit_edge, label %mlxsw_pci_queue_tasklet_schedule.exit.cleanup_crit_edge

mlxsw_pci_queue_tasklet_schedule.exit.cleanup_crit_edge: ; preds = %mlxsw_pci_queue_tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

mlxsw_pci_queue_tasklet_schedule.exit.for.body_crit_edge: ; preds = %mlxsw_pci_queue_tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %mlxsw_pci_queue_tasklet_schedule.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %active_cqns) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_pci_cq_pre_init(ptr nocapture noundef readonly %mlxsw_pci, ptr nocapture noundef %q) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_cqe_ver = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 10
  %0 = ptrtoint ptr %max_cqe_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_cqe_ver, align 8
  %v = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 11, i32 0, i32 2
  %2 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 6
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 2
  %num_sdq_cqs = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 11
  %5 = ptrtoint ptr %num_sdq_cqs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_sdq_cqs, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp4 = icmp ult i8 %4, %6
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %v, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_pci_cq_init(ptr nocapture noundef readonly %mlxsw_pci, ptr noundef %mbox, ptr nocapture noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %consumer_counter = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %consumer_counter to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %consumer_counter, align 2
  %count = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 5
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp221.not = icmp eq i16 %2, 0
  br i1 %cmp221.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %elem_info.i.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 2
  %v = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 11, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0222 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %elem_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %elem_info.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %4, i32 %i.0222
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cond = icmp eq i32 %8, 2
  %spec.select = select i1 %cond, i32 7, i32 3
  %arrayidx.i.i54.i = getelementptr i32, ptr %6, i32 %spec.select
  %9 = ptrtoint ptr %arrayidx.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i54.i, align 4
  %or.i.i57.i = or i32 %10, 1
  store i32 %or.i.i57.i, ptr %arrayidx.i.i54.i, align 4
  %inc = add nuw nsw i32 %i.0222, 1
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %count, align 4
  %conv = zext i16 %12 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %v3 = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 11, i32 0, i32 2
  %13 = ptrtoint ptr %v3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v3, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.324)
  switch i32 %14, label %for.end.if.end11_crit_edge [
    i32 1, label %mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set.exit
    i32 2, label %mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set.exit95
  ]

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set.exit:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mbox, align 4
  %and7.i.i = and i32 %17, 268435455
  br label %if.end11.sink.split

mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set.exit95:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbox, align 4
  %and7.i.i94 = and i32 %19, 268435455
  %or.i.i = or i32 %and7.i.i94, 268435456
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set.exit95, %mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set.exit
  %or.i.i.sink = phi i32 [ %or.i.i, %mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set.exit95 ], [ %and7.i.i, %mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set.exit ]
  %20 = ptrtoint ptr %mbox to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i.sink, ptr %mbox, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %for.end.if.end11_crit_edge
  %21 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mbox, align 4
  %or.i.i122 = and i32 %22, -16777473
  %and7.i.i145 = or i32 %or.i.i122, 16777216
  store i32 %and7.i.i145, ptr %mbox, align 4
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %count, align 4
  %conv22 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i.i146 = icmp eq i16 %24, 0
  %25 = tail call i32 @llvm.ctlz.i32(i32 %conv22, i1 true) #11, !range !578
  %sub.i.op.i = and i32 %25, 15
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 15
  %and6.i.i170 = select i1 %tobool.not.i.i146, i32 15, i32 %sub.i.op.i.op
  %26 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mbox, align 4
  %and7.i.i173 = and i32 %27, -16
  %or.i.i174 = or i32 %and6.i.i170, %and7.i.i173
  store i32 %or.i.i174, ptr %mbox, align 4
  %mapaddr.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mapaddr.i, align 4
  %30 = and i32 %29, -2048
  %and8.i.i.peel = zext i32 %30 to i64
  %arrayidx.i.i195.peel = getelementptr i64, ptr %mbox, i32 2
  %31 = ptrtoint ptr %arrayidx.i.i195.peel to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i.i195.peel, align 8
  %and9.i.i.peel = and i64 %32, 2047
  %or.i.i197.peel = or i64 %and9.i.i.peel, %and8.i.i.peel
  store i64 %or.i.i197.peel, ptr %arrayidx.i.i195.peel, align 8
  %33 = load i32, ptr %mapaddr.i, align 4
  %add.i = add i32 %33, 4096
  %34 = and i32 %add.i, -2048
  %and8.i.i = zext i32 %34 to i64
  %arrayidx.i.i195 = getelementptr i64, ptr %mbox, i32 3
  %35 = ptrtoint ptr %arrayidx.i.i195 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx.i.i195, align 8
  %and9.i.i = and i64 %36, 2047
  %or.i.i197 = or i64 %and9.i.i, %and8.i.i
  store i64 %or.i.i197, ptr %arrayidx.i.i195, align 8
  %37 = load i32, ptr %mapaddr.i, align 4
  %add.i.1 = add i32 %37, 8192
  %38 = and i32 %add.i.1, -2048
  %and8.i.i.1 = zext i32 %38 to i64
  %arrayidx.i.i195.1 = getelementptr i64, ptr %mbox, i32 4
  %39 = ptrtoint ptr %arrayidx.i.i195.1 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx.i.i195.1, align 8
  %and9.i.i.1 = and i64 %40, 2047
  %or.i.i197.1 = or i64 %and9.i.i.1, %and8.i.i.1
  store i64 %or.i.i197.1, ptr %arrayidx.i.i195.1, align 8
  %41 = load i32, ptr %mapaddr.i, align 4
  %add.i.2 = add i32 %41, 12288
  %42 = and i32 %add.i.2, -2048
  %and8.i.i.2 = zext i32 %42 to i64
  %arrayidx.i.i195.2 = getelementptr i64, ptr %mbox, i32 5
  %43 = ptrtoint ptr %arrayidx.i.i195.2 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx.i.i195.2, align 8
  %and9.i.i.2 = and i64 %44, 2047
  %or.i.i197.2 = or i64 %and9.i.i.2, %and8.i.i.2
  store i64 %or.i.i197.2, ptr %arrayidx.i.i195.2, align 8
  %45 = load i32, ptr %mapaddr.i, align 4
  %add.i.3 = add i32 %45, 16384
  %46 = and i32 %add.i.3, -2048
  %and8.i.i.3 = zext i32 %46 to i64
  %arrayidx.i.i195.3 = getelementptr i64, ptr %mbox, i32 6
  %47 = ptrtoint ptr %arrayidx.i.i195.3 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx.i.i195.3, align 8
  %and9.i.i.3 = and i64 %48, 2047
  %or.i.i197.3 = or i64 %and9.i.i.3, %and8.i.i.3
  store i64 %or.i.i197.3, ptr %arrayidx.i.i195.3, align 8
  %49 = load i32, ptr %mapaddr.i, align 4
  %add.i.4 = add i32 %49, 20480
  %50 = and i32 %add.i.4, -2048
  %and8.i.i.4 = zext i32 %50 to i64
  %arrayidx.i.i195.4 = getelementptr i64, ptr %mbox, i32 7
  %51 = ptrtoint ptr %arrayidx.i.i195.4 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx.i.i195.4, align 8
  %and9.i.i.4 = and i64 %52, 2047
  %or.i.i197.4 = or i64 %and9.i.i.4, %and8.i.i.4
  store i64 %or.i.i197.4, ptr %arrayidx.i.i195.4, align 8
  %53 = load i32, ptr %mapaddr.i, align 4
  %add.i.5 = add i32 %53, 24576
  %54 = and i32 %add.i.5, -2048
  %and8.i.i.5 = zext i32 %54 to i64
  %arrayidx.i.i195.5 = getelementptr i64, ptr %mbox, i32 8
  %55 = ptrtoint ptr %arrayidx.i.i195.5 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx.i.i195.5, align 8
  %and9.i.i.5 = and i64 %56, 2047
  %or.i.i197.5 = or i64 %and9.i.i.5, %and8.i.i.5
  store i64 %or.i.i197.5, ptr %arrayidx.i.i195.5, align 8
  %57 = load i32, ptr %mapaddr.i, align 4
  %add.i.6 = add i32 %57, 28672
  %58 = and i32 %add.i.6, -2048
  %and8.i.i.6 = zext i32 %58 to i64
  %arrayidx.i.i195.6 = getelementptr i64, ptr %mbox, i32 9
  %59 = ptrtoint ptr %arrayidx.i.i195.6 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx.i.i195.6, align 8
  %and9.i.i.6 = and i64 %60, 2047
  %or.i.i197.6 = or i64 %and9.i.i.6, %and8.i.i.6
  store i64 %or.i.i197.6, ptr %arrayidx.i.i195.6, align 8
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  %61 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %core, align 4
  %num = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 6
  %63 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %num, align 2
  %conv36 = zext i8 %64 to i32
  %call.i.i = tail call i32 @mlxsw_cmd_exec(ptr noundef %62, i16 noundef zeroext 22, i8 noundef zeroext 0, i32 noundef %conv36, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %mbox, i32 noundef 4096, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end39, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end39:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !579
  tail call void @arm_heavy_mb() #11
  %65 = ptrtoint ptr %consumer_counter to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %consumer_counter, align 2
  %67 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %count, align 4
  %add.i198 = add i16 %68, %66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !561
  tail call void @arm_heavy_mb() #11
  %conv.i.i199 = zext i16 %add.i198 to i32
  %hw_addr.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 1
  %69 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw_addr.i.i, align 4
  %doorbell_offset.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 4
  %71 = ptrtoint ptr %doorbell_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %doorbell_offset.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 8
  %73 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i200 = getelementptr [4 x i16], ptr @mlxsw_pci_doorbell_type_offset, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx.i.i200 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx.i.i200, align 2
  %conv1.i.i = zext i16 %76 to i32
  %add.i.i = add i32 %72, %conv1.i.i
  %77 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %num, align 2
  %conv2.i.i201 = zext i8 %78 to i32
  %mul.i.i = shl nuw nsw i32 %conv2.i.i201, 2
  %add3.i.i = add i32 %add.i.i, %mul.i.i
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i.i199) #11, !srcloc !562
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !580
  tail call void @arm_heavy_mb() #11
  %79 = ptrtoint ptr %consumer_counter to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %consumer_counter, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !581
  tail call void @arm_heavy_mb() #11
  %conv.i.i203 = zext i16 %80 to i32
  %81 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw_addr.i.i, align 4
  %83 = ptrtoint ptr %doorbell_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %doorbell_offset.i.i, align 8
  %85 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i207 = getelementptr [4 x i16], ptr @mlxsw_pci_doorbell_arm_type_offset, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx.i.i207 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.i.i207, align 2
  %conv1.i.i208 = zext i16 %88 to i32
  %add.i.i209 = add i32 %84, %conv1.i.i208
  %89 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %num, align 2
  %conv2.i.i211 = zext i8 %90 to i32
  %mul.i.i212 = shl nuw nsw i32 %conv2.i.i211, 2
  %add3.i.i213 = add i32 %add.i.i209, %mul.i.i212
  %add.ptr.i.i214 = getelementptr i8, ptr %82, i32 %add3.i.i213
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i214, i32 %conv.i.i203) #11, !srcloc !562
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end11.cleanup_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_pci_cq_fini(ptr nocapture noundef readonly %mlxsw_pci, ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %num = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 6
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 2
  %conv = zext i8 %3 to i32
  %call.i.i = tail call i32 @mlxsw_cmd_exec(ptr noundef %1, i16 noundef zeroext 23, i8 noundef zeroext 0, i32 noundef %conv, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_pci_cq_tasklet(ptr nocapture noundef %t) #0 align 64 {
entry:
  %ncqe = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr i8, ptr %t, i32 24
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %count = getelementptr i8, ptr %t, i32 -8
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %count, align 4
  %4 = lshr i16 %3, 1
  %5 = zext i16 %4 to i32
  %consumer_counter.i.i = getelementptr i8, ptr %t, i32 -10
  %elem_info.i.i.i = getelementptr i8, ptr %t, i32 -16
  %v.i = getelementptr i8, ptr %t, i32 36
  %elem_size = getelementptr i8, ptr %t, i32 -5
  %hw_addr.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 1
  %doorbell_offset.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %1, i32 0, i32 4
  %type.i.i = getelementptr i8, ptr %t, i32 -4
  %num.i.i = getelementptr i8, ptr %t, i32 -6
  %u = getelementptr i8, ptr %t, i32 28
  %arrayidx.i.i125 = getelementptr %struct.mlxsw_pci, ptr %1, i32 0, i32 3, i32 0
  %arrayidx.i.i126 = getelementptr %struct.mlxsw_pci, ptr %1, i32 0, i32 3, i32 1
  %comp_rdq_count = getelementptr i8, ptr %t, i32 32
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %items.0 = phi i32 [ 0, %entry ], [ %inc20, %if.end.while.cond_crit_edge ]
  %6 = ptrtoint ptr %consumer_counter.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %consumer_counter.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count, align 4
  %conv1.i.i = zext i16 %9 to i32
  %sub.i.i = add nuw nsw i32 %conv1.i.i, 65535
  %and.i.i = and i32 %sub.i.i, %conv.i.i
  %10 = ptrtoint ptr %elem_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %elem_info.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %11, i32 %and.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  %14 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %v.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cond = icmp eq i32 %15, 2
  %spec.select = select i1 %cond, i32 7, i32 3
  %arrayidx.i.i48.i.i = getelementptr i32, ptr %13, i32 %spec.select
  %16 = ptrtoint ptr %arrayidx.i.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %shr.i.i50.sink.i.i = load i32, ptr %arrayidx.i.i48.i.i, align 4
  %and4.i.i54.i.i = and i32 %shr.i.i50.sink.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i54.i.i)
  %tobool.i = icmp ne i32 %and4.i.i54.i.i, 0
  %and7.i.i = and i16 %9, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and7.i.i)
  %tobool3.i.i = icmp ne i16 %and7.i.i, 0
  %cmp.i.i = xor i1 %tobool3.i.i, %tobool.i
  br i1 %cmp.i.i, label %while.cond.while.end_crit_edge, label %mlxsw_pci_cq_sw_cqe_get.exit

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

mlxsw_pci_cq_sw_cqe_get.exit:                     ; preds = %while.cond
  %inc.i = add i16 %7, 1
  %17 = ptrtoint ptr %consumer_counter.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %inc.i, ptr %consumer_counter.i.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !583
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %mlxsw_pci_cq_sw_cqe_get.exit.while.end_crit_edge, label %mlxsw_pci_cqe_wqe_counter_get.exit

mlxsw_pci_cq_sw_cqe_get.exit.while.end_crit_edge: ; preds = %mlxsw_pci_cq_sw_cqe_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

mlxsw_pci_cqe_wqe_counter_get.exit:               ; preds = %mlxsw_pci_cq_sw_cqe_get.exit
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %shr.i.i = lshr i32 %19, 16
  %conv2 = trunc i32 %shr.i.i to i16
  %20 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v.i, align 4
  %.off = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %mlxsw_pci_cqe_wqe_counter_get.exit.mlxsw_pci_cqe_dqn_get.exit_crit_edge, label %mlxsw_pci_cqe_sr_get.exit

mlxsw_pci_cqe_wqe_counter_get.exit.mlxsw_pci_cqe_dqn_get.exit_crit_edge: ; preds = %mlxsw_pci_cqe_wqe_counter_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_cqe_dqn_get.exit

mlxsw_pci_cqe_sr_get.exit:                        ; preds = %mlxsw_pci_cqe_wqe_counter_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i53 = getelementptr i32, ptr %13, i32 3
  br label %mlxsw_pci_cqe_dqn_get.exit

mlxsw_pci_cqe_dqn_get.exit:                       ; preds = %mlxsw_pci_cqe_sr_get.exit, %mlxsw_pci_cqe_wqe_counter_get.exit.mlxsw_pci_cqe_dqn_get.exit_crit_edge
  %arrayidx.i.i.i53.sink = phi ptr [ %arrayidx.i.i.i53, %mlxsw_pci_cqe_sr_get.exit ], [ %13, %mlxsw_pci_cqe_wqe_counter_get.exit.mlxsw_pci_cqe_dqn_get.exit_crit_edge ]
  %.sink239 = phi i32 [ 6, %mlxsw_pci_cqe_sr_get.exit ], [ 26, %mlxsw_pci_cqe_wqe_counter_get.exit.mlxsw_pci_cqe_dqn_get.exit_crit_edge ]
  %.sink59.i111 = phi ptr [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe0_dqn_item, i32 0, i32 7, i32 0), %mlxsw_pci_cqe_sr_get.exit ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_dqn_item, i32 0, i32 7, i32 0), %mlxsw_pci_cqe_wqe_counter_get.exit.mlxsw_pci_cqe_dqn_get.exit_crit_edge ]
  %.sink58.i113 = phi ptr [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe0_dqn_item, i32 0, i32 5), %mlxsw_pci_cqe_sr_get.exit ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_dqn_item, i32 0, i32 5), %mlxsw_pci_cqe_wqe_counter_get.exit.mlxsw_pci_cqe_dqn_get.exit_crit_edge ]
  %22 = ptrtoint ptr %arrayidx.i.i.i53.sink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i53.sink, align 4
  %shr.i.i49.sink.i112.in.in = getelementptr i32, ptr %13, i32 3
  %24 = ptrtoint ptr %shr.i.i49.sink.i112.in.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %shr.i.i49.sink.i112.in = load i32, ptr %shr.i.i49.sink.i112.in.in, align 4
  %shr.i.i49.sink.i112 = lshr i32 %shr.i.i49.sink.i112.in, 1
  %25 = ptrtoint ptr %.sink59.i111 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %.sink59.i111, align 2
  %conv1.i.i50.i115 = zext i8 %26 to i32
  %sub2.i.i51.i116 = sub nsw i32 32, %conv1.i.i50.i115
  %shr3.i.i52.i117 = lshr i32 -1, %sub2.i.i51.i116
  %and4.i.i53.i118 = and i32 %shr3.i.i52.i117, %shr.i.i49.sink.i112
  %27 = ptrtoint ptr %.sink58.i113 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %.sink58.i113, align 4, !range !558
  %29 = zext i8 %28 to i32
  %spec.select.i.i56.i121 = shl i32 %and4.i.i53.i118, %29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ncqe) #11
  %30 = call ptr @memset(ptr %ncqe, i32 255, i32 32)
  %31 = ptrtoint ptr %elem_size to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %elem_size, align 1
  %conv9 = zext i8 %32 to i32
  %33 = call ptr @memcpy(ptr %ncqe, ptr %13, i32 %conv9)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !579
  call void @arm_heavy_mb() #11
  %34 = ptrtoint ptr %consumer_counter.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %consumer_counter.i.i, align 2
  %36 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %count, align 4
  %add.i = add i16 %37, %35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !561
  call void @arm_heavy_mb() #11
  %conv.i.i122 = zext i16 %add.i to i32
  %38 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_addr.i.i, align 4
  %40 = ptrtoint ptr %doorbell_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %doorbell_offset.i.i, align 8
  %42 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i123 = getelementptr [4 x i16], ptr @mlxsw_pci_doorbell_type_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i123 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i.i123, align 2
  %conv1.i.i124 = zext i16 %45 to i32
  %add.i.i = add i32 %41, %conv1.i.i124
  %46 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num.i.i, align 2
  %conv2.i.i = zext i8 %47 to i32
  %mul.i.i = shl nuw nsw i32 %conv2.i.i, 2
  %add3.i.i = add i32 %add.i.i, %mul.i.i
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %add3.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i.i122) #11, !srcloc !562
  %48 = shl i32 1, %.sink239
  %49 = and i32 %23, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool10.not = icmp eq i32 %49, 0
  br i1 %tobool10.not, label %if.else, label %if.then

if.then:                                          ; preds = %mlxsw_pci_cqe_dqn_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %arrayidx.i.i125 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i125, align 8
  %idxprom.i.i = and i32 %spec.select.i.i56.i121, 255
  %arrayidx1.i.i = getelementptr %struct.mlxsw_pci_queue, ptr %51, i32 %idxprom.i.i
  call fastcc void @mlxsw_pci_cqe_sdq_handle(ptr noundef %1, ptr noundef %arrayidx1.i.i, i16 noundef zeroext %conv2)
  br label %if.end

if.else:                                          ; preds = %mlxsw_pci_cqe_dqn_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %arrayidx.i.i126 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i126, align 8
  %idxprom.i.i127 = and i32 %spec.select.i.i56.i121, 255
  %arrayidx1.i.i128 = getelementptr %struct.mlxsw_pci_queue, ptr %53, i32 %idxprom.i.i127
  %54 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %v.i, align 4
  call fastcc void @mlxsw_pci_cqe_rdq_handle(ptr noundef %1, ptr noundef %arrayidx1.i.i128, i16 noundef zeroext %conv2, i32 noundef %55, ptr noundef nonnull %ncqe)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %comp_rdq_count.sink236 = phi ptr [ %comp_rdq_count, %if.else ], [ %u, %if.then ]
  %56 = ptrtoint ptr %comp_rdq_count.sink236 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %comp_rdq_count.sink236, align 4
  %inc19 = add i32 %57, 1
  store i32 %inc19, ptr %comp_rdq_count.sink236, align 4
  %inc20 = add i32 %items.0, 1
  %cmp = icmp eq i32 %inc20, %5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ncqe) #11
  br i1 %cmp, label %if.end.while.end_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %mlxsw_pci_cq_sw_cqe_get.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %items.1 = phi i32 [ %5, %if.end.while.end_crit_edge ], [ %items.0, %mlxsw_pci_cq_sw_cqe_get.exit.while.end_crit_edge ], [ %items.0, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %items.1)
  %tobool27.not = icmp eq i32 %items.1, 0
  br i1 %tobool27.not, label %while.end.if.end29_crit_edge, label %if.then28

while.end.if.end29_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then28:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !580
  call void @arm_heavy_mb() #11
  %58 = ptrtoint ptr %consumer_counter.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %consumer_counter.i.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !581
  call void @arm_heavy_mb() #11
  %conv.i.i130 = zext i16 %59 to i32
  %60 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_addr.i.i, align 4
  %62 = ptrtoint ptr %doorbell_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %doorbell_offset.i.i, align 8
  %64 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i134 = getelementptr [4 x i16], ptr @mlxsw_pci_doorbell_arm_type_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx.i.i134 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.i.i134, align 2
  %conv1.i.i135 = zext i16 %67 to i32
  %add.i.i136 = add i32 %63, %conv1.i.i135
  %68 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num.i.i, align 2
  %conv2.i.i138 = zext i8 %69 to i32
  %mul.i.i139 = shl nuw nsw i32 %conv2.i.i138, 2
  %add3.i.i140 = add i32 %add.i.i136, %mul.i.i139
  %add.ptr.i.i141 = getelementptr i8, ptr %61, i32 %add3.i.i140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i141, i32 %conv.i.i130) #11, !srcloc !562
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %while.end.if.end29_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @mlxsw_pci_cq_elem_count(ptr nocapture noundef readonly %q) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %v = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 11, i32 0, i32 2
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %conv = select i1 %cmp, i16 1024, i16 2048
  ret i16 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @mlxsw_pci_cq_elem_size(ptr nocapture noundef readonly %q) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %v = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 11, i32 0, i32 2
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %conv = select i1 %cmp, i8 32, i8 16
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_pci_cqe_sdq_handle(ptr nocapture noundef readonly %mlxsw_pci, ptr noundef %q, i16 noundef zeroext %consumer_counter_limit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_pci, align 8
  tail call void @_raw_spin_lock(ptr noundef %q) #11
  %consumer_counter.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 4
  %2 = ptrtoint ptr %consumer_counter.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %consumer_counter.i, align 2
  %conv.i = zext i16 %3 to i32
  %count.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 5
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count.i, align 4
  %conv1.i = zext i16 %5 to i32
  %sub.i = add nuw nsw i32 %conv1.i, 65535
  %and.i = and i32 %sub.i, %conv.i
  %elem_info.i.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 2
  %6 = ptrtoint ptr %elem_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %elem_info.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %7, i32 %and.i
  %u = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %7, i32 %and.i, i32 1
  %8 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %u, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %tx_info.sroa.0.0.copyload40 = load i16, ptr %cb.i, align 4
  %tx_info.sroa.5.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %tx_info.sroa.5.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %tx_info.sroa.5.0.copyload41 = load i8, ptr %tx_info.sroa.5.0..sroa_idx, align 2
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  tail call fastcc void @mlxsw_pci_wqe_frag_unmap(ptr noundef %mlxsw_pci, ptr noundef %13, i32 noundef 0, i32 noundef 1)
  tail call fastcc void @mlxsw_pci_wqe_frag_unmap(ptr noundef %mlxsw_pci, ptr noundef %13, i32 noundef 1, i32 noundef 1)
  tail call fastcc void @mlxsw_pci_wqe_frag_unmap(ptr noundef %mlxsw_pci, ptr noundef %13, i32 noundef 2, i32 noundef 1)
  %14 = and i8 %tx_info.sroa.5.0.copyload41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 17
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_flags, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not = icmp eq i8 %19, 0
  br i1 %tobool7.not, label %land.rhs.if.end_crit_edge, label %if.end.thread, !prof !559

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.thread:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  %20 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core, align 4
  tail call void @mlxsw_core_ptp_transmitted(ptr noundef %21, ptr noundef %9, i16 noundef zeroext %tx_info.sroa.0.0.copyload40) #11
  br label %if.end12

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge, %if.end.thread
  %22 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %u, align 4
  %23 = ptrtoint ptr %consumer_counter.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %consumer_counter.i, align 2
  %inc15 = add i16 %24, 1
  store i16 %inc15, ptr %consumer_counter.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %consumer_counter_limit)
  %cmp18.not = icmp eq i16 %24, %consumer_counter_limit
  br i1 %cmp18.not, label %if.end12.if.end33_crit_edge, label %do.body

if.end12.if.end33_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxsw_pci_cqe_sdq_handle.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxsw_pci_cqe_sdq_handle, %land.lhs.true)) #11
          to label %if.end33 [label %land.lhs.true], !srcloc !584

land.lhs.true:                                    ; preds = %do.body
  %call29 = tail call i32 @___ratelimit(ptr noundef nonnull @mlxsw_pci_cqe_sdq_handle._rs, ptr noundef nonnull @.str.253) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true.if.end33_crit_edge, label %if.then31

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlxsw_pci_cqe_sdq_handle.descriptor, ptr noundef %dev, ptr noundef nonnull @.str.254) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %land.lhs.true.if.end33_crit_edge, %do.body, %if.end12.if.end33_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %q) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_pci_cqe_rdq_handle(ptr nocapture noundef readonly %mlxsw_pci, ptr nocapture noundef %q, i16 noundef zeroext %consumer_counter_limit, i32 noundef %cqe_v, ptr noundef readonly %cqe) unnamed_addr #0 align 64 {
entry:
  %rx_info = alloca %struct.mlxsw_rx_info, align 4
  %wqe = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_pci, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rx_info) #11
  %2 = call ptr @memset(ptr %rx_info, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wqe) #11
  %consumer_counter.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 4
  %3 = call ptr @memset(ptr %wqe, i32 255, i32 32)
  %4 = ptrtoint ptr %consumer_counter.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %consumer_counter.i, align 2
  %conv.i = zext i16 %5 to i32
  %count.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 5
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %count.i, align 4
  %conv1.i = zext i16 %7 to i32
  %sub.i = add nuw nsw i32 %conv1.i, 65535
  %and.i = and i32 %sub.i, %conv.i
  %elem_info.i.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 2
  %8 = ptrtoint ptr %elem_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %elem_info.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %9, i32 %and.i
  %u = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %9, i32 %and.i, i32 1
  %10 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %u, align 4
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %14 = call ptr @memcpy(ptr %wqe, ptr %13, i32 32)
  %inc = add i16 %5, 1
  store i16 %inc, ptr %consumer_counter.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %consumer_counter_limit)
  %cmp.not = icmp eq i16 %5, %consumer_counter_limit
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxsw_pci_cqe_rdq_handle.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxsw_pci_cqe_rdq_handle, %land.lhs.true)) #11
          to label %if.end11 [label %land.lhs.true], !srcloc !584

land.lhs.true:                                    ; preds = %do.body
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @mlxsw_pci_cqe_rdq_handle._rs, ptr noundef nonnull @.str.259) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end11_crit_edge, label %if.then10

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlxsw_pci_cqe_rdq_handle.descriptor, ptr noundef %dev, ptr noundef nonnull @.str.260) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %do.body, %entry.if.end11_crit_edge
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 10002, i32 noundef 2592) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end11.do.body15_crit_edge, label %if.end.i

if.end11.do.body15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

if.end.i:                                         ; preds = %if.end11
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %18, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %20, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %call1.i = tail call fastcc i32 @mlxsw_pci_wqe_frag_map(ptr noundef %mlxsw_pci, ptr noundef %16, i32 noundef 0, ptr noundef %add.ptr.i.i.i.i, i32 noundef 10000, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end26, label %err_frag_map.i

err_frag_map.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #11
  br label %do.body15

do.body15:                                        ; preds = %err_frag_map.i, %if.end11.do.body15_crit_edge
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @mlxsw_pci_cqe_rdq_handle._rs.261, ptr noundef nonnull @.str.259) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body15.out_crit_edge, label %do.end21

do.body15.out_crit_edge:                          ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end21:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.262) #15
  br label %out

if.end26:                                         ; preds = %if.end.i
  %21 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i.i, ptr %u, align 4
  call fastcc void @mlxsw_pci_wqe_frag_unmap(ptr noundef %mlxsw_pci, ptr noundef nonnull %wqe, i32 noundef 0, i32 noundef 2)
  %22 = zext i32 %cqe_v to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.325)
  switch i32 %cqe_v, label %if.end26.mlxsw_pci_cqe_lag_get.exit_crit_edge [
    i32 2, label %mlxsw_pci_cqe12_lag_get.exit57.i
    i32 1, label %mlxsw_pci_cqe12_lag_get.exit.i
  ]

if.end26.mlxsw_pci_cqe_lag_get.exit_crit_edge:    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_cqe_lag_get.exit

mlxsw_pci_cqe12_lag_get.exit.i:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_cqe_lag_get.exit

mlxsw_pci_cqe12_lag_get.exit57.i:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_cqe_lag_get.exit

mlxsw_pci_cqe_lag_get.exit:                       ; preds = %mlxsw_pci_cqe12_lag_get.exit57.i, %mlxsw_pci_cqe12_lag_get.exit.i, %if.end26.mlxsw_pci_cqe_lag_get.exit_crit_edge
  %.sink486 = phi i32 [ 24, %mlxsw_pci_cqe12_lag_get.exit.i ], [ 24, %mlxsw_pci_cqe12_lag_get.exit57.i ], [ 23, %if.end26.mlxsw_pci_cqe_lag_get.exit_crit_edge ]
  %.sink59.i = phi ptr [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_lag_item, i32 0, i32 7, i32 0), %mlxsw_pci_cqe12_lag_get.exit.i ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_lag_item, i32 0, i32 7, i32 0), %mlxsw_pci_cqe12_lag_get.exit57.i ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe0_lag_item, i32 0, i32 7, i32 0), %if.end26.mlxsw_pci_cqe_lag_get.exit_crit_edge ]
  %.sink58.i = phi ptr [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_lag_item, i32 0, i32 5), %mlxsw_pci_cqe12_lag_get.exit.i ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_lag_item, i32 0, i32 5), %mlxsw_pci_cqe12_lag_get.exit57.i ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe0_lag_item, i32 0, i32 5), %if.end26.mlxsw_pci_cqe_lag_get.exit_crit_edge ]
  %23 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cqe, align 4
  %shr.i.i.i = lshr i32 %24, %.sink486
  %25 = ptrtoint ptr %.sink59.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %.sink59.i, align 2
  %conv1.i.i50.i = zext i8 %26 to i32
  %sub2.i.i51.i = sub nsw i32 32, %conv1.i.i50.i
  %shr3.i.i52.i = lshr i32 -1, %sub2.i.i51.i
  %and4.i.i53.i = and i32 %shr3.i.i52.i, %shr.i.i.i
  %27 = ptrtoint ptr %.sink58.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %.sink58.i, align 4, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i54.i = icmp eq i8 %28, 0
  %shl.i.i55.i = select i1 %tobool.not.i.i54.i, i32 0, i32 %.sink486
  %spec.select.i.i56.i = shl i32 %and4.i.i53.i, %shl.i.i55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i56.i)
  %tobool29.not = icmp eq i32 %spec.select.i.i56.i, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %mlxsw_pci_cqe_lag_get.exit
  %29 = ptrtoint ptr %rx_info to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %rx_info, align 4
  %30 = zext i32 %cqe_v to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.326)
  switch i32 %cqe_v, label %mlxsw_pci_cqe_lag_id_get.exit [
    i32 2, label %mlxsw_pci_cqe_lag_id_get.exit.thread
    i32 1, label %mlxsw_pci_cqe_lag_id_get.exit.thread471
  ]

mlxsw_pci_cqe_lag_id_get.exit.thread471:          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cqe, align 4
  %conv32483 = trunc i32 %32 to i16
  %u33484 = getelementptr inbounds %struct.mlxsw_rx_info, ptr %rx_info, i32 0, i32 1
  %33 = ptrtoint ptr %u33484 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv32483, ptr %u33484, align 2
  %shr.i.i24.i231 = lshr i32 %32, 16
  br label %mlxsw_pci_cqe_lag_subport_get.exit

mlxsw_pci_cqe_lag_id_get.exit.thread:             ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cqe, align 4
  %conv32469 = trunc i32 %35 to i16
  %u33470 = getelementptr inbounds %struct.mlxsw_rx_info, ptr %rx_info, i32 0, i32 1
  %36 = ptrtoint ptr %u33470 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv32469, ptr %u33470, align 2
  %shr.i.i49.i250 = lshr i32 %35, 16
  br label %mlxsw_pci_cqe_lag_subport_get.exit

mlxsw_pci_cqe_lag_id_get.exit:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cqe, align 4
  %39 = trunc i32 %38 to i16
  %40 = lshr i16 %39, 4
  %u33 = getelementptr inbounds %struct.mlxsw_rx_info, ptr %rx_info, i32 0, i32 1
  %41 = ptrtoint ptr %u33 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %u33, align 2
  br label %mlxsw_pci_cqe_lag_subport_get.exit

mlxsw_pci_cqe_lag_subport_get.exit:               ; preds = %mlxsw_pci_cqe_lag_id_get.exit, %mlxsw_pci_cqe_lag_id_get.exit.thread, %mlxsw_pci_cqe_lag_id_get.exit.thread471
  %.sink59.i251 = phi ptr [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_lag_subport_item, i32 0, i32 7, i32 0), %mlxsw_pci_cqe_lag_id_get.exit.thread ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_lag_subport_item, i32 0, i32 7, i32 0), %mlxsw_pci_cqe_lag_id_get.exit.thread471 ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe0_lag_subport_item, i32 0, i32 7, i32 0), %mlxsw_pci_cqe_lag_id_get.exit ]
  %shr.i.i49.sink.i252 = phi i32 [ %shr.i.i49.i250, %mlxsw_pci_cqe_lag_id_get.exit.thread ], [ %shr.i.i24.i231, %mlxsw_pci_cqe_lag_id_get.exit.thread471 ], [ %38, %mlxsw_pci_cqe_lag_id_get.exit ]
  %.sink58.i253 = phi ptr [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_lag_subport_item, i32 0, i32 5), %mlxsw_pci_cqe_lag_id_get.exit.thread ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_lag_subport_item, i32 0, i32 5), %mlxsw_pci_cqe_lag_id_get.exit.thread471 ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe0_lag_subport_item, i32 0, i32 5), %mlxsw_pci_cqe_lag_id_get.exit ]
  %conv.i.i48.sink.i254 = phi i32 [ 16, %mlxsw_pci_cqe_lag_id_get.exit.thread ], [ 16, %mlxsw_pci_cqe_lag_id_get.exit.thread471 ], [ 0, %mlxsw_pci_cqe_lag_id_get.exit ]
  %42 = ptrtoint ptr %.sink59.i251 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %.sink59.i251, align 2
  %conv1.i.i50.i255 = zext i8 %43 to i32
  %sub2.i.i51.i256 = sub nsw i32 32, %conv1.i.i50.i255
  %shr3.i.i52.i257 = lshr i32 -1, %sub2.i.i51.i256
  %and4.i.i53.i258 = and i32 %shr3.i.i52.i257, %shr.i.i49.sink.i252
  %44 = ptrtoint ptr %.sink58.i253 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %.sink58.i253, align 4, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i54.i259 = icmp eq i8 %45, 0
  %shl.i.i55.i260 = select i1 %tobool.not.i.i54.i259, i32 0, i32 %conv.i.i48.sink.i254
  %spec.select.i.i56.i261 = shl i32 %and4.i.i53.i258, %shl.i.i55.i260
  %conv35 = trunc i32 %spec.select.i.i56.i261 to i16
  %lag_port_index = getelementptr inbounds %struct.mlxsw_rx_info, ptr %rx_info, i32 0, i32 2
  %46 = ptrtoint ptr %lag_port_index to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv35, ptr %lag_port_index, align 4
  br label %mlxsw_pci_cqe_trap_id_get.exit

if.else:                                          ; preds = %mlxsw_pci_cqe_lag_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %rx_info to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %rx_info, align 4
  %48 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cqe, align 4
  %conv38 = trunc i32 %49 to i16
  %u39 = getelementptr inbounds %struct.mlxsw_rx_info, ptr %rx_info, i32 0, i32 1
  %50 = ptrtoint ptr %u39 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv38, ptr %u39, align 2
  br label %mlxsw_pci_cqe_trap_id_get.exit

mlxsw_pci_cqe_trap_id_get.exit:                   ; preds = %if.else, %mlxsw_pci_cqe_lag_subport_get.exit
  %arrayidx.i.i279 = getelementptr i32, ptr %cqe, i32 2
  %51 = ptrtoint ptr %arrayidx.i.i279 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i279, align 4
  %and4.i.i285 = and i32 %52, 1023
  %trap_id = getelementptr inbounds %struct.mlxsw_rx_info, ptr %rx_info, i32 0, i32 4
  %53 = ptrtoint ptr %trap_id to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and4.i.i285, ptr %trap_id, align 4
  %call41.off = add nsw i32 %and4.i.i285, -451
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call41.off)
  %switch = icmp ult i32 %call41.off, 2
  br i1 %switch, label %if.then48, label %if.else56

if.then48:                                        ; preds = %mlxsw_pci_cqe_trap_id_get.exit
  %max_cqe_ver = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 10
  %54 = ptrtoint ptr %max_cqe_ver to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_cqe_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp49 = icmp ugt i32 %55, 1
  br i1 %cmp49, label %mlxsw_pci_cqe2_user_def_val_orig_pkt_len_get.exit, label %if.then48.if.end53_crit_edge

if.then48.if.end53_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

mlxsw_pci_cqe2_user_def_val_orig_pkt_len_get.exit: ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i304 = getelementptr i32, ptr %cqe, i32 5
  %56 = ptrtoint ptr %arrayidx.i.i304 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i304, align 4
  %and4.i.i310 = and i32 %57, 1048575
  br label %if.end53

if.end53:                                         ; preds = %mlxsw_pci_cqe2_user_def_val_orig_pkt_len_get.exit, %if.then48.if.end53_crit_edge
  %cookie_index.0 = phi i32 [ %and4.i.i310, %mlxsw_pci_cqe2_user_def_val_orig_pkt_len_get.exit ], [ 0, %if.then48.if.end53_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3
  %58 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %cookie_index.0, ptr %cb.i, align 4
  br label %mlxsw_pci_cqe_byte_count_get.exit

if.else56:                                        ; preds = %mlxsw_pci_cqe_trap_id_get.exit
  %59 = and i32 %52, 1016
  call void @__sanitizer_cov_trace_const_cmp4(i32 544, i32 %59)
  %60 = icmp eq i32 %59, 544
  br i1 %60, label %land.lhs.true64, label %if.else71

land.lhs.true64:                                  ; preds = %if.else56
  %max_cqe_ver65 = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 10
  %61 = ptrtoint ptr %max_cqe_ver65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_cqe_ver65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp66 = icmp ugt i32 %62, 1
  br i1 %cmp66, label %mlxsw_pci_cqe2_mirror_reason_get.exit, label %land.lhs.true64.mlxsw_pci_cqe_byte_count_get.exit_crit_edge

land.lhs.true64.mlxsw_pci_cqe_byte_count_get.exit_crit_edge: ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_cqe_byte_count_get.exit

mlxsw_pci_cqe2_mirror_reason_get.exit:            ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i329 = getelementptr i32, ptr %cqe, i32 6
  %63 = ptrtoint ptr %arrayidx.i.i329 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i329, align 4
  %shr.i.i331 = lshr i32 %64, 24
  %conv70 = trunc i32 %shr.i.i331 to i8
  %mirror_reason = getelementptr inbounds %struct.mlxsw_rx_info, ptr %rx_info, i32 0, i32 3
  %65 = ptrtoint ptr %mirror_reason to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv70, ptr %mirror_reason, align 2
  %arrayidx.i.i.i.i = getelementptr i32, ptr %cqe, i32 2
  %66 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %arrayidx.i.i22.i.i = getelementptr i32, ptr %cqe, i32 5
  %68 = ptrtoint ptr %arrayidx.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i22.i.i, align 4
  %shr.i.i24.i.i = lshr i32 %69, 20
  %70 = lshr i32 %67, 4
  %conv3.i.i = and i32 %70, 61440
  %or.i.i = or i32 %shr.i.i24.i.i, %conv3.i.i
  %tx_congestion.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or.i.i)
  %cmp.not.i = icmp eq i32 %or.i.i, 65535
  %tx_congestion_valid4.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 17
  %71 = ptrtoint ptr %tx_congestion_valid4.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load5.i = load i8, ptr %tx_congestion_valid4.i, align 1
  %bf.clear6.i = and i8 %bf.load5.i, -65
  %masksel.i = select i1 %cmp.not.i, i8 0, i8 64
  %bf.clear6.sink.i = or i8 %masksel.i, %bf.clear6.i
  store i8 %bf.clear6.sink.i, ptr %tx_congestion_valid4.i, align 1
  %conv.i339 = shl nuw nsw i32 %or.i.i, 13
  %72 = ptrtoint ptr %tx_congestion.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv.i339, ptr %tx_congestion.i, align 4
  %arrayidx.i.i.i355 = getelementptr i32, ptr %cqe, i32 7
  %73 = ptrtoint ptr %arrayidx.i.i.i355 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i.i355, align 4
  %shr.i.i.i357 = lshr i32 %74, 8
  %latency.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 4
  %75 = ptrtoint ptr %latency.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shr.i.i.i357, ptr %latency.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %shr.i.i.i357)
  %cmp11.not.i = icmp eq i32 %shr.i.i.i357, 16777215
  %bf.clear20.i = and i8 %bf.clear6.sink.i, 127
  %masksel80.i = select i1 %cmp11.not.i, i8 0, i8 -128
  %bf.clear20.sink.i = or i8 %masksel80.i, %bf.clear20.i
  %76 = ptrtoint ptr %tx_congestion_valid4.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %bf.clear20.sink.i, ptr %tx_congestion_valid4.i, align 1
  %arrayidx.i.i70.i = getelementptr i32, ptr %cqe, i32 4
  %77 = ptrtoint ptr %arrayidx.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i70.i, align 4
  %shr.i.i72.i = lshr i32 %78, 27
  %conv24.i = trunc i32 %shr.i.i72.i to i8
  %tx_tc.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 16
  %79 = ptrtoint ptr %tx_tc.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv24.i, ptr %tx_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %shr.i.i72.i)
  %cmp27.not.i = icmp eq i32 %shr.i.i72.i, 31
  %bf.clear36.i = and i8 %bf.clear20.sink.i, -33
  %masksel81.i = select i1 %cmp27.not.i, i8 0, i8 32
  %bf.clear36.sink.i = or i8 %masksel81.i, %bf.clear36.i
  %80 = ptrtoint ptr %tx_congestion_valid4.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %bf.clear36.sink.i, ptr %tx_congestion_valid4.i, align 1
  tail call fastcc void @mlxsw_pci_cqe_rdq_md_tx_port_init(ptr noundef %11, ptr noundef %cqe) #11
  br label %mlxsw_pci_cqe_byte_count_get.exit

if.else71:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %and4.i.i285)
  %cmp73 = icmp eq i32 %and4.i.i285, 56
  br i1 %cmp73, label %land.lhs.true75, label %if.else71.mlxsw_pci_cqe_byte_count_get.exit_crit_edge

if.else71.mlxsw_pci_cqe_byte_count_get.exit_crit_edge: ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_cqe_byte_count_get.exit

land.lhs.true75:                                  ; preds = %if.else71
  %max_cqe_ver76 = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 10
  %81 = ptrtoint ptr %max_cqe_ver76 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_cqe_ver76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp77 = icmp ugt i32 %82, 1
  br i1 %cmp77, label %if.then79, label %land.lhs.true75.mlxsw_pci_cqe_byte_count_get.exit_crit_edge

land.lhs.true75.mlxsw_pci_cqe_byte_count_get.exit_crit_edge: ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_cqe_byte_count_get.exit

if.then79:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mlxsw_pci_cqe_rdq_md_tx_port_init(ptr noundef %11, ptr noundef %cqe)
  br label %mlxsw_pci_cqe_byte_count_get.exit

mlxsw_pci_cqe_byte_count_get.exit:                ; preds = %if.then79, %land.lhs.true75.mlxsw_pci_cqe_byte_count_get.exit_crit_edge, %if.else71.mlxsw_pci_cqe_byte_count_get.exit_crit_edge, %mlxsw_pci_cqe2_mirror_reason_get.exit, %land.lhs.true64.mlxsw_pci_cqe_byte_count_get.exit_crit_edge, %if.end53
  %arrayidx.i.i374 = getelementptr i32, ptr %cqe, i32 1
  %83 = ptrtoint ptr %arrayidx.i.i374 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i.i374, align 4
  %and4.i.i380 = and i32 %84, 16383
  %85 = zext i32 %cqe_v to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.327)
  switch i32 %cqe_v, label %mlxsw_pci_cqe_byte_count_get.exit.mlxsw_pci_cqe_crc_get.exit_crit_edge [
    i32 2, label %mlxsw_pci_cqe12_crc_get.exit57.i
    i32 1, label %mlxsw_pci_cqe12_crc_get.exit.i
  ]

mlxsw_pci_cqe_byte_count_get.exit.mlxsw_pci_cqe_crc_get.exit_crit_edge: ; preds = %mlxsw_pci_cqe_byte_count_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_cqe_crc_get.exit

mlxsw_pci_cqe12_crc_get.exit.i:                   ; preds = %mlxsw_pci_cqe_byte_count_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_cqe_crc_get.exit

mlxsw_pci_cqe12_crc_get.exit57.i:                 ; preds = %mlxsw_pci_cqe_byte_count_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_cqe_crc_get.exit

mlxsw_pci_cqe_crc_get.exit:                       ; preds = %mlxsw_pci_cqe12_crc_get.exit57.i, %mlxsw_pci_cqe12_crc_get.exit.i, %mlxsw_pci_cqe_byte_count_get.exit.mlxsw_pci_cqe_crc_get.exit_crit_edge
  %.sink487 = phi i32 [ 9, %mlxsw_pci_cqe12_crc_get.exit.i ], [ 9, %mlxsw_pci_cqe12_crc_get.exit57.i ], [ 8, %mlxsw_pci_cqe_byte_count_get.exit.mlxsw_pci_cqe_crc_get.exit_crit_edge ]
  %.sink59.i441 = phi ptr [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_crc_item, i32 0, i32 7, i32 0), %mlxsw_pci_cqe12_crc_get.exit.i ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_crc_item, i32 0, i32 7, i32 0), %mlxsw_pci_cqe12_crc_get.exit57.i ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe0_crc_item, i32 0, i32 7, i32 0), %mlxsw_pci_cqe_byte_count_get.exit.mlxsw_pci_cqe_crc_get.exit_crit_edge ]
  %.sink58.i443 = phi ptr [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_crc_item, i32 0, i32 5), %mlxsw_pci_cqe12_crc_get.exit.i ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe12_crc_item, i32 0, i32 5), %mlxsw_pci_cqe12_crc_get.exit57.i ], [ getelementptr inbounds ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, ptr @mlxsw_pci_cqe0_crc_item, i32 0, i32 5), %mlxsw_pci_cqe_byte_count_get.exit.mlxsw_pci_cqe_crc_get.exit_crit_edge ]
  %arrayidx.i.i.i400 = getelementptr i32, ptr %cqe, i32 3
  %86 = ptrtoint ptr %arrayidx.i.i.i400 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i.i.i400, align 4
  %shr.i.i.i402 = lshr i32 %87, %.sink487
  %88 = ptrtoint ptr %.sink59.i441 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %.sink59.i441, align 2
  %conv1.i.i50.i445 = zext i8 %89 to i32
  %sub2.i.i51.i446 = sub nsw i32 32, %conv1.i.i50.i445
  %shr3.i.i52.i447 = lshr i32 -1, %sub2.i.i51.i446
  %and4.i.i53.i448 = and i32 %shr3.i.i52.i447, %shr.i.i.i402
  %90 = ptrtoint ptr %.sink58.i443 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %.sink58.i443, align 4, !range !558
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i.i54.i449 = icmp eq i8 %91, 0
  %shl.i.i55.i450 = select i1 %tobool.not.i.i54.i449, i32 0, i32 %.sink487
  %spec.select.i.i56.i451 = shl i32 %and4.i.i53.i448, %shl.i.i55.i450
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i56.i451)
  %tobool86.not = icmp eq i32 %spec.select.i.i56.i451, 0
  %sub = add nuw nsw i32 %and4.i.i380, 65532
  %byte_count.0 = select i1 %tobool86.not, i32 %and4.i.i380, i32 %sub
  %conv91 = and i32 %byte_count.0, 65535
  %call92 = tail call ptr @skb_put(ptr noundef %11, i32 noundef %conv91) #11
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  %92 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %core, align 4
  call void @mlxsw_core_skb_receive(ptr noundef %93, ptr noundef %11, ptr noundef nonnull %rx_info) #11
  br label %out

out:                                              ; preds = %mlxsw_pci_cqe_crc_get.exit, %do.end21, %do.body15.out_crit_edge
  %producer_counter = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 3
  %94 = ptrtoint ptr %producer_counter to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %producer_counter, align 4
  %inc93 = add i16 %95, 1
  store i16 %inc93, ptr %producer_counter, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !560
  call void @arm_heavy_mb() #11
  %96 = ptrtoint ptr %producer_counter to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %producer_counter, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !561
  call void @arm_heavy_mb() #11
  %conv.i.i452 = zext i16 %97 to i32
  %hw_addr.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 1
  %98 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw_addr.i.i, align 4
  %doorbell_offset.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 4
  %100 = ptrtoint ptr %doorbell_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %doorbell_offset.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 8
  %102 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i453 = getelementptr [4 x i16], ptr @mlxsw_pci_doorbell_type_offset, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx.i.i453 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx.i.i453, align 2
  %conv1.i.i454 = zext i16 %105 to i32
  %add.i.i = add i32 %101, %conv1.i.i454
  %num.i.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 6
  %106 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %num.i.i, align 2
  %conv2.i.i = zext i8 %107 to i32
  %mul.i.i = shl nuw nsw i32 %conv2.i.i, 2
  %add3.i.i = add i32 %add.i.i, %mul.i.i
  %add.ptr.i.i = getelementptr i8, ptr %99, i32 %add3.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i.i452) #11, !srcloc !562
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wqe) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rx_info) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_pci_wqe_frag_unmap(ptr nocapture noundef readonly %mlxsw_pci, ptr nocapture noundef readonly %wqe, i32 noundef %index, i32 noundef %direction) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i.i.i = and i32 %index, 65535
  %0 = add nuw nsw i32 %conv.i.i.i, 1
  %arrayidx.i.i = getelementptr i16, ptr %wqe, i32 %0
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx.i.i, align 2
  %3 = and i16 %2, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and7.i.i = zext i16 %3 to i32
  %4 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mlxsw_pci, align 8
  %6 = add nuw nsw i32 %conv.i.i.i, 1
  %arrayidx.i.i33 = getelementptr i64, ptr %wqe, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i33 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i.i33, align 8
  %conv5 = trunc i64 %8 to i32
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv5, i32 noundef %and7.i.i, i32 noundef %direction, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_core_ptp_transmitted(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_pci_cqe_rdq_md_tx_port_init(ptr nocapture noundef %skb, ptr nocapture noundef readonly %cqe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr i32, ptr %cqe, i32 4
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %tx_port_is_lag5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 17
  %3 = ptrtoint ptr %tx_port_is_lag5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load6 = load i8, ptr %tx_port_is_lag5, align 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set = or i8 %bf.load6, 8
  %4 = ptrtoint ptr %tx_port_is_lag5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.set, ptr %tx_port_is_lag5, align 1
  %arrayidx.i.i52 = getelementptr i32, ptr %cqe, i32 4
  %5 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i52, align 4
  %conv = trunc i32 %6 to i16
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %7, align 4
  %arrayidx.i.i77 = getelementptr i32, ptr %cqe, i32 4
  %9 = ptrtoint ptr %arrayidx.i.i77 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i77, align 4
  %shr.i.i79 = lshr i32 %10, 16
  %11 = trunc i32 %shr.i.i79 to i16
  %conv4 = and i16 %11, 255
  %tx_lag_port_index = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %12 = ptrtoint ptr %tx_lag_port_index to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv4, ptr %tx_lag_port_index, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear7 = and i8 %bf.load6, -9
  %13 = ptrtoint ptr %tx_port_is_lag5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.clear7, ptr %tx_port_is_lag5, align 1
  %arrayidx.i.i102 = getelementptr i32, ptr %cqe, i32 4
  %14 = ptrtoint ptr %arrayidx.i.i102 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i102, align 4
  %conv10 = trunc i32 %15 to i16
  %16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv10, ptr %16, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %20)
  %switch = icmp ugt i16 %20, -3
  %tx_port_valid21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 17
  %21 = ptrtoint ptr %tx_port_valid21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load22 = load i8, ptr %tx_port_valid21, align 1
  %bf.clear23 = and i8 %bf.load22, -17
  %masksel = select i1 %switch, i8 0, i8 16
  %bf.clear23.sink = or i8 %bf.clear23, %masksel
  store i8 %bf.clear23.sink, ptr %tx_port_valid21, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_core_skb_receive(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_pci_wqe_frag_map(ptr nocapture noundef readonly %mlxsw_pci, ptr nocapture noundef %wqe, i32 noundef %index, ptr noundef %frag_data, i32 noundef %frag_len, i32 noundef %direction) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mlxsw_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_pci, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %frag_data) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !559

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.264, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.265, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #11
  br label %do.body

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %frag_data, i32 noundef %frag_len) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %frag_data to i32
  %sub.i = add i32 %7, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %6, i32 %shr.i
  %and.i = and i32 %7, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %frag_len, i32 noundef %direction, i32 noundef 0) #11
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.body_crit_edge, label %if.end13

dma_map_single_attrs.exit.do.body_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %dma_map_single_attrs.exit.do.body_crit_edge, %dma_map_single_attrs.exit.thread
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @mlxsw_pci_wqe_frag_map._rs, ptr noundef nonnull @__func__.mlxsw_pci_wqe_frag_map) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.263) #15
  br label %cleanup

if.end13:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv14 = zext i32 %call41.i to i64
  %conv.i.i.i = and i32 %index, 65535
  %8 = add nuw nsw i32 %conv.i.i.i, 1
  %arrayidx.i.i = getelementptr i64, ptr %wqe, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv14, ptr %arrayidx.i.i, align 8
  %10 = add nuw nsw i32 %conv.i.i.i, 1
  %11 = trunc i32 %frag_len to i16
  %conv12.i.i = and i16 %11, 16383
  %arrayidx.i.i53 = getelementptr i16, ptr %wqe, i32 %10
  %12 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.i53, align 2
  %conv16.i.i = and i16 %13, -16384
  %or1.i.i = or i16 %conv16.i.i, %conv12.i.i
  store i16 %or1.i.i, ptr %arrayidx.i.i53, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_pci_sdq_init(ptr nocapture noundef readonly %mlxsw_pci, ptr noundef %mbox, ptr nocapture noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %producer_counter = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 3
  %0 = ptrtoint ptr %producer_counter to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %producer_counter, align 4
  %consumer_counter = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 4
  %1 = ptrtoint ptr %consumer_counter to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %consumer_counter, align 2
  %num = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 6
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 2
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %cond = select i1 %cmp, i32 0, i32 196608
  %spec.select.i.i = shl nuw i32 %conv, 24
  %4 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mbox, align 4
  %and7.i.i = and i32 %5, 4259776
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %spec.select.i.i54 = select i1 %cmp, i32 8388608, i32 0
  %or.i.i63 = or i32 %spec.select.i.i54, %or.i.i
  %or.i.i91 = or i32 %cond, %or.i.i63
  %or.i.i118 = or i32 %or.i.i91, 3
  store i32 %or.i.i118, ptr %mbox, align 4
  %mapaddr.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mapaddr.i, align 4
  %8 = and i32 %7, -4096
  %and8.i.i.peel = zext i32 %8 to i64
  %arrayidx.i.i137.peel = getelementptr i64, ptr %mbox, i32 2
  %9 = ptrtoint ptr %arrayidx.i.i137.peel to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.i.i137.peel, align 8
  %and9.i.i.peel = and i64 %10, 4095
  %or.i.i139.peel = or i64 %and9.i.i.peel, %and8.i.i.peel
  store i64 %or.i.i139.peel, ptr %arrayidx.i.i137.peel, align 8
  %11 = load i32, ptr %mapaddr.i, align 4
  %add.i = add i32 %11, 4096
  %12 = and i32 %add.i, -4096
  %and8.i.i = zext i32 %12 to i64
  %arrayidx.i.i137 = getelementptr i64, ptr %mbox, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i137 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.i.i137, align 8
  %and9.i.i = and i64 %14, 4095
  %or.i.i139 = or i64 %and9.i.i, %and8.i.i
  store i64 %or.i.i139, ptr %arrayidx.i.i137, align 8
  %15 = load i32, ptr %mapaddr.i, align 4
  %add.i.1 = add i32 %15, 8192
  %16 = and i32 %add.i.1, -4096
  %and8.i.i.1 = zext i32 %16 to i64
  %arrayidx.i.i137.1 = getelementptr i64, ptr %mbox, i32 4
  %17 = ptrtoint ptr %arrayidx.i.i137.1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i.i137.1, align 8
  %and9.i.i.1 = and i64 %18, 4095
  %or.i.i139.1 = or i64 %and9.i.i.1, %and8.i.i.1
  store i64 %or.i.i139.1, ptr %arrayidx.i.i137.1, align 8
  %19 = load i32, ptr %mapaddr.i, align 4
  %add.i.2 = add i32 %19, 12288
  %20 = and i32 %add.i.2, -4096
  %and8.i.i.2 = zext i32 %20 to i64
  %arrayidx.i.i137.2 = getelementptr i64, ptr %mbox, i32 5
  %21 = ptrtoint ptr %arrayidx.i.i137.2 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i.i137.2, align 8
  %and9.i.i.2 = and i64 %22, 4095
  %or.i.i139.2 = or i64 %and9.i.i.2, %and8.i.i.2
  store i64 %or.i.i139.2, ptr %arrayidx.i.i137.2, align 8
  %23 = load i32, ptr %mapaddr.i, align 4
  %add.i.3 = add i32 %23, 16384
  %24 = and i32 %add.i.3, -4096
  %and8.i.i.3 = zext i32 %24 to i64
  %arrayidx.i.i137.3 = getelementptr i64, ptr %mbox, i32 6
  %25 = ptrtoint ptr %arrayidx.i.i137.3 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i.i137.3, align 8
  %and9.i.i.3 = and i64 %26, 4095
  %or.i.i139.3 = or i64 %and9.i.i.3, %and8.i.i.3
  store i64 %or.i.i139.3, ptr %arrayidx.i.i137.3, align 8
  %27 = load i32, ptr %mapaddr.i, align 4
  %add.i.4 = add i32 %27, 20480
  %28 = and i32 %add.i.4, -4096
  %and8.i.i.4 = zext i32 %28 to i64
  %arrayidx.i.i137.4 = getelementptr i64, ptr %mbox, i32 7
  %29 = ptrtoint ptr %arrayidx.i.i137.4 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.i.i137.4, align 8
  %and9.i.i.4 = and i64 %30, 4095
  %or.i.i139.4 = or i64 %and9.i.i.4, %and8.i.i.4
  store i64 %or.i.i139.4, ptr %arrayidx.i.i137.4, align 8
  %31 = load i32, ptr %mapaddr.i, align 4
  %add.i.5 = add i32 %31, 24576
  %32 = and i32 %add.i.5, -4096
  %and8.i.i.5 = zext i32 %32 to i64
  %arrayidx.i.i137.5 = getelementptr i64, ptr %mbox, i32 8
  %33 = ptrtoint ptr %arrayidx.i.i137.5 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.i.i137.5, align 8
  %and9.i.i.5 = and i64 %34, 4095
  %or.i.i139.5 = or i64 %and9.i.i.5, %and8.i.i.5
  store i64 %or.i.i139.5, ptr %arrayidx.i.i137.5, align 8
  %35 = load i32, ptr %mapaddr.i, align 4
  %add.i.6 = add i32 %35, 28672
  %36 = and i32 %add.i.6, -4096
  %and8.i.i.6 = zext i32 %36 to i64
  %arrayidx.i.i137.6 = getelementptr i64, ptr %mbox, i32 9
  %37 = ptrtoint ptr %arrayidx.i.i137.6 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.i.i137.6, align 8
  %and9.i.i.6 = and i64 %38, 4095
  %or.i.i139.6 = or i64 %and9.i.i.6, %and8.i.i.6
  store i64 %or.i.i139.6, ptr %arrayidx.i.i137.6, align 8
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  %39 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core, align 4
  %41 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num, align 2
  %conv14 = zext i8 %42 to i32
  %call.i.i.i140 = tail call i32 @mlxsw_cmd_exec(ptr noundef %40, i16 noundef zeroext 513, i8 noundef zeroext 0, i32 noundef %conv14, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %mbox, i32 noundef 4096, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i140)
  %tobool.not = icmp eq i32 %call.i.i.i140, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !560
  tail call void @arm_heavy_mb() #11
  %43 = ptrtoint ptr %producer_counter to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %producer_counter, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !561
  tail call void @arm_heavy_mb() #11
  %conv.i.i141 = zext i16 %44 to i32
  %hw_addr.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 1
  %45 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_addr.i.i, align 4
  %doorbell_offset.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 4
  %47 = ptrtoint ptr %doorbell_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %doorbell_offset.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 8
  %49 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i142 = getelementptr [4 x i16], ptr @mlxsw_pci_doorbell_type_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i.i142 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.i.i142, align 2
  %conv1.i.i = zext i16 %52 to i32
  %add.i.i = add i32 %48, %conv1.i.i
  %53 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num, align 2
  %conv2.i.i143 = zext i8 %54 to i32
  %mul.i.i = shl nuw nsw i32 %conv2.i.i143, 2
  %add3.i.i = add i32 %add.i.i, %mul.i.i
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i.i141) #11, !srcloc !562
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i.i.i140
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_pci_sdq_fini(ptr nocapture noundef readonly %mlxsw_pci, ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %num = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 6
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 2
  %conv = zext i8 %3 to i32
  %call.i.i.i = tail call i32 @mlxsw_cmd_exec(ptr noundef %1, i16 noundef zeroext 514, i8 noundef zeroext 0, i32 noundef %conv, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_pci_rdq_init(ptr nocapture noundef readonly %mlxsw_pci, ptr noundef %mbox, ptr nocapture noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i.i = getelementptr %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %count.i.i, align 4
  %producer_counter = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 3
  %2 = ptrtoint ptr %producer_counter to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %producer_counter, align 4
  %consumer_counter = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 4
  %3 = ptrtoint ptr %consumer_counter to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %consumer_counter, align 2
  %conv = zext i8 %1 to i32
  %num = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 6
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num, align 2
  %conv1 = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv1, %conv
  %spec.select.i.i = shl i32 %add, 24
  %6 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbox, align 4
  %and7.i.i = and i32 %7, 16777152
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %or.i.i111 = or i32 %or.i.i, 3
  store i32 %or.i.i111, ptr %mbox, align 4
  %mapaddr.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mapaddr.i, align 4
  %10 = and i32 %9, -4096
  %and8.i.i.peel = zext i32 %10 to i64
  %arrayidx.i.i130.peel = getelementptr i64, ptr %mbox, i32 2
  %11 = ptrtoint ptr %arrayidx.i.i130.peel to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx.i.i130.peel, align 8
  %and9.i.i.peel = and i64 %12, 4095
  %or.i.i132.peel = or i64 %and9.i.i.peel, %and8.i.i.peel
  store i64 %or.i.i132.peel, ptr %arrayidx.i.i130.peel, align 8
  %13 = load i32, ptr %mapaddr.i, align 4
  %add.i = add i32 %13, 4096
  %14 = and i32 %add.i, -4096
  %and8.i.i = zext i32 %14 to i64
  %arrayidx.i.i130 = getelementptr i64, ptr %mbox, i32 3
  %15 = ptrtoint ptr %arrayidx.i.i130 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.i.i130, align 8
  %and9.i.i = and i64 %16, 4095
  %or.i.i132 = or i64 %and9.i.i, %and8.i.i
  store i64 %or.i.i132, ptr %arrayidx.i.i130, align 8
  %17 = load i32, ptr %mapaddr.i, align 4
  %add.i.1 = add i32 %17, 8192
  %18 = and i32 %add.i.1, -4096
  %and8.i.i.1 = zext i32 %18 to i64
  %arrayidx.i.i130.1 = getelementptr i64, ptr %mbox, i32 4
  %19 = ptrtoint ptr %arrayidx.i.i130.1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx.i.i130.1, align 8
  %and9.i.i.1 = and i64 %20, 4095
  %or.i.i132.1 = or i64 %and9.i.i.1, %and8.i.i.1
  store i64 %or.i.i132.1, ptr %arrayidx.i.i130.1, align 8
  %21 = load i32, ptr %mapaddr.i, align 4
  %add.i.2 = add i32 %21, 12288
  %22 = and i32 %add.i.2, -4096
  %and8.i.i.2 = zext i32 %22 to i64
  %arrayidx.i.i130.2 = getelementptr i64, ptr %mbox, i32 5
  %23 = ptrtoint ptr %arrayidx.i.i130.2 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.i.i130.2, align 8
  %and9.i.i.2 = and i64 %24, 4095
  %or.i.i132.2 = or i64 %and9.i.i.2, %and8.i.i.2
  store i64 %or.i.i132.2, ptr %arrayidx.i.i130.2, align 8
  %25 = load i32, ptr %mapaddr.i, align 4
  %add.i.3 = add i32 %25, 16384
  %26 = and i32 %add.i.3, -4096
  %and8.i.i.3 = zext i32 %26 to i64
  %arrayidx.i.i130.3 = getelementptr i64, ptr %mbox, i32 6
  %27 = ptrtoint ptr %arrayidx.i.i130.3 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx.i.i130.3, align 8
  %and9.i.i.3 = and i64 %28, 4095
  %or.i.i132.3 = or i64 %and9.i.i.3, %and8.i.i.3
  store i64 %or.i.i132.3, ptr %arrayidx.i.i130.3, align 8
  %29 = load i32, ptr %mapaddr.i, align 4
  %add.i.4 = add i32 %29, 20480
  %30 = and i32 %add.i.4, -4096
  %and8.i.i.4 = zext i32 %30 to i64
  %arrayidx.i.i130.4 = getelementptr i64, ptr %mbox, i32 7
  %31 = ptrtoint ptr %arrayidx.i.i130.4 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i.i130.4, align 8
  %and9.i.i.4 = and i64 %32, 4095
  %or.i.i132.4 = or i64 %and9.i.i.4, %and8.i.i.4
  store i64 %or.i.i132.4, ptr %arrayidx.i.i130.4, align 8
  %33 = load i32, ptr %mapaddr.i, align 4
  %add.i.5 = add i32 %33, 24576
  %34 = and i32 %add.i.5, -4096
  %and8.i.i.5 = zext i32 %34 to i64
  %arrayidx.i.i130.5 = getelementptr i64, ptr %mbox, i32 8
  %35 = ptrtoint ptr %arrayidx.i.i130.5 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx.i.i130.5, align 8
  %and9.i.i.5 = and i64 %36, 4095
  %or.i.i132.5 = or i64 %and9.i.i.5, %and8.i.i.5
  store i64 %or.i.i132.5, ptr %arrayidx.i.i130.5, align 8
  %37 = load i32, ptr %mapaddr.i, align 4
  %add.i.6 = add i32 %37, 28672
  %38 = and i32 %add.i.6, -4096
  %and8.i.i.6 = zext i32 %38 to i64
  %arrayidx.i.i130.6 = getelementptr i64, ptr %mbox, i32 9
  %39 = ptrtoint ptr %arrayidx.i.i130.6 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx.i.i130.6, align 8
  %and9.i.i.6 = and i64 %40, 4095
  %or.i.i132.6 = or i64 %and9.i.i.6, %and8.i.i.6
  store i64 %or.i.i132.6, ptr %arrayidx.i.i130.6, align 8
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  %41 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %core, align 4
  %43 = load i8, ptr %num, align 2
  %conv7 = zext i8 %43 to i32
  %call.i.i.i133 = tail call i32 @mlxsw_cmd_exec(ptr noundef %42, i16 noundef zeroext 513, i8 noundef zeroext 1, i32 noundef %conv7, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %mbox, i32 noundef 4096, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i133)
  %tobool.not = icmp eq i32 %call.i.i.i133, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !560
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %producer_counter to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %producer_counter, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !561
  tail call void @arm_heavy_mb() #11
  %conv.i.i134 = zext i16 %45 to i32
  %hw_addr.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 1
  %46 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_addr.i.i, align 4
  %doorbell_offset.i.i = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 4
  %48 = ptrtoint ptr %doorbell_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %doorbell_offset.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 8
  %50 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i135 = getelementptr [4 x i16], ptr @mlxsw_pci_doorbell_type_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i.i135 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.i.i135, align 2
  %conv1.i.i = zext i16 %53 to i32
  %add.i.i = add i32 %49, %conv1.i.i
  %54 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num, align 2
  %conv2.i.i136 = zext i8 %55 to i32
  %mul.i.i = shl nuw nsw i32 %conv2.i.i136, 2
  %add3.i.i = add i32 %add.i.i, %mul.i.i
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i.i134) #11, !srcloc !562
  %count = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 5
  %56 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp11169.not = icmp eq i16 %57, 0
  br i1 %cmp11169.not, label %if.end.cleanup_crit_edge, label %for.body13.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body13.lr.ph:                                 ; preds = %if.end
  %conv10168 = zext i16 %57 to i32
  %elem_info.i.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 2
  br label %for.body13

for.body13:                                       ; preds = %if.end30.for.body13_crit_edge, %for.body13.lr.ph
  %conv10171 = phi i32 [ %conv10168, %for.body13.lr.ph ], [ %conv10, %if.end30.for.body13_crit_edge ]
  %58 = phi i16 [ %57, %for.body13.lr.ph ], [ %87, %if.end30.for.body13_crit_edge ]
  %i.1170 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc34, %if.end30.for.body13_crit_edge ]
  %59 = ptrtoint ptr %producer_counter to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %producer_counter, align 4
  %61 = ptrtoint ptr %consumer_counter to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %consumer_counter, align 2
  %sub5.i = sub i16 %60, %62
  call void @__sanitizer_cov_trace_cmp2(i16 %sub5.i, i16 %58)
  %cmp.i = icmp eq i16 %sub5.i, %58
  br i1 %cmp.i, label %for.body13.do.body20_crit_edge, label %mlxsw_pci_queue_elem_info_producer_get.exit

for.body13.do.body20_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20

mlxsw_pci_queue_elem_info_producer_get.exit:      ; preds = %for.body13
  %conv.i = zext i16 %60 to i32
  %sub.i = add nuw nsw i32 %conv10171, 65535
  %and.i = and i32 %sub.i, %conv.i
  %63 = ptrtoint ptr %elem_info.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %elem_info.i.i, align 4
  %arrayidx.i.i138 = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %64, i32 %and.i
  %tobool15.not = icmp eq ptr %arrayidx.i.i138, null
  br i1 %tobool15.not, label %mlxsw_pci_queue_elem_info_producer_get.exit.do.body20_crit_edge, label %do.end26, !prof !577

mlxsw_pci_queue_elem_info_producer_get.exit.do.body20_crit_edge: ; preds = %mlxsw_pci_queue_elem_info_producer_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20

do.body20:                                        ; preds = %mlxsw_pci_queue_elem_info_producer_get.exit.do.body20_crit_edge, %for.body13.do.body20_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/mellanox/mlxsw/pci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #11, !srcloc !585
  unreachable

do.end26:                                         ; preds = %mlxsw_pci_queue_elem_info_producer_get.exit
  %65 = ptrtoint ptr %arrayidx.i.i138 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i138, align 4
  %call.i.i.i139 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 10002, i32 noundef 2592) #11
  %tobool.not.i.i.i140 = icmp eq ptr %call.i.i.i139, null
  br i1 %tobool.not.i.i.i140, label %do.end26.mlxsw_pci_rdq_skb_alloc.exit_crit_edge, label %if.end.i141

do.end26.mlxsw_pci_rdq_skb_alloc.exit_crit_edge:  ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_pci_rdq_skb_alloc.exit

if.end.i141:                                      ; preds = %do.end26
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i139, i32 0, i32 19
  %67 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %68, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i139, i32 0, i32 16
  %69 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %70, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %call1.i = tail call fastcc i32 @mlxsw_pci_wqe_frag_map(ptr noundef %mlxsw_pci, ptr noundef %66, i32 noundef 0, ptr noundef %add.ptr.i.i.i.i, i32 noundef 10000, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end30, label %err_frag_map.i

err_frag_map.i:                                   ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i139, i32 noundef 1) #11
  br label %mlxsw_pci_rdq_skb_alloc.exit

mlxsw_pci_rdq_skb_alloc.exit:                     ; preds = %err_frag_map.i, %do.end26.mlxsw_pci_rdq_skb_alloc.exit_crit_edge
  %retval.0.i142 = phi i32 [ %call1.i, %err_frag_map.i ], [ -12, %do.end26.mlxsw_pci_rdq_skb_alloc.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1170)
  %cmp37173.not = icmp eq i32 %i.1170, 0
  br i1 %cmp37173.not, label %mlxsw_pci_rdq_skb_alloc.exit.for.end43_crit_edge, label %mlxsw_pci_rdq_skb_alloc.exit.for.body39_crit_edge

mlxsw_pci_rdq_skb_alloc.exit.for.body39_crit_edge: ; preds = %mlxsw_pci_rdq_skb_alloc.exit
  br label %for.body39

mlxsw_pci_rdq_skb_alloc.exit.for.end43_crit_edge: ; preds = %mlxsw_pci_rdq_skb_alloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end43

if.end30:                                         ; preds = %if.end.i141
  %u.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %64, i32 %and.i, i32 1
  %71 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i.i.i139, ptr %u.i, align 4
  %72 = ptrtoint ptr %producer_counter to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %producer_counter, align 4
  %inc32 = add i16 %73, 1
  store i16 %inc32, ptr %producer_counter, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !560
  tail call void @arm_heavy_mb() #11
  %74 = ptrtoint ptr %producer_counter to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %producer_counter, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !561
  tail call void @arm_heavy_mb() #11
  %conv.i.i144 = zext i16 %75 to i32
  %76 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw_addr.i.i, align 4
  %78 = ptrtoint ptr %doorbell_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %doorbell_offset.i.i, align 8
  %80 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i148 = getelementptr [4 x i16], ptr @mlxsw_pci_doorbell_type_offset, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx.i.i148 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx.i.i148, align 2
  %conv1.i.i149 = zext i16 %83 to i32
  %add.i.i150 = add i32 %79, %conv1.i.i149
  %84 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %num, align 2
  %conv2.i.i152 = zext i8 %85 to i32
  %mul.i.i153 = shl nuw nsw i32 %conv2.i.i152, 2
  %add3.i.i154 = add i32 %add.i.i150, %mul.i.i153
  %add.ptr.i.i155 = getelementptr i8, ptr %77, i32 %add3.i.i154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i155, i32 %conv.i.i144) #11, !srcloc !562
  %inc34 = add nuw nsw i32 %i.1170, 1
  %86 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %count, align 4
  %conv10 = zext i16 %87 to i32
  %cmp11 = icmp ult i32 %inc34, %conv10
  br i1 %cmp11, label %if.end30.for.body13_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30.for.body13_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %mlxsw_pci_rdq_skb_alloc.exit.for.body39_crit_edge
  %i.2174.in = phi i32 [ %i.2174, %for.body39.for.body39_crit_edge ], [ %i.1170, %mlxsw_pci_rdq_skb_alloc.exit.for.body39_crit_edge ]
  %i.2174 = add nsw i32 %i.2174.in, -1
  %88 = ptrtoint ptr %elem_info.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %elem_info.i.i, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %89, i32 %i.2174
  %u.i156 = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %89, i32 %i.2174, i32 1
  %90 = ptrtoint ptr %u.i156 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %u.i156, align 4
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @mlxsw_pci_wqe_frag_unmap(ptr noundef %mlxsw_pci, ptr noundef %93, i32 noundef 0, i32 noundef 2) #11
  tail call void @__dev_kfree_skb_any(ptr noundef %91, i32 noundef 1) #11
  %cmp37 = icmp sgt i32 %i.2174.in, 1
  br i1 %cmp37, label %for.body39.for.body39_crit_edge, label %for.body39.for.end43_crit_edge

for.body39.for.end43_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end43

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39

for.end43:                                        ; preds = %for.body39.for.end43_crit_edge, %mlxsw_pci_rdq_skb_alloc.exit.for.end43_crit_edge
  %94 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %core, align 4
  %96 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %num, align 2
  %conv46 = zext i8 %97 to i32
  %call.i.i.i157 = tail call i32 @mlxsw_cmd_exec(ptr noundef %95, i16 noundef zeroext 514, i8 noundef zeroext 1, i32 noundef %conv46, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end43, %if.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i142, %for.end43 ], [ %call.i.i.i133, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_pci_rdq_fini(ptr nocapture noundef readonly %mlxsw_pci, ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_pci, ptr %mlxsw_pci, i32 0, i32 5
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %num = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 6
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 2
  %conv = zext i8 %3 to i32
  %call.i.i.i = tail call i32 @mlxsw_cmd_exec(ptr noundef %1, i16 noundef zeroext 514, i8 noundef zeroext 1, i32 noundef %conv, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %count = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 5
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp10.not = icmp eq i16 %5, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %elem_info.i = getelementptr inbounds %struct.mlxsw_pci_queue, ptr %q, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %elem_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %elem_info.i, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %7, i32 %i.011
  %u.i = getelementptr %struct.mlxsw_pci_queue_elem_info, ptr %7, i32 %i.011, i32 1
  %8 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %u.i, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @mlxsw_pci_wqe_frag_unmap(ptr noundef %mlxsw_pci, ptr noundef %11, i32 noundef 0, i32 noundef 2) #11
  tail call void @__dev_kfree_skb_any(ptr noundef %9, i32 noundef 1) #11
  %inc = add nuw nsw i32 %i.011, 1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %count, align 4
  %conv1 = zext i16 %13 to i32
  %cmp = icmp ult i32 %inc, %conv1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_core_bus_device_unregister(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 221)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 221)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !53, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !100, !102, !103, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !153, !154, !156, !157, !159, !160, !162, !163, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !280, !281, !283, !284, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !326, !327, !329, !330, !332, !333, !335, !336, !338, !339, !341, !342, !344, !345, !347, !348, !350, !351, !353, !355, !356, !358, !359, !361, !362, !364, !365, !367, !368, !370, !372, !374, !375, !377, !378, !380, !381, !383, !384, !386, !388, !389, !391, !392, !394, !395, !397, !398, !400, !401, !403, !404, !406, !407, !409, !410, !412, !413, !415, !416, !418, !419, !421, !422, !424, !425, !426, !427, !428, !430, !431, !433, !434, !436, !437, !438, !439, !441, !442, !443, !444, !446, !447, !448, !449, !450, !452, !453, !454, !456, !457, !459, !460, !462, !463, !465, !466, !468, !469, !471, !472, !474, !475, !477, !478, !480, !481, !483, !484, !486, !487, !489, !490, !492, !493, !495, !496, !498, !499, !501, !502, !504, !505, !507, !508, !510, !511, !513, !514, !516, !517, !519, !521, !522, !524, !525, !527, !528, !530, !531, !533, !534, !536, !538, !539, !541, !542, !544}
!llvm.module.flags = !{!545, !546, !547, !548, !549, !550, !551, !552}
!llvm.ident = !{!553}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1981, i32 9}
!2 = !{ptr @__ksymtab_mlxsw_pci_driver_register, !3, !"__ksymtab_mlxsw_pci_driver_register", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1983, i32 1}
!4 = !{ptr @__ksymtab_mlxsw_pci_driver_unregister, !5, !"__ksymtab_mlxsw_pci_driver_unregister", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1989, i32 1}
!6 = !{ptr @__initcall__kmod_mlxsw_pci__347_2000_mlxsw_pci_module_init6, !7, !"__initcall__kmod_mlxsw_pci__347_2000_mlxsw_pci_module_init6", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 2000, i32 1}
!8 = !{ptr @__exitcall_mlxsw_pci_module_exit, !9, !"__exitcall_mlxsw_pci_module_exit", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 2001, i32 1}
!10 = !{ptr @__UNIQUE_ID_file348, !11, !"__UNIQUE_ID_file348", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 2003, i32 1}
!12 = !{ptr @__UNIQUE_ID_license349, !11, !"__UNIQUE_ID_license349", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author350, !14, !"__UNIQUE_ID_author350", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 2004, i32 1}
!15 = !{ptr @__UNIQUE_ID_description351, !16, !"__UNIQUE_ID_description351", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 2005, i32 1}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1892, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlxsw_pci_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlxsw_pci_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1898, i32 3}
!27 = !{ptr @mlxsw_pci_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mlxsw_pci_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1906, i32 4}
!31 = !{ptr @mlxsw_pci_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mlxsw_pci_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1912, i32 3}
!35 = !{ptr @mlxsw_pci_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mlxsw_pci_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1920, i32 3}
!39 = !{ptr @mlxsw_pci_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mlxsw_pci_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1943, i32 3}
!43 = !{ptr @mlxsw_pci_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mlxsw_pci_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @mlxsw_pci_cmd_init.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1853, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mlxsw_pci_cmd_init.__key.22, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1854, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1409, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mlxsw_pci_mbox_alloc._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mlxsw_pci_mbox_alloc._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1838, i32 12}
!58 = !{ptr @mlxsw_pci_bus, !59, !"mlxsw_pci_bus", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1837, i32 31}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1515, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mlxsw_pci_init._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @mlxsw_pci_init._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1531, i32 3}
!67 = !{ptr @mlxsw_pci_init._entry.29, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @mlxsw_pci_init._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1536, i32 3}
!71 = !{ptr @mlxsw_pci_init._entry.32, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @mlxsw_pci_init._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1545, i32 3}
!75 = !{ptr @mlxsw_pci_init._entry.35, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mlxsw_pci_init._entry_ptr.37, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1577, i32 3}
!79 = !{ptr @mlxsw_pci_init._entry.38, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mlxsw_pci_init._entry_ptr.40, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1593, i32 3}
!83 = !{ptr @mlxsw_pci_init._entry.41, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @mlxsw_pci_init._entry_ptr.43, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1458, i32 3}
!87 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mlxsw_pci_sw_reset._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @mlxsw_pci_sw_reset._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1470, i32 3}
!92 = !{ptr @mlxsw_pci_sw_reset._entry.46, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mlxsw_pci_sw_reset._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!96 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @__mlxsw_item_offset._entry, !95, !"_entry", i1 false, i1 false}
!99 = !{ptr @__mlxsw_item_offset._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10382, i32 1}
!102 = distinct !{null, !101, !"mlxsw_reg_mrsr_command_item", i1 false, i1 false}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10374, i32 1}
!105 = !{ptr @mlxsw_reg_mrsr, !104, !"mlxsw_reg_mrsr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1484, i32 3}
!108 = !{ptr @mlxsw_pci_alloc_irq_vectors._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @mlxsw_pci_alloc_irq_vectors._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 214, i32 1}
!112 = distinct !{null, !111, !"mlxsw_cmd_mbox_query_fw_fw_rev_major_item", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 224, i32 1}
!115 = distinct !{null, !114, !"mlxsw_cmd_mbox_query_fw_fw_rev_minor_item", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 219, i32 1}
!118 = distinct !{null, !117, !"mlxsw_cmd_mbox_query_fw_fw_rev_subminor_item", i1 false, i1 false}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 236, i32 1}
!121 = distinct !{null, !120, !"mlxsw_cmd_mbox_query_fw_cmd_interface_rev_item", i1 false, i1 false}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 318, i32 1}
!124 = distinct !{null, !123, !"mlxsw_cmd_mbox_query_fw_doorbell_page_bar_item", i1 false, i1 false}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 312, i32 1}
!127 = distinct !{null, !126, !"mlxsw_cmd_mbox_query_fw_doorbell_page_offset_item", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 330, i32 1}
!130 = distinct !{null, !129, !"mlxsw_cmd_mbox_query_fw_fr_rn_clk_bar_item", i1 false, i1 false}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 323, i32 1}
!133 = distinct !{null, !132, !"mlxsw_cmd_mbox_query_fw_free_running_clock_offset_item", i1 false, i1 false}
!134 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 209, i32 1}
!136 = distinct !{null, !135, !"mlxsw_cmd_mbox_query_fw_fw_pages_item", i1 false, i1 false}
!137 = !{ptr @.str.74, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 489, i32 1}
!139 = distinct !{null, !138, !"mlxsw_cmd_mbox_map_fa_pa_item", i1 false, i1 false}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 495, i32 1}
!142 = distinct !{null, !141, !"mlxsw_cmd_mbox_map_fa_log2size_item", i1 false, i1 false}
!143 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 382, i32 1}
!145 = distinct !{null, !144, !"mlxsw_cmd_mbox_boardinfo_vsd_item", i1 false, i1 false}
!146 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 390, i32 1}
!148 = distinct !{null, !147, !"mlxsw_cmd_mbox_boardinfo_psid_item", i1 false, i1 false}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1287, i32 3}
!151 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @mlxsw_pci_boardinfo_xm_process._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @mlxsw_pci_boardinfo_xm_process._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 352, i32 1}
!156 = distinct !{null, !155, !"mlxsw_cmd_mbox_boardinfo_xm_num_local_ports_item", i1 false, i1 false}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 357, i32 1}
!159 = distinct !{null, !158, !"mlxsw_cmd_mbox_boardinfo_xm_exists_item", i1 false, i1 false}
!160 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 215, i32 3}
!162 = !{ptr @.str.87, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @__mlxsw_item_bit_array_offset._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @__mlxsw_item_bit_array_offset._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 361, i32 1}
!167 = distinct !{null, !166, !"mlxsw_cmd_mbox_boardinfo_xm_local_port_entry_item", i1 false, i1 false}
!168 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 572, i32 1}
!170 = distinct !{null, !169, !"mlxsw_cmd_mbox_config_profile_set_max_vepa_channels_item", i1 false, i1 false}
!171 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 687, i32 1}
!173 = distinct !{null, !172, !"mlxsw_cmd_mbox_config_profile_max_vepa_channels_item", i1 false, i1 false}
!174 = !{ptr @.str.93, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 590, i32 1}
!176 = distinct !{null, !175, !"mlxsw_cmd_mbox_config_profile_set_max_mid_item", i1 false, i1 false}
!177 = !{ptr @.str.95, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 703, i32 1}
!179 = distinct !{null, !178, !"mlxsw_cmd_mbox_config_profile_max_mid_item", i1 false, i1 false}
!180 = !{ptr @.str.97, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 596, i32 1}
!182 = distinct !{null, !181, !"mlxsw_cmd_mbox_config_profile_set_max_pgt_item", i1 false, i1 false}
!183 = !{ptr @.str.99, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 709, i32 1}
!185 = distinct !{null, !184, !"mlxsw_cmd_mbox_config_profile_max_pgt_item", i1 false, i1 false}
!186 = !{ptr @.str.101, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 602, i32 1}
!188 = distinct !{null, !187, !"mlxsw_cmd_mbox_config_profile_set_max_system_port_item", i1 false, i1 false}
!189 = !{ptr @.str.103, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 714, i32 1}
!191 = distinct !{null, !190, !"mlxsw_cmd_mbox_config_profile_max_system_port_item", i1 false, i1 false}
!192 = !{ptr @.str.105, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 608, i32 1}
!194 = distinct !{null, !193, !"mlxsw_cmd_mbox_config_profile_set_max_vlan_groups_item", i1 false, i1 false}
!195 = !{ptr @.str.107, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 719, i32 1}
!197 = distinct !{null, !196, !"mlxsw_cmd_mbox_config_profile_max_vlan_groups_item", i1 false, i1 false}
!198 = !{ptr @.str.109, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 614, i32 1}
!200 = distinct !{null, !199, !"mlxsw_cmd_mbox_config_profile_set_max_regions_item", i1 false, i1 false}
!201 = !{ptr @.str.111, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 724, i32 1}
!203 = distinct !{null, !202, !"mlxsw_cmd_mbox_config_profile_max_regions_item", i1 false, i1 false}
!204 = !{ptr @.str.113, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 626, i32 1}
!206 = distinct !{null, !205, !"mlxsw_cmd_mbox_config_profile_set_flood_tables_item", i1 false, i1 false}
!207 = !{ptr @.str.115, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 730, i32 1}
!209 = distinct !{null, !208, !"mlxsw_cmd_mbox_config_profile_max_flood_tables_item", i1 false, i1 false}
!210 = !{ptr @.str.117, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 737, i32 1}
!212 = distinct !{null, !211, !"mlxsw_cmd_mbox_config_profile_max_vid_flood_tables_item", i1 false, i1 false}
!213 = !{ptr @.str.119, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 753, i32 1}
!215 = distinct !{null, !214, !"mlxsw_cmd_mbox_config_profile_max_fid_offset_flood_tables_item", i1 false, i1 false}
!216 = !{ptr @.str.121, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 759, i32 1}
!218 = distinct !{null, !217, !"mlxsw_cmd_mbox_config_profile_fid_offset_flood_table_size_item", i1 false, i1 false}
!219 = !{ptr @.str.123, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 768, i32 1}
!221 = distinct !{null, !220, !"mlxsw_cmd_mbox_config_profile_max_fid_flood_tables_item", i1 false, i1 false}
!222 = !{ptr @.str.125, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 773, i32 1}
!224 = distinct !{null, !223, !"mlxsw_cmd_mbox_config_profile_fid_flood_table_size_item", i1 false, i1 false}
!225 = !{ptr @.str.127, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 620, i32 1}
!227 = distinct !{null, !226, !"mlxsw_cmd_mbox_config_profile_set_flood_mode_item", i1 false, i1 false}
!228 = !{ptr @.str.129, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 748, i32 1}
!230 = distinct !{null, !229, !"mlxsw_cmd_mbox_config_profile_flood_mode_item", i1 false, i1 false}
!231 = !{ptr @.str.131, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 632, i32 1}
!233 = distinct !{null, !232, !"mlxsw_cmd_mbox_config_profile_set_max_ib_mc_item", i1 false, i1 false}
!234 = !{ptr @.str.133, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 779, i32 1}
!236 = distinct !{null, !235, !"mlxsw_cmd_mbox_config_profile_max_ib_mc_item", i1 false, i1 false}
!237 = !{ptr @.str.135, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 638, i32 1}
!239 = distinct !{null, !238, !"mlxsw_cmd_mbox_config_profile_set_max_pkey_item", i1 false, i1 false}
!240 = !{ptr @.str.137, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 784, i32 1}
!242 = distinct !{null, !241, !"mlxsw_cmd_mbox_config_profile_max_pkey_item", i1 false, i1 false}
!243 = !{ptr @.str.139, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 651, i32 1}
!245 = distinct !{null, !244, !"mlxsw_cmd_mbox_config_profile_set_ar_sec_item", i1 false, i1 false}
!246 = !{ptr @.str.141, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 794, i32 1}
!248 = distinct !{null, !247, !"mlxsw_cmd_mbox_config_profile_ar_sec_item", i1 false, i1 false}
!249 = !{ptr @.str.143, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 644, i32 1}
!251 = distinct !{null, !250, !"mlxsw_cmd_mbox_config_profile_set_adaptive_routing_group_cap_item", i1 false, i1 false}
!252 = !{ptr @.str.145, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 801, i32 1}
!254 = distinct !{null, !253, !"mlxsw_cmd_mbox_config_profile_adaptive_routing_group_cap_item", i1 false, i1 false}
!255 = !{ptr @.str.147, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 657, i32 1}
!257 = distinct !{null, !256, !"mlxsw_cmd_mbox_config_profile_set_kvd_linear_size_item", i1 false, i1 false}
!258 = !{ptr @.str.149, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 821, i32 1}
!260 = distinct !{null, !259, !"mlxsw_cmd_mbox_config_profile_kvd_linear_size_item", i1 false, i1 false}
!261 = !{ptr @.str.151, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/mellanox/mlxsw/resources.h", i32 132, i32 6}
!263 = !{ptr @.str.152, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 663, i32 1}
!265 = distinct !{null, !264, !"mlxsw_cmd_mbox_config_profile_set_kvd_hash_single_size_item", i1 false, i1 false}
!266 = !{ptr @.str.154, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 830, i32 1}
!268 = distinct !{null, !267, !"mlxsw_cmd_mbox_config_profile_kvd_hash_single_size_item", i1 false, i1 false}
!269 = !{ptr @.str.156, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 669, i32 1}
!271 = distinct !{null, !270, !"mlxsw_cmd_mbox_config_profile_set_kvd_hash_double_size_item", i1 false, i1 false}
!272 = !{ptr @.str.158, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 839, i32 1}
!274 = distinct !{null, !273, !"mlxsw_cmd_mbox_config_profile_kvd_hash_double_size_item", i1 false, i1 false}
!275 = !{ptr @.str.160, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 681, i32 1}
!277 = distinct !{null, !276, !"mlxsw_cmd_mbox_config_profile_set_kvh_xlt_cache_mode_item", i1 false, i1 false}
!278 = !{ptr @.str.162, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 814, i32 1}
!280 = distinct !{null, !279, !"mlxsw_cmd_mbox_config_profile_kvh_xlt_cache_mode_item", i1 false, i1 false}
!281 = !{ptr @.str.164, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 860, i32 1}
!283 = distinct !{null, !282, !"mlxsw_cmd_mbox_config_profile_swid_config_type_item", i1 false, i1 false}
!284 = !{ptr @.str.166, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 866, i32 1}
!286 = distinct !{null, !285, !"mlxsw_cmd_mbox_config_profile_swid_config_properties_item", i1 false, i1 false}
!287 = !{ptr @.str.168, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 849, i32 1}
!289 = distinct !{null, !288, !"mlxsw_cmd_mbox_config_profile_swid_config_mask_item", i1 false, i1 false}
!290 = !{ptr @.str.170, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 675, i32 1}
!292 = distinct !{null, !291, !"mlxsw_cmd_mbox_config_profile_set_cqe_version_item", i1 false, i1 false}
!293 = !{ptr @.str.172, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 875, i32 1}
!295 = distinct !{null, !294, !"mlxsw_cmd_mbox_config_profile_cqe_version_item", i1 false, i1 false}
!296 = !{ptr @.str.174, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1040, i32 3}
!298 = !{ptr @.str.175, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @mlxsw_pci_aqs_init._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @mlxsw_pci_aqs_init._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.177, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1050, i32 3}
!303 = !{ptr @mlxsw_pci_aqs_init._entry.176, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @mlxsw_pci_aqs_init._entry_ptr.178, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.180, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1059, i32 3}
!307 = !{ptr @mlxsw_pci_aqs_init._entry.179, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @mlxsw_pci_aqs_init._entry_ptr.181, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.183, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1066, i32 3}
!311 = !{ptr @mlxsw_pci_aqs_init._entry.182, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @mlxsw_pci_aqs_init._entry_ptr.184, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.186, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1073, i32 3}
!315 = !{ptr @mlxsw_pci_aqs_init._entry.185, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @mlxsw_pci_aqs_init._entry_ptr.187, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.189, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 1080, i32 3}
!319 = !{ptr @mlxsw_pci_aqs_init._entry.188, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @mlxsw_pci_aqs_init._entry_ptr.190, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.191, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 415, i32 1}
!323 = distinct !{null, !322, !"mlxsw_cmd_mbox_query_aq_cap_max_num_sdqs_item", i1 false, i1 false}
!324 = !{ptr @.str.193, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 410, i32 1}
!326 = distinct !{null, !325, !"mlxsw_cmd_mbox_query_aq_cap_log_max_sdq_sz_item", i1 false, i1 false}
!327 = !{ptr @.str.195, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 425, i32 1}
!329 = distinct !{null, !328, !"mlxsw_cmd_mbox_query_aq_cap_max_num_rdqs_item", i1 false, i1 false}
!330 = !{ptr @.str.197, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 420, i32 1}
!332 = distinct !{null, !331, !"mlxsw_cmd_mbox_query_aq_cap_log_max_rdq_sz_item", i1 false, i1 false}
!333 = !{ptr @.str.199, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 440, i32 1}
!335 = distinct !{null, !334, !"mlxsw_cmd_mbox_query_aq_cap_max_num_cqs_item", i1 false, i1 false}
!336 = !{ptr @.str.201, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 430, i32 1}
!338 = distinct !{null, !337, !"mlxsw_cmd_mbox_query_aq_cap_log_max_cq_sz_item", i1 false, i1 false}
!339 = !{ptr @.str.203, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 435, i32 1}
!341 = distinct !{null, !340, !"mlxsw_cmd_mbox_query_aq_cap_log_max_cqv2_sz_item", i1 false, i1 false}
!342 = !{ptr @.str.205, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 450, i32 1}
!344 = distinct !{null, !343, !"mlxsw_cmd_mbox_query_aq_cap_max_num_eqs_item", i1 false, i1 false}
!345 = !{ptr @.str.207, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 445, i32 1}
!347 = distinct !{null, !346, !"mlxsw_cmd_mbox_query_aq_cap_log_max_eq_sz_item", i1 false, i1 false}
!348 = !{ptr @mlxsw_pci_queue_init.__key, !349, !"__key", i1 false, i1 false}
!349 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 905, i32 2}
!350 = !{ptr @.str.209, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @mlxsw_pci_eq_ops, !352, !"mlxsw_pci_eq_ops", i1 false, i1 false}
!352 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 884, i32 41}
!353 = !{ptr @.str.210, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 319, i32 1}
!355 = distinct !{null, !354, !"mlxsw_pci_eqe_owner_item", i1 false, i1 false}
!356 = !{ptr @.str.212, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 1177, i32 1}
!358 = distinct !{null, !357, !"mlxsw_cmd_mbox_sw2hw_eq_int_msix_item", i1 false, i1 false}
!359 = !{ptr @.str.214, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 1186, i32 1}
!361 = distinct !{null, !360, !"mlxsw_cmd_mbox_sw2hw_eq_st_item", i1 false, i1 false}
!362 = !{ptr @.str.216, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 1191, i32 1}
!364 = distinct !{null, !363, !"mlxsw_cmd_mbox_sw2hw_eq_log_eq_size_item", i1 false, i1 false}
!365 = !{ptr @.str.218, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 1203, i32 1}
!367 = distinct !{null, !366, !"mlxsw_cmd_mbox_sw2hw_eq_pa_item", i1 false, i1 false}
!368 = !{ptr @mlxsw_pci_doorbell_type_offset, !369, !"mlxsw_pci_doorbell_type_offset", i1 false, i1 false}
!369 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 39, i32 18}
!370 = !{ptr @mlxsw_pci_doorbell_arm_type_offset, !371, !"mlxsw_pci_doorbell_arm_type_offset", i1 false, i1 false}
!371 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 46, i32 18}
!372 = !{ptr @.str.220, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 329, i32 1}
!374 = distinct !{null, !373, !"mlxsw_pci_eqe_cmd_status_item", i1 false, i1 false}
!375 = !{ptr @.str.222, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 334, i32 1}
!377 = distinct !{null, !376, !"mlxsw_pci_eqe_cmd_out_param_h_item", i1 false, i1 false}
!378 = !{ptr @.str.224, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 339, i32 1}
!380 = distinct !{null, !379, !"mlxsw_pci_eqe_cmd_out_param_l_item", i1 false, i1 false}
!381 = !{ptr @.str.226, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 314, i32 1}
!383 = distinct !{null, !382, !"mlxsw_pci_eqe_cqn_item", i1 false, i1 false}
!384 = !{ptr @mlxsw_pci_cq_ops, !385, !"mlxsw_pci_cq_ops", i1 false, i1 false}
!385 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 874, i32 41}
!386 = !{ptr @.str.228, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 295, i32 1}
!388 = !{ptr @mlxsw_pci_cqe01_owner_item, !387, !"mlxsw_pci_cqe01_owner_item", i1 false, i1 false}
!389 = !{ptr @.str.230, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 296, i32 1}
!391 = !{ptr @mlxsw_pci_cqe2_owner_item, !390, !"mlxsw_pci_cqe2_owner_item", i1 false, i1 false}
!392 = !{ptr @.str.232, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 1090, i32 1}
!394 = distinct !{null, !393, !"mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_item", i1 false, i1 false}
!395 = !{ptr @.str.234, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 1095, i32 1}
!397 = distinct !{null, !396, !"mlxsw_cmd_mbox_sw2hw_cq_c_eqn_item", i1 false, i1 false}
!398 = !{ptr @.str.236, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 1102, i32 1}
!400 = distinct !{null, !399, !"mlxsw_cmd_mbox_sw2hw_cq_st_item", i1 false, i1 false}
!401 = !{ptr @.str.238, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 1107, i32 1}
!403 = distinct !{null, !402, !"mlxsw_cmd_mbox_sw2hw_cq_log_cq_size_item", i1 false, i1 false}
!404 = !{ptr @.str.240, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 1119, i32 1}
!406 = distinct !{null, !405, !"mlxsw_cmd_mbox_sw2hw_cq_pa_item", i1 false, i1 false}
!407 = !{ptr @.str.242, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 167, i32 1}
!409 = distinct !{null, !408, !"mlxsw_pci_cqe_wqe_counter_item", i1 false, i1 false}
!410 = !{ptr @.str.244, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 209, i32 1}
!412 = distinct !{null, !411, !"mlxsw_pci_cqe0_sr_item", i1 false, i1 false}
!413 = !{ptr @.str.246, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 210, i32 1}
!415 = distinct !{null, !414, !"mlxsw_pci_cqe12_sr_item", i1 false, i1 false}
!416 = !{ptr @.str.248, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 216, i32 1}
!418 = !{ptr @mlxsw_pci_cqe0_dqn_item, !417, !"mlxsw_pci_cqe0_dqn_item", i1 false, i1 false}
!419 = !{ptr @.str.250, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 217, i32 1}
!421 = !{ptr @mlxsw_pci_cqe12_dqn_item, !420, !"mlxsw_pci_cqe12_dqn_item", i1 false, i1 false}
!422 = !{ptr @.str.252, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 540, i32 3}
!424 = !{ptr @mlxsw_pci_cqe_sdq_handle._rs, !423, !"_rs", i1 false, i1 false}
!425 = !{ptr @.str.253, !423, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @.str.254, !423, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @mlxsw_pci_cqe_sdq_handle.descriptor, !423, !"descriptor", i1 false, i1 false}
!428 = !{ptr @.str.255, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 99, i32 1}
!430 = distinct !{null, !429, !"mlxsw_pci_wqe_byte_count_item", i1 false, i1 false}
!431 = !{ptr @.str.257, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 105, i32 1}
!433 = distinct !{null, !432, !"mlxsw_pci_wqe_address_item", i1 false, i1 false}
!434 = !{ptr @mlxsw_pci_cqe_rdq_handle._rs, !435, !"_rs", i1 false, i1 false}
!435 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 611, i32 3}
!436 = !{ptr @.str.259, !435, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @.str.260, !435, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @mlxsw_pci_cqe_rdq_handle.descriptor, !435, !"descriptor", i1 false, i1 false}
!439 = !{ptr @mlxsw_pci_cqe_rdq_handle._rs.261, !440, !"_rs", i1 false, i1 false}
!440 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 615, i32 3}
!441 = !{ptr @.str.262, !440, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @mlxsw_pci_cqe_rdq_handle._entry, !440, !"_entry", i1 false, i1 false}
!443 = !{ptr @mlxsw_pci_cqe_rdq_handle._entry_ptr, !440, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @mlxsw_pci_wqe_frag_map._rs, !445, !"_rs", i1 false, i1 false}
!445 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 332, i32 3}
!446 = !{ptr @__func__.mlxsw_pci_wqe_frag_map, !445, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @.str.263, !445, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @mlxsw_pci_wqe_frag_map._entry, !445, !"_entry", i1 false, i1 false}
!449 = !{ptr @mlxsw_pci_wqe_frag_map._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!450 = distinct !{null, !451, !"__already_done", i1 false, i1 false}
!451 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!452 = !{ptr @.str.264, !451, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @.str.265, !451, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @.str.266, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 146, i32 1}
!456 = !{ptr @mlxsw_pci_cqe0_lag_item, !455, !"mlxsw_pci_cqe0_lag_item", i1 false, i1 false}
!457 = !{ptr @.str.268, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 147, i32 1}
!459 = !{ptr @mlxsw_pci_cqe12_lag_item, !458, !"mlxsw_pci_cqe12_lag_item", i1 false, i1 false}
!460 = !{ptr @.str.270, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 157, i32 1}
!462 = distinct !{null, !461, !"mlxsw_pci_cqe0_lag_id_item", i1 false, i1 false}
!463 = !{ptr @.str.272, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 158, i32 1}
!465 = distinct !{null, !464, !"mlxsw_pci_cqe12_lag_id_item", i1 false, i1 false}
!466 = !{ptr @.str.274, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 160, i32 1}
!468 = !{ptr @mlxsw_pci_cqe0_lag_subport_item, !467, !"mlxsw_pci_cqe0_lag_subport_item", i1 false, i1 false}
!469 = !{ptr @.str.276, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 161, i32 1}
!471 = !{ptr @mlxsw_pci_cqe12_lag_subport_item, !470, !"mlxsw_pci_cqe12_lag_subport_item", i1 false, i1 false}
!472 = !{ptr @.str.278, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 156, i32 1}
!474 = distinct !{null, !473, !"mlxsw_pci_cqe_system_port_item", i1 false, i1 false}
!475 = !{ptr @.str.280, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 188, i32 1}
!477 = distinct !{null, !476, !"mlxsw_pci_cqe_trap_id_item", i1 false, i1 false}
!478 = !{ptr @.str.282, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 276, i32 1}
!480 = distinct !{null, !479, !"mlxsw_pci_cqe2_user_def_val_orig_pkt_len_item", i1 false, i1 false}
!481 = !{ptr @.str.284, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 281, i32 1}
!483 = distinct !{null, !482, !"mlxsw_pci_cqe2_mirror_reason_item", i1 false, i1 false}
!484 = !{ptr @.str.286, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 183, i32 1}
!486 = distinct !{null, !485, !"mlxsw_pci_cqe2_mirror_cong_high_item", i1 false, i1 false}
!487 = !{ptr @.str.288, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 261, i32 1}
!489 = distinct !{null, !488, !"mlxsw_pci_cqe2_mirror_cong_low_item", i1 false, i1 false}
!490 = !{ptr @.str.290, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 290, i32 1}
!492 = distinct !{null, !491, !"mlxsw_pci_cqe2_mirror_latency_item", i1 false, i1 false}
!493 = !{ptr @.str.292, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 226, i32 1}
!495 = distinct !{null, !494, !"mlxsw_pci_cqe2_mirror_tclass_item", i1 false, i1 false}
!496 = !{ptr @.str.294, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 231, i32 1}
!498 = distinct !{null, !497, !"mlxsw_pci_cqe2_tx_lag_item", i1 false, i1 false}
!499 = !{ptr @.str.296, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 247, i32 1}
!501 = distinct !{null, !500, !"mlxsw_pci_cqe2_tx_lag_id_item", i1 false, i1 false}
!502 = !{ptr @.str.298, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 237, i32 1}
!504 = distinct !{null, !503, !"mlxsw_pci_cqe2_tx_lag_subport_item", i1 false, i1 false}
!505 = !{ptr @.str.300, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 254, i32 1}
!507 = distinct !{null, !506, !"mlxsw_pci_cqe2_tx_system_port_item", i1 false, i1 false}
!508 = !{ptr @.str.302, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 174, i32 1}
!510 = distinct !{null, !509, !"mlxsw_pci_cqe_byte_count_item", i1 false, i1 false}
!511 = !{ptr @.str.304, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 194, i32 1}
!513 = !{ptr @mlxsw_pci_cqe0_crc_item, !512, !"mlxsw_pci_cqe0_crc_item", i1 false, i1 false}
!514 = !{ptr @.str.306, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 195, i32 1}
!516 = !{ptr @mlxsw_pci_cqe12_crc_item, !515, !"mlxsw_pci_cqe12_crc_item", i1 false, i1 false}
!517 = !{ptr @mlxsw_pci_sdq_ops, !518, !"mlxsw_pci_sdq_ops", i1 false, i1 false}
!518 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 858, i32 41}
!519 = !{ptr @.str.308, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 936, i32 1}
!521 = distinct !{null, !520, !"mlxsw_cmd_mbox_sw2hw_dq_cq_item", i1 false, i1 false}
!522 = !{ptr @.str.310, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 948, i32 1}
!524 = distinct !{null, !523, !"mlxsw_cmd_mbox_sw2hw_dq_sdq_lp_item", i1 false, i1 false}
!525 = !{ptr @.str.312, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 954, i32 1}
!527 = distinct !{null, !526, !"mlxsw_cmd_mbox_sw2hw_dq_sdq_tclass_item", i1 false, i1 false}
!528 = !{ptr @.str.314, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 959, i32 1}
!530 = distinct !{null, !529, !"mlxsw_cmd_mbox_sw2hw_dq_log2_dq_sz_item", i1 false, i1 false}
!531 = !{ptr @.str.316, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 964, i32 1}
!533 = distinct !{null, !532, !"mlxsw_cmd_mbox_sw2hw_dq_pa_item", i1 false, i1 false}
!534 = !{ptr @mlxsw_pci_rdq_ops, !535, !"mlxsw_pci_rdq_ops", i1 false, i1 false}
!535 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci.c", i32 866, i32 41}
!536 = !{ptr @.str.318, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 77, i32 1}
!538 = distinct !{null, !537, !"mlxsw_pci_wqe_c_item", i1 false, i1 false}
!539 = !{ptr @.str.320, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 89, i32 1}
!541 = distinct !{null, !540, !"mlxsw_pci_wqe_lp_item", i1 false, i1 false}
!542 = !{ptr @.str.322, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/net/ethernet/mellanox/mlxsw/pci_hw.h", i32 94, i32 1}
!544 = distinct !{null, !543, !"mlxsw_pci_wqe_type_item", i1 false, i1 false}
!545 = !{i32 1, !"wchar_size", i32 2}
!546 = !{i32 1, !"min_enum_size", i32 4}
!547 = !{i32 8, !"branch-target-enforcement", i32 0}
!548 = !{i32 8, !"sign-return-address", i32 0}
!549 = !{i32 8, !"sign-return-address-all", i32 0}
!550 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!551 = !{i32 7, !"uwtable", i32 1}
!552 = !{i32 7, !"frame-pointer", i32 2}
!553 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!554 = !{i64 5034032}
!555 = !{i64 2159764735}
!556 = distinct !{!556, !557}
!557 = !{!"llvm.loop.peeled.count", i32 1}
!558 = !{i8 0, i8 2}
!559 = !{!"branch_weights", i32 2000, i32 1}
!560 = !{i64 2159730430}
!561 = !{i64 2159729495}
!562 = !{i64 5033614}
!563 = !{i64 2159784283}
!564 = !{i64 2159784903}
!565 = !{i64 2159785530}
!566 = !{i64 2159786156}
!567 = !{i64 2159786679}
!568 = !{i64 2159787149}
!569 = !{i64 2159787355}
!570 = !{i64 2159788167}
!571 = !{i64 2159788830}
!572 = !{i64 2159792061}
!573 = !{i64 2159792828}
!574 = !{i64 2159793339}
!575 = !{i64 2159793858}
!576 = !{!"auto-init"}
!577 = !{!"branch_weights", i32 1, i32 2000}
!578 = !{i32 0, i32 33}
!579 = !{i64 2159730578}
!580 = !{i64 2159730726}
!581 = !{i64 2159730222}
!582 = !{i64 2159745621}
!583 = !{i64 2159743786}
!584 = !{i64 2148745312, i64 2148745317, i64 2148745330, i64 2148745374, i64 2148745408, i64 2148745429}
!585 = !{i64 2159734091, i64 2159734597, i64 2159734128, i64 2159734184, i64 2159734218, i64 2159734242, i64 2159734283, i64 2159734304, i64 2159734332, i64 2159734366}
