; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bcm4908_enet.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bcm4908_enet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.bcm4908_enet = type { ptr, ptr, ptr, i32, %struct.bcm4908_enet_dma_ring, %struct.bcm4908_enet_dma_ring }
%struct.bcm4908_enet_dma_ring = type { i32, i32, i32, i32, i16, i16, %struct.napi_struct, %union.anon.121, i32, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%union.anon.121 = type { ptr }
%struct.bcm4908_enet_dma_ring_bd = type { i32, i32 }
%struct.bcm4908_enet_dma_ring_slot = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }

@__initcall__kmod_bcm4908_enet__351_764_bcm4908_enet_driver_init6 = internal global ptr @bcm4908_enet_driver_init, section ".initcall6.init", align 4
@bcm4908_enet_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm4908_enet_probe, ptr @bcm4908_enet_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm4908_enet_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm4908_enet_driver_exit = internal global ptr @bcm4908_enet_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file352 = internal constant [61 x i8] c"bcm4908_enet.file=drivers/net/ethernet/broadcom/bcm4908_enet\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [28 x i8] c"bcm4908_enet.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm4908_enet\00", [19 x i8] zeroinitializer }, align 32
@bcm4908_enet_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4908-enet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm4908_enet_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 699, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to map registers: %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm4908_enet_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/broadcom/bcm4908_enet.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm4908_enet_probe._entry_ptr = internal global ptr @bcm4908_enet_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@bcm4908_enet_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @bcm4908_enet_open, ptr @bcm4908_enet_stop, ptr @bcm4908_enet_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm4908_enet_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@bcm4908_enet_dma_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to alloc TX buf descriptors: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm4908_enet_dma_alloc\00", [41 x i8] zeroinitializer }, align 32
@bcm4908_enet_dma_alloc._entry_ptr = internal global ptr @bcm4908_enet_dma_alloc._entry, section ".printk_index", align 4
@bcm4908_enet_dma_alloc._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to alloc RX buf descriptors: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@bcm4908_enet_dma_alloc._entry_ptr.12 = internal global ptr @bcm4908_enet_dma_alloc._entry.10, section ".printk_index", align 4
@bcm4908_dma_alloc_buf_descs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid DMA ring alignment\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcm4908_dma_alloc_buf_descs\00", [36 x i8] zeroinitializer }, align 32
@bcm4908_dma_alloc_buf_descs._entry_ptr = internal global ptr @bcm4908_dma_alloc_buf_descs._entry, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enet\00", [27 x i8] zeroinitializer }, align 32
@bcm4908_enet_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm4908_enet_open\00", [46 x i8] zeroinitializer }, align 32
@bcm4908_enet_open._entry_ptr = internal global ptr @bcm4908_enet_open._entry, section ".printk_index", align 4
@bcm4908_enet_open._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 457, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@bcm4908_enet_open._entry_ptr.19 = internal global ptr @bcm4908_enet_open._entry.18, section ".printk_index", align 4
@bcm4908_enet_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to alloc RX buffer: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm4908_enet_dma_init\00", [42 x i8] zeroinitializer }, align 32
@bcm4908_enet_dma_init._entry_ptr = internal global ptr @bcm4908_enet_dma_init._entry, section ".printk_index", align 4
@bcm4908_enet_dma_alloc_rx_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to map DMA buffer: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bcm4908_enet_dma_alloc_rx_buf\00", [34 x i8] zeroinitializer }, align 32
@bcm4908_enet_dma_alloc_rx_buf._entry_ptr = internal global ptr @bcm4908_enet_dma_alloc_rx_buf._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcm4908_enet_dma_rx_ring_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 383, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timeout waiting for DMA TX stop\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bcm4908_enet_dma_rx_ring_disable\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm4908_enet_dma_rx_ring_disable._entry_ptr = internal global ptr @bcm4908_enet_dma_rx_ring_disable._entry, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"bcm4908_enet_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 756, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 758, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"bcm4908_enet_of_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 751, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 699, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 703, i32 46 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 707, i32 47 }
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"bcm4908_enet_netdev_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 674, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 216, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 226, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 169, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 446, i32 62 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 448, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 456, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 336, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 272, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 326, i32 6 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [48 x i8] c"../drivers/net/ethernet/broadcom/bcm4908_enet.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 383, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__exitcall_bcm4908_enet_driver_exit, ptr @__initcall__kmod_bcm4908_enet__351_764_bcm4908_enet_driver_init6, ptr @bcm4908_dma_alloc_buf_descs._entry, ptr @bcm4908_dma_alloc_buf_descs._entry_ptr, ptr @bcm4908_enet_dma_alloc._entry, ptr @bcm4908_enet_dma_alloc._entry.10, ptr @bcm4908_enet_dma_alloc._entry_ptr, ptr @bcm4908_enet_dma_alloc._entry_ptr.12, ptr @bcm4908_enet_dma_alloc_rx_buf._entry, ptr @bcm4908_enet_dma_alloc_rx_buf._entry_ptr, ptr @bcm4908_enet_dma_init._entry, ptr @bcm4908_enet_dma_init._entry_ptr, ptr @bcm4908_enet_dma_rx_ring_disable._entry, ptr @bcm4908_enet_dma_rx_ring_disable._entry_ptr, ptr @bcm4908_enet_driver_exit, ptr @bcm4908_enet_open._entry, ptr @bcm4908_enet_open._entry.18, ptr @bcm4908_enet_open._entry_ptr, ptr @bcm4908_enet_open._entry_ptr.19, ptr @bcm4908_enet_probe._entry, ptr @bcm4908_enet_probe._entry_ptr, ptr @bcm4908_enet_driver, ptr @.str, ptr @bcm4908_enet_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @bcm4908_enet_netdev_ops, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_enet_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_enet_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_enet_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_enet_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_enet_dma_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_enet_dma_alloc._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_dma_alloc_buf_descs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_enet_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_enet_open._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_enet_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_enet_dma_alloc_rx_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_enet_dma_rx_ring_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm4908_enet_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm4908_enet_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm4908_enet_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm4908_enet_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm4908_enet_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %dev1, i32 noundef 544, i32 noundef 1, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %add.ptr.i, align 8
  %netdev4 = getelementptr i8, ptr %call, i32 2308
  %1 = ptrtoint ptr %netdev4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %netdev4, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr i8, ptr %call, i32 2312
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %3) #10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.6) #7
  %irq = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call14, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %call19 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.7) #7
  %irq_tx = getelementptr i8, ptr %call, i32 2316
  %8 = ptrtoint ptr %irq_tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call19, ptr %irq_tx, align 4
  %call20 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %tx_ring1.i = getelementptr i8, ptr %call, i32 2320
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %length.i = getelementptr i8, ptr %call, i32 2332
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 200, ptr %length.i, align 4
  %12 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %tx_ring1.i, align 8
  %cfg_block.i = getelementptr i8, ptr %call, i32 2336
  %13 = ptrtoint ptr %cfg_block.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2576, ptr %cfg_block.i, align 8
  %st_ram_block.i = getelementptr i8, ptr %call, i32 2338
  %14 = ptrtoint ptr %st_ram_block.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 3088, ptr %st_ram_block.i, align 2
  %call.i = tail call fastcc i32 @bcm4908_dma_alloc_buf_descs(ptr noundef %add.ptr.i, ptr noundef %tx_ring1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.8, i32 noundef %call.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end23
  %rx_ring2.i = getelementptr i8, ptr %call, i32 2584
  %length4.i = getelementptr i8, ptr %call, i32 2596
  %15 = ptrtoint ptr %length4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 200, ptr %length4.i, align 4
  %16 = ptrtoint ptr %rx_ring2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rx_ring2.i, align 8
  %cfg_block6.i = getelementptr i8, ptr %call, i32 2600
  %17 = ptrtoint ptr %cfg_block6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2560, ptr %cfg_block6.i, align 8
  %st_ram_block7.i = getelementptr i8, ptr %call, i32 2602
  %18 = ptrtoint ptr %st_ram_block7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 3072, ptr %st_ram_block7.i, align 2
  %call8.i = tail call fastcc i32 @bcm4908_dma_alloc_buf_descs(ptr noundef %add.ptr.i, ptr noundef %rx_ring2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end27, label %do.end13.i

do.end13.i:                                       ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.11, i32 noundef %call8.i) #10
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %21 = getelementptr i8, ptr %call, i32 2832
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %do.end13.i.if.end.i.i_crit_edge, label %if.then.i.i

do.end13.i.if.end.i.i_crit_edge:                  ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %length4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length4.i, align 4
  %mul.i.i = shl i32 %25, 3
  %dma_addr.i.i = getelementptr i8, ptr %call, i32 2836
  %26 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_addr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef %mul.i.i, ptr noundef nonnull %23, i32 noundef %27, i32 noundef 0) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %do.end13.i.if.end.i.i_crit_edge
  %slots.i.i = getelementptr i8, ptr %call, i32 2840
  %28 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %slots.i.i, align 8
  tail call void @kfree(ptr noundef %29) #7
  %30 = getelementptr i8, ptr %call, i32 2568
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %tobool6.not.i.i = icmp eq ptr %32, null
  br i1 %tobool6.not.i.i, label %if.end.i.i.bcm4908_enet_dma_free.exit.i_crit_edge, label %if.then7.i.i

