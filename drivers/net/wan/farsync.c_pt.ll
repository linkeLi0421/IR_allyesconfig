; ModuleID = '/llk/IR_all_yes/drivers/net/wan/farsync.c_pt.bc'
source_filename = "../drivers/net/wan/farsync.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.119, i32 }
%struct.atomic_t = type { i32 }
%union.anon.119 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.118, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.118 = type { ptr }
%struct.fst_card_info = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i16, [4 x %struct.fst_port_info], ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.fst_port_info = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x ptr], i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rxdesc = type { i16, i8, i8, i16, i16 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
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
%struct.hdlc_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.txdesc = type { i16, i8, i8, i16, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sync_serial_settings = type { i32, i32, i16 }
%struct.if_settings = type { i32, i32, %union.anon.106 }
%union.anon.106 = type { ptr }
%struct.port_cfg = type { i16, i8, i8, i8, i8, [6 x i8], i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fstioc_write = type { i32, i32, [0 x i8] }
%struct.fstioc_info = type { i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i16, i16 }

@__UNIQUE_ID_author339 = internal constant [53 x i8] c"farsync.author=R.J.Dunlop <bob.dunlop@farsite.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [77 x i8] c"farsync.description=FarSync T-Series WAN driver. FarSite Communications Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [37 x i8] c"farsync.file=drivers/net/wan/farsync\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [20 x i8] c"farsync.license=GPL\00", section ".modinfo", align 1
@__param_str_fst_txq_low = internal constant [20 x i8] c"farsync.fst_txq_low\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@fst_txq_low = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_fst_txq_low = internal constant %struct.kernel_param { ptr @__param_str_fst_txq_low, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @fst_txq_low } }, section "__param", align 4
@__UNIQUE_ID_fst_txq_lowtype343 = internal constant [33 x i8] c"farsync.parmtype=fst_txq_low:int\00", section ".modinfo", align 1
@__param_str_fst_txq_high = internal constant [21 x i8] c"farsync.fst_txq_high\00", align 1
@fst_txq_high = internal global { i32, [28 x i8] } { i32 12, [28 x i8] zeroinitializer }, align 32
@__param_fst_txq_high = internal constant %struct.kernel_param { ptr @__param_str_fst_txq_high, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @fst_txq_high } }, section "__param", align 4
@__UNIQUE_ID_fst_txq_hightype344 = internal constant [34 x i8] c"farsync.parmtype=fst_txq_high:int\00", section ".modinfo", align 1
@__param_str_fst_max_reads = internal constant [22 x i8] c"farsync.fst_max_reads\00", align 1
@fst_max_reads = internal global { i32, [28 x i8] } { i32 7, [28 x i8] zeroinitializer }, align 32
@__param_fst_max_reads = internal constant %struct.kernel_param { ptr @__param_str_fst_max_reads, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @fst_max_reads } }, section "__param", align 4
@__UNIQUE_ID_fst_max_readstype345 = internal constant [35 x i8] c"farsync.parmtype=fst_max_reads:int\00", section ".modinfo", align 1
@__param_str_fst_excluded_cards = internal constant [27 x i8] c"farsync.fst_excluded_cards\00", align 1
@fst_excluded_cards = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fst_excluded_cards = internal constant %struct.kernel_param { ptr @__param_str_fst_excluded_cards, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @fst_excluded_cards } }, section "__param", align 4
@__UNIQUE_ID_fst_excluded_cardstype346 = internal constant [40 x i8] c"farsync.parmtype=fst_excluded_cards:int\00", section ".modinfo", align 1
@__param_str_fst_excluded_list = internal constant [26 x i8] c"farsync.fst_excluded_list\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_fst_excluded_list = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @fst_excluded_list }, align 4
@__param_fst_excluded_list = internal constant %struct.kernel_param { ptr @__param_str_fst_excluded_list, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_fst_excluded_list } }, section "__param", align 4
@__UNIQUE_ID_fst_excluded_listtype347 = internal constant [48 x i8] c"farsync.parmtype=fst_excluded_list:array of int\00", section ".modinfo", align 1
@fst_cleanup_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016farsync: FarSync WAN driver unloading\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fst_cleanup_module\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/wan/farsync.c\00", [38 x i8] zeroinitializer }, align 32
@fst_cleanup_module._entry_ptr = internal global ptr @fst_cleanup_module._entry, section ".printk_index", align 4
@fst_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @fst_pci_dev_id, ptr @fst_add_one, ptr @fst_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_farsync__348_2593_fst_init6 = internal global ptr @fst_init, section ".initcall6.init", align 4
@__exitcall_fst_cleanup_module = internal global ptr @fst_cleanup_module, section ".exitcall.exit", align 4
@fst_excluded_list = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fst\00", [28 x i8] zeroinitializer }, align 32
@fst_pci_dev_id = internal constant { [8 x %struct.pci_device_id], [64 x i8] } { [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 5657, i32 1024, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5657, i32 1088, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5657, i32 1552, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5657, i32 1568, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5657, i32 1600, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5657, i32 5648, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 5657, i32 5650, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@fst_add_one.no_of_cards_added = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fst_add_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fst_add_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 2341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016farsync: FarSync WAN driver 1.04 (c) 2001-2004 FarSite Communications Ltd.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fst_add_one\00", [20 x i8] zeroinitializer }, align 32
@fst_add_one._entry_ptr = internal global ptr @fst_add_one._entry, section ".printk_index", align 4
@fst_add_one._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 2355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016farsync: FarSync PCI device %d not assigned\0A\00", [49 x i8] zeroinitializer }, align 32
@fst_add_one._entry_ptr.8 = internal global ptr @fst_add_one._entry.6, section ".printk_index", align 4
@fst_add_one._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 2369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013farsync: Failed to enable card. Err %d\0A\00", [54 x i8] zeroinitializer }, align 32
@fst_add_one._entry_ptr.11 = internal global ptr @fst_add_one._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FarSync\00", [24 x i8] zeroinitializer }, align 32
@fst_add_one._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.2, i32 2375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013farsync: Failed to allocate regions. Err %d\0A\00", [49 x i8] zeroinitializer }, align 32
@fst_add_one._entry_ptr.15 = internal global ptr @fst_add_one._entry.13, section ".printk_index", align 4
@fst_add_one._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.2, i32 2385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013farsync: Physical memory remap failed\0A\00", [55 x i8] zeroinitializer }, align 32
@fst_add_one._entry_ptr.18 = internal global ptr @fst_add_one._entry.16, section ".printk_index", align 4
@fst_add_one._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.2, i32 2391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013farsync: Control memory remap failed\0A\00", [56 x i8] zeroinitializer }, align 32
@fst_add_one._entry_ptr.21 = internal global ptr @fst_add_one._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"farsync\00", [24 x i8] zeroinitializer }, align 32
@fst_add_one._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.2, i32 2399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013farsync: Unable to register interrupt %d\0A\00", [52 x i8] zeroinitializer }, align 32
@fst_add_one._entry_ptr.25 = internal global ptr @fst_add_one._entry.23, section ".printk_index", align 4
@fst_add_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&card->card_lock\00", [47 x i8] zeroinitializer }, align 32
@fst_add_one._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.5, ptr @.str.2, i32 2427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013farsync: FarSync: out of memory\0A\00", [61 x i8] zeroinitializer }, align 32
@fst_add_one._entry_ptr.29 = internal global ptr @fst_add_one._entry.27, section ".printk_index", align 4
@fst_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @fst_open, ptr @fst_close, ptr @hdlc_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fst_ioctl, ptr @fst_siocdevprivate, ptr null, ptr null, ptr null, ptr @fst_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@fst_add_one._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.5, ptr @.str.2, i32 2476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013farsync: FarSync: too many cards\0A\00", [60 x i8] zeroinitializer }, align 32
@fst_add_one._entry_ptr.32 = internal global ptr @fst_add_one._entry.30, section ".printk_index", align 4
@fst_card_array = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@fst_add_one._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.5, ptr @.str.2, i32 2492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013farsync: Could not allocate rx dma buffer\0A\00", [51 x i8] zeroinitializer }, align 32
@fst_add_one._entry_ptr.35 = internal global ptr @fst_add_one._entry.33, section ".printk_index", align 4
@fst_add_one._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.5, ptr @.str.2, i32 2500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013farsync: Could not allocate tx dma buffer\0A\00", [51 x i8] zeroinitializer }, align 32
@fst_add_one._entry_ptr.38 = internal global ptr @fst_add_one._entry.36, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fst_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013farsync: Interrupt received for card %d in a non running state (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fst_intr\00", [23 x i8] zeroinitializer }, align 32
@fst_intr._entry_ptr = internal global ptr @fst_intr._entry, section ".printk_index", align 4
@fst_work_intq = internal global { i64, [24 x i8] } zeroinitializer, align 32
@fst_int_task = internal global { %struct.tasklet_struct, [40 x i8] } { %struct.tasklet_struct { ptr null, i32 0, %struct.atomic_t zeroinitializer, i8 1, %union.anon.119 { ptr @fst_process_int_work_q }, i32 0 }, [40 x i8] zeroinitializer }, align 32
@fst_intr._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 1547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013farsync: intr: unknown card event %d. ignored\0A\00", [47 x i8] zeroinitializer }, align 32
@fst_intr._entry_ptr.43 = internal global ptr @fst_intr._entry.41, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fst_work_q_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.44, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fst_work_q_lock\00", [16 x i8] zeroinitializer }, align 32
@fst_intr_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013farsync: Frame received with 0 length. Card %d Port %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fst_intr_rx\00", [20 x i8] zeroinitializer }, align 32
@fst_intr_rx._entry_ptr = internal global ptr @fst_intr_rx._entry, section ".printk_index", align 4
@fst_issue_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013farsync: Mailbox safety timeout\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fst_issue_cmd\00", [18 x i8] zeroinitializer }, align 32
@fst_issue_cmd._entry_ptr = internal global ptr @fst_issue_cmd._entry, section ".printk_index", align 4
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@fst_siocdevprivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 2009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013farsync: Attempt to configure card %d in non-running state (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fst_siocdevprivate\00", [45 x i8] zeroinitializer }, align 32
@fst_siocdevprivate._entry_ptr = internal global ptr @fst_siocdevprivate._entry, section ".printk_index", align 4
@check_started_ok._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013farsync: Bad shared memory version %d expected %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_started_ok\00", [47 x i8] zeroinitializer }, align 32
@check_started_ok._entry_ptr = internal global ptr @check_started_ok._entry, section ".printk_index", align 4
@check_started_ok._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 1575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013farsync: Missing shared memory signature\0A\00", [52 x i8] zeroinitializer }, align 32
@check_started_ok._entry_ptr.58 = internal global ptr @check_started_ok._entry.56, section ".printk_index", align 4
@check_started_ok._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.2, i32 1584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013farsync: Firmware initialisation failed. Card halted\0A\00", [40 x i8] zeroinitializer }, align 32
@check_started_ok._entry_ptr.61 = internal global ptr @check_started_ok._entry.59, section ".printk_index", align 4
@check_started_ok._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.2, i32 1588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013farsync: Unknown firmware status 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@check_started_ok._entry_ptr.64 = internal global ptr @check_started_ok._entry.62, section ".printk_index", align 4
@check_started_ok._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.2, i32 1600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014farsync: Port count mismatch on card %d.  Firmware thinks %d we say %d\0A\00", [54 x i8] zeroinitializer }, align 32
@check_started_ok._entry_ptr.67 = internal global ptr @check_started_ok._entry.65, section ".printk_index", align 4
@fst_work_txq = internal global { i64, [24 x i8] } zeroinitializer, align 32
@fst_tx_task = internal global { %struct.tasklet_struct, [40 x i8] } { %struct.tasklet_struct { ptr null, i32 0, %struct.atomic_t zeroinitializer, i8 1, %union.anon.119 { ptr @fst_process_tx_work_q }, i32 0 }, [40 x i8] zeroinitializer }, align 32
@fst_init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 2305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013farsync: Cannot register HDLC device for port %d (errno %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fst_init_card\00", [18 x i8] zeroinitializer }, align 32
@fst_init_card._entry_ptr = internal global ptr @fst_init_card._entry, section ".printk_index", align 4
@fst_init_card._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 2315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016farsync: %s-%s: %s IRQ%d, %d ports\0A\00", [58 x i8] zeroinitializer }, align 32
@fst_init_card._entry_ptr.72 = internal global ptr @fst_init_card._entry.70, section ".printk_index", align 4
@type_strings = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no hardware\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FarSync T2P\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FarSync T4P\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FarSync T1U\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FarSync T2U\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FarSync T4U\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FarSync TE1\00", [20 x i8] zeroinitializer }, align 32
@switch.table.fst_ioctl = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 4097, i32 4098, i32 4096, i32 4102, i32 4099, i32 4100], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.80 = internal global [17 x i64] [i64 15, i64 8, i64 24, i64 25, i64 26, i64 27, i64 32, i64 33, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 48]
@__sancov_gen_cov_switch_values.81 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 4096, i64 4097, i64 4098, i64 4099, i64 4100, i64 4101, i64 4102, i64 8204]
@__sancov_gen_cov_switch_values.82 = internal global [9 x i64] [i64 7, i64 32, i64 4096, i64 4097, i64 4098, i64 4099, i64 4100, i64 4101, i64 4102]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [7 x i64] [i64 5, i64 32, i64 35322, i64 35323, i64 35324, i64 35325, i64 35326]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 255]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 5]
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"fst_txq_low\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 76, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"fst_txq_high\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 77, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"fst_max_reads\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 78, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"fst_excluded_cards\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 79, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2589, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [11 x i8] c"fst_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2569, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"fst_excluded_list\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 80, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2570, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"fst_pci_dev_id\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 526, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"no_of_cards_added\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2334, i32 13 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2339, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2354, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2369, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2373, i32 34 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2375, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2385, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2391, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2398, i32 52 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2399, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2418, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2427, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant [8 x i8] c"fst_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2319, i32 36 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2476, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [15 x i8] c"fst_card_array\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 570, i32 30 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2492, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2500, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1427, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [14 x i8] c"fst_work_intq\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 573, i32 12 }
@___asan_gen_.225 = private unnamed_addr constant [13 x i8] c"fst_int_task\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 568, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1547, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant [16 x i8] c"fst_work_q_lock\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 571, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1194, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 925, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 174, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2008, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1569, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1575, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1584, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1588, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1598, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [13 x i8] c"fst_work_txq\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 572, i32 12 }
@___asan_gen_.306 = private unnamed_addr constant [12 x i8] c"fst_tx_task\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 567, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2304, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2312, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [13 x i8] c"type_strings\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2281, i32 14 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2282, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2283, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2284, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2285, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2286, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2287, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.346 = private constant [29 x i8] c"../drivers/net/wan/farsync.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2288, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [23 x i8] c"switch.table.fst_ioctl\00", align 1
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_fst_excluded_cardstype346, ptr @__UNIQUE_ID_fst_excluded_listtype347, ptr @__UNIQUE_ID_fst_max_readstype345, ptr @__UNIQUE_ID_fst_txq_hightype344, ptr @__UNIQUE_ID_fst_txq_lowtype343, ptr @__UNIQUE_ID_license342, ptr @__exitcall_fst_cleanup_module, ptr @__initcall__kmod_farsync__348_2593_fst_init6, ptr @__param_fst_excluded_cards, ptr @__param_fst_excluded_list, ptr @__param_fst_max_reads, ptr @__param_fst_txq_high, ptr @__param_fst_txq_low, ptr @check_started_ok._entry, ptr @check_started_ok._entry.56, ptr @check_started_ok._entry.59, ptr @check_started_ok._entry.62, ptr @check_started_ok._entry.65, ptr @check_started_ok._entry_ptr, ptr @check_started_ok._entry_ptr.58, ptr @check_started_ok._entry_ptr.61, ptr @check_started_ok._entry_ptr.64, ptr @check_started_ok._entry_ptr.67, ptr @fst_add_one._entry, ptr @fst_add_one._entry.13, ptr @fst_add_one._entry.16, ptr @fst_add_one._entry.19, ptr @fst_add_one._entry.23, ptr @fst_add_one._entry.27, ptr @fst_add_one._entry.30, ptr @fst_add_one._entry.33, ptr @fst_add_one._entry.36, ptr @fst_add_one._entry.6, ptr @fst_add_one._entry.9, ptr @fst_add_one._entry_ptr, ptr @fst_add_one._entry_ptr.11, ptr @fst_add_one._entry_ptr.15, ptr @fst_add_one._entry_ptr.18, ptr @fst_add_one._entry_ptr.21, ptr @fst_add_one._entry_ptr.25, ptr @fst_add_one._entry_ptr.29, ptr @fst_add_one._entry_ptr.32, ptr @fst_add_one._entry_ptr.35, ptr @fst_add_one._entry_ptr.38, ptr @fst_add_one._entry_ptr.8, ptr @fst_cleanup_module, ptr @fst_cleanup_module._entry, ptr @fst_cleanup_module._entry_ptr, ptr @fst_init_card._entry, ptr @fst_init_card._entry.70, ptr @fst_init_card._entry_ptr, ptr @fst_init_card._entry_ptr.72, ptr @fst_intr._entry, ptr @fst_intr._entry.41, ptr @fst_intr._entry_ptr, ptr @fst_intr._entry_ptr.43, ptr @fst_intr_rx._entry, ptr @fst_intr_rx._entry_ptr, ptr @fst_issue_cmd._entry, ptr @fst_issue_cmd._entry_ptr, ptr @fst_siocdevprivate._entry, ptr @fst_siocdevprivate._entry_ptr, ptr @fst_txq_low, ptr @fst_txq_high, ptr @fst_max_reads, ptr @fst_excluded_cards, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fst_driver, ptr @fst_excluded_list, ptr @.str.3, ptr @fst_pci_dev_id, ptr @fst_add_one.no_of_cards_added, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @fst_add_one.__key, ptr @.str.26, ptr @.str.28, ptr @fst_ops, ptr @.str.31, ptr @fst_card_array, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @fst_work_intq, ptr @fst_int_task, ptr @.str.42, ptr @fst_work_q_lock, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @fst_work_txq, ptr @fst_tx_task, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @type_strings, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @switch.table.fst_ioctl], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_txq_low to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_txq_high to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_max_reads to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_excluded_cards to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_cleanup_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_excluded_list to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_pci_dev_id to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_add_one.no_of_cards_added to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_add_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_add_one._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_add_one._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_add_one._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_add_one._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_add_one._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_add_one._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_add_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_add_one._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_add_one._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_card_array to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_add_one._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_add_one._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_work_intq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_int_task to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_intr._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_work_q_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_intr_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_issue_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_siocdevprivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_started_ok._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_started_ok._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_started_ok._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_started_ok._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_started_ok._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_work_txq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_tx_task to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fst_init_card._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type_strings to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fst_ioctl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fst_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @fst_driver) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fst_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @fst_card_array, i32 0, i32 128)
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @fst_driver, ptr noundef null, ptr noundef nonnull @.str.22) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fst_add_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b366 = load i1, ptr @fst_add_one.__already_done, align 1
  br i1 %.b366, label %entry.if.end_crit_edge, label %if.then, !prof !211

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @fst_add_one.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %0 = load i32, ptr @fst_excluded_cards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp13389 = icmp sgt i32 %0, 0
  br i1 %cmp13389, label %for.body.lr.ph, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

for.body.lr.ph:                                   ; preds = %if.end
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %1 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %2, 3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0390, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.cond.if.end24_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.if.end24_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0390 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i32], ptr @fst_excluded_list, i32 0, i32 %i.0390
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %4)
  %cmp14 = icmp eq i32 %shr, %4
  br i1 %cmp14, label %do.end18, label %for.cond

do.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %shr) #13
  br label %cleanup246

if.end24:                                         ; preds = %for.cond.if.end24_crit_edge, %if.end.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 616) #14
  %tobool26.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not, label %if.end24.cleanup246_crit_edge, label %if.end28

if.end24.cleanup246_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup246

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 0, %call29
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %sub) #13
  br label %enable_fail

if.end37:                                         ; preds = %if.end28
  %call38 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end47, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %sub45 = sub i32 0, %call38
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %sub45) #13
  br label %regions_fail

if.end47:                                         ; preds = %if.end37
  %arrayidx48 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %6 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx48, align 8
  %conv = trunc i32 %7 to i16
  %pci_conf = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %pci_conf to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %pci_conf, align 4
  %arrayidx50 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %9 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx50, align 8
  %phys_mem = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %phys_mem to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %phys_mem, align 8
  %arrayidx53 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %12 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx53, align 8
  %phys_ctlmem = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %phys_ctlmem to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %phys_ctlmem, align 4
  %call56 = tail call ptr @ioremap(i32 noundef %10, i32 noundef 1048576) #10
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call56, ptr %call7.i.i, align 8
  %tobool58.not = icmp eq ptr %call56, null
  br i1 %tobool58.not, label %do.end62, label %if.end65

do.end62:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %ioremap_physmem_fail

if.end65:                                         ; preds = %if.end47
  %16 = ptrtoint ptr %phys_ctlmem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys_ctlmem, align 4
  %call67 = tail call ptr @ioremap(i32 noundef %17, i32 noundef 16) #10
  %ctlmem = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %ctlmem to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call67, ptr %ctlmem, align 4
  %tobool69.not = icmp eq ptr %call67, null
  br i1 %tobool69.not, label %do.end73, label %do.end79

do.end73:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  br label %ioremap_ctlmem_fail

do.end79:                                         ; preds = %if.end65
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %20, ptr noundef nonnull @fst_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.22, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool81.not = icmp eq i32 %call.i, 0
  br i1 %tobool81.not, label %if.end89, label %do.end85

do.end85:                                         ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #12
  %irq87 = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %irq87 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq87, align 8
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %22) #13
  br label %irq_fail

if.end89:                                         ; preds = %do.end79
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %irq91 = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %irq91 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %irq91, align 8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %26 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %type, align 8
  %29 = add i32 %27, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %29)
  %30 = icmp ult i32 %29, -2
  %cond = zext i1 %30 to i32
  %family = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 13
  %31 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond, ptr %family, align 8
  %32 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %if.end89.lor.end112_crit_edge [
    i32 3, label %if.end89.if.end115_crit_edge
    i32 6, label %if.end89.if.end115_crit_edge418
    i32 1, label %if.end89._crit_edge
    i32 4, label %if.end89._crit_edge419
  ]

if.end89._crit_edge419:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %33

if.end89._crit_edge:                              ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %33

if.end89.if.end115_crit_edge418:                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.end89.if.end115_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.end89.lor.end112_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end112

33:                                               ; preds = %if.end89._crit_edge, %if.end89._crit_edge419
  br label %lor.end112

lor.end112:                                       ; preds = %33, %if.end89.lor.end112_crit_edge
  %34 = phi i32 [ 2, %33 ], [ 4, %if.end89.lor.end112_crit_edge ]
  br label %if.end115

if.end115:                                        ; preds = %lor.end112, %if.end89.if.end115_crit_edge, %if.end89.if.end115_crit_edge418
  %.sink = phi i32 [ %34, %lor.end112 ], [ 1, %if.end89.if.end115_crit_edge ], [ 1, %if.end89.if.end115_crit_edge418 ]
  %nports114 = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %nports114 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %nports114, align 4
  %state = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %state, align 4
  %card_lock = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %card_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @fst_add_one.__key, i16 noundef signext 3) #10
  %nports121 = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %nports121 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nports121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp122391.not = icmp eq i32 %38, 0
  br i1 %cmp122391.not, label %if.end115.for.end162_crit_edge, label %if.end115.for.body124_crit_edge

if.end115.for.body124_crit_edge:                  ; preds = %if.end115
  br label %for.body124

if.end115.for.end162_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162

for.body124:                                      ; preds = %for.inc160.for.body124_crit_edge, %if.end115.for.body124_crit_edge
  %i.1392 = phi i32 [ %inc161, %for.inc160.for.body124_crit_edge ], [ 0, %if.end115.for.body124_crit_edge ]
  %arrayidx125 = getelementptr %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 10, i32 %i.1392
  %call126 = tail call ptr @alloc_hdlcdev(ptr noundef %arrayidx125) #10
  %tobool127.not = icmp eq ptr %call126, null
  br i1 %tobool127.not, label %while.cond.preheader, label %for.inc160

while.cond.preheader:                             ; preds = %for.body124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1392)
  %tobool129.not397 = icmp eq i32 %i.1392, 0
  br i1 %tobool129.not397, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.2398 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.1392, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %i.2398, -1
  %arrayidx131 = getelementptr %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 10, i32 %dec
  %39 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx131, align 4
  tail call void @free_netdev(ptr noundef %40) #10
  %tobool129.not = icmp eq i32 %dec, 0
  br i1 %tobool129.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br label %hdlcdev_fail

