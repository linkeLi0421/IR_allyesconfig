; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/apm/xgene-v2/main.c_pt.bc'
source_filename = "../drivers/net/ethernet/apm/xgene-v2/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.xge_pdata = type { %struct.xge_resource, ptr, ptr, ptr, [16 x i8], ptr, ptr, %struct.napi_struct, %struct.xge_stats, i32, i8 }
%struct.xge_resource = type { ptr, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.xge_stats = type { i64, i64, i64, i64, i64 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.xge_desc_ring = type { ptr, i32, i8, i8, %union.anon.149, ptr }
%union.anon.149 = type { ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.xge_raw_desc = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.pkt_info = type { ptr, i32, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }

@__initcall__kmod_xgene_enet_v2__504_742_xge_driver_init6 = internal global ptr @xge_driver_init, section ".initcall6.init", align 4
@xge_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xge_probe, ptr @xge_remove, ptr @xge_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xge_driver_exit = internal global ptr @xge_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description505 = internal constant [60 x i8] c"xgene_enet_v2.description=APM X-Gene SoC Ethernet v2 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author506 = internal constant [64 x i8] c"xgene_enet_v2.author=Iyappan Subramanian <isubramanian@apm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file507 = internal constant [67 x i8] c"xgene_enet_v2.file=drivers/net/ethernet/apm/xgene-v2/xgene-enet-v2\00", section ".modinfo", align 1
@__UNIQUE_ID_license508 = internal constant [26 x i8] c"xgene_enet_v2.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgene-enet-v2\00", [18 x i8] zeroinitializer }, align 32
@xgene_ndev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @xge_open, ptr @xge_close, ptr @xge_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @xge_set_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xge_timeout, ptr @xge_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No usable DMA configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register netdev\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request irq %s\0A\00", [38 x i8] zeroinitializer }, align 32
@xge_start_xmit.dma_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@xge_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 28, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Resource enet_csr not defined\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xge_get_resources\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/apm/xgene-v2/main.c\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xge_get_resources._entry_ptr = internal global ptr @xge_get_resources._entry, section ".printk_index", align 4
@xge_get_resources._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 35, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to retrieve ENET Port CSR region\0A\00", [55 x i8] zeroinitializer }, align 32
@xge_get_resources._entry_ptr.15 = internal global ptr @xge_get_resources._entry.13, section ".printk_index", align 4
@xge_get_resources._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.10, i32 46, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to get phy-connection-type\0A\00", [61 x i8] zeroinitializer }, align 32
@xge_get_resources._entry_ptr.18 = internal global ptr @xge_get_resources._entry.16, section ".printk_index", align 4
@xge_get_resources._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.10, i32 52, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Incorrect phy-connection-type specified\0A\00", [55 x i8] zeroinitializer }, align 32
@xge_get_resources._entry_ptr.21 = internal global ptr @xge_get_resources._entry.19, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"xge_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 733, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 735, i32 14 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"xgene_ndev_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 623, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 663, i32 20 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 679, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 88, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 326, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 146, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 151, i32 20 }
@___asan_gen_.52 = private unnamed_addr constant [9 x i8] c"dma_addr\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 178, i32 20 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 28, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 35, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 46, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [44 x i8] c"../drivers/net/ethernet/apm/xgene-v2/main.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 52, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author506, ptr @__UNIQUE_ID_description505, ptr @__UNIQUE_ID_file507, ptr @__UNIQUE_ID_license508, ptr @__exitcall_xge_driver_exit, ptr @__initcall__kmod_xgene_enet_v2__504_742_xge_driver_init6, ptr @xge_driver_exit, ptr @xge_get_resources._entry, ptr @xge_get_resources._entry.13, ptr @xge_get_resources._entry.16, ptr @xge_get_resources._entry.19, ptr @xge_get_resources._entry_ptr, ptr @xge_get_resources._entry_ptr.15, ptr @xge_get_resources._entry_ptr.18, ptr @xge_get_resources._entry_ptr.21, ptr @xge_driver, ptr @.str, ptr @xgene_ndev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xge_start_xmit.dma_addr, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xge_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ndev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xge_start_xmit.dma_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xge_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xge_get_resources._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xge_get_resources._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xge_get_resources._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xge_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xge_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xge_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @xge_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xge_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %addr.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 320, i32 noundef 1, i32 noundef 1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %pdev3 = getelementptr i8, ptr %call, i32 2324
  %0 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev3, align 4
  %ndev4 = getelementptr i8, ptr %call, i32 2348
  %1 = ptrtoint ptr %ndev4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %ndev4, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xgene_ndev_ops, ptr %netdev_ops, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %5 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features, align 16
  %or = or i64 %6, 18432
  store i64 %or, ptr %features, align 16
  %7 = load ptr, ptr %pdev3, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %ndev4, align 4
  %call.i = tail call ptr @platform_get_resource(ptr noundef %7, i32 noundef 512, i32 noundef 0) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.8) #12
  br label %err

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %10
  %add.i.i = add i32 %sub.i.i, %12
  %call5.i = tail call ptr @devm_ioremap(ptr noundef %dev2.i, i32 noundef %10, i32 noundef %add.i.i) #9
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i, ptr %add.ptr.i, align 8
  %tobool8.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool8.not.i, label %do.end12.i, label %if.end13.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.14) #12
  br label %err

