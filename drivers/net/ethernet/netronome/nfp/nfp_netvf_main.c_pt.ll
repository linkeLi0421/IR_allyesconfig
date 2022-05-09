; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_net_fw_version = type { i8, i8, i8, i8 }
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
%struct.nfp_net = type { %struct.nfp_net_dp, %struct.nfp_net_fw_version, i32, i32, i32, i8, i32, [40 x i8], [128 x i8], %struct.xdp_attachment_info, %struct.xdp_attachment_info, i32, i32, i32, i32, i32, [88 x i8], [64 x %struct.nfp_net_r_vector], [66 x %struct.msix_entry], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], i8, %struct.spinlock, %struct.spinlock, i32, i8, i8, %struct.timer_list, i32, %struct.semaphore, i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, %struct.nfp_net_tlv_caps, i32, i32, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.136, ptr, %struct.list_head, ptr, ptr, i8, ptr, ptr, [116 x i8] }
%struct.nfp_net_dp = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nfp_net_r_vector = type { ptr, %union.anon.125, ptr, ptr, i16, i16, %struct.dim, %struct.dim, %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.u64_stats_sync, i64, i64, [104 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, [24 x i8], %struct.cpumask, [20 x i8] }
%union.anon.125 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.cpumask = type { [1 x i32] }
%struct.msix_entry = type { i32, i16 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.nfp_net_tlv_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.atomic64_t = type { i64 }
%struct.anon.136 = type { %struct.sk_buff_head, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.work_struct, i16 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.nfp_net_vf = type { ptr, [66 x %struct.msix_entry], ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@nfp_net_driver_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nfp_netvf\00", [22 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_device_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6638, i32 24579, i32 6638, i32 -1, i32 -1, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_driver = dso_local global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @nfp_net_driver_name, ptr @nfp_netvf_pci_device_ids, ptr @nfp_netvf_pci_probe, ptr @nfp_netvf_pci_remove, ptr null, ptr null, ptr @nfp_netvf_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 92, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to allocate device memory.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfp_netvf_pci_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_probe._entry_ptr = internal global ptr @nfp_netvf_pci_probe._entry, section ".printk_index", align 4
@nfp_netvf_pci_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to map resource %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_probe._entry_ptr.7 = internal global ptr @nfp_netvf_pci_probe._entry.5, section ".printk_index", align 4
@nfp_netvf_pci_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown Firmware ABI %d.%d.%d.%d\0A\00", [62 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_probe._entry_ptr.10 = internal global ptr @nfp_netvf_pci_probe._entry.8, section ".printk_index", align 4
@nfp_netvf_pci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 131, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"OBSOLETE Firmware detected - VF isolation not available\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_probe._entry_ptr.14 = internal global ptr @nfp_netvf_pci_probe._entry.11, section ".printk_index", align 4
@nfp_netvf_pci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 142, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported Firmware ABI %d.%d.%d.%d\0A\00", [58 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_probe._entry_ptr.17 = internal global ptr @nfp_netvf_pci_probe._entry.15, section ".printk_index", align 4
@nfp_netvf_pci_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"TX BAR too small for number of TX rings. Adjusting\0A\00", [44 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_probe._entry_ptr.20 = internal global ptr @nfp_netvf_pci_probe._entry.18, section ".printk_index", align 4
@nfp_netvf_pci_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RX BAR too small for number of RX rings. Adjusting\0A\00", [44 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_probe._entry_ptr.23 = internal global ptr @nfp_netvf_pci_probe._entry.21, section ".printk_index", align 4
@nfp_netvf_pci_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 205, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ctrl: Failed to map resource %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_probe._entry_ptr.26 = internal global ptr @nfp_netvf_pci_probe._entry.24, section ".printk_index", align 4
@nfp_netvf_pci_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_probe._entry_ptr.28 = internal global ptr @nfp_netvf_pci_probe._entry.27, section ".printk_index", align 4
@nfp_netvf_pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_probe._entry_ptr.30 = internal global ptr @nfp_netvf_pci_probe._entry.29, section ".printk_index", align 4
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to allocate MSI-X Vectors. Exiting\0A\00", [53 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 243, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ctrl: Unable to allocate MSI-X Vectors. Exiting\0A\00", [47 x i8] zeroinitializer }, align 32
@nfp_netvf_pci_probe._entry_ptr.34 = internal global ptr @nfp_netvf_pci_probe._entry.32, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"nfp_net_driver_name\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 37, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"nfp_netvf_pci_device_ids\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 40, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"nfp_netvf_pci_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 321, i32 19 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 92, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 112, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 120, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 131, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 140, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 157, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 163, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 205, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 221, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 230, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [55 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 243, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @nfp_netvf_pci_probe._entry, ptr @nfp_netvf_pci_probe._entry.11, ptr @nfp_netvf_pci_probe._entry.15, ptr @nfp_netvf_pci_probe._entry.18, ptr @nfp_netvf_pci_probe._entry.21, ptr @nfp_netvf_pci_probe._entry.24, ptr @nfp_netvf_pci_probe._entry.27, ptr @nfp_netvf_pci_probe._entry.29, ptr @nfp_netvf_pci_probe._entry.32, ptr @nfp_netvf_pci_probe._entry.5, ptr @nfp_netvf_pci_probe._entry.8, ptr @nfp_netvf_pci_probe._entry_ptr, ptr @nfp_netvf_pci_probe._entry_ptr.10, ptr @nfp_netvf_pci_probe._entry_ptr.14, ptr @nfp_netvf_pci_probe._entry_ptr.17, ptr @nfp_netvf_pci_probe._entry_ptr.20, ptr @nfp_netvf_pci_probe._entry_ptr.23, ptr @nfp_netvf_pci_probe._entry_ptr.26, ptr @nfp_netvf_pci_probe._entry_ptr.28, ptr @nfp_netvf_pci_probe._entry_ptr.30, ptr @nfp_netvf_pci_probe._entry_ptr.34, ptr @nfp_netvf_pci_probe._entry_ptr.7, ptr @nfp_net_driver_name, ptr @nfp_netvf_pci_device_ids, ptr @nfp_netvf_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_driver_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_netvf_pci_device_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_netvf_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_netvf_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_netvf_pci_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_netvf_pci_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_netvf_pci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_netvf_pci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_netvf_pci_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_netvf_pci_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_netvf_pci_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_netvf_pci_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_netvf_pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_netvf_pci_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_netvf_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %pci_id) #0 align 64 {
entry:
  %fw_ver = alloca %struct.nfp_net_fw_version, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver) #6
  %0 = getelementptr inbounds %struct.nfp_net_fw_version, ptr %fw_ver, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfp_net_fw_version, ptr %fw_ver, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nfp_net_fw_version, ptr %fw_ver, i32 0, i32 3
  %3 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %fw_ver, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 540) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup315_crit_edge, label %if.end

entry.cleanup315_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup315

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_enable_device_mem(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_free_vf_crit_edge

if.end.err_free_vf_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_vf

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @nfp_net_driver_name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %err_pci_disable

if.end8:                                          ; preds = %if.end4
  tail call void @pci_set_master(ptr noundef %pdev) #6
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev9, i64 noundef 1099511627775) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end13, label %if.end8.err_pci_regions_crit_edge

if.end8.err_pci_regions_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pci_regions

if.end13:                                         ; preds = %if.end8
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev9, i64 noundef 1099511627775) #6
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resource, align 8
  %call14 = tail call ptr @ioremap(i32 noundef %7, i32 noundef 32768) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.6, i32 noundef 0) #10
  br label %err_pci_regions