for.inc160:                                       ; preds = %for.body124
  %41 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call126, ptr %arrayidx125, align 4
  %card144 = getelementptr %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 10, i32 %i.1392, i32 1
  %42 = ptrtoint ptr %card144 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i, ptr %card144, align 4
  %index = getelementptr %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 10, i32 %i.1392, i32 2
  %43 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %i.1392, ptr %index, align 4
  %run = getelementptr %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 10, i32 %i.1392, i32 4
  %44 = ptrtoint ptr %run to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %run, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call126, i32 2304
  %45 = ptrtoint ptr %phys_mem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phys_mem, align 8
  %47 = shl i32 %i.1392, 14
  %add = add i32 %47, 65536
  %add151 = add i32 %add, %46
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call126, i32 0, i32 4
  %48 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add151, ptr %mem_start, align 4
  %49 = load i32, ptr %phys_mem, align 8
  %add153 = add i32 %47, 81919
  %add154 = add i32 %add153, %49
  %mem_end = getelementptr inbounds %struct.net_device, ptr %call126, i32 0, i32 3
  %50 = ptrtoint ptr %mem_end to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add154, ptr %mem_end, align 8
  %51 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %pci_conf, align 4
  %conv156 = zext i16 %52 to i32
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call126, i32 0, i32 5
  %53 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv156, ptr %base_addr, align 32
  %54 = ptrtoint ptr %irq91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq91, align 8
  %irq158 = getelementptr inbounds %struct.net_device, ptr %call126, i32 0, i32 64
  %56 = ptrtoint ptr %irq158 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %irq158, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call126, i32 0, i32 16
  %57 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @fst_ops, ptr %netdev_ops, align 8
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %call126, i32 0, i32 107
  %58 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 100, ptr %tx_queue_len, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call126, i32 0, i32 115
  %59 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 200, ptr %watchdog_timeo, align 4
  %60 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @fst_attach, ptr %add.ptr.i.i, align 4
  %xmit = getelementptr i8, ptr %call126, i32 2308
  %61 = ptrtoint ptr %xmit to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @fst_start_xmit, ptr %xmit, align 4
  %inc161 = add nuw i32 %i.1392, 1
  %62 = ptrtoint ptr %nports121 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nports121, align 4
  %cmp122 = icmp ult i32 %inc161, %63
  br i1 %cmp122, label %for.inc160.for.body124_crit_edge, label %for.inc160.for.end162_crit_edge

for.inc160.for.end162_crit_edge:                  ; preds = %for.inc160
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162

for.inc160.for.body124_crit_edge:                 ; preds = %for.inc160
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body124

for.end162:                                       ; preds = %for.inc160.for.end162_crit_edge, %if.end115.for.end162_crit_edge
  %device = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 11
  %64 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %pdev, ptr %device, align 8
  tail call fastcc void @fst_cpureset(ptr noundef nonnull %call7.i.i)
  %65 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %state, align 4
  %66 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %family, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.i = icmp eq i32 %67, 1
  br i1 %cmp.i, label %if.then.i, label %for.end162.fst_init_dma.exit_crit_edge

for.end162.fst_init_dma.exit_crit_edge:           ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_init_dma.exit

if.then.i:                                        ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device, align 8
  tail call void @pci_set_master(ptr noundef %69) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  tail call void @arm_heavy_mb() #10
  %70 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %pci_conf, align 4
  %conv.i = zext i16 %71 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874240
  %72 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %72, i32 1090781696) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %73 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %pci_conf, align 4
  %conv5.i = zext i16 %74 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874220
  %75 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %75, i32 1090781696) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %76 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %pci_conf, align 4
  %conv13.i = zext i16 %77 to i32
  %add16.i = add nuw nsw i32 %conv13.i, -18874192
  %78 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %78, i32 0) #10, !srcloc !213
  br label %fst_init_dma.exit

fst_init_dma.exit:                                ; preds = %if.then.i, %for.end162.fst_init_dma.exit_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %79 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %80 = load i32, ptr @fst_add_one.no_of_cards_added, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %80)
  %cmp170 = icmp sgt i32 %80, 31
  br i1 %cmp170, label %do.end175, label %if.end178

do.end175:                                        ; preds = %fst_init_dma.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  br label %card_array_fail

if.end178:                                        ; preds = %fst_init_dma.exit
  %arrayidx179 = getelementptr [32 x ptr], ptr @fst_card_array, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i, ptr %arrayidx179, align 4
  %inc180 = add nsw i32 %80, 1
  store i32 %inc180, ptr @fst_add_one.no_of_cards_added, align 4
  %card_no = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 12
  %82 = ptrtoint ptr %card_no to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %80, ptr %card_no, align 4
  %83 = ptrtoint ptr %nports121 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nports121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp41.not.i = icmp eq i32 %84, 0
  br i1 %cmp41.not.i, label %if.end178.fst_init_card.exit.thread_crit_edge, label %if.end178.for.body.i_crit_edge

if.end178.for.body.i_crit_edge:                   ; preds = %if.end178
  br label %for.body.i

if.end178.fst_init_card.exit.thread_crit_edge:    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_init_card.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end178.for.body.i_crit_edge
  %i.042.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end178.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 10, i32 %i.042.i
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i, align 4
  %call.i367 = tail call i32 @register_netdev(ptr noundef %86) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i367)
  %cmp1.i = icmp slt i32 %call.i367, 0
  br i1 %cmp1.i, label %do.end.i, label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  %sub.i = sub i32 0, %call.i367
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %i.042.i, i32 noundef %sub.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.042.i)
  %tobool.not43.i = icmp eq i32 %i.042.i, 0
  br i1 %tobool.not43.i, label %do.end.i.init_card_fail_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.init_card_fail_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_card_fail

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %i.144.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %i.042.i, %do.end.i.while.body.i_crit_edge ]
  %dec.i = add i32 %i.144.i, -1
  %arrayidx4.i = getelementptr %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 10, i32 %dec.i
  %87 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx4.i, align 4
  tail call void @unregister_hdlc_device(ptr noundef %88) #10
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.init_card_fail_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.init_card_fail_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_card_fail

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.042.i, 1
  %89 = ptrtoint ptr %nports121 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nports121, align 4
  %cmp.i368 = icmp ult i32 %inc.i, %90
  br i1 %cmp.i368, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.fst_init_card.exit.thread_crit_edge

for.inc.i.fst_init_card.exit.thread_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_init_card.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

fst_init_card.exit.thread:                        ; preds = %for.inc.i.fst_init_card.exit.thread_crit_edge, %if.end178.fst_init_card.exit.thread_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.end178.fst_init_card.exit.thread_crit_edge ], [ %90, %for.inc.i.fst_init_card.exit.thread_crit_edge ]
  %ports10.i = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 10
  %91 = ptrtoint ptr %ports10.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ports10.i, align 8
  %sub15.i = add i32 %.lcssa.i, -1
  %arrayidx16.i = getelementptr %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 10, i32 %sub15.i
  %93 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx16.i, align 4
  %95 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %type, align 8
  %arrayidx20.i = getelementptr [7 x ptr], ptr @type_strings, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx20.i, align 4
  %99 = ptrtoint ptr %irq91 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %irq91, align 8
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %92, ptr noundef %94, ptr noundef %98, i32 noundef %100, i32 noundef %.lcssa.i) #13
  %101 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %family, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp186 = icmp eq i32 %102, 1
  br i1 %cmp186, label %if.then188, label %fst_init_card.exit.thread.cleanup246_crit_edge

fst_init_card.exit.thread.cleanup246_crit_edge:   ; preds = %fst_init_card.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup246

if.then188:                                       ; preds = %fst_init_card.exit.thread
  %103 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device, align 8
  %dev190 = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 44
  %rx_dma_handle_card = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 19
  %call.i369 = tail call ptr @dma_alloc_attrs(ptr noundef %dev190, i32 noundef 8000, ptr noundef %rx_dma_handle_card, i32 noundef 3264, i32 noundef 0) #10
  %rx_dma_handle_host = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 18
  %105 = ptrtoint ptr %rx_dma_handle_host to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i369, ptr %rx_dma_handle_host, align 4
  %tobool193.not = icmp eq ptr %call.i369, null
  br i1 %tobool193.not, label %do.end197, label %if.end200

do.end197:                                        ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #12
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  br label %rx_dma_fail

if.end200:                                        ; preds = %if.then188
  %106 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device, align 8
  %dev202 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %tx_dma_handle_card = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 21
  %call.i370 = tail call ptr @dma_alloc_attrs(ptr noundef %dev202, i32 noundef 8000, ptr noundef %tx_dma_handle_card, i32 noundef 3264, i32 noundef 0) #10
  %tx_dma_handle_host = getelementptr inbounds %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 20
  %108 = ptrtoint ptr %tx_dma_handle_host to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call.i370, ptr %tx_dma_handle_host, align 4
  %tobool205.not = icmp eq ptr %call.i370, null
  br i1 %tobool205.not, label %do.end209, label %if.end200.cleanup246_crit_edge

if.end200.cleanup246_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup246

do.end209:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  %call211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #13
  %109 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device, align 8
  %dev215 = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 44
  %111 = ptrtoint ptr %rx_dma_handle_host to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rx_dma_handle_host, align 4
  %113 = ptrtoint ptr %rx_dma_handle_card to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_dma_handle_card, align 8
  tail call void @dma_free_attrs(ptr noundef %dev215, i32 noundef 8000, ptr noundef %112, i32 noundef %114, i32 noundef 0) #10
  br label %rx_dma_fail

rx_dma_fail:                                      ; preds = %do.end209, %do.end197
  tail call fastcc void @fst_disable_intr(ptr noundef nonnull %call7.i.i)
  %115 = ptrtoint ptr %nports121 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nports121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp220393.not = icmp eq i32 %116, 0
  br i1 %cmp220393.not, label %rx_dma_fail.init_card_fail_crit_edge, label %rx_dma_fail.for.body222_crit_edge

rx_dma_fail.for.body222_crit_edge:                ; preds = %rx_dma_fail
  br label %for.body222

rx_dma_fail.init_card_fail_crit_edge:             ; preds = %rx_dma_fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_card_fail

for.body222:                                      ; preds = %for.body222.for.body222_crit_edge, %rx_dma_fail.for.body222_crit_edge
  %i.4394 = phi i32 [ %inc227, %for.body222.for.body222_crit_edge ], [ 0, %rx_dma_fail.for.body222_crit_edge ]
  %arrayidx224 = getelementptr %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 10, i32 %i.4394
  %117 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx224, align 4
  tail call void @unregister_hdlc_device(ptr noundef %118) #10
  %inc227 = add nuw i32 %i.4394, 1
  %119 = ptrtoint ptr %nports121 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %nports121, align 4
  %cmp220 = icmp ult i32 %inc227, %120
  br i1 %cmp220, label %for.body222.for.body222_crit_edge, label %for.body222.init_card_fail_crit_edge

for.body222.init_card_fail_crit_edge:             ; preds = %for.body222
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_card_fail

for.body222.for.body222_crit_edge:                ; preds = %for.body222
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body222

init_card_fail:                                   ; preds = %for.body222.init_card_fail_crit_edge, %rx_dma_fail.init_card_fail_crit_edge, %while.body.i.init_card_fail_crit_edge, %do.end.i.init_card_fail_crit_edge
  %err.3 = phi i32 [ %call.i367, %do.end.i.init_card_fail_crit_edge ], [ -12, %rx_dma_fail.init_card_fail_crit_edge ], [ -12, %for.body222.init_card_fail_crit_edge ], [ %call.i367, %while.body.i.init_card_fail_crit_edge ]
  %121 = ptrtoint ptr %card_no to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %card_no, align 4
  %arrayidx230 = getelementptr [32 x ptr], ptr @fst_card_array, i32 0, i32 %122
  %123 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %arrayidx230, align 4
  br label %card_array_fail

card_array_fail:                                  ; preds = %init_card_fail, %do.end175
  %err.4 = phi i32 [ -12, %do.end175 ], [ %err.3, %init_card_fail ]
  %124 = ptrtoint ptr %nports121 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nports121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp233395.not = icmp eq i32 %125, 0
  br i1 %cmp233395.not, label %card_array_fail.hdlcdev_fail_crit_edge, label %card_array_fail.for.body235_crit_edge

card_array_fail.for.body235_crit_edge:            ; preds = %card_array_fail
  br label %for.body235

card_array_fail.hdlcdev_fail_crit_edge:           ; preds = %card_array_fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdlcdev_fail

for.body235:                                      ; preds = %for.body235.for.body235_crit_edge, %card_array_fail.for.body235_crit_edge
  %i.5396 = phi i32 [ %inc240, %for.body235.for.body235_crit_edge ], [ 0, %card_array_fail.for.body235_crit_edge ]
  %arrayidx237 = getelementptr %struct.fst_card_info, ptr %call7.i.i, i32 0, i32 10, i32 %i.5396
  %126 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx237, align 4
  tail call void @free_netdev(ptr noundef %127) #10
  %inc240 = add nuw i32 %i.5396, 1
  %128 = ptrtoint ptr %nports121 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %nports121, align 4
  %cmp233 = icmp ult i32 %inc240, %129
  br i1 %cmp233, label %for.body235.for.body235_crit_edge, label %for.body235.hdlcdev_fail_crit_edge

for.body235.hdlcdev_fail_crit_edge:               ; preds = %for.body235
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdlcdev_fail

for.body235.for.body235_crit_edge:                ; preds = %for.body235
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body235

hdlcdev_fail:                                     ; preds = %for.body235.hdlcdev_fail_crit_edge, %card_array_fail.hdlcdev_fail_crit_edge, %cleanup
  %err.5 = phi i32 [ -12, %cleanup ], [ %err.4, %card_array_fail.hdlcdev_fail_crit_edge ], [ %err.4, %for.body235.hdlcdev_fail_crit_edge ]
  %130 = ptrtoint ptr %irq91 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %irq91, align 8
  %call243 = tail call ptr @free_irq(i32 noundef %131, ptr noundef nonnull %call7.i.i) #10
  br label %irq_fail

irq_fail:                                         ; preds = %hdlcdev_fail, %do.end85
  %err.6 = phi i32 [ -19, %do.end85 ], [ %err.5, %hdlcdev_fail ]
  %132 = ptrtoint ptr %ctlmem to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ctlmem, align 4
  tail call void @iounmap(ptr noundef %133) #10
  br label %ioremap_ctlmem_fail

ioremap_ctlmem_fail:                              ; preds = %irq_fail, %do.end73
  %err.7 = phi i32 [ %err.6, %irq_fail ], [ -19, %do.end73 ]
  %134 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call7.i.i, align 8
  tail call void @iounmap(ptr noundef %135) #10
  br label %ioremap_physmem_fail

ioremap_physmem_fail:                             ; preds = %ioremap_ctlmem_fail, %do.end62
  %err.8 = phi i32 [ %err.7, %ioremap_ctlmem_fail ], [ -19, %do.end62 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #10
  br label %regions_fail

regions_fail:                                     ; preds = %ioremap_physmem_fail, %do.end43
  %err.9 = phi i32 [ %call38, %do.end43 ], [ %err.8, %ioremap_physmem_fail ]
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  br label %enable_fail

enable_fail:                                      ; preds = %regions_fail, %do.end34
  %err.10 = phi i32 [ %call29, %do.end34 ], [ %err.9, %regions_fail ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup246

cleanup246:                                       ; preds = %enable_fail, %if.end200.cleanup246_crit_edge, %fst_init_card.exit.thread.cleanup246_crit_edge, %if.end24.cleanup246_crit_edge, %do.end18
  %retval.0 = phi i32 [ -16, %do.end18 ], [ %err.10, %enable_fail ], [ -12, %if.end24.cleanup246_crit_edge ], [ 0, %if.end200.cleanup246_crit_edge ], [ 0, %fst_init_card.exit.thread.cleanup246_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fst_remove_one(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nports = getelementptr inbounds %struct.fst_card_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not = icmp eq i32 %3, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fst_card_info, ptr %1, i32 0, i32 10, i32 %i.026
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @unregister_hdlc_device(ptr noundef %5) #10
  %inc = add nuw i32 %i.026, 1
  %6 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %family.i = getelementptr inbounds %struct.fst_card_info, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %pci_conf.i = getelementptr inbounds %struct.fst_card_info, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %pci_conf.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pci_conf.i, align 4
  %conv.i = zext i16 %11 to i32
  br i1 %cmp.i, label %do.body.i, label %do.body2.i

do.body.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %add1.i = add nuw nsw i32 %conv.i, -18874264
  %12 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 0) #10, !srcloc !213
  br label %fst_disable_intr.exit

do.body2.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %add8.i = add nuw nsw i32 %conv.i, -18874292
  %13 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 0) #10, !srcloc !216
  br label %fst_disable_intr.exit

fst_disable_intr.exit:                            ; preds = %do.body2.i, %do.body.i
  %irq = getelementptr inbounds %struct.fst_card_info, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %1) #10
  %ctlmem = getelementptr inbounds %struct.fst_card_info, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %ctlmem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctlmem, align 4
  tail call void @iounmap(ptr noundef %17) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %19) #10
  tail call void @pci_release_regions(ptr noundef %pdev) #10
  %20 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp3 = icmp eq i32 %21, 1
  br i1 %cmp3, label %if.then, label %fst_disable_intr.exit.if.end_crit_edge

fst_disable_intr.exit.if.end_crit_edge:           ; preds = %fst_disable_intr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %fst_disable_intr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.fst_card_info, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %rx_dma_handle_host = getelementptr inbounds %struct.fst_card_info, ptr %1, i32 0, i32 18
  %24 = ptrtoint ptr %rx_dma_handle_host to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_dma_handle_host, align 4
  %rx_dma_handle_card = getelementptr inbounds %struct.fst_card_info, ptr %1, i32 0, i32 19
  %26 = ptrtoint ptr %rx_dma_handle_card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_dma_handle_card, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4, i32 noundef 8000, ptr noundef %25, i32 noundef %27, i32 noundef 0) #10
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %tx_dma_handle_host = getelementptr inbounds %struct.fst_card_info, ptr %1, i32 0, i32 20
  %30 = ptrtoint ptr %tx_dma_handle_host to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_dma_handle_host, align 4
  %tx_dma_handle_card = getelementptr inbounds %struct.fst_card_info, ptr %1, i32 0, i32 21
  %32 = ptrtoint ptr %tx_dma_handle_card to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_dma_handle_card, align 4
  tail call void @dma_free_attrs(ptr noundef %dev6, i32 noundef 8000, ptr noundef %31, i32 noundef %33, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %fst_disable_intr.exit.if.end_crit_edge
  %card_no = getelementptr inbounds %struct.fst_card_info, ptr %1, i32 0, i32 12
  %34 = ptrtoint ptr %card_no to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %card_no, align 4
  %arrayidx7 = getelementptr [32 x ptr], ptr @fst_card_array, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx7, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fst_intr(i32 noundef %dummy, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %do.end3

do.end3:                                          ; preds = %entry
  %card_no = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 12
  %2 = ptrtoint ptr %card_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_no, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %3, i32 noundef %1) #13
  %family.i = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 13
  %4 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  %ctlmem.i = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %ctlmem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctlmem.i, align 4
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  br label %cleanup

do.body.i:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %pci_conf.i = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 9
  %9 = ptrtoint ptr %pci_conf.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pci_conf.i, align 4
  %conv.i = zext i16 %10 to i32
  %add2.i = add nuw nsw i32 %conv.i, -18874292
  %11 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 17157) #10, !srcloc !216
  br label %cleanup

if.end:                                           ; preds = %entry
  %family.i219 = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 13
  %12 = ptrtoint ptr %family.i219 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %family.i219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i220 = icmp eq i32 %13, 1
  br i1 %cmp.i220, label %if.then.i222, label %do.body.i226

if.then.i222:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ctlmem.i221 = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 1
  %14 = ptrtoint ptr %ctlmem.i221 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctlmem.i221, align 4
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  br label %fst_clear_intr.exit227

do.body.i226:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %pci_conf.i223 = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 9
  %17 = ptrtoint ptr %pci_conf.i223 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pci_conf.i223, align 4
  %conv.i224 = zext i16 %18 to i32
  %add2.i225 = add nuw nsw i32 %conv.i224, -18874292
  %19 = inttoptr i32 %add2.i225 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 17157) #10, !srcloc !216
  br label %fst_clear_intr.exit227

fst_clear_intr.exit227:                           ; preds = %do.body.i226, %if.then.i222
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 18753
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp8 = icmp eq i8 %22, 1
  br i1 %cmp8, label %if.then10, label %fst_clear_intr.exit227.if.end16_crit_edge

fst_clear_intr.exit227.if.end16_crit_edge:        ; preds = %fst_clear_intr.exit227
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %fst_clear_intr.exit227
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_id, align 4
  %add.ptr15 = getelementptr i8, ptr %24, i32 18753
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 -18) #10, !srcloc !222
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %fst_clear_intr.exit227.if.end16_crit_edge
  %do_card_interrupt.0 = phi i32 [ 4, %if.then10 ], [ 0, %fst_clear_intr.exit227.if.end16_crit_edge ]
  %25 = ptrtoint ptr %family.i219 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %family.i219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp17 = icmp eq i32 %26, 1
  br i1 %cmp17, label %if.then19, label %if.end16.if.end60_crit_edge

if.end16.if.end60_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then19:                                        ; preds = %if.end16
  %pci_conf = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 9
  %27 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pci_conf, align 4
  %conv21 = zext i16 %28 to i32
  %add23 = add nuw nsw i32 %conv21, -18874264
  %29 = inttoptr i32 %add23 to ptr
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %29) #10, !srcloc !223
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  %and27 = and i32 %31, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %if.then19.if.end42_crit_edge, label %do.body32

if.then19.if.end42_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

do.body32:                                        ; preds = %if.then19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pci_conf, align 4
  %conv36 = zext i16 %33 to i32
  %add39 = add nuw nsw i32 %conv36, -18874200
  %34 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 8) #10, !srcloc !222
  %dma_port_rx = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 23
  %35 = ptrtoint ptr %dma_port_rx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_port_rx, align 4
  %dma_len_rx = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 25
  %37 = ptrtoint ptr %dma_len_rx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_len_rx, align 4
  %dma_skb_rx = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 22
  %39 = ptrtoint ptr %dma_skb_rx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_skb_rx, align 4
  %dma_rxpos = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 28
  %41 = ptrtoint ptr %dma_rxpos to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_rxpos, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %36, align 4
  %index.i = getelementptr inbounds %struct.fst_port_info, ptr %36, i32 0, i32 2
  %45 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index.i, align 4
  %rx_dma_handle_host.i = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 18
  %47 = ptrtoint ptr %rx_dma_handle_host.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_dma_handle_host.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef %40, i32 noundef %38) #10
  %49 = call ptr @memcpy(ptr %call.i.i, ptr %48, i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_id, align 4
  %bits.i = getelementptr [4 x [8 x %struct.rxdesc]], ptr inttoptr (i32 8192 to ptr), i32 0, i32 %46, i32 %42, i32 2
  %52 = ptrtoint ptr %bits.i to i32
  %add.ptr.i = getelementptr i8, ptr %51, i32 %52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -128) #10, !srcloc !222
  %stats.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 36
  %53 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %54, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 36, i32 2
  %55 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %56, %38
  store i32 %add.i, ptr %rx_bytes.i, align 8
  %mode.i = getelementptr inbounds %struct.fst_port_info, ptr %36, i32 0, i32 5
  %57 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp.i228 = icmp eq i32 %58, 4
  %59 = getelementptr inbounds %struct.anon.44, ptr %40, i32 0, i32 2
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %44, ptr %59, align 8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 19
  %61 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 18
  %63 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15, i32 0, i32 21
  %65 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  br i1 %cmp.i228, label %if.then.i229, label %if.else.i

if.then.i229:                                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %pkt_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15
  %66 = ptrtoint ptr %pkt_type.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load.i.i = load i16, ptr %pkt_type.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, 8191
  store i16 %bf.clear.i.i, ptr %pkt_type.i.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %do.body32
  %proto.i.i = getelementptr i8, ptr %44, i32 2312
  %67 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %proto.i.i, align 4
  %type_trans.i.i = getelementptr inbounds %struct.hdlc_proto, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %type_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %type_trans.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i, label %if.else.i.if.end.i_crit_edge, label %if.then.i.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call zeroext i16 %70(ptr noundef %40, ptr noundef %44) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.else.i.if.end.i_crit_edge, %if.then.i229
  %retval.0.i.sink.i = phi i16 [ 24582, %if.then.i229 ], [ %call3.i.i, %if.then.i.i ], [ 25, %if.else.i.if.end.i_crit_edge ]
  %protocol12.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15, i32 0, i32 18
  %71 = ptrtoint ptr %protocol12.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %retval.0.i.sink.i, ptr %protocol12.i, align 8
  %call13.i = tail call i32 @netif_rx(ptr noundef %40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.i)
  %cmp15.i = icmp eq i32 %call13.i, 1
  br i1 %cmp15.i, label %if.then16.i, label %if.end.i.fst_rx_dma_complete.exit_crit_edge