if.end13.i:                                       ; preds = %if.end.i
  %call14.i = tail call i32 @device_get_ethdev_address(ptr noundef %dev2.i, ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end17.i_crit_edge, label %if.then16.i

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #9
  %14 = call ptr @memset(ptr %addr.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i, i32 noundef 6) #9
  %15 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %addr.i.i, align 1
  %17 = and i8 %16, -4
  %18 = or i8 %17, 2
  store i8 %18, ptr %addr.i.i, align 1
  call void @dev_addr_mod(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #9
  %addr_assign_type.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 55
  %19 = ptrtoint ptr %addr_assign_type.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %addr_assign_type.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end17.i_crit_edge
  %perm_addr.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 54
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 86
  %20 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr.i, align 64
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 56
  %22 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %23 to i32
  %24 = call ptr @memcpy(ptr %perm_addr.i, ptr %21, i32 %conv.i)
  %call18.i = call i32 @device_get_phy_mode(ptr noundef %dev2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp.i = icmp slt i32 %call18.i, 0
  br i1 %cmp.i, label %do.end23.i, label %if.end24.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.17) #12
  br label %err

if.end24.i:                                       ; preds = %if.end17.i
  %phy_mode26.i = getelementptr i8, ptr %call, i32 2308
  %25 = ptrtoint ptr %phy_mode26.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call18.i, ptr %phy_mode26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call18.i)
  %cmp29.not.i = icmp eq i32 %call18.i, 9
  br i1 %cmp29.not.i, label %if.end35.i, label %do.end34.i

do.end34.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.20) #12
  br label %err

if.end35.i:                                       ; preds = %if.end24.i
  %call36.i = call i32 @platform_get_irq(ptr noundef %7, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.end35.i.err_crit_edge, label %if.end9

if.end35.i.err_crit_edge:                         ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end9:                                          ; preds = %if.end35.i
  %irq.i = getelementptr i8, ptr %call, i32 2312
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call36.i, ptr %irq.i, align 8
  %27 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %29 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %hw_features, align 8
  call void @xge_set_ethtool_ops(ptr noundef nonnull %call) #9
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %30 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.1) #12
  br label %err