if.end.i.i.bcm4908_enet_dma_free.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm4908_enet_dma_free.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length.i, align 4
  %mul5.i.i = shl i32 %34, 3
  %dma_addr8.i.i = getelementptr i8, ptr %call, i32 2572
  %35 = ptrtoint ptr %dma_addr8.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_addr8.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef %mul5.i.i, ptr noundef nonnull %32, i32 noundef %36, i32 noundef 0) #7
  br label %bcm4908_enet_dma_free.exit.i

bcm4908_enet_dma_free.exit.i:                     ; preds = %if.then7.i.i, %if.end.i.i.bcm4908_enet_dma_free.exit.i_crit_edge
  %slots10.i.i = getelementptr i8, ptr %call, i32 2576
  %37 = ptrtoint ptr %slots10.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %slots10.i.i, align 8
  tail call void @kfree(ptr noundef %38) #7
  br label %cleanup

if.end27:                                         ; preds = %if.end.i
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %39 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev1, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %40 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node, align 8
  %call30 = tail call i32 @of_get_ethdev_address(ptr noundef %41, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end27.if.end33_crit_edge, label %if.then32

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #7
  %42 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #7
  %43 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %addr.i, align 1
  %45 = and i8 %44, -4
  %46 = or i8 %45, 2
  store i8 %46, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #7
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 55
  %47 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end27.if.end33_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %48 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @bcm4908_enet_netdev_ops, ptr %netdev_ops, align 8
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %49 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 60, ptr %min_mtu, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 20
  %50 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1500, ptr %mtu, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %51 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1500, ptr %max_mtu, align 4
  %napi = getelementptr i8, ptr %call, i32 2344
  %state.i = getelementptr i8, ptr %call, i32 2352
  call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #7
  call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @bcm4908_enet_poll_tx, i32 noundef 64) #7
  %napi34 = getelementptr i8, ptr %call, i32 2608
  call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi34, ptr noundef nonnull @bcm4908_enet_poll_rx, i32 noundef 64) #7
  %call35 = call i32 @register_netdev(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end33
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 8
  %54 = getelementptr i8, ptr %call, i32 2832
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %tobool.not.i83 = icmp eq ptr %56, null
  br i1 %tobool.not.i83, label %if.then37.if.end.i85_crit_edge, label %if.then.i

if.then37.if.end.i85_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i85

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %length4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length4.i, align 4
  %mul.i = shl i32 %58, 3
  %dma_addr.i = getelementptr i8, ptr %call, i32 2836
  %59 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %53, i32 noundef %mul.i, ptr noundef nonnull %56, i32 noundef %60, i32 noundef 0) #7
  br label %if.end.i85

if.end.i85:                                       ; preds = %if.then.i, %if.then37.if.end.i85_crit_edge
  %slots.i = getelementptr i8, ptr %call, i32 2840
  %61 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %slots.i, align 8
  call void @kfree(ptr noundef %62) #7
  %63 = getelementptr i8, ptr %call, i32 2568
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %tobool6.not.i = icmp eq ptr %65, null
  br i1 %tobool6.not.i, label %if.end.i85.bcm4908_enet_dma_free.exit_crit_edge, label %if.then7.i

if.end.i85.bcm4908_enet_dma_free.exit_crit_edge:  ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm4908_enet_dma_free.exit

if.then7.i:                                       ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %length.i, align 4
  %mul5.i = shl i32 %67, 3
  %dma_addr8.i = getelementptr i8, ptr %call, i32 2572
  %68 = ptrtoint ptr %dma_addr8.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_addr8.i, align 4
  call void @dma_free_attrs(ptr noundef %53, i32 noundef %mul5.i, ptr noundef nonnull %65, i32 noundef %69, i32 noundef 0) #7
  br label %bcm4908_enet_dma_free.exit