if.end.i.fst_rx_dma_complete.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_rx_dma_complete.exit

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 36, i32 6
  %72 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_dropped.i, align 8
  %inc18.i = add i32 %73, 1
  store i32 %inc18.i, ptr %rx_dropped.i, align 8
  br label %fst_rx_dma_complete.exit

fst_rx_dma_complete.exit:                         ; preds = %if.then16.i, %if.end.i.fst_rx_dma_complete.exit_crit_edge
  %dmarx_in_progress = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 14
  %74 = ptrtoint ptr %dmarx_in_progress to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %dmarx_in_progress, align 4
  %add41 = or i32 %do_card_interrupt.0, 1
  br label %if.end42

if.end42:                                         ; preds = %fst_rx_dma_complete.exit, %if.then19.if.end42_crit_edge
  %do_card_interrupt.1 = phi i32 [ %add41, %fst_rx_dma_complete.exit ], [ %do_card_interrupt.0, %if.then19.if.end42_crit_edge ]
  %and43 = and i32 %31, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end60_crit_edge, label %do.body49

if.end42.if.end60_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

do.body49:                                        ; preds = %if.end42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %75 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %pci_conf, align 4
  %conv53 = zext i16 %76 to i32
  %add56 = add nuw nsw i32 %conv53, -18874199
  %77 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 8) #10, !srcloc !222
  %dma_port_tx = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 24
  %78 = ptrtoint ptr %dma_port_tx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dma_port_tx, align 4
  %dma_len_tx = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 26
  %80 = ptrtoint ptr %dma_len_tx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_len_tx, align 4
  %dma_txpos = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 27
  %82 = ptrtoint ptr %dma_txpos to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma_txpos, align 4
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %79, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %86 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_id, align 4
  %index.i230 = getelementptr inbounds %struct.fst_port_info, ptr %79, i32 0, i32 2
  %88 = ptrtoint ptr %index.i230 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %index.i230, align 4
  %bits.i231 = getelementptr [4 x [2 x %struct.txdesc]], ptr inttoptr (i32 8448 to ptr), i32 0, i32 %89, i32 %83, i32 2
  %90 = ptrtoint ptr %bits.i231 to i32
  %add.ptr.i232 = getelementptr i8, ptr %87, i32 %90
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i232, i8 -125) #10, !srcloc !222
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 36, i32 1
  %91 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_packets.i, align 4
  %inc.i233 = add i32 %92, 1
  store i32 %inc.i233, ptr %tx_packets.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 36, i32 3
  %93 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_bytes.i, align 4
  %add.i234 = add i32 %94, %81
  store i32 %add.i234, ptr %tx_bytes.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 103
  %95 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %96, i32 0, i32 12
  %98 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %97)
  %cmp.not.i.i.i = icmp eq i32 %99, %97
  br i1 %cmp.not.i.i.i, label %do.body49.fst_tx_dma_complete.exit_crit_edge, label %do.body5.i.i.i

do.body49.fst_tx_dma_complete.exit_crit_edge:     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_tx_dma_complete.exit

do.body5.i.i.i:                                   ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %97, ptr %trans_start.i.i.i, align 16
  br label %fst_tx_dma_complete.exit

fst_tx_dma_complete.exit:                         ; preds = %do.body5.i.i.i, %do.body49.fst_tx_dma_complete.exit_crit_edge
  %dmatx_in_progress = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 15
  %101 = ptrtoint ptr %dmatx_in_progress to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %dmatx_in_progress, align 4
  %add58 = add nsw i32 %do_card_interrupt.1, 2
  br label %if.end60

if.end60:                                         ; preds = %fst_tx_dma_complete.exit, %if.end42.if.end60_crit_edge, %if.end16.if.end60_crit_edge
  %do_card_interrupt.2 = phi i32 [ %add58, %fst_tx_dma_complete.exit ], [ %do_card_interrupt.1, %if.end42.if.end60_crit_edge ], [ %do_card_interrupt.0, %if.end16.if.end60_crit_edge ]
  %102 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_id, align 4
  %add.ptr64 = getelementptr i8, ptr %103, i32 18964
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #10, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool68.not = icmp eq i32 %104, 0
  br i1 %tobool68.not, label %if.end60.if.end78_crit_edge, label %do.body73

if.end60.if.end78_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

do.body73:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %105 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev_id, align 4
  %add.ptr77 = getelementptr i8, ptr %106, i32 18964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 0) #10, !srcloc !213
  br label %if.end78

if.end78:                                         ; preds = %do.body73, %if.end60.if.end78_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_card_interrupt.2)
  %tobool79.not = icmp eq i32 %do_card_interrupt.2, 0
  br i1 %tobool79.not, label %if.end78.cleanup_crit_edge, label %if.end81

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end81:                                         ; preds = %if.end78
  %card_no82 = getelementptr inbounds %struct.fst_card_info, ptr %dev_id, i32 0, i32 12
  %107 = ptrtoint ptr %card_no82 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %card_no82, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fst_work_q_lock) #10
  %sh_prom.i = zext i32 %108 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %109 = load i64, ptr @fst_work_intq, align 8
  %or.i = or i64 %109, %shl.i
  store i64 %or.i, ptr @fst_work_intq, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fst_work_q_lock, i32 noundef %call2.i) #10
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @fst_int_task, i32 0, i32 1)) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i235, label %if.end81.tasklet_schedule.exit_crit_edge

if.end81.tasklet_schedule.exit_crit_edge:         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %tasklet_schedule.exit

if.then.i235:                                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef nonnull @fst_int_task) #10
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i235, %if.end81.tasklet_schedule.exit_crit_edge
  %110 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev_id, align 4
  %add.ptr86 = getelementptr i8, ptr %111, i32 18784
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr86) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  %113 = and i8 %112, 31
  %114 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev_id, align 4
  %add.ptr95 = getelementptr i8, ptr %115, i32 18785
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr95) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %117 = and i8 %116, 31
  %and100 = zext i8 %117 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %113, i8 %117)
  %cmp101.not248 = icmp eq i8 %113, %117
  br i1 %cmp101.not248, label %tasklet_schedule.exit.do.body160_crit_edge, label %while.body.preheader

tasklet_schedule.exit.do.body160_crit_edge:       ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body160

while.body.preheader:                             ; preds = %tasklet_schedule.exit
  %and91 = zext i8 %113 to i32
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.preheader
  %rdidx.0249 = phi i32 [ %spec.store.select, %sw.epilog.while.body_crit_edge ], [ %and91, %while.body.preheader ]
  %118 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_id, align 4
  %arrayidx = getelementptr [32 x i8], ptr inttoptr (i32 18786 to ptr), i32 0, i32 %rdidx.0249
  %120 = ptrtoint ptr %arrayidx to i32
  %add.ptr106 = getelementptr i8, ptr %119, i32 %120
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr106) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %conv110 = zext i8 %121 to i32
  %and111 = and i32 %conv110, 3
  %arrayidx112 = getelementptr %struct.fst_card_info, ptr %dev_id, i32 0, i32 10, i32 %and111
  %122 = zext i8 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %121, label %do.end152 [
    i8 48, label %do.end118
    i8 24, label %while.body.sw.bb122_crit_edge
    i8 25, label %while.body.sw.bb122_crit_edge250
    i8 26, label %while.body.sw.bb122_crit_edge251
    i8 27, label %while.body.sw.bb122_crit_edge252
    i8 36, label %while.body.sw.epilog_crit_edge
    i8 37, label %while.body.sw.epilog_crit_edge253
    i8 38, label %while.body.sw.epilog_crit_edge254
    i8 39, label %while.body.sw.epilog_crit_edge255
    i8 40, label %while.body.do.end134_crit_edge
    i8 41, label %while.body.do.end134_crit_edge256
    i8 42, label %while.body.do.end134_crit_edge257
    i8 43, label %while.body.do.end134_crit_edge258
    i8 32, label %while.body.sw.epilog_crit_edge259
    i8 33, label %do.end148
  ]

while.body.sw.epilog_crit_edge259:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.body.do.end134_crit_edge258:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end134

while.body.do.end134_crit_edge257:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end134

while.body.do.end134_crit_edge256:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end134

while.body.do.end134_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end134

while.body.sw.epilog_crit_edge255:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.body.sw.epilog_crit_edge254:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.body.sw.epilog_crit_edge253:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.body.sw.bb122_crit_edge252:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb122

while.body.sw.bb122_crit_edge251:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb122

while.body.sw.bb122_crit_edge250:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb122

while.body.sw.bb122_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb122

do.end118:                                        ; preds = %while.body
  %run = getelementptr %struct.fst_card_info, ptr %dev_id, i32 0, i32 10, i32 %and111, i32 4
  %123 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %run, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool119.not = icmp eq i32 %124, 0
  br i1 %tobool119.not, label %do.end118.sw.epilog_crit_edge, label %if.then120

do.end118.sw.epilog_crit_edge:                    ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then120:                                       ; preds = %do.end118
  %125 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev_id, align 4
  %add.ptr.i237 = getelementptr i8, ptr %126, i32 19301
  %127 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i237) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  %128 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev_id, align 4
  %add.ptr5.i = getelementptr i8, ptr %129, i32 19302
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  %131 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev_id, align 4
  %add.ptr12.i = getelementptr i8, ptr %132, i32 19303
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i238 = icmp eq i8 %127, 0
  %134 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx112, align 4
  %state.i64.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 6
  %136 = ptrtoint ptr %state.i64.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %state.i64.i, align 4
  %138 = and i32 %137, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i65.i = icmp eq i32 %138, 0
  br i1 %tobool.not.i238, label %if.else.i240, label %if.then.i239

if.then.i239:                                     ; preds = %if.then120
  br i1 %tobool.not.i65.i, label %do.end.i, label %if.then.i239.sw.epilog_crit_edge

if.then.i239.sw.epilog_crit_edge:                 ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.i:                                         ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_carrier_off(ptr noundef %135) #10
  br label %sw.epilog

if.else.i240:                                     ; preds = %if.then120
  br i1 %tobool.not.i65.i, label %if.else.i240.sw.epilog_crit_edge, label %do.end24.i

if.else.i240.sw.epilog_crit_edge:                 ; preds = %if.else.i240
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end24.i:                                       ; preds = %if.else.i240
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_carrier_on(ptr noundef %135) #10
  br label %sw.epilog

sw.bb122:                                         ; preds = %while.body.sw.bb122_crit_edge, %while.body.sw.bb122_crit_edge250, %while.body.sw.bb122_crit_edge251, %while.body.sw.bb122_crit_edge252
  %run123 = getelementptr %struct.fst_card_info, ptr %dev_id, i32 0, i32 10, i32 %and111, i32 4
  %139 = ptrtoint ptr %run123 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %run123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool124.not = icmp eq i32 %140, 0
  br i1 %tobool124.not, label %sw.bb122.sw.epilog_crit_edge, label %if.then125

sw.bb122.sw.epilog_crit_edge:                     ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then125:                                       ; preds = %sw.bb122
  %141 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev_id, align 4
  %index.i241 = getelementptr %struct.fst_card_info, ptr %dev_id, i32 0, i32 10, i32 %and111, i32 2
  %143 = ptrtoint ptr %index.i241 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %index.i241, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr inttoptr (i32 19000 to ptr), i32 0, i32 %144
  %145 = ptrtoint ptr %arrayidx.i to i32
  %add.ptr.i242 = getelementptr i8, ptr %142, i32 %145
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i242) #10, !srcloc !223
  %147 = lshr i32 %146, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  %hwif.i = getelementptr %struct.fst_card_info, ptr %dev_id, i32 0, i32 10, i32 %and111, i32 3
  %148 = ptrtoint ptr %hwif.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %hwif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %149)
  %cmp.i243 = icmp eq i32 %149, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %149)
  %cmp3.i = icmp eq i32 %149, 4
  %150 = or i1 %cmp.i243, %cmp3.i
  %151 = select i1 %150, i32 1, i32 4
  %and.i = and i32 %151, %147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i244 = icmp eq i32 %and.i, 0
  %152 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx112, align 4
  %state.i22.i = getelementptr inbounds %struct.net_device, ptr %153, i32 0, i32 6
  %154 = ptrtoint ptr %state.i22.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %state.i22.i, align 4
  %156 = and i32 %155, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.i23.i = icmp eq i32 %156, 0
  br i1 %tobool.not.i244, label %if.else.i247, label %if.then.i245

if.then.i245:                                     ; preds = %if.then125
  br i1 %tobool.not.i23.i, label %if.then.i245.sw.epilog_crit_edge, label %do.end.i246

if.then.i245.sw.epilog_crit_edge:                 ; preds = %if.then.i245
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.i246:                                      ; preds = %if.then.i245
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_carrier_on(ptr noundef %153) #10
  br label %sw.epilog

if.else.i247:                                     ; preds = %if.then125
  br i1 %tobool.not.i23.i, label %do.end12.i, label %if.else.i247.sw.epilog_crit_edge

if.else.i247.sw.epilog_crit_edge:                 ; preds = %if.else.i247
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end12.i:                                       ; preds = %if.else.i247
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_carrier_off(ptr noundef %153) #10
  br label %sw.epilog

do.end134:                                        ; preds = %while.body.do.end134_crit_edge, %while.body.do.end134_crit_edge256, %while.body.do.end134_crit_edge257, %while.body.do.end134_crit_edge258
  %157 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx112, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %158, i32 0, i32 36, i32 5
  %159 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %160, 1
  store i32 %inc, ptr %tx_errors, align 4
  %161 = load ptr, ptr %arrayidx112, align 4
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %161, i32 0, i32 36, i32 18
  %162 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %tx_fifo_errors, align 8
  %inc137 = add i32 %163, 1
  store i32 %inc137, ptr %tx_fifo_errors, align 8
  br label %sw.epilog

do.end148:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 7, ptr %state, align 4
  br label %sw.epilog

do.end152:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv110) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end152, %do.end148, %do.end134, %do.end12.i, %if.else.i247.sw.epilog_crit_edge, %do.end.i246, %if.then.i245.sw.epilog_crit_edge, %sw.bb122.sw.epilog_crit_edge, %do.end24.i, %if.else.i240.sw.epilog_crit_edge, %do.end.i, %if.then.i239.sw.epilog_crit_edge, %do.end118.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge253, %while.body.sw.epilog_crit_edge254, %while.body.sw.epilog_crit_edge255, %while.body.sw.epilog_crit_edge259
  %inc155 = add i32 %rdidx.0249, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %inc155)
  %cmp156 = icmp sgt i32 %inc155, 31
  %spec.store.select = select i1 %cmp156, i32 0, i32 %inc155
  %cmp101.not = icmp eq i32 %spec.store.select, %and100
  br i1 %cmp101.not, label %sw.epilog.do.body160_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

sw.epilog.do.body160_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body160

do.body160:                                       ; preds = %sw.epilog.do.body160_crit_edge, %tasklet_schedule.exit.do.body160_crit_edge
  %rdidx.0.lcssa = phi i8 [ %113, %tasklet_schedule.exit.do.body160_crit_edge ], [ %117, %sw.epilog.do.body160_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %165 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev_id, align 4
  %add.ptr165 = getelementptr i8, ptr %166, i32 18784
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr165, i8 %rdidx.0.lcssa) #10, !srcloc !222
  br label %cleanup

cleanup:                                          ; preds = %do.body160, %if.end78.cleanup_crit_edge, %do.body.i, %if.then.i
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_hdlcdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fst_attach(ptr nocapture noundef readnone %dev, i16 noundef zeroext %encoding, i16 noundef zeroext %parity) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %encoding)
  %cmp.not = icmp eq i16 %encoding, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %parity)
  %cmp3.not = icmp eq i16 %parity, 5
  %or.cond = and i1 %cmp.not, %cmp3.not
  %retval.0 = select i1 %or.cond, i32 0, i32 -22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fst_start_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %card1 = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %skb) #10
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %7 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %9 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_carrier_errors, align 4
  %inc4 = add i32 %10, 1
  store i32 %inc4, ptr %tx_carrier_errors, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %12)
  %cmp = icmp ugt i32 %12, 8192
  br i1 %cmp, label %do.end11, label %do.body17

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %skb) #10
  %tx_errors13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %13 = ptrtoint ptr %tx_errors13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_errors13, align 4
  %inc14 = add i32 %14, 1
  store i32 %inc14, ptr %tx_errors13, align 4
  br label %cleanup

do.body17:                                        ; preds = %if.end
  %card_lock = getelementptr inbounds %struct.fst_card_info, ptr %3, i32 0, i32 8
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %card_lock) #10
  %txqe = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %txqe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txqe, align 4
  %txqs = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %txqs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %txqs, align 4
  %sub = sub i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp25 = icmp slt i32 %sub, 0
  %add = add i32 %sub, 16
  %spec.select = select i1 %cmp25, i32 %add, i32 %sub
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %card_lock, i32 noundef %call20) #10
  %19 = load i32, ptr @fst_txq_high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %19)
  %cmp30 = icmp sgt i32 %spec.select, %19
  br i1 %cmp30, label %if.then32, label %do.body17.if.end33_crit_edge

do.body17.if.end33_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then32:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %start = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %start, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %do.body17.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select)
  %cmp34 = icmp eq i32 %spec.select, 15
  br i1 %cmp34, label %if.then36, label %do.body45

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %skb) #10
  %tx_errors38 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %23 = ptrtoint ptr %tx_errors38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_errors38, align 4
  %inc39 = add i32 %24, 1
  store i32 %inc39, ptr %tx_errors38, align 4
  br label %cleanup

do.body45:                                        ; preds = %if.end33
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %card_lock) #10
  %25 = ptrtoint ptr %txqe to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %txqe, align 4
  %arrayidx = getelementptr %struct.fst_port_info, ptr %1, i32 0, i32 12, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %skb, ptr %arrayidx, align 4
  %28 = load i32, ptr %txqe, align 4
  %inc60 = add i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc60)
  %cmp62 = icmp eq i32 %inc60, 16
  %spec.select97 = select i1 %cmp62, i32 0, i32 %inc60
  %29 = ptrtoint ptr %txqe to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select97, ptr %txqe, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %card_lock, i32 noundef %call53) #10
  %card_no = getelementptr inbounds %struct.fst_card_info, ptr %3, i32 0, i32 12
  %30 = ptrtoint ptr %card_no to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %card_no, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fst_work_q_lock) #10
  %sh_prom.i = zext i32 %31 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %32 = load i64, ptr @fst_work_txq, align 8
  %or.i = or i64 %32, %shl.i
  store i64 %or.i, ptr @fst_work_txq, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fst_work_q_lock, i32 noundef %call2.i) #10
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @fst_tx_task, i32 0, i32 1)) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i98 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i98, label %if.then.i, label %do.body45.cleanup_crit_edge

do.body45.cleanup_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef nonnull @fst_tx_task) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.body45.cleanup_crit_edge, %if.then36, %do.end11, %if.then
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fst_cpureset(ptr nocapture noundef readonly %card) unnamed_addr #6 align 64 {
entry:
  %interrupt_line_register = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %interrupt_line_register) #10
  %0 = ptrtoint ptr %interrupt_line_register to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %interrupt_line_register, align 1, !annotation !239
  %family = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 13
  %1 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 11
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %call = call i32 @pci_read_config_byte(ptr noundef %4, i32 noundef 60, ptr noundef nonnull %interrupt_line_register) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  call void @arm_heavy_mb() #10
  %pci_conf = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 9
  %5 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pci_conf, align 4
  %conv = zext i16 %6 to i32
  %add6 = add nuw nsw i32 %conv, -18874258
  %7 = inttoptr i32 %add6 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 3908) #10, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pci_conf, align 4
  %conv12 = zext i16 %9 to i32
  %add16 = add nuw nsw i32 %conv12, -18874258
  %10 = inttoptr i32 %add16 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 3844) #10, !srcloc !216
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pci_conf, align 4
  %conv22 = zext i16 %12 to i32
  %add26 = add nuw nsw i32 %conv22, -18874258
  %13 = inttoptr i32 %add26 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 3876) #10, !srcloc !216
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pci_conf, align 4
  %conv32 = zext i16 %15 to i32
  %add36 = add nuw nsw i32 %conv32, -18874258
  %16 = inttoptr i32 %add36 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 3844) #10, !srcloc !216
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %19 = ptrtoint ptr %interrupt_line_register to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %interrupt_line_register, align 1
  %call39 = call i32 @pci_write_config_byte(ptr noundef %18, i32 noundef 60, i8 noundef zeroext %20) #10
  br label %if.end72

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pci_conf46 = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 9
  %21 = ptrtoint ptr %pci_conf46 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pci_conf46, align 4
  %conv47 = zext i16 %22 to i32
  %add50 = add nuw nsw i32 %conv47, -18874288
  %23 = inttoptr i32 %add50 to ptr
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %23) #10, !srcloc !223
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  tail call void @arm_heavy_mb() #10
  %or = or i32 %25, 1073741824
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  %27 = ptrtoint ptr %pci_conf46 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pci_conf46, align 4
  %conv57 = zext i16 %28 to i32
  %add60 = add nuw nsw i32 %conv57, -18874288
  %29 = inttoptr i32 %add60 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 %26) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  %and65 = and i32 %25, -1073741825
  %30 = tail call i32 @llvm.bswap.i32(i32 %and65)
  %31 = ptrtoint ptr %pci_conf46 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %pci_conf46, align 4
  %conv67 = zext i16 %32 to i32
  %add70 = add nuw nsw i32 %conv67, -18874288
  %33 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 %30) #10, !srcloc !213
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %interrupt_line_register) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fst_disable_intr(ptr nocapture noundef readonly %card) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %family = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 13
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %pci_conf = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 9
  %2 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pci_conf, align 4
  %conv = zext i16 %3 to i32
  br i1 %cmp, label %do.body, label %do.body2

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add1 = add nuw nsw i32 %conv, -18874264
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 0) #10, !srcloc !213
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add8 = add nuw nsw i32 %conv, -18874292
  %5 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 0) #10, !srcloc !216
  br label %if.end

if.end:                                           ; preds = %do.body2, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_hdlc_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fst_process_int_work_q(ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fst_work_q_lock) #10
  %0 = load i64, ptr @fst_work_intq, align 8
  store i64 0, ptr @fst_work_intq, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fst_work_q_lock, i32 noundef %call3) #10
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %entry
  %work_intq.026 = phi i64 [ %0, %entry ], [ %shr, %if.end17.for.body_crit_edge ]
  %i.024 = phi i32 [ 0, %entry ], [ %inc, %if.end17.for.body_crit_edge ]
  %and = and i64 %work_intq.026, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body.if.end17_crit_edge, label %if.then

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr [32 x ptr], ptr @fst_card_array, i32 0, i32 %i.024
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %2, null
  br i1 %tobool10.not, label %if.then.if.end17_crit_edge, label %do.end14

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end14:                                         ; preds = %if.then
  %nports.i = getelementptr inbounds %struct.fst_card_info, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp28.not.i = icmp eq i32 %4, 0
  br i1 %cmp28.not.i, label %do.end14.do_bottom_half_rx.exit_crit_edge, label %for.body.lr.ph.i

do.end14.do_bottom_half_rx.exit_crit_edge:        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_bottom_half_rx.exit

for.body.lr.ph.i:                                 ; preds = %do.end14
  %ports.i = getelementptr inbounds %struct.fst_card_info, ptr %2, i32 0, i32 10
  %dmarx_in_progress.i = getelementptr inbounds %struct.fst_card_info, ptr %2, i32 0, i32 14
  %family.i.i = getelementptr inbounds %struct.fst_card_info, ptr %2, i32 0, i32 13
  %dma_skb_rx.i.i = getelementptr inbounds %struct.fst_card_info, ptr %2, i32 0, i32 22
  %dma_port_rx.i.i = getelementptr inbounds %struct.fst_card_info, ptr %2, i32 0, i32 23
  %dma_len_rx.i.i = getelementptr inbounds %struct.fst_card_info, ptr %2, i32 0, i32 25
  %dma_rxpos.i.i = getelementptr inbounds %struct.fst_card_info, ptr %2, i32 0, i32 28
  %rx_dma_handle_card.i.i = getelementptr inbounds %struct.fst_card_info, ptr %2, i32 0, i32 19
  %pci_conf.i.i.i = getelementptr inbounds %struct.fst_card_info, ptr %2, i32 0, i32 9
  %card_no.i.i = getelementptr inbounds %struct.fst_card_info, ptr %2, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %port.033.i = phi ptr [ %ports.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %pi.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc9.i, %for.inc.i.for.body.i_crit_edge ]
  %rx_count.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %rx_count.2.i, %for.inc.i.for.body.i_crit_edge ]
  %run.i = getelementptr inbounds %struct.fst_port_info, ptr %port.033.i, i32 0, i32 4
  %5 = ptrtoint ptr %run.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %run.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %while.cond.preheader.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