if.end21:                                         ; preds = %if.end13
  call void @nfp_net_get_fw_version(ptr noundef nonnull %fw_ver, ptr noundef nonnull %call14) #6
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool22.not = icmp eq i8 %9, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %if.end21.do.end28_crit_edge

if.end21.do.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

lor.lhs.false:                                    ; preds = %if.end21
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %land.lhs.true9.i, label %lor.lhs.false.do.end28_crit_edge

lor.lhs.false.do.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

do.end28:                                         ; preds = %lor.lhs.false.do.end28_crit_edge, %if.end21.do.end28_crit_edge
  %conv31 = zext i8 %9 to i32
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 2
  %conv33 = zext i8 %13 to i32
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %0, align 1
  %conv34 = zext i8 %15 to i32
  %16 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fw_ver, align 4
  %conv35 = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.9, i32 noundef %conv31, i32 noundef %conv33, i32 noundef %conv34, i32 noundef %conv35) #10
  br label %err_ctrl_unmap

land.lhs.true9.i:                                 ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp13.i = icmp eq i8 %19, 0
  br i1 %cmp13.i, label %nfp_net_fw_ver_eq.exit, label %land.lhs.true9.i.if.else_crit_edge

land.lhs.true9.i.if.else_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

nfp_net_fw_ver_eq.exit:                           ; preds = %land.lhs.true9.i
  %20 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp18.i = icmp eq i8 %21, 1
  br i1 %cmp18.i, label %if.then38, label %nfp_net_fw_ver_eq.exit.if.else_crit_edge