if.end14:                                         ; preds = %if.end9
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef -1) #9
  %call1.i = call i32 @xge_port_reset(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i58 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i58, label %if.end18, label %if.end14.err_crit_edge

if.end14.err_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end18:                                         ; preds = %if.end14
  call void @xge_port_init(ptr noundef nonnull %call) #9
  %nbufs.i = getelementptr i8, ptr %call, i32 2620
  %31 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 8, ptr %nbufs.i, align 4
  %call19 = call i32 @xge_mdio_config(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_crit_edge

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end22:                                         ; preds = %if.end18
  %napi = getelementptr i8, ptr %call, i32 2352
  call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @xge_napi, i32 noundef 64) #9
  %call23 = call i32 @register_netdev(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.then25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.2) #12
  call void @xge_mdio_remove(ptr noundef nonnull %call) #9
  br label %err

err:                                              ; preds = %if.then25, %if.end18.err_crit_edge, %if.end14.err_crit_edge, %if.then13, %if.end35.i.err_crit_edge, %do.end34.i, %do.end23.i, %do.end12.i, %do.end.i
  %ret.0 = phi i32 [ %call.i.i, %if.then13 ], [ %call19, %if.end18.err_crit_edge ], [ %call23, %if.then25 ], [ %call1.i, %if.end14.err_crit_edge ], [ %call36.i, %if.end35.i.err_crit_edge ], [ -19, %do.end.i ], [ -12, %do.end12.i ], [ -19, %do.end34.i ], [ %call18.i, %do.end23.i ]
  call void @free_netdev(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xge_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ndev1 = getelementptr inbounds %struct.xge_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev1, align 4
  tail call void @rtnl_lock() #9
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_close(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rtnl_unlock() #9
  tail call void @xge_mdio_remove(ptr noundef %3) #9
  tail call void @unregister_netdev(ptr noundef %3) #9
  tail call void @free_netdev(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xge_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ndev = getelementptr inbounds %struct.xge_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @rtnl_lock() #9
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end3.xge_remove.exit_crit_edge, label %if.then.i

if.end3.xge_remove.exit_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %xge_remove.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_close(ptr noundef nonnull %3) #9
  br label %xge_remove.exit

xge_remove.exit:                                  ; preds = %if.then.i, %if.end3.xge_remove.exit_crit_edge
  tail call void @rtnl_unlock() #9
  tail call void @xge_mdio_remove(ptr noundef nonnull %3) #9
  tail call void @unregister_netdev(ptr noundef nonnull %3) #9
  tail call void @free_netdev(ptr noundef nonnull %3) #9
  br label %cleanup

cleanup:                                          ; preds = %xge_remove.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_set_ethtool_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xge_mdio_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xge_napi(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call fastcc void @xge_txc_poll(ptr noundef %1)
  %call1 = tail call fastcc i32 @xge_rx_poll(ptr noundef %1, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %budget)
  %cmp = icmp slt i32 %call1, %budget
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call1) #9
  tail call void @xge_intr_enable(ptr noundef %add.ptr.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_mdio_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xge_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1.i = tail call fastcc ptr @xge_create_desc_ring(ptr noundef %ndev) #9
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.xge_create_desc_rings.exit_crit_edge, label %if.end.i

entry.xge_create_desc_rings.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xge_create_desc_rings.exit

if.end.i:                                         ; preds = %entry
  %tx_ring.i = getelementptr i8, ptr %ndev, i32 2316
  %0 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i, ptr %tx_ring.i, align 4
  tail call void @xge_update_tx_desc_addr(ptr noundef %add.ptr.i) #9
  %call2.i = tail call fastcc ptr @xge_create_desc_ring(ptr noundef %ndev) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.xge_create_desc_rings.exit_crit_edge, label %if.end5.i

if.end.i.xge_create_desc_rings.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xge_create_desc_rings.exit

if.end5.i:                                        ; preds = %if.end.i
  %rx_ring.i = getelementptr i8, ptr %ndev, i32 2320
  %1 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2.i, ptr %rx_ring.i, align 8
  tail call void @xge_update_rx_desc_addr(ptr noundef %add.ptr.i) #9
  %call6.i = tail call fastcc i32 @xge_refill_buffers(ptr noundef %ndev, i32 noundef 256) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end, label %if.end5.i.xge_create_desc_rings.exit_crit_edge

if.end5.i.xge_create_desc_rings.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xge_create_desc_rings.exit

xge_create_desc_rings.exit:                       ; preds = %if.end5.i.xge_create_desc_rings.exit_crit_edge, %if.end.i.xge_create_desc_rings.exit_crit_edge, %entry.xge_create_desc_rings.exit_crit_edge
  tail call fastcc void @xge_delete_desc_rings(ptr noundef %ndev) #9
  br label %cleanup

if.end:                                           ; preds = %if.end5.i
  %napi = getelementptr i8, ptr %ndev, i32 2352
  tail call void @napi_enable(ptr noundef %napi) #9
  %irq_name.i = getelementptr i8, ptr %ndev, i32 2328
  %call2.i18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name.i, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %ndev) #9
  %irq.i = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 8
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @xge_irq, ptr noundef null, i32 noundef 0, ptr noundef %irq_name.i, ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i19 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i19, label %if.end5, label %xge_request_irq.exit

xge_request_irq.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.7, ptr noundef %irq_name.i) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xge_intr_enable(ptr noundef %add.ptr.i) #9
  tail call void @xge_wr_csr(ptr noundef %add.ptr.i, i32 noundef 41356, i32 noundef 1) #9
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %5) #9
  tail call void @xge_mac_enable(ptr noundef %add.ptr.i) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %xge_request_irq.exit, %xge_create_desc_rings.exit
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %xge_create_desc_rings.exit ], [ %call.i.i, %xge_request_irq.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xge_close(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  tail call void @xge_mac_disable(ptr noundef %add.ptr.i) #9
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %3) #9
  tail call void @xge_intr_disable(ptr noundef %add.ptr.i) #9
  %irq.i = getelementptr i8, ptr %ndev, i32 2312
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 8
  %call1.i = tail call ptr @free_irq(i32 noundef %5, ptr noundef %add.ptr.i) #9
  %napi = getelementptr i8, ptr %ndev, i32 2352
  tail call void @napi_disable(ptr noundef %napi) #9
  tail call fastcc void @xge_delete_desc_rings(ptr noundef %ndev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xge_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %tx_ring2 = getelementptr i8, ptr %ndev, i32 2316
  %0 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring2, align 4
  %tail3 = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tail3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tail3, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %5, %7
  %8 = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.xge_raw_desc, ptr %10, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx, align 8
  %13 = and i64 %12, 4279173248
  call void @__sanitizer_cov_trace_const_cmp8(i64 4279173248, i64 %13)
  %14 = icmp eq i64 %13, 4279173248
  br i1 %14, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr i8, ptr %ndev, i32 2324
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 1536, ptr noundef nonnull @xge_start_xmit.dma_addr, i32 noundef 2592, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then10, label %if.end11, !prof !61

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %conv12 = and i32 %sub.i, 65535
  %21 = call ptr @memcpy(ptr %call.i, ptr %20, i32 %conv12)
  %m1 = getelementptr %struct.xge_raw_desc, ptr %10, i32 %idxprom, i32 1
  %22 = ptrtoint ptr %m1 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m1, align 8
  %24 = and i64 %23, -4294902013
  store i64 %24, ptr %m1, align 8
  %pkt_info = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %pkt_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pkt_info, align 4
  %arrayidx24 = getelementptr %struct.pkt_info, ptr %26, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %skb, ptr %arrayidx24, align 4
  %28 = load i32, ptr @xge_start_xmit.dma_addr, align 4
  %29 = load ptr, ptr %pkt_info, align 4
  %dma_addr = getelementptr %struct.pkt_info, ptr %29, i32 %idxprom, i32 1
  %30 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %dma_addr, align 4
  %31 = load ptr, ptr %pkt_info, align 4
  %pkt_buf32 = getelementptr %struct.pkt_info, ptr %31, i32 %idxprom, i32 2
  %32 = ptrtoint ptr %pkt_buf32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %pkt_buf32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  %33 = load i32, ptr @xge_start_xmit.dma_addr, align 4
  %conv33 = zext i32 %33 to i64
  %34 = and i32 %sub.i, 4095
  %and.i76 = zext i32 %34 to i64
  %shl2.i77 = shl nuw nsw i64 %and.i76, 32
  %or37 = or i64 %shl2.i77, %conv33
  %35 = tail call i64 @llvm.bswap.i64(i64 %or37)
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx, align 8
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #9
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %37 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tx_flags.i, align 1
  %41 = and i8 %40, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %if.end11.skb_tx_timestamp.exit_crit_edge, label %if.then.i

if.end11.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #9
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %if.end11.skb_tx_timestamp.exit_crit_edge
  tail call void @xge_wr_csr(ptr noundef %add.ptr.i, i32 noundef 41344, i32 noundef 1) #9
  %add = add i8 %3, 1
  %42 = ptrtoint ptr %tail3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %add, ptr %tail3, align 1
  br label %cleanup

cleanup:                                          ; preds = %skb_tx_timestamp.exit, %if.then10, %if.then
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %skb_tx_timestamp.exit ], [ 16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xge_set_mac_addr(ptr noundef %ndev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @eth_mac_addr(ptr noundef %ndev, ptr noundef %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call void @xge_mac_set_station_addr(ptr noundef %add.ptr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xge_timeout(ptr noundef %ndev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call void @rtnl_lock() #9
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  tail call void @xge_intr_disable(ptr noundef %add.ptr.i) #9
  %napi = getelementptr i8, ptr %ndev, i32 2352
  tail call void @napi_disable(ptr noundef %napi) #9
  tail call void @xge_wr_csr(ptr noundef %add.ptr.i, i32 noundef 41344, i32 noundef 0) #9
  tail call fastcc void @xge_txc_poll(ptr noundef %ndev)
  %pdev.i = getelementptr i8, ptr %ndev, i32 2324
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %tx_ring2.i = getelementptr i8, ptr %ndev, i32 2316
  %6 = ptrtoint ptr %tx_ring2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ring2.i, align 4
  %8 = getelementptr inbounds %struct.xge_desc_ring, ptr %7, i32 0, i32 4
  %pkt_info.i = getelementptr inbounds %struct.xge_desc_ring, ptr %7, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.021.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %arrayidx.i = getelementptr %struct.xge_raw_desc, ptr %10, i32 %i.021.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx.i, align 8
  %13 = and i64 %12, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not.i.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %pkt_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pkt_info.i, align 4
  %arrayidx4.i = getelementptr %struct.pkt_info, ptr %15, i32 %i.021.i
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4.i, align 4
  %dma_addr8.i = getelementptr %struct.pkt_info, ptr %15, i32 %i.021.i, i32 1
  %18 = ptrtoint ptr %dma_addr8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr8.i, align 4
  %pkt_buf11.i = getelementptr %struct.pkt_info, ptr %15, i32 %i.021.i, i32 2
  %20 = ptrtoint ptr %pkt_buf11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pkt_buf11.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef 1536, ptr noundef %21, i32 noundef %19, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %17, i32 noundef 1) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %xge_free_pending_skb.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

xge_free_pending_skb.exit:                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xge_wr_csr(ptr noundef %add.ptr.i, i32 noundef 41352, i32 noundef -1) #9
  %22 = ptrtoint ptr %tx_ring2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_ring2.i, align 4
  tail call void @xge_setup_desc(ptr noundef %23) #9
  tail call void @xge_update_tx_desc_addr(ptr noundef %add.ptr.i) #9
  tail call void @xge_mac_init(ptr noundef %add.ptr.i) #9
  tail call void @napi_enable(ptr noundef %napi) #9
  tail call void @xge_intr_enable(ptr noundef %add.ptr.i) #9
  tail call void @xge_mac_enable(ptr noundef %add.ptr.i) #9
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i18 = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i18) #9
  br label %out

out:                                              ; preds = %xge_free_pending_skb.exit, %entry.out_crit_edge
  tail call void @rtnl_unlock() #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xge_get_stats64(ptr nocapture noundef readonly %ndev, ptr nocapture noundef %storage) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr i8, ptr %ndev, i32 2576
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stats1, align 8
  %tx_packets2 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 1
  %2 = ptrtoint ptr %tx_packets2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tx_packets2, align 8
  %add = add i64 %3, %1
  store i64 %add, ptr %tx_packets2, align 8
  %tx_bytes = getelementptr i8, ptr %ndev, i32 2584
  %4 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tx_bytes, align 8
  %tx_bytes3 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 3
  %6 = ptrtoint ptr %tx_bytes3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_bytes3, align 8
  %add4 = add i64 %7, %5
  store i64 %add4, ptr %tx_bytes3, align 8
  %rx_packets = getelementptr i8, ptr %ndev, i32 2592
  %8 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_packets, align 8
  %10 = ptrtoint ptr %storage to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %storage, align 8
  %add6 = add i64 %11, %9
  store i64 %add6, ptr %storage, align 8
  %rx_bytes = getelementptr i8, ptr %ndev, i32 2600
  %12 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_bytes, align 8
  %rx_bytes7 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 2
  %14 = ptrtoint ptr %rx_bytes7 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rx_bytes7, align 8
  %add8 = add i64 %15, %13
  store i64 %add8, ptr %rx_bytes7, align 8
  %rx_errors = getelementptr i8, ptr %ndev, i32 2608
  %16 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rx_errors, align 8
  %rx_errors9 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 4
  %18 = ptrtoint ptr %rx_errors9 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_errors9, align 8
  %add10 = add i64 %19, %17
  store i64 %add10, ptr %rx_errors9, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_intr_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_wr_csr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_mac_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xge_create_desc_ring(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %ndev, i32 2324
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ndev, ptr %call7.i.i, align 8
  %dma_addr = getelementptr inbounds %struct.xge_desc_ring, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 16384, ptr noundef %dma_addr, i32 noundef 3264, i32 noundef 0) #9
  %4 = getelementptr inbounds %struct.xge_desc_ring, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %4, align 4
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.xge_delete_desc_ring.exit_crit_edge, label %if.end7

if.end.xge_delete_desc_ring.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xge_delete_desc_ring.exit

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 3072) #13
  %pkt_info = getelementptr inbounds %struct.xge_desc_ring, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %pkt_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %pkt_info, align 8
  %tobool10.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not, label %if.end.i, label %if.end12

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xge_setup_desc(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load ptr, ptr %4, align 4
  %tobool2.not.i = icmp eq ptr %.pr, null
  br i1 %tobool2.not.i, label %if.end.i.xge_delete_desc_ring.exit_crit_edge, label %if.then3.i

if.end.i.xge_delete_desc_ring.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xge_delete_desc_ring.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef 16384, ptr noundef nonnull %.pr, i32 noundef %12, i32 noundef 0) #9
  br label %xge_delete_desc_ring.exit

xge_delete_desc_ring.exit:                        ; preds = %if.then3.i, %if.end.i.xge_delete_desc_ring.exit_crit_edge, %if.end.xge_delete_desc_ring.exit_crit_edge
  %pkt_info.i = getelementptr inbounds %struct.xge_desc_ring, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %pkt_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pkt_info.i, align 8
  tail call void @kfree(ptr noundef %14) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %xge_delete_desc_ring.exit, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end12 ], [ null, %xge_delete_desc_ring.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_update_tx_desc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_update_rx_desc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xge_refill_buffers(ptr noundef %ndev, i32 noundef %nbuf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring = getelementptr i8, ptr %ndev, i32 2320
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 8
  %pdev = getelementptr i8, ptr %ndev, i32 2324
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %tail2 = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tail2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tail2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbuf)
  %cmp90.not = icmp eq i32 %nbuf, 0
  br i1 %cmp90.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %6 = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 4
  %pkt_info = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end12.for.body_crit_edge ]
  %tail.091 = phi i8 [ %5, %for.body.lr.ph ], [ %add, %if.end12.for.body_crit_edge ]
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %idxprom = zext i8 %tail.091 to i32
  %arrayidx = getelementptr %struct.xge_raw_desc, ptr %8, i32 %idxprom
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef 1536, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end, !prof !61

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %call.i71 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %10) #9
  br i1 %call.i71, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !63

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev1) #9
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef -1) #9
  br label %if.then11

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %dev1, ptr noundef %10, i32 noundef 1536) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %10 to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i72 = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1, ptr noundef %add.ptr.i72, i32 noundef %and.i, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #9
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then11_crit_edge, label %if.end12