while.cond.preheader.i:                           ; preds = %for.body.i
  %rxpos.i = getelementptr inbounds %struct.fst_port_info, ptr %port.033.i, i32 0, i32 6
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %9 = ptrtoint ptr %rxpos.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rxpos.i, align 4
  %bits23.i = getelementptr [4 x [8 x %struct.rxdesc]], ptr inttoptr (i32 8192 to ptr), i32 0, i32 %pi.030.i, i32 %10, i32 2
  %11 = ptrtoint ptr %bits23.i to i32
  %add.ptr24.i = getelementptr i8, ptr %8, i32 %11
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool3.not25.i = icmp sgt i8 %12, -1
  br i1 %tobool3.not25.i, label %land.rhs.lr.ph.i, label %while.cond.preheader.i.for.inc.i_crit_edge

while.cond.preheader.i.for.inc.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.rhs.lr.ph.i:                                 ; preds = %while.cond.preheader.i
  %index.i.i = getelementptr inbounds %struct.fst_port_info, ptr %port.033.i, i32 0, i32 2
  %mode.i.i = getelementptr inbounds %struct.fst_port_info, ptr %port.033.i, i32 0, i32 5
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %fst_intr_rx.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %rx_count.126.i = phi i32 [ %rx_count.029.i, %land.rhs.lr.ph.i ], [ %inc.i, %fst_intr_rx.exit.i.land.rhs.i_crit_edge ]
  %13 = ptrtoint ptr %dmarx_in_progress.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dmarx_in_progress.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not.i = icmp eq i32 %14, 0
  br i1 %tobool4.not.i, label %while.body.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

while.body.i:                                     ; preds = %land.rhs.i
  %15 = load i32, ptr @fst_max_reads, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_count.126.i, i32 %15)
  %cmp5.i = icmp sgt i32 %rx_count.126.i, %15
  br i1 %cmp5.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %while.body.i
  %16 = ptrtoint ptr %card_no.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %card_no.i.i, align 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fst_work_q_lock) #10
  %sh_prom.i.i = zext i32 %17 to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %18 = load i64, ptr @fst_work_intq, align 8
  %or.i.i = or i64 %18, %shl.i.i
  store i64 %or.i.i, ptr @fst_work_intq, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fst_work_q_lock, i32 noundef %call2.i.i) #10
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @fst_int_task, i32 0, i32 1)) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then7.i.for.inc.i_crit_edge

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef nonnull @fst_int_task) #10
  br label %for.inc.i

if.end8.i:                                        ; preds = %while.body.i
  %19 = ptrtoint ptr %port.033.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port.033.i, align 4
  %21 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.i, align 4
  %23 = ptrtoint ptr %rxpos.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rxpos.i, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 4
  %bits.i.i = getelementptr [4 x [8 x %struct.rxdesc]], ptr inttoptr (i32 8192 to ptr), i32 0, i32 %22, i32 %24, i32 2
  %27 = ptrtoint ptr %bits.i.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %27
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %tobool.not.i21.i = icmp sgt i8 %28, -1
  br i1 %tobool.not.i21.i, label %if.end.i.i, label %if.end8.i.fst_intr_rx.exit.i_crit_edge

if.end8.i.fst_intr_rx.exit.i_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_intr_rx.exit.i

if.end.i.i:                                       ; preds = %if.end8.i
  %29 = ptrtoint ptr %dmarx_in_progress.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dmarx_in_progress.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool4.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i.fst_intr_rx.exit.i_crit_edge

if.end.i.i.fst_intr_rx.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_intr_rx.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %2, align 4
  %mcnt.i.i = getelementptr [4 x [8 x %struct.rxdesc]], ptr inttoptr (i32 8192 to ptr), i32 0, i32 %22, i32 %24, i32 4
  %33 = ptrtoint ptr %mcnt.i.i to i32
  %add.ptr12.i.i = getelementptr i8, ptr %32, i32 %33
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12.i.i) #10, !srcloc !249
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %sub.i.i = add i16 %35, -2
  %conv18.i.i = zext i16 %sub.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i.i)
  %cmp.i.i = icmp eq i16 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.end23.i.i, label %do.end39.i.i

do.end23.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %card_no.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %card_no.i.i, align 4
  %38 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index.i.i, align 4
  %call26.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %37, i32 noundef %39) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %2, align 4
  %add.ptr34.i.i = getelementptr i8, ptr %41, i32 %27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34.i.i, i8 -128) #10, !srcloc !222
  %add.i.i = add i32 %24, 1
  %rem.i.i = srem i32 %add.i.i, 8
  br label %cleanup.sink.split.i.i

do.end39.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp41.not.i.i = icmp ne i8 %28, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 8190, i16 %sub.i.i)
  %cmp44.i.i = icmp ugt i16 %sub.i.i, 8190
  %or.cond.i.i = select i1 %cmp41.not.i.i, i1 true, i1 %cmp44.i.i
  br i1 %or.cond.i.i, label %if.then46.i.i, label %if.end47.i.i

if.then46.i.i:                                    ; preds = %do.end39.i.i
  %42 = ptrtoint ptr %port.033.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port.033.i, align 4
  %rx_errors.i.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 36, i32 4
  %44 = ptrtoint ptr %rx_errors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_errors.i.i.i, align 8
  %inc.i.i.i = add i32 %45, 1
  store i32 %inc.i.i.i, ptr %rx_errors.i.i.i, align 8
  %conv.i.i.i = zext i8 %28 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then46.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then46.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_fifo_errors.i.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 36, i32 14
  %46 = ptrtoint ptr %rx_fifo_errors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_fifo_errors.i.i.i, align 8
  %inc3.i.i.i = add i32 %47, 1
  store i32 %inc3.i.i.i, ptr %rx_fifo_errors.i.i.i, align 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then46.i.i.if.end.i.i.i_crit_edge
  %and5.i.i.i = and i32 %conv.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end.i.i.i.if.end13.i.i.i_crit_edge, label %if.then7.i.i.i

if.end.i.i.i.if.end13.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_crc_errors.i.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 36, i32 12
  %48 = ptrtoint ptr %rx_crc_errors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_crc_errors.i.i.i, align 8
  %inc9.i.i.i = add i32 %49, 1
  store i32 %inc9.i.i.i, ptr %rx_crc_errors.i.i.i, align 8
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.then7.i.i.i, %if.end.i.i.i.if.end13.i.i.i_crit_edge
  %and15.i.i.i = and i32 %conv.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %and15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end13.i.i.i.if.end23.i.i.i_crit_edge, label %if.then17.i.i.i

if.end13.i.i.i.if.end23.i.i.i_crit_edge:          ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.i.i

if.then17.i.i.i:                                  ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_frame_errors.i.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 36, i32 13
  %50 = ptrtoint ptr %rx_frame_errors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_frame_errors.i.i.i, align 4
  %inc19.i.i.i = add i32 %51, 1
  store i32 %inc19.i.i.i, ptr %rx_frame_errors.i.i.i, align 4
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.then17.i.i.i, %if.end13.i.i.i.if.end23.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp.i.i.i = icmp eq i8 %28, 3
  br i1 %cmp.i.i.i, label %do.end19.i.thread.i.i, label %fst_log_rx_error.exit.i.i

do.end19.i.thread.i.i:                            ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_length_errors.i.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 36, i32 10
  %52 = ptrtoint ptr %rx_length_errors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_length_errors.i.i.i, align 8
  %inc28.i.i.i = add i32 %53, 1
  store i32 %inc28.i.i.i, ptr %rx_length_errors.i.i.i, align 8
  %54 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %index.i.i, align 4
  br label %do.body23.i.i.i

fst_log_rx_error.exit.i.i:                        ; preds = %if.end23.i.i.i
  %56 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %index.i.i, align 4
  %and2.i.i.i = and i32 %conv.i.i.i, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp4.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp4.i.i.i, label %do.body.i.preheader.i.i, label %fst_log_rx_error.exit.i.i.do.end19.i.i.i_crit_edge

fst_log_rx_error.exit.i.i.do.end19.i.i.i_crit_edge: ; preds = %fst_log_rx_error.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i.i.i

do.body.i.preheader.i.i:                          ; preds = %fst_log_rx_error.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  tail call void @arm_heavy_mb() #10
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %2, align 4
  %bits.i237.i.i = getelementptr [4 x [8 x %struct.rxdesc]], ptr inttoptr (i32 8192 to ptr), i32 0, i32 %57, i32 %24, i32 2
  %60 = ptrtoint ptr %bits.i237.i.i to i32
  %add.ptr.i238.i.i = getelementptr i8, ptr %59, i32 %60
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i238.i.i, i8 -128) #10, !srcloc !222
  %add.i239.i.i = add i32 %24, 1
  %rem.i240.i.i = srem i32 %add.i239.i.i, 8
  br label %if.end.i218.i.i

do.body.i.i.i:                                    ; preds = %if.end.i218.i.i
  %inc.i214.i.i = add nuw nsw i32 %i.05.i241.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %2, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %62, i32 %65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 -128) #10, !srcloc !222
  %add.i.i.i = add nsw i32 %rem.i242.i.i, 1
  %rem.i.i.i = srem i32 %add.i.i.i, 8
  %exitcond.i.i.i = icmp eq i32 %inc.i214.i.i, 8
  br i1 %exitcond.i.i.i, label %do.body.i.i.i.do.end19.i.i.i_crit_edge, label %do.body.i.i.i.if.end.i218.i.i_crit_edge

do.body.i.i.i.if.end.i218.i.i_crit_edge:          ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i218.i.i

do.body.i.i.i.do.end19.i.i.i_crit_edge:           ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i.i.i

if.end.i218.i.i:                                  ; preds = %do.body.i.i.i.if.end.i218.i.i_crit_edge, %do.body.i.preheader.i.i
  %rem.i242.i.i = phi i32 [ %rem.i240.i.i, %do.body.i.preheader.i.i ], [ %rem.i.i.i, %do.body.i.i.i.if.end.i218.i.i_crit_edge ]
  %i.05.i241.i.i = phi i32 [ 0, %do.body.i.preheader.i.i ], [ %inc.i214.i.i, %do.body.i.i.i.if.end.i218.i.i_crit_edge ]
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %2, align 4
  %bits11.i.i.i = getelementptr [4 x [8 x %struct.rxdesc]], ptr inttoptr (i32 8192 to ptr), i32 0, i32 %57, i32 %rem.i242.i.i, i32 2
  %65 = ptrtoint ptr %bits11.i.i.i to i32
  %add.ptr12.i.i.i = getelementptr i8, ptr %64, i32 %65
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i.i.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  %conv.i215.i.i = zext i8 %66 to i32
  %and.i216.i.i = and i32 %conv.i215.i.i, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i216.i.i)
  %cmp.i217.i.i = icmp eq i32 %and.i216.i.i, 0
  br i1 %cmp.i217.i.i, label %do.body.i.i.i, label %if.end.i218.i.i.do.end19.i.i.i_crit_edge

if.end.i218.i.i.do.end19.i.i.i_crit_edge:         ; preds = %if.end.i218.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i.i.i

do.end19.i.i.i:                                   ; preds = %if.end.i218.i.i.do.end19.i.i.i_crit_edge, %do.body.i.i.i.do.end19.i.i.i_crit_edge, %fst_log_rx_error.exit.i.i.do.end19.i.i.i_crit_edge
  %conv.lcssa.i.i.i = phi i32 [ %conv.i.i.i, %fst_log_rx_error.exit.i.i.do.end19.i.i.i_crit_edge ], [ %conv.i215.i.i, %do.body.i.i.i.do.end19.i.i.i_crit_edge ], [ %conv.i215.i.i, %if.end.i218.i.i.do.end19.i.i.i_crit_edge ]
  %rxp.addr.1.i.i.i = phi i32 [ %24, %fst_log_rx_error.exit.i.i.do.end19.i.i.i_crit_edge ], [ %rem.i242.i.i, %if.end.i218.i.i.do.end19.i.i.i_crit_edge ], [ %rem.i.i.i, %do.body.i.i.i.do.end19.i.i.i_crit_edge ]
  %and21.i.i.i = and i32 %conv.lcssa.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i.i)
  %tobool.not.i219.i.i = icmp eq i32 %and21.i.i.i, 0
  br i1 %tobool.not.i219.i.i, label %do.end19.i.i.i.do.body23.i.i.i_crit_edge, label %do.end19.i.i.i.cleanup.sink.split.i.i_crit_edge

do.end19.i.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

do.end19.i.i.i.do.body23.i.i.i_crit_edge:         ; preds = %do.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23.i.i.i

do.body23.i.i.i:                                  ; preds = %do.end19.i.i.i.do.body23.i.i.i_crit_edge, %do.end19.i.thread.i.i
  %rxp.addr.1.i236.i.i = phi i32 [ %24, %do.end19.i.thread.i.i ], [ %rxp.addr.1.i.i.i, %do.end19.i.i.i.do.body23.i.i.i_crit_edge ]
  %67 = phi i32 [ %55, %do.end19.i.thread.i.i ], [ %57, %do.end19.i.i.i.do.body23.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %2, align 4
  %bits29.i.i.i = getelementptr [4 x [8 x %struct.rxdesc]], ptr inttoptr (i32 8192 to ptr), i32 0, i32 %67, i32 %rxp.addr.1.i236.i.i, i32 2
  %70 = ptrtoint ptr %bits29.i.i.i to i32
  %add.ptr30.i.i.i = getelementptr i8, ptr %69, i32 %70
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30.i.i.i, i8 -128) #10, !srcloc !222
  %add31.i.i.i = add i32 %rxp.addr.1.i236.i.i, 1
  %rem32.i.i.i = srem i32 %add31.i.i.i, 8
  br label %cleanup.sink.split.i.i

if.end47.i.i:                                     ; preds = %do.end39.i.i
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv18.i.i, i32 noundef 2592) #10
  %tobool50.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool50.not.i.i, label %do.end54.i.i, label %if.end66.i.i

do.end54.i.i:                                     ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 6
  %71 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_dropped.i.i, align 8
  %inc.i.i = add i32 %72, 1
  store i32 %inc.i.i, ptr %rx_dropped.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  tail call void @arm_heavy_mb() #10
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %2, align 4
  %add.ptr62.i.i = getelementptr i8, ptr %74, i32 %27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr62.i.i, i8 -128) #10, !srcloc !222
  %add63.i.i = add i32 %24, 1
  %rem64.i.i = srem i32 %add63.i.i, 8
  br label %cleanup.sink.split.i.i

if.end66.i.i:                                     ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %sub.i.i)
  %cmp68.i.i = icmp ult i16 %sub.i.i, 64
  br i1 %cmp68.i.i, label %if.end66.i.i.if.then73.i.i_crit_edge, label %lor.lhs.false70.i.i

if.end66.i.i.if.then73.i.i_crit_edge:             ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i.i

lor.lhs.false70.i.i:                              ; preds = %if.end66.i.i
  %75 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp71.i.i = icmp eq i32 %76, 0
  br i1 %cmp71.i.i, label %lor.lhs.false70.i.i.if.then73.i.i_crit_edge, label %if.else112.i.i

lor.lhs.false70.i.i.if.then73.i.i_crit_edge:      ; preds = %lor.lhs.false70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i.i

if.then73.i.i:                                    ; preds = %lor.lhs.false70.i.i.if.then73.i.i_crit_edge, %if.end66.i.i.if.then73.i.i_crit_edge
  %call75.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %conv18.i.i) #10
  %77 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %2, align 4
  %79 = shl i32 %22, 16
  %80 = shl i32 %24, 13
  %81 = add i32 %79, 131072
  %add77.i.i = add i32 %81, %80
  %add.ptr78.i.i = getelementptr i8, ptr %78, i32 %add77.i.i
  tail call void @mmiocpy(ptr noundef %call75.i.i, ptr noundef %add.ptr78.i.i, i32 noundef %conv18.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @arm_heavy_mb() #10
  %82 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %2, align 4
  %add.ptr87.i.i = getelementptr i8, ptr %83, i32 %27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87.i.i, i8 -128) #10, !srcloc !222
  %stats88.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36
  %84 = ptrtoint ptr %stats88.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %stats88.i.i, align 8
  %inc89.i.i = add i32 %85, 1
  store i32 %inc89.i.i, ptr %stats88.i.i, align 8
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 2
  %86 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_bytes.i.i, align 8
  %add92.i.i = add i32 %87, %conv18.i.i
  store i32 %add92.i.i, ptr %rx_bytes.i.i, align 8
  %88 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %89)
  %cmp96.i.i = icmp eq i32 %89, 4
  %90 = getelementptr inbounds %struct.anon.44, ptr %call.i.i.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %20, ptr %90, align 8
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %92 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 18
  %94 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 21
  %96 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i.i.i.i, ptr %mac_header.i.i.i.i, align 2
  br i1 %cmp96.i.i, label %if.then98.i.i, label %if.else.i.i

if.then98.i.i:                                    ; preds = %if.then73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pkt_type.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15
  %97 = ptrtoint ptr %pkt_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %bf.load.i.i.i = load i16, ptr %pkt_type.i.i.i, align 8
  %bf.clear.i.i.i = and i16 %bf.load.i.i.i, 8191
  store i16 %bf.clear.i.i.i, ptr %pkt_type.i.i.i, align 8
  br label %if.end102.i.i

if.else.i.i:                                      ; preds = %if.then73.i.i
  %proto.i.i.i = getelementptr i8, ptr %20, i32 2312
  %98 = ptrtoint ptr %proto.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %proto.i.i.i, align 4
  %type_trans.i.i.i = getelementptr inbounds %struct.hdlc_proto, ptr %99, i32 0, i32 6
  %100 = ptrtoint ptr %type_trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %type_trans.i.i.i, align 4
  %tobool.not.i227.i.i = icmp eq ptr %101, null
  br i1 %tobool.not.i227.i.i, label %if.else.i.i.if.end102.i.i_crit_edge, label %if.then.i228.i.i

if.else.i.i.if.end102.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102.i.i

if.then.i228.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i.i = tail call zeroext i16 %101(ptr noundef nonnull %call.i.i.i.i, ptr noundef %20) #10
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %if.then.i228.i.i, %if.else.i.i.if.end102.i.i_crit_edge, %if.then98.i.i
  %retval.0.i.sink.i.i = phi i16 [ 24582, %if.then98.i.i ], [ %call3.i.i.i, %if.then.i228.i.i ], [ 25, %if.else.i.i.if.end102.i.i_crit_edge ]
  %protocol101.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 18
  %102 = ptrtoint ptr %protocol101.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %retval.0.i.sink.i.i, ptr %protocol101.i.i, align 8
  %call103.i.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call103.i.i)
  %cmp105.i.i = icmp eq i32 %call103.i.i, 1
  br i1 %cmp105.i.i, label %if.then107.i.i, label %if.end102.i.i.if.end116.i.i_crit_edge

if.end102.i.i.if.end116.i.i_crit_edge:            ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.i.i

if.then107.i.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_dropped109.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 6
  %103 = ptrtoint ptr %rx_dropped109.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_dropped109.i.i, align 8
  %inc110.i.i = add i32 %104, 1
  store i32 %inc110.i.i, ptr %rx_dropped109.i.i, align 8
  br label %if.end116.i.i

if.else112.i.i:                                   ; preds = %lor.lhs.false70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %dma_skb_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i.i.i.i, ptr %dma_skb_rx.i.i, align 4
  %106 = ptrtoint ptr %dma_port_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %port.033.i, ptr %dma_port_rx.i.i, align 4
  %107 = ptrtoint ptr %dma_len_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv18.i.i, ptr %dma_len_rx.i.i, align 4
  %108 = ptrtoint ptr %dma_rxpos.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %24, ptr %dma_rxpos.i.i, align 4
  %109 = ptrtoint ptr %rx_dma_handle_card.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_dma_handle_card.i.i, align 4
  %111 = shl i32 %22, 16
  %112 = shl i32 %24, 13
  %113 = add i32 %111, 131072
  %add114.i.i = add i32 %113, %112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void @arm_heavy_mb() #10
  %114 = tail call i32 @llvm.bswap.i32(i32 %110) #10
  %115 = ptrtoint ptr %pci_conf.i.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %pci_conf.i.i.i, align 4
  %conv.i229.i.i = zext i16 %116 to i32
  %add5.i.i.i = add nuw nsw i32 %conv.i229.i.i, -18874236
  %117 = inttoptr i32 %add5.i.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %117, i32 %114) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  tail call void @arm_heavy_mb() #10
  %118 = tail call i32 @llvm.bswap.i32(i32 %add114.i.i) #10
  %119 = ptrtoint ptr %pci_conf.i.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %pci_conf.i.i.i, align 4
  %conv9.i.i.i = zext i16 %120 to i32
  %add12.i.i.i = add nuw nsw i32 %conv9.i.i.i, -18874232
  %121 = inttoptr i32 %add12.i.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %121, i32 %118) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  tail call void @arm_heavy_mb() #10
  %122 = tail call i32 @llvm.bswap.i32(i32 %conv18.i.i) #10
  %123 = ptrtoint ptr %pci_conf.i.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %pci_conf.i.i.i, align 4
  %conv17.i.i.i = zext i16 %124 to i32
  %add20.i.i.i = add nuw nsw i32 %conv17.i.i.i, -18874228
  %125 = inttoptr i32 %add20.i.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %125, i32 %122) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void @arm_heavy_mb() #10
  %126 = ptrtoint ptr %pci_conf.i.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %pci_conf.i.i.i, align 4
  %conv25.i.i.i = zext i16 %127 to i32
  %add28.i.i.i = add nuw nsw i32 %conv25.i.i.i, -18874224
  %128 = inttoptr i32 %add28.i.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %128, i32 201326592) #10, !srcloc !213
  %129 = ptrtoint ptr %dmarx_in_progress.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %dmarx_in_progress.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %130 = ptrtoint ptr %pci_conf.i.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %pci_conf.i.i.i, align 4
  %conv34.i.i.i = zext i16 %131 to i32
  %add37.i.i.i = add nuw nsw i32 %conv34.i.i.i, -18874200
  %132 = inttoptr i32 %add37.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 3) #10, !srcloc !222
  br label %if.end116.i.i

if.end116.i.i:                                    ; preds = %if.else112.i.i, %if.then107.i.i, %if.end102.i.i.if.end116.i.i_crit_edge
  %add128.i.i = add i32 %24, 1
  %rem129.i.i = srem i32 %add128.i.i, 8
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end116.i.i, %do.end54.i.i, %do.body23.i.i.i, %do.end19.i.i.i.cleanup.sink.split.i.i_crit_edge, %do.end23.i.i
  %rem129.sink.i.i = phi i32 [ %rem129.i.i, %if.end116.i.i ], [ %rem64.i.i, %do.end54.i.i ], [ %rem.i.i, %do.end23.i.i ], [ %rxp.addr.1.i.i.i, %do.end19.i.i.i.cleanup.sink.split.i.i_crit_edge ], [ %rem32.i.i.i, %do.body23.i.i.i ]
  %133 = ptrtoint ptr %rxpos.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %rem129.sink.i.i, ptr %rxpos.i, align 4
  br label %fst_intr_rx.exit.i

fst_intr_rx.exit.i:                               ; preds = %cleanup.sink.split.i.i, %if.end.i.i.fst_intr_rx.exit.i_crit_edge, %if.end8.i.fst_intr_rx.exit.i_crit_edge
  %inc.i = add i32 %rx_count.126.i, 1
  %134 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %2, align 4
  %136 = ptrtoint ptr %rxpos.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rxpos.i, align 4
  %bits.i = getelementptr [4 x [8 x %struct.rxdesc]], ptr inttoptr (i32 8192 to ptr), i32 0, i32 %pi.030.i, i32 %137, i32 2
  %138 = ptrtoint ptr %bits.i to i32
  %add.ptr.i = getelementptr i8, ptr %135, i32 %138
  %139 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  %tobool3.not.i = icmp sgt i8 %139, -1
  br i1 %tobool3.not.i, label %fst_intr_rx.exit.i.land.rhs.i_crit_edge, label %fst_intr_rx.exit.i.for.inc.i_crit_edge