nfp_net_fw_ver_eq.exit.if.else_crit_edge:         ; preds = %nfp_net_fw_ver_eq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then38:                                        ; preds = %nfp_net_fw_ver_eq.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9, ptr noundef nonnull @.str.12) #10
  br label %if.end57

if.else:                                          ; preds = %nfp_net_fw_ver_eq.exit.if.else_crit_edge, %land.lhs.true9.i.if.else_crit_edge
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %0, align 1
  %.off = add i8 %23, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.off)
  %switch = icmp ult i8 %.off, 5
  br i1 %switch, label %if.else.if.end57_crit_edge, label %do.end47

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

do.end47:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv44 = zext i8 %23 to i32
  %24 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fw_ver, align 4
  %conv56 = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0, i32 noundef %conv44, i32 noundef %conv56) #10
  br label %err_ctrl_unmap

if.end57:                                         ; preds = %if.else.if.end57_crit_edge, %if.then38
  %26 = phi i1 [ true, %if.then38 ], [ false, %if.else.if.end57_crit_edge ]
  %stride.0 = phi i32 [ 2, %if.then38 ], [ 4, %if.else.if.end57_crit_edge ]
  %rx_bar_no.0 = phi i32 [ 4, %if.then38 ], [ 2, %if.else.if.end57_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call14, i32 60
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !63
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %add.ptr62 = getelementptr i8, ptr %call14, i32 64
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #6, !srcloc !63
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %mul = shl i32 %28, 11
  %mul66 = mul i32 %mul, %stride.0
  %mul67 = shl i32 %30, 11
  %mul68 = mul i32 %mul67, %stride.0
  %arrayidx70 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %31 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp71 = icmp eq i32 %32, 0
  br i1 %cmp71, label %if.end57.cond.end_crit_edge, label %cond.false

if.end57.cond.end_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx70, align 8
  %sub = add i32 %32, 1
  %add = sub i32 %sub, %34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end57.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end57.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mul66, i32 %cond)
  %cmp79 = icmp ugt i32 %mul66, %cond
  br i1 %cmp79, label %do.end84, label %cond.end.if.end104_crit_edge

cond.end.if.end104_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

do.end84:                                         ; preds = %cond.end
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.19) #10
  %35 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp89 = icmp eq i32 %36, 0
  br i1 %cmp89, label %do.end84.cond.end101_crit_edge, label %cond.false92

do.end84.cond.end101_crit_edge:                   ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end101

cond.false92:                                     ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx70, align 8
  %sub99 = add i32 %36, 1
  %add100 = sub i32 %sub99, %38
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false92, %do.end84.cond.end101_crit_edge
  %cond102 = phi i32 [ %add100, %cond.false92 ], [ 0, %do.end84.cond.end101_crit_edge ]
  %div103487 = lshr i32 %cond102, 12
  br label %if.end104

if.end104:                                        ; preds = %cond.end101, %cond.end.if.end104_crit_edge
  %tx_bar_sz.0 = phi i32 [ %cond102, %cond.end101 ], [ %mul66, %cond.end.if.end104_crit_edge ]
  %max_tx_rings.0 = phi i32 [ %div103487, %cond.end101 ], [ %28, %cond.end.if.end104_crit_edge ]
  %arrayidx106 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %rx_bar_no.0
  %end107 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %rx_bar_no.0, i32 1
  %39 = ptrtoint ptr %end107 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %end107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp108 = icmp eq i32 %40, 0
  br i1 %cmp108, label %if.end104.cond.end120_crit_edge, label %cond.false111