dma_map_single_attrs.exit.if.then11_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %dma_map_single_attrs.exit.if.then11_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.3) #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #9
  br label %cleanup

if.end12:                                         ; preds = %dma_map_single_attrs.exit
  %17 = ptrtoint ptr %pkt_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pkt_info, align 4
  %arrayidx14 = getelementptr %struct.pkt_info, ptr %18, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %arrayidx14, align 4
  %20 = load ptr, ptr %pkt_info, align 4
  %dma_addr19 = getelementptr %struct.pkt_info, ptr %20, i32 %idxprom, i32 1
  %21 = ptrtoint ptr %dma_addr19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call41.i, ptr %dma_addr19, align 4
  %m1 = getelementptr %struct.xge_raw_desc, ptr %8, i32 %idxprom, i32 1
  %22 = ptrtoint ptr %m1 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m1, align 8
  %24 = and i64 %23, -4294902013
  store i64 %24, ptr %m1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  %conv30 = zext i32 %call41.i to i64
  %or33 = or i64 %conv30, -9223372036854775808
  %25 = tail call i64 @llvm.bswap.i64(i64 %or33)
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx, align 8
  %add = add i8 %tail.091, 1
  %inc = add nuw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %nbuf
  br i1 %exitcond.not, label %if.end12.for.end_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %entry.for.end_crit_edge
  %tail.0.lcssa = phi i8 [ %5, %entry.for.end_crit_edge ], [ %add, %if.end12.for.end_crit_edge ]
  %27 = ptrtoint ptr %tail2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %tail.0.lcssa, ptr %tail2, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then11, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then11 ], [ 0, %for.end ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xge_delete_desc_rings(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xge_txc_poll(ptr noundef %ndev)
  %tx_ring = getelementptr i8, ptr %ndev, i32 2316
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 4
  %pdev.i = getelementptr i8, ptr %ndev, i32 2324
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.xge_delete_desc_ring.exit_crit_edge, label %if.end.i

entry.xge_delete_desc_ring.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xge_delete_desc_ring.exit

if.end.i:                                         ; preds = %entry
  %4 = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dma_addr.i = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef 16384, ptr noundef nonnull %6, i32 noundef %8, i32 noundef 0) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %pkt_info.i = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %pkt_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pkt_info.i, align 4
  tail call void @kfree(ptr noundef %10) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %xge_delete_desc_ring.exit

xge_delete_desc_ring.exit:                        ; preds = %if.end4.i, %entry.xge_delete_desc_ring.exit_crit_edge
  %call1 = tail call fastcc i32 @xge_rx_poll(ptr noundef %ndev, i32 noundef 64)
  %rx_ring.i = getelementptr i8, ptr %ndev, i32 2320
  %11 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_ring.i, align 8
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %dev1.i9 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %pkt_info.i10 = getelementptr inbounds %struct.xge_desc_ring, ptr %12, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %xge_delete_desc_ring.exit
  %i.012.i = phi i32 [ 0, %xge_delete_desc_ring.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %pkt_info.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pkt_info.i10, align 4
  %arrayidx.i = getelementptr %struct.pkt_info, ptr %16, i32 %i.012.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i11 = icmp eq ptr %18, null
  br i1 %tobool.not.i11, label %for.body.i.for.inc.i_crit_edge, label %if.end.i12

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i12:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dma_addr5.i = getelementptr %struct.pkt_info, ptr %16, i32 %i.012.i, i32 1
  %19 = ptrtoint ptr %dma_addr5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_addr5.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i9, i32 noundef %20, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %18, i32 noundef 1) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i12, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %xge_free_buffers.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

xge_free_buffers.exit:                            ; preds = %for.inc.i
  %21 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_ring.i, align 8
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 4
  %dev1.i14 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %tobool.not.i15 = icmp eq ptr %22, null
  br i1 %tobool.not.i15, label %xge_free_buffers.exit.xge_delete_desc_ring.exit22_crit_edge, label %if.end.i17

xge_free_buffers.exit.xge_delete_desc_ring.exit22_crit_edge: ; preds = %xge_free_buffers.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xge_delete_desc_ring.exit22

if.end.i17:                                       ; preds = %xge_free_buffers.exit
  %25 = getelementptr inbounds %struct.xge_desc_ring, ptr %22, i32 0, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool2.not.i16 = icmp eq ptr %27, null
  br i1 %tobool2.not.i16, label %if.end.i17.if.end4.i21_crit_edge, label %if.then3.i19

if.end.i17.if.end4.i21_crit_edge:                 ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i21

if.then3.i19:                                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #11
  %dma_addr.i18 = getelementptr inbounds %struct.xge_desc_ring, ptr %22, i32 0, i32 1
  %28 = ptrtoint ptr %dma_addr.i18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_addr.i18, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i14, i32 noundef 16384, ptr noundef nonnull %27, i32 noundef %29, i32 noundef 0) #9
  br label %if.end4.i21

