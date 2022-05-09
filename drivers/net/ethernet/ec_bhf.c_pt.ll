; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ec_bhf.c_pt.bc'
source_filename = "../drivers/net/ethernet/ec_bhf.c"
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.118, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.118 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rx_desc = type { %struct.rx_header, [2024 x i8] }
%struct.rx_header = type { i32, i32, i16, i16, i32, [8 x i8] }
%struct.tx_desc = type { %struct.tx_header, [2024 x i8] }
%struct.tx_header = type { i16, i8, i8, i32, [8 x i8] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ec_bhf_priv = type { ptr, ptr, ptr, ptr, %struct.hrtimer, i32, i32, ptr, ptr, ptr, ptr, %struct.bhf_dma, ptr, i32, i32, %struct.bhf_dma, ptr, i32, i32, i64, i64 }
%struct.bhf_dma = type { ptr, i32, i32, ptr, i32, i32 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }

@__initcall__kmod_ec_bhf__343_590_pci_driver_init6 = internal global ptr @pci_driver_init, section ".initcall6.init", align 4
@pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ids, ptr @ec_bhf_probe, ptr @ec_bhf_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pci_driver_exit = internal global ptr @pci_driver_exit, section ".exitcall.exit", align 4
@__param_str_polling_frequency = internal constant [25 x i8] c"ec_bhf.polling_frequency\00", align 1
@param_ops_long = external dso_local constant %struct.kernel_param_ops, align 4
@polling_frequency = internal global { i32, [28 x i8] } { i32 20000, [28 x i8] zeroinitializer }, align 32
@__param_polling_frequency = internal constant %struct.kernel_param { ptr @__param_str_polling_frequency, ptr null, ptr @param_ops_long, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @polling_frequency } }, section "__param", align 4
@__UNIQUE_ID_polling_frequencytype344 = internal constant [39 x i8] c"ec_bhf.parmtype=polling_frequency:long\00", section ".modinfo", align 1
@__UNIQUE_ID_polling_frequency345 = internal constant [60 x i8] c"ec_bhf.parm=polling_frequency:Polling timer frequency in ns\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [40 x i8] c"ec_bhf.file=drivers/net/ethernet/ec_bhf\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [19 x i8] c"ec_bhf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author348 = internal constant [56 x i8] c"ec_bhf.author=Dariusz Marcinkiewicz <reksio@newterm.pl>\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ec_bhf\00", [25 x i8] zeroinitializer }, align 32
@ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5612, i32 20480, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ec_bhf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Required dma mask not supported, failed to initialize device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ec_bhf_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/ethernet/ec_bhf.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ec_bhf_probe._entry_ptr = internal global ptr @ec_bhf_probe._entry, section ".printk_index", align 4
@ec_bhf_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to request pci memory regions\0A\00", [58 x i8] zeroinitializer }, align 32
@ec_bhf_probe._entry_ptr.8 = internal global ptr @ec_bhf_probe._entry.6, section ".printk_index", align 4
@ec_bhf_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 507, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to map pci card memory bar 0\00", [60 x i8] zeroinitializer }, align 32
@ec_bhf_probe._entry_ptr.11 = internal global ptr @ec_bhf_probe._entry.9, section ".printk_index", align 4
@ec_bhf_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 514, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to map pci card memory bar 2\00", [60 x i8] zeroinitializer }, align 32
@ec_bhf_probe._entry_ptr.14 = internal global ptr @ec_bhf_probe._entry.12, section ".printk_index", align 4
@ec_bhf_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ec_bhf_open, ptr @ec_bhf_stop, ptr @ec_bhf_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ec_bhf_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ec_bhf_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate rx buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ec_bhf_open\00", [20 x i8] zeroinitializer }, align 32
@ec_bhf_open._entry_ptr = internal global ptr @ec_bhf_open._entry, section ".printk_index", align 4
@ec_bhf_open._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate tx buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@ec_bhf_open._entry_ptr.19 = internal global ptr @ec_bhf_open._entry.17, section ".printk_index", align 4
@ec_bhf_alloc_dma_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 344, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to allocate buffer\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ec_bhf_alloc_dma_mem\00", [43 x i8] zeroinitializer }, align 32
@ec_bhf_alloc_dma_mem._entry_ptr = internal global ptr @ec_bhf_alloc_dma_mem._entry, section ".printk_index", align 4
@ec_bhf_process_rx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ec_bhf_process_rx = private unnamed_addr constant [18 x i8] c"ec_bhf_process_rx\00", align 1
@ec_bhf_process_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.ec_bhf_process_rx, ptr @.str.3, i32 225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Couldn't allocate a skb_buff for a packet of size %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ec_bhf_process_rx._entry_ptr = internal global ptr @ec_bhf_process_rx._entry, section ".printk_index", align 4
@ec_bhf_setup_offsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"EtherCAT master with DMA block not found\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ec_bhf_setup_offsets\00", [43 x i8] zeroinitializer }, align 32
@ec_bhf_setup_offsets._entry_ptr = internal global ptr @ec_bhf_setup_offsets._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"pci_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 584, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"polling_frequency\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 110, i32 13 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 590, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [4 x i8] c"ids\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 67, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 494, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 501, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 507, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 514, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"ec_bhf_netdev_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 468, i32 36 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 403, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 411, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 344, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 223, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [33 x i8] c"../drivers/net/ethernet/ec_bhf.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 265, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__UNIQUE_ID_polling_frequency345, ptr @__UNIQUE_ID_polling_frequencytype344, ptr @__exitcall_pci_driver_exit, ptr @__initcall__kmod_ec_bhf__343_590_pci_driver_init6, ptr @__param_polling_frequency, ptr @ec_bhf_alloc_dma_mem._entry, ptr @ec_bhf_alloc_dma_mem._entry_ptr, ptr @ec_bhf_open._entry, ptr @ec_bhf_open._entry.17, ptr @ec_bhf_open._entry_ptr, ptr @ec_bhf_open._entry_ptr.19, ptr @ec_bhf_probe._entry, ptr @ec_bhf_probe._entry.12, ptr @ec_bhf_probe._entry.6, ptr @ec_bhf_probe._entry.9, ptr @ec_bhf_probe._entry_ptr, ptr @ec_bhf_probe._entry_ptr.11, ptr @ec_bhf_probe._entry_ptr.14, ptr @ec_bhf_probe._entry_ptr.8, ptr @ec_bhf_process_rx._entry, ptr @ec_bhf_process_rx._entry_ptr, ptr @ec_bhf_setup_offsets._entry, ptr @ec_bhf_setup_offsets._entry_ptr, ptr @pci_driver_exit, ptr @pci_driver, ptr @polling_frequency, ptr @.str, ptr @ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @ec_bhf_netdev_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @ec_bhf_process_rx._rs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polling_frequency to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_bhf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_bhf_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_bhf_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_bhf_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_bhf_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_bhf_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_bhf_open._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_bhf_alloc_dma_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_bhf_process_rx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_bhf_process_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_bhf_setup_offsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec_bhf_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #8
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %dev) #8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %err_disable_dev