if.end104.cond.end120_crit_edge:                  ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end120

cond.false111:                                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx106, align 8
  %sub118 = add i32 %40, 1
  %add119 = sub i32 %sub118, %42
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false111, %if.end104.cond.end120_crit_edge
  %cond121 = phi i32 [ %add119, %cond.false111 ], [ 0, %if.end104.cond.end120_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mul68, i32 %cond121)
  %cmp122 = icmp ugt i32 %mul68, %cond121
  br i1 %cmp122, label %do.end127, label %cond.end120.if.end148_crit_edge

cond.end120.if.end148_crit_edge:                  ; preds = %cond.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

do.end127:                                        ; preds = %cond.end120
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.22) #10
  %43 = ptrtoint ptr %end107 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %end107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp132 = icmp eq i32 %44, 0
  br i1 %cmp132, label %do.end127.cond.end144_crit_edge, label %cond.false135

do.end127.cond.end144_crit_edge:                  ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end144

cond.false135:                                    ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx106, align 8
  %sub142 = add i32 %44, 1
  %add143 = sub i32 %sub142, %46
  br label %cond.end144

cond.end144:                                      ; preds = %cond.false135, %do.end127.cond.end144_crit_edge
  %cond145 = phi i32 [ %add143, %cond.false135 ], [ 0, %do.end127.cond.end144_crit_edge ]
  %div147485 = lshr i32 %cond145, 12
  br label %if.end148

if.end148:                                        ; preds = %cond.end144, %cond.end120.if.end148_crit_edge
  %rx_bar_sz.0 = phi i32 [ %cond145, %cond.end144 ], [ %mul68, %cond.end120.if.end148_crit_edge ]
  %max_rx_rings.0 = phi i32 [ %div147485, %cond.end144 ], [ %30, %cond.end120.if.end148_crit_edge ]
  %add.ptr151 = getelementptr i8, ptr %call14, i32 72
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #6, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %48 = lshr i32 %47, 13
  %mul155 = and i32 %48, 522240
  %add156 = or i32 %mul155, 524288
  %add.ptr159 = getelementptr i8, ptr %call14, i32 76
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr159) #6, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %50 = lshr i32 %49, 13
  %mul164 = and i32 %50, 522240
  %add165 = or i32 %mul164, 524288
  %call166 = call ptr @nfp_net_alloc(ptr noundef %pdev, ptr noundef nonnull %call14, i1 noundef zeroext true, i32 noundef %max_tx_rings.0, i32 noundef %max_rx_rings.0) #6
  %cmp.i489 = icmp ugt ptr %call166, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i489, label %if.then168, label %if.end170

if.then168:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %call166 to i32
  br label %err_ctrl_unmap

if.end170:                                        ; preds = %if.end148
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call166, ptr %call7.i.i, align 8
  %fw_ver172 = getelementptr inbounds %struct.nfp_net, ptr %call166, i32 0, i32 1
  %53 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fw_ver, align 4
  %55 = ptrtoint ptr %fw_ver172 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %fw_ver172, align 4
  %is_vf = getelementptr inbounds %struct.nfp_net_dp, ptr %call166, i32 0, i32 2
  %56 = ptrtoint ptr %is_vf to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load = load i8, ptr %is_vf, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %is_vf, align 8
  %stride_tx = getelementptr inbounds %struct.nfp_net, ptr %call166, i32 0, i32 13
  %57 = ptrtoint ptr %stride_tx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %stride.0, ptr %stride_tx, align 4
  %stride_rx = getelementptr inbounds %struct.nfp_net, ptr %call166, i32 0, i32 14
  %58 = ptrtoint ptr %stride_rx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %stride.0, ptr %stride_rx, align 32
  br i1 %26, label %if.else221, label %if.then175