if.end4.i21:                                      ; preds = %if.then3.i19, %if.end.i17.if.end4.i21_crit_edge
  %pkt_info.i20 = getelementptr inbounds %struct.xge_desc_ring, ptr %22, i32 0, i32 5
  %30 = ptrtoint ptr %pkt_info.i20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pkt_info.i20, align 4
  tail call void @kfree(ptr noundef %31) #9
  tail call void @kfree(ptr noundef nonnull %22) #9
  br label %xge_delete_desc_ring.exit22

xge_delete_desc_ring.exit22:                      ; preds = %if.end4.i21, %xge_free_buffers.exit.xge_delete_desc_ring.exit22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_setup_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

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
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xge_txc_poll(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %pdev = getelementptr i8, ptr %ndev, i32 2324
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %tx_ring2 = getelementptr i8, ptr %ndev, i32 2316
  %2 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring2, align 4
  %head3 = getelementptr inbounds %struct.xge_desc_ring, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %head3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %head3, align 4
  %call4 = tail call i32 @xge_rd_csr(ptr noundef %add.ptr.i, i32 noundef 41352) #9
  %6 = and i32 %call4, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %7 = getelementptr inbounds %struct.xge_desc_ring, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %idxprom59 = zext i8 %5 to i32
  %arrayidx60 = getelementptr %struct.xge_raw_desc, ptr %9, i32 %idxprom59
  %10 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx60, align 8
  %12 = and i64 %11, 4279173248
  call void @__sanitizer_cov_trace_const_cmp8(i64 128, i64 %12)
  %13 = icmp eq i64 %12, 128
  br i1 %13, label %if.end8.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end8.lr.ph:                                    ; preds = %while.cond.preheader
  %pkt_info = getelementptr inbounds %struct.xge_desc_ring, ptr %3, i32 0, i32 5
  %stats = getelementptr i8, ptr %ndev, i32 2576
  %tx_bytes = getelementptr i8, ptr %ndev, i32 2584
  br label %if.end8

if.end8:                                          ; preds = %if.end8.if.end8_crit_edge, %if.end8.lr.ph
  %arrayidx63 = phi ptr [ %arrayidx60, %if.end8.lr.ph ], [ %arrayidx, %if.end8.if.end8_crit_edge ]
  %idxprom62 = phi i32 [ %idxprom59, %if.end8.lr.ph ], [ %idxprom, %if.end8.if.end8_crit_edge ]
  %head.061 = phi i8 [ %5, %if.end8.lr.ph ], [ %add25, %if.end8.if.end8_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !65
  %14 = ptrtoint ptr %pkt_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pkt_info, align 4
  %arrayidx10 = getelementptr %struct.pkt_info, ptr %15, i32 %idxprom62
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx10, align 4
  %dma_addr15 = getelementptr %struct.pkt_info, ptr %15, i32 %idxprom62, i32 1
  %18 = ptrtoint ptr %dma_addr15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr15, align 4
  %pkt_buf19 = getelementptr %struct.pkt_info, ptr %15, i32 %idxprom62, i32 2
  %20 = ptrtoint ptr %pkt_buf19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pkt_buf19, align 4
  %22 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %stats, align 8
  %inc = add i64 %23, 1
  store i64 %inc, ptr %stats, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %conv20 = zext i32 %25 to i64
  %26 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tx_bytes, align 8
  %add = add i64 %27, %conv20
  store i64 %add, ptr %tx_bytes, align 8
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 1536, ptr noundef %21, i32 noundef %19, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %17, i32 noundef 1) #9
  %28 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 4279173248, ptr %arrayidx63, align 8
  tail call void @xge_wr_csr(ptr noundef %add.ptr.i, i32 noundef 41352, i32 noundef 1) #9
  %add25 = add i8 %head.061, 1
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %7, align 4
  %idxprom = zext i8 %add25 to i32
  %arrayidx = getelementptr %struct.xge_raw_desc, ptr %30, i32 %idxprom
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx, align 8
  %33 = and i64 %32, 4279173248
  %34 = icmp eq i64 %33, 128
  br i1 %34, label %if.end8.if.end8_crit_edge, label %if.end8.while.end_crit_edge

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end8.if.end8_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

while.end:                                        ; preds = %if.end8.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %head.0.lcssa = phi i8 [ %5, %while.cond.preheader.while.end_crit_edge ], [ %add25, %if.end8.while.end_crit_edge ]
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %35 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %while.end.if.end29_crit_edge, label %if.then28

while.end.if.end29_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_tx_wake_queue(ptr noundef %36) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %while.end.if.end29_crit_edge
  %39 = ptrtoint ptr %head3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %head.0.lcssa, ptr %head3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xge_rx_poll(ptr noundef %ndev, i32 noundef %budget) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %pdev = getelementptr i8, ptr %ndev, i32 2324
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %rx_ring2 = getelementptr i8, ptr %ndev, i32 2320
  %2 = ptrtoint ptr %rx_ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring2, align 8
  %head3 = getelementptr inbounds %struct.xge_desc_ring, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %head3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %head3, align 4
  %call4 = tail call i32 @xge_rd_csr(ptr noundef %add.ptr.i, i32 noundef 41364) #9
  %6 = and i32 %call4, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %7 = getelementptr inbounds %struct.xge_desc_ring, ptr %3, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp95.not = icmp eq i32 %budget, 0
  br i1 %cmp95.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pkt_info = getelementptr inbounds %struct.xge_desc_ring, ptr %3, i32 0, i32 5
  %rx_errors = getelementptr i8, ptr %ndev, i32 2608
  %rx_packets = getelementptr i8, ptr %ndev, i32 2592
  %rx_bytes = getelementptr i8, ptr %ndev, i32 2600
  %napi = getelementptr i8, ptr %ndev, i32 2352
  br label %for.body

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %for.body.lr.ph
  %i.098 = phi i32 [ 0, %for.body.lr.ph ], [ %inc48, %if.end43.for.body_crit_edge ]
  %head.097 = phi i8 [ %5, %for.body.lr.ph ], [ %add45, %if.end43.for.body_crit_edge ]
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %idxprom = zext i8 %head.097 to i32
  %arrayidx = getelementptr %struct.xge_raw_desc, ptr %9, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 8
  %12 = and i64 %11, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool8.not = icmp eq i64 %12, 0
  br i1 %tobool8.not, label %if.end10, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end10:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  %13 = ptrtoint ptr %pkt_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pkt_info, align 4
  %arrayidx12 = getelementptr %struct.pkt_info, ptr %14, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12, align 4
  store ptr null, ptr %arrayidx12, align 4
  %17 = load ptr, ptr %pkt_info, align 4
  %dma_addr21 = getelementptr %struct.pkt_info, ptr %17, i32 %idxprom, i32 1
  %18 = ptrtoint ptr %dma_addr21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr21, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1, i32 noundef %19, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #9
  %m2 = getelementptr %struct.xge_raw_desc, ptr %9, i32 %idxprom, i32 2
  %22 = ptrtoint ptr %m2 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m2, align 8
  %24 = and i64 %23, 192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool27.not = icmp eq i64 %24, 0
  br i1 %tobool27.not, label %if.end31, label %if.then30, !prof !63

if.then30:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %rx_errors, align 8
  %inc = add i64 %26, 1
  store i64 %inc, ptr %rx_errors, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %16, i32 noundef 1) #9
  br label %out