if.end6:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  %call7 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %err_disable_dev

if.end14:                                         ; preds = %if.end6
  %call15 = tail call ptr @pci_iomap(ptr noundef %dev, i32 noundef 0, i32 noundef 0) #8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #11
  br label %err_release_regions

if.end22:                                         ; preds = %if.end14
  %call23 = tail call ptr @pci_iomap(ptr noundef %dev, i32 noundef 2, i32 noundef 0) #8
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #11
  br label %err_unmap

if.end30:                                         ; preds = %if.end22
  %call31 = tail call ptr @alloc_etherdev_mqs(i32 noundef 176, i32 noundef 1, i32 noundef 1) #8
  %cmp = icmp eq ptr %call31, null
  br i1 %cmp, label %if.end30.err_unmap_dma_io_crit_edge, label %if.end33

if.end30.err_unmap_dma_io_crit_edge:              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap_dma_io

if.end33:                                         ; preds = %if.end30
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call31, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call31, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %parent, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call31, i32 0, i32 23
  %3 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %features, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %call31, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %or = or i32 %5, 128
  store i32 %or, ptr %flags, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call31, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ec_bhf_netdev_ops, ptr %netdev_ops, align 8
  %add.ptr.i = getelementptr i8, ptr %call31, i32 2304
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call31, ptr %add.ptr.i, align 8
  %io38 = getelementptr i8, ptr %call31, i32 2312
  %8 = ptrtoint ptr %io38 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call15, ptr %io38, align 8
  %dma_io39 = getelementptr i8, ptr %call31, i32 2316
  %9 = ptrtoint ptr %dma_io39 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call23, ptr %dma_io39, align 4
  %dev40 = getelementptr i8, ptr %call31, i32 2308
  %10 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev40, align 4
  %add.ptr.i97 = getelementptr i8, ptr %call15, i32 4
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i97) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %conv.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp70.not.i = icmp eq i8 %11, 0
  br i1 %cmp70.not.i, label %if.end33.for.end.i_crit_edge, label %if.end33.for.body.i_crit_edge

if.end33.for.body.i_crit_edge:                    ; preds = %if.end33
  br label %for.body.i

if.end33.for.end.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end33.for.body.i_crit_edge
  %i.071.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end33.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %io38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io38, align 8
  %mul.i = shl i32 %i.071.i, 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 %mul.i
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp2(i16 5120, i16 %14)
  %cmp9.i = icmp eq i16 %14, 5120
  br i1 %cmp9.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.071.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.ec_bhf_setup_offsets.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.ec_bhf_setup_offsets.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ec_bhf_setup_offsets.exit.thread

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end33.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end33.for.end.i_crit_edge ], [ %i.071.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %conv.i)
  %cmp11.i = icmp eq i32 %i.0.lcssa.i, %conv.i
  br i1 %cmp11.i, label %for.end.i.ec_bhf_setup_offsets.exit.thread_crit_edge, label %if.end44

for.end.i.ec_bhf_setup_offsets.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ec_bhf_setup_offsets.exit.thread

ec_bhf_setup_offsets.exit.thread:                 ; preds = %for.end.i.ec_bhf_setup_offsets.exit.thread_crit_edge, %for.inc.i.ec_bhf_setup_offsets.exit.thread_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #11
  br label %err_free_net_dev