if.then175:                                       ; preds = %if.end170
  %59 = call i32 @llvm.umin.i32(i32 %add156, i32 %add165)
  %add181 = add i32 %add156, %tx_bar_sz.0
  %add182 = add i32 %add165, %rx_bar_sz.0
  %60 = call i32 @llvm.umax.i32(i32 %add181, i32 %add182)
  %bar_sz.0 = sub i32 %60, %59
  %61 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx70, align 8
  %add195 = add i32 %62, %59
  %call196 = call ptr @ioremap(i32 noundef %add195, i32 noundef %bar_sz.0) #6
  %q_bar = getelementptr inbounds %struct.nfp_net_vf, ptr %call7.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %q_bar to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call196, ptr %q_bar, align 4
  %tobool198.not = icmp eq ptr %call196, null
  br i1 %tobool198.not, label %if.then199, label %cleanup

if.then199:                                       ; preds = %if.then175
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %call166, i32 0, i32 1
  %64 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %netdev, align 4
  %tobool201.not = icmp eq ptr %65, null
  br i1 %tobool201.not, label %do.end208, label %if.then202

if.then202:                                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %65, ptr noundef nonnull @.str.6, i32 noundef 2) #10
  br label %err_netdev_free

do.end208:                                        ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %call166 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call166, align 128
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %67, ptr noundef nonnull @.str.25, i32 noundef 2) #10
  br label %err_netdev_free

cleanup:                                          ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #8
  %sub214 = sub nsw i32 %add156, %59
  %add.ptr215 = getelementptr i8, ptr %call196, i32 %sub214
  %tx_bar = getelementptr inbounds %struct.nfp_net, ptr %call166, i32 0, i32 41
  %68 = ptrtoint ptr %tx_bar to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr215, ptr %tx_bar, align 4
  %69 = ptrtoint ptr %q_bar to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %q_bar, align 4
  %sub217 = sub nsw i32 %add165, %59
  %add.ptr218 = getelementptr i8, ptr %70, i32 %sub217
  %rx_bar = getelementptr inbounds %struct.nfp_net, ptr %call166, i32 0, i32 42
  %71 = ptrtoint ptr %rx_bar to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr218, ptr %rx_bar, align 16
  br label %if.end274

if.else221:                                       ; preds = %if.end170
  %72 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx70, align 8
  %add226 = add i32 %73, %add156
  %call227 = call ptr @ioremap(i32 noundef %add226, i32 noundef %tx_bar_sz.0) #6
  %tx_bar228 = getelementptr inbounds %struct.nfp_net, ptr %call166, i32 0, i32 41
  %74 = ptrtoint ptr %tx_bar228 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call227, ptr %tx_bar228, align 4
  %tobool230.not = icmp eq ptr %call227, null
  br i1 %tobool230.not, label %if.then231, label %if.end246

if.then231:                                       ; preds = %if.else221
  %netdev234 = getelementptr inbounds %struct.nfp_net_dp, ptr %call166, i32 0, i32 1
  %75 = ptrtoint ptr %netdev234 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %netdev234, align 4
  %tobool235.not = icmp eq ptr %76, null
  br i1 %tobool235.not, label %do.end242, label %if.then236

if.then236:                                       ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %76, ptr noundef nonnull @.str.6, i32 noundef 2) #10
  br label %err_netdev_free

do.end242:                                        ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %call166 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call166, align 128
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %78, ptr noundef nonnull @.str.25, i32 noundef 2) #10
  br label %err_netdev_free

if.end246:                                        ; preds = %if.else221
  %79 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx106, align 8
  %add250 = add i32 %80, %add165
  %call251 = call ptr @ioremap(i32 noundef %add250, i32 noundef %rx_bar_sz.0) #6
  %rx_bar252 = getelementptr inbounds %struct.nfp_net, ptr %call166, i32 0, i32 42
  %81 = ptrtoint ptr %rx_bar252 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call251, ptr %rx_bar252, align 16
  %tobool254.not = icmp eq ptr %call251, null
  br i1 %tobool254.not, label %if.then255, label %if.end246.if.end274_crit_edge

if.end246.if.end274_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end274