fst_intr_rx.exit.i.for.inc.i_crit_edge:           ; preds = %fst_intr_rx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

fst_intr_rx.exit.i.land.rhs.i_crit_edge:          ; preds = %fst_intr_rx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

for.inc.i:                                        ; preds = %fst_intr_rx.exit.i.for.inc.i_crit_edge, %if.then.i.i, %if.then7.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge, %while.cond.preheader.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %rx_count.2.i = phi i32 [ %rx_count.029.i, %for.body.i.for.inc.i_crit_edge ], [ %rx_count.126.i, %if.then7.i.for.inc.i_crit_edge ], [ %rx_count.126.i, %if.then.i.i ], [ %rx_count.029.i, %while.cond.preheader.i.for.inc.i_crit_edge ], [ %rx_count.126.i, %land.rhs.i.for.inc.i_crit_edge ], [ %inc.i, %fst_intr_rx.exit.i.for.inc.i_crit_edge ]
  %inc9.i = add nuw i32 %pi.030.i, 1
  %incdec.ptr.i = getelementptr %struct.fst_port_info, ptr %port.033.i, i32 1
  %140 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %nports.i, align 4
  %cmp.i = icmp ult i32 %inc9.i, %141
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do_bottom_half_rx.exit_crit_edge

for.inc.i.do_bottom_half_rx.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_bottom_half_rx.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do_bottom_half_rx.exit:                           ; preds = %for.inc.i.do_bottom_half_rx.exit_crit_edge, %do.end14.do_bottom_half_rx.exit_crit_edge
  %142 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @do_bottom_half_tx(ptr noundef %143)
  br label %if.end17

if.end17:                                         ; preds = %do_bottom_half_rx.exit, %if.then.if.end17_crit_edge, %for.body.if.end17_crit_edge
  %shr = lshr i64 %work_intq.026, 1
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_bottom_half_tx(ptr noundef %card) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nports = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 5
  %0 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp176.not = icmp eq i32 %1, 0
  br i1 %cmp176.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 10
  %dmatx_in_progress = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 15
  %card_lock = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 8
  %family = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 13
  %tx_dma_handle_host = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 20
  %dma_port_tx = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 24
  %dma_len_tx = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 26
  %dma_txpos = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 27
  %tx_dma_handle_card = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 21
  %pci_conf.i = getelementptr inbounds %struct.fst_card_info, ptr %card, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.0180 = phi ptr [ %ports, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %pi.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %inc109, %for.inc.for.body_crit_edge ]
  %run = getelementptr inbounds %struct.fst_port_info, ptr %port.0180, i32 0, i32 4
  %2 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %run, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %port.0180 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port.0180, align 4
  %txpos = getelementptr inbounds %struct.fst_port_info, ptr %port.0180, i32 0, i32 7
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %8 = ptrtoint ptr %txpos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %txpos, align 4
  %bits173 = getelementptr [4 x [2 x %struct.txdesc]], ptr inttoptr (i32 8448 to ptr), i32 0, i32 %pi.0177, i32 %9, i32 2
  %10 = ptrtoint ptr %bits173 to i32
  %add.ptr174 = getelementptr i8, ptr %7, i32 %10
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr174) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool4.not175 = icmp sgt i8 %11, -1
  br i1 %tobool4.not175, label %land.rhs.lr.ph, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.rhs.lr.ph:                                   ; preds = %if.end
  %txqe = getelementptr inbounds %struct.fst_port_info, ptr %port.0180, i32 0, i32 11
  %txqs = getelementptr inbounds %struct.fst_port_info, ptr %port.0180, i32 0, i32 10
  %12 = shl i32 %pi.0177, 14
  %13 = add i32 %12, 65536
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 1
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 3
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %start = getelementptr inbounds %struct.fst_port_info, ptr %port.0180, i32 0, i32 9
  br label %land.rhs

land.rhs:                                         ; preds = %if.end106.land.rhs_crit_edge, %land.rhs.lr.ph
  %14 = ptrtoint ptr %dmatx_in_progress to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dmatx_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %do.body7, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body7:                                         ; preds = %land.rhs
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %card_lock) #10
  %16 = ptrtoint ptr %txqe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %txqe, align 4
  %18 = ptrtoint ptr %txqs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %txqs, align 4
  %sub = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp17 = icmp slt i32 %sub, 0
  %add = add i32 %sub, 16
  %spec.select = select i1 %cmp17, i32 %add, i32 %sub
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %card_lock, i32 noundef %call12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp22 = icmp sgt i32 %spec.select, 0
  br i1 %cmp22, label %do.body26, label %do.body7.for.inc_crit_edge

do.body7.for.inc_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body26:                                        ; preds = %do.body7
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %card_lock) #10
  %20 = ptrtoint ptr %txqs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %txqs, align 4
  %arrayidx40 = getelementptr %struct.fst_port_info, ptr %port.0180, i32 0, i32 12, i32 %21
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx40, align 4
  %inc = add i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc)
  %cmp43 = icmp eq i32 %inc, 16
  %spec.select170 = select i1 %cmp43, i32 0, i32 %inc
  %24 = ptrtoint ptr %txqs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select170, ptr %txqs, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %card_lock, i32 noundef %call34) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %27 = trunc i32 %26 to i16
  %conv53 = sub i16 0, %27
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv53)
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %31 = ptrtoint ptr %txpos to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %txpos, align 4
  %bcnt = getelementptr [4 x [2 x %struct.txdesc]], ptr inttoptr (i32 8448 to ptr), i32 0, i32 %pi.0177, i32 %32, i32 3
  %33 = ptrtoint ptr %bcnt to i32
  %add.ptr58 = getelementptr i8, ptr %30, i32 %33
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr58, i16 %28) #10, !srcloc !216
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %35)
  %cmp60 = icmp ult i32 %35, 64
  br i1 %cmp60, label %do.body26.if.then64_crit_edge, label %lor.lhs.false

do.body26.if.then64_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

lor.lhs.false:                                    ; preds = %do.body26
  %36 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp62 = icmp eq i32 %37, 0
  br i1 %cmp62, label %lor.lhs.false.if.then64_crit_edge, label %if.else

lor.lhs.false.if.then64_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then64:                                        ; preds = %lor.lhs.false.if.then64_crit_edge, %do.body26.if.then64_crit_edge
  %38 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card, align 4
  %40 = ptrtoint ptr %txpos to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %txpos, align 4
  %42 = shl i32 %41, 13
  %add67 = add i32 %13, %42
  %add.ptr68 = getelementptr i8, ptr %39, i32 %add67
  %data = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr68, ptr noundef %44, i32 noundef %35) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card, align 4
  %47 = ptrtoint ptr %txpos to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %txpos, align 4
  %bits77 = getelementptr [4 x [2 x %struct.txdesc]], ptr inttoptr (i32 8448 to ptr), i32 0, i32 %pi.0177, i32 %48, i32 2
  %49 = ptrtoint ptr %bits77 to i32
  %add.ptr78 = getelementptr i8, ptr %46, i32 %49
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr78, i8 -125) #10, !srcloc !222
  %50 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_packets, align 4
  %inc79 = add i32 %51, 1
  store i32 %inc79, ptr %tx_packets, align 4
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  %54 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_bytes, align 4
  %add82 = add i32 %55, %53
  store i32 %add82, ptr %tx_bytes, align 4
  %56 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 12
  %59 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %58)
  %cmp.not.i.i = icmp eq i32 %60, %58
  br i1 %cmp.not.i.i, label %if.then64.if.end90_crit_edge, label %do.body5.i.i

if.then64.if.end90_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

do.body5.i.i:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %58, ptr %trans_start.i.i, align 16
  br label %if.end90

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %tx_dma_handle_host to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_dma_handle_host, align 4
  %data83 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %64 = ptrtoint ptr %data83 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data83, align 4
  %66 = call ptr @memcpy(ptr %63, ptr %65, i32 %35)
  %67 = ptrtoint ptr %dma_port_tx to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %port.0180, ptr %dma_port_tx, align 4
  %68 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len, align 4
  %70 = ptrtoint ptr %dma_len_tx to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %dma_len_tx, align 4
  %71 = ptrtoint ptr %txpos to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %txpos, align 4
  %73 = ptrtoint ptr %dma_txpos to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %dma_txpos, align 4
  %74 = ptrtoint ptr %tx_dma_handle_card to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_dma_handle_card, align 4
  %76 = load i32, ptr %txpos, align 4
  %77 = shl i32 %76, 13
  %add88 = add i32 %13, %77
  %78 = load i32, ptr %len, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !265
  tail call void @arm_heavy_mb() #10
  %79 = tail call i32 @llvm.bswap.i32(i32 %75) #10
  %80 = ptrtoint ptr %pci_conf.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %pci_conf.i, align 4
  %conv.i = zext i16 %81 to i32
  %add5.i = add nuw nsw i32 %conv.i, -18874216
  %82 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %82, i32 %79) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !266
  tail call void @arm_heavy_mb() #10
  %83 = tail call i32 @llvm.bswap.i32(i32 %add88) #10
  %84 = ptrtoint ptr %pci_conf.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %pci_conf.i, align 4
  %conv9.i = zext i16 %85 to i32
  %add12.i = add nuw nsw i32 %conv9.i, -18874212
  %86 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %86, i32 %83) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !267
  tail call void @arm_heavy_mb() #10
  %87 = tail call i32 @llvm.bswap.i32(i32 %78) #10
  %88 = ptrtoint ptr %pci_conf.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %pci_conf.i, align 4
  %conv17.i = zext i16 %89 to i32
  %add20.i = add nuw nsw i32 %conv17.i, -18874208
  %90 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %90, i32 %87) #10, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void @arm_heavy_mb() #10
  %91 = ptrtoint ptr %pci_conf.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %pci_conf.i, align 4
  %conv25.i = zext i16 %92 to i32
  %add28.i = add nuw nsw i32 %conv25.i, -18874204
  %93 = inttoptr i32 %add28.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %93, i32 67108864) #10, !srcloc !213
  %94 = ptrtoint ptr %dmatx_in_progress to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %dmatx_in_progress, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !269
  tail call void @arm_heavy_mb() #10
  %95 = ptrtoint ptr %pci_conf.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %pci_conf.i, align 4
  %conv34.i = zext i16 %96 to i32
  %add37.i = add nuw nsw i32 %conv34.i, -18874199
  %97 = inttoptr i32 %add37.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 3) #10, !srcloc !222
  br label %if.end90

if.end90:                                         ; preds = %if.else, %do.body5.i.i, %if.then64.if.end90_crit_edge
  %98 = ptrtoint ptr %txpos to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %txpos, align 4
  %inc92 = add i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc92)
  %cmp93 = icmp sgt i32 %inc92, 1
  %spec.select171 = select i1 %cmp93, i32 0, i32 %inc92
  %100 = ptrtoint ptr %txpos to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %spec.select171, ptr %txpos, align 4
  %101 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool98.not = icmp eq i32 %102, 0
  br i1 %tobool98.not, label %if.end90.if.end106_crit_edge, label %if.then99

if.end90.if.end106_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then99:                                        ; preds = %if.end90
  %103 = load i32, ptr @fst_txq_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %103)
  %cmp100 = icmp slt i32 %spec.select, %103
  br i1 %cmp100, label %if.then102, label %if.then99.if.end106_crit_edge

if.then99.if.end106_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then102:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %port.0180 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %port.0180, align 4
  %_tx.i.i172 = getelementptr inbounds %struct.net_device, ptr %105, i32 0, i32 103
  %106 = ptrtoint ptr %_tx.i.i172 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %_tx.i.i172, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %107) #10
  %108 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %start, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %if.then99.if.end106_crit_edge, %if.end90.if.end106_crit_edge
  tail call void @consume_skb(ptr noundef %23) #10
  %109 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %card, align 4
  %111 = ptrtoint ptr %txpos to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %txpos, align 4
  %bits = getelementptr [4 x [2 x %struct.txdesc]], ptr inttoptr (i32 8448 to ptr), i32 0, i32 %pi.0177, i32 %112, i32 2
  %113 = ptrtoint ptr %bits to i32
  %add.ptr = getelementptr i8, ptr %110, i32 %113
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  %tobool4.not = icmp sgt i8 %114, -1
  br i1 %tobool4.not, label %if.end106.land.rhs_crit_edge, label %if.end106.for.inc_crit_edge

if.end106.for.inc_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end106.land.rhs_crit_edge:                     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.inc:                                          ; preds = %if.end106.for.inc_crit_edge, %do.body7.for.inc_crit_edge, %land.rhs.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc109 = add nuw i32 %pi.0177, 1
  %incdec.ptr = getelementptr %struct.fst_port_info, ptr %port.0180, i32 1
  %115 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc109, %116
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fst_open(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call1 = tail call zeroext i1 @try_module_get(ptr noundef null) #10
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @hdlc_open(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then2.if.end6_crit_edge, label %if.then4

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @module_put(ptr noundef null) #10
  br label %cleanup

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %card.i = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card.i, align 4
  %state.i = getelementptr inbounds %struct.fst_card_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i = icmp eq i32 %7, 4
  br i1 %cmp.i, label %if.then.i, label %if.end6.fst_openport.exit_crit_edge

if.end6.fst_openport.exit_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_openport.exit

if.then.i:                                        ; preds = %if.end6
  %run.i = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %run.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %run.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fst_issue_cmd(ptr noundef %1, i16 noundef zeroext 4) #10
  %10 = ptrtoint ptr %run.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %run.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %index.i.i = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i.i, align 4
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i, align 4
  %card_lock.i.i = getelementptr inbounds %struct.fst_card_info, ptr %14, i32 0, i32 8
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %card_lock.i.i) #10
  %15 = shl i32 %12, 16
  %16 = add i32 %15, 131072
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.064.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %17 = shl i32 %i.064.i.i, 13
  %add.i.i = add nuw nsw i32 %16, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  tail call void @arm_heavy_mb() #10
  %conv11.i.i = trunc i32 %add.i.i to i16
  %18 = lshr exact i16 %conv11.i.i, 8
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %arrayidx12.i.i = getelementptr [4 x [8 x %struct.rxdesc]], ptr inttoptr (i32 8192 to ptr), i32 0, i32 %12, i32 %i.064.i.i
  %21 = ptrtoint ptr %arrayidx12.i.i to i32
  %add.ptr.i.i12 = getelementptr i8, ptr %20, i32 %21
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i12, i16 %18) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !271
  tail call void @arm_heavy_mb() #10
  %shr.i.i = lshr i32 %add.i.i, 16
  %conv16.i.i = trunc i32 %shr.i.i to i8
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %14, align 4
  %hadr.i.i = getelementptr [4 x [8 x %struct.rxdesc]], ptr inttoptr (i32 8192 to ptr), i32 0, i32 %12, i32 %i.064.i.i, i32 1
  %24 = ptrtoint ptr %hadr.i.i to i32
  %add.ptr20.i.i = getelementptr i8, ptr %23, i32 %24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20.i.i, i8 %conv16.i.i) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !272
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %14, align 4
  %bcnt.i.i = getelementptr [4 x [8 x %struct.rxdesc]], ptr inttoptr (i32 8192 to ptr), i32 0, i32 %12, i32 %i.064.i.i, i32 3
  %27 = ptrtoint ptr %bcnt.i.i to i32
  %add.ptr27.i.i = getelementptr i8, ptr %26, i32 %27
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27.i.i, i16 224) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %14, align 4
  %mcnt.i.i = getelementptr [4 x [8 x %struct.rxdesc]], ptr inttoptr (i32 8192 to ptr), i32 0, i32 %12, i32 %i.064.i.i, i32 4
  %30 = ptrtoint ptr %mcnt.i.i to i32
  %add.ptr34.i.i = getelementptr i8, ptr %29, i32 %30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr34.i.i, i16 32) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %14, align 4
  %bits.i.i = getelementptr [4 x [8 x %struct.rxdesc]], ptr inttoptr (i32 8192 to ptr), i32 0, i32 %12, i32 %i.064.i.i, i32 2
  %33 = ptrtoint ptr %bits.i.i to i32
  %add.ptr41.i.i = getelementptr i8, ptr %32, i32 %33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41.i.i, i8 -128) #10, !srcloc !222
  %inc.i.i = add nuw nsw i32 %i.064.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %fst_rx_config.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

fst_rx_config.exit.i:                             ; preds = %for.body.i.i
  %rxpos.i.i = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %rxpos.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %rxpos.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %card_lock.i.i, i32 noundef %call3.i.i) #10
  %35 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i, align 4
  %37 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card.i, align 4
  %card_lock.i32.i = getelementptr inbounds %struct.fst_card_info, ptr %38, i32 0, i32 8
  %call3.i33.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %card_lock.i32.i) #10
  %39 = shl i32 %36, 14
  %40 = add i32 %39, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !275
  tail call void @arm_heavy_mb() #10
  %conv11.i34.i = trunc i32 %40 to i16
  %41 = lshr exact i16 %conv11.i34.i, 8
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %38, align 4
  %arrayidx12.i35.i = getelementptr [4 x [2 x %struct.txdesc]], ptr inttoptr (i32 8448 to ptr), i32 0, i32 %36, i32 0
  %44 = ptrtoint ptr %arrayidx12.i35.i to i32
  %add.ptr.i36.i = getelementptr i8, ptr %43, i32 %44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i36.i, i16 %41) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  tail call void @arm_heavy_mb() #10
  %shr.i37.i = lshr i32 %40, 16
  %conv16.i38.i = trunc i32 %shr.i37.i to i8
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %38, align 4
  %hadr.i39.i = getelementptr [4 x [2 x %struct.txdesc]], ptr inttoptr (i32 8448 to ptr), i32 0, i32 %36, i32 0, i32 1
  %47 = ptrtoint ptr %hadr.i39.i to i32
  %add.ptr20.i40.i = getelementptr i8, ptr %46, i32 %47
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20.i40.i, i8 %conv16.i38.i) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %38, align 4
  %bcnt.i41.i = getelementptr [4 x [2 x %struct.txdesc]], ptr inttoptr (i32 8448 to ptr), i32 0, i32 %36, i32 0, i32 3
  %50 = ptrtoint ptr %bcnt.i41.i to i32
  %add.ptr27.i42.i = getelementptr i8, ptr %49, i32 %50
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27.i42.i, i16 0) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %51 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %38, align 4
  %bits.i43.i = getelementptr [4 x [2 x %struct.txdesc]], ptr inttoptr (i32 8448 to ptr), i32 0, i32 %36, i32 0, i32 2
  %53 = ptrtoint ptr %bits.i43.i to i32
  %add.ptr34.i44.i = getelementptr i8, ptr %52, i32 %53
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34.i44.i, i8 0) #10, !srcloc !222
  %add.1.i.i = add i32 %39, 73728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !275
  tail call void @arm_heavy_mb() #10
  %conv11.1.i.i = trunc i32 %add.1.i.i to i16
  %54 = lshr exact i16 %conv11.1.i.i, 8
  %55 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %38, align 4
  %arrayidx12.1.i.i = getelementptr [4 x [2 x %struct.txdesc]], ptr inttoptr (i32 8448 to ptr), i32 0, i32 %36, i32 1
  %57 = ptrtoint ptr %arrayidx12.1.i.i to i32
  %add.ptr.1.i.i = getelementptr i8, ptr %56, i32 %57
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.1.i.i, i16 %54) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  tail call void @arm_heavy_mb() #10
  %shr.1.i.i = lshr i32 %add.1.i.i, 16
  %conv16.1.i.i = trunc i32 %shr.1.i.i to i8
  %58 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %38, align 4
  %hadr.1.i.i = getelementptr [4 x [2 x %struct.txdesc]], ptr inttoptr (i32 8448 to ptr), i32 0, i32 %36, i32 1, i32 1
  %60 = ptrtoint ptr %hadr.1.i.i to i32
  %add.ptr20.1.i.i = getelementptr i8, ptr %59, i32 %60
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20.1.i.i, i8 %conv16.1.i.i) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %38, align 4
  %bcnt.1.i.i = getelementptr [4 x [2 x %struct.txdesc]], ptr inttoptr (i32 8448 to ptr), i32 0, i32 %36, i32 1, i32 3
  %63 = ptrtoint ptr %bcnt.1.i.i to i32
  %add.ptr27.1.i.i = getelementptr i8, ptr %62, i32 %63
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27.1.i.i, i16 0) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %64 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %38, align 4
  %bits.1.i.i = getelementptr [4 x [2 x %struct.txdesc]], ptr inttoptr (i32 8448 to ptr), i32 0, i32 %36, i32 1, i32 2
  %66 = ptrtoint ptr %bits.1.i.i to i32
  %add.ptr34.1.i.i = getelementptr i8, ptr %65, i32 %66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34.1.i.i, i8 0) #10, !srcloc !222
  %txpos.i.i = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 7
  %67 = ptrtoint ptr %txpos.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %txpos.i.i, align 4
  %txipos.i.i = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 8
  %68 = ptrtoint ptr %txipos.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %txipos.i.i, align 4
  %start.i.i = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 9
  %69 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %start.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %card_lock.i32.i, i32 noundef %call3.i33.i) #10
  %70 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %index.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr inttoptr (i32 18834 to ptr), i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  %add.ptr.i46.i = getelementptr i8, ptr %73, i32 %76
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #10, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  %78 = or i32 %77, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @arm_heavy_mb() #10
  %79 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %index.i.i, align 4
  %arrayidx5.i.i = getelementptr [4 x i32], ptr inttoptr (i32 18834 to ptr), i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx5.i.i to i32
  %add.ptr6.i.i = getelementptr i8, ptr %82, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %78) #10, !srcloc !213
  %86 = ptrtoint ptr %run.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %run.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i, label %fst_rx_config.exit.i.fst_op_raise.exit.i_crit_edge, label %if.then.i.i

fst_rx_config.exit.i.fst_op_raise.exit.i_crit_edge: ; preds = %fst_rx_config.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_op_raise.exit.i

if.then.i.i:                                      ; preds = %fst_rx_config.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fst_issue_cmd(ptr noundef %1, i16 noundef zeroext 6) #10
  br label %fst_op_raise.exit.i

fst_op_raise.exit.i:                              ; preds = %if.then.i.i, %fst_rx_config.exit.i.fst_op_raise.exit.i_crit_edge
  tail call fastcc void @fst_issue_cmd(ptr noundef %1, i16 noundef zeroext 3) #10
  %88 = ptrtoint ptr %run.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %run.i, align 4
  %89 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %card.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %93 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %index.i.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr inttoptr (i32 19000 to ptr), i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx.i to i32
  %add.ptr.i = getelementptr i8, ptr %92, i32 %95
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !223
  %97 = lshr i32 %96, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !281
  %hwif.i = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 3
  %98 = ptrtoint ptr %hwif.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hwif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp6.i = icmp eq i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %99)
  %cmp8.i = icmp eq i32 %99, 4
  %100 = or i1 %cmp6.i, %cmp8.i
  %101 = select i1 %100, i32 1, i32 4
  %and.i = and i32 %101, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %fst_op_raise.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_carrier_on(ptr noundef %103) #10
  br label %if.end12.i

if.else.i:                                        ; preds = %fst_op_raise.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_carrier_off(ptr noundef %103) #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then10.i
  %txqe.i = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 11
  %104 = ptrtoint ptr %txqe.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %txqe.i, align 4
  %txqs.i = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 10
  %105 = ptrtoint ptr %txqs.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %txqs.i, align 4
  br label %fst_openport.exit

fst_openport.exit:                                ; preds = %if.end12.i, %if.end6.fst_openport.exit_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %106 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %107) #10
  br label %cleanup