if.end44:                                         ; preds = %for.end.i
  %15 = ptrtoint ptr %io38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io38, align 8
  %mul16.i = shl i32 %i.0.lcssa.i, 4
  %add.ptr17.i = getelementptr i8, ptr %16, i32 %mul16.i
  %add.ptr18.i = getelementptr i8, ptr %add.ptr17.i, i32 4
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %conv20.i = zext i8 %17 to i32
  %tx_dma_chan.i = getelementptr i8, ptr %call31, i32 2368
  %18 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv20.i, ptr %tx_dma_chan.i, align 8
  %add.ptr21.i = getelementptr i8, ptr %add.ptr17.i, i32 5
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr21.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %conv23.i = zext i8 %19 to i32
  %rx_dma_chan.i = getelementptr i8, ptr %call31, i32 2372
  %20 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv23.i, ptr %rx_dma_chan.i, align 4
  %21 = ptrtoint ptr %io38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io38, align 8
  %add.ptr25.i = getelementptr i8, ptr %add.ptr17.i, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #8, !srcloc !83
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %add.ptr27.i = getelementptr i8, ptr %22, i32 %24
  %ec_io.i = getelementptr i8, ptr %call31, i32 2376
  %25 = ptrtoint ptr %ec_io.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr27.i, ptr %ec_io.i, align 8
  %add.ptr30.i = getelementptr i8, ptr %add.ptr27.i, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #8, !srcloc !83
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %add.ptr32.i = getelementptr i8, ptr %add.ptr27.i, i32 %27
  %mii_io.i = getelementptr i8, ptr %call31, i32 2384
  %28 = ptrtoint ptr %mii_io.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr32.i, ptr %mii_io.i, align 8
  %29 = ptrtoint ptr %ec_io.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ec_io.i, align 8
  %add.ptr35.i = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #8, !srcloc !83
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %add.ptr37.i = getelementptr i8, ptr %30, i32 %32
  %fifo_io.i = getelementptr i8, ptr %call31, i32 2380
  %33 = ptrtoint ptr %fifo_io.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr37.i, ptr %fifo_io.i, align 4
  %34 = ptrtoint ptr %ec_io.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ec_io.i, align 8
  %add.ptr40.i = getelementptr i8, ptr %35, i32 12
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #8, !srcloc !83
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %add.ptr42.i = getelementptr i8, ptr %35, i32 %37
  %mac_io.i = getelementptr i8, ptr %call31, i32 2388
  %38 = ptrtoint ptr %mac_io.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr42.i, ptr %mac_io.i, align 4
  %39 = ptrtoint ptr %mii_io.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mii_io.i, align 8
  %add.ptr = getelementptr i8, ptr %40, i32 8
  call void @mmiocpy(ptr noundef nonnull %addr, ptr noundef %add.ptr, i32 noundef 6) #8
  call void @dev_addr_mod(ptr noundef nonnull %call31, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #8
  %call46 = call i32 @register_netdev(ptr noundef nonnull %call31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end44.err_free_net_dev_crit_edge, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44.err_free_net_dev_crit_edge:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_net_dev

err_free_net_dev:                                 ; preds = %if.end44.err_free_net_dev_crit_edge, %ec_bhf_setup_offsets.exit.thread
  %err.0 = phi i32 [ %call46, %if.end44.err_free_net_dev_crit_edge ], [ -19, %ec_bhf_setup_offsets.exit.thread ]
  call void @free_netdev(ptr noundef nonnull %call31) #8
  br label %err_unmap_dma_io

err_unmap_dma_io:                                 ; preds = %err_free_net_dev, %if.end30.err_unmap_dma_io_crit_edge
  %err.1 = phi i32 [ %err.0, %err_free_net_dev ], [ -12, %if.end30.err_unmap_dma_io_crit_edge ]
  call void @pci_iounmap(ptr noundef %dev, ptr noundef nonnull %call23) #8
  br label %err_unmap

err_unmap:                                        ; preds = %err_unmap_dma_io, %do.end28
  %err.2 = phi i32 [ %err.1, %err_unmap_dma_io ], [ -5, %do.end28 ]
  call void @pci_iounmap(ptr noundef %dev, ptr noundef nonnull %call15) #8
  br label %err_release_regions

err_release_regions:                              ; preds = %err_unmap, %do.end20
  %err.3 = phi i32 [ %err.2, %err_unmap ], [ -5, %do.end20 ]
  call void @pci_release_regions(ptr noundef %dev) #8
  br label %err_disable_dev

err_disable_dev:                                  ; preds = %err_release_regions, %do.end12, %do.end
  %err.4 = phi i32 [ %call.i, %do.end ], [ %call7, %do.end12 ], [ %err.3, %err_release_regions ]
  call void @pci_clear_master(ptr noundef %dev) #8
  call void @pci_disable_device(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %err_disable_dev, %if.end44.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_disable_dev ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ec_bhf_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #8
  %dma_io = getelementptr i8, ptr %1, i32 2316
  %2 = ptrtoint ptr %dma_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_io, align 4
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %3) #8
  %io = getelementptr i8, ptr %1, i32 2312
  %4 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io, align 8
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %5) #8
  tail call void @free_netdev(ptr noundef %1) #8
  tail call void @pci_release_regions(ptr noundef %dev) #8
  tail call void @pci_clear_master(ptr noundef %dev) #8
  tail call void @pci_disable_device(ptr noundef %dev) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec_bhf_open(ptr noundef %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %dev1 = getelementptr i8, ptr %net_dev, i32 2308
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call fastcc void @ec_bhf_reset(ptr noundef %add.ptr.i)
  %rx_buf = getelementptr i8, ptr %net_dev, i32 2392
  %rx_dma_chan = getelementptr i8, ptr %net_dev, i32 2372
  %2 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_dma_chan, align 4
  %call3 = tail call fastcc i32 @ec_bhf_alloc_dma_mem(ptr noundef %add.ptr.i, ptr noundef %rx_buf, i32 noundef %3, i32 noundef 131072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i = getelementptr i8, ptr %net_dev, i32 2396
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %div26.i = lshr i32 %5, 11
  %rx_dcount.i = getelementptr i8, ptr %net_dev, i32 2424
  %6 = ptrtoint ptr %rx_dcount.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div26.i, ptr %rx_dcount.i, align 8
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buf, align 8
  %rx_descs.i = getelementptr i8, ptr %net_dev, i32 2416
  %9 = ptrtoint ptr %rx_descs.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %rx_descs.i, align 8
  %rx_dnext.i = getelementptr i8, ptr %net_dev, i32 2420
  %10 = ptrtoint ptr %rx_dnext.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rx_dnext.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %cmp27.not.i = icmp ult i32 %5, 2048
  br i1 %cmp27.not.i, label %if.end.ec_bhf_setup_rx_descs.exit_crit_edge, label %for.body.lr.ph.i

if.end.ec_bhf_setup_rx_descs.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ec_bhf_setup_rx_descs.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %fifo_io.i.i = getelementptr i8, ptr %net_dev, i32 2380
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %11 = phi i32 [ %div26.i, %for.body.lr.ph.i ], [ %25, %if.end.i.for.body.i_crit_edge ]
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %rx_descs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_descs.i, align 8
  %arrayidx.i = getelementptr %struct.rx_desc, ptr %13, i32 %i.028.i
  %sub.i = add nsw i32 %11, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.028.i, i32 %sub.i)
  %cmp5.not.i = icmp eq i32 %i.028.i, %sub.i
  br i1 %cmp5.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i40 = getelementptr %struct.rx_desc, ptr %arrayidx.i, i32 1
  %14 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_buf, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i40 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %next.0.i = phi i32 [ %sub.ptr.sub.i, %if.then.i ], [ 0, %for.body.i.if.end.i_crit_edge ]
  %or.i = or i32 %next.0.i, -2147483648
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %arrayidx.i, align 1
  %recv.i = getelementptr inbounds %struct.rx_header, ptr %arrayidx.i, i32 0, i32 1
  %18 = ptrtoint ptr %recv.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %recv.i, align 1
  %19 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_buf, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %or.i.i = or i32 %sub.ptr.sub.i.i, -2147483648
  %21 = ptrtoint ptr %fifo_io.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fifo_io.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #8, !srcloc !86
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %24 = ptrtoint ptr %rx_dcount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_dcount.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %25
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.ec_bhf_setup_rx_descs.exit_crit_edge

if.end.i.ec_bhf_setup_rx_descs.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ec_bhf_setup_rx_descs.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ec_bhf_setup_rx_descs.exit:                       ; preds = %if.end.i.ec_bhf_setup_rx_descs.exit_crit_edge, %if.end.ec_bhf_setup_rx_descs.exit_crit_edge
  %tx_buf = getelementptr i8, ptr %net_dev, i32 2428
  %tx_dma_chan = getelementptr i8, ptr %net_dev, i32 2368
  %26 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_dma_chan, align 8
  %call4 = tail call fastcc i32 @ec_bhf_alloc_dma_mem(ptr noundef %add.ptr.i, ptr noundef %tx_buf, i32 noundef %27, i32 noundef 130560)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %ec_bhf_setup_rx_descs.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.18) #11
  %alloc_len = getelementptr i8, ptr %net_dev, i32 2408
  %28 = ptrtoint ptr %alloc_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %alloc_len, align 8
  %alloc = getelementptr i8, ptr %net_dev, i32 2404
  %30 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %alloc, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %29, ptr noundef %31, i32 noundef %29, i32 noundef 0) #8
  br label %cleanup