if.then255:                                       ; preds = %if.end246
  %netdev258 = getelementptr inbounds %struct.nfp_net_dp, ptr %call166, i32 0, i32 1
  %82 = ptrtoint ptr %netdev258 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev258, align 4
  %tobool259.not = icmp eq ptr %83, null
  br i1 %tobool259.not, label %do.end266, label %if.then260

if.then260:                                       ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %83, ptr noundef nonnull @.str.6, i32 noundef %rx_bar_no.0) #10
  br label %err_unmap_tx

do.end266:                                        ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %call166 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call166, align 128
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %85, ptr noundef nonnull @.str.25, i32 noundef %rx_bar_no.0) #10
  br label %err_unmap_tx

if.end274:                                        ; preds = %if.end246.if.end274_crit_edge, %cleanup
  call fastcc void @nfp_netvf_get_mac_addr(ptr noundef %call166)
  %irq_entries = getelementptr inbounds %struct.nfp_net_vf, ptr %call7.i.i, i32 0, i32 1
  %num_r_vecs = getelementptr inbounds %struct.nfp_net_dp, ptr %call166, i32 0, i32 14
  %86 = ptrtoint ptr %num_r_vecs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_r_vecs, align 16
  %add276 = add i32 %87, 2
  %call277 = call i32 @nfp_net_irqs_alloc(ptr noundef %pdev, ptr noundef %irq_entries, i32 noundef 3, i32 noundef %add276) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %if.then279, label %if.end294

if.then279:                                       ; preds = %if.end274
  %netdev282 = getelementptr inbounds %struct.nfp_net_dp, ptr %call166, i32 0, i32 1
  %88 = ptrtoint ptr %netdev282 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %netdev282, align 4
  %tobool283.not = icmp eq ptr %89, null
  br i1 %tobool283.not, label %do.end290, label %if.then284

if.then284:                                       ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %89, ptr noundef nonnull @.str.31) #10
  br label %err_unmap_rx

do.end290:                                        ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %call166 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call166, align 128
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %91, ptr noundef nonnull @.str.33) #10
  br label %err_unmap_rx

if.end294:                                        ; preds = %if.end274
  call void @nfp_net_irqs_assign(ptr noundef %call166, ptr noundef %irq_entries, i32 noundef %call277) #6
  %call297 = call i32 @nfp_net_init(ptr noundef %call166) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call297)
  %tobool298.not = icmp eq i32 %call297, 0
  br i1 %tobool298.not, label %if.end300, label %err_irqs_disable

if.end300:                                        ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #8
  call void @nfp_net_info(ptr noundef %call166) #6
  %call301 = call ptr @nfp_net_debugfs_device_add(ptr noundef %pdev) #6
  %ddir = getelementptr inbounds %struct.nfp_net_vf, ptr %call7.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %ddir to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call301, ptr %ddir, align 8
  call void @nfp_net_debugfs_vnic_add(ptr noundef %call166, ptr noundef %call301) #6
  br label %cleanup315

err_irqs_disable:                                 ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #8
  call void @nfp_net_irqs_disable(ptr noundef %pdev) #6
  br label %err_unmap_rx

err_unmap_rx:                                     ; preds = %err_irqs_disable, %do.end290, %if.then284
  %err.2 = phi i32 [ %call297, %err_irqs_disable ], [ -5, %do.end290 ], [ -5, %if.then284 ]
  %q_bar303 = getelementptr inbounds %struct.nfp_net_vf, ptr %call7.i.i, i32 0, i32 2
  %93 = ptrtoint ptr %q_bar303 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %q_bar303, align 4
  %tobool304.not = icmp eq ptr %94, null
  br i1 %tobool304.not, label %if.then305, label %err_unmap_rx.err_unmap_tx_crit_edge

err_unmap_rx.err_unmap_tx_crit_edge:              ; preds = %err_unmap_rx
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap_tx

if.then305:                                       ; preds = %err_unmap_rx
  call void @__sanitizer_cov_trace_pc() #8
  %rx_bar306 = getelementptr inbounds %struct.nfp_net, ptr %call166, i32 0, i32 42
  %95 = ptrtoint ptr %rx_bar306 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rx_bar306, align 16
  call void @iounmap(ptr noundef %96) #6
  br label %err_unmap_tx