cleanup:                                          ; preds = %fst_openport.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then4 ], [ 0, %fst_openport.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fst_close(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %card1 = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %pci_conf = getelementptr inbounds %struct.fst_card_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pci_conf, align 4
  %conv = zext i16 %5 to i32
  %add2 = add nuw nsw i32 %conv, -18874199
  %6 = inttoptr i32 %add2 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !282
  %8 = ptrtoint ptr %pci_conf to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pci_conf, align 4
  %conv7 = zext i16 %9 to i32
  %add10 = add nuw nsw i32 %conv7, -18874200
  %10 = inttoptr i32 %add10 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %card.i = getelementptr inbounds %struct.fst_port_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card.i, align 4
  %state.i = getelementptr inbounds %struct.fst_card_info, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp.i = icmp eq i32 %19, 4
  br i1 %cmp.i, label %if.then.i, label %entry.fst_closeport.exit_crit_edge

entry.fst_closeport.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_closeport.exit

if.then.i:                                        ; preds = %entry
  %run.i = getelementptr inbounds %struct.fst_port_info, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %run.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %run.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then.i.fst_closeport.exit_crit_edge, label %if.then1.i

if.then.i.fst_closeport.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_closeport.exit

if.then1.i:                                       ; preds = %if.then.i
  %22 = ptrtoint ptr %run.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %run.i, align 4
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %17, align 4
  %index.i.i = getelementptr inbounds %struct.fst_port_info, ptr %15, i32 0, i32 2
  %25 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr inttoptr (i32 18834 to ptr), i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  %add.ptr.i.i23 = getelementptr i8, ptr %24, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #10, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !284
  %29 = and i32 %28, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i.i, align 4
  %arrayidx5.i.i = getelementptr [4 x i32], ptr inttoptr (i32 18834 to ptr), i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx5.i.i to i32
  %add.ptr6.i.i = getelementptr i8, ptr %33, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %29) #10, !srcloc !213
  %37 = ptrtoint ptr %run.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %run.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i, label %if.then1.i.fst_op_lower.exit.i_crit_edge, label %if.then.i.i

if.then1.i.fst_op_lower.exit.i_crit_edge:         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_op_lower.exit.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fst_issue_cmd(ptr noundef %15, i16 noundef zeroext 6) #10
  br label %fst_op_lower.exit.i

fst_op_lower.exit.i:                              ; preds = %if.then.i.i, %if.then1.i.fst_op_lower.exit.i_crit_edge
  tail call fastcc void @fst_issue_cmd(ptr noundef %15, i16 noundef zeroext 4) #10
  br label %fst_closeport.exit

fst_closeport.exit:                               ; preds = %fst_op_lower.exit.i, %if.then.i.fst_closeport.exit_crit_edge, %entry.fst_closeport.exit_crit_edge
  %mode = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp.not = icmp eq i32 %40, 4
  br i1 %cmp.not, label %fst_closeport.exit.if.end_crit_edge, label %if.then

fst_closeport.exit.if.end_crit_edge:              ; preds = %fst_closeport.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %fst_closeport.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hdlc_close(ptr noundef %dev) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %fst_closeport.exit.if.end_crit_edge
  tail call void @module_put(ptr noundef null) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fst_ioctl(ptr noundef %dev, ptr noundef %ifs) #3 align 64 {
entry:
  %sync.i32 = alloca %struct.sync_serial_settings, align 4
  %sync.i = alloca %struct.sync_serial_settings, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %card1 = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %call2 = tail call zeroext i1 @capable(i32 noundef 12) #10
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifs, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 4101, label %if.end.sw.bb4_crit_edge
    i32 4096, label %if.end.sw.bb4_crit_edge50
    i32 4097, label %if.end.sw.bb4_crit_edge51
    i32 4098, label %if.end.sw.bb4_crit_edge52
    i32 4102, label %if.end.sw.bb4_crit_edge53
    i32 4099, label %if.end.sw.bb4_crit_edge54
    i32 4100, label %if.end.sw.bb4_crit_edge55
    i32 8204, label %sw.bb6
    i32 2, label %sw.bb7
  ]

if.end.sw.bb4_crit_edge55:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end.sw.bb4_crit_edge54:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end.sw.bb4_crit_edge53:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end.sw.bb4_crit_edge52:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end.sw.bb4_crit_edge51:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end.sw.bb4_crit_edge50:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sync.i) #10
  %hwif.i = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %hwif.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwif.i, align 4
  %switch.tableidx = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 6
  br i1 %9, label %switch.lookup, label %sw.bb.sw.epilog.i_crit_edge

sw.bb.sw.epilog.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.fst_ioctl, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %sw.bb.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 4098, %sw.bb.sw.epilog.i_crit_edge ]
  %11 = ptrtoint ptr %ifs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink.i, ptr %ifs, align 4
  %size.i = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 1
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %sw.epilog.i.fst_get_iface.exit_crit_edge, label %if.end.i

sw.epilog.i.fst_get_iface.exit_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_get_iface.exit

if.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %13)
  %cmp.i = icmp ult i32 %13, 12
  br i1 %cmp.i, label %if.end.i.fst_get_iface.exit_crit_edge, label %if.end13.i

if.end.i.fst_get_iface.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_get_iface.exit

if.end13.i:                                       ; preds = %if.end.i
  %index.i = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i, align 4
  %16 = getelementptr inbounds i8, ptr %sync.i, i32 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %16, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %lineSpeed.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %15, i32 6
  %20 = ptrtoint ptr %lineSpeed.i to i32
  %add.ptr.i = getelementptr i8, ptr %19, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !223
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  %23 = ptrtoint ptr %sync.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sync.i, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %internalClock.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %15, i32 2
  %26 = ptrtoint ptr %internalClock.i to i32
  %add.ptr19.i = getelementptr i8, ptr %25, i32 %26
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp23.i = icmp eq i8 %27, 1
  %cond.i = select i1 %cmp23.i, i32 2, i32 1
  %clock_type.i = getelementptr inbounds %struct.sync_serial_settings, ptr %sync.i, i32 0, i32 1
  %28 = ptrtoint ptr %clock_type.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond.i, ptr %clock_type.i, align 4
  %ifs_ifsu.i = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 2
  %29 = ptrtoint ptr %ifs_ifsu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ifs_ifsu.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 174) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.end13.i.fst_get_iface.exit_crit_edge, label %if.end.i.i.i

if.end13.i.fst_get_iface.exit_crit_edge:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_get_iface.exit

if.end.i.i.i:                                     ; preds = %if.end13.i
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 12, i32 -1226833920) #15, !srcloc !288
  %asmresult.i.i.i = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.fst_get_iface.exit_crit_edge

if.end.i.i.i.fst_get_iface.exit_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_get_iface.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sync.i, i32 noundef 12) #10
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %30, ptr noundef nonnull %sync.i, i32 noundef 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool26.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %copy_to_user.exit.i.fst_get_iface.exit_crit_edge

copy_to_user.exit.i.fst_get_iface.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_get_iface.exit

if.end28.i:                                       ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12, ptr %size.i, align 4
  br label %fst_get_iface.exit

fst_get_iface.exit:                               ; preds = %if.end28.i, %copy_to_user.exit.i.fst_get_iface.exit_crit_edge, %if.end.i.i.i.fst_get_iface.exit_crit_edge, %if.end13.i.fst_get_iface.exit_crit_edge, %if.end.i.fst_get_iface.exit_crit_edge, %sw.epilog.i.fst_get_iface.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end28.i ], [ 0, %sw.epilog.i.fst_get_iface.exit_crit_edge ], [ -12, %if.end.i.fst_get_iface.exit_crit_edge ], [ -14, %copy_to_user.exit.i.fst_get_iface.exit_crit_edge ], [ -14, %if.end13.i.fst_get_iface.exit_crit_edge ], [ -14, %if.end.i.i.i.fst_get_iface.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sync.i) #10
  br label %cleanup

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge50, %if.end.sw.bb4_crit_edge51, %if.end.sw.bb4_crit_edge52, %if.end.sw.bb4_crit_edge53, %if.end.sw.bb4_crit_edge54, %if.end.sw.bb4_crit_edge55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sync.i32) #10
  %33 = call ptr @memset(ptr %sync.i32, i32 255, i32 12)
  %size.i33 = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 1
  %34 = ptrtoint ptr %size.i33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %35)
  %cmp.not.i = icmp eq i32 %35, 12
  br i1 %cmp.not.i, label %if.end.i36, label %sw.bb4.fst_set_iface.exit_crit_edge

sw.bb4.fst_set_iface.exit_crit_edge:              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_set_iface.exit

if.end.i36:                                       ; preds = %sw.bb4
  %ifs_ifsu.i34 = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 2
  %36 = ptrtoint ptr %ifs_ifsu.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ifs_ifsu.i34, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 156) #10
  %call.i.i.i35 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i35, label %if.end.i36.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i36.if.then11.i.i.i_crit_edge:             ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i36
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %37, i32 12, i32 -1226833920) #15, !srcloc !289
  %asmresult.i.i.i37 = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i37)
  %cmp.i6.i.i38 = icmp eq i32 %asmresult.i.i.i37, 0
  br i1 %cmp.i6.i.i38, label %if.end.i.i.i40, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !211

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i40:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i39 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sync.i32, i32 noundef 12) #10
  %39 = call i32 @llvm.read_register.i32(metadata !201) #10
  %and.i.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #9, !srcloc !290
  %and.i.i.i.i.i = and i32 %41, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %sync.i32, ptr noundef %37, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #10, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end2.i, label %if.end.i.i.i40.if.then11.i.i.i_crit_edge, !prof !211

if.end.i.i.i40.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i40.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end.i36.if.then11.i.i.i_crit_edge
  %res.0.i.i101.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i40.if.then11.i.i.i_crit_edge ], [ 12, %if.end.i36.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.0.i.i101.i
  %add.ptr.i.i.i = getelementptr i8, ptr %sync.i32, i32 %sub.i.i.i
  %42 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i101.i)
  br label %fst_set_iface.exit

if.end2.i:                                        ; preds = %if.end.i.i.i40
  %loopback.i41 = getelementptr inbounds %struct.sync_serial_settings, ptr %sync.i32, i32 0, i32 2
  %43 = ptrtoint ptr %loopback.i41 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %loopback.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool3.not.i = icmp eq i16 %44, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end2.i.fst_set_iface.exit_crit_edge

if.end2.i.fst_set_iface.exit_crit_edge:           ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_set_iface.exit

if.end5.i:                                        ; preds = %if.end2.i
  %index.i42 = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %index.i42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index.i42, align 4
  %47 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ifs, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %48, label %if.end5.i.fst_set_iface.exit_crit_edge [
    i32 4096, label %do.body.i
    i32 4097, label %do.body7.i
    i32 4098, label %do.body16.i
    i32 4102, label %do.body25.i
    i32 4099, label %do.body34.i
    i32 4100, label %do.body43.i
    i32 4101, label %if.end5.i.sw.epilog.i46_crit_edge
  ]

if.end5.i.sw.epilog.i46_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i46

if.end5.i.fst_set_iface.exit_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_set_iface.exit

do.body.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %46
  %52 = ptrtoint ptr %arrayidx.i to i32
  %add.ptr.i43 = getelementptr i8, ptr %51, i32 %52
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i43, i16 768) #10, !srcloc !216
  br label %sw.epilog.sink.split.i

do.body7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  call void @arm_heavy_mb() #10
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %arrayidx11.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %46
  %55 = ptrtoint ptr %arrayidx11.i to i32
  %add.ptr13.i = getelementptr i8, ptr %54, i32 %55
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i, i16 256) #10, !srcloc !216
  br label %sw.epilog.sink.split.i

do.body16.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !295
  call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %arrayidx20.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %46
  %58 = ptrtoint ptr %arrayidx20.i to i32
  %add.ptr22.i = getelementptr i8, ptr %57, i32 %58
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i, i16 512) #10, !srcloc !216
  br label %sw.epilog.sink.split.i

do.body25.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  call void @arm_heavy_mb() #10
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 4
  %arrayidx29.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %46
  %61 = ptrtoint ptr %arrayidx29.i to i32
  %add.ptr31.i = getelementptr i8, ptr %60, i32 %61
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr31.i, i16 1024) #10, !srcloc !216
  br label %sw.epilog.sink.split.i

do.body34.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !297
  call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  %arrayidx38.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %46
  %64 = ptrtoint ptr %arrayidx38.i to i32
  %add.ptr40.i = getelementptr i8, ptr %63, i32 %64
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr40.i, i16 1280) #10, !srcloc !216
  br label %sw.epilog.sink.split.i

do.body43.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  call void @arm_heavy_mb() #10
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  %arrayidx47.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %46
  %67 = ptrtoint ptr %arrayidx47.i to i32
  %add.ptr49.i = getelementptr i8, ptr %66, i32 %67
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr49.i, i16 1536) #10, !srcloc !216
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %do.body43.i, %do.body34.i, %do.body25.i, %do.body16.i, %do.body7.i, %do.body.i
  %.sink.i44 = phi i32 [ 6, %do.body43.i ], [ 5, %do.body34.i ], [ 4, %do.body25.i ], [ 2, %do.body16.i ], [ 1, %do.body7.i ], [ 3, %do.body.i ]
  %hwif50.i = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 3
  %68 = ptrtoint ptr %hwif50.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %.sink.i44, ptr %hwif50.i, align 4
  br label %sw.epilog.i46

sw.epilog.i46:                                    ; preds = %sw.epilog.sink.split.i, %if.end5.i.sw.epilog.i46_crit_edge
  %clock_type.i45 = getelementptr inbounds %struct.sync_serial_settings, ptr %sync.i32, i32 0, i32 1
  %69 = ptrtoint ptr %clock_type.i45 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %clock_type.i45, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %70, label %sw.epilog.i46.fst_set_iface.exit_crit_edge [
    i32 1, label %do.body52.i
    i32 2, label %do.body59.i
  ]

sw.epilog.i46.fst_set_iface.exit_crit_edge:       ; preds = %sw.epilog.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %fst_set_iface.exit

do.body52.i:                                      ; preds = %sw.epilog.i46
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !299
  call void @arm_heavy_mb() #10
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %3, align 4
  %internalClock.i47 = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %46, i32 2
  %74 = ptrtoint ptr %internalClock.i47 to i32
  %add.ptr57.i = getelementptr i8, ptr %73, i32 %74
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr57.i, i8 0) #10, !srcloc !222
  br label %do.body68.i

do.body59.i:                                      ; preds = %sw.epilog.i46
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !300
  call void @arm_heavy_mb() #10
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %3, align 4
  %internalClock64.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %46, i32 2
  %77 = ptrtoint ptr %internalClock64.i to i32
  %add.ptr65.i = getelementptr i8, ptr %76, i32 %77
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr65.i, i8 1) #10, !srcloc !222
  br label %do.body68.i

do.body68.i:                                      ; preds = %do.body59.i, %do.body52.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !301
  call void @arm_heavy_mb() #10
  %78 = ptrtoint ptr %sync.i32 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sync.i32, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #10
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %3, align 4
  %lineSpeed.i48 = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %46, i32 6
  %83 = ptrtoint ptr %lineSpeed.i48 to i32
  %add.ptr73.i = getelementptr i8, ptr %82, i32 %83
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 %80) #10, !srcloc !213
  br label %fst_set_iface.exit

fst_set_iface.exit:                               ; preds = %do.body68.i, %sw.epilog.i46.fst_set_iface.exit_crit_edge, %if.end5.i.fst_set_iface.exit_crit_edge, %if.end2.i.fst_set_iface.exit_crit_edge, %if.then11.i.i.i, %sw.bb4.fst_set_iface.exit_crit_edge
  %retval.0.i49 = phi i32 [ 0, %do.body68.i ], [ -12, %sw.bb4.fst_set_iface.exit_crit_edge ], [ -22, %if.end2.i.fst_set_iface.exit_crit_edge ], [ -22, %if.end5.i.fst_set_iface.exit_crit_edge ], [ -22, %sw.epilog.i46.fst_set_iface.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sync.i32) #10
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mode = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 5
  %84 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4, ptr %mode, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %mode8 = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 5
  %85 = ptrtoint ptr %mode8 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mode8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %86)
  %cmp = icmp eq i32 %86, 4
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %ifs to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 8204, ptr %ifs, align 4
  br label %cleanup

if.end11:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 @hdlc_ioctl(ptr noundef %dev, ptr noundef %ifs) #10
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mode13 = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 5
  %88 = ptrtoint ptr %mode13 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 5, ptr %mode13, align 4
  %call17 = tail call i32 @hdlc_ioctl(ptr noundef %dev, ptr noundef %ifs) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end11, %if.then9, %sw.bb6, %fst_set_iface.exit, %fst_get_iface.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %sw.default ], [ 0, %if.then9 ], [ %call12, %if.end11 ], [ 0, %sw.bb6 ], [ %retval.0.i49, %fst_set_iface.exit ], [ %retval.0.i, %fst_get_iface.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fst_siocdevprivate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %ifr, ptr noundef %data, i32 noundef %cmd) #3 align 64 {
entry:
  %wrthdr = alloca %struct.fstioc_write, align 4
  %info = alloca %struct.fstioc_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wrthdr) #10
  %0 = ptrtoint ptr %wrthdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wrthdr, align 4, !annotation !239
  %1 = getelementptr inbounds %struct.fstioc_write, ptr %wrthdr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !239
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %info) #10
  %3 = call ptr @memset(ptr %info, i32 255, i32 96)
  %priv = getelementptr i8, ptr %dev, i32 2372
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %card1 = getelementptr inbounds %struct.fst_port_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card1, align 4
  %call2 = tail call zeroext i1 @capable(i32 noundef 12) #10
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 35323, label %sw.bb
    i32 35324, label %sw.bb3
    i32 35322, label %sw.bb5
    i32 35325, label %sw.bb33
    i32 35326, label %sw.bb64
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fst_cpureset(ptr noundef %7)
  %state = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 7
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %state, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %family.i = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !302
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  tail call void @arm_heavy_mb() #10
  %pci_conf.i = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 9
  %15 = ptrtoint ptr %pci_conf.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pci_conf.i, align 4
  %conv.i = zext i16 %16 to i32
  %add3.i = add nuw nsw i32 %conv.i, -18874258
  %17 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 3588) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %pci_conf.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pci_conf.i, align 4
  %conv8.i = zext i16 %19 to i32
  %add12.i = add nuw nsw i32 %conv8.i, -18874258
  %20 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 3844) #10, !srcloc !216
  br label %fst_cpurelease.exit

if.else.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %ctlmem.i = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 1
  %21 = ptrtoint ptr %ctlmem.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctlmem.i, align 4
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  br label %fst_cpurelease.exit

fst_cpurelease.exit:                              ; preds = %if.else.i, %if.then.i
  %state4 = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 7
  %24 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %state4, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %sw.bb5.cleanup_crit_edge, label %if.end59.i.i

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59.i.i:                                     ; preds = %sw.bb5
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %data, i32 8, i32 -1226833920) #15, !srcloc !289
  %asmresult.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !211

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %wrthdr, i32 noundef 8) #10
  %26 = call i32 @llvm.read_register.i32(metadata !201) #10
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !290
  %and.i.i.i.i = and i32 %28, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %wrthdr, ptr noundef nonnull %data, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #10, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !211

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i191 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i191
  %add.ptr.i.i = getelementptr i8, ptr %wrthdr, i32 %sub.i.i
  %29 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i191)
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.i
  %30 = ptrtoint ptr %wrthdr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wrthdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %31)
  %cmp = icmp ugt i32 %31, 1048576
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %lor.lhs.false

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end11
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %33)
  %cmp12 = icmp ugt i32 %33, 1048576
  %add = add i32 %33, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %add)
  %cmp16 = icmp ugt i32 %add, 1048576
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp16
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end18

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %data, i32 8
  %call20 = call ptr @memdup_user(ptr noundef %add.ptr, i32 noundef %31) #10
  %cmp.i150 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %7, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  %add.ptr26 = getelementptr i8, ptr %36, i32 %38
  %39 = ptrtoint ptr %wrthdr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wrthdr, align 4
  call void @mmiocpy(ptr noundef %add.ptr26, ptr noundef %call20, i32 noundef %40) #10
  call void @kfree(ptr noundef %call20) #10
  %state28 = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 7
  %41 = ptrtoint ptr %state28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %state28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp29 = icmp eq i32 %42, 1
  br i1 %cmp29, label %if.then30, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %state28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %state28, align 4
  br label %cleanup

sw.bb33:                                          ; preds = %if.end
  %state34 = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 7
  %44 = ptrtoint ptr %state34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp35 = icmp eq i32 %45, 3
  br i1 %cmp35, label %if.then36, label %sw.bb33.if.end56_crit_edge

sw.bb33.if.end56_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then36:                                        ; preds = %sw.bb33
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %7, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 18754
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp2(i16 6144, i16 %48)
  %cmp.not.i = icmp eq i16 %48, 6144
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %7, align 4
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr7.i = getelementptr i8, ptr %50, i32 18754
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7.i) #10, !srcloc !249
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !307
  %conv11.i = zext i16 %52 to i32
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %conv11.i, i32 noundef 24) #13
  %53 = ptrtoint ptr %state34 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 5, ptr %state34, align 4
  br label %if.end56

if.end.i:                                         ; preds = %if.then36
  %add.ptr16.i = getelementptr i8, ptr %50, i32 19344
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #10, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !308
  call void @__sanitizer_cov_trace_const_cmp4(i32 2018915346, i32 %54)
  %cmp20.not.i = icmp eq i32 %54, 2018915346
  br i1 %cmp20.not.i, label %if.end29.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #13
  %55 = ptrtoint ptr %state34 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 5, ptr %state34, align 4
  br label %if.end56

if.end29.i:                                       ; preds = %if.end.i
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %7, align 4
  %add.ptr33.i = getelementptr i8, ptr %57, i32 18752
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !309
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %58, label %do.end57.i [
    i8 1, label %if.then40.i
    i8 -1, label %do.end47.i
    i8 0, label %if.end29.i.if.end63.i_crit_edge
  ]

if.end29.i.if.end63.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then40.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %state34 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4, ptr %state34, align 4
  br label %if.end63.i

do.end47.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #13
  %61 = ptrtoint ptr %state34 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 6, ptr %state34, align 4
  br label %if.end56

do.end57.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv37.i = zext i8 %58 to i32
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %conv37.i) #13
  %62 = ptrtoint ptr %state34 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 6, ptr %state34, align 4
  br label %if.end56

if.end63.i:                                       ; preds = %if.then40.i, %if.end29.i.if.end63.i_crit_edge
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %7, align 4
  %add.ptr67.i = getelementptr i8, ptr %64, i32 19080
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67.i) #10, !srcloc !223
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !310
  %nports.i = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 5
  %67 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp71.not.i = icmp eq i32 %66, %68
  br i1 %cmp71.not.i, label %if.end63.i.check_started_ok.exit_crit_edge, label %do.end76.i

if.end63.i.check_started_ok.exit_crit_edge:       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_started_ok.exit

do.end76.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  %card_no.i = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 12
  %69 = ptrtoint ptr %card_no.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %card_no.i, align 4
  %71 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %7, align 4
  %add.ptr81.i = getelementptr i8, ptr %72, i32 19080
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i) #10, !srcloc !223
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  %75 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nports.i, align 4
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %70, i32 noundef %74, i32 noundef %76) #13
  br label %check_started_ok.exit

check_started_ok.exit:                            ; preds = %do.end76.i, %if.end63.i.check_started_ok.exit_crit_edge
  %77 = ptrtoint ptr %state34 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr = load i32, ptr %state34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp38 = icmp eq i32 %.pr, 4
  br i1 %cmp38, label %do.body41, label %check_started_ok.exit.if.end56_crit_edge

check_started_ok.exit.if.end56_crit_edge:         ; preds = %check_started_ok.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

do.body41:                                        ; preds = %check_started_ok.exit
  %card_lock = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 8
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %card_lock) #10
  %family.i151 = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 13
  %78 = ptrtoint ptr %family.i151 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %family.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp.i152 = icmp eq i32 %79, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %pci_conf.i153 = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 9
  %80 = ptrtoint ptr %pci_conf.i153 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %pci_conf.i153, align 4
  %conv.i154 = zext i16 %81 to i32
  br i1 %cmp.i152, label %do.body.i, label %do.body2.i

do.body.i:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %add1.i = add nuw nsw i32 %conv.i154, -18874264
  %82 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %82, i32 592911) #10, !srcloc !213
  br label %fst_enable_intr.exit

do.body2.i:                                       ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %add8.i = add nuw nsw i32 %conv.i154, -18874292
  %83 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %83, i16 17157) #10, !srcloc !216
  br label %fst_enable_intr.exit

fst_enable_intr.exit:                             ; preds = %do.body2.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %84 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %7, align 4
  %add.ptr53 = getelementptr i8, ptr %85, i32 18753
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53, i8 -18) #10, !srcloc !222
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %card_lock, i32 noundef %call44) #10
  br label %if.end56