if.end10:                                         ; preds = %ec_bhf_setup_rx_descs.exit
  %mii_io = getelementptr i8, ptr %net_dev, i32 2384
  %32 = ptrtoint ptr %mii_io to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mii_io, align 8
  %add.ptr = getelementptr i8, ptr %33, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #8, !srcloc !88
  %len.i41 = getelementptr i8, ptr %net_dev, i32 2432
  %34 = ptrtoint ptr %len.i41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i41, align 4
  %div.i = udiv i32 %35, 2040
  %tx_dcount.i = getelementptr i8, ptr %net_dev, i32 2456
  %36 = ptrtoint ptr %tx_dcount.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div.i, ptr %tx_dcount.i, align 8
  %37 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_buf, align 4
  %tx_descs.i = getelementptr i8, ptr %net_dev, i32 2452
  %39 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %tx_descs.i, align 4
  %tx_dnext.i = getelementptr i8, ptr %net_dev, i32 2460
  %40 = ptrtoint ptr %tx_dnext.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %tx_dnext.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2040, i32 %35)
  %41 = icmp ult i32 %35, 2040
  br i1 %41, label %if.end10.ec_bhf_setup_tx_descs.exit_crit_edge, label %if.end10.for.body.i44_crit_edge

if.end10.for.body.i44_crit_edge:                  ; preds = %if.end10
  br label %for.body.i44

if.end10.ec_bhf_setup_tx_descs.exit_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %ec_bhf_setup_tx_descs.exit