bcm4908_enet_dma_free.exit:                       ; preds = %if.then7.i, %if.end.i85.bcm4908_enet_dma_free.exit_crit_edge
  %slots10.i = getelementptr i8, ptr %call, i32 2576
  %70 = ptrtoint ptr %slots10.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %slots10.i, align 8
  call void @kfree(ptr noundef %71) #7
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %bcm4908_enet_dma_free.exit, %bcm4908_enet_dma_free.exit.i, %do.end.i, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ %call35, %bcm4908_enet_dma_free.exit ], [ 0, %if.end38 ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call20, %if.end18.cleanup_crit_edge ], [ %call8.i, %bcm4908_enet_dma_free.exit.i ], [ %call.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm4908_enet_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev = getelementptr inbounds %struct.bcm4908_enet, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void @unregister_netdev(ptr noundef %3) #7
  %napi = getelementptr inbounds %struct.bcm4908_enet, ptr %1, i32 0, i32 5, i32 6
  tail call void @__netif_napi_del(ptr noundef %napi) #7
  tail call void @synchronize_net() #7
  %napi1 = getelementptr inbounds %struct.bcm4908_enet, ptr %1, i32 0, i32 4, i32 6
  tail call void @__netif_napi_del(ptr noundef %napi1) #7
  tail call void @synchronize_net() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = getelementptr inbounds %struct.bcm4908_enet, ptr %1, i32 0, i32 5, i32 7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %length.i = getelementptr inbounds %struct.bcm4908_enet, ptr %1, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 4
  %mul.i = shl i32 %10, 3
  %dma_addr.i = getelementptr inbounds %struct.bcm4908_enet, ptr %1, i32 0, i32 5, i32 8
  %11 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %mul.i, ptr noundef nonnull %8, i32 noundef %12, i32 noundef 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %slots.i = getelementptr inbounds %struct.bcm4908_enet, ptr %1, i32 0, i32 5, i32 9
  %13 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slots.i, align 8
  tail call void @kfree(ptr noundef %14) #7
  %15 = getelementptr inbounds %struct.bcm4908_enet, ptr %1, i32 0, i32 4, i32 7
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %tobool6.not.i = icmp eq ptr %17, null
  br i1 %tobool6.not.i, label %if.end.i.bcm4908_enet_dma_free.exit_crit_edge, label %if.then7.i

if.end.i.bcm4908_enet_dma_free.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm4908_enet_dma_free.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %length4.i = getelementptr inbounds %struct.bcm4908_enet, ptr %1, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %length4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length4.i, align 4
  %mul5.i = shl i32 %19, 3
  %dma_addr8.i = getelementptr inbounds %struct.bcm4908_enet, ptr %1, i32 0, i32 4, i32 8
  %20 = ptrtoint ptr %dma_addr8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_addr8.i, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %mul5.i, ptr noundef nonnull %17, i32 noundef %21, i32 noundef 0) #7
  br label %bcm4908_enet_dma_free.exit

bcm4908_enet_dma_free.exit:                       ; preds = %if.then7.i, %if.end.i.bcm4908_enet_dma_free.exit_crit_edge
  %slots10.i = getelementptr inbounds %struct.bcm4908_enet, ptr %1, i32 0, i32 4, i32 9
  %22 = ptrtoint ptr %slots10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slots10.i, align 8
  tail call void @kfree(ptr noundef %23) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm4908_enet_poll_tx(ptr noundef %napi, i32 noundef %weight) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %napi, i32 -40
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %weight)
  %cmp47 = icmp sgt i32 %weight, 0
  br i1 %cmp47, label %land.rhs.lr.ph, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.rhs.lr.ph:                                   ; preds = %entry
  %read_idx = getelementptr i8, ptr %napi, i32 -20
  %write_idx = getelementptr i8, ptr %napi, i32 -16
  %2 = getelementptr i8, ptr %napi, i32 224
  %slots = getelementptr i8, ptr %napi, i32 232
  %length = getelementptr i8, ptr %napi, i32 -12
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %handled.048 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc14, %if.end.land.rhs_crit_edge ]
  %3 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_idx, align 4
  %5 = ptrtoint ptr %write_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %write_idx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp5.not = icmp eq i32 %4, %6
  br i1 %cmp5.not, label %land.rhs.if.then16_crit_edge, label %while.body

land.rhs.if.then16_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

while.body:                                       ; preds = %land.rhs
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 8
  %arrayidx = getelementptr %struct.bcm4908_enet_dma_ring_bd, ptr %8, i32 %4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %arrayidx, align 1
  %11 = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %while.body.if.then16_crit_edge

while.body.if.then16_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end:                                           ; preds = %while.body
  %12 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slots, align 8
  %arrayidx8 = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %13, i32 %4
  %dma_addr = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %13, i32 %4, i32 2
  %14 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr, align 4
  %len = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %13, i32 %4, i32 1
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %15, i32 noundef %17, i32 noundef 1, i32 noundef 0) #7
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx8, align 4
  tail call void @consume_skb(ptr noundef %19) #7
  %20 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read_idx, align 4
  %inc = add i32 %21, 1
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %23)
  %cmp10 = icmp eq i32 %inc, %23
  %spec.store.select = select i1 %cmp10, i32 0, i32 %inc
  %24 = ptrtoint ptr %read_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.store.select, ptr %read_idx, align 4
  %inc14 = add nuw nsw i32 %handled.048, 1
  %exitcond.not = icmp eq i32 %inc14, %weight
  br i1 %exitcond.not, label %if.end.if.end17_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %while.body.if.then16_crit_edge, %land.rhs.if.then16_crit_edge
  %call = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %handled.048) #7
  %cfg_block.i = getelementptr i8, ptr %napi, i32 -8
  %25 = ptrtoint ptr %cfg_block.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cfg_block.i, align 8
  %add.i = add i16 %26, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %base.i.i = getelementptr i8, ptr %napi, i32 -32
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 8
  %conv.i.i = zext i16 %add.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 117440512) #7, !srcloc !80
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  %handled.046 = phi i32 [ %handled.048, %if.then16 ], [ 0, %entry.if.end17_crit_edge ], [ %weight, %if.end.if.end17_crit_edge ]
  %netdev = getelementptr i8, ptr %napi, i32 -36
  %29 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 103
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 13
  %33 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_tx_wake_queue(ptr noundef %32) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  ret i32 %handled.046
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm4908_enet_poll_rx(ptr noundef %napi, i32 noundef %weight) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %napi, i32 -304
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %weight)
  %cmp97 = icmp sgt i32 %weight, 0
  br i1 %cmp97, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = getelementptr i8, ptr %napi, i32 224
  %read_idx = getelementptr i8, ptr %napi, i32 -20
  %slots = getelementptr i8, ptr %napi, i32 232
  %length = getelementptr i8, ptr %napi, i32 -12
  %netdev36 = getelementptr i8, ptr %napi, i32 -300
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %handled.098 = phi i32 [ 0, %while.body.lr.ph ], [ %inc46, %cleanup.while.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %read_idx, align 4
  %arrayidx = getelementptr %struct.bcm4908_enet_dma_ring_bd, ptr %4, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %arrayidx, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %while.body
  %10 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slots, align 8
  %arrayidx11 = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %11, i32 %6
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %slot.sroa.0.0.copyload = load ptr, ptr %arrayidx11, align 4
  %slot.sroa.9.0.arrayidx11.sroa_idx = getelementptr inbounds i8, ptr %arrayidx11, i32 4
  %13 = ptrtoint ptr %slot.sroa.9.0.arrayidx11.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %slot.sroa.9.0.copyload = load i32, ptr %slot.sroa.9.0.arrayidx11.sroa_idx, align 4
  %slot.sroa.11.0.arrayidx11.sroa_idx = getelementptr inbounds i8, ptr %arrayidx11, i32 8
  %14 = ptrtoint ptr %slot.sroa.11.0.arrayidx11.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %slot.sroa.11.0.copyload = load i32, ptr %slot.sroa.11.0.arrayidx11.sroa_idx, align 4
  %call = tail call fastcc i32 @bcm4908_enet_dma_alloc_rx_buf(ptr noundef %add.ptr3, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end16:                                         ; preds = %if.end
  %15 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read_idx, align 4
  %inc = add i32 %16, 1
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %18)
  %cmp20 = icmp eq i32 %inc, %18
  %spec.store.select = select i1 %cmp20, i32 0, i32 %inc
  %19 = ptrtoint ptr %read_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select, ptr %read_idx, align 4
  %and25 = lshr i32 %9, 16
  %shr = and i32 %and25, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %shr)
  %cmp26 = icmp ugt i32 %shr, 59
  %and27 = and i32 %9, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %and27)
  %cmp28.not = icmp eq i32 %and27, 24576
  %or.cond = select i1 %cmp26, i1 %cmp28.not, i1 false
  br i1 %or.cond, label %cleanup, label %if.then29