if.end56:                                         ; preds = %fst_enable_intr.exit, %check_started_ok.exit.if.end56_crit_edge, %do.end57.i, %do.end47.i, %do.end25.i, %do.end.i, %sw.bb33.if.end56_crit_edge
  %tobool57.not = icmp eq ptr %data, null
  br i1 %tobool57.not, label %if.end56.cleanup_crit_edge, label %if.end59

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59:                                         ; preds = %if.end56
  %86 = call ptr @memset(ptr %info, i32 0, i32 96)
  %index.i = getelementptr inbounds %struct.fst_port_info, ptr %5, i32 0, i32 2
  %87 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %index.i, align 4
  %kernelVersion.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 6
  %89 = ptrtoint ptr %kernelVersion.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 332032, ptr %kernelVersion.i, align 4
  %nports.i156 = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 5
  %90 = ptrtoint ptr %nports.i156 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nports.i156, align 4
  %nports1.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 1
  %92 = ptrtoint ptr %nports1.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %nports1.i, align 4
  %type.i = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 6
  %93 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 2
  %95 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %type2.i, align 4
  %96 = ptrtoint ptr %state34 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %state34, align 4
  %state3.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 3
  %98 = ptrtoint ptr %state3.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %state3.i, align 4
  %proto.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 8
  %99 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 5, ptr %proto.i, align 2
  %index4.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 4
  %100 = ptrtoint ptr %index4.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %88, ptr %index4.i, align 4
  %101 = load i32, ptr %state34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %101)
  %cmp.i158 = icmp eq i32 %101, 4
  %cond.i = select i1 %cmp.i158, i32 8191, i32 256
  %102 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %cond.i, ptr %info, align 4
  %103 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %7, align 4
  %arrayidx.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %88
  %105 = ptrtoint ptr %arrayidx.i to i32
  %add.ptr.i159 = getelementptr i8, ptr %104, i32 %105
  %106 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i159) #10, !srcloc !249
  %107 = tail call i16 @llvm.bswap.i16(i16 %106) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  %lineInterface7.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 7
  %108 = ptrtoint ptr %lineInterface7.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %lineInterface7.i, align 4
  %109 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %7, align 4
  %internalClock.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %88, i32 2
  %111 = ptrtoint ptr %internalClock.i to i32
  %add.ptr12.i = getelementptr i8, ptr %110, i32 %111
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  %internalClock16.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 9
  %113 = ptrtoint ptr %internalClock16.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %internalClock16.i, align 1
  %114 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %7, align 4
  %lineSpeed.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %88, i32 6
  %116 = ptrtoint ptr %lineSpeed.i to i32
  %add.ptr21.i = getelementptr i8, ptr %115, i32 %116
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #10, !srcloc !223
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  %lineSpeed25.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 10
  %119 = ptrtoint ptr %lineSpeed25.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %lineSpeed25.i, align 4
  %120 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %7, align 4
  %invertClock.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %88, i32 4
  %122 = ptrtoint ptr %invertClock.i to i32
  %add.ptr30.i = getelementptr i8, ptr %121, i32 %122
  %123 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr30.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !316
  %invertClock34.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 18
  %124 = ptrtoint ptr %invertClock34.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %invertClock34.i, align 1
  %125 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %7, align 4
  %arrayidx38.i = getelementptr [4 x i32], ptr inttoptr (i32 18818 to ptr), i32 0, i32 %88
  %127 = ptrtoint ptr %arrayidx38.i to i32
  %add.ptr39.i = getelementptr i8, ptr %126, i32 %127
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #10, !srcloc !223
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %v24IpSts.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 11
  %130 = ptrtoint ptr %v24IpSts.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %v24IpSts.i, align 4
  %131 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %7, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr inttoptr (i32 18834 to ptr), i32 0, i32 %88
  %133 = ptrtoint ptr %arrayidx46.i to i32
  %add.ptr47.i = getelementptr i8, ptr %132, i32 %133
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i) #10, !srcloc !223
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  %v24OpSts.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 12
  %136 = ptrtoint ptr %v24OpSts.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %v24OpSts.i, align 4
  %137 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %7, align 4
  %arrayidx54.i = getelementptr [4 x i16], ptr inttoptr (i32 18914 to ptr), i32 0, i32 %88
  %139 = ptrtoint ptr %arrayidx54.i to i32
  %add.ptr55.i = getelementptr i8, ptr %138, i32 %139
  %140 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr55.i) #10, !srcloc !249
  %141 = tail call i16 @llvm.bswap.i16(i16 %140) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !319
  %clockStatus.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 13
  %142 = ptrtoint ptr %clockStatus.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %clockStatus.i, align 4
  %143 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %7, align 4
  %add.ptr62.i = getelementptr i8, ptr %144, i32 18922
  %145 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr62.i) #10, !srcloc !249
  %146 = tail call i16 @llvm.bswap.i16(i16 %145) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  %cableStatus.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 14
  %147 = ptrtoint ptr %cableStatus.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %cableStatus.i, align 2
  %148 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %7, align 4
  %add.ptr69.i = getelementptr i8, ptr %149, i32 19212
  %150 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr69.i) #10, !srcloc !249
  %151 = tail call i16 @llvm.bswap.i16(i16 %150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %cardMode.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 15
  %152 = ptrtoint ptr %cardMode.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %cardMode.i, align 4
  %153 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %7, align 4
  %add.ptr76.i = getelementptr i8, ptr %154, i32 18756
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76.i) #10, !srcloc !223
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !322
  %smcFirmwareVersion.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 5
  %157 = ptrtoint ptr %smcFirmwareVersion.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %smcFirmwareVersion.i, align 4
  %family.i160 = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 13
  %158 = ptrtoint ptr %family.i160 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %family.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %159)
  %cmp80.i = icmp eq i32 %159, 1
  br i1 %cmp80.i, label %if.then.i161, label %if.end59.if.end96.i_crit_edge

if.end59.if.end96.i_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

if.then.i161:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp82.i = icmp ne i32 %161, 0
  %162 = ptrtoint ptr %cableStatus.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %cableStatus.i, align 2
  %164 = zext i1 %cmp82.i to i16
  %.sink373.i = lshr i16 %163, %164
  %165 = and i16 %.sink373.i, 1
  store i16 %165, ptr %cableStatus.i, align 2
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then.i161, %if.end59.if.end96.i_crit_edge
  %166 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %167)
  %cmp98.i = icmp eq i32 %167, 6
  br i1 %cmp98.i, label %if.then100.i, label %if.end96.i.if.end59.i.i119_crit_edge

if.end96.i.if.end59.i.i119_crit_edge:             ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i119

if.then100.i:                                     ; preds = %if.end96.i
  %168 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %7, align 4
  %add.ptr104.i = getelementptr i8, ptr %169, i32 19216
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104.i) #10, !srcloc !223
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  %172 = ptrtoint ptr %lineSpeed25.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %lineSpeed25.i, align 4
  %173 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %7, align 4
  %add.ptr112.i = getelementptr i8, ptr %174, i32 19220
  %175 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr112.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  %clockSource.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 20
  %176 = ptrtoint ptr %clockSource.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %clockSource.i, align 1
  %177 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %7, align 4
  %add.ptr119.i = getelementptr i8, ptr %178, i32 19221
  %179 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr119.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  %framing.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 21
  %180 = ptrtoint ptr %framing.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %framing.i, align 4
  %181 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %7, align 4
  %add.ptr126.i = getelementptr i8, ptr %182, i32 19222
  %183 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr126.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  %structure.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 22
  %184 = ptrtoint ptr %structure.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %structure.i, align 1
  %185 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %7, align 4
  %add.ptr133.i = getelementptr i8, ptr %186, i32 19223
  %187 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr133.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !327
  %interface.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 23
  %188 = ptrtoint ptr %interface.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %interface.i, align 2
  %189 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %7, align 4
  %add.ptr140.i = getelementptr i8, ptr %190, i32 19224
  %191 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr140.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !328
  %coding.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 24
  %192 = ptrtoint ptr %coding.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %coding.i, align 1
  %193 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %7, align 4
  %add.ptr147.i = getelementptr i8, ptr %194, i32 19225
  %195 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr147.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  %lineBuildOut.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 25
  %196 = ptrtoint ptr %lineBuildOut.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %lineBuildOut.i, align 4
  %197 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %7, align 4
  %add.ptr154.i = getelementptr i8, ptr %198, i32 19226
  %199 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr154.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !330
  %equalizer.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 26
  %200 = ptrtoint ptr %equalizer.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %equalizer.i, align 1
  %201 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %7, align 4
  %add.ptr161.i = getelementptr i8, ptr %202, i32 19228
  %203 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr161.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %loopMode.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 27
  %204 = ptrtoint ptr %loopMode.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %loopMode.i, align 2
  %205 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %7, align 4
  %add.ptr168.i = getelementptr i8, ptr %206, i32 19229
  %207 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr168.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  %range.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 28
  %208 = ptrtoint ptr %range.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %range.i, align 1
  %209 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %7, align 4
  %add.ptr175.i = getelementptr i8, ptr %210, i32 19230
  %211 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr175.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !333
  %txBufferMode.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 29
  %212 = ptrtoint ptr %txBufferMode.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %txBufferMode.i, align 4
  %213 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %7, align 4
  %add.ptr182.i = getelementptr i8, ptr %214, i32 19231
  %215 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr182.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !334
  %rxBufferMode.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 30
  %216 = ptrtoint ptr %rxBufferMode.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %rxBufferMode.i, align 1
  %217 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %7, align 4
  %add.ptr189.i = getelementptr i8, ptr %218, i32 19232
  %219 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr189.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !335
  %startingSlot.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 19
  %220 = ptrtoint ptr %startingSlot.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %startingSlot.i, align 2
  %221 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %7, align 4
  %add.ptr196.i = getelementptr i8, ptr %222, i32 19233
  %223 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr196.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !336
  %losThreshold.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 31
  %224 = ptrtoint ptr %losThreshold.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %losThreshold.i, align 2
  %225 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %7, align 4
  %add.ptr203.i = getelementptr i8, ptr %226, i32 19234
  %227 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr203.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool.not.i = icmp eq i8 %227, 0
  br i1 %tobool.not.i, label %if.then100.i.if.end217.i_crit_edge, label %if.then207.i

if.then100.i.if.end217.i_crit_edge:               ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217.i

if.then207.i:                                     ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #12
  %228 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %7, align 4
  %add.ptr211.i = getelementptr i8, ptr %229, i32 19235
  %230 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr211.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !338
  br label %if.end217.i

if.end217.i:                                      ; preds = %if.then207.i, %if.then100.i.if.end217.i_crit_edge
  %.sink.i = phi i8 [ %230, %if.then207.i ], [ 0, %if.then100.i.if.end217.i_crit_edge ]
  %231 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 32
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %.sink.i, ptr %231, align 1
  %233 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %7, align 4
  %add.ptr221.i = getelementptr i8, ptr %234, i32 19280
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr221.i) #10, !srcloc !223
  %236 = tail call i32 @llvm.bswap.i32(i32 %235) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !339
  %receiveBufferDelay.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 33
  %237 = ptrtoint ptr %receiveBufferDelay.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %receiveBufferDelay.i, align 4
  %238 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %7, align 4
  %add.ptr228.i = getelementptr i8, ptr %239, i32 19284
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr228.i) #10, !srcloc !223
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !340
  %framingErrorCount.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 34
  %242 = ptrtoint ptr %framingErrorCount.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %framingErrorCount.i, align 4
  %243 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %7, align 4
  %add.ptr235.i = getelementptr i8, ptr %244, i32 19288
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr235.i) #10, !srcloc !223
  %246 = tail call i32 @llvm.bswap.i32(i32 %245) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !341
  %codeViolationCount.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 35
  %247 = ptrtoint ptr %codeViolationCount.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %codeViolationCount.i, align 4
  %248 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %7, align 4
  %add.ptr242.i = getelementptr i8, ptr %249, i32 19292
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr242.i) #10, !srcloc !223
  %251 = tail call i32 @llvm.bswap.i32(i32 %250) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !342
  %crcErrorCount.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 36
  %252 = ptrtoint ptr %crcErrorCount.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %crcErrorCount.i, align 4
  %253 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %7, align 4
  %add.ptr249.i = getelementptr i8, ptr %254, i32 19296
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr249.i) #10, !srcloc !223
  %256 = tail call i32 @llvm.bswap.i32(i32 %255) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !343
  %lineAttenuation.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 37
  %257 = ptrtoint ptr %lineAttenuation.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %lineAttenuation.i, align 4
  %258 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %7, align 4
  %add.ptr256.i = getelementptr i8, ptr %259, i32 19301
  %260 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr256.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !344
  %conv260.i = zext i8 %260 to i16
  %lossOfSignal.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 38
  %261 = ptrtoint ptr %lossOfSignal.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %conv260.i, ptr %lossOfSignal.i, align 4
  %262 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %7, align 4
  %add.ptr264.i = getelementptr i8, ptr %263, i32 19302
  %264 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr264.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !345
  %conv268.i = zext i8 %264 to i16
  %receiveRemoteAlarm.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 39
  %265 = ptrtoint ptr %receiveRemoteAlarm.i to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 %conv268.i, ptr %receiveRemoteAlarm.i, align 2
  %266 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %7, align 4
  %add.ptr272.i = getelementptr i8, ptr %267, i32 19303
  %268 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr272.i) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !346
  %conv276.i = zext i8 %268 to i16
  %alarmIndicationSignal.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 40
  %269 = ptrtoint ptr %alarmIndicationSignal.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %conv276.i, ptr %alarmIndicationSignal.i, align 4
  br label %if.end59.i.i119

if.end59.i.i119:                                  ; preds = %if.end217.i, %if.end96.i.if.end59.i.i119_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 174) #10
  %call.i.i120 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i120, label %if.end59.i.i119.cleanup_crit_edge, label %if.end.i.i123

if.end59.i.i119.cleanup_crit_edge:                ; preds = %if.end59.i.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i123:                                    ; preds = %if.end59.i.i119
  %270 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %data, i32 96, i32 -1226833920) #15, !srcloc !288
  %asmresult.i.i121 = extractvalue { i32, i32 } %270, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i121)
  %cmp.i6.i122 = icmp eq i32 %asmresult.i.i121, 0
  br i1 %cmp.i6.i122, label %copy_to_user.exit, label %if.end.i.i123.cleanup_crit_edge

if.end.i.i123.cleanup_crit_edge:                  ; preds = %if.end.i.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i123
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i124 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 96) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %data, ptr noundef nonnull %info, i32 noundef 96) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool61.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool61.not, i32 0, i32 -14
  br label %cleanup

sw.bb64:                                          ; preds = %if.end
  %state65 = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 7
  %271 = ptrtoint ptr %state65 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %state65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %272)
  %cmp66.not = icmp eq i32 %272, 4
  br i1 %cmp66.not, label %if.end59.i.i129, label %do.end71

do.end71:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #12
  %card_no = getelementptr inbounds %struct.fst_card_info, ptr %7, i32 0, i32 12
  %273 = ptrtoint ptr %card_no to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %card_no, align 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %274, i32 noundef %272) #13
  br label %cleanup

if.end59.i.i129:                                  ; preds = %sw.bb64
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 156) #10
  %call.i.i130 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i130, label %if.end59.i.i129.if.then11.i.i146_crit_edge, label %land.lhs.true.i.i133

if.end59.i.i129.if.then11.i.i146_crit_edge:       ; preds = %if.end59.i.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i146

land.lhs.true.i.i133:                             ; preds = %if.end59.i.i129
  %275 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 96, i32 -1226833920) #15, !srcloc !289
  %asmresult.i.i131 = extractvalue { i32, i32 } %275, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i131)
  %cmp.i6.i132 = icmp eq i32 %asmresult.i.i131, 0
  br i1 %cmp.i6.i132, label %if.end.i.i143, label %land.lhs.true.i.i133.if.then11.i.i146_crit_edge, !prof !211

land.lhs.true.i.i133.if.then11.i.i146_crit_edge:  ; preds = %land.lhs.true.i.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i146

if.end.i.i143:                                    ; preds = %land.lhs.true.i.i133
  %call.i.i.i134 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info, i32 noundef 96) #10
  %276 = call i32 @llvm.read_register.i32(metadata !201) #10
  %and.i.i.i.i.i.i135 = and i32 %276, -16384
  %277 = inttoptr i32 %and.i.i.i.i.i.i135 to ptr
  %cpu_domain.i.i.i.i.i136 = getelementptr inbounds %struct.thread_info, ptr %277, i32 0, i32 4
  %278 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i136) #9, !srcloc !290
  %and.i.i.i.i137 = and i32 %278, -13
  %or.i.i.i.i138 = or i32 %and.i.i.i.i137, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i138) #10, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  %call1.i.i.i139 = call i32 @arm_copy_from_user(ptr noundef nonnull %info, ptr noundef %data, i32 noundef 96) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %278) #10, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i139)
  %tobool4.not.i.i142 = icmp eq i32 %call1.i.i.i139, 0
  br i1 %tobool4.not.i.i142, label %if.end79, label %if.end.i.i143.if.then11.i.i146_crit_edge, !prof !211

if.end.i.i143.if.then11.i.i146_crit_edge:         ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i146

if.then11.i.i146:                                 ; preds = %if.end.i.i143.if.then11.i.i146_crit_edge, %land.lhs.true.i.i133.if.then11.i.i146_crit_edge, %if.end59.i.i129.if.then11.i.i146_crit_edge
  %res.0.i.i141199 = phi i32 [ %call1.i.i.i139, %if.end.i.i143.if.then11.i.i146_crit_edge ], [ 96, %if.end59.i.i129.if.then11.i.i146_crit_edge ], [ 96, %land.lhs.true.i.i133.if.then11.i.i146_crit_edge ]
  %sub.i.i144 = sub i32 96, %res.0.i.i141199
  %add.ptr.i.i145 = getelementptr i8, ptr %info, i32 %sub.i.i144
  %279 = call ptr @memset(ptr %add.ptr.i.i145, i32 0, i32 %res.0.i.i141199)
  br label %cleanup

if.end79:                                         ; preds = %if.end.i.i143
  %280 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %info, align 4
  %and.i = and i32 %281, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i162 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i162, label %if.end79.if.end4.i_crit_edge, label %if.then.i165

if.end79.if.end4.i_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then.i165:                                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %proto.i163 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 8
  %282 = ptrtoint ptr %proto.i163 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %proto.i163, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %283)
  %cmp.i164 = icmp eq i8 %283, 4
  %mode.i = getelementptr inbounds %struct.fst_port_info, ptr %5, i32 0, i32 5
  %..i = select i1 %cmp.i164, i32 4, i32 5
  %284 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %..i, ptr %mode.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i165, %if.end79.if.end4.i_crit_edge
  %and16.i = and i32 %281, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end4.i.if.end20.i_crit_edge, label %do.body.i169

if.end4.i.if.end20.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

do.body.i169:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !347
  call void @arm_heavy_mb() #10
  %invertClock.i166 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 18
  %285 = ptrtoint ptr %invertClock.i166 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %invertClock.i166, align 1
  %287 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %7, align 4
  %index.i167 = getelementptr inbounds %struct.fst_port_info, ptr %5, i32 0, i32 2
  %289 = ptrtoint ptr %index.i167 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %index.i167, align 4
  %invertClock19.i = getelementptr [4 x %struct.port_cfg], ptr inttoptr (i32 18850 to ptr), i32 0, i32 %290, i32 4
  %291 = ptrtoint ptr %invertClock19.i to i32
  %add.ptr.i168 = getelementptr i8, ptr %288, i32 %291
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i168, i8 %286) #10, !srcloc !222
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.body.i169, %if.end4.i.if.end20.i_crit_edge
  %292 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %info, align 4
  %and22.i = and i32 %293, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end20.i.if.end30.i_crit_edge, label %do.body25.i

if.end20.i.if.end30.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

do.body25.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !348
  call void @arm_heavy_mb() #10
  %cardMode.i170 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 15
  %294 = ptrtoint ptr %cardMode.i170 to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %cardMode.i170, align 4
  %296 = call i16 @llvm.bswap.i16(i16 %295) #10
  %297 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %7, align 4
  %add.ptr29.i = getelementptr i8, ptr %298, i32 19212
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr29.i, i16 %296) #10, !srcloc !216
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.body25.i, %if.end20.i.if.end30.i_crit_edge
  %299 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %info, align 4
  %and32.i = and i32 %300, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end30.i.set_conf_from_info.exit_crit_edge, label %do.body35.i

if.end30.i.set_conf_from_info.exit_crit_edge:     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_conf_from_info.exit

do.body35.i:                                      ; preds = %if.end30.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !349
  call void @arm_heavy_mb() #10
  %lineSpeed.i171 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 10
  %301 = ptrtoint ptr %lineSpeed.i171 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %lineSpeed.i171, align 4
  %303 = call i32 @llvm.bswap.i32(i32 %302) #10
  %304 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %7, align 4
  %add.ptr39.i172 = getelementptr i8, ptr %305, i32 19216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i172, i32 %303) #10, !srcloc !213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !350
  call void @arm_heavy_mb() #10
  %clockSource.i173 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 20
  %306 = ptrtoint ptr %clockSource.i173 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %clockSource.i173, align 1
  %308 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %7, align 4
  %add.ptr44.i = getelementptr i8, ptr %309, i32 19220
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44.i, i8 %307) #10, !srcloc !222
  %framing.i174 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 21
  %310 = ptrtoint ptr %framing.i174 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %framing.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %311)
  %cmp52.i = icmp eq i8 %311, 5
  %spec.store.select148.i = select i1 %cmp52.i, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %311)
  %cmp58.i = icmp eq i8 %311, 7
  %spec.store.select149.i = select i1 %cmp58.i, i8 1, i8 %spec.store.select148.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !351
  call void @arm_heavy_mb() #10
  %312 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %7, align 4
  %add.ptr66.i = getelementptr i8, ptr %313, i32 19221
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr66.i, i8 %spec.store.select149.i) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !352
  call void @arm_heavy_mb() #10
  %structure.i175 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 22
  %314 = ptrtoint ptr %structure.i175 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %structure.i175, align 1
  %316 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %7, align 4
  %add.ptr71.i = getelementptr i8, ptr %317, i32 19222
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr71.i, i8 %315) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !353
  call void @arm_heavy_mb() #10
  %interface.i176 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 23
  %318 = ptrtoint ptr %interface.i176 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %interface.i176, align 2
  %320 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %7, align 4
  %add.ptr76.i177 = getelementptr i8, ptr %321, i32 19223
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr76.i177, i8 %319) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !354
  call void @arm_heavy_mb() #10
  %coding.i178 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 24
  %322 = ptrtoint ptr %coding.i178 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %coding.i178, align 1
  %324 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %7, align 4
  %add.ptr81.i179 = getelementptr i8, ptr %325, i32 19224
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr81.i179, i8 %323) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !355
  call void @arm_heavy_mb() #10
  %lineBuildOut.i180 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 25
  %326 = ptrtoint ptr %lineBuildOut.i180 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %lineBuildOut.i180, align 4
  %328 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %7, align 4
  %add.ptr86.i = getelementptr i8, ptr %329, i32 19225
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr86.i, i8 %327) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !356
  call void @arm_heavy_mb() #10
  %equalizer.i181 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 26
  %330 = ptrtoint ptr %equalizer.i181 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %equalizer.i181, align 1
  %332 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %7, align 4
  %add.ptr91.i = getelementptr i8, ptr %333, i32 19226
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr91.i, i8 %331) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  call void @arm_heavy_mb() #10
  %transparentMode.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 17
  %334 = ptrtoint ptr %transparentMode.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %transparentMode.i, align 4
  %336 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %7, align 4
  %add.ptr96.i = getelementptr i8, ptr %337, i32 19227
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr96.i, i8 %335) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !358
  call void @arm_heavy_mb() #10
  %loopMode.i182 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 27
  %338 = ptrtoint ptr %loopMode.i182 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %loopMode.i182, align 2
  %340 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %7, align 4
  %add.ptr101.i = getelementptr i8, ptr %341, i32 19228
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr101.i, i8 %339) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !359
  call void @arm_heavy_mb() #10
  %range.i183 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 28
  %342 = ptrtoint ptr %range.i183 to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %range.i183, align 1
  %344 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %7, align 4
  %add.ptr106.i = getelementptr i8, ptr %345, i32 19229
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr106.i, i8 %343) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !360
  call void @arm_heavy_mb() #10
  %txBufferMode.i184 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 29
  %346 = ptrtoint ptr %txBufferMode.i184 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %txBufferMode.i184, align 4
  %348 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %7, align 4
  %add.ptr111.i = getelementptr i8, ptr %349, i32 19230
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr111.i, i8 %347) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !361
  call void @arm_heavy_mb() #10
  %rxBufferMode.i185 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 30
  %350 = ptrtoint ptr %rxBufferMode.i185 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %rxBufferMode.i185, align 1
  %352 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %7, align 4
  %add.ptr116.i = getelementptr i8, ptr %353, i32 19231
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr116.i, i8 %351) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !362
  call void @arm_heavy_mb() #10
  %startingSlot.i186 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 19
  %354 = ptrtoint ptr %startingSlot.i186 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %startingSlot.i186, align 2
  %356 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %7, align 4
  %add.ptr121.i = getelementptr i8, ptr %357, i32 19232
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr121.i, i8 %355) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !363
  call void @arm_heavy_mb() #10
  %losThreshold.i187 = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 31
  %358 = ptrtoint ptr %losThreshold.i187 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %losThreshold.i187, align 2
  %360 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %7, align 4
  %add.ptr126.i188 = getelementptr i8, ptr %361, i32 19233
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr126.i188, i8 %359) #10, !srcloc !222
  %idleCode.i = getelementptr inbounds %struct.fstioc_info, ptr %info, i32 0, i32 32
  %362 = ptrtoint ptr %idleCode.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %idleCode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %tobool127.not.i = icmp eq i8 %363, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  %364 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %7, align 4
  %add.ptr139.i = getelementptr i8, ptr %365, i32 19234
  br i1 %tobool127.not.i, label %do.body135.i, label %do.body129.i