for.body.i44:                                     ; preds = %for.body.i44.for.body.i44_crit_edge, %if.end10.for.body.i44_crit_edge
  %i.013.i = phi i32 [ %inc.i42, %for.body.i44.for.body.i44_crit_edge ], [ 0, %if.end10.for.body.i44_crit_edge ]
  %42 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_descs.i, align 4
  %sent.i = getelementptr %struct.tx_desc, ptr %43, i32 %i.013.i, i32 0, i32 3
  %44 = ptrtoint ptr %sent.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 16777216, ptr %sent.i, align 1
  %inc.i42 = add nuw nsw i32 %i.013.i, 1
  %45 = ptrtoint ptr %tx_dcount.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_dcount.i, align 8
  %cmp.i43 = icmp slt i32 %inc.i42, %46
  br i1 %cmp.i43, label %for.body.i44.for.body.i44_crit_edge, label %for.body.i44.ec_bhf_setup_tx_descs.exit_crit_edge

for.body.i44.ec_bhf_setup_tx_descs.exit_crit_edge: ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %ec_bhf_setup_tx_descs.exit

for.body.i44.for.body.i44_crit_edge:              ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i44

ec_bhf_setup_tx_descs.exit:                       ; preds = %for.body.i44.ec_bhf_setup_tx_descs.exit_crit_edge, %if.end10.ec_bhf_setup_tx_descs.exit_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 103
  %47 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %48, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %hrtimer = getelementptr i8, ptr %net_dev, i32 2320
  tail call void @hrtimer_init(ptr noundef %hrtimer, i32 noundef 1, i32 noundef 1) #8
  %function = getelementptr i8, ptr %net_dev, i32 2352
  %49 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @ec_bhf_timer_fun, ptr %function, align 8
  %50 = load i32, ptr @polling_frequency, align 4
  %conv = sext i32 %50 to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %hrtimer, i64 noundef %conv, i64 noundef 0, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %ec_bhf_setup_tx_descs.exit, %do.end9, %do.end
  %retval.0 = phi i32 [ 0, %ec_bhf_setup_tx_descs.exit ], [ %call3, %do.end ], [ %call4, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec_bhf_stop(ptr noundef %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %dev1 = getelementptr i8, ptr %net_dev, i32 2308
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %hrtimer = getelementptr i8, ptr %net_dev, i32 2320
  %call3 = tail call i32 @hrtimer_cancel(ptr noundef %hrtimer) #8
  tail call fastcc void @ec_bhf_reset(ptr noundef %add.ptr.i)
  tail call fastcc void @local_bh_disable() #8
  %2 = tail call i32 @llvm.read_register.i32(metadata !69) #8
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #8
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not.i = icmp eq i32 %7, 0
  br i1 %cmp13.not.i, label %entry.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #8
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 11
  %10 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %5, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %11 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #8
  %inc.i = add nuw i32 %i.014.i, 1
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %entry.netif_tx_disable.exit_crit_edge
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #8
  tail call fastcc void @local_bh_enable() #8
  %alloc_len = getelementptr i8, ptr %net_dev, i32 2444
  %14 = ptrtoint ptr %alloc_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alloc_len, align 4
  %alloc = getelementptr i8, ptr %net_dev, i32 2440
  %16 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %alloc, align 4
  %alloc_phys = getelementptr i8, ptr %net_dev, i32 2448
  %18 = ptrtoint ptr %alloc_phys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alloc_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef 0) #8
  %alloc_len6 = getelementptr i8, ptr %net_dev, i32 2408
  %20 = ptrtoint ptr %alloc_len6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %alloc_len6, align 8
  %alloc8 = getelementptr i8, ptr %net_dev, i32 2404
  %22 = ptrtoint ptr %alloc8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alloc8, align 4
  %alloc_phys10 = getelementptr i8, ptr %net_dev, i32 2412
  %24 = ptrtoint ptr %alloc_phys10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %alloc_phys10, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %21, ptr noundef %23, i32 noundef %25, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec_bhf_start_xmit(ptr noundef %skb, ptr nocapture noundef %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_descs = getelementptr i8, ptr %net_dev, i32 2452
  %0 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_descs, align 4
  %tx_dnext = getelementptr i8, ptr %net_dev, i32 2460
  %2 = ptrtoint ptr %tx_dnext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_dnext, align 4
  %arrayidx = getelementptr %struct.tx_desc, ptr %1, i32 %3
  %data = getelementptr %struct.tx_desc, ptr %1, i32 %3, i32 1
  tail call void @skb_copy_and_csum_dev(ptr noundef %skb, ptr noundef %data) #8
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1, align 4
  %6 = getelementptr inbounds i8, ptr %arrayidx, i32 3
  %7 = call ptr @memset(ptr %6, i32 0, i32 13)
  %conv = trunc i32 %5 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %arrayidx, align 1
  %port = getelementptr inbounds %struct.tx_header, ptr %arrayidx, i32 0, i32 1
  %10 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %port, align 1
  %11 = lshr i16 %8, 8
  %tx_buf.i = getelementptr i8, ptr %net_dev, i32 2428
  %12 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_buf.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %narrow.i = add nuw nsw i16 %11, 23
  %14 = and i16 %narrow.i, 248
  %and.i = zext i16 %14 to i32
  %shl.i = shl nuw i32 %and.i, 24
  %or.i = or i32 %shl.i, %sub.ptr.sub.i
  %fifo_io.i = getelementptr i8, ptr %net_dev, i32 2380
  %15 = ptrtoint ptr %fifo_io.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fifo_io.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %17) #8, !srcloc !86
  %18 = ptrtoint ptr %tx_dnext to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_dnext, align 4
  %add = add i32 %19, 1
  %tx_dcount = getelementptr i8, ptr %net_dev, i32 2456
  %20 = ptrtoint ptr %tx_dcount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_dcount, align 8
  %rem = srem i32 %add, %21
  store i32 %rem, ptr %tx_dnext, align 4
  %22 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_descs, align 4
  %sent.i = getelementptr %struct.tx_desc, ptr %23, i32 %rem, i32 0, i32 3
  %24 = ptrtoint ptr %sent.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %sent.i, align 1
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !89
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 103
  %27 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %28, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv14 = zext i32 %5 to i64
  %stat_tx_bytes = getelementptr i8, ptr %net_dev, i32 2472
  %29 = ptrtoint ptr %stat_tx_bytes to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %stat_tx_bytes, align 8
  %add15 = add i64 %30, %conv14
  store i64 %add15, ptr %stat_tx_bytes, align 8
  tail call void @consume_skb(ptr noundef %skb) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ec_bhf_get_stats(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef writeonly %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_io = getelementptr i8, ptr %net_dev, i32 2388
  %0 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_io, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %conv = zext i8 %2 to i32
  %3 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mac_io, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 2
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %conv5 = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv5, %conv
  %6 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_io, align 4
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %conv9 = zext i8 %8 to i32
  %add10 = add nuw nsw i32 %add, %conv9
  %9 = zext i32 %add10 to i64
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %10 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %rx_errors, align 8
  %11 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mac_io, align 4
  %add.ptr13 = getelementptr i8, ptr %12, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !83
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %conv15 = zext i32 %14 to i64
  %15 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv15, ptr %stats, align 8
  %16 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac_io, align 4
  %add.ptr17 = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !83
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %conv19 = zext i32 %19 to i64
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %20 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv19, ptr %tx_packets, align 8
  %21 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac_io, align 4
  %add.ptr21 = getelementptr i8, ptr %22, i32 40
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr21) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %conv23 = zext i8 %23 to i64
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %24 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv23, ptr %rx_dropped, align 8
  %stat_tx_bytes = getelementptr i8, ptr %net_dev, i32 2472
  %25 = ptrtoint ptr %stat_tx_bytes to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %stat_tx_bytes, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %27 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %tx_bytes, align 8
  %stat_rx_bytes = getelementptr i8, ptr %net_dev, i32 2464
  %28 = ptrtoint ptr %stat_rx_bytes to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %stat_rx_bytes, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %30 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %rx_bytes, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ec_bhf_reset(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_io = getelementptr inbounds %struct.ec_bhf_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_io, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 0) #8, !srcloc !88
  %2 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_io, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 0) #8, !srcloc !88
  %4 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_io, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 0) #8, !srcloc !88
  %6 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_io, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 0) #8, !srcloc !88
  %8 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_io, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #8, !srcloc !86
  %10 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_io, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #8, !srcloc !86
  %12 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_io, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 0) #8, !srcloc !88
  %fifo_io = getelementptr inbounds %struct.ec_bhf_priv, ptr %priv, i32 0, i32 8
  %14 = ptrtoint ptr %fifo_io to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fifo_io, align 4
  %add.ptr13 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 0) #8, !srcloc !88
  %16 = ptrtoint ptr %fifo_io to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fifo_io, align 4
  %add.ptr15 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 0) #8, !srcloc !88
  %18 = ptrtoint ptr %mac_io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mac_io, align 4
  %add.ptr17 = getelementptr i8, ptr %19, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 0) #8, !srcloc !88
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ec_bhf_alloc_dma_mem(ptr nocapture noundef readonly %priv, ptr noundef %buf, i32 noundef %channel, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %channel, 3
  %add = add i32 %mul, 4096
  %dev1 = getelementptr inbounds %struct.ec_bhf_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dma_io = getelementptr inbounds %struct.ec_bhf_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %dma_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_io, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #8, !srcloc !86
  %4 = ptrtoint ptr %dma_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_io, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %7 = and i32 %6, -50331649
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add5 = sub i32 0, %8
  %9 = tail call i32 @llvm.smin.i32(i32 %add5, i32 %size)
  %len = getelementptr inbounds %struct.bhf_dma, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %len, align 4
  %mul7 = shl i32 %9, 1
  %alloc_len = getelementptr inbounds %struct.bhf_dma, ptr %buf, i32 0, i32 4
  %11 = ptrtoint ptr %alloc_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul7, ptr %alloc_len, align 4
  %alloc_phys = getelementptr inbounds %struct.bhf_dma, ptr %buf, i32 0, i32 5
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev2, i32 noundef %mul7, ptr noundef %alloc_phys, i32 noundef 3264, i32 noundef 0) #8
  %alloc = getelementptr inbounds %struct.bhf_dma, ptr %buf, i32 0, i32 3
  %12 = ptrtoint ptr %alloc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %alloc, align 4
  %cmp11 = icmp eq ptr %call.i, null
  br i1 %cmp11, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %alloc_phys to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alloc_phys, align 4
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %add14 = add i32 %16, %14
  %and15 = and i32 %add14, %8
  %buf_phys = getelementptr inbounds %struct.bhf_dma, ptr %buf, i32 0, i32 2
  %17 = ptrtoint ptr %buf_phys to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and15, ptr %buf_phys, align 4
  %sub = sub i32 %and15, %14
  %add.ptr19 = getelementptr i8, ptr %call.i, i32 %sub
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr19, ptr %buf, align 4
  %19 = ptrtoint ptr %dma_io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_io, align 4
  %add.ptr22 = getelementptr i8, ptr %20, i32 %add
  %add.ptr23 = getelementptr i8, ptr %add.ptr22, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #8, !srcloc !86
  %21 = ptrtoint ptr %buf_phys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_phys, align 4
  %23 = ptrtoint ptr %dma_io to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_io, align 4
  %add.ptr26 = getelementptr i8, ptr %24, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %25) #8, !srcloc !86
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec_bhf_timer_fun(ptr noundef %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -16
  %rx_descs.i = getelementptr i8, ptr %timer, i32 96
  %0 = ptrtoint ptr %rx_descs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_descs.i, align 8
  %rx_dnext.i = getelementptr i8, ptr %timer, i32 100
  %2 = ptrtoint ptr %rx_dnext.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_dnext.i, align 4
  %arrayidx.i = getelementptr %struct.rx_desc, ptr %1, i32 %3
  %recv.i47.i = getelementptr inbounds %struct.rx_header, ptr %arrayidx.i, i32 0, i32 1
  %4 = ptrtoint ptr %recv.i47.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %recv.i47.i, align 1
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not48.i = icmp eq i32 %6, 0
  br i1 %tobool.not48.i, label %entry.ec_bhf_process_rx.exit_crit_edge, label %while.body.lr.ph.i

entry.ec_bhf_process_rx.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ec_bhf_process_rx.exit

while.body.lr.ph.i:                               ; preds = %entry
  %stat_rx_bytes.i = getelementptr i8, ptr %timer, i32 144
  %dev.i = getelementptr i8, ptr %timer, i32 -12
  %rx_buf.i.i = getelementptr i8, ptr %timer, i32 72
  %fifo_io.i.i = getelementptr i8, ptr %timer, i32 60
  %rx_dcount.i = getelementptr i8, ptr %timer, i32 104
  br label %while.body.i

while.body.i:                                     ; preds = %if.end17.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %recv.i50.i = phi ptr [ %recv.i47.i, %while.body.lr.ph.i ], [ %recv.i.i, %if.end17.i.while.body.i_crit_edge ]
  %desc.049.i = phi ptr [ %arrayidx.i, %while.body.lr.ph.i ], [ %arrayidx24.i, %if.end17.i.while.body.i_crit_edge ]
  %len.i = getelementptr inbounds %struct.rx_header, ptr %desc.049.i, i32 0, i32 2
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %len.i, align 1
  %9 = and i16 %8, -241
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %and.i = zext i16 %10 to i32
  %sub1.i = add nsw i32 %and.i, -28
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %add.i.i.i = add nsw i32 %and.i, -26
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %12, i32 noundef %add.i.i.i, i32 noundef 2592) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %14, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %16, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %data2.i = getelementptr inbounds %struct.rx_desc, ptr %desc.049.i, i32 0, i32 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %sub1.i) #8
  %17 = call ptr @memcpy(ptr %call.i.i, ptr %data2.i, i32 %sub1.i)
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %call7.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i.i, ptr noundef %19) #8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %20 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %call7.i, ptr %protocol.i, align 8
  %conv8.i = sext i32 %sub1.i to i64
  %21 = ptrtoint ptr %stat_rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %stat_rx_bytes.i, align 8
  %add.i = add i64 %22, %conv8.i
  store i64 %add.i, ptr %stat_rx_bytes.i, align 8
  %call9.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i.i) #8
  br label %if.end17.i