if.then29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %slot.sroa.0.0.copyload, i32 noundef 0) #7
  %20 = ptrtoint ptr %netdev36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev36, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 36, i32 6
  %22 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_dropped, align 8
  %inc30 = add i32 %23, 1
  store i32 %inc30, ptr %rx_dropped, align 8
  br label %while.end

cleanup:                                          ; preds = %if.end16
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %slot.sroa.11.0.copyload, i32 noundef %slot.sroa.9.0.copyload, i32 noundef 2, i32 noundef 0) #7
  %sub = add nsw i32 %shr, -4
  %call34 = tail call ptr @skb_put(ptr noundef %slot.sroa.0.0.copyload, i32 noundef %sub) #7
  %24 = ptrtoint ptr %netdev36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev36, align 4
  %call37 = tail call zeroext i16 @eth_type_trans(ptr noundef %slot.sroa.0.0.copyload, ptr noundef %25) #7
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %slot.sroa.0.0.copyload, i32 0, i32 15, i32 0, i32 18
  %26 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %call37, ptr %protocol, align 8
  %call40 = tail call i32 @netif_receive_skb(ptr noundef %slot.sroa.0.0.copyload) #7
  %27 = ptrtoint ptr %netdev36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev36, align 4
  %stats42 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 36
  %29 = ptrtoint ptr %stats42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stats42, align 8
  %inc43 = add i32 %30, 1
  store i32 %inc43, ptr %stats42, align 8
  %31 = load ptr, ptr %netdev36, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 36, i32 2
  %32 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %33, %shr
  store i32 %add, ptr %rx_bytes, align 8
  %inc46 = add nuw nsw i32 %handled.098, 1
  %exitcond.not = icmp eq i32 %inc46, %weight
  br i1 %exitcond.not, label %cleanup.if.end54_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.if.end54_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

while.end:                                        ; preds = %if.then29, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %handled.096 = phi i32 [ %handled.098, %if.then29 ], [ 0, %entry.while.end_crit_edge ], [ %handled.098, %if.end.while.end_crit_edge ], [ %handled.098, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %handled.096, i32 %weight)
  %cmp51 = icmp slt i32 %handled.096, %weight
  br i1 %cmp51, label %if.then52, label %while.end.if.end54_crit_edge

while.end.if.end54_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then52:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call53 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %handled.096) #7
  %cfg_block.i = getelementptr i8, ptr %napi, i32 -8
  %34 = ptrtoint ptr %cfg_block.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cfg_block.i, align 8
  %add.i = add i16 %35, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %base.i.i = getelementptr i8, ptr %napi, i32 -296
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 8
  %conv.i.i = zext i16 %add.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 117440512) #7, !srcloc !80
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %while.end.if.end54_crit_edge, %cleanup.if.end54_crit_edge
  %handled.096104 = phi i32 [ %handled.096, %if.then52 ], [ %handled.096, %while.end.if.end54_crit_edge ], [ %weight, %cleanup.if.end54_crit_edge ]
  %cfg_block.i91 = getelementptr i8, ptr %napi, i32 -8
  %38 = ptrtoint ptr %cfg_block.i91 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %cfg_block.i91, align 8
  %base.i.i.i.i = getelementptr i8, ptr %napi, i32 -296
  %40 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i.i.i.i = zext i16 %39 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %41, i32 %conv.i.i.i.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %43 = or i32 %42, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i32.i.i.i = getelementptr i8, ptr %45, i32 %conv.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i.i, i32 %43) #7, !srcloc !80
  ret i32 %handled.096104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm4908_dma_alloc_buf_descs(ptr nocapture noundef readonly %enet, ptr noundef %ring) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.bcm4908_enet_dma_ring, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %mul = shl i32 %1, 3
  %2 = ptrtoint ptr %enet to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enet, align 8
  %dma_addr = getelementptr inbounds %struct.bcm4908_enet_dma_ring, ptr %ring, i32 0, i32 8
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %dma_addr, i32 noundef 3264, i32 noundef 0) #7
  %4 = getelementptr inbounds %struct.bcm4908_enet_dma_ring, ptr %ring, i32 0, i32 7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %4, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  %and = and i32 %6, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13) #10
  br label %err_free_buf_descs

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 12) #7
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !83

kcalloc.exit.thread:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %slots27 = getelementptr inbounds %struct.bcm4908_enet_dma_ring, ptr %ring, i32 0, i32 9
  %11 = ptrtoint ptr %slots27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %slots27, align 8
  br label %err_free_buf_descs

if.end7.i.i:                                      ; preds = %if.end4
  %12 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #11
  %slots = getelementptr inbounds %struct.bcm4908_enet_dma_ring, ptr %ring, i32 0, i32 9
  %13 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i, ptr %slots, align 8
  %tobool8.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not, label %if.end7.i.i.err_free_buf_descs_crit_edge, label %if.end7.i.i.cleanup_crit_edge

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i.err_free_buf_descs_crit_edge:         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_buf_descs

err_free_buf_descs:                               ; preds = %if.end7.i.i.err_free_buf_descs_crit_edge, %kcalloc.exit.thread, %do.end
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %4, align 8
  %16 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %15, i32 noundef %17, i32 noundef 0) #7
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %4, align 8
  br label %cleanup

cleanup:                                          ; preds = %err_free_buf_descs, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_free_buf_descs ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end7.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm4908_enet_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tx_ring1 = getelementptr i8, ptr %netdev, i32 2320
  %rx_ring2 = getelementptr i8, ptr %netdev, i32 2584
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %irq = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @bcm4908_enet_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_tx = getelementptr i8, ptr %netdev, i32 2316
  %6 = ptrtoint ptr %irq_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.then6, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then6:                                         ; preds = %if.end
  %call.i65 = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @bcm4908_enet_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool9.not = icmp eq i32 %call.i65, 0
  br i1 %tobool9.not, label %if.then6.if.end18_crit_edge, label %do.end13

if.then6.if.end18_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end13:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %irq_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_tx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %9, i32 noundef %call.i65) #10
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call16 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %add.ptr.i) #7
  br label %cleanup