do.body129.i:                                     ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr139.i, i8 1) #10, !srcloc !222
  br label %do.body141.i

do.body135.i:                                     ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr139.i, i8 0) #10, !srcloc !222
  br label %do.body141.i

do.body141.i:                                     ; preds = %do.body135.i, %do.body129.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !364
  call void @arm_heavy_mb() #10
  %366 = ptrtoint ptr %idleCode.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %idleCode.i, align 1
  %368 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %7, align 4
  %add.ptr146.i = getelementptr i8, ptr %369, i32 19235
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr146.i, i8 %367) #10, !srcloc !222
  br label %set_conf_from_info.exit

set_conf_from_info.exit:                          ; preds = %do.body141.i, %if.end30.i.set_conf_from_info.exit_crit_edge
  %370 = and i32 %281, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %371 = icmp eq i32 %370, 0
  %err.1.i = select i1 %371, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %set_conf_from_info.exit, %if.then11.i.i146, %do.end71, %copy_to_user.exit, %if.end.i.i123.cleanup_crit_edge, %if.end59.i.i119.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then30, %if.end24.cleanup_crit_edge, %if.then22, %lor.lhs.false.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then11.i.i, %sw.bb5.cleanup_crit_edge, %fst_cpurelease.exit, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end71 ], [ %err.1.i, %set_conf_from_info.exit ], [ %34, %if.then22 ], [ 0, %fst_cpurelease.exit ], [ 0, %sw.bb ], [ -1, %entry.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %if.end11.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %if.end24.cleanup_crit_edge ], [ -22, %if.end56.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i119.cleanup_crit_edge ], [ -14, %if.end.i.i123.cleanup_crit_edge ], [ -14, %if.then11.i.i146 ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %info) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wrthdr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fst_tx_timeout(ptr nocapture noundef %dev, i32 noundef %txqueue) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %2 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %4 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_aborted_errors, align 8
  %inc3 = add i32 %5, 1
  store i32 %inc3, ptr %tx_aborted_errors, align 8
  tail call fastcc void @fst_issue_cmd(ptr noundef %1, i16 noundef zeroext 5)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %8, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #10
  %start = getelementptr inbounds %struct.fst_port_info, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %start, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fst_issue_cmd(ptr nocapture noundef %port, i16 noundef zeroext %cmd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.fst_port_info, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %card_lock = getelementptr inbounds %struct.fst_card_info, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %card_lock) #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.fst_port_info, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [4 x [2 x i16]], ptr inttoptr (i32 18940 to ptr), i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %6
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !249
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !365
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp1196 = icmp ugt i16 %8, 2
  br i1 %cmp1196, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %flags.098 = phi i32 [ %call24, %if.end.while.body_crit_edge ], [ %call3, %entry.while.body_crit_edge ]
  %safety.097 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %card_lock, i32 noundef %flags.098) #10
  %call14 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %card_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %safety.097)
  %exitcond = icmp eq i32 %safety.097, 2000
  br i1 %exitcond, label %do.end33, label %if.end

do.end33:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #13
  br label %while.end

if.end:                                           ; preds = %while.body
  %inc = add nuw nsw i32 %safety.097, 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %arrayidx40 = getelementptr [4 x [2 x i16]], ptr inttoptr (i32 18940 to ptr), i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx40 to i32
  %add.ptr42 = getelementptr i8, ptr %10, i32 %13
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr42) #10, !srcloc !249
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !366
  %cmp11 = icmp ugt i16 %15, 2
  br i1 %cmp11, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %do.end33, %entry.while.end_crit_edge
  %flags.1 = phi i32 [ %call24, %do.end33 ], [ %call3, %entry.while.end_crit_edge ], [ %call24, %if.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  tail call void @arm_heavy_mb() #10
  %16 = tail call i16 @llvm.bswap.i16(i16 %cmd)
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 4
  %arrayidx66 = getelementptr [4 x [2 x i16]], ptr inttoptr (i32 18940 to ptr), i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx66 to i32
  %add.ptr68 = getelementptr i8, ptr %18, i32 %21
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr68, i16 %16) #10, !srcloc !216
  %22 = zext i16 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %cmd, label %while.end.if.end76_crit_edge [
    i16 5, label %while.end.if.then75_crit_edge
    i16 3, label %while.end.if.then75_crit_edge104
  ]

while.end.if.then75_crit_edge104:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

while.end.if.then75_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

while.end.if.end76_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then75:                                        ; preds = %while.end.if.then75_crit_edge, %while.end.if.then75_crit_edge104
  %txpos = getelementptr inbounds %struct.fst_port_info, ptr %port, i32 0, i32 7
  %23 = ptrtoint ptr %txpos to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %txpos, align 4
  %txipos = getelementptr inbounds %struct.fst_port_info, ptr %port, i32 0, i32 8
  %24 = ptrtoint ptr %txipos to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %txipos, align 4
  %start = getelementptr inbounds %struct.fst_port_info, ptr %port, i32 0, i32 9
  %25 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %start, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %while.end.if.end76_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %card_lock, i32 noundef %flags.1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdlc_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_ioctl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fst_process_tx_work_q(ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fst_work_q_lock) #10
  %0 = load i64, ptr @fst_work_txq, align 8
  store i64 0, ptr @fst_work_txq, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fst_work_q_lock, i32 noundef %call3) #10
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %entry
  %work_txq.023 = phi i64 [ %0, %entry ], [ %shr, %if.end16.for.body_crit_edge ]
  %i.021 = phi i32 [ 0, %entry ], [ %inc, %if.end16.for.body_crit_edge ]
  %and = and i64 %work_txq.023, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body.if.end16_crit_edge, label %if.then

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr [32 x ptr], ptr @fst_card_array, i32 0, i32 %i.021
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %2, null
  br i1 %tobool10.not, label %if.then.if.end16_crit_edge, label %do.end14

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end14:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @do_bottom_half_tx(ptr noundef nonnull %2)
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %if.then.if.end16_crit_edge, %for.body.if.end16_crit_edge
  %shr = lshr i64 %work_txq.023, 1
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !30, !32, !34, !35, !37, !38, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !89, !90, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !123, !125, !127, !128, !129, !130, !132, !134, !135, !136, !137, !139, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !174, !176, !178, !179, !180, !181, !183, !184, !185, !187, !189, !191, !193, !195, !197, !199}
!llvm.named.register.sp = !{!201}
!llvm.module.flags = !{!202, !203, !204, !205, !206, !207, !208, !209}
!llvm.ident = !{!210}

!0 = !{ptr @__UNIQUE_ID_author339, !1, !"__UNIQUE_ID_author339", i1 false, i1 false}
!1 = !{!"../drivers/net/wan/farsync.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_description340, !3, !"__UNIQUE_ID_description340", i1 false, i1 false}
!3 = !{!"../drivers/net/wan/farsync.c", i32 35, i32 1}
!4 = !{ptr @__UNIQUE_ID_file341, !5, !"__UNIQUE_ID_file341", i1 false, i1 false}
!5 = !{!"../drivers/net/wan/farsync.c", i32 36, i32 1}
!6 = !{ptr @__UNIQUE_ID_license342, !5, !"__UNIQUE_ID_license342", i1 false, i1 false}
!7 = !{ptr @__param_fst_txq_low, !8, !"__param_fst_txq_low", i1 false, i1 false}
!8 = !{!"../drivers/net/wan/farsync.c", i32 82, i32 1}
!9 = !{ptr @__UNIQUE_ID_fst_txq_lowtype343, !8, !"__UNIQUE_ID_fst_txq_lowtype343", i1 false, i1 false}
!10 = !{ptr @__param_fst_txq_high, !11, !"__param_fst_txq_high", i1 false, i1 false}
!11 = !{!"../drivers/net/wan/farsync.c", i32 83, i32 1}
!12 = !{ptr @__UNIQUE_ID_fst_txq_hightype344, !11, !"__UNIQUE_ID_fst_txq_hightype344", i1 false, i1 false}
!13 = !{ptr @__param_fst_max_reads, !14, !"__param_fst_max_reads", i1 false, i1 false}
!14 = !{!"../drivers/net/wan/farsync.c", i32 84, i32 1}
!15 = !{ptr @__UNIQUE_ID_fst_max_readstype345, !14, !"__UNIQUE_ID_fst_max_readstype345", i1 false, i1 false}
!16 = !{ptr @__param_fst_excluded_cards, !17, !"__param_fst_excluded_cards", i1 false, i1 false}
!17 = !{!"../drivers/net/wan/farsync.c", i32 85, i32 1}
!18 = !{ptr @__UNIQUE_ID_fst_excluded_cardstype346, !17, !"__UNIQUE_ID_fst_excluded_cardstype346", i1 false, i1 false}
!19 = !{ptr @__param_fst_excluded_list, !20, !"__param_fst_excluded_list", i1 false, i1 false}
!20 = !{!"../drivers/net/wan/farsync.c", i32 86, i32 1}
!21 = !{ptr @__UNIQUE_ID_fst_excluded_listtype347, !20, !"__UNIQUE_ID_fst_excluded_listtype347", i1 false, i1 false}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wan/farsync.c", i32 2589, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @fst_cleanup_module._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @fst_cleanup_module._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_farsync__348_2593_fst_init6, !29, !"__initcall__kmod_farsync__348_2593_fst_init6", i1 false, i1 false}
!29 = !{!"../drivers/net/wan/farsync.c", i32 2593, i32 1}
!30 = !{ptr @__exitcall_fst_cleanup_module, !31, !"__exitcall_fst_cleanup_module", i1 false, i1 false}
!31 = !{!"../drivers/net/wan/farsync.c", i32 2594, i32 1}
!32 = !{ptr @fst_excluded_cards, !33, !"fst_excluded_cards", i1 false, i1 false}
!33 = !{!"../drivers/net/wan/farsync.c", i32 79, i32 12}
!34 = !{ptr @__param_str_fst_txq_low, !8, !"__param_str_fst_txq_low", i1 false, i1 false}
!35 = !{ptr @fst_txq_low, !36, !"fst_txq_low", i1 false, i1 false}
!36 = !{!"../drivers/net/wan/farsync.c", i32 76, i32 12}
!37 = !{ptr @__param_str_fst_txq_high, !11, !"__param_str_fst_txq_high", i1 false, i1 false}
!38 = !{ptr @fst_txq_high, !39, !"fst_txq_high", i1 false, i1 false}
!39 = !{!"../drivers/net/wan/farsync.c", i32 77, i32 12}
!40 = !{ptr @__param_str_fst_max_reads, !14, !"__param_str_fst_max_reads", i1 false, i1 false}
!41 = !{ptr @fst_max_reads, !42, !"fst_max_reads", i1 false, i1 false}
!42 = !{!"../drivers/net/wan/farsync.c", i32 78, i32 12}
!43 = !{ptr @__param_str_fst_excluded_cards, !17, !"__param_str_fst_excluded_cards", i1 false, i1 false}
!44 = !{ptr @__param_str_fst_excluded_list, !20, !"__param_str_fst_excluded_list", i1 false, i1 false}
!45 = !{ptr @__param_arr_fst_excluded_list, !20, !"__param_arr_fst_excluded_list", i1 false, i1 false}
!46 = !{ptr @fst_excluded_list, !47, !"fst_excluded_list", i1 false, i1 false}
!47 = !{!"../drivers/net/wan/farsync.c", i32 80, i32 12}
!48 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wan/farsync.c", i32 2570, i32 11}
!50 = !{ptr @fst_driver, !51, !"fst_driver", i1 false, i1 false}
!51 = !{!"../drivers/net/wan/farsync.c", i32 2569, i32 26}
!52 = !{ptr @fst_pci_dev_id, !53, !"fst_pci_dev_id", i1 false, i1 false}
!53 = !{!"../drivers/net/wan/farsync.c", i32 526, i32 35}
!54 = !{ptr @fst_add_one.no_of_cards_added, !55, !"no_of_cards_added", i1 false, i1 false}
!55 = !{!"../drivers/net/wan/farsync.c", i32 2334, i32 13}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/net/wan/farsync.c", i32 2339, i32 2}
!58 = !{ptr @.str.4, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.5, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @fst_add_one._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @fst_add_one._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.7, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wan/farsync.c", i32 2354, i32 5}
!64 = !{ptr @fst_add_one._entry.6, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @fst_add_one._entry_ptr.8, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.10, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wan/farsync.c", i32 2369, i32 3}
!68 = !{ptr @fst_add_one._entry.9, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @fst_add_one._entry_ptr.11, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wan/farsync.c", i32 2373, i32 34}
!72 = !{ptr @.str.14, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wan/farsync.c", i32 2375, i32 3}
!74 = !{ptr @fst_add_one._entry.13, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @fst_add_one._entry_ptr.15, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wan/farsync.c", i32 2385, i32 3}
!78 = !{ptr @fst_add_one._entry.16, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @fst_add_one._entry_ptr.18, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wan/farsync.c", i32 2391, i32 3}
!82 = !{ptr @fst_add_one._entry.19, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @fst_add_one._entry_ptr.21, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wan/farsync.c", i32 2398, i32 52}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wan/farsync.c", i32 2399, i32 3}
!88 = !{ptr @fst_add_one._entry.23, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @fst_add_one._entry_ptr.25, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @fst_add_one.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/net/wan/farsync.c", i32 2418, i32 2}
!92 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wan/farsync.c", i32 2427, i32 4}
!95 = !{ptr @fst_add_one._entry.27, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @fst_add_one._entry_ptr.29, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wan/farsync.c", i32 2476, i32 3}
!99 = !{ptr @fst_add_one._entry.30, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @fst_add_one._entry_ptr.32, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wan/farsync.c", i32 2492, i32 4}
!103 = !{ptr @fst_add_one._entry.33, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @fst_add_one._entry_ptr.35, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wan/farsync.c", i32 2500, i32 4}
!107 = !{ptr @fst_add_one._entry.36, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @fst_add_one._entry_ptr.38, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wan/farsync.c", i32 1427, i32 3}
!111 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @fst_intr._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @fst_intr._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wan/farsync.c", i32 1547, i32 4}
!116 = !{ptr @fst_intr._entry.41, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @fst_intr._entry_ptr.43, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wan/farsync.c", i32 571, i32 8}
!120 = !{ptr @fst_work_q_lock, !119, !"fst_work_q_lock", i1 false, i1 false}
!121 = !{ptr @fst_work_intq, !122, !"fst_work_intq", i1 false, i1 false}
!122 = !{!"../drivers/net/wan/farsync.c", i32 573, i32 12}
!123 = !{ptr @fst_int_task, !124, !"fst_int_task", i1 false, i1 false}
!124 = !{!"../drivers/net/wan/farsync.c", i32 568, i32 8}
!125 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wan/farsync.c", i32 1194, i32 3}
!127 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @fst_intr_rx._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @fst_intr_rx._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @fst_ops, !131, !"fst_ops", i1 false, i1 false}
!131 = !{!"../drivers/net/wan/farsync.c", i32 2319, i32 36}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wan/farsync.c", i32 925, i32 4}
!134 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @fst_issue_cmd._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @fst_issue_cmd._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = distinct !{null, !138, !"__already_done", i1 false, i1 false}
!138 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!139 = distinct !{null, !138, !"<string literal>", i1 false, i1 false}
!140 = distinct !{null, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!142 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!144 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wan/farsync.c", i32 2008, i32 4}
!146 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @fst_siocdevprivate._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @fst_siocdevprivate._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wan/farsync.c", i32 1569, i32 3}
!151 = !{ptr @.str.55, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @check_started_ok._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @check_started_ok._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wan/farsync.c", i32 1575, i32 3}
!156 = !{ptr @check_started_ok._entry.56, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @check_started_ok._entry_ptr.58, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wan/farsync.c", i32 1584, i32 3}
!160 = !{ptr @check_started_ok._entry.59, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @check_started_ok._entry_ptr.61, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wan/farsync.c", i32 1588, i32 3}
!164 = !{ptr @check_started_ok._entry.62, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @check_started_ok._entry_ptr.64, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wan/farsync.c", i32 1598, i32 3}
!168 = !{ptr @check_started_ok._entry.65, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @check_started_ok._entry_ptr.67, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @fst_work_txq, !171, !"fst_work_txq", i1 false, i1 false}
!171 = !{!"../drivers/net/wan/farsync.c", i32 572, i32 12}
!172 = !{ptr @fst_tx_task, !173, !"fst_tx_task", i1 false, i1 false}
!173 = !{!"../drivers/net/wan/farsync.c", i32 567, i32 8}
!174 = !{ptr @fst_card_array, !175, !"fst_card_array", i1 false, i1 false}
!175 = !{!"../drivers/net/wan/farsync.c", i32 570, i32 30}
!176 = !{ptr @.str.68, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wan/farsync.c", i32 2304, i32 4}
!178 = !{ptr @.str.69, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @fst_init_card._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @fst_init_card._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.71, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wan/farsync.c", i32 2312, i32 2}
!183 = !{ptr @fst_init_card._entry.70, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @fst_init_card._entry_ptr.72, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.73, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wan/farsync.c", i32 2282, i32 2}
!187 = !{ptr @.str.74, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wan/farsync.c", i32 2283, i32 2}
!189 = !{ptr @.str.75, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wan/farsync.c", i32 2284, i32 2}
!191 = !{ptr @.str.76, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wan/farsync.c", i32 2285, i32 2}
!193 = !{ptr @.str.77, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wan/farsync.c", i32 2286, i32 2}
!195 = !{ptr @.str.78, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wan/farsync.c", i32 2287, i32 2}
!197 = !{ptr @.str.79, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wan/farsync.c", i32 2288, i32 2}
!199 = !{ptr @type_strings, !200, !"type_strings", i1 false, i1 false}
!200 = !{!"../drivers/net/wan/farsync.c", i32 2281, i32 14}
!201 = !{!"sp"}
!202 = !{i32 1, !"wchar_size", i32 2}
!203 = !{i32 1, !"min_enum_size", i32 4}
!204 = !{i32 8, !"branch-target-enforcement", i32 0}
!205 = !{i32 8, !"sign-return-address", i32 0}
!206 = !{i32 8, !"sign-return-address-all", i32 0}
!207 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!208 = !{i32 7, !"uwtable", i32 1}
!209 = !{i32 7, !"frame-pointer", i32 2}
!210 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!211 = !{!"branch_weights", i32 2000, i32 1}
!212 = !{i64 2156362460}
!213 = !{i64 5048882}
!214 = !{i64 2156362969}
!215 = !{i64 2156363471}
!216 = !{i64 5048262}
!217 = !{i64 5049080}
!218 = !{i64 2156357432}
!219 = !{i64 2156357698}
!220 = !{i64 2156463422}
!221 = !{i64 2156463860}
!222 = !{i64 5048685}
!223 = !{i64 5049300}
!224 = !{i64 2156464687}
!225 = !{i64 2156466576}
!226 = !{i64 2156368269}
!227 = !{i64 2156468600}
!228 = !{i64 2156365895}
!229 = !{i64 2156469634}
!230 = !{i64 2156471899}
!231 = !{i64 2156472668}
!232 = !{i64 2156473187}
!233 = !{i64 2156473738}
!234 = !{i64 2156402166}
!235 = !{i64 2156402705}
!236 = !{i64 2156403256}
!237 = !{i64 2156417361}
!238 = !{i64 2156487985}
!239 = !{!"auto-init"}
!240 = !{i64 2156350070}
!241 = !{i64 2156350575}
!242 = !{i64 2156351080}
!243 = !{i64 2156351585}
!244 = !{i64 2156354345}
!245 = !{i64 2156354624}
!246 = !{i64 2156355161}
!247 = !{i64 2156459272}
!248 = !{i64 2156435975}
!249 = !{i64 5048462}
!250 = !{i64 2156438705}
!251 = !{i64 2156441062}
!252 = !{i64 2156428641}
!253 = !{i64 2156431227}
!254 = !{i64 2156435293}
!255 = !{i64 2156445229}
!256 = !{i64 2156446186}
!257 = !{i64 2156374110}
!258 = !{i64 2156374598}
!259 = !{i64 2156375086}
!260 = !{i64 2156375582}
!261 = !{i64 2156376051}
!262 = !{i64 2156454001}
!263 = !{i64 2156455258}
!264 = !{i64 2156456592}
!265 = !{i64 2156380128}
!266 = !{i64 2156380616}
!267 = !{i64 2156381104}
!268 = !{i64 2156381600}
!269 = !{i64 2156382069}
!270 = !{i64 2156395474}
!271 = !{i64 2156396234}
!272 = !{i64 2156396860}
!273 = !{i64 2156397597}
!274 = !{i64 2156398313}
!275 = !{i64 2156399480}
!276 = !{i64 2156400240}
!277 = !{i64 2156400827}
!278 = !{i64 2156401523}
!279 = !{i64 2156391852}
!280 = !{i64 2156392312}
!281 = !{i64 2156556301}
!282 = !{i64 2156558490}
!283 = !{i64 2156558798}
!284 = !{i64 2156393700}
!285 = !{i64 2156394160}
!286 = !{i64 2156544609}
!287 = !{i64 2156545148}
!288 = !{i64 2153946047, i64 2153946072}
!289 = !{i64 2153945366, i64 2153945391}
!290 = !{i64 6440921}
!291 = !{i64 6441118}
!292 = !{i64 2153926351}
!293 = !{i64 2156537795}
!294 = !{i64 2156538518}
!295 = !{i64 2156539241}
!296 = !{i64 2156539964}
!297 = !{i64 2156540687}
!298 = !{i64 2156541410}
!299 = !{i64 2156542138}
!300 = !{i64 2156542728}
!301 = !{i64 2156543333}
!302 = !{i64 2156355807}
!303 = !{i64 2156356077}
!304 = !{i64 2156356582}
!305 = !{i64 2156357039}
!306 = !{i64 2156488961}
!307 = !{i64 2156491703}
!308 = !{i64 2156492595}
!309 = !{i64 2156494784}
!310 = !{i64 2156499141}
!311 = !{i64 2156502136}
!312 = !{i64 2156547846}
!313 = !{i64 2156515428}
!314 = !{i64 2156515967}
!315 = !{i64 2156516890}
!316 = !{i64 2156517421}
!317 = !{i64 2156518272}
!318 = !{i64 2156519123}
!319 = !{i64 2156519992}
!320 = !{i64 2156520843}
!321 = !{i64 2156521676}
!322 = !{i64 2156522569}
!323 = !{i64 2156523460}
!324 = !{i64 2156523959}
!325 = !{i64 2156524454}
!326 = !{i64 2156524957}
!327 = !{i64 2156525460}
!328 = !{i64 2156525951}
!329 = !{i64 2156526466}
!330 = !{i64 2156526969}
!331 = !{i64 2156527468}
!332 = !{i64 2156527955}
!333 = !{i64 2156528470}
!334 = !{i64 2156528985}
!335 = !{i64 2156529500}
!336 = !{i64 2156530015}
!337 = !{i64 2156530538}
!338 = !{i64 2156531037}
!339 = !{i64 2156531984}
!340 = !{i64 2156532925}
!341 = !{i64 2156533872}
!342 = !{i64 2156534789}
!343 = !{i64 2156535718}
!344 = !{i64 2156536233}
!345 = !{i64 2156536772}
!346 = !{i64 2156537323}
!347 = !{i64 2156502702}
!348 = !{i64 2156503292}
!349 = !{i64 2156504033}
!350 = !{i64 2156504779}
!351 = !{i64 2156505370}
!352 = !{i64 2156505955}
!353 = !{i64 2156506547}
!354 = !{i64 2156507124}
!355 = !{i64 2156507725}
!356 = !{i64 2156508323}
!357 = !{i64 2156508945}
!358 = !{i64 2156509544}
!359 = !{i64 2156510114}
!360 = !{i64 2156510713}
!361 = !{i64 2156511326}
!362 = !{i64 2156511939}
!363 = !{i64 2156512552}
!364 = !{i64 2156514285}
!365 = !{i64 2156383510}
!366 = !{i64 2156386455}
!367 = !{i64 2156390474}