do.body.i:                                        ; preds = %while.body.i
  %call10.i = tail call i32 @___ratelimit(ptr noundef nonnull @ec_bhf_process_rx._rs, ptr noundef nonnull @__func__.ec_bhf_process_rx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %do.body.i.if.end17.i_crit_edge, label %do.end.i

do.body.i.if.end17.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.23, i32 noundef %sub1.i) #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i, %do.body.i.if.end17.i_crit_edge, %if.then.i
  %25 = ptrtoint ptr %recv.i50.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %recv.i50.i, align 1
  %26 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_buf.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %desc.049.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %or.i.i = or i32 %sub.ptr.sub.i.i, -2147483648
  %28 = ptrtoint ptr %fifo_io.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fifo_io.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #8, !srcloc !86
  %31 = ptrtoint ptr %rx_dnext.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_dnext.i, align 4
  %add20.i = add i32 %32, 1
  %33 = ptrtoint ptr %rx_dcount.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_dcount.i, align 8
  %rem.i = srem i32 %add20.i, %34
  store i32 %rem.i, ptr %rx_dnext.i, align 4
  %35 = ptrtoint ptr %rx_descs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_descs.i, align 8
  %arrayidx24.i = getelementptr %struct.rx_desc, ptr %36, i32 %rem.i
  %recv.i.i = getelementptr inbounds %struct.rx_header, ptr %arrayidx24.i, i32 0, i32 1
  %37 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %recv.i.i, align 1
  %39 = and i32 %38, 16777216
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %if.end17.i.ec_bhf_process_rx.exit_crit_edge, label %if.end17.i.while.body.i_crit_edge