if.end18:                                         ; preds = %if.then6.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %netdev.i = getelementptr i8, ptr %netdev, i32 2308
  %12 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu.i, align 4
  %add.i.i = add i32 %15, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #7
  %base.i.i.i.i = getelementptr i8, ptr %netdev, i32 2312
  %17 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %18, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %16) #7, !srcloc !80
  %19 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 1032
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !81
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %or.i = or i32 %22, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %24 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i24.i = getelementptr i8, ptr %25, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24.i, i32 %23) #7, !srcloc !80
  %and.i = and i32 %22, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %27 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i26.i = getelementptr i8, ptr %28, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26.i, i32 %26) #7, !srcloc !80
  %29 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i.i28.i = getelementptr i8, ptr %30, i32 52
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i28.i) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %32 = or i32 %31, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i32.i.i.i = getelementptr i8, ptr %34, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i.i, i32 %32) #7, !srcloc !80
  %35 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i30.i = getelementptr i8, ptr %36, i32 52
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30.i) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %38 = and i32 %37, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i32.i.i = getelementptr i8, ptr %40, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i, i32 %38) #7, !srcloc !80
  %41 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i.i32.i = getelementptr i8, ptr %42, i32 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i32.i) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %44 = or i32 %43, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i32.i.i34.i = getelementptr i8, ptr %46, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i34.i, i32 %44) #7, !srcloc !80
  %47 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i36.i = getelementptr i8, ptr %48, i32 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36.i) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %50 = and i32 %49, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i32.i38.i = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i38.i, i32 %50) #7, !srcloc !80
  %53 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i40.i = getelementptr i8, ptr %54, i32 1032
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40.i) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %56 = and i32 %55, -251658241
  %57 = or i32 %56, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i42.i = getelementptr i8, ptr %59, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i42.i, i32 %57) #7, !srcloc !80
  %60 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i44.i = getelementptr i8, ptr %61, i32 40
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44.i) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %63 = and i32 %62, -520093697
  %64 = or i32 %63, 436207616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i32.i46.i = getelementptr i8, ptr %66, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i46.i, i32 %64) #7, !srcloc !80
  %cfg_block.i = getelementptr i8, ptr %netdev, i32 2600
  %67 = ptrtoint ptr %cfg_block.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %cfg_block.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i.i = zext i16 %68 to i32
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !80
  %cfg_block.1.i = getelementptr i8, ptr %netdev, i32 2336
  %71 = ptrtoint ptr %cfg_block.1.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %cfg_block.1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %73 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i.1.i = zext i16 %72 to i32
  %add.ptr.i.1.i = getelementptr i8, ptr %74, i32 %conv.i.1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 0) #7, !srcloc !80
  %75 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i.i66 = getelementptr i8, ptr %76, i32 2048
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i66) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %78 = and i32 %77, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %79 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i32.i.i67 = getelementptr i8, ptr %80, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i67, i32 %78) #7, !srcloc !80
  %st_ram_block.i = getelementptr i8, ptr %netdev, i32 2602
  %81 = ptrtoint ptr %st_ram_block.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %st_ram_block.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %83 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i41.i = zext i16 %82 to i32
  %add.ptr.i42.i = getelementptr i8, ptr %84, i32 %conv.i41.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 0) #7, !srcloc !80
  %85 = ptrtoint ptr %st_ram_block.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %st_ram_block.i, align 2
  %add12.i = add i16 %86, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %87 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i44.i = zext i16 %add12.i to i32
  %add.ptr.i45.i = getelementptr i8, ptr %88, i32 %conv.i44.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 0) #7, !srcloc !80
  %89 = ptrtoint ptr %st_ram_block.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %st_ram_block.i, align 2
  %add16.i = add i16 %90, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %91 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i47.i = zext i16 %add16.i to i32
  %add.ptr.i48.i = getelementptr i8, ptr %92, i32 %conv.i47.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 0) #7, !srcloc !80
  %93 = ptrtoint ptr %st_ram_block.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %st_ram_block.i, align 2
  %add20.i = add i16 %94, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %95 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i50.i = zext i16 %add20.i to i32
  %add.ptr.i51.i = getelementptr i8, ptr %96, i32 %conv.i50.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 0) #7, !srcloc !80
  %st_ram_block.1.i = getelementptr i8, ptr %netdev, i32 2338
  %97 = ptrtoint ptr %st_ram_block.1.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %st_ram_block.1.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %99 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i41.1.i = zext i16 %98 to i32
  %add.ptr.i42.1.i = getelementptr i8, ptr %100, i32 %conv.i41.1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.1.i, i32 0) #7, !srcloc !80
  %101 = ptrtoint ptr %st_ram_block.1.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %st_ram_block.1.i, align 2
  %add12.1.i = add i16 %102, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %103 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i44.1.i = zext i16 %add12.1.i to i32
  %add.ptr.i45.1.i = getelementptr i8, ptr %104, i32 %conv.i44.1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.1.i, i32 0) #7, !srcloc !80
  %105 = ptrtoint ptr %st_ram_block.1.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %st_ram_block.1.i, align 2
  %add16.1.i = add i16 %106, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %107 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i47.1.i = zext i16 %add16.1.i to i32
  %add.ptr.i48.1.i = getelementptr i8, ptr %108, i32 %conv.i47.1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.1.i, i32 0) #7, !srcloc !80
  %109 = ptrtoint ptr %st_ram_block.1.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %st_ram_block.1.i, align 2
  %add20.1.i = add i16 %110, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %111 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i50.1.i = zext i16 %add20.1.i to i32
  %add.ptr.i51.1.i = getelementptr i8, ptr %112, i32 %conv.i50.1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.1.i, i32 0) #7, !srcloc !80
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr.i, align 8
  %length.i = getelementptr i8, ptr %netdev, i32 2596
  %115 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp2.i = icmp sgt i32 %116, 0
  br i1 %cmp2.i, label %if.end18.for.body.i_crit_edge, label %if.end18.for.end.i_crit_edge

if.end18.for.end.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %117 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %length.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %118
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end18.for.body.i_crit_edge ]
  %call.i68 = tail call fastcc i32 @bcm4908_enet_dma_alloc_rx_buf(ptr noundef %add.ptr.i, i32 noundef %i.03.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i, label %for.cond.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.20, i32 noundef %call.i68) #10
  %119 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i, align 8
  %121 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %length.i, align 4
  %i.013.i.i = add i32 %122, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.013.i.i)
  %cmp14.i.i = icmp sgt i32 %i.013.i.i, -1
  br i1 %cmp14.i.i, label %for.body.lr.ph.i.i, label %do.end.i.bcm4908_enet_dma_init.exit_crit_edge

do.end.i.bcm4908_enet_dma_init.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm4908_enet_dma_init.exit

for.body.lr.ph.i.i:                               ; preds = %do.end.i
  %slots.i.i = getelementptr i8, ptr %netdev, i32 2840
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.015.i.i = phi i32 [ %i.013.i.i, %for.body.lr.ph.i.i ], [ %i.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %123 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %slots.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %124, i32 %i.015.i.i
  %125 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %126, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma_addr.i.i = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %124, i32 %i.015.i.i, i32 2
  %127 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dma_addr.i.i, align 4
  %len.i.i = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %124, i32 %i.015.i.i, i32 1
  %129 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %120, i32 noundef %128, i32 noundef %130, i32 noundef 2, i32 noundef 0) #7
  %131 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %132, i32 noundef 0) #7
  %133 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %i.0.i.i = add i32 %i.015.i.i, -1
  %cmp.i.i = icmp sgt i32 %i.0.i.i, -1
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.bcm4908_enet_dma_init.exit_crit_edge

for.inc.i.i.bcm4908_enet_dma_init.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm4908_enet_dma_init.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.end18.for.end.i_crit_edge
  tail call fastcc void @bcm4908_enet_dma_ring_init(ptr noundef %add.ptr.i, ptr noundef %tx_ring1) #7
  tail call fastcc void @bcm4908_enet_dma_ring_init(ptr noundef %add.ptr.i, ptr noundef %rx_ring2) #7
  br label %bcm4908_enet_dma_init.exit