err_unmap_tx:                                     ; preds = %if.then305, %err_unmap_rx.err_unmap_tx_crit_edge, %do.end266, %if.then260
  %err.3 = phi i32 [ %err.2, %err_unmap_rx.err_unmap_tx_crit_edge ], [ %err.2, %if.then305 ], [ -5, %do.end266 ], [ -5, %if.then260 ]
  %q_bar308 = getelementptr inbounds %struct.nfp_net_vf, ptr %call7.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %q_bar308 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %q_bar308, align 4
  %tobool309.not = icmp eq ptr %98, null
  br i1 %tobool309.not, label %if.then310, label %if.else312

if.then310:                                       ; preds = %err_unmap_tx
  call void @__sanitizer_cov_trace_pc() #8
  %tx_bar311 = getelementptr inbounds %struct.nfp_net, ptr %call166, i32 0, i32 41
  %99 = ptrtoint ptr %tx_bar311 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tx_bar311, align 4
  call void @iounmap(ptr noundef %100) #6
  br label %err_netdev_free

if.else312:                                       ; preds = %err_unmap_tx
  call void @__sanitizer_cov_trace_pc() #8
  call void @iounmap(ptr noundef nonnull %98) #6
  br label %err_netdev_free

err_netdev_free:                                  ; preds = %if.else312, %if.then310, %do.end242, %if.then236, %do.end208, %if.then202
  %err.4 = phi i32 [ %err.3, %if.else312 ], [ %err.3, %if.then310 ], [ -5, %do.end208 ], [ -5, %if.then202 ], [ -5, %do.end242 ], [ -5, %if.then236 ]
  call void @nfp_net_free(ptr noundef %call166) #6
  br label %err_ctrl_unmap

err_ctrl_unmap:                                   ; preds = %err_netdev_free, %if.then168, %do.end47, %do.end28
  %err.5 = phi i32 [ -22, %do.end28 ], [ %51, %if.then168 ], [ %err.4, %err_netdev_free ], [ -22, %do.end47 ]
  call void @iounmap(ptr noundef nonnull %call14) #6
  br label %err_pci_regions