if.end17.i.while.body.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end17.i.ec_bhf_process_rx.exit_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ec_bhf_process_rx.exit

ec_bhf_process_rx.exit:                           ; preds = %if.end17.i.ec_bhf_process_rx.exit_crit_edge, %entry.ec_bhf_process_rx.exit_crit_edge
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %ec_bhf_process_rx.exit.ec_bhf_process_tx.exit_crit_edge, label %do.end.i5, !prof !90

ec_bhf_process_rx.exit.ec_bhf_process_tx.exit_crit_edge: ; preds = %ec_bhf_process_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ec_bhf_process_tx.exit

do.end.i5:                                        ; preds = %ec_bhf_process_rx.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !91
  %tx_descs.i = getelementptr i8, ptr %timer, i32 132
  %46 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_descs.i, align 4
  %tx_dnext.i = getelementptr i8, ptr %timer, i32 140
  %48 = ptrtoint ptr %tx_dnext.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_dnext.i, align 4
  %sent.i.i = getelementptr %struct.tx_desc, ptr %47, i32 %49, i32 0, i32 3
  %50 = ptrtoint ptr %sent.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %sent.i.i, align 1
  %52 = and i32 %51, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool5.not.i = icmp eq i32 %52, 0
  br i1 %tobool5.not.i, label %do.end.i5.ec_bhf_process_tx.exit_crit_edge, label %if.then6.i