bcm4908_enet_dma_init.exit:                       ; preds = %for.end.i, %for.inc.i.i.bcm4908_enet_dma_init.exit_crit_edge, %do.end.i.bcm4908_enet_dma_init.exit_crit_edge
  %134 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i.i.i70 = getelementptr i8, ptr %135, i32 1032
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i70) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %137 = or i32 %136, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %138 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i32.i.i.i71 = getelementptr i8, ptr %139, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i.i71, i32 %137) #7, !srcloc !80
  %140 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i.i72 = getelementptr i8, ptr %141, i32 2048
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i72) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %143 = or i32 %142, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %144 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i32.i.i73 = getelementptr i8, ptr %145, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i73, i32 %143) #7, !srcloc !80
  %146 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i75 = getelementptr i8, ptr %147, i32 2048
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %149 = and i32 %148, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %150 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %151, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %149) #7, !srcloc !80
  %152 = ptrtoint ptr %irq_tx to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %irq_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp21 = icmp sgt i32 %153, 0
  br i1 %cmp21, label %if.then22, label %bcm4908_enet_dma_init.exit.if.end23_crit_edge

bcm4908_enet_dma_init.exit.if.end23_crit_edge:    ; preds = %bcm4908_enet_dma_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then22:                                        ; preds = %bcm4908_enet_dma_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %napi = getelementptr i8, ptr %netdev, i32 2344
  tail call void @napi_enable(ptr noundef %napi) #7
  %154 = ptrtoint ptr %cfg_block.1.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %cfg_block.1.i, align 8
  %add.i = add i16 %155, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %156 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i.i78 = zext i16 %add.i to i32
  %add.ptr.i.i79 = getelementptr i8, ptr %157, i32 %conv.i.i78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i79, i32 117440512) #7, !srcloc !80
  %158 = ptrtoint ptr %cfg_block.1.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %cfg_block.1.i, align 8
  %add.i81 = add i16 %159, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %160 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i.i83 = zext i16 %add.i81 to i32
  %add.ptr.i.i84 = getelementptr i8, ptr %161, i32 %conv.i.i83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84, i32 117440512) #7, !srcloc !80
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %bcm4908_enet_dma_init.exit.if.end23_crit_edge
  %162 = ptrtoint ptr %cfg_block.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %cfg_block.i, align 8
  %164 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i.i.i.i = zext i16 %163 to i32
  %add.ptr.i.i.i.i87 = getelementptr i8, ptr %165, i32 %conv.i.i.i.i
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i87) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %167 = or i32 %166, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %168 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i32.i.i.i88 = getelementptr i8, ptr %169, i32 %conv.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i.i88, i32 %167) #7, !srcloc !80
  %napi24 = getelementptr i8, ptr %netdev, i32 2608
  tail call void @napi_enable(ptr noundef %napi24) #7
  tail call void @netif_carrier_on(ptr noundef %netdev) #7
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %170 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %171, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %172 = ptrtoint ptr %cfg_block.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %cfg_block.i, align 8
  %add.i90 = add i16 %173, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %174 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i.i92 = zext i16 %add.i90 to i32
  %add.ptr.i.i93 = getelementptr i8, ptr %175, i32 %conv.i.i92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i93, i32 117440512) #7, !srcloc !80
  %176 = ptrtoint ptr %cfg_block.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %cfg_block.i, align 8
  %add.i95 = add i16 %177, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %178 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i.i.i.i, align 8
  %conv.i.i97 = zext i16 %add.i95 to i32
  %add.ptr.i.i98 = getelementptr i8, ptr %179, i32 %conv.i.i97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i98, i32 117440512) #7, !srcloc !80
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end13, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i65, %do.end13 ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm4908_enet_stop(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  tail call void @netif_carrier_off(ptr noundef %netdev) #7
  %napi = getelementptr i8, ptr %netdev, i32 2608
  tail call void @napi_disable(ptr noundef %napi) #7
  %napi3 = getelementptr i8, ptr %netdev, i32 2344
  tail call void @napi_disable(ptr noundef %napi3) #7
  %cfg_block.i = getelementptr i8, ptr %netdev, i32 2600
  %2 = ptrtoint ptr %cfg_block.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cfg_block.i, align 8
  %base.i.i.i = getelementptr i8, ptr %netdev, i32 2312
  %4 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i.i, align 8
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i32.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i, i32 %7) #7, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 2000
  %spec.select.i.neg27.i = select i1 %cmp.i.i, i32 -1073741822, i32 -1
  %add2.neg.i = sub i32 %spec.select.i.neg27.i, %10
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %11 = ptrtoint ptr %cfg_block.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cfg_block.i, align 8
  %13 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.i, align 8
  %conv.i.i = zext i16 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.bcm4908_enet_dma_rx_ring_disable.exit_crit_edge, label %if.end.i

do.body.i.bcm4908_enet_dma_rx_ring_disable.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm4908_enet_dma_rx_ring_disable.exit

if.end.i:                                         ; preds = %do.body.i
  %17 = ptrtoint ptr %cfg_block.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cfg_block.i, align 8
  %19 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i, align 8
  %conv.i.i23.i = zext i16 %18 to i32
  %add.ptr.i.i24.i = getelementptr i8, ptr %20, i32 %conv.i.i23.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24.i) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %22 = and i32 %21, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i32.i26.i = getelementptr i8, ptr %24, i32 %conv.i.i23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i26.i, i32 %22) #7, !srcloc !80
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 30, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add2.neg.i, %25
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %do.end15.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.26) #10
  br label %bcm4908_enet_dma_rx_ring_disable.exit

bcm4908_enet_dma_rx_ring_disable.exit:            ; preds = %do.end15.i, %do.body.i.bcm4908_enet_dma_rx_ring_disable.exit_crit_edge
  %cfg_block.i21 = getelementptr i8, ptr %netdev, i32 2336
  %28 = ptrtoint ptr %cfg_block.i21 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cfg_block.i21, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i, align 8
  %conv.i.i22 = zext i16 %29 to i32
  %add.ptr.i.i23 = getelementptr i8, ptr %31, i32 %conv.i.i22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 0) #7, !srcloc !80
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %length.i = getelementptr i8, ptr %netdev, i32 2596
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i, align 4
  %i.013.i = add i32 %35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.013.i)
  %cmp14.i = icmp sgt i32 %i.013.i, -1
  br i1 %cmp14.i, label %for.body.lr.ph.i, label %bcm4908_enet_dma_rx_ring_disable.exit.bcm4908_enet_dma_uninit.exit_crit_edge

bcm4908_enet_dma_rx_ring_disable.exit.bcm4908_enet_dma_uninit.exit_crit_edge: ; preds = %bcm4908_enet_dma_rx_ring_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm4908_enet_dma_uninit.exit