if.end31:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %27 = tail call i64 @llvm.bswap.i64(i64 %21)
  %shr.i92 = lshr i64 %27, 32
  %and.i93 = and i64 %shr.i92, 4095
  %28 = trunc i64 %and.i93 to i32
  %call33 = tail call ptr @skb_put(ptr noundef %16, i32 noundef %28) #9
  %call34 = tail call zeroext i16 @eth_type_trans(ptr noundef %16, ptr noundef %ndev) #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 15, i32 0, i32 18
  %29 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %call34, ptr %protocol, align 8
  %30 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rx_packets, align 8
  %inc36 = add i64 %31, 1
  store i64 %inc36, ptr %rx_packets, align 8
  %32 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rx_bytes, align 8
  %add = add i64 %33, %and.i93
  store i64 %add, ptr %rx_bytes, align 8
  %call39 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %16) #9
  br label %out

out:                                              ; preds = %if.end31, %if.then30
  %call40 = tail call fastcc i32 @xge_refill_buffers(ptr noundef %ndev, i32 noundef 1)
  tail call void @xge_wr_csr(ptr noundef %add.ptr.i, i32 noundef 41364, i32 noundef 1) #9
  tail call void @xge_wr_csr(ptr noundef %add.ptr.i, i32 noundef 41356, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %out.for.end_crit_edge

out.for.end_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end43:                                         ; preds = %out
  %add45 = add i8 %head.097, 1
  %inc48 = add nuw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc48, %budget
  br i1 %exitcond.not, label %if.end43.for.end_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end43.for.end_crit_edge, %out.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %processed.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.098, %out.for.end_crit_edge ], [ %i.098, %for.body.for.end_crit_edge ], [ %budget, %if.end43.for.end_crit_edge ]
  %head.0.lcssa = phi i8 [ %5, %for.cond.preheader.for.end_crit_edge ], [ %head.097, %out.for.end_crit_edge ], [ %head.097, %for.body.for.end_crit_edge ], [ %add45, %if.end43.for.end_crit_edge ]
  %34 = ptrtoint ptr %head3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %head.0.lcssa, ptr %head3, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %processed.0.lcssa, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xge_rd_csr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xge_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr inbounds %struct.xge_pdata, ptr %data, i32 0, i32 7
  %call = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xge_intr_disable(ptr noundef %data) #9
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_intr_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_mac_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_mac_set_station_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_mac_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_phy_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xge_port_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_xgene_enet_v2__504_742_xge_driver_init6, !1, !"__initcall__kmod_xgene_enet_v2__504_742_xge_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 742, i32 1}
!2 = !{ptr @__exitcall_xge_driver_exit, !1, !"__exitcall_xge_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description505, !4, !"__UNIQUE_ID_description505", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 744, i32 1}
!5 = !{ptr @__UNIQUE_ID_author506, !6, !"__UNIQUE_ID_author506", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 745, i32 1}
!7 = !{ptr @__UNIQUE_ID_file507, !8, !"__UNIQUE_ID_file507", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 746, i32 1}
!9 = !{ptr @__UNIQUE_ID_license508, !8, !"__UNIQUE_ID_license508", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 735, i32 14}
!12 = !{ptr @xge_driver, !13, !"xge_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 733, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 663, i32 20}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 679, i32 20}
!18 = !{ptr @xgene_ndev_ops, !19, !"xgene_ndev_ops", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 623, i32 36}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 88, i32 21}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 146, i32 41}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 151, i32 20}
!30 = !{ptr @xge_start_xmit.dma_addr, !31, !"dma_addr", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 178, i32 20}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 28, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @xge_get_resources._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @xge_get_resources._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 35, i32 3}
!42 = !{ptr @xge_get_resources._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @xge_get_resources._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 46, i32 3}
!46 = !{ptr @xge_get_resources._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @xge_get_resources._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/apm/xgene-v2/main.c", i32 52, i32 3}
!50 = !{ptr @xge_get_resources._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @xge_get_resources._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2158645385}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2158642498}
!65 = !{i64 2158646830}
!66 = !{i64 2158647774}