do.end.i5.ec_bhf_process_tx.exit_crit_edge:       ; preds = %do.end.i5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ec_bhf_process_tx.exit

if.then6.i:                                       ; preds = %do.end.i5
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 8
  %_tx.i.i12.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 103
  %55 = ptrtoint ptr %_tx.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %_tx.i.i12.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %56) #8
  br label %ec_bhf_process_tx.exit

ec_bhf_process_tx.exit:                           ; preds = %if.then6.i, %do.end.i5.ec_bhf_process_tx.exit_crit_edge, %ec_bhf_process_rx.exit.ec_bhf_process_tx.exit_crit_edge
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %ec_bhf_process_tx.exit.cleanup_crit_edge, label %if.end

ec_bhf_process_tx.exit.cleanup_crit_edge:         ; preds = %ec_bhf_process_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ec_bhf_process_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %61 = load i32, ptr @polling_frequency, align 4
  %conv = sext i32 %61 to i64
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %65() #8
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i, i64 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ec_bhf_process_tx.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %ec_bhf_process_tx.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_copy_and_csum_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_ec_bhf__343_590_pci_driver_init6, !1, !"__initcall__kmod_ec_bhf__343_590_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 590, i32 1}
!2 = !{ptr @__exitcall_pci_driver_exit, !1, !"__exitcall_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_polling_frequency, !4, !"__param_polling_frequency", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 592, i32 1}
!5 = !{ptr @__UNIQUE_ID_polling_frequencytype344, !4, !"__UNIQUE_ID_polling_frequencytype344", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_polling_frequency345, !7, !"__UNIQUE_ID_polling_frequency345", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 593, i32 1}
!8 = !{ptr @__UNIQUE_ID_file346, !9, !"__UNIQUE_ID_file346", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 595, i32 1}
!10 = !{ptr @__UNIQUE_ID_license347, !9, !"__UNIQUE_ID_license347", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author348, !12, !"__UNIQUE_ID_author348", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 596, i32 1}
!13 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pci_driver, !15, !"pci_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 584, i32 26}
!16 = !{ptr @ids, !17, !"ids", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 67, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 494, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ec_bhf_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ec_bhf_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 501, i32 3}
!28 = !{ptr @ec_bhf_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ec_bhf_probe._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 507, i32 3}
!32 = !{ptr @ec_bhf_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ec_bhf_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 514, i32 3}
!36 = !{ptr @ec_bhf_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ec_bhf_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @ec_bhf_netdev_ops, !39, !"ec_bhf_netdev_ops", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 468, i32 36}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 403, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ec_bhf_open._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ec_bhf_open._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 411, i32 3}
!47 = !{ptr @ec_bhf_open._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ec_bhf_open._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 344, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ec_bhf_alloc_dma_mem._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ec_bhf_alloc_dma_mem._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 223, i32 4}
!56 = !{ptr @ec_bhf_process_rx._rs, !55, !"_rs", i1 false, i1 false}
!57 = !{ptr @__func__.ec_bhf_process_rx, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ec_bhf_process_rx._entry, !55, !"_entry", i1 false, i1 false}
!60 = !{ptr @ec_bhf_process_rx._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 265, i32 3}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ec_bhf_setup_offsets._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ec_bhf_setup_offsets._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @__param_str_polling_frequency, !4, !"__param_str_polling_frequency", i1 false, i1 false}
!67 = !{ptr @polling_frequency, !68, !"polling_frequency", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/ec_bhf.c", i32 110, i32 13}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 4992304}
!80 = !{i64 2152531649}
!81 = !{i64 4991686}
!82 = !{i64 2152532261}
!83 = !{i64 4992524}
!84 = !{i64 2152532873}
!85 = !{i64 2152534228}
!86 = !{i64 4992106}
!87 = !{i64 2152533254}
!88 = !{i64 4991909}
!89 = !{i64 2156320428}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2156309564}