for.body.lr.ph.i:                                 ; preds = %bcm4908_enet_dma_rx_ring_disable.exit
  %slots.i = getelementptr i8, ptr %netdev, i32 2840
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ %i.013.i, %for.body.lr.ph.i ], [ %i.0.i, %for.inc.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %slots.i, align 8
  %arrayidx.i = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %37, i32 %i.015.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i24 = icmp eq ptr %39, null
  br i1 %tobool.not.i24, label %for.body.i.for.inc.i_crit_edge, label %if.end.i25

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i25:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma_addr.i = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %37, i32 %i.015.i, i32 2
  %40 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_addr.i, align 4
  %len.i = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %37, i32 %i.015.i, i32 1
  %42 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %33, i32 noundef %41, i32 noundef %43, i32 noundef 2, i32 noundef 0) #7
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %45, i32 noundef 0) #7
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i25, %for.body.i.for.inc.i_crit_edge
  %i.0.i = add i32 %i.015.i, -1
  %cmp.i26 = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i26, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.bcm4908_enet_dma_uninit.exit_crit_edge

for.inc.i.bcm4908_enet_dma_uninit.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm4908_enet_dma_uninit.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

bcm4908_enet_dma_uninit.exit:                     ; preds = %for.inc.i.bcm4908_enet_dma_uninit.exit_crit_edge, %bcm4908_enet_dma_rx_ring_disable.exit.bcm4908_enet_dma_uninit.exit_crit_edge
  %irq_tx = getelementptr i8, ptr %netdev, i32 2316
  %47 = ptrtoint ptr %irq_tx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq_tx, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %48, ptr noundef %add.ptr.i) #7
  %netdev7 = getelementptr i8, ptr %netdev, i32 2308
  %49 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev7, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 64
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq, align 4
  %call8 = tail call ptr @free_irq(i32 noundef %52, ptr noundef %add.ptr.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm4908_enet_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %irq_tx = getelementptr i8, ptr %netdev, i32 2316
  %2 = ptrtoint ptr %irq_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = getelementptr i8, ptr %netdev, i32 2568
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %read_idx = getelementptr i8, ptr %netdev, i32 2324
  %7 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %read_idx, align 4
  %arrayidx = getelementptr %struct.bcm4908_enet_dma_ring_bd, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %arrayidx, align 1
  %11 = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %napi = getelementptr i8, ptr %netdev, i32 2344
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #7
  br i1 %call.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %read_idx3 = getelementptr i8, ptr %netdev, i32 2324
  %12 = ptrtoint ptr %read_idx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %read_idx3, align 4
  %write_idx = getelementptr i8, ptr %netdev, i32 2328
  %14 = ptrtoint ptr %write_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %write_idx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp4.not = icmp sgt i32 %13, %15
  %sub10 = sub i32 %13, %15
  br i1 %cmp4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %length = getelementptr i8, ptr %netdev, i32 2332
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %add = add i32 %sub10, %17
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end.if.end11_crit_edge
  %free_buf_descs.0 = phi i32 [ %add, %if.then5 ], [ %sub10, %if.end.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %free_buf_descs.0)
  %cmp12 = icmp slt i32 %free_buf_descs.0, 2
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %20 = getelementptr i8, ptr %netdev, i32 2568
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %arrayidx16 = getelementptr %struct.bcm4908_enet_dma_ring_bd, ptr %22, i32 %15
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %arrayidx16, align 1
  %25 = and i32 %24, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool19.not = icmp eq i32 %25, 0
  br i1 %tobool19.not, label %if.end23, label %if.then22, !prof !84

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i120 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i.i120 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i120, align 128
  %state.i.i121 = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i121) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %slots = getelementptr i8, ptr %netdev, i32 2576
  %28 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %slots, align 8
  %arrayidx25 = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %29, i32 %15
  %30 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %skb, ptr %arrayidx25, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %len27 = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %29, i32 %15, i32 1
  %33 = ptrtoint ptr %len27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %len27, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = load i32, ptr %len, align 4
  %call.i122 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %35) #7
  br i1 %call.i122, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end23
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i123, !prof !84

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i123:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %1) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i123.dev_name.exit.i_crit_edge

if.then.i123.dev_name.exit.i_crit_edge:           ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i123.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %40, %if.end.i.i ], [ %38, %if.then.i123.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %1, ptr noundef %35, i32 noundef %36) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %35 to i32
  %sub.i = add i32 %42, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i124 = getelementptr %struct.page, ptr %41, i32 %shr.i
  %and.i = and i32 %42, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %add.ptr.i124, i32 noundef %and.i, i32 noundef %36, i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %29, i32 %15, i32 2
  %43 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i, ptr %dma_addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end40

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %shl = shl i32 %45, 16
  %46 = ptrtoint ptr %write_idx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %write_idx, align 8
  %length47 = getelementptr i8, ptr %netdev, i32 2332
  %48 = ptrtoint ptr %length47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %length47, align 4
  %50 = add i32 %49, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %50)
  %cmp49 = icmp eq i32 %47, %50
  %spec.select.v = select i1 %cmp49, i32 61696, i32 57600
  %spec.select = or i32 %spec.select.v, %shl
  %51 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_addr, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %addr = getelementptr %struct.bcm4908_enet_dma_ring_bd, ptr %22, i32 %15, i32 1
  %54 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %addr, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %56 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %arrayidx16, align 1
  %cfg_block.i = getelementptr i8, ptr %netdev, i32 2336
  %57 = ptrtoint ptr %cfg_block.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %cfg_block.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %base.i.i = getelementptr i8, ptr %netdev, i32 2312
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 8
  %conv.i.i = zext i16 %58 to i32
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !80
  %61 = ptrtoint ptr %write_idx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %write_idx, align 8
  %inc = add i32 %62, 1
  %63 = ptrtoint ptr %length47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %length47, align 4
  %65 = add i32 %64, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %65)
  %cmp59 = icmp eq i32 %62, %65
  %spec.store.select = select i1 %cmp59, i32 0, i32 %inc
  %66 = ptrtoint ptr %write_idx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.store.select, ptr %write_idx, align 8
  %67 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len, align 4
  %netdev64 = getelementptr i8, ptr %netdev, i32 2308
  %69 = ptrtoint ptr %netdev64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev64, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 36, i32 3
  %71 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_bytes, align 4
  %add65 = add i32 %72, %68
  store i32 %add65, ptr %tx_bytes, align 4
  %73 = load ptr, ptr %netdev64, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 36, i32 1
  %74 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_packets, align 4
  %inc68 = add i32 %75, 1
  store i32 %inc68, ptr %tx_packets, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %dma_map_single_attrs.exit.cleanup_crit_edge, %if.then22, %if.then13
  %retval.0 = phi i32 [ 16, %if.then13 ], [ 16, %if.then22 ], [ 0, %if.end40 ], [ 16, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm4908_enet_change_mtu(ptr nocapture noundef readonly %netdev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %new_mtu, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %add.i) #7
  %base.i.i.i = getelementptr i8, ptr %netdev, i32 2312
  %1 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %0) #7, !srcloc !80
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm4908_enet_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_tx = getelementptr inbounds %struct.bcm4908_enet, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %irq_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %irq)
  %cmp = icmp eq i32 %1, %irq
  %tx_ring = getelementptr inbounds %struct.bcm4908_enet, ptr %dev_id, i32 0, i32 4
  %rx_ring = getelementptr inbounds %struct.bcm4908_enet, ptr %dev_id, i32 0, i32 5
  %cond = select i1 %cmp, ptr %tx_ring, ptr %rx_ring
  %cfg_block.i = getelementptr inbounds %struct.bcm4908_enet_dma_ring, ptr %cond, i32 0, i32 4
  %2 = ptrtoint ptr %cfg_block.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cfg_block.i, align 8
  %add.i = add i16 %3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %base.i.i = getelementptr inbounds %struct.bcm4908_enet, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 8
  %conv.i.i = zext i16 %add.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !80
  %6 = ptrtoint ptr %cfg_block.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cfg_block.i, align 8
  %add.i8 = add i16 %7, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 8
  %conv.i.i10 = zext i16 %add.i8 to i32
  %add.ptr.i.i11 = getelementptr i8, ptr %9, i32 %conv.i.i10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11, i32 117440512) #7, !srcloc !80
  %napi = getelementptr inbounds %struct.bcm4908_enet_dma_ring, ptr %cond, i32 0, i32 6
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #7
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi) #7
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm4908_enet_dma_alloc_rx_buf(ptr nocapture noundef readonly %enet, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.bcm4908_enet, ptr %enet, i32 0, i32 5, i32 7
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %arrayidx = getelementptr %struct.bcm4908_enet_dma_ring_bd, ptr %2, i32 %idx
  %slots = getelementptr inbounds %struct.bcm4908_enet, ptr %enet, i32 0, i32 5, i32 9
  %3 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slots, align 8
  %arrayidx2 = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %4, i32 %idx
  %5 = ptrtoint ptr %enet to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enet, align 8
  %len = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %4, i32 %idx, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1532, ptr %len, align 4
  %netdev = getelementptr inbounds %struct.bcm4908_enet, ptr %enet, i32 0, i32 1
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %9, i32 noundef 1532, i32 noundef 2592) #7
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %call.i50 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %12) #7
  br i1 %call.i50, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !84

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %6) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %6, ptr noundef %12, i32 noundef %14) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %12 to i32
  %sub.i = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %14, i32 noundef 2, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr = getelementptr %struct.bcm4908_enet_dma_ring_slot, ptr %4, i32 %idx, i32 2
  %21 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %dma_addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %6, i32 noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.end, label %if.end15