err_pci_regions:                                  ; preds = %err_ctrl_unmap, %do.end19, %if.end8.err_pci_regions_crit_edge
  %err.6 = phi i32 [ %err.5, %err_ctrl_unmap ], [ -5, %do.end19 ], [ %call.i, %if.end8.err_pci_regions_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #6
  br label %err_pci_disable

err_pci_disable:                                  ; preds = %err_pci_regions, %do.end
  %err.7 = phi i32 [ %call5, %do.end ], [ %err.6, %err_pci_regions ]
  call void @pci_disable_device(ptr noundef %pdev) #6
  br label %err_free_vf

err_free_vf:                                      ; preds = %err_pci_disable, %if.end.err_free_vf_crit_edge
  %err.8 = phi i32 [ %call1, %if.end.err_free_vf_crit_edge ], [ %err.7, %err_pci_disable ]
  %101 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %driver_data.i.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup315

cleanup315:                                       ; preds = %err_free_vf, %if.end300, %entry.cleanup315_crit_edge
  %retval.0 = phi i32 [ %err.8, %err_free_vf ], [ 0, %if.end300 ], [ -12, %entry.cleanup315_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_netvf_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %debugfs_dir = getelementptr inbounds %struct.nfp_net, ptr %3, i32 0, i32 52
  tail call void @nfp_net_debugfs_dir_clean(ptr noundef %debugfs_dir) #6
  %ddir = getelementptr inbounds %struct.nfp_net_vf, ptr %1, i32 0, i32 3
  tail call void @nfp_net_debugfs_dir_clean(ptr noundef %ddir) #6
  tail call void @nfp_net_clean(ptr noundef %3) #6
  tail call void @nfp_net_irqs_disable(ptr noundef %pdev) #6
  %q_bar = getelementptr inbounds %struct.nfp_net_vf, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %q_bar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q_bar, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rx_bar = getelementptr inbounds %struct.nfp_net, ptr %3, i32 0, i32 42
  %6 = ptrtoint ptr %rx_bar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_bar, align 16
  tail call void @iounmap(ptr noundef %7) #6
  %tx_bar = getelementptr inbounds %struct.nfp_net, ptr %3, i32 0, i32 41
  %8 = ptrtoint ptr %tx_bar to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_bar, align 4
  tail call void @iounmap(ptr noundef %9) #6
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %5) #6
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %ctrl_bar = getelementptr inbounds %struct.nfp_net_dp, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %ctrl_bar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_bar, align 4
  tail call void @iounmap(ptr noundef %11) #6
  tail call void @nfp_net_free(ptr noundef %3) #6
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_get_fw_version(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_net_alloc(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_netvf_get_mac_addr(ptr nocapture noundef readonly %nn) unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %mac_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #6
  %0 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %ctrl_bar.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 11
  %1 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 36
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !63
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %5 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mac_addr, align 4
  %6 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %7, i32 42
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i16) #6, !srcloc !69
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %0, align 4
  %11 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

is_valid_ether_addr.exit:                         ; preds = %entry
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %0, align 4
  %conv.i.i = zext i16 %13 to i32
  %or.i.i = or i32 %4, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then_crit_edge, label %if.end

is_valid_ether_addr.exit.if.then_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %is_valid_ether_addr.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #6
  %16 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #6
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %addr.i, align 1
  %19 = and i8 %18, -4
  %20 = or i8 %19, 2
  store i8 %20, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #6
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 55
  %21 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #6
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %netdev5 = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %22 = ptrtoint ptr %netdev5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev5, align 4
  call void @dev_addr_mod(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %mac_addr, i32 noundef 6) #6
  %24 = ptrtoint ptr %netdev5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev5, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 54
  %26 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mac_addr, align 4
  %28 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %perm_addr, align 4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %0, align 4
  %add.ptr1.i = getelementptr %struct.net_device, ptr %25, i32 0, i32 54, i32 4
  %31 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_irqs_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_irqs_assign(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_net_debugfs_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_debugfs_vnic_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_irqs_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_debugfs_dir_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @nfp_netvf_pci_driver, !1, !"nfp_netvf_pci_driver", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 321, i32 19}
!2 = !{ptr @nfp_net_driver_name, !3, !"nfp_net_driver_name", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 37, i32 19}
!4 = !{ptr @nfp_netvf_pci_device_ids, !5, !"nfp_netvf_pci_device_ids", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 40, i32 35}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 92, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nfp_netvf_pci_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfp_netvf_pci_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 112, i32 3}
!16 = !{ptr @nfp_netvf_pci_probe._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nfp_netvf_pci_probe._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 120, i32 3}
!20 = !{ptr @nfp_netvf_pci_probe._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfp_netvf_pci_probe._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 131, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nfp_netvf_pci_probe._entry.11, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @nfp_netvf_pci_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 140, i32 4}
!29 = !{ptr @nfp_netvf_pci_probe._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @nfp_netvf_pci_probe._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 157, i32 3}
!33 = !{ptr @nfp_netvf_pci_probe._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @nfp_netvf_pci_probe._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 163, i32 3}
!37 = !{ptr @nfp_netvf_pci_probe._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @nfp_netvf_pci_probe._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 205, i32 4}
!41 = !{ptr @nfp_netvf_pci_probe._entry.24, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @nfp_netvf_pci_probe._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @nfp_netvf_pci_probe._entry.27, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 221, i32 4}
!45 = !{ptr @nfp_netvf_pci_probe._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @nfp_netvf_pci_probe._entry.29, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 230, i32 4}
!48 = !{ptr @nfp_netvf_pci_probe._entry_ptr.30, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_netvf_main.c", i32 243, i32 3}
!51 = !{ptr @.str.33, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @nfp_netvf_pci_probe._entry.32, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @nfp_netvf_pci_probe._entry_ptr.34, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 6255328}
!64 = !{i64 2156679370}
!65 = !{i64 2156679863}
!66 = !{i64 2156685482}
!67 = !{i64 2156686040}
!68 = !{i64 2156370504}
!69 = !{i64 6254490}
!70 = !{i64 2156369267}