do.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.22, i32 noundef -12) #10
  %22 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx2, align 4
  tail call void @kfree_skb_reason(ptr noundef %23, i32 noundef 0) #7
  %24 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx2, align 4
  br label %cleanup

if.end15:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %shl = shl i32 %26, 16
  %length = getelementptr inbounds %struct.bcm4908_enet, ptr %enet, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length, align 4
  %sub = add i32 %28, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %idx)
  %cmp = icmp eq i32 %sub, %idx
  %spec.select.v = select i1 %cmp, i32 36864, i32 32768
  %spec.select = or i32 %spec.select.v, %shl
  %29 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %arrayidx, align 1
  %31 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_addr, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %addr = getelementptr %struct.bcm4908_enet_dma_ring_bd, ptr %2, i32 %idx, i32 1
  %34 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %addr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end15 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm4908_enet_dma_ring_init(ptr nocapture noundef readonly %enet, ptr nocapture noundef %ring) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  %cond = zext i1 %tobool.not to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %2 = shl nuw nsw i32 16777216, %cond
  %base.i = getelementptr inbounds %struct.bcm4908_enet, ptr %enet, i32 0, i32 2
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 2100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 8
  %add.ptr.i27 = getelementptr i8, ptr %6, i32 2100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 0) #7, !srcloc !80
  %cfg_block = getelementptr inbounds %struct.bcm4908_enet_dma_ring, ptr %ring, i32 0, i32 4
  %7 = ptrtoint ptr %cfg_block to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cfg_block, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 8
  %conv.i = zext i16 %8 to i32
  %add.ptr.i29 = getelementptr i8, ptr %10, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 0) #7, !srcloc !80
  %11 = ptrtoint ptr %cfg_block to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cfg_block, align 8
  %add5 = add i16 %12, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 8
  %conv.i31 = zext i16 %add5 to i32
  %add.ptr.i32 = getelementptr i8, ptr %14, i32 %conv.i31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 134217728) #7, !srcloc !80
  %15 = ptrtoint ptr %cfg_block to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cfg_block, align 8
  %add9 = add i16 %16, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 8
  %conv.i34 = zext i16 %add9 to i32
  %add.ptr.i35 = getelementptr i8, ptr %18, i32 %conv.i34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 0) #7, !srcloc !80
  %st_ram_block = getelementptr inbounds %struct.bcm4908_enet_dma_ring, ptr %ring, i32 0, i32 5
  %19 = ptrtoint ptr %st_ram_block to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %st_ram_block, align 2
  %dma_addr = getelementptr inbounds %struct.bcm4908_enet_dma_ring, ptr %ring, i32 0, i32 8
  %21 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 8
  %conv.i37 = zext i16 %20 to i32
  %add.ptr.i38 = getelementptr i8, ptr %25, i32 %conv.i37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %23) #7, !srcloc !80
  %read_idx = getelementptr inbounds %struct.bcm4908_enet_dma_ring, ptr %ring, i32 0, i32 1
  %26 = ptrtoint ptr %read_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %read_idx, align 4
  %write_idx = getelementptr inbounds %struct.bcm4908_enet_dma_ring, ptr %ring, i32 0, i32 2
  %27 = ptrtoint ptr %write_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %write_idx, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_bcm4908_enet__351_764_bcm4908_enet_driver_init6, !1, !"__initcall__kmod_bcm4908_enet__351_764_bcm4908_enet_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 764, i32 1}
!2 = !{ptr @__exitcall_bcm4908_enet_driver_exit, !1, !"__exitcall_bcm4908_enet_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file352, !4, !"__UNIQUE_ID_file352", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 766, i32 1}
!5 = !{ptr @__UNIQUE_ID_license353, !4, !"__UNIQUE_ID_license353", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 758, i32 11}
!8 = !{ptr @bcm4908_enet_driver, !9, !"bcm4908_enet_driver", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 756, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 699, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @bcm4908_enet_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @bcm4908_enet_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 703, i32 46}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 707, i32 47}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 216, i32 3}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @bcm4908_enet_dma_alloc._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @bcm4908_enet_dma_alloc._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 226, i32 3}
!29 = !{ptr @bcm4908_enet_dma_alloc._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @bcm4908_enet_dma_alloc._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 169, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @bcm4908_dma_alloc_buf_descs._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @bcm4908_dma_alloc_buf_descs._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @bcm4908_enet_netdev_ops, !37, !"bcm4908_enet_netdev_ops", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 674, i32 36}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 446, i32 62}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 448, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @bcm4908_enet_open._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @bcm4908_enet_open._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @bcm4908_enet_open._entry.18, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 456, i32 4}
!47 = !{ptr @bcm4908_enet_open._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 336, i32 4}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @bcm4908_enet_dma_init._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @bcm4908_enet_dma_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 272, i32 3}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @bcm4908_enet_dma_alloc_rx_buf._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @bcm4908_enet_dma_alloc_rx_buf._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 383, i32 2}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @bcm4908_enet_dma_rx_ring_disable._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @bcm4908_enet_dma_rx_ring_disable._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @bcm4908_enet_of_match, !69, !"bcm4908_enet_of_match", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/broadcom/bcm4908_enet.c", i32 751, i32 34}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2156615551}
!80 = !{i64 6069725}
!81 = !{i64 6070143}
!82 = !{i64 2156615333}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{!"branch_weights", i32 2000, i32 1}
