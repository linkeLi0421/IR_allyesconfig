; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/apm/xgene/xgene_enet_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/apm/xgene/xgene_enet_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.126 }
%struct.atomic_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xgene_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgene_port_ops = type { ptr, ptr, ptr, ptr }
%struct.xgene_cle_ops = type { ptr }
%struct.xgene_ring_ops = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.xgene_enet_pdata = type { ptr, ptr, i32, ptr, ptr, i32, [8 x ptr], [8 x ptr], [8 x i16], [8 x i16], ptr, i32, i32, [16 x i32], i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.xgene_enet_cle, ptr, i64, i64, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i16, [4 x i32], [4 x i32], %struct.spinlock, i8, i8, i8, ptr, i8, i32, i8, i8 }
%struct.xgene_enet_cle = type { ptr, %struct.xgene_cle_ptree, i32, i32, i32, i32, i32 }
%struct.xgene_cle_ptree = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.xgene_enet_desc_ring = type { ptr, i16, i16, i16, i16, i16, i16, i16, [16 x i8], i32, [6 x i32], ptr, ptr, i32, i32, ptr, i16, i16, i32, i8, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.napi_struct, %union.anon.149, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%union.anon.149 = type { ptr }
%struct.xgene_enet_raw_desc16 = type { i64, i64 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.xgene_enet_raw_desc = type { i64, i64, i64, i64 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__initcall__kmod_xgene_enet__505_2179_xgene_enet_driver_init6 = internal global ptr @xgene_enet_driver_init, section ".initcall6.init", align 4
@xgene_enet_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xgene_enet_probe, ptr @xgene_enet_remove, ptr @xgene_enet_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgene_enet_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xgene_enet_driver_exit = internal global ptr @xgene_enet_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description506 = internal constant [54 x i8] c"xgene_enet.description=APM X-Gene SoC Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author507 = internal constant [61 x i8] c"xgene_enet.author=Iyappan Subramanian <isubramanian@apm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author508 = internal constant [51 x i8] c"xgene_enet.author=Keyur Chudgar <kchudgar@apm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file509 = internal constant [58 x i8] c"xgene_enet.file=drivers/net/ethernet/apm/xgene/xgene-enet\00", section ".modinfo", align 1
@__UNIQUE_ID_license510 = internal constant [23 x i8] c"xgene_enet.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgene-enet\00", [21 x i8] zeroinitializer }, align 32
@xgene_enet_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-enet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene1-sgenet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene1-xgenet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene2-sgenet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene2-xgenet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@xgene_ndev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @xgene_enet_open, ptr @xgene_enet_close, ptr @xgene_enet_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @xgene_enet_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_change_mtu, ptr null, ptr @xgene_enet_timeout, ptr @xgene_enet_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@xgene_enet_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pdata->mac_lock\00", [47 x i8] zeroinitializer }, align 32
@xgene_enet_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pdata->mss_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No usable DMA configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@xgene_enet_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&pdata->link_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@xgene_enet_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&pdata->link_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@xgene_enet_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xgene_enet_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xgene_enet_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&pdata->stats_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register netdev\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request irq %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-rx-txc\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-rx-%d\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-txc-%d\00", [22 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"completion skb is NULL\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@xgene_enet_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.26, i32 1694, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Resource enet_csr not defined\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgene_enet_get_resources\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/apm/xgene/xgene_enet_main.c\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgene_enet_get_resources._entry_ptr = internal global ptr @xgene_enet_get_resources._entry, section ".printk_index", align 4
@xgene_enet_get_resources._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.26, i32 1699, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to retrieve ENET Port CSR region\0A\00", [55 x i8] zeroinitializer }, align 32
@xgene_enet_get_resources._entry_ptr.31 = internal global ptr @xgene_enet_get_resources._entry.29, section ".printk_index", align 4
@xgene_enet_get_resources._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.26, i32 1705, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Resource ring_csr not defined\0A\00", [33 x i8] zeroinitializer }, align 32
@xgene_enet_get_resources._entry_ptr.34 = internal global ptr @xgene_enet_get_resources._entry.32, section ".printk_index", align 4
@xgene_enet_get_resources._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.26, i32 1711, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to retrieve ENET Ring CSR region\0A\00", [55 x i8] zeroinitializer }, align 32
@xgene_enet_get_resources._entry_ptr.37 = internal global ptr @xgene_enet_get_resources._entry.35, section ".printk_index", align 4
@xgene_enet_get_resources._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str.26, i32 1717, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Resource ring_cmd not defined\0A\00", [33 x i8] zeroinitializer }, align 32
@xgene_enet_get_resources._entry_ptr.40 = internal global ptr @xgene_enet_get_resources._entry.38, section ".printk_index", align 4
@xgene_enet_get_resources._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.25, ptr @.str.26, i32 1723, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to retrieve ENET Ring command region\0A\00", [51 x i8] zeroinitializer }, align 32
@xgene_enet_get_resources._entry_ptr.43 = internal global ptr @xgene_enet_get_resources._entry.41, section ".printk_index", align 4
@xgene_enet_get_resources._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.26, i32 1741, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to get phy-connection-type\0A\00", [61 x i8] zeroinitializer }, align 32
@xgene_enet_get_resources._entry_ptr.46 = internal global ptr @xgene_enet_get_resources._entry.44, section ".printk_index", align 4
@xgene_enet_get_resources._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.25, ptr @.str.26, i32 1747, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Incorrect phy-connection-type specified\0A\00", [55 x i8] zeroinitializer }, align 32
@xgene_enet_get_resources._entry_ptr.49 = internal global ptr @xgene_enet_get_resources._entry.47, section ".printk_index", align 4
@xgene_enet_get_resources._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.25, ptr @.str.26, i32 1775, ptr @.str.52, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"clocks have been setup already\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xgene_enet_get_resources._entry_ptr.53 = internal global ptr @xgene_enet_get_resources._entry.50, section ".printk_index", align 4
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"port-id\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx-delay\00", [23 x i8] zeroinitializer }, align 32
@xgene_get_tx_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.26, i32 1587, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid tx-delay specified\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xgene_get_tx_delay\00", [45 x i8] zeroinitializer }, align 32
@xgene_get_tx_delay._entry_ptr = internal global ptr @xgene_get_tx_delay._entry, section ".printk_index", align 4
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx-delay\00", [23 x i8] zeroinitializer }, align 32
@xgene_get_rx_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.26, i32 1608, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid rx-delay specified\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xgene_get_rx_delay\00", [45 x i8] zeroinitializer }, align 32
@xgene_get_rx_delay._entry_ptr = internal global ptr @xgene_get_rx_delay._entry, section ".printk_index", align 4
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sfp-gpios\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rxlos-gpios\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxlos\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfp\00", [28 x i8] zeroinitializer }, align 32
@xgene_gmac_ops = external dso_local constant %struct.xgene_mac_ops, align 4
@xgene_gport_ops = external dso_local constant %struct.xgene_port_ops, align 4
@xgene_sgmac_ops = external dso_local constant %struct.xgene_mac_ops, align 4
@xgene_sgport_ops = external dso_local constant %struct.xgene_port_ops, align 4
@xgene_xgmac_ops = external dso_local constant %struct.xgene_mac_ops, align 4
@xgene_xgport_ops = external dso_local constant %struct.xgene_port_ops, align 4
@xgene_cle3in_ops = external dso_local constant %struct.xgene_cle_ops, align 4
@xgene_ring1_ops = external dso_local global %struct.xgene_ring_ops, align 4
@xgene_ring2_ops = external dso_local global %struct.xgene_ring_ops, align 4
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error in ring configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Preclass Tree init error\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@xgene_enet_create_desc_ring.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.68, ptr @.str.69, ptr @.str.26, ptr @.str.70, i8 1, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgene_enet\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xgene_enet_create_desc_ring\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ring info: num=%d  size=%d  id=%d  slots=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@xgene_enet_get_ring_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.26, i32 1118, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported cfg ring size %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgene_enet_get_ring_size\00", [39 x i8] zeroinitializer }, align 32
@xgene_enet_get_ring_size._entry_ptr = internal global ptr @xgene_enet_get_ring_size._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 15]
@__sancov_gen_cov_switch_values.73 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.74 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 33024]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"xgene_enet_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2168, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2170, i32 14 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"xgene_enet_of_match\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2002, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"xgene_ndev_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1536, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2063, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2067, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2073, i32 20 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2085, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2090, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2096, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2104, i32 20 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 915, i32 21 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 886, i32 42 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 889, i32 42 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 896, i32 41 }
@___asan_gen_.149 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 717, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 148, i32 21 }
@___asan_gen_.158 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 326, i32 6 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 270, i32 29 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1694, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1699, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1705, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1711, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1717, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1723, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1741, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1747, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1775, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1568, i32 37 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1580, i32 38 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1587, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1601, i32 38 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1608, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1668, i32 37 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1669, i32 37 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1673, i32 34 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1675, i32 35 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1823, i32 20 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1858, i32 21 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1296, i32 38 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1258, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.296 = private constant [52 x i8] c"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1118, i32 3 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author507, ptr @__UNIQUE_ID_author508, ptr @__UNIQUE_ID_description506, ptr @__UNIQUE_ID_file509, ptr @__UNIQUE_ID_license510, ptr @__exitcall_xgene_enet_driver_exit, ptr @__initcall__kmod_xgene_enet__505_2179_xgene_enet_driver_init6, ptr @xgene_enet_driver_exit, ptr @xgene_enet_get_resources._entry, ptr @xgene_enet_get_resources._entry.29, ptr @xgene_enet_get_resources._entry.32, ptr @xgene_enet_get_resources._entry.35, ptr @xgene_enet_get_resources._entry.38, ptr @xgene_enet_get_resources._entry.41, ptr @xgene_enet_get_resources._entry.44, ptr @xgene_enet_get_resources._entry.47, ptr @xgene_enet_get_resources._entry.50, ptr @xgene_enet_get_resources._entry_ptr, ptr @xgene_enet_get_resources._entry_ptr.31, ptr @xgene_enet_get_resources._entry_ptr.34, ptr @xgene_enet_get_resources._entry_ptr.37, ptr @xgene_enet_get_resources._entry_ptr.40, ptr @xgene_enet_get_resources._entry_ptr.43, ptr @xgene_enet_get_resources._entry_ptr.46, ptr @xgene_enet_get_resources._entry_ptr.49, ptr @xgene_enet_get_resources._entry_ptr.53, ptr @xgene_enet_get_ring_size._entry, ptr @xgene_enet_get_ring_size._entry_ptr, ptr @xgene_get_rx_delay._entry, ptr @xgene_get_rx_delay._entry_ptr, ptr @xgene_get_tx_delay._entry, ptr @xgene_get_tx_delay._entry_ptr, ptr @xgene_enet_driver, ptr @.str, ptr @xgene_enet_of_match, ptr @xgene_ndev_ops, ptr @xgene_enet_probe.__key, ptr @.str.1, ptr @xgene_enet_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @xgene_enet_probe.__key.5, ptr @.str.6, ptr @xgene_enet_probe.__key.7, ptr @.str.8, ptr @xgene_enet_probe.__key.9, ptr @xgene_enet_probe.__key.10, ptr @xgene_enet_probe.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ndev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_get_resources._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_get_resources._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_get_resources._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_get_resources._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_get_resources._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_get_resources._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_get_resources._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_get_resources._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_get_tx_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_get_rx_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_get_ring_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgene_enet_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @xgene_enet_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cpu_bufnum.i.i.i = alloca i32, align 4
  %dma_exp_bufs.i.i = alloca i32, align 4
  %delay.i250.i = alloca i32, align 4
  %delay.i.i = alloca i32, align 4
  %addr.i.i = alloca [6 x i8], align 1
  %id.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 632, i32 noundef 8, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %pdev3 = getelementptr i8, ptr %call, i32 2320
  %0 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev3, align 8
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %add.ptr.i, align 8
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
  tail call void @xgene_enet_set_ethtool_ops(ptr noundef nonnull %call) #10
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %5 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features, align 16
  %or = or i64 %6, 18435
  store i64 %or, ptr %features, align 16
  %call7 = tail call ptr @of_match_device(ptr noundef nonnull @xgene_enet_of_match, ptr noundef %dev1) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.of_device_id, ptr %call7, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  %enet_id = getelementptr i8, ptr %call, i32 2324
  %10 = ptrtoint ptr %enet_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %enet_id, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %enet_id11 = getelementptr i8, ptr %call, i32 2324
  %11 = ptrtoint ptr %enet_id11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %enet_id11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %if.end10.err_crit_edge, label %if.end14

if.end10.err_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end14:                                         ; preds = %if.end10
  %13 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev3, align 8
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %call.i = tail call ptr @platform_get_resource(ptr noundef %14, i32 noundef 512, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.24) #13
  br label %err

if.end.i:                                         ; preds = %if.end14
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %18
  %add.i.i = add i32 %sub.i.i, %20
  %call5.i = tail call ptr @devm_ioremap(ptr noundef %dev2.i, i32 noundef %18, i32 noundef %add.i.i) #10
  %base_addr6.i = getelementptr i8, ptr %call, i32 2528
  %21 = ptrtoint ptr %base_addr6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i, ptr %base_addr6.i, align 8
  %tobool8.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool8.not.i, label %do.end12.i, label %if.end13.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.30) #13
  br label %err

if.end13.i:                                       ; preds = %if.end.i
  %call14.i = tail call ptr @platform_get_resource(ptr noundef %14, i32 noundef 512, i32 noundef 1) #10
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %do.end19.i, label %if.end20.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.33) #13
  br label %err

if.end20.i:                                       ; preds = %if.end13.i
  %22 = ptrtoint ptr %call14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call14.i, align 4
  %end.i244.i = getelementptr inbounds %struct.resource, ptr %call14.i, i32 0, i32 1
  %24 = ptrtoint ptr %end.i244.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end.i244.i, align 4
  %sub.i245.i = sub i32 1, %23
  %add.i246.i = add i32 %sub.i245.i, %25
  %call23.i = tail call ptr @devm_ioremap(ptr noundef %dev2.i, i32 noundef %23, i32 noundef %add.i246.i) #10
  %ring_csr_addr.i = getelementptr i8, ptr %call, i32 2536
  %26 = ptrtoint ptr %ring_csr_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call23.i, ptr %ring_csr_addr.i, align 8
  %tobool25.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool25.not.i, label %do.end29.i, label %if.end30.i

do.end29.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.36) #13
  br label %err

if.end30.i:                                       ; preds = %if.end20.i
  %call31.i = tail call ptr @platform_get_resource(ptr noundef %14, i32 noundef 512, i32 noundef 2) #10
  %tobool32.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not.i, label %do.end36.i, label %if.end37.i

do.end36.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.39) #13
  br label %err

if.end37.i:                                       ; preds = %if.end30.i
  %27 = ptrtoint ptr %call31.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call31.i, align 4
  %end.i247.i = getelementptr inbounds %struct.resource, ptr %call31.i, i32 0, i32 1
  %29 = ptrtoint ptr %end.i247.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.i247.i, align 4
  %sub.i248.i = sub i32 1, %28
  %add.i249.i = add i32 %sub.i248.i, %30
  %call40.i = tail call ptr @devm_ioremap(ptr noundef %dev2.i, i32 noundef %28, i32 noundef %add.i249.i) #10
  %ring_cmd_addr.i = getelementptr i8, ptr %call, i32 2540
  %31 = ptrtoint ptr %ring_cmd_addr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call40.i, ptr %ring_cmd_addr.i, align 4
  %tobool42.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool42.not.i, label %do.end46.i, label %if.end47.i

do.end46.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.42) #13
  br label %err

if.end47.i:                                       ; preds = %if.end37.i
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 27
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  %tobool48.not.i = icmp eq ptr %33, null
  br i1 %tobool48.not.i, label %if.end47.i.if.end50.i_crit_edge, label %if.then49.i

if.end47.i.if.end50.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then49.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i.i) #10
  %34 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %id.i.i, align 4
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.54, ptr noundef nonnull %id.i.i, i32 noundef 1, i32 noundef 0) #10
  %35 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id.i.i, align 4
  %and.i.i = and i32 %36, 1
  %port_id.i.i = getelementptr i8, ptr %call, i32 2828
  %37 = ptrtoint ptr %port_id.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i.i, ptr %port_id.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i.i) #10
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %if.end47.i.if.end50.i_crit_edge
  %call51.i = call i32 @device_get_ethdev_address(ptr noundef %dev2.i, ptr noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end50.i.if.end54.i_crit_edge, label %if.then53.i

if.end50.i.if.end54.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54.i

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #10
  %38 = call ptr @memset(ptr %addr.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i, i32 noundef 6) #10
  %39 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %addr.i.i, align 1
  %41 = and i8 %40, -4
  %42 = or i8 %41, 2
  store i8 %42, ptr %addr.i.i, align 1
  call void @dev_addr_mod(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #10
  %addr_assign_type.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 55
  %43 = ptrtoint ptr %addr_assign_type.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %addr_assign_type.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #10
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %if.end50.i.if.end54.i_crit_edge
  %perm_addr.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 54
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 86
  %44 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_addr.i, align 64
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 56
  %46 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %47 to i32
  %48 = call ptr @memcpy(ptr %perm_addr.i, ptr %45, i32 %conv.i)
  %call55.i = call i32 @device_get_phy_mode(ptr noundef %dev2.i) #10
  %phy_mode.i = getelementptr i8, ptr %call, i32 2544
  %49 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call55.i, ptr %phy_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp.i = icmp slt i32 %call55.i, 0
  br i1 %cmp.i, label %do.end61.i, label %if.end63.i

do.end61.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.45) #13
  %50 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %phy_mode.i, align 8
  br label %xgene_enet_get_resources.exit

if.end63.i:                                       ; preds = %if.end54.i
  %52 = add nsw i32 %call55.i, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %53 = icmp ult i32 %52, 4
  br i1 %53, label %if.end63.i.if.end77.i_crit_edge, label %land.lhs.true.i

if.end63.i.if.end77.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

land.lhs.true.i:                                  ; preds = %if.end63.i
  %54 = zext i32 %call55.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call55.i, label %do.end76.i [
    i32 4, label %land.lhs.true.i.if.end77.i_crit_edge
    i32 15, label %land.lhs.true.i.if.end77.i_crit_edge273
  ]

land.lhs.true.i.if.end77.i_crit_edge273:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

land.lhs.true.i.if.end77.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

do.end76.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.48) #13
  br label %err

if.end77.i:                                       ; preds = %land.lhs.true.i.if.end77.i_crit_edge, %land.lhs.true.i.if.end77.i_crit_edge273, %if.end63.i.if.end77.i_crit_edge
  %55 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev3, align 8
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay.i.i) #10
  %57 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %delay.i.i, align 4, !annotation !152
  %call.i.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.55, ptr noundef nonnull %delay.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end77.i.if.end81.i_crit_edge

if.end77.i.if.end81.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

if.end.i.i:                                       ; preds = %if.end77.i
  %58 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %delay.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %59)
  %60 = icmp ugt i32 %59, 7
  br i1 %60, label %xgene_get_tx_delay.exit.i, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = trunc i32 %59 to i8
  br label %if.end81.i

xgene_get_tx_delay.exit.i:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.56) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay.i.i) #10
  br label %err

if.end81.i:                                       ; preds = %if.end4.i.i, %if.end77.i.if.end81.i_crit_edge
  %.sink.i = phi i8 [ %conv.i.i, %if.end4.i.i ], [ 4, %if.end77.i.if.end81.i_crit_edge ]
  %tx_delay.i.i = getelementptr i8, ptr %call, i32 2916
  %61 = ptrtoint ptr %tx_delay.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %.sink.i, ptr %tx_delay.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay.i.i) #10
  %62 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev3, align 8
  %dev1.i252.i = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay.i250.i) #10
  %64 = ptrtoint ptr %delay.i250.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %delay.i250.i, align 4, !annotation !152
  %call.i.i253.i = call i32 @device_property_read_u32_array(ptr noundef %dev1.i252.i, ptr noundef nonnull @.str.58, ptr noundef nonnull %delay.i250.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i253.i)
  %tobool.not.i254.i = icmp eq i32 %call.i.i253.i, 0
  br i1 %tobool.not.i254.i, label %if.end.i256.i, label %if.end81.i.if.end85.i_crit_edge

if.end81.i.if.end85.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

if.end.i256.i:                                    ; preds = %if.end81.i
  %65 = ptrtoint ptr %delay.i250.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %delay.i250.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %66)
  %67 = icmp ugt i32 %66, 7
  br i1 %67, label %xgene_get_rx_delay.exit.i, label %if.end4.i259.i

if.end4.i259.i:                                   ; preds = %if.end.i256.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i258.i = trunc i32 %66 to i8
  br label %if.end85.i

xgene_get_rx_delay.exit.i:                        ; preds = %if.end.i256.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i252.i, ptr noundef nonnull @.str.59) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay.i250.i) #10
  br label %err

if.end85.i:                                       ; preds = %if.end4.i259.i, %if.end81.i.if.end85.i_crit_edge
  %.sink308.i = phi i8 [ %conv.i258.i, %if.end4.i259.i ], [ 2, %if.end81.i.if.end85.i_crit_edge ]
  %rx_delay.i.i = getelementptr i8, ptr %call, i32 2917
  %68 = ptrtoint ptr %rx_delay.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %.sink308.i, ptr %rx_delay.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay.i250.i) #10
  %69 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev3, align 8
  %71 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %phy_mode.i, align 8
  %73 = add i32 %72, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %73)
  %74 = icmp ult i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp.i.i = icmp eq i32 %72, 4
  %.38.i.i = select i1 %cmp.i.i, i32 2, i32 16
  %max_irqs.0.i.i = select i1 %74, i32 1, i32 %.38.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end18.i.i.for.body.i.i_crit_edge, %if.end85.i
  %i.041.i.i = phi i32 [ 0, %if.end85.i ], [ %inc.i.i, %if.end18.i.i.for.body.i.i_crit_edge ]
  %call7.i.i = call i32 @platform_get_irq(ptr noundef %70, i32 noundef %i.041.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i.i)
  %cmp8.i.i = icmp slt i32 %call7.i.i, 1
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end18.i.i

if.then9.i.i:                                     ; preds = %for.body.i.i
  %75 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %phy_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %76)
  %cmp11.i.i = icmp eq i32 %76, 15
  br i1 %cmp11.i.i, label %if.then12.i.i, label %if.end17.i.i

if.then12.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %div39.i.i = lshr i32 %i.041.i.i, 1
  %conv.i261.i = trunc i32 %div39.i.i to i8
  %rxq_cnt.i.i = getelementptr i8, ptr %call, i32 2500
  %77 = ptrtoint ptr %rxq_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv.i261.i, ptr %rxq_cnt.i.i, align 4
  %txq_cnt.i.i = getelementptr i8, ptr %call, i32 2501
  %78 = ptrtoint ptr %txq_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv.i261.i, ptr %txq_cnt.i.i, align 1
  %cq_cnt.i.i = getelementptr i8, ptr %call, i32 2502
  %79 = ptrtoint ptr %cq_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv.i261.i, ptr %cq_cnt.i.i, align 2
  br label %if.end89.i

if.end17.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not.i262.i = icmp eq i32 %call7.i.i, 0
  %spec.select = select i1 %tobool.not.i262.i, i32 -6, i32 %call7.i.i
  br label %err

if.end18.i.i:                                     ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 13, i32 %i.041.i.i
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call7.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.041.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %max_irqs.0.i.i
  br i1 %exitcond.not.i.i, label %if.end18.i.i.if.end89.i_crit_edge, label %if.end18.i.i.for.body.i.i_crit_edge

if.end18.i.i.for.body.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end18.i.i.if.end89.i_crit_edge:                ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.end18.i.i.if.end89.i_crit_edge, %if.then12.i.i
  %81 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev3, align 8
  %dev1.i265.i = getelementptr inbounds %struct.platform_device, ptr %82, i32 0, i32 3
  %sfp_gpio_en.i.i = getelementptr i8, ptr %call, i32 2924
  %83 = ptrtoint ptr %sfp_gpio_en.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %sfp_gpio_en.i.i, align 4
  %84 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %phy_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %85)
  %cmp.not.i.i = icmp eq i32 %85, 15
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end89.i.xgene_enet_gpiod_get.exit.i_crit_edge

if.end89.i.xgene_enet_gpiod_get.exit.i_crit_edge: ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_gpiod_get.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end89.i
  %call.i.i = call zeroext i1 @device_property_present(ptr noundef %dev1.i265.i, ptr noundef nonnull @.str.61) #10
  br i1 %call.i.i, label %lor.lhs.false.i.i.if.end.i267.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.i.if.end.i267.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i267.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call2.i.i = call zeroext i1 @device_property_present(ptr noundef %dev1.i265.i, ptr noundef nonnull @.str.62) #10
  br i1 %call2.i.i, label %land.lhs.true.i.i.if.end.i267.i_crit_edge, label %land.lhs.true.i.i.xgene_enet_gpiod_get.exit.i_crit_edge

land.lhs.true.i.i.xgene_enet_gpiod_get.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_gpiod_get.exit.i

land.lhs.true.i.i.if.end.i267.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i267.i

if.end.i267.i:                                    ; preds = %land.lhs.true.i.i.if.end.i267.i_crit_edge, %lor.lhs.false.i.i.if.end.i267.i_crit_edge
  %86 = ptrtoint ptr %sfp_gpio_en.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %sfp_gpio_en.i.i, align 4
  %call4.i.i = call ptr @gpiod_get(ptr noundef %dev1.i265.i, ptr noundef nonnull @.str.63, i32 noundef 1) #10
  %sfp_rdy.i.i = getelementptr i8, ptr %call, i32 2920
  %87 = ptrtoint ptr %sfp_rdy.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call4.i.i, ptr %sfp_rdy.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then7.i.i, label %if.end.i267.i.xgene_enet_gpiod_get.exit.i_crit_edge

if.end.i267.i.xgene_enet_gpiod_get.exit.i_crit_edge: ; preds = %if.end.i267.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_gpiod_get.exit.i

if.then7.i.i:                                     ; preds = %if.end.i267.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i.i = call ptr @gpiod_get(ptr noundef %dev1.i265.i, ptr noundef nonnull @.str.64, i32 noundef 1) #10
  %88 = ptrtoint ptr %sfp_rdy.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call8.i.i, ptr %sfp_rdy.i.i, align 8
  br label %xgene_enet_gpiod_get.exit.i

xgene_enet_gpiod_get.exit.i:                      ; preds = %if.then7.i.i, %if.end.i267.i.xgene_enet_gpiod_get.exit.i_crit_edge, %land.lhs.true.i.i.xgene_enet_gpiod_get.exit.i_crit_edge, %if.end89.i.xgene_enet_gpiod_get.exit.i_crit_edge
  %call91.i = call ptr @devm_clk_get(ptr noundef %dev2.i, ptr noundef null) #10
  %clk.i = getelementptr i8, ptr %call, i32 2316
  %89 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call91.i, ptr %clk.i, align 4
  %cmp.i268.i = icmp ugt ptr %call91.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i268.i, label %if.then94.i, label %xgene_enet_gpiod_get.exit.i.if.end113.i_crit_edge

xgene_enet_gpiod_get.exit.i.if.end113.i_crit_edge: ; preds = %xgene_enet_gpiod_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i

if.then94.i:                                      ; preds = %xgene_enet_gpiod_get.exit.i
  %90 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %phy_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %91)
  %cmp96.not.i = icmp eq i32 %91, 4
  br i1 %cmp96.not.i, label %if.end120.thread293.i, label %if.then98.i

if.end120.thread293.i:                            ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %base_addr6.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base_addr6.i, align 8
  %port_id294.i = getelementptr i8, ptr %call, i32 2828
  %94 = ptrtoint ptr %port_id294.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port_id294.i, align 4
  %mul.neg295.i = mul i32 %95, -48
  %add.ptr296.i = getelementptr i8, ptr %93, i32 %mul.neg295.i
  %add.ptr121297.i = getelementptr i8, ptr %add.ptr296.i, i32 8192
  %eth_csr_addr298.i = getelementptr i8, ptr %call, i32 2504
  %96 = ptrtoint ptr %eth_csr_addr298.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr121297.i, ptr %eth_csr_addr298.i, align 8
  %add.ptr122299.i = getelementptr i8, ptr %add.ptr296.i, i32 24576
  %cle300.i = getelementptr i8, ptr %call, i32 2552
  %97 = ptrtoint ptr %cle300.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr122299.i, ptr %cle300.i, align 8
  %add.ptr123301.i = getelementptr i8, ptr %add.ptr296.i, i32 36864
  %eth_ring_if_addr302.i = getelementptr i8, ptr %call, i32 2508
  %98 = ptrtoint ptr %eth_ring_if_addr302.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %add.ptr123301.i, ptr %eth_ring_if_addr302.i, align 4
  %add.ptr124303.i = getelementptr i8, ptr %add.ptr296.i, i32 53248
  %eth_diag_csr_addr304.i = getelementptr i8, ptr %call, i32 2512
  %99 = ptrtoint ptr %eth_diag_csr_addr304.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr124303.i, ptr %eth_diag_csr_addr304.i, align 8
  br label %if.then132.i

if.then98.i:                                      ; preds = %if.then94.i
  %100 = ptrtoint ptr %call91.i to i32
  %cmp101.not.i = icmp eq ptr %call91.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp101.not.i, label %lor.lhs.false.i, label %if.then98.i.xgene_enet_get_resources.exit_crit_edge

if.then98.i.xgene_enet_get_resources.exit_crit_edge: ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_get_resources.exit

lor.lhs.false.i:                                  ; preds = %if.then98.i
  %101 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %of_node.i, align 8
  %tobool104.not.i = icmp eq ptr %102, null
  br i1 %tobool104.not.i, label %do.end111.i, label %lor.lhs.false.i.err_crit_edge

lor.lhs.false.i.err_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.end111.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.51) #13
  br label %if.end113.i

if.end113.i:                                      ; preds = %do.end111.i, %xgene_enet_gpiod_get.exit.i.if.end113.i_crit_edge
  %103 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pr.i = load i32, ptr %phy_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %.pr.i)
  %cmp115.not.i = icmp eq i32 %.pr.i, 15
  %104 = ptrtoint ptr %base_addr6.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base_addr6.i, align 8
  br i1 %cmp115.not.i, label %if.end120.thread.i, label %if.end120.i

if.end120.thread.i:                               ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr121283.i = getelementptr i8, ptr %105, i32 8192
  %eth_csr_addr284.i = getelementptr i8, ptr %call, i32 2504
  %106 = ptrtoint ptr %eth_csr_addr284.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %add.ptr121283.i, ptr %eth_csr_addr284.i, align 8
  %add.ptr122285.i = getelementptr i8, ptr %105, i32 24576
  %cle286.i = getelementptr i8, ptr %call, i32 2552
  %107 = ptrtoint ptr %cle286.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %add.ptr122285.i, ptr %cle286.i, align 8
  %add.ptr123287.i = getelementptr i8, ptr %105, i32 36864
  %eth_ring_if_addr288.i = getelementptr i8, ptr %call, i32 2508
  %108 = ptrtoint ptr %eth_ring_if_addr288.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %add.ptr123287.i, ptr %eth_ring_if_addr288.i, align 4
  %add.ptr124289.i = getelementptr i8, ptr %105, i32 53248
  %eth_diag_csr_addr290.i = getelementptr i8, ptr %call, i32 2512
  %109 = ptrtoint ptr %eth_diag_csr_addr290.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %add.ptr124289.i, ptr %eth_diag_csr_addr290.i, align 8
  br label %if.else140.i

if.end120.i:                                      ; preds = %if.end113.i
  %port_id.i = getelementptr i8, ptr %call, i32 2828
  %110 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %port_id.i, align 4
  %mul.neg.i = mul i32 %111, -48
  %add.ptr.i188 = getelementptr i8, ptr %105, i32 %mul.neg.i
  %add.ptr121.i = getelementptr i8, ptr %add.ptr.i188, i32 8192
  %eth_csr_addr.i = getelementptr i8, ptr %call, i32 2504
  %112 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %add.ptr121.i, ptr %eth_csr_addr.i, align 8
  %add.ptr122.i = getelementptr i8, ptr %add.ptr.i188, i32 24576
  %cle.i = getelementptr i8, ptr %call, i32 2552
  %113 = ptrtoint ptr %cle.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %add.ptr122.i, ptr %cle.i, align 8
  %add.ptr123.i = getelementptr i8, ptr %add.ptr.i188, i32 36864
  %eth_ring_if_addr.i = getelementptr i8, ptr %call, i32 2508
  %114 = ptrtoint ptr %eth_ring_if_addr.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %add.ptr123.i, ptr %eth_ring_if_addr.i, align 4
  %add.ptr124.i = getelementptr i8, ptr %add.ptr.i188, i32 53248
  %eth_diag_csr_addr.i = getelementptr i8, ptr %call, i32 2512
  %115 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %add.ptr124.i, ptr %eth_diag_csr_addr.i, align 8
  %116 = zext i32 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %.pr.i, label %if.end120.i.if.else140.i_crit_edge [
    i32 12, label %if.end120.i.if.then132.i_crit_edge
    i32 11, label %if.end120.i.if.then132.i_crit_edge274
    i32 10, label %if.end120.i.if.then132.i_crit_edge275
    i32 9, label %if.end120.i.if.then132.i_crit_edge276
    i32 4, label %if.end120.i.if.then132.i_crit_edge277
  ]

if.end120.i.if.then132.i_crit_edge277:            ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.i

if.end120.i.if.then132.i_crit_edge276:            ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.i

if.end120.i.if.then132.i_crit_edge275:            ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.i

if.end120.i.if.then132.i_crit_edge274:            ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.i

if.end120.i.if.then132.i_crit_edge:               ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.i

if.end120.i.if.else140.i_crit_edge:               ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else140.i

if.then132.i:                                     ; preds = %if.end120.i.if.then132.i_crit_edge, %if.end120.i.if.then132.i_crit_edge274, %if.end120.i.if.then132.i_crit_edge275, %if.end120.i.if.then132.i_crit_edge276, %if.end120.i.if.then132.i_crit_edge277, %if.end120.thread293.i
  %add.ptr305.i = phi ptr [ %add.ptr296.i, %if.end120.thread293.i ], [ %add.ptr.i188, %if.end120.i.if.then132.i_crit_edge ], [ %add.ptr.i188, %if.end120.i.if.then132.i_crit_edge274 ], [ %add.ptr.i188, %if.end120.i.if.then132.i_crit_edge275 ], [ %add.ptr.i188, %if.end120.i.if.then132.i_crit_edge276 ], [ %add.ptr.i188, %if.end120.i.if.then132.i_crit_edge277 ]
  %117 = ptrtoint ptr %base_addr6.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base_addr6.i, align 8
  %mcx_mac_addr.i = getelementptr i8, ptr %call, i32 2516
  %119 = ptrtoint ptr %mcx_mac_addr.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %mcx_mac_addr.i, align 4
  %mcx_stats_addr.i = getelementptr i8, ptr %call, i32 2524
  %120 = ptrtoint ptr %mcx_stats_addr.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %118, ptr %mcx_stats_addr.i, align 4
  %121 = ptrtoint ptr %enet_id11 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %enet_id11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %122)
  %cmp137.i = icmp eq i32 %122, 1
  %cond.i = select i1 %cmp137.i, i32 10240, i32 12288
  %add.ptr139.i = getelementptr i8, ptr %add.ptr305.i, i32 %cond.i
  %mcx_mac_csr_addr.i = getelementptr i8, ptr %call, i32 2520
  %123 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %add.ptr139.i, ptr %mcx_mac_csr_addr.i, align 8
  br label %xgene_enet_get_resources.exit.thread235

if.else140.i:                                     ; preds = %if.end120.i.if.else140.i_crit_edge, %if.end120.thread.i
  %add.ptr121292.i = phi ptr [ %add.ptr121283.i, %if.end120.thread.i ], [ %add.ptr121.i, %if.end120.i.if.else140.i_crit_edge ]
  %base_addr.0291.i = phi ptr [ %105, %if.end120.thread.i ], [ %add.ptr.i188, %if.end120.i.if.else140.i_crit_edge ]
  %add.ptr141.i = getelementptr i8, ptr %base_addr.0291.i, i32 2048
  %mcx_mac_addr142.i = getelementptr i8, ptr %call, i32 2516
  %124 = ptrtoint ptr %mcx_mac_addr142.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %add.ptr141.i, ptr %mcx_mac_addr142.i, align 4
  %mcx_stats_addr144.i = getelementptr i8, ptr %call, i32 2524
  %125 = ptrtoint ptr %mcx_stats_addr144.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %add.ptr141.i, ptr %mcx_stats_addr144.i, align 4
  %mcx_mac_csr_addr146.i = getelementptr i8, ptr %call, i32 2520
  %126 = ptrtoint ptr %mcx_mac_csr_addr146.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %add.ptr121292.i, ptr %mcx_mac_csr_addr146.i, align 8
  %add.ptr147.i = getelementptr i8, ptr %base_addr.0291.i, i32 14336
  %pcs_addr.i = getelementptr i8, ptr %call, i32 2532
  %127 = ptrtoint ptr %pcs_addr.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr147.i, ptr %pcs_addr.i, align 4
  br label %xgene_enet_get_resources.exit.thread235

xgene_enet_get_resources.exit.thread235:          ; preds = %if.else140.i, %if.then132.i
  %rx_buff_cnt.i = getelementptr i8, ptr %call, i32 2428
  %128 = ptrtoint ptr %rx_buff_cnt.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1024, ptr %rx_buff_cnt.i, align 4
  br label %if.end18

xgene_enet_get_resources.exit:                    ; preds = %if.then98.i.xgene_enet_get_resources.exit_crit_edge, %do.end61.i
  %retval.0.i = phi i32 [ %51, %do.end61.i ], [ %100, %if.then98.i.xgene_enet_get_resources.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool16.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool16.not, label %xgene_enet_get_resources.exit.if.end18_crit_edge, label %xgene_enet_get_resources.exit.err_crit_edge

xgene_enet_get_resources.exit.err_crit_edge:      ; preds = %xgene_enet_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

xgene_enet_get_resources.exit.if.end18_crit_edge: ; preds = %xgene_enet_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end18:                                         ; preds = %xgene_enet_get_resources.exit.if.end18_crit_edge, %xgene_enet_get_resources.exit.thread235
  %129 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %phy_mode.i, align 8
  %131 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %130, label %sw.default.i [
    i32 9, label %if.end18.sw.bb.i_crit_edge
    i32 10, label %if.end18.sw.bb.i_crit_edge278
    i32 11, label %if.end18.sw.bb.i_crit_edge279
    i32 12, label %if.end18.sw.bb.i_crit_edge280
    i32 4, label %sw.bb1.i
  ]

if.end18.sw.bb.i_crit_edge280:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end18.sw.bb.i_crit_edge279:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end18.sw.bb.i_crit_edge278:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end18.sw.bb.i_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end18.sw.bb.i_crit_edge, %if.end18.sw.bb.i_crit_edge278, %if.end18.sw.bb.i_crit_edge279, %if.end18.sw.bb.i_crit_edge280
  %mac_ops.i = getelementptr i8, ptr %call, i32 2668
  %132 = ptrtoint ptr %mac_ops.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @xgene_gmac_ops, ptr %mac_ops.i, align 4
  %port_ops.i = getelementptr i8, ptr %call, i32 2716
  %133 = ptrtoint ptr %port_ops.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @xgene_gport_ops, ptr %port_ops.i, align 4
  %rm.i = getelementptr i8, ptr %call, i32 2548
  %134 = ptrtoint ptr %rm.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 3, ptr %rm.i, align 4
  %rxq_cnt.i = getelementptr i8, ptr %call, i32 2500
  %135 = ptrtoint ptr %rxq_cnt.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %rxq_cnt.i, align 4
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %mac_ops2.i = getelementptr i8, ptr %call, i32 2668
  %136 = ptrtoint ptr %mac_ops2.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @xgene_sgmac_ops, ptr %mac_ops2.i, align 4
  %port_ops3.i = getelementptr i8, ptr %call, i32 2716
  %137 = ptrtoint ptr %port_ops3.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @xgene_sgport_ops, ptr %port_ops3.i, align 4
  %rm4.i = getelementptr i8, ptr %call, i32 2548
  %138 = ptrtoint ptr %rm4.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %rm4.i, align 4
  %rxq_cnt5.i = getelementptr i8, ptr %call, i32 2500
  %139 = ptrtoint ptr %rxq_cnt5.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %rxq_cnt5.i, align 4
  br label %sw.epilog.sink.split.i

sw.default.i:                                     ; preds = %if.end18
  %mac_ops8.i = getelementptr i8, ptr %call, i32 2668
  %140 = ptrtoint ptr %mac_ops8.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @xgene_xgmac_ops, ptr %mac_ops8.i, align 4
  %port_ops9.i = getelementptr i8, ptr %call, i32 2716
  %141 = ptrtoint ptr %port_ops9.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @xgene_xgport_ops, ptr %port_ops9.i, align 4
  %cle_ops.i = getelementptr i8, ptr %call, i32 2724
  %142 = ptrtoint ptr %cle_ops.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @xgene_cle3in_ops, ptr %cle_ops.i, align 4
  %rm10.i = getelementptr i8, ptr %call, i32 2548
  %143 = ptrtoint ptr %rm10.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %rm10.i, align 4
  %rxq_cnt11.i = getelementptr i8, ptr %call, i32 2500
  %144 = ptrtoint ptr %rxq_cnt11.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %rxq_cnt11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i190 = icmp eq i8 %145, 0
  br i1 %tobool.not.i190, label %if.then.i, label %sw.default.i.sw.epilog.i_crit_edge

sw.default.i.sw.epilog.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then.i:                                        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %rxq_cnt11.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 8, ptr %rxq_cnt11.i, align 4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.then.i, %sw.bb1.i, %sw.bb.i
  %.sink110.i = phi i8 [ 8, %if.then.i ], [ 1, %sw.bb1.i ], [ 1, %sw.bb.i ]
  %.sink.i191 = phi i8 [ 8, %if.then.i ], [ 1, %sw.bb1.i ], [ 0, %sw.bb.i ]
  %txq_cnt13.i = getelementptr i8, ptr %call, i32 2501
  %147 = ptrtoint ptr %txq_cnt13.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %.sink110.i, ptr %txq_cnt13.i, align 1
  %cq_cnt14.i = getelementptr i8, ptr %call, i32 2502
  %148 = ptrtoint ptr %cq_cnt14.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %.sink.i191, ptr %cq_cnt14.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.default.i.sw.epilog.i_crit_edge
  %149 = ptrtoint ptr %enet_id11 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %enet_id11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %150)
  %cmp.i193 = icmp eq i32 %150, 1
  %port_id.i194 = getelementptr i8, ptr %call, i32 2828
  %151 = ptrtoint ptr %port_id.i194 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %port_id.i194, align 4
  br i1 %cmp.i193, label %if.then15.i, label %if.else41.i

if.then15.i:                                      ; preds = %sw.epilog.i
  %153 = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %152, label %if.then15.i.xgene_enet_setup_ops.exit_crit_edge [
    i32 0, label %sw.bb16.i
    i32 1, label %sw.bb25.i
  ]

if.then15.i.xgene_enet_setup_ops.exit_crit_edge:  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_setup_ops.exit

sw.bb16.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %130)
  %cmp18.i = icmp eq i32 %130, 15
  %cpu_bufnum.i = getelementptr i8, ptr %call, i32 2832
  %154 = ptrtoint ptr %cpu_bufnum.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %cpu_bufnum.i, align 8
  %eth_bufnum.i = getelementptr i8, ptr %call, i32 2833
  br i1 %cmp18.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %eth_bufnum.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %eth_bufnum.i, align 1
  br label %sw.epilog40.sink.split.i

if.else.i:                                        ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %eth_bufnum.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 2, ptr %eth_bufnum.i, align 1
  br label %sw.epilog40.sink.split.i

sw.bb25.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %130)
  %cmp27.i = icmp eq i32 %130, 15
  %cpu_bufnum29.i = getelementptr i8, ptr %call, i32 2832
  %157 = ptrtoint ptr %cpu_bufnum29.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 12, ptr %cpu_bufnum29.i, align 8
  %eth_bufnum30.i = getelementptr i8, ptr %call, i32 2833
  br i1 %cmp27.i, label %if.then28.i, label %if.else33.i

if.then28.i:                                      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #12
  %158 = ptrtoint ptr %eth_bufnum30.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 2, ptr %eth_bufnum30.i, align 1
  br label %sw.epilog40.sink.split.i

if.else33.i:                                      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %eth_bufnum30.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 10, ptr %eth_bufnum30.i, align 1
  br label %sw.epilog40.sink.split.i

sw.epilog40.sink.split.i:                         ; preds = %if.else33.i, %if.then28.i, %if.else.i, %if.then19.i
  %.sink112.i = phi i8 [ 34, %if.then28.i ], [ 42, %if.else33.i ], [ 32, %if.then19.i ], [ 34, %if.else.i ]
  %.sink111.i = phi i16 [ 264, %if.then28.i ], [ 264, %if.else33.i ], [ 8, %if.then19.i ], [ 8, %if.else.i ]
  %bp_bufnum31.i = getelementptr i8, ptr %call, i32 2834
  %160 = ptrtoint ptr %bp_bufnum31.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %.sink112.i, ptr %bp_bufnum31.i, align 2
  %ring_num32.i = getelementptr i8, ptr %call, i32 2836
  %161 = ptrtoint ptr %ring_num32.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %.sink111.i, ptr %ring_num32.i, align 4
  br label %xgene_enet_setup_ops.exit

if.else41.i:                                      ; preds = %sw.epilog.i
  %162 = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %152, label %if.else41.i.sw.epilog54.i_crit_edge [
    i32 0, label %if.else41.i.sw.epilog54.sink.split.i_crit_edge
    i32 1, label %sw.bb48.i
  ]

if.else41.i.sw.epilog54.sink.split.i_crit_edge:   ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog54.sink.split.i

if.else41.i.sw.epilog54.i_crit_edge:              ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog54.i

sw.bb48.i:                                        ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog54.sink.split.i

sw.epilog54.sink.split.i:                         ; preds = %sw.bb48.i, %if.else41.i.sw.epilog54.sink.split.i_crit_edge
  %.sink114.i = phi i8 [ 12, %sw.bb48.i ], [ 0, %if.else41.i.sw.epilog54.sink.split.i_crit_edge ]
  %.sink113.i = phi i16 [ 256, %sw.bb48.i ], [ 0, %if.else41.i.sw.epilog54.sink.split.i_crit_edge ]
  %cpu_bufnum49.i = getelementptr i8, ptr %call, i32 2832
  %163 = ptrtoint ptr %cpu_bufnum49.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %.sink114.i, ptr %cpu_bufnum49.i, align 8
  %eth_bufnum50.i = getelementptr i8, ptr %call, i32 2833
  %164 = ptrtoint ptr %eth_bufnum50.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %eth_bufnum50.i, align 1
  %bp_bufnum51.i = getelementptr i8, ptr %call, i32 2834
  %165 = ptrtoint ptr %bp_bufnum51.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 32, ptr %bp_bufnum51.i, align 2
  %ring_num52.i = getelementptr i8, ptr %call, i32 2836
  %166 = ptrtoint ptr %ring_num52.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %.sink113.i, ptr %ring_num52.i, align 4
  br label %sw.epilog54.i

sw.epilog54.i:                                    ; preds = %sw.epilog54.sink.split.i, %if.else41.i.sw.epilog54.i_crit_edge
  %rm55.i = getelementptr i8, ptr %call, i32 2548
  %167 = ptrtoint ptr %rm55.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %rm55.i, align 4
  br label %xgene_enet_setup_ops.exit

xgene_enet_setup_ops.exit:                        ; preds = %sw.epilog54.i, %sw.epilog40.sink.split.i, %if.then15.i.xgene_enet_setup_ops.exit_crit_edge
  %xgene_ring2_ops.sink.i = phi ptr [ @xgene_ring2_ops, %sw.epilog54.i ], [ @xgene_ring1_ops, %sw.epilog40.sink.split.i ], [ @xgene_ring1_ops, %if.then15.i.xgene_enet_setup_ops.exit_crit_edge ]
  %ring_ops56.i = getelementptr i8, ptr %call, i32 2720
  %168 = ptrtoint ptr %ring_ops56.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %xgene_ring2_ops.sink.i, ptr %ring_ops56.i, align 8
  %mac_lock = getelementptr i8, ptr %call, i32 2672
  call void @__raw_spin_lock_init(ptr noundef %mac_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @xgene_enet_probe.__key, i16 noundef signext 3) #10
  %169 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %phy_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %170)
  %cmp = icmp eq i32 %170, 15
  br i1 %cmp, label %if.then20, label %xgene_enet_setup_ops.exit.if.end27_crit_edge

xgene_enet_setup_ops.exit.if.end27_crit_edge:     ; preds = %xgene_enet_setup_ops.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20:                                        ; preds = %xgene_enet_setup_ops.exit
  call void @__sanitizer_cov_trace_pc() #12
  %171 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %features, align 16
  %or22 = or i64 %172, 1099511693312
  store i64 %or22, ptr %features, align 16
  %mss_lock = getelementptr i8, ptr %call, i32 2872
  call void @__raw_spin_lock_init(ptr noundef %mss_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @xgene_enet_probe.__key.2, i16 noundef signext 3) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %xgene_enet_setup_ops.exit.if.end27_crit_edge
  %173 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %175 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %174, ptr %hw_features, align 8
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %176 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i195 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i195)
  %cmp.i.i196 = icmp eq i32 %call.i.i195, 0
  br i1 %cmp.i.i196, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.4) #13
  br label %err

if.end32:                                         ; preds = %if.end27
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef -1) #10
  %177 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %phy_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %178)
  %cmp.i198 = icmp eq i32 %178, 15
  br i1 %cmp.i198, label %if.end32.xgene_enet_check_phy_handle.exit_crit_edge, label %if.end.i201

if.end32.xgene_enet_check_phy_handle.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_check_phy_handle.exit

if.end.i201:                                      ; preds = %if.end32
  %179 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %add.ptr.i, align 8
  %call.i199 = call i32 @xgene_enet_phy_connect(ptr noundef %180) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i200 = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i200, label %if.then1.i, label %if.end.i201.xgene_enet_check_phy_handle.exit_crit_edge

if.end.i201.xgene_enet_check_phy_handle.exit_crit_edge: ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_check_phy_handle.exit

if.then1.i:                                       ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #12
  %mdio_driver.i = getelementptr i8, ptr %call, i32 2918
  %181 = ptrtoint ptr %mdio_driver.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 1, ptr %mdio_driver.i, align 2
  br label %xgene_enet_check_phy_handle.exit

xgene_enet_check_phy_handle.exit:                 ; preds = %if.then1.i, %if.end.i201.xgene_enet_check_phy_handle.exit_crit_edge, %if.end32.xgene_enet_check_phy_handle.exit_crit_edge
  %182 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %add.ptr.i, align 8
  %port_ops.i202 = getelementptr i8, ptr %call, i32 2716
  %184 = ptrtoint ptr %port_ops.i202 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %port_ops.i202, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 4
  %call.i203 = call i32 %187(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %tobool.not.i204 = icmp eq i32 %call.i203, 0
  br i1 %tobool.not.i204, label %if.end.i206, label %xgene_enet_check_phy_handle.exit.err2_crit_edge

xgene_enet_check_phy_handle.exit.err2_crit_edge:  ; preds = %xgene_enet_check_phy_handle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err2

if.end.i206:                                      ; preds = %xgene_enet_check_phy_handle.exit
  %add.ptr.i.i.i = getelementptr i8, ptr %183, i32 2304
  %parent.i.i.i = getelementptr inbounds %struct.net_device, ptr %183, i32 0, i32 133, i32 1
  %188 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %parent.i.i.i, align 8
  %eth_bufnum2.i.i = getelementptr i8, ptr %183, i32 2833
  %190 = ptrtoint ptr %eth_bufnum2.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %eth_bufnum2.i.i, align 1
  %bp_bufnum3.i.i = getelementptr i8, ptr %183, i32 2834
  %192 = ptrtoint ptr %bp_bufnum3.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %bp_bufnum3.i.i, align 2
  %ring_num4.i.i = getelementptr i8, ptr %183, i32 2836
  %194 = ptrtoint ptr %ring_num4.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %ring_num4.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_exp_bufs.i.i) #10
  %196 = ptrtoint ptr %dma_exp_bufs.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 -1, ptr %dma_exp_bufs.i.i, align 4, !annotation !152
  %pdev.i.i.i = getelementptr i8, ptr %183, i32 2320
  %197 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pdev.i.i.i, align 8
  %dev1.i.i.i = getelementptr inbounds %struct.platform_device, ptr %198, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_bufnum.i.i.i) #10
  %199 = ptrtoint ptr %cpu_bufnum.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 -1, ptr %cpu_bufnum.i.i.i, align 4, !annotation !152
  %call.i.i.i.i205 = call i32 @device_property_read_u32_array(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.67, ptr noundef nonnull %cpu_bufnum.i.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i205)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i205, 0
  br i1 %tobool.not.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #12
  %200 = ptrtoint ptr %cpu_bufnum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %cpu_bufnum.i.i.i, align 4
  br label %xgene_start_cpu_bufnum.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #12
  %cpu_bufnum2.i.i.i = getelementptr i8, ptr %183, i32 2832
  %202 = ptrtoint ptr %cpu_bufnum2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %cpu_bufnum2.i.i.i, align 8
  %conv.i.i.i = zext i8 %203 to i32
  br label %xgene_start_cpu_bufnum.exit.i.i

xgene_start_cpu_bufnum.exit.i.i:                  ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i32 [ %201, %cond.true.i.i.i ], [ %conv.i.i.i, %cond.false.i.i.i ]
  %conv3.i.i.i = trunc i32 %cond.i.i.i to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_bufnum.i.i.i) #10
  %rxq_cnt.i.i207 = getelementptr i8, ptr %183, i32 2500
  %204 = ptrtoint ptr %rxq_cnt.i.i207 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %rxq_cnt.i.i207, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %cmp371.not.i.i = icmp eq i8 %205, 0
  br i1 %cmp371.not.i.i, label %xgene_start_cpu_bufnum.exit.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

xgene_start_cpu_bufnum.exit.i.i.for.end.i.i_crit_edge: ; preds = %xgene_start_cpu_bufnum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %xgene_start_cpu_bufnum.exit.i.i
  %enet_id.i.i.i = getelementptr i8, ptr %183, i32 2324
  %phy_mode.i276.i.i = getelementptr i8, ptr %183, i32 2544
  %port_id.i279.i.i = getelementptr i8, ptr %183, i32 2828
  br label %for.body.i.i210

for.body.i.i210:                                  ; preds = %if.end73.i.i.for.body.i.i210_crit_edge, %for.body.lr.ph.i.i
  %cpu_bufnum.0375.i.i = phi i8 [ %conv3.i.i.i, %for.body.lr.ph.i.i ], [ %inc.i.i208, %if.end73.i.i.for.body.i.i210_crit_edge ]
  %i.0374.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc77.i.i, %if.end73.i.i.for.body.i.i210_crit_edge ]
  %ring_num.0373.i.i = phi i16 [ %195, %for.body.lr.ph.i.i ], [ %inc54.i.i, %if.end73.i.i.for.body.i.i210_crit_edge ]
  %bp_bufnum.0372.i.i = phi i8 [ %193, %for.body.lr.ph.i.i ], [ %inc52.i.i, %if.end73.i.i.for.body.i.i210_crit_edge ]
  %inc.i.i208 = add i8 %cpu_bufnum.0375.i.i, 1
  %and.i.i.i = zext i8 %cpu_bufnum.0375.i.i to i32
  %or.i.i.i = or i32 %and.i.i.i, 960
  %conv10.i.i = zext i16 %ring_num.0373.i.i to i32
  %call12.i.i = call fastcc ptr @xgene_enet_create_desc_ring(ptr noundef %183, i32 noundef %conv10.i.i, i32 noundef %or.i.i.i) #10
  %tobool.not.i.i209 = icmp eq ptr %call12.i.i, null
  br i1 %tobool.not.i.i209, label %for.body.i.i210.err.i.i_crit_edge, label %if.end.i.i211

for.body.i.i210.err.i.i_crit_edge:                ; preds = %for.body.i.i210
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end.i.i211:                                    ; preds = %for.body.i.i210
  %inc9.i.i = add i16 %ring_num.0373.i.i, 1
  %206 = ptrtoint ptr %enet_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %enet_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %207)
  %cmp.i275.i.i = icmp eq i32 %207, 1
  br i1 %cmp.i275.i.i, label %if.then.i278.i.i, label %if.end.i.i211.if.end.sink.split.i282.i.i_crit_edge

if.end.i.i211.if.end.sink.split.i282.i.i_crit_edge: ; preds = %if.end.i.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i282.i.i

if.then.i278.i.i:                                 ; preds = %if.end.i.i211
  %208 = ptrtoint ptr %phy_mode.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %phy_mode.i276.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %209)
  %cond5.i277.i.i = icmp eq i32 %209, 4
  br i1 %cond5.i277.i.i, label %if.then.i278.i.i.xgene_derive_ring_owner.exit284.i.i_crit_edge, label %if.then.i278.i.i.if.end.sink.split.i282.i.i_crit_edge

if.then.i278.i.i.if.end.sink.split.i282.i.i_crit_edge: ; preds = %if.then.i278.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i282.i.i

if.then.i278.i.i.xgene_derive_ring_owner.exit284.i.i_crit_edge: ; preds = %if.then.i278.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_derive_ring_owner.exit284.i.i

if.end.sink.split.i282.i.i:                       ; preds = %if.then.i278.i.i.if.end.sink.split.i282.i.i_crit_edge, %if.end.i.i211.if.end.sink.split.i282.i.i_crit_edge
  %210 = ptrtoint ptr %port_id.i279.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %port_id.i279.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool.not.i280.i.i = icmp ne i32 %211, 0
  %phi.cast.i281.i.i = zext i1 %tobool.not.i280.i.i to i32
  br label %xgene_derive_ring_owner.exit284.i.i

xgene_derive_ring_owner.exit284.i.i:              ; preds = %if.end.sink.split.i282.i.i, %if.then.i278.i.i.xgene_derive_ring_owner.exit284.i.i_crit_edge
  %owner.0.shrunk.i283.i.i = phi i32 [ 0, %if.then.i278.i.i.xgene_derive_ring_owner.exit284.i.i_crit_edge ], [ %phi.cast.i281.i.i, %if.end.sink.split.i282.i.i ]
  %inc14.i.i = add i8 %bp_bufnum.0372.i.i, 1
  %shl.i.i.i = shl nuw nsw i32 %owner.0.shrunk.i283.i.i, 6
  %212 = and i8 %bp_bufnum.0372.i.i, 63
  %and.i285.i.i = zext i8 %212 to i32
  %or.i286.i.i = or i32 %shl.i.i.i, %and.i285.i.i
  %inc16.i.i = add i16 %ring_num.0373.i.i, 2
  %conv17.i.i = zext i16 %inc9.i.i to i32
  %call19.i.i = call fastcc ptr @xgene_enet_create_desc_ring(ptr noundef %183, i32 noundef %conv17.i.i, i32 noundef %or.i286.i.i) #10
  %tobool20.not.i.i = icmp eq ptr %call19.i.i, null
  br i1 %tobool20.not.i.i, label %xgene_derive_ring_owner.exit284.i.i.err.i.i_crit_edge, label %if.end22.i.i

xgene_derive_ring_owner.exit284.i.i.err.i.i_crit_edge: ; preds = %xgene_derive_ring_owner.exit284.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end22.i.i:                                     ; preds = %xgene_derive_ring_owner.exit284.i.i
  %nbufpool.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call12.i.i, i32 0, i32 17
  %213 = ptrtoint ptr %nbufpool.i.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 32, ptr %nbufpool.i.i, align 2
  %npagepool.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call12.i.i, i32 0, i32 18
  %214 = ptrtoint ptr %npagepool.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 8, ptr %npagepool.i.i, align 8
  %arrayidx.i.i212 = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i.i.i, i32 0, i32 13, i32 %i.0374.i.i
  %215 = ptrtoint ptr %arrayidx.i.i212 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx.i.i212, align 4
  %conv23.i.i = trunc i32 %216 to i16
  %irq.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call12.i.i, i32 0, i32 7
  %217 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %conv23.i.i, ptr %irq.i.i, align 8
  %slots24.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call19.i.i, i32 0, i32 6
  %218 = ptrtoint ptr %slots24.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %slots24.i.i, align 2
  %conv25.i.i = zext i16 %219 to i32
  %220 = shl nuw nsw i32 %conv25.i.i, 2
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %189, i32 noundef %220, i32 noundef 3520) #10
  %rx_skb.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call19.i.i, i32 0, i32 21
  %221 = ptrtoint ptr %rx_skb.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call5.i.i.i.i, ptr %rx_skb.i.i, align 4
  %tobool28.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool28.not.i.i, label %if.end22.i.i.err.i.i_crit_edge, label %if.end30.i.i

if.end22.i.i.err.i.i_crit_edge:                   ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end30.i.i:                                     ; preds = %if.end22.i.i
  %222 = ptrtoint ptr %call19.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %call19.i.i, align 8
  %rm.i.i.i = getelementptr i8, ptr %223, i32 2548
  %224 = ptrtoint ptr %rm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %rm.i.i.i, align 4
  %num.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call19.i.i, i32 0, i32 2
  %226 = ptrtoint ptr %num.i.i.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %num.i.i.i, align 2
  %.tr.i.i.i = trunc i32 %225 to i16
  %228 = shl i16 %.tr.i.i.i, 10
  %conv3.i288.i.i = or i16 %228, %227
  %dst_ring_num.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call19.i.i, i32 0, i32 16
  %229 = ptrtoint ptr %dst_ring_num.i.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %conv3.i288.i.i, ptr %dst_ring_num.i.i, align 4
  %buf_pool32.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call12.i.i, i32 0, i32 27
  %230 = ptrtoint ptr %buf_pool32.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %call19.i.i, ptr %buf_pool32.i.i, align 4
  %arrayidx34.i.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i.i.i, i32 0, i32 7, i32 %i.0374.i.i
  %231 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call12.i.i, ptr %arrayidx34.i.i, align 4
  %232 = ptrtoint ptr %enet_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %enet_id.i.i.i, align 4
  %234 = zext i32 %233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %234, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %233, label %if.end30.i.i.if.end.sink.split.i297.i.i_crit_edge [
    i32 1, label %land.lhs.true.i.i213
    i32 2, label %land.lhs.true44.i.i
  ]

if.end30.i.i.if.end.sink.split.i297.i.i_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i297.i.i

land.lhs.true.i.i213:                             ; preds = %if.end30.i.i
  %235 = ptrtoint ptr %rxq_cnt.i.i207 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %rxq_cnt.i.i207, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %236)
  %cmp39.i.i = icmp ugt i8 %236, 4
  br i1 %cmp39.i.i, label %land.lhs.true.i.i213.for.end.i.i_crit_edge, label %if.then.i293.i.i

land.lhs.true.i.i213.for.end.i.i_crit_edge:       ; preds = %land.lhs.true.i.i213
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

land.lhs.true44.i.i:                              ; preds = %if.end30.i.i
  %237 = ptrtoint ptr %rxq_cnt.i.i207 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %rxq_cnt.i.i207, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %238)
  %cmp47.i.i = icmp ugt i8 %238, 16
  br i1 %cmp47.i.i, label %land.lhs.true44.i.i.for.end.i.i_crit_edge, label %land.lhs.true44.i.i.if.end.sink.split.i297.i.i_crit_edge

land.lhs.true44.i.i.if.end.sink.split.i297.i.i_crit_edge: ; preds = %land.lhs.true44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i297.i.i

land.lhs.true44.i.i.for.end.i.i_crit_edge:        ; preds = %land.lhs.true44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.then.i293.i.i:                                 ; preds = %land.lhs.true.i.i213
  %239 = ptrtoint ptr %phy_mode.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %phy_mode.i276.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %240)
  %cond5.i292.i.i = icmp eq i32 %240, 4
  br i1 %cond5.i292.i.i, label %if.then.i293.i.i.xgene_derive_ring_owner.exit299.i.i_crit_edge, label %if.then.i293.i.i.if.end.sink.split.i297.i.i_crit_edge

if.then.i293.i.i.if.end.sink.split.i297.i.i_crit_edge: ; preds = %if.then.i293.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i297.i.i

if.then.i293.i.i.xgene_derive_ring_owner.exit299.i.i_crit_edge: ; preds = %if.then.i293.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_derive_ring_owner.exit299.i.i

if.end.sink.split.i297.i.i:                       ; preds = %if.then.i293.i.i.if.end.sink.split.i297.i.i_crit_edge, %land.lhs.true44.i.i.if.end.sink.split.i297.i.i_crit_edge, %if.end30.i.i.if.end.sink.split.i297.i.i_crit_edge
  %241 = ptrtoint ptr %port_id.i279.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %port_id.i279.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool.not.i295.i.i = icmp ne i32 %242, 0
  %phi.cast.i296.i.i = zext i1 %tobool.not.i295.i.i to i32
  br label %xgene_derive_ring_owner.exit299.i.i

xgene_derive_ring_owner.exit299.i.i:              ; preds = %if.end.sink.split.i297.i.i, %if.then.i293.i.i.xgene_derive_ring_owner.exit299.i.i_crit_edge
  %owner.0.shrunk.i298.i.i = phi i32 [ 0, %if.then.i293.i.i.xgene_derive_ring_owner.exit299.i.i_crit_edge ], [ %phi.cast.i296.i.i, %if.end.sink.split.i297.i.i ]
  %inc52.i.i = add i8 %bp_bufnum.0372.i.i, 2
  %shl.i300.i.i = shl nuw nsw i32 %owner.0.shrunk.i298.i.i, 6
  %243 = and i8 %inc14.i.i, 63
  %and.i301.i.i = zext i8 %243 to i32
  %or.i302.i.i = or i32 %shl.i300.i.i, %and.i301.i.i
  %inc54.i.i = add i16 %ring_num.0373.i.i, 3
  %conv55.i.i = zext i16 %inc16.i.i to i32
  %call57.i.i = call fastcc ptr @xgene_enet_create_desc_ring(ptr noundef %183, i32 noundef %conv55.i.i, i32 noundef %or.i302.i.i) #10
  %tobool58.not.i.i = icmp eq ptr %call57.i.i, null
  br i1 %tobool58.not.i.i, label %xgene_derive_ring_owner.exit299.i.i.err.i.i_crit_edge, label %if.end60.i.i

xgene_derive_ring_owner.exit299.i.i.err.i.i_crit_edge: ; preds = %xgene_derive_ring_owner.exit299.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end60.i.i:                                     ; preds = %xgene_derive_ring_owner.exit299.i.i
  %slots61.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call57.i.i, i32 0, i32 6
  %244 = ptrtoint ptr %slots61.i.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %slots61.i.i, align 2
  %conv62.i.i = zext i16 %245 to i32
  %246 = shl nuw nsw i32 %conv62.i.i, 2
  %call5.i.i304.i.i = call noalias ptr @devm_kmalloc(ptr noundef %189, i32 noundef %246, i32 noundef 3520) #10
  %frag_page.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call57.i.i, i32 0, i32 24
  %247 = ptrtoint ptr %frag_page.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %call5.i.i304.i.i, ptr %frag_page.i.i, align 8
  %tobool65.not.i.i = icmp eq ptr %call5.i.i304.i.i, null
  br i1 %tobool65.not.i.i, label %if.end60.i.i.err.i.i_crit_edge, label %devm_kcalloc.exit311.i.i

if.end60.i.i.err.i.i_crit_edge:                   ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

devm_kcalloc.exit311.i.i:                         ; preds = %if.end60.i.i
  %call5.i.i308.i.i = call noalias ptr @devm_kmalloc(ptr noundef %189, i32 noundef %246, i32 noundef 3520) #10
  %frag_dma_addr.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call57.i.i, i32 0, i32 23
  %248 = ptrtoint ptr %frag_dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %call5.i.i308.i.i, ptr %frag_dma_addr.i.i, align 4
  %tobool71.not.i.i = icmp eq ptr %call5.i.i308.i.i, null
  br i1 %tobool71.not.i.i, label %devm_kcalloc.exit311.i.i.err.i.i_crit_edge, label %if.end73.i.i

devm_kcalloc.exit311.i.i.err.i.i_crit_edge:       ; preds = %devm_kcalloc.exit311.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end73.i.i:                                     ; preds = %devm_kcalloc.exit311.i.i
  %249 = ptrtoint ptr %call57.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %call57.i.i, align 8
  %rm.i312.i.i = getelementptr i8, ptr %250, i32 2548
  %251 = ptrtoint ptr %rm.i312.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %rm.i312.i.i, align 4
  %num.i313.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call57.i.i, i32 0, i32 2
  %253 = ptrtoint ptr %num.i313.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %num.i313.i.i, align 2
  %.tr.i314.i.i = trunc i32 %252 to i16
  %255 = shl i16 %.tr.i314.i.i, 10
  %conv3.i315.i.i = or i16 %255, %254
  %dst_ring_num75.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call57.i.i, i32 0, i32 16
  %256 = ptrtoint ptr %dst_ring_num75.i.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 %conv3.i315.i.i, ptr %dst_ring_num75.i.i, align 4
  %page_pool76.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call12.i.i, i32 0, i32 28
  %257 = ptrtoint ptr %page_pool76.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %call57.i.i, ptr %page_pool76.i.i, align 8
  %inc77.i.i = add nuw nsw i32 %i.0374.i.i, 1
  %258 = ptrtoint ptr %rxq_cnt.i.i207 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %rxq_cnt.i.i207, align 4
  %conv.i.i214 = zext i8 %259 to i32
  %cmp.i.i215 = icmp ult i32 %inc77.i.i, %conv.i.i214
  br i1 %cmp.i.i215, label %if.end73.i.i.for.body.i.i210_crit_edge, label %if.end73.i.i.for.end.i.i_crit_edge

if.end73.i.i.for.end.i.i_crit_edge:               ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.end73.i.i.for.body.i.i210_crit_edge:           ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i210

for.end.i.i:                                      ; preds = %if.end73.i.i.for.end.i.i_crit_edge, %land.lhs.true44.i.i.for.end.i.i_crit_edge, %land.lhs.true.i.i213.for.end.i.i_crit_edge, %xgene_start_cpu_bufnum.exit.i.i.for.end.i.i_crit_edge
  %ring_num.1.i.i = phi i16 [ %195, %xgene_start_cpu_bufnum.exit.i.i.for.end.i.i_crit_edge ], [ %inc16.i.i, %land.lhs.true.i.i213.for.end.i.i_crit_edge ], [ %inc16.i.i, %land.lhs.true44.i.i.for.end.i.i_crit_edge ], [ %inc54.i.i, %if.end73.i.i.for.end.i.i_crit_edge ]
  %cpu_bufnum.1.i.i = phi i8 [ %conv3.i.i.i, %xgene_start_cpu_bufnum.exit.i.i.for.end.i.i_crit_edge ], [ %inc.i.i208, %land.lhs.true.i.i213.for.end.i.i_crit_edge ], [ %inc.i.i208, %land.lhs.true44.i.i.for.end.i.i_crit_edge ], [ %inc.i.i208, %if.end73.i.i.for.end.i.i_crit_edge ]
  %txq_cnt.i.i216 = getelementptr i8, ptr %183, i32 2501
  %260 = ptrtoint ptr %txq_cnt.i.i216 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %txq_cnt.i.i216, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %cmp80385.not.i.i = icmp eq i8 %261, 0
  br i1 %cmp80385.not.i.i, label %for.end.i.i.for.end145.i.i_crit_edge, label %for.body82.lr.ph.i.i

for.end.i.i.for.end145.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end145.i.i

for.body82.lr.ph.i.i:                             ; preds = %for.end.i.i
  %enet_id.i316.i.i = getelementptr i8, ptr %183, i32 2324
  %phy_mode.i318.i.i = getelementptr i8, ptr %183, i32 2544
  %port_id.i321.i.i = getelementptr i8, ptr %183, i32 2828
  %cq_cnt.i.i217 = getelementptr i8, ptr %183, i32 2502
  br label %for.body82.i.i

for.body82.i.i:                                   ; preds = %if.end139.i.i.for.body82.i.i_crit_edge, %for.body82.lr.ph.i.i
  %cpu_bufnum.2390.i.i = phi i8 [ %cpu_bufnum.1.i.i, %for.body82.lr.ph.i.i ], [ %cpu_bufnum.3.i.i, %if.end139.i.i.for.body82.i.i_crit_edge ]
  %i.1388.i.i = phi i32 [ 0, %for.body82.lr.ph.i.i ], [ %inc144.i.i, %if.end139.i.i.for.body82.i.i_crit_edge ]
  %ring_num.2387.i.i = phi i16 [ %ring_num.1.i.i, %for.body82.lr.ph.i.i ], [ %ring_num.3.i.i, %if.end139.i.i.for.body82.i.i_crit_edge ]
  %eth_bufnum.0386.i.i = phi i8 [ %191, %for.body82.lr.ph.i.i ], [ %inc84.i.i, %if.end139.i.i.for.body82.i.i_crit_edge ]
  %262 = ptrtoint ptr %enet_id.i316.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %enet_id.i316.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %263)
  %cmp.i317.i.i = icmp eq i32 %263, 1
  br i1 %cmp.i317.i.i, label %if.then.i320.i.i, label %for.body82.i.i.if.end.sink.split.i324.i.i_crit_edge

for.body82.i.i.if.end.sink.split.i324.i.i_crit_edge: ; preds = %for.body82.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i324.i.i

if.then.i320.i.i:                                 ; preds = %for.body82.i.i
  %264 = ptrtoint ptr %phy_mode.i318.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %phy_mode.i318.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %265)
  %cond5.i319.i.i = icmp eq i32 %265, 4
  br i1 %cond5.i319.i.i, label %if.then.i320.i.i.xgene_derive_ring_owner.exit326.i.i_crit_edge, label %if.then.i320.i.i.if.end.sink.split.i324.i.i_crit_edge

if.then.i320.i.i.if.end.sink.split.i324.i.i_crit_edge: ; preds = %if.then.i320.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i324.i.i

if.then.i320.i.i.xgene_derive_ring_owner.exit326.i.i_crit_edge: ; preds = %if.then.i320.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_derive_ring_owner.exit326.i.i

if.end.sink.split.i324.i.i:                       ; preds = %if.then.i320.i.i.if.end.sink.split.i324.i.i_crit_edge, %for.body82.i.i.if.end.sink.split.i324.i.i_crit_edge
  %266 = ptrtoint ptr %port_id.i321.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %port_id.i321.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool.not.i322.i.i = icmp ne i32 %267, 0
  %phi.cast.i323.i.i = zext i1 %tobool.not.i322.i.i to i32
  br label %xgene_derive_ring_owner.exit326.i.i

xgene_derive_ring_owner.exit326.i.i:              ; preds = %if.end.sink.split.i324.i.i, %if.then.i320.i.i.xgene_derive_ring_owner.exit326.i.i_crit_edge
  %owner.0.shrunk.i325.i.i = phi i32 [ 0, %if.then.i320.i.i.xgene_derive_ring_owner.exit326.i.i_crit_edge ], [ %phi.cast.i323.i.i, %if.end.sink.split.i324.i.i ]
  %inc84.i.i = add i8 %eth_bufnum.0386.i.i, 1
  %shl.i327.i.i = shl nuw nsw i32 %owner.0.shrunk.i325.i.i, 6
  %268 = and i8 %eth_bufnum.0386.i.i, 63
  %and.i328.i.i = zext i8 %268 to i32
  %or.i329.i.i = or i32 %shl.i327.i.i, %and.i328.i.i
  %inc86.i.i = add i16 %ring_num.2387.i.i, 1
  %conv87.i.i = zext i16 %ring_num.2387.i.i to i32
  %call89.i.i = call fastcc ptr @xgene_enet_create_desc_ring(ptr noundef %183, i32 noundef %conv87.i.i, i32 noundef %or.i329.i.i) #10
  %tobool90.not.i.i = icmp eq ptr %call89.i.i, null
  br i1 %tobool90.not.i.i, label %xgene_derive_ring_owner.exit326.i.i.err.i.i_crit_edge, label %if.end92.i.i

xgene_derive_ring_owner.exit326.i.i.err.i.i_crit_edge: ; preds = %xgene_derive_ring_owner.exit326.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end92.i.i:                                     ; preds = %xgene_derive_ring_owner.exit326.i.i
  %slots93.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call89.i.i, i32 0, i32 6
  %269 = ptrtoint ptr %slots93.i.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %slots93.i.i, align 2
  %271 = lshr i16 %270, 1
  %div.i.i = zext i16 %271 to i32
  %mul95.i.i = shl nuw nsw i32 %div.i.i, 11
  %call.i.i.i218 = call ptr @dmam_alloc_attrs(ptr noundef %189, i32 noundef %mul95.i.i, ptr noundef nonnull %dma_exp_bufs.i.i, i32 noundef 3520, i32 noundef 0) #10
  %tobool97.not.i.i = icmp eq ptr %call.i.i.i218, null
  br i1 %tobool97.not.i.i, label %if.end92.i.i.err.i.i_crit_edge, label %if.end99.i.i

if.end92.i.i.err.i.i_crit_edge:                   ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end99.i.i:                                     ; preds = %if.end92.i.i
  %exp_bufs100.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call89.i.i, i32 0, i32 31
  %272 = ptrtoint ptr %exp_bufs100.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %call.i.i.i218, ptr %exp_bufs100.i.i, align 4
  %arrayidx102.i.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i.i.i, i32 0, i32 6, i32 %i.1388.i.i
  %273 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %call89.i.i, ptr %arrayidx102.i.i, align 4
  %274 = ptrtoint ptr %cq_cnt.i.i217 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %cq_cnt.i.i217, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool103.not.i.i = icmp eq i8 %275, 0
  br i1 %tobool103.not.i.i, label %if.then104.i.i, label %if.else.i.i

if.then104.i.i:                                   ; preds = %if.end99.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx106.i.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i.i.i, i32 0, i32 7, i32 %i.1388.i.i
  %276 = ptrtoint ptr %arrayidx106.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx106.i.i, align 4
  br label %devm_kcalloc.exit337.i.i

if.else.i.i:                                      ; preds = %if.end99.i.i
  %and.i331.i.i = zext i8 %cpu_bufnum.2390.i.i to i32
  %or.i332.i.i = or i32 %and.i331.i.i, 960
  %conv110.i.i = zext i16 %inc86.i.i to i32
  %call112.i.i = call fastcc ptr @xgene_enet_create_desc_ring(ptr noundef %183, i32 noundef %conv110.i.i, i32 noundef %or.i332.i.i) #10
  %tobool113.not.i.i = icmp eq ptr %call112.i.i, null
  br i1 %tobool113.not.i.i, label %if.else.i.i.err.i.i_crit_edge, label %if.end115.i.i

if.else.i.i.err.i.i_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end115.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc109.i.i = add i16 %ring_num.2387.i.i, 2
  %inc107.i.i = add i8 %cpu_bufnum.2390.i.i, 1
  %278 = ptrtoint ptr %rxq_cnt.i.i207 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %rxq_cnt.i.i207, align 4
  %conv118.i.i = zext i8 %279 to i32
  %add.i.i219 = add nuw nsw i32 %i.1388.i.i, %conv118.i.i
  %arrayidx119.i.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i.i.i, i32 0, i32 13, i32 %add.i.i219
  %280 = ptrtoint ptr %arrayidx119.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx119.i.i, align 4
  %conv120.i.i = trunc i32 %281 to i16
  %irq121.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call112.i.i, i32 0, i32 7
  %282 = ptrtoint ptr %irq121.i.i to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 %conv120.i.i, ptr %irq121.i.i, align 8
  %conv122.i.i = trunc i32 %i.1388.i.i to i8
  %index.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call112.i.i, i32 0, i32 19
  %283 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %conv122.i.i, ptr %index.i.i, align 4
  br label %devm_kcalloc.exit337.i.i

devm_kcalloc.exit337.i.i:                         ; preds = %if.end115.i.i, %if.then104.i.i
  %cp_ring.0.i.i = phi ptr [ %call112.i.i, %if.end115.i.i ], [ %277, %if.then104.i.i ]
  %ring_num.3.i.i = phi i16 [ %inc109.i.i, %if.end115.i.i ], [ %inc86.i.i, %if.then104.i.i ]
  %cpu_bufnum.3.i.i = phi i8 [ %inc107.i.i, %if.end115.i.i ], [ %cpu_bufnum.2390.i.i, %if.then104.i.i ]
  %284 = ptrtoint ptr %slots93.i.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %slots93.i.i, align 2
  %conv125.i.i = zext i16 %285 to i32
  %286 = shl nuw nsw i32 %conv125.i.i, 2
  %call5.i.i334.i.i = call noalias ptr @devm_kmalloc(ptr noundef %189, i32 noundef %286, i32 noundef 3520) #10
  %cp_skb.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %cp_ring.0.i.i, i32 0, i32 22
  %287 = ptrtoint ptr %cp_skb.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %call5.i.i334.i.i, ptr %cp_skb.i.i, align 8
  %tobool128.not.i.i = icmp eq ptr %call5.i.i334.i.i, null
  br i1 %tobool128.not.i.i, label %devm_kcalloc.exit337.i.i.err.i.i_crit_edge, label %devm_kcalloc.exit341.i.i

devm_kcalloc.exit337.i.i.err.i.i_crit_edge:       ; preds = %devm_kcalloc.exit337.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

devm_kcalloc.exit341.i.i:                         ; preds = %devm_kcalloc.exit337.i.i
  %288 = ptrtoint ptr %slots93.i.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %slots93.i.i, align 2
  %conv132.i.i = zext i16 %289 to i32
  %290 = mul nuw nsw i32 %conv132.i.i, 68
  %call5.i.i338.i.i = call noalias ptr @devm_kmalloc(ptr noundef %189, i32 noundef %290, i32 noundef 3520) #10
  %frag_dma_addr134.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %cp_ring.0.i.i, i32 0, i32 23
  %291 = ptrtoint ptr %frag_dma_addr134.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %call5.i.i338.i.i, ptr %frag_dma_addr134.i.i, align 4
  %tobool136.not.i.i = icmp eq ptr %call5.i.i338.i.i, null
  br i1 %tobool136.not.i.i, label %if.then137.i.i, label %if.end139.i.i

if.then137.i.i:                                   ; preds = %devm_kcalloc.exit341.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cp_skb.i.i.le = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %cp_ring.0.i.i, i32 0, i32 22
  %292 = ptrtoint ptr %cp_skb.i.i.le to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %cp_skb.i.i.le, align 8
  call void @devm_kfree(ptr noundef %189, ptr noundef %293) #10
  br label %err.i.i

if.end139.i.i:                                    ; preds = %devm_kcalloc.exit341.i.i
  %cp_ring140.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call89.i.i, i32 0, i32 26
  %294 = ptrtoint ptr %cp_ring140.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %cp_ring.0.i.i, ptr %cp_ring140.i.i, align 8
  %295 = ptrtoint ptr %cp_ring.0.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %cp_ring.0.i.i, align 8
  %rm.i342.i.i = getelementptr i8, ptr %296, i32 2548
  %297 = ptrtoint ptr %rm.i342.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %rm.i342.i.i, align 4
  %num.i343.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %cp_ring.0.i.i, i32 0, i32 2
  %299 = ptrtoint ptr %num.i343.i.i to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %num.i343.i.i, align 2
  %.tr.i344.i.i = trunc i32 %298 to i16
  %301 = shl i16 %.tr.i344.i.i, 10
  %conv3.i345.i.i = or i16 %301, %300
  %dst_ring_num142.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call89.i.i, i32 0, i32 16
  %302 = ptrtoint ptr %dst_ring_num142.i.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %conv3.i345.i.i, ptr %dst_ring_num142.i.i, align 4
  %inc144.i.i = add nuw nsw i32 %i.1388.i.i, 1
  %303 = ptrtoint ptr %txq_cnt.i.i216 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %txq_cnt.i.i216, align 1
  %conv79.i.i = zext i8 %304 to i32
  %cmp80.i.i = icmp ult i32 %inc144.i.i, %conv79.i.i
  br i1 %cmp80.i.i, label %if.end139.i.i.for.body82.i.i_crit_edge, label %if.end139.i.i.for.end145.i.i_crit_edge

if.end139.i.i.for.end145.i.i_crit_edge:           ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end145.i.i

if.end139.i.i.for.body82.i.i_crit_edge:           ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body82.i.i

for.end145.i.i:                                   ; preds = %if.end139.i.i.for.end145.i.i_crit_edge, %for.end.i.i.for.end145.i.i_crit_edge
  %ring_ops.i.i = getelementptr i8, ptr %183, i32 2720
  %305 = ptrtoint ptr %ring_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %ring_ops.i.i, align 8
  %coalesce.i.i = getelementptr inbounds %struct.xgene_ring_ops, ptr %306, i32 0, i32 6
  %307 = ptrtoint ptr %coalesce.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %coalesce.i.i, align 4
  %tobool146.not.i.i = icmp eq ptr %308, null
  br i1 %tobool146.not.i.i, label %for.end145.i.i.xgene_enet_create_desc_rings.exit.i_crit_edge, label %if.then147.i.i

for.end145.i.i.xgene_enet_create_desc_rings.exit.i_crit_edge: ; preds = %for.end145.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_create_desc_rings.exit.i

if.then147.i.i:                                   ; preds = %for.end145.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_ring150.i.i = getelementptr i8, ptr %183, i32 2328
  %309 = ptrtoint ptr %tx_ring150.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %tx_ring150.i.i, align 8
  call void %308(ptr noundef %310) #10
  br label %xgene_enet_create_desc_rings.exit.i

err.i.i:                                          ; preds = %if.then137.i.i, %devm_kcalloc.exit337.i.i.err.i.i_crit_edge, %if.else.i.i.err.i.i_crit_edge, %if.end92.i.i.err.i.i_crit_edge, %xgene_derive_ring_owner.exit326.i.i.err.i.i_crit_edge, %devm_kcalloc.exit311.i.i.err.i.i_crit_edge, %if.end60.i.i.err.i.i_crit_edge, %xgene_derive_ring_owner.exit299.i.i.err.i.i_crit_edge, %if.end22.i.i.err.i.i_crit_edge, %xgene_derive_ring_owner.exit284.i.i.err.i.i_crit_edge, %for.body.i.i210.err.i.i_crit_edge
  %311 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %pdev.i.i.i, align 8
  %dev1.i347.i.i = getelementptr inbounds %struct.platform_device, ptr %312, i32 0, i32 3
  %txq_cnt.i.i.i = getelementptr i8, ptr %183, i32 2501
  %313 = ptrtoint ptr %txq_cnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %txq_cnt.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %cmp125.not.i.i.i = icmp eq i8 %314, 0
  br i1 %cmp125.not.i.i.i, label %err.i.i.for.cond18.preheader.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

err.i.i.for.cond18.preheader.i.i.i_crit_edge:     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond18.preheader.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %err.i.i
  %cq_cnt.i.i.i = getelementptr i8, ptr %183, i32 2502
  br label %for.body.i.i.i

for.cond18.preheader.i.i.i:                       ; preds = %for.inc.i.i.i.for.cond18.preheader.i.i.i_crit_edge, %err.i.i.for.cond18.preheader.i.i.i_crit_edge
  %315 = ptrtoint ptr %rxq_cnt.i.i207 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %rxq_cnt.i.i207, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %cmp20128.not.i.i.i = icmp eq i8 %316, 0
  br i1 %cmp20128.not.i.i.i, label %for.cond18.preheader.i.i.i.if.then4.i_crit_edge, label %for.cond18.preheader.i.i.i.for.body22.i.i.i_crit_edge

for.cond18.preheader.i.i.i.for.body22.i.i.i_crit_edge: ; preds = %for.cond18.preheader.i.i.i
  br label %for.body22.i.i.i

for.cond18.preheader.i.i.i.if.then4.i_crit_edge:  ; preds = %for.cond18.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.0126.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i.i.i, i32 0, i32 6, i32 %i.0126.i.i.i
  %317 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i348.i.i = icmp eq ptr %318, null
  br i1 %tobool.not.i348.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i349.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then.i349.i.i:                                 ; preds = %for.body.i.i.i
  %cp_ring.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %318, i32 0, i32 26
  %319 = ptrtoint ptr %cp_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %cp_ring.i.i.i, align 8
  %tobool3.not.i.i.i = icmp eq ptr %320, null
  br i1 %tobool3.not.i.i.i, label %if.then.i349.i.i.if.end.i93.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i349.i.i.if.end.i93.i.i.i_crit_edge:      ; preds = %if.then.i349.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i93.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i349.i.i
  %cp_skb.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %320, i32 0, i32 22
  %321 = ptrtoint ptr %cp_skb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %cp_skb.i.i.i, align 8
  %tobool5.not.i.i.i = icmp eq ptr %322, null
  br i1 %tobool5.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %if.then6.i.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then6.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @devm_kfree(ptr noundef %dev1.i347.i.i, ptr noundef nonnull %322) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then6.i.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge
  %323 = ptrtoint ptr %cp_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %.pr.i.i.i = load ptr, ptr %cp_ring.i.i.i, align 8
  %tobool10.not.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %tobool10.not.i.i.i, label %if.end.i.i.i.if.end.i93.i.i.i_crit_edge, label %land.lhs.true11.i.i.i

if.end.i.i.i.if.end.i93.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i93.i.i.i

land.lhs.true11.i.i.i:                            ; preds = %if.end.i.i.i
  %324 = ptrtoint ptr %cq_cnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %cq_cnt.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %tobool13.not.i.i.i = icmp eq i8 %325, 0
  br i1 %tobool13.not.i.i.i, label %land.lhs.true11.i.i.i.if.end.i93.i.i.i_crit_edge, label %if.end.i.i350.i.i

land.lhs.true11.i.i.i.if.end.i93.i.i.i_crit_edge: ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i93.i.i.i

if.end.i.i350.i.i:                                ; preds = %land.lhs.true11.i.i.i
  %326 = ptrtoint ptr %.pr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %.pr.i.i.i, align 8
  %parent.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %327, i32 0, i32 133, i32 1
  %328 = ptrtoint ptr %parent.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %parent.i.i.i.i.i, align 8
  %330 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %.pr.i.i.i, i32 0, i32 30
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %330, align 8
  %tobool3.not.i.i.i.i = icmp eq ptr %332, null
  br i1 %tobool3.not.i.i.i.i, label %if.end.i.i350.i.i.xgene_enet_free_desc_ring.exit.i.i.i_crit_edge, label %if.then4.i.i.i.i

if.end.i.i350.i.i.xgene_enet_free_desc_ring.exit.i.i.i_crit_edge: ; preds = %if.end.i.i350.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_free_desc_ring.exit.i.i.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i.i350.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ring_ops.i.i.i.i = getelementptr i8, ptr %327, i32 2720
  %333 = ptrtoint ptr %ring_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %ring_ops.i.i.i.i, align 8
  %clear.i.i.i.i = getelementptr inbounds %struct.xgene_ring_ops, ptr %334, i32 0, i32 3
  %335 = ptrtoint ptr %clear.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %clear.i.i.i.i, align 4
  call void %336(ptr noundef nonnull %.pr.i.i.i) #10
  %size.i.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %.pr.i.i.i, i32 0, i32 9
  %337 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %size.i.i.i.i, align 4
  %339 = ptrtoint ptr %330 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %330, align 8
  %dma.i.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %.pr.i.i.i, i32 0, i32 13
  %341 = ptrtoint ptr %dma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %dma.i.i.i.i, align 8
  call void @dmam_free_coherent(ptr noundef %329, i32 noundef %338, ptr noundef %340, i32 noundef %342) #10
  br label %xgene_enet_free_desc_ring.exit.i.i.i

xgene_enet_free_desc_ring.exit.i.i.i:             ; preds = %if.then4.i.i.i.i, %if.end.i.i350.i.i.xgene_enet_free_desc_ring.exit.i.i.i_crit_edge
  call void @devm_kfree(ptr noundef %329, ptr noundef nonnull %.pr.i.i.i) #10
  br label %if.end.i93.i.i.i

if.end.i93.i.i.i:                                 ; preds = %xgene_enet_free_desc_ring.exit.i.i.i, %land.lhs.true11.i.i.i.if.end.i93.i.i.i_crit_edge, %if.end.i.i.i.if.end.i93.i.i.i_crit_edge, %if.then.i349.i.i.if.end.i93.i.i.i_crit_edge
  %343 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %318, align 8
  %parent.i.i91.i.i.i = getelementptr inbounds %struct.net_device, ptr %344, i32 0, i32 133, i32 1
  %345 = ptrtoint ptr %parent.i.i91.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %parent.i.i91.i.i.i, align 8
  %347 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %318, i32 0, i32 30
  %348 = ptrtoint ptr %347 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %347, align 8
  %tobool3.not.i92.i.i.i = icmp eq ptr %349, null
  br i1 %tobool3.not.i92.i.i.i, label %if.end.i93.i.i.i.xgene_enet_free_desc_ring.exit100.i.i.i_crit_edge, label %if.then4.i98.i.i.i

if.end.i93.i.i.i.xgene_enet_free_desc_ring.exit100.i.i.i_crit_edge: ; preds = %if.end.i93.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_free_desc_ring.exit100.i.i.i

if.then4.i98.i.i.i:                               ; preds = %if.end.i93.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ring_ops.i94.i.i.i = getelementptr i8, ptr %344, i32 2720
  %350 = ptrtoint ptr %ring_ops.i94.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %ring_ops.i94.i.i.i, align 8
  %clear.i95.i.i.i = getelementptr inbounds %struct.xgene_ring_ops, ptr %351, i32 0, i32 3
  %352 = ptrtoint ptr %clear.i95.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %clear.i95.i.i.i, align 4
  call void %353(ptr noundef nonnull %318) #10
  %size.i96.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %318, i32 0, i32 9
  %354 = ptrtoint ptr %size.i96.i.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %size.i96.i.i.i, align 4
  %356 = ptrtoint ptr %347 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %347, align 8
  %dma.i97.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %318, i32 0, i32 13
  %358 = ptrtoint ptr %dma.i97.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %dma.i97.i.i.i, align 8
  call void @dmam_free_coherent(ptr noundef %346, i32 noundef %355, ptr noundef %357, i32 noundef %359) #10
  br label %xgene_enet_free_desc_ring.exit100.i.i.i

xgene_enet_free_desc_ring.exit100.i.i.i:          ; preds = %if.then4.i98.i.i.i, %if.end.i93.i.i.i.xgene_enet_free_desc_ring.exit100.i.i.i_crit_edge
  call void @devm_kfree(ptr noundef %346, ptr noundef nonnull %318) #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %xgene_enet_free_desc_ring.exit100.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.0126.i.i.i, 1
  %360 = ptrtoint ptr %txq_cnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %txq_cnt.i.i.i, align 1
  %conv.i351.i.i = zext i8 %361 to i32
  %cmp.i352.i.i = icmp ult i32 %inc.i.i.i, %conv.i351.i.i
  br i1 %cmp.i352.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.for.cond18.preheader.i.i.i_crit_edge

for.inc.i.i.i.for.cond18.preheader.i.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond18.preheader.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.body22.i.i.i:                                 ; preds = %for.inc47.i.i.i.for.body22.i.i.i_crit_edge, %for.cond18.preheader.i.i.i.for.body22.i.i.i_crit_edge
  %i.1129.i.i.i = phi i32 [ %inc48.i.i.i, %for.inc47.i.i.i.for.body22.i.i.i_crit_edge ], [ 0, %for.cond18.preheader.i.i.i.for.body22.i.i.i_crit_edge ]
  %arrayidx23.i.i.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i.i.i, i32 0, i32 7, i32 %i.1129.i.i.i
  %362 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %arrayidx23.i.i.i, align 4
  %tobool24.not.i.i.i = icmp eq ptr %363, null
  br i1 %tobool24.not.i.i.i, label %for.body22.i.i.i.for.inc47.i.i.i_crit_edge, label %if.then25.i.i.i

for.body22.i.i.i.for.inc47.i.i.i_crit_edge:       ; preds = %for.body22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc47.i.i.i

if.then25.i.i.i:                                  ; preds = %for.body22.i.i.i
  %buf_pool.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %363, i32 0, i32 27
  %364 = ptrtoint ptr %buf_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %buf_pool.i.i.i, align 4
  %tobool26.not.i.i.i = icmp eq ptr %365, null
  br i1 %tobool26.not.i.i.i, label %if.then25.i.i.i.if.end35.i.i.i_crit_edge, label %if.then27.i.i.i

if.then25.i.i.i.if.end35.i.i.i_crit_edge:         ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i.i.i

if.then27.i.i.i:                                  ; preds = %if.then25.i.i.i
  %rx_skb.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %365, i32 0, i32 21
  %366 = ptrtoint ptr %rx_skb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %rx_skb.i.i.i, align 4
  %tobool29.not.i.i.i = icmp eq ptr %367, null
  br i1 %tobool29.not.i.i.i, label %if.then27.i.i.i.if.end33.i.i.i_crit_edge, label %if.then30.i.i.i

if.then27.i.i.i.if.end33.i.i.i_crit_edge:         ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i.i.i

if.then30.i.i.i:                                  ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @devm_kfree(ptr noundef %dev1.i347.i.i, ptr noundef nonnull %367) #10
  br label %if.end33.i.i.i

if.end33.i.i.i:                                   ; preds = %if.then30.i.i.i, %if.then27.i.i.i.if.end33.i.i.i_crit_edge
  %368 = ptrtoint ptr %buf_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %buf_pool.i.i.i, align 4
  %tobool.not.i101.i.i.i = icmp eq ptr %369, null
  br i1 %tobool.not.i101.i.i.i, label %if.end33.i.i.i.if.end35.i.i.i_crit_edge, label %if.end.i104.i.i.i

if.end33.i.i.i.if.end35.i.i.i_crit_edge:          ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i.i.i

if.end.i104.i.i.i:                                ; preds = %if.end33.i.i.i
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %369, align 8
  %parent.i.i102.i.i.i = getelementptr inbounds %struct.net_device, ptr %371, i32 0, i32 133, i32 1
  %372 = ptrtoint ptr %parent.i.i102.i.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %parent.i.i102.i.i.i, align 8
  %374 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %369, i32 0, i32 30
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %374, align 8
  %tobool3.not.i103.i.i.i = icmp eq ptr %376, null
  br i1 %tobool3.not.i103.i.i.i, label %if.end.i104.i.i.i.if.end5.i110.i.i.i_crit_edge, label %if.then4.i109.i.i.i

if.end.i104.i.i.i.if.end5.i110.i.i.i_crit_edge:   ; preds = %if.end.i104.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i110.i.i.i

if.then4.i109.i.i.i:                              ; preds = %if.end.i104.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ring_ops.i105.i.i.i = getelementptr i8, ptr %371, i32 2720
  %377 = ptrtoint ptr %ring_ops.i105.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %ring_ops.i105.i.i.i, align 8
  %clear.i106.i.i.i = getelementptr inbounds %struct.xgene_ring_ops, ptr %378, i32 0, i32 3
  %379 = ptrtoint ptr %clear.i106.i.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %clear.i106.i.i.i, align 4
  call void %380(ptr noundef nonnull %369) #10
  %size.i107.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %369, i32 0, i32 9
  %381 = ptrtoint ptr %size.i107.i.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %size.i107.i.i.i, align 4
  %383 = ptrtoint ptr %374 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %374, align 8
  %dma.i108.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %369, i32 0, i32 13
  %385 = ptrtoint ptr %dma.i108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %dma.i108.i.i.i, align 8
  call void @dmam_free_coherent(ptr noundef %373, i32 noundef %382, ptr noundef %384, i32 noundef %386) #10
  br label %if.end5.i110.i.i.i

if.end5.i110.i.i.i:                               ; preds = %if.then4.i109.i.i.i, %if.end.i104.i.i.i.if.end5.i110.i.i.i_crit_edge
  call void @devm_kfree(ptr noundef %373, ptr noundef nonnull %369) #10
  br label %if.end35.i.i.i

if.end35.i.i.i:                                   ; preds = %if.end5.i110.i.i.i, %if.end33.i.i.i.if.end35.i.i.i_crit_edge, %if.then25.i.i.i.if.end35.i.i.i_crit_edge
  %page_pool36.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %363, i32 0, i32 28
  %387 = ptrtoint ptr %page_pool36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %page_pool36.i.i.i, align 8
  %tobool37.not.i.i.i = icmp eq ptr %388, null
  br i1 %tobool37.not.i.i.i, label %if.end35.i.i.i.if.end.i115.i.i.i_crit_edge, label %if.then38.i.i.i

if.end35.i.i.i.if.end.i115.i.i.i_crit_edge:       ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i115.i.i.i

if.then38.i.i.i:                                  ; preds = %if.end35.i.i.i
  %frag_page.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %388, i32 0, i32 24
  %389 = ptrtoint ptr %frag_page.i.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %frag_page.i.i.i, align 8
  %tobool39.not.i.i.i = icmp eq ptr %390, null
  br i1 %tobool39.not.i.i.i, label %if.then38.i.i.i.if.end41.i.i.i_crit_edge, label %if.then40.i.i.i

if.then38.i.i.i.if.end41.i.i.i_crit_edge:         ; preds = %if.then38.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i.i.i

if.then40.i.i.i:                                  ; preds = %if.then38.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @devm_kfree(ptr noundef %dev1.i347.i.i, ptr noundef nonnull %390) #10
  br label %if.end41.i.i.i

if.end41.i.i.i:                                   ; preds = %if.then40.i.i.i, %if.then38.i.i.i.if.end41.i.i.i_crit_edge
  %frag_dma_addr.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %388, i32 0, i32 23
  %391 = ptrtoint ptr %frag_dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %frag_dma_addr.i.i.i, align 4
  %tobool42.not.i.i.i = icmp eq ptr %392, null
  br i1 %tobool42.not.i.i.i, label %if.end41.i.i.i.if.end.i115.i.i.i_crit_edge, label %if.then43.i.i.i

if.end41.i.i.i.if.end.i115.i.i.i_crit_edge:       ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i115.i.i.i

if.then43.i.i.i:                                  ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @devm_kfree(ptr noundef %dev1.i347.i.i, ptr noundef nonnull %392) #10
  br label %if.end.i115.i.i.i

if.end.i115.i.i.i:                                ; preds = %if.then43.i.i.i, %if.end41.i.i.i.if.end.i115.i.i.i_crit_edge, %if.end35.i.i.i.if.end.i115.i.i.i_crit_edge
  %393 = ptrtoint ptr %363 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %363, align 8
  %parent.i.i113.i.i.i = getelementptr inbounds %struct.net_device, ptr %394, i32 0, i32 133, i32 1
  %395 = ptrtoint ptr %parent.i.i113.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %parent.i.i113.i.i.i, align 8
  %397 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %363, i32 0, i32 30
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %397, align 8
  %tobool3.not.i114.i.i.i = icmp eq ptr %399, null
  br i1 %tobool3.not.i114.i.i.i, label %if.end.i115.i.i.i.xgene_enet_free_desc_ring.exit122.i.i.i_crit_edge, label %if.then4.i120.i.i.i

if.end.i115.i.i.i.xgene_enet_free_desc_ring.exit122.i.i.i_crit_edge: ; preds = %if.end.i115.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_free_desc_ring.exit122.i.i.i

if.then4.i120.i.i.i:                              ; preds = %if.end.i115.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ring_ops.i116.i.i.i = getelementptr i8, ptr %394, i32 2720
  %400 = ptrtoint ptr %ring_ops.i116.i.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %ring_ops.i116.i.i.i, align 8
  %clear.i117.i.i.i = getelementptr inbounds %struct.xgene_ring_ops, ptr %401, i32 0, i32 3
  %402 = ptrtoint ptr %clear.i117.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %clear.i117.i.i.i, align 4
  call void %403(ptr noundef nonnull %363) #10
  %size.i118.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %363, i32 0, i32 9
  %404 = ptrtoint ptr %size.i118.i.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %size.i118.i.i.i, align 4
  %406 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %397, align 8
  %dma.i119.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %363, i32 0, i32 13
  %408 = ptrtoint ptr %dma.i119.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %dma.i119.i.i.i, align 8
  call void @dmam_free_coherent(ptr noundef %396, i32 noundef %405, ptr noundef %407, i32 noundef %409) #10
  br label %xgene_enet_free_desc_ring.exit122.i.i.i

xgene_enet_free_desc_ring.exit122.i.i.i:          ; preds = %if.then4.i120.i.i.i, %if.end.i115.i.i.i.xgene_enet_free_desc_ring.exit122.i.i.i_crit_edge
  call void @devm_kfree(ptr noundef %396, ptr noundef nonnull %363) #10
  br label %for.inc47.i.i.i

for.inc47.i.i.i:                                  ; preds = %xgene_enet_free_desc_ring.exit122.i.i.i, %for.body22.i.i.i.for.inc47.i.i.i_crit_edge
  %inc48.i.i.i = add nuw nsw i32 %i.1129.i.i.i, 1
  %410 = ptrtoint ptr %rxq_cnt.i.i207 to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %rxq_cnt.i.i207, align 4
  %conv19.i.i.i = zext i8 %411 to i32
  %cmp20.i.i.i = icmp ult i32 %inc48.i.i.i, %conv19.i.i.i
  br i1 %cmp20.i.i.i, label %for.inc47.i.i.i.for.body22.i.i.i_crit_edge, label %for.inc47.i.i.i.if.then4.i_crit_edge

for.inc47.i.i.i.if.then4.i_crit_edge:             ; preds = %for.inc47.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

for.inc47.i.i.i.for.body22.i.i.i_crit_edge:       ; preds = %for.inc47.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body22.i.i.i

xgene_enet_create_desc_rings.exit.i:              ; preds = %if.then147.i.i, %for.end145.i.i.xgene_enet_create_desc_rings.exit.i_crit_edge
  %tx_ring153.i.i = getelementptr i8, ptr %183, i32 2328
  %412 = ptrtoint ptr %tx_ring153.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %tx_ring153.i.i, align 8
  %slots155.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %413, i32 0, i32 6
  %414 = ptrtoint ptr %slots155.i.i to i32
  call void @__asan_load2_noabort(i32 %414)
  %415 = load i16, ptr %slots155.i.i, align 2
  %conv156.i.i = zext i16 %415 to i32
  %sub.i.i220 = add nsw i32 %conv156.i.i, -128
  %tx_qcnt_hi.i.i = getelementptr i8, ptr %183, i32 2432
  %416 = ptrtoint ptr %tx_qcnt_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %sub.i.i220, ptr %tx_qcnt_hi.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_exp_bufs.i.i) #10
  %rxq_cnt.i221 = getelementptr i8, ptr %call, i32 2500
  %417 = ptrtoint ptr %rxq_cnt.i221 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %rxq_cnt.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %418)
  %cmp142.not.i = icmp eq i8 %418, 0
  br i1 %cmp142.not.i, label %xgene_enet_create_desc_rings.exit.i.for.end.i_crit_edge, label %for.body.lr.ph.i

xgene_enet_create_desc_rings.exit.i.for.end.i_crit_edge: ; preds = %xgene_enet_create_desc_rings.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %xgene_enet_create_desc_rings.exit.i
  %rx_buff_cnt.i222 = getelementptr i8, ptr %call, i32 2428
  br label %for.body.i

if.then4.i:                                       ; preds = %for.inc47.i.i.i.if.then4.i_crit_edge, %for.cond18.preheader.i.i.i.if.then4.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_exp_bufs.i.i) #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %183, ptr noundef nonnull @.str.65) #13
  br label %err2

for.cond.i:                                       ; preds = %if.end14.i
  %inc.i = add nuw nsw i32 %i.0143.i, 1
  %419 = ptrtoint ptr %rxq_cnt.i221 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %rxq_cnt.i221, align 4
  %conv.i223 = zext i8 %420 to i32
  %cmp.i224 = icmp ult i32 %inc.i, %conv.i223
  br i1 %cmp.i224, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0143.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 7, i32 %i.0143.i
  %421 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %arrayidx.i, align 4
  %buf_pool7.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %422, i32 0, i32 27
  %423 = ptrtoint ptr %buf_pool7.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %buf_pool7.i, align 4
  %tobool.not.i104.i = icmp eq ptr %424, null
  br i1 %tobool.not.i104.i, label %for.body.i.xgene_enet_init_bufpool.exit.i_crit_edge, label %for.cond.preheader.i.i

for.body.i.xgene_enet_init_bufpool.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_init_bufpool.exit.i

for.cond.preheader.i.i:                           ; preds = %for.body.i
  %slots.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %424, i32 0, i32 6
  %425 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load2_noabort(i32 %425)
  %426 = load i16, ptr %slots.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %426)
  %cmp14.not.i.i = icmp eq i16 %426, 0
  br i1 %cmp14.not.i.i, label %for.cond.preheader.i.i.xgene_enet_init_bufpool.exit.i_crit_edge, label %for.body.lr.ph.i106.i

for.cond.preheader.i.i.xgene_enet_init_bufpool.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_init_bufpool.exit.i

for.body.lr.ph.i106.i:                            ; preds = %for.cond.preheader.i.i
  %427 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %424, i32 0, i32 30
  %dst_ring_num.i105.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %424, i32 0, i32 16
  br label %for.body.i112.i

for.body.i112.i:                                  ; preds = %for.body.i112.i.for.body.i112.i_crit_edge, %for.body.lr.ph.i106.i
  %i.015.i.i = phi i32 [ 0, %for.body.lr.ph.i106.i ], [ %inc.i109.i, %for.body.i112.i.for.body.i112.i_crit_edge ]
  %428 = ptrtoint ptr %427 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %427, align 8
  %arrayidx.i107.i = getelementptr %struct.xgene_enet_raw_desc16, ptr %429, i32 %i.015.i.i
  %conv2.i.i = zext i32 %i.015.i.i to i64
  %430 = ptrtoint ptr %dst_ring_num.i105.i to i32
  call void @__asan_load2_noabort(i32 %430)
  %431 = load i16, ptr %dst_ring_num.i105.i, align 4
  %432 = and i16 %431, 4095
  %and.i.i108.i = zext i16 %432 to i64
  %shl2.i.i.i = shl nuw nsw i64 %and.i.i108.i, 32
  %or.i.i = or i64 %shl2.i.i.i, %conv2.i.i
  %or5.i.i = or i64 %or.i.i, 13510798882111488
  %433 = call i64 @llvm.bswap.i64(i64 %or5.i.i) #10
  %434 = ptrtoint ptr %arrayidx.i107.i to i32
  call void @__asan_store8_noabort(i32 %434)
  store i64 %433, ptr %arrayidx.i107.i, align 8
  %inc.i109.i = add nuw nsw i32 %i.015.i.i, 1
  %435 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %slots.i.i, align 2
  %conv.i110.i = zext i16 %436 to i32
  %cmp.i111.i = icmp ult i32 %inc.i109.i, %conv.i110.i
  br i1 %cmp.i111.i, label %for.body.i112.i.for.body.i112.i_crit_edge, label %for.body.i112.i.xgene_enet_init_bufpool.exit.i_crit_edge

for.body.i112.i.xgene_enet_init_bufpool.exit.i_crit_edge: ; preds = %for.body.i112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_init_bufpool.exit.i

for.body.i112.i.for.body.i112.i_crit_edge:        ; preds = %for.body.i112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i112.i

xgene_enet_init_bufpool.exit.i:                   ; preds = %for.body.i112.i.xgene_enet_init_bufpool.exit.i_crit_edge, %for.cond.preheader.i.i.xgene_enet_init_bufpool.exit.i_crit_edge, %for.body.i.xgene_enet_init_bufpool.exit.i_crit_edge
  %437 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %arrayidx.i, align 4
  %page_pool10.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %438, i32 0, i32 28
  %439 = ptrtoint ptr %page_pool10.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %page_pool10.i, align 8
  %tobool.not.i113.i = icmp eq ptr %440, null
  br i1 %tobool.not.i113.i, label %xgene_enet_init_bufpool.exit.i.xgene_enet_init_bufpool.exit130.i_crit_edge, label %for.cond.preheader.i116.i

xgene_enet_init_bufpool.exit.i.xgene_enet_init_bufpool.exit130.i_crit_edge: ; preds = %xgene_enet_init_bufpool.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_init_bufpool.exit130.i

for.cond.preheader.i116.i:                        ; preds = %xgene_enet_init_bufpool.exit.i
  %slots.i114.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %440, i32 0, i32 6
  %441 = ptrtoint ptr %slots.i114.i to i32
  call void @__asan_load2_noabort(i32 %441)
  %442 = load i16, ptr %slots.i114.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %442)
  %cmp14.not.i115.i = icmp eq i16 %442, 0
  br i1 %cmp14.not.i115.i, label %for.cond.preheader.i116.i.xgene_enet_init_bufpool.exit130.i_crit_edge, label %for.body.lr.ph.i118.i

for.cond.preheader.i116.i.xgene_enet_init_bufpool.exit130.i_crit_edge: ; preds = %for.cond.preheader.i116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_init_bufpool.exit130.i

for.body.lr.ph.i118.i:                            ; preds = %for.cond.preheader.i116.i
  %443 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %440, i32 0, i32 30
  %dst_ring_num.i117.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %440, i32 0, i32 16
  br label %for.body.i129.i

for.body.i129.i:                                  ; preds = %for.body.i129.i.for.body.i129.i_crit_edge, %for.body.lr.ph.i118.i
  %i.015.i119.i = phi i32 [ 0, %for.body.lr.ph.i118.i ], [ %inc.i126.i, %for.body.i129.i.for.body.i129.i_crit_edge ]
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %443, align 8
  %arrayidx.i120.i = getelementptr %struct.xgene_enet_raw_desc16, ptr %445, i32 %i.015.i119.i
  %conv2.i121.i = zext i32 %i.015.i119.i to i64
  %446 = ptrtoint ptr %dst_ring_num.i117.i to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %dst_ring_num.i117.i, align 4
  %448 = and i16 %447, 4095
  %and.i.i122.i = zext i16 %448 to i64
  %shl2.i.i123.i = shl nuw nsw i64 %and.i.i122.i, 32
  %or.i124.i = or i64 %shl2.i.i123.i, %conv2.i121.i
  %or5.i125.i = or i64 %or.i124.i, 13510798882111488
  %449 = call i64 @llvm.bswap.i64(i64 %or5.i125.i) #10
  %450 = ptrtoint ptr %arrayidx.i120.i to i32
  call void @__asan_store8_noabort(i32 %450)
  store i64 %449, ptr %arrayidx.i120.i, align 8
  %inc.i126.i = add nuw nsw i32 %i.015.i119.i, 1
  %451 = ptrtoint ptr %slots.i114.i to i32
  call void @__asan_load2_noabort(i32 %451)
  %452 = load i16, ptr %slots.i114.i, align 2
  %conv.i127.i = zext i16 %452 to i32
  %cmp.i128.i = icmp ult i32 %inc.i126.i, %conv.i127.i
  br i1 %cmp.i128.i, label %for.body.i129.i.for.body.i129.i_crit_edge, label %for.body.i129.i.xgene_enet_init_bufpool.exit130.i_crit_edge

for.body.i129.i.xgene_enet_init_bufpool.exit130.i_crit_edge: ; preds = %for.body.i129.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_init_bufpool.exit130.i

for.body.i129.i.for.body.i129.i_crit_edge:        ; preds = %for.body.i129.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i129.i

xgene_enet_init_bufpool.exit130.i:                ; preds = %for.body.i129.i.xgene_enet_init_bufpool.exit130.i_crit_edge, %for.cond.preheader.i116.i.xgene_enet_init_bufpool.exit130.i_crit_edge, %xgene_enet_init_bufpool.exit.i.xgene_enet_init_bufpool.exit130.i_crit_edge
  %453 = ptrtoint ptr %rx_buff_cnt.i222 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %rx_buff_cnt.i222, align 4
  %call11.i = call fastcc i32 @xgene_enet_refill_bufpool(ptr noundef %424, i32 noundef %454) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %xgene_enet_init_bufpool.exit130.i.err.i_crit_edge

xgene_enet_init_bufpool.exit130.i.err.i_crit_edge: ; preds = %xgene_enet_init_bufpool.exit130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i

if.end14.i:                                       ; preds = %xgene_enet_init_bufpool.exit130.i
  %call15.i = call fastcc i32 @xgene_enet_refill_pagepool(ptr noundef %440, i32 noundef %454) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %for.cond.i, label %if.end14.i.err.i_crit_edge

if.end14.i.err.i_crit_edge:                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %xgene_enet_create_desc_rings.exit.i.for.end.i_crit_edge
  %455 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %phy_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %456)
  %cmp25.i = icmp eq i32 %456, 15
  br i1 %cmp25.i, label %if.then27.i, label %if.else.i228

if.then27.i:                                      ; preds = %for.end.i
  %max_nodes.i = getelementptr i8, ptr %call, i32 2592
  %457 = ptrtoint ptr %max_nodes.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 512, ptr %max_nodes.i, align 4
  %max_dbptrs.i = getelementptr i8, ptr %call, i32 2596
  %458 = ptrtoint ptr %max_dbptrs.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 1024, ptr %max_dbptrs.i, align 4
  %parsers.i = getelementptr i8, ptr %call, i32 2588
  %459 = ptrtoint ptr %parsers.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 3, ptr %parsers.i, align 4
  %active_parser.i = getelementptr i8, ptr %call, i32 2584
  %460 = ptrtoint ptr %active_parser.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 3, ptr %active_parser.i, align 4
  %start_node.i = getelementptr i8, ptr %call, i32 2572
  %461 = ptrtoint ptr %start_node.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 0, ptr %start_node.i, align 4
  %start_dbptr.i = getelementptr i8, ptr %call, i32 2580
  %462 = ptrtoint ptr %start_dbptr.i to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 0, ptr %start_dbptr.i, align 4
  %jump_bytes.i = getelementptr i8, ptr %call, i32 2600
  %463 = ptrtoint ptr %jump_bytes.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 8, ptr %jump_bytes.i, align 4
  %cle_ops.i226 = getelementptr i8, ptr %call, i32 2724
  %464 = ptrtoint ptr %cle_ops.i226 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %cle_ops.i226, align 4
  %466 = ptrtoint ptr %465 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %465, align 4
  %call29.i = call i32 %467(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then27.i.if.end36_crit_edge, label %if.then31.i

if.then27.i.if.end36_crit_edge:                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then31.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %183, ptr noundef nonnull @.str.66) #13
  br label %err.i

if.else.i228:                                     ; preds = %for.end.i
  %rx_ring19.i = getelementptr i8, ptr %call, i32 2360
  %468 = ptrtoint ptr %rx_ring19.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %rx_ring19.i, align 8
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %469, align 8
  %rm.i.i = getelementptr i8, ptr %471, i32 2548
  %472 = ptrtoint ptr %rm.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %rm.i.i, align 4
  %.tr.i.i = trunc i32 %473 to i16
  %474 = shl i16 %.tr.i.i, 10
  %num.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %469, i32 0, i32 2
  %475 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %num.i.i, align 2
  %conv3.i134.i = or i16 %474, %476
  %buf_pool38.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %469, i32 0, i32 27
  %477 = ptrtoint ptr %buf_pool38.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %buf_pool38.i, align 4
  %page_pool41.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %469, i32 0, i32 28
  %479 = ptrtoint ptr %page_pool41.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %page_pool41.i, align 8
  %tobool42.not.i227 = icmp eq ptr %480, null
  br i1 %tobool42.not.i227, label %if.else.i228.cond.end.i_crit_edge, label %cond.true.i

if.else.i228.cond.end.i_crit_edge:                ; preds = %if.else.i228
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.else.i228
  call void @__sanitizer_cov_trace_pc() #12
  %id.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %480, i32 0, i32 1
  %481 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %481)
  %482 = load i16, ptr %id.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.else.i228.cond.end.i_crit_edge
  %cond.i229 = phi i16 [ %482, %cond.true.i ], [ 0, %if.else.i228.cond.end.i_crit_edge ]
  %483 = ptrtoint ptr %port_ops.i202 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %port_ops.i202, align 4
  %cle_bypass.i = getelementptr inbounds %struct.xgene_port_ops, ptr %484, i32 0, i32 2
  %485 = ptrtoint ptr %cle_bypass.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %cle_bypass.i, align 4
  %conv46.i = zext i16 %conv3.i134.i to i32
  %id47.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %478, i32 0, i32 1
  %487 = ptrtoint ptr %id47.i to i32
  call void @__asan_load2_noabort(i32 %487)
  %488 = load i16, ptr %id47.i, align 4
  call void %486(ptr noundef %add.ptr.i, i32 noundef %conv46.i, i16 noundef zeroext %488, i16 noundef zeroext %cond.i229) #10
  br label %if.end36

err.i:                                            ; preds = %if.then31.i, %if.end14.i.err.i_crit_edge, %xgene_enet_init_bufpool.exit130.i.err.i_crit_edge
  %ret.2.i = phi i32 [ %call29.i, %if.then31.i ], [ %call11.i, %xgene_enet_init_bufpool.exit130.i.err.i_crit_edge ], [ %call15.i, %if.end14.i.err.i_crit_edge ]
  call fastcc void @xgene_enet_delete_desc_rings(ptr noundef %add.ptr.i) #10
  br label %err2

if.end36:                                         ; preds = %cond.end.i, %if.then27.i.if.end36_crit_edge
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %183, i32 0, i32 31
  %489 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 9600, ptr %max_mtu.i, align 4
  %phy_speed.i = getelementptr i8, ptr %call, i32 2312
  %490 = ptrtoint ptr %phy_speed.i to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 -1, ptr %phy_speed.i, align 8
  %mac_ops.i230 = getelementptr i8, ptr %call, i32 2668
  %491 = ptrtoint ptr %mac_ops.i230 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %mac_ops.i230, align 4
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %492, align 4
  call void %494(ptr noundef %add.ptr.i) #10
  %495 = ptrtoint ptr %mac_ops.i230 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %mac_ops.i230, align 4
  %link_state37 = getelementptr inbounds %struct.xgene_mac_ops, ptr %496, i32 0, i32 11
  %497 = ptrtoint ptr %link_state37 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %link_state37, align 4
  %499 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %phy_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %500)
  %cmp39 = icmp eq i32 %500, 15
  br i1 %cmp39, label %do.body42, label %if.else

do.body42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %link_work = getelementptr i8, ptr %call, i32 2728
  call void @__init_work(ptr noundef %link_work, i32 noundef 0) #10
  %501 = ptrtoint ptr %link_work to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 -64, ptr %link_work, align 8
  %lockdep_map = getelementptr i8, ptr %call, i32 2744
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @xgene_enet_probe.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry50 = getelementptr i8, ptr %call, i32 2732
  %502 = ptrtoint ptr %entry50 to i32
  call void @__asan_store4_noabort(i32 %502)
  store volatile ptr %entry50, ptr %entry50, align 4
  br label %do.body101.sink.split

if.else:                                          ; preds = %if.end36
  %mdio_driver = getelementptr i8, ptr %call, i32 2918
  %503 = ptrtoint ptr %mdio_driver to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %mdio_driver, align 2, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %504)
  %tobool61.not = icmp eq i8 %504, 0
  br i1 %tobool61.not, label %if.then62, label %if.else.do.body101_crit_edge

if.else.do.body101_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body101

if.then62:                                        ; preds = %if.else
  %505 = add i32 %500, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %505)
  %506 = icmp ult i32 %505, 4
  br i1 %506, label %if.end95, label %if.end95.thread

if.end95.thread:                                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %link_work70 = getelementptr i8, ptr %call, i32 2728
  call void @__init_work(ptr noundef %link_work70, i32 noundef 0) #10
  %507 = ptrtoint ptr %link_work70 to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 -64, ptr %link_work70, align 8
  %lockdep_map79 = getelementptr i8, ptr %call, i32 2744
  call void @lockdep_init_map_type(ptr noundef %lockdep_map79, ptr noundef nonnull @.str.6, ptr noundef nonnull @xgene_enet_probe.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry82 = getelementptr i8, ptr %call, i32 2732
  %508 = ptrtoint ptr %entry82 to i32
  call void @__asan_store4_noabort(i32 %508)
  store volatile ptr %entry82, ptr %entry82, align 4
  br label %do.body101.sink.split

if.end95:                                         ; preds = %if.then62
  %call66 = call i32 @xgene_enet_mdio_config(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool96.not = icmp eq i32 %call66, 0
  br i1 %tobool96.not, label %if.end95.do.body101_crit_edge, label %if.end95.err1_crit_edge

if.end95.err1_crit_edge:                          ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1

if.end95.do.body101_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body101

do.body101.sink.split:                            ; preds = %if.end95.thread, %do.body42
  %entry82.sink = phi ptr [ %entry82, %if.end95.thread ], [ %entry50, %do.body42 ]
  %xgene_enet_probe.__key.10.sink = phi ptr [ @xgene_enet_probe.__key.10, %if.end95.thread ], [ @xgene_enet_probe.__key.7, %do.body42 ]
  %prev.i232 = getelementptr i8, ptr %call, i32 2736
  %509 = ptrtoint ptr %prev.i232 to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %entry82.sink, ptr %prev.i232, align 4
  %func85 = getelementptr i8, ptr %call, i32 2740
  %510 = ptrtoint ptr %func85 to i32
  call void @__asan_store4_noabort(i32 %510)
  store ptr %498, ptr %func85, align 4
  %timer90 = getelementptr i8, ptr %call, i32 2772
  call void @init_timer_key(ptr noundef %timer90, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull %xgene_enet_probe.__key.10.sink) #10
  br label %do.body101

do.body101:                                       ; preds = %do.body101.sink.split, %if.end95.do.body101_crit_edge, %if.else.do.body101_crit_edge
  %stats_lock = getelementptr i8, ptr %call, i32 2624
  call void @__raw_spin_lock_init(ptr noundef %stats_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @xgene_enet_probe.__key.11, i16 noundef signext 3) #10
  %call105 = call i32 @xgene_extd_stats_init(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %do.body101.err1_crit_edge

do.body101.err1_crit_edge:                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1

if.end108:                                        ; preds = %do.body101
  call fastcc void @xgene_enet_napi_add(ptr noundef %add.ptr.i)
  %call109 = call i32 @register_netdev(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end108.cleanup_crit_edge, label %if.then111

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.13) #13
  br label %err1

err1:                                             ; preds = %if.then111, %do.body101.err1_crit_edge, %if.end95.err1_crit_edge
  %ret.1 = phi i32 [ %call105, %do.body101.err1_crit_edge ], [ %call109, %if.then111 ], [ %call66, %if.end95.err1_crit_edge ]
  call fastcc void @xgene_enet_delete_desc_rings(ptr noundef %add.ptr.i)
  br label %err2

err2:                                             ; preds = %err1, %err.i, %if.then4.i, %xgene_enet_check_phy_handle.exit.err2_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err1 ], [ %call.i203, %xgene_enet_check_phy_handle.exit.err2_crit_edge ], [ %ret.2.i, %err.i ], [ -12, %if.then4.i ]
  %mdio_driver113 = getelementptr i8, ptr %call, i32 2918
  %511 = ptrtoint ptr %mdio_driver113 to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %mdio_driver113, align 2, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %512)
  %tobool114.not = icmp eq i8 %512, 0
  br i1 %tobool114.not, label %if.else116, label %if.then115

if.then115:                                       ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #12
  call void @xgene_enet_phy_disconnect(ptr noundef %add.ptr.i) #10
  br label %err

if.else116:                                       ; preds = %err2
  %513 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %phy_mode.i, align 8
  %515 = add i32 %514, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %515)
  %516 = icmp ult i32 %515, 4
  br i1 %516, label %if.then119, label %if.else116.err_crit_edge

if.else116.err_crit_edge:                         ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.then119:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #12
  call void @xgene_enet_mdio_remove(ptr noundef %add.ptr.i) #10
  br label %err

err:                                              ; preds = %if.then119, %if.else116.err_crit_edge, %if.then115, %if.then31, %xgene_enet_get_resources.exit.err_crit_edge, %lor.lhs.false.i.err_crit_edge, %if.end17.i.i, %xgene_get_rx_delay.exit.i, %xgene_get_tx_delay.exit.i, %do.end76.i, %do.end46.i, %do.end36.i, %do.end29.i, %do.end19.i, %do.end12.i, %do.end.i, %if.end10.err_crit_edge
  %ret.3 = phi i32 [ %retval.0.i, %xgene_enet_get_resources.exit.err_crit_edge ], [ %call.i.i195, %if.then31 ], [ %ret.2, %if.then115 ], [ %ret.2, %if.then119 ], [ %ret.2, %if.else116.err_crit_edge ], [ -19, %if.end10.err_crit_edge ], [ -2, %lor.lhs.false.i.err_crit_edge ], [ -22, %xgene_get_rx_delay.exit.i ], [ -22, %xgene_get_tx_delay.exit.i ], [ -19, %do.end.i ], [ -12, %do.end12.i ], [ -19, %do.end19.i ], [ -12, %do.end29.i ], [ -19, %do.end36.i ], [ -12, %do.end46.i ], [ -19, %do.end76.i ], [ %spec.select, %if.end17.i.i ]
  call void @free_netdev(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end108.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end108.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @rtnl_lock() #10
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_close(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rtnl_unlock() #10
  %mdio_driver = getelementptr inbounds %struct.xgene_enet_pdata, ptr %1, i32 0, i32 50
  %6 = ptrtoint ptr %mdio_driver to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mdio_driver, align 2, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xgene_enet_phy_disconnect(ptr noundef %1) #10
  br label %if.end7

if.else:                                          ; preds = %if.end
  %phy_mode = getelementptr inbounds %struct.xgene_enet_pdata, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_mode, align 8
  %10 = add i32 %9, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %if.then5, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xgene_enet_mdio_remove(ptr noundef %1) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else.if.end7_crit_edge, %if.then3
  tail call void @unregister_netdev(ptr noundef %3) #10
  tail call fastcc void @xgene_enet_delete_desc_rings(ptr noundef %1)
  %port_ops = getelementptr inbounds %struct.xgene_enet_pdata, ptr %1, i32 0, i32 36
  %12 = ptrtoint ptr %port_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_ops, align 4
  %shutdown = getelementptr inbounds %struct.xgene_port_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shutdown, align 4
  tail call void %15(ptr noundef %1) #10
  tail call void @free_netdev(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @xgene_enet_remove(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgene_enet_set_ethtool_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgene_enet_mdio_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgene_extd_stats_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_enet_napi_add(ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq_cnt = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 14
  %0 = ptrtoint ptr %rxq_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rxq_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp26.not = icmp eq i8 %1, 0
  br i1 %cmp26.not, label %entry.for.cond3.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond3.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.body.for.cond3.preheader_crit_edge, %entry.for.cond3.preheader_crit_edge
  %cq_cnt = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 16
  %2 = ptrtoint ptr %cq_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cq_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp529.not = icmp eq i8 %3, 0
  br i1 %cmp529.not, label %for.cond3.preheader.for.end13_crit_edge, label %for.cond3.preheader.for.body7_crit_edge

for.cond3.preheader.for.body7_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body7

for.cond3.preheader.for.end13_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end13

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 7, i32 %i.027
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %napi2 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 8
  tail call void @netif_napi_add(ptr noundef %7, ptr noundef %napi2, ptr noundef nonnull @xgene_enet_napi, i32 noundef 64) #10
  %inc = add nuw nsw i32 %i.027, 1
  %8 = ptrtoint ptr %rxq_cnt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rxq_cnt, align 4
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond3.preheader_crit_edge

for.body.for.cond3.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond3.preheader.for.body7_crit_edge
  %i.130 = phi i32 [ %inc12, %for.body7.for.body7_crit_edge ], [ 0, %for.cond3.preheader.for.body7_crit_edge ]
  %arrayidx8 = getelementptr %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 6, i32 %i.130
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  %cp_ring = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %cp_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cp_ring, align 8
  %napi9 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 8
  tail call void @netif_napi_add(ptr noundef %15, ptr noundef %napi9, ptr noundef nonnull @xgene_enet_napi, i32 noundef 64) #10
  %inc12 = add nuw nsw i32 %i.130, 1
  %16 = ptrtoint ptr %cq_cnt to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cq_cnt, align 2
  %conv4 = zext i8 %17 to i32
  %cmp5 = icmp ult i32 %inc12, %conv4
  br i1 %cmp5, label %for.body7.for.body7_crit_edge, label %for.body7.for.end13_crit_edge

for.body7.for.end13_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end13

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7

for.end13:                                        ; preds = %for.body7.for.end13_crit_edge, %for.cond3.preheader.for.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_enet_delete_desc_rings(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %txq_cnt = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 15
  %0 = ptrtoint ptr %txq_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %txq_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp85.not = icmp eq i8 %1, 0
  br i1 %cmp85.not, label %entry.for.cond7.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond7.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader

for.body.lr.ph:                                   ; preds = %entry
  %port_ops = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 36
  %cq_cnt = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 16
  br label %for.body

for.cond7.preheader:                              ; preds = %for.inc.for.cond7.preheader_crit_edge, %entry.for.cond7.preheader_crit_edge
  %rxq_cnt = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 14
  %2 = ptrtoint ptr %rxq_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxq_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp988.not = icmp eq i8 %3, 0
  br i1 %cmp988.not, label %for.cond7.preheader.for.end29_crit_edge, label %for.body11.lr.ph

for.cond7.preheader.for.end29_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end29

for.body11.lr.ph:                                 ; preds = %for.cond7.preheader
  %port_ops18 = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 36
  br label %for.body11

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 6, i32 %i.086
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 133, i32 1
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 8
  %ring_ops.i = getelementptr i8, ptr %7, i32 2720
  %10 = ptrtoint ptr %ring_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring_ops.i, align 8
  %clear.i = getelementptr inbounds %struct.xgene_ring_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %clear.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clear.i, align 4
  tail call void %13(ptr noundef nonnull %5) #10
  %size.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 9
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %16 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 30
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %dma.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 13
  %19 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma.i, align 8
  tail call void @dmam_free_coherent(ptr noundef %9, i32 noundef %15, ptr noundef %18, i32 noundef %20) #10
  %21 = ptrtoint ptr %port_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_ops, align 4
  %clear = getelementptr inbounds %struct.xgene_port_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %clear to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clear, align 4
  tail call void %24(ptr noundef %pdata, ptr noundef nonnull %5) #10
  %25 = ptrtoint ptr %cq_cnt to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cq_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool2.not = icmp eq i8 %26, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %cp_ring = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 26
  %27 = ptrtoint ptr %cp_ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cp_ring, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %parent.i.i63 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 133, i32 1
  %31 = ptrtoint ptr %parent.i.i63 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i.i63, align 8
  %ring_ops.i64 = getelementptr i8, ptr %30, i32 2720
  %33 = ptrtoint ptr %ring_ops.i64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring_ops.i64, align 8
  %clear.i65 = getelementptr inbounds %struct.xgene_ring_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %clear.i65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clear.i65, align 4
  tail call void %36(ptr noundef %28) #10
  %size.i66 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %28, i32 0, i32 9
  %37 = ptrtoint ptr %size.i66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i66, align 4
  %39 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %28, i32 0, i32 30
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %dma.i67 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %28, i32 0, i32 13
  %42 = ptrtoint ptr %dma.i67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma.i67, align 8
  tail call void @dmam_free_coherent(ptr noundef %32, i32 noundef %38, ptr noundef %41, i32 noundef %43) #10
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.086, 1
  %45 = ptrtoint ptr %txq_cnt to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %txq_cnt, align 1
  %conv = zext i8 %46 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond7.preheader_crit_edge

for.inc.for.cond7.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body11:                                       ; preds = %for.inc27.for.body11_crit_edge, %for.body11.lr.ph
  %i.189 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc28, %for.inc27.for.body11_crit_edge ]
  %arrayidx12 = getelementptr %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 7, i32 %i.189
  %47 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %48, null
  br i1 %tobool13.not, label %for.body11.for.inc27_crit_edge, label %if.then14

for.body11.for.inc27_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc27

if.then14:                                        ; preds = %for.body11
  %page_pool15 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %48, i32 0, i32 28
  %49 = ptrtoint ptr %page_pool15 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %page_pool15, align 8
  %tobool16.not = icmp eq ptr %50, null
  br i1 %tobool16.not, label %if.then14.if.end20_crit_edge, label %if.then17

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @xgene_enet_delete_pagepool(ptr noundef nonnull %50)
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %parent.i.i68 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 133, i32 1
  %53 = ptrtoint ptr %parent.i.i68 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent.i.i68, align 8
  %ring_ops.i69 = getelementptr i8, ptr %52, i32 2720
  %55 = ptrtoint ptr %ring_ops.i69 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ring_ops.i69, align 8
  %clear.i70 = getelementptr inbounds %struct.xgene_ring_ops, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %clear.i70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clear.i70, align 4
  tail call void %58(ptr noundef nonnull %50) #10
  %size.i71 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %50, i32 0, i32 9
  %59 = ptrtoint ptr %size.i71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size.i71, align 4
  %61 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %50, i32 0, i32 30
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %dma.i72 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %50, i32 0, i32 13
  %64 = ptrtoint ptr %dma.i72 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma.i72, align 8
  tail call void @dmam_free_coherent(ptr noundef %54, i32 noundef %60, ptr noundef %63, i32 noundef %65) #10
  %66 = ptrtoint ptr %port_ops18 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %port_ops18, align 4
  %clear19 = getelementptr inbounds %struct.xgene_port_ops, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %clear19 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clear19, align 4
  tail call void %69(ptr noundef %pdata, ptr noundef nonnull %50) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then14.if.end20_crit_edge
  %buf_pool21 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %48, i32 0, i32 27
  %70 = ptrtoint ptr %buf_pool21 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buf_pool21, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %parent.i.i73 = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 133, i32 1
  %74 = ptrtoint ptr %parent.i.i73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %parent.i.i73, align 8
  %slots.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %71, i32 0, i32 6
  %76 = ptrtoint ptr %slots.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %slots.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %cmp16.not.i = icmp eq i16 %77, 0
  br i1 %cmp16.not.i, label %if.end20.xgene_enet_delete_bufpool.exit_crit_edge, label %for.body.lr.ph.i

if.end20.xgene_enet_delete_bufpool.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_delete_bufpool.exit

for.body.lr.ph.i:                                 ; preds = %if.end20
  %rx_skb.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %71, i32 0, i32 21
  %78 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %71, i32 0, i32 30
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %79 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rx_skb.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %80, i32 %i.017.i
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %82, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %82, i32 noundef 1) #10
  %83 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %78, align 8
  %m1.i = getelementptr %struct.xgene_enet_raw_desc16, ptr %84, i32 %i.017.i, i32 1
  %85 = ptrtoint ptr %m1.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %m1.i, align 8
  %87 = and i64 %86, -16580608
  %88 = tail call i64 @llvm.bswap.i64(i64 %87) #10
  %conv6.i = trunc i64 %88 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %75, i32 noundef %conv6.i, i32 noundef 9600, i32 noundef 2, i32 noundef 0) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %89 = ptrtoint ptr %slots.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %slots.i, align 2
  %conv.i = zext i16 %90 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.xgene_enet_delete_bufpool.exit_crit_edge

for.inc.i.xgene_enet_delete_bufpool.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_delete_bufpool.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

xgene_enet_delete_bufpool.exit:                   ; preds = %for.inc.i.xgene_enet_delete_bufpool.exit_crit_edge, %if.end20.xgene_enet_delete_bufpool.exit_crit_edge
  %91 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %71, align 8
  %parent.i.i74 = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 133, i32 1
  %93 = ptrtoint ptr %parent.i.i74 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %parent.i.i74, align 8
  %ring_ops.i75 = getelementptr i8, ptr %92, i32 2720
  %95 = ptrtoint ptr %ring_ops.i75 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ring_ops.i75, align 8
  %clear.i76 = getelementptr inbounds %struct.xgene_ring_ops, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %clear.i76 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %clear.i76, align 4
  tail call void %98(ptr noundef %71) #10
  %size.i77 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %71, i32 0, i32 9
  %99 = ptrtoint ptr %size.i77 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %size.i77, align 4
  %101 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %71, i32 0, i32 30
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 8
  %dma.i78 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %71, i32 0, i32 13
  %104 = ptrtoint ptr %dma.i78 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma.i78, align 8
  tail call void @dmam_free_coherent(ptr noundef %94, i32 noundef %100, ptr noundef %103, i32 noundef %105) #10
  %106 = ptrtoint ptr %port_ops18 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %port_ops18, align 4
  %clear23 = getelementptr inbounds %struct.xgene_port_ops, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %clear23 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %clear23, align 4
  tail call void %109(ptr noundef %pdata, ptr noundef %71) #10
  %110 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %48, align 8
  %parent.i.i79 = getelementptr inbounds %struct.net_device, ptr %111, i32 0, i32 133, i32 1
  %112 = ptrtoint ptr %parent.i.i79 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %parent.i.i79, align 8
  %ring_ops.i80 = getelementptr i8, ptr %111, i32 2720
  %114 = ptrtoint ptr %ring_ops.i80 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ring_ops.i80, align 8
  %clear.i81 = getelementptr inbounds %struct.xgene_ring_ops, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %clear.i81 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %clear.i81, align 4
  tail call void %117(ptr noundef nonnull %48) #10
  %size.i82 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %48, i32 0, i32 9
  %118 = ptrtoint ptr %size.i82 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %size.i82, align 4
  %120 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %48, i32 0, i32 30
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 8
  %dma.i83 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %48, i32 0, i32 13
  %123 = ptrtoint ptr %dma.i83 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dma.i83, align 8
  tail call void @dmam_free_coherent(ptr noundef %113, i32 noundef %119, ptr noundef %122, i32 noundef %124) #10
  %125 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %arrayidx12, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %xgene_enet_delete_bufpool.exit, %for.body11.for.inc27_crit_edge
  %inc28 = add nuw nsw i32 %i.189, 1
  %126 = ptrtoint ptr %rxq_cnt to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %rxq_cnt, align 4
  %conv8 = zext i8 %127 to i32
  %cmp9 = icmp ult i32 %inc28, %conv8
  br i1 %cmp9, label %for.inc27.for.body11_crit_edge, label %for.inc27.for.end29_crit_edge

for.inc27.for.end29_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end29

for.inc27.for.body11_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11

for.end29:                                        ; preds = %for.inc27.for.end29_crit_edge, %for.cond7.preheader.for.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgene_enet_phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgene_enet_mdio_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %mac_ops1 = getelementptr i8, ptr %ndev, i32 2668
  %0 = ptrtoint ptr %mac_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_ops1, align 4
  %txq_cnt = getelementptr i8, ptr %ndev, i32 2501
  %2 = ptrtoint ptr %txq_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %txq_cnt, align 1
  %conv = zext i8 %3 to i32
  %call2 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %ndev, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxq_cnt = getelementptr i8, ptr %ndev, i32 2500
  %4 = ptrtoint ptr %rxq_cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rxq_cnt, align 4
  %conv3 = zext i8 %5 to i32
  %call4 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %ndev, i32 noundef %conv3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %rxq_cnt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rxq_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp23.not.i = icmp eq i8 %7, 0
  br i1 %cmp23.not.i, label %if.end7.for.cond3.preheader.i_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.for.cond3.preheader.i_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.body.i.for.cond3.preheader.i_crit_edge, %if.end7.for.cond3.preheader.i_crit_edge
  %cq_cnt.i = getelementptr i8, ptr %ndev, i32 2502
  %8 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cq_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp526.not.i = icmp eq i8 %9, 0
  br i1 %cmp526.not.i, label %for.cond3.preheader.i.xgene_enet_napi_enable.exit_crit_edge, label %for.cond3.preheader.i.for.body7.i_crit_edge

for.cond3.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body7.i

for.cond3.preheader.i.xgene_enet_napi_enable.exit_crit_edge: ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_napi_enable.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 7, i32 %i.024.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %napi2.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %11, i32 0, i32 29
  tail call void @napi_enable(ptr noundef %napi2.i) #10
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %12 = ptrtoint ptr %rxq_cnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rxq_cnt, align 4
  %conv.i = zext i8 %13 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond3.preheader.i_crit_edge

for.body.i.for.cond3.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.cond3.preheader.i.for.body7.i_crit_edge
  %i.127.i = phi i32 [ %inc11.i, %for.body7.i.for.body7.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body7.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 6, i32 %i.127.i
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8.i, align 4
  %cp_ring.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %cp_ring.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cp_ring.i, align 8
  %napi9.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %17, i32 0, i32 29
  tail call void @napi_enable(ptr noundef %napi9.i) #10
  %inc11.i = add nuw nsw i32 %i.127.i, 1
  %18 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cq_cnt.i, align 2
  %conv4.i = zext i8 %19 to i32
  %cmp5.i = icmp ult i32 %inc11.i, %conv4.i
  br i1 %cmp5.i, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.xgene_enet_napi_enable.exit_crit_edge

for.body7.i.xgene_enet_napi_enable.exit_crit_edge: ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_napi_enable.exit

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i

xgene_enet_napi_enable.exit:                      ; preds = %for.body7.i.xgene_enet_napi_enable.exit_crit_edge, %for.cond3.preheader.i.xgene_enet_napi_enable.exit_crit_edge
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %20 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i.i, align 8
  %22 = ptrtoint ptr %rxq_cnt to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rxq_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp41.not.i.i = icmp eq i8 %23, 0
  br i1 %cmp41.not.i.i, label %xgene_enet_napi_enable.exit.for.cond9.preheader.i.i_crit_edge, label %xgene_enet_napi_enable.exit.for.body.i.i_crit_edge

xgene_enet_napi_enable.exit.for.body.i.i_crit_edge: ; preds = %xgene_enet_napi_enable.exit
  br label %for.body.i.i

xgene_enet_napi_enable.exit.for.cond9.preheader.i.i_crit_edge: ; preds = %xgene_enet_napi_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader.i.i

for.cond9.preheader.i.i:                          ; preds = %for.inc.i.i.for.cond9.preheader.i.i_crit_edge, %xgene_enet_napi_enable.exit.for.cond9.preheader.i.i_crit_edge
  %24 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cq_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp1245.not.i.i = icmp eq i8 %25, 0
  br i1 %cmp1245.not.i.i, label %for.cond9.preheader.i.i.xgene_enet_set_irq_name.exit.i_crit_edge, label %for.cond9.preheader.i.i.for.body14.i.i_crit_edge

for.cond9.preheader.i.i.for.body14.i.i_crit_edge: ; preds = %for.cond9.preheader.i.i
  br label %for.body14.i.i

for.cond9.preheader.i.i.xgene_enet_set_irq_name.exit.i_crit_edge: ; preds = %for.cond9.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_set_irq_name.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %xgene_enet_napi_enable.exit.for.body.i.i_crit_edge
  %i.042.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %xgene_enet_napi_enable.exit.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 7, i32 %i.042.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %28 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cq_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  %irq_name.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %27, i32 0, i32 8
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name.i.i, i32 noundef 16, ptr noundef nonnull @.str.15, ptr noundef %ndev) #10
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name.i.i, i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %ndev, i32 noundef %i.042.i.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %inc.i.i = add nuw nsw i32 %i.042.i.i, 1
  %30 = ptrtoint ptr %rxq_cnt to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rxq_cnt, align 4
  %conv.i.i = zext i8 %31 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.cond9.preheader.i.i_crit_edge

for.inc.i.i.for.cond9.preheader.i.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body14.i.i:                                   ; preds = %for.body14.i.i.for.body14.i.i_crit_edge, %for.cond9.preheader.i.i.for.body14.i.i_crit_edge
  %i.146.i.i = phi i32 [ %inc22.i.i, %for.body14.i.i.for.body14.i.i_crit_edge ], [ 0, %for.cond9.preheader.i.i.for.body14.i.i_crit_edge ]
  %arrayidx15.i.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 6, i32 %i.146.i.i
  %32 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx15.i.i, align 4
  %cp_ring.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %33, i32 0, i32 26
  %34 = ptrtoint ptr %cp_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cp_ring.i.i, align 8
  %irq_name16.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %35, i32 0, i32 8
  %call20.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name16.i.i, i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %ndev, i32 noundef %i.146.i.i) #10
  %inc22.i.i = add nuw nsw i32 %i.146.i.i, 1
  %36 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cq_cnt.i, align 2
  %conv11.i.i = zext i8 %37 to i32
  %cmp12.i.i = icmp ult i32 %inc22.i.i, %conv11.i.i
  br i1 %cmp12.i.i, label %for.body14.i.i.for.body14.i.i_crit_edge, label %for.body14.i.i.xgene_enet_set_irq_name.exit.i_crit_edge

for.body14.i.i.xgene_enet_set_irq_name.exit.i_crit_edge: ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_set_irq_name.exit.i

for.body14.i.i.for.body14.i.i_crit_edge:          ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i.i

xgene_enet_set_irq_name.exit.i:                   ; preds = %for.body14.i.i.xgene_enet_set_irq_name.exit.i_crit_edge, %for.cond9.preheader.i.i.xgene_enet_set_irq_name.exit.i_crit_edge
  %38 = ptrtoint ptr %rxq_cnt to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rxq_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp56.not.i = icmp eq i8 %39, 0
  br i1 %cmp56.not.i, label %xgene_enet_set_irq_name.exit.i.for.cond9.preheader.i_crit_edge, label %xgene_enet_set_irq_name.exit.i.for.body.i40_crit_edge

xgene_enet_set_irq_name.exit.i.for.body.i40_crit_edge: ; preds = %xgene_enet_set_irq_name.exit.i
  br label %for.body.i40

xgene_enet_set_irq_name.exit.i.for.cond9.preheader.i_crit_edge: ; preds = %xgene_enet_set_irq_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.inc.i.for.cond9.preheader.i_crit_edge, %xgene_enet_set_irq_name.exit.i.for.cond9.preheader.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %xgene_enet_set_irq_name.exit.i.for.cond9.preheader.i_crit_edge ], [ %call.i.i, %for.inc.i.for.cond9.preheader.i_crit_edge ]
  %40 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cq_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp1159.not.i = icmp eq i8 %41, 0
  br i1 %cmp1159.not.i, label %for.cond9.preheader.i.xgene_enet_register_irq.exit_crit_edge, label %for.cond9.preheader.i.for.body13.i_crit_edge

for.cond9.preheader.i.for.body13.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body13.i

for.cond9.preheader.i.xgene_enet_register_irq.exit_crit_edge: ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_register_irq.exit

for.body.i40:                                     ; preds = %for.inc.i.for.body.i40_crit_edge, %xgene_enet_set_irq_name.exit.i.for.body.i40_crit_edge
  %i.057.i = phi i32 [ %inc.i41, %for.inc.i.for.body.i40_crit_edge ], [ 0, %xgene_enet_set_irq_name.exit.i.for.body.i40_crit_edge ]
  %arrayidx.i39 = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 7, i32 %i.057.i
  %42 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i39, align 4
  %irq.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %irq.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %irq.i, align 8
  %conv3.i = zext i16 %45 to i32
  tail call void @irq_modify_status(i32 noundef %conv3.i, i32 noundef 0, i32 noundef 524288) #10
  %46 = ptrtoint ptr %irq.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %irq.i, align 8
  %conv5.i = zext i16 %47 to i32
  %irq_name.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %43, i32 0, i32 8
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %21, i32 noundef %conv5.i, ptr noundef nonnull @xgene_enet_rx_irq, ptr noundef null, i32 noundef 0, ptr noundef %irq_name.i, ptr noundef %43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.body.i40.for.inc.i_crit_edge, label %if.then.i

for.body.i40.for.inc.i_crit_edge:                 ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.14, ptr noundef %irq_name.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i40.for.inc.i_crit_edge
  %inc.i41 = add nuw nsw i32 %i.057.i, 1
  %48 = ptrtoint ptr %rxq_cnt to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rxq_cnt, align 4
  %conv.i42 = zext i8 %49 to i32
  %cmp.i43 = icmp ult i32 %inc.i41, %conv.i42
  br i1 %cmp.i43, label %for.inc.i.for.body.i40_crit_edge, label %for.inc.i.for.cond9.preheader.i_crit_edge

for.inc.i.for.cond9.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader.i

for.inc.i.for.body.i40_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i40

for.body13.i:                                     ; preds = %for.inc27.i.for.body13.i_crit_edge, %for.cond9.preheader.i.for.body13.i_crit_edge
  %i.160.i = phi i32 [ %inc28.i, %for.inc27.i.for.body13.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body13.i_crit_edge ]
  %arrayidx14.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 6, i32 %i.160.i
  %50 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx14.i, align 4
  %cp_ring.i44 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %51, i32 0, i32 26
  %52 = ptrtoint ptr %cp_ring.i44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cp_ring.i44, align 8
  %irq15.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %irq15.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %irq15.i, align 8
  %conv16.i = zext i16 %55 to i32
  tail call void @irq_modify_status(i32 noundef %conv16.i, i32 noundef 0, i32 noundef 524288) #10
  %56 = ptrtoint ptr %irq15.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %irq15.i, align 8
  %conv18.i = zext i16 %57 to i32
  %irq_name19.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %53, i32 0, i32 8
  %call.i54.i = tail call i32 @devm_request_threaded_irq(ptr noundef %21, i32 noundef %conv18.i, ptr noundef nonnull @xgene_enet_rx_irq, ptr noundef null, i32 noundef 0, ptr noundef %irq_name19.i, ptr noundef %53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %tobool22.not.i = icmp eq i32 %call.i54.i, 0
  br i1 %tobool22.not.i, label %for.body13.i.for.inc27.i_crit_edge, label %if.then23.i

for.body13.i.for.inc27.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc27.i

if.then23.i:                                      ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.14, ptr noundef %irq_name19.i) #13
  br label %for.inc27.i

for.inc27.i:                                      ; preds = %if.then23.i, %for.body13.i.for.inc27.i_crit_edge
  %inc28.i = add nuw nsw i32 %i.160.i, 1
  %58 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %cq_cnt.i, align 2
  %conv10.i = zext i8 %59 to i32
  %cmp11.i = icmp ult i32 %inc28.i, %conv10.i
  br i1 %cmp11.i, label %for.inc27.i.for.body13.i_crit_edge, label %for.inc27.i.xgene_enet_register_irq.exit_crit_edge

for.inc27.i.xgene_enet_register_irq.exit_crit_edge: ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_register_irq.exit

for.inc27.i.for.body13.i_crit_edge:               ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.i

xgene_enet_register_irq.exit:                     ; preds = %for.inc27.i.xgene_enet_register_irq.exit_crit_edge, %for.cond9.preheader.i.xgene_enet_register_irq.exit_crit_edge
  %ret.1.lcssa.i = phi i32 [ %ret.0.lcssa.i, %for.cond9.preheader.i.xgene_enet_register_irq.exit_crit_edge ], [ %call.i54.i, %for.inc27.i.xgene_enet_register_irq.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.lcssa.i)
  %tobool9.not = icmp eq i32 %ret.1.lcssa.i, 0
  br i1 %tobool9.not, label %if.end11, label %xgene_enet_register_irq.exit.cleanup_crit_edge

xgene_enet_register_irq.exit.cleanup_crit_edge:   ; preds = %xgene_enet_register_irq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %xgene_enet_register_irq.exit
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %60 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phydev, align 16
  %tobool12.not = icmp eq ptr %61, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_start(ptr noundef nonnull %61) #10
  br label %if.end16

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %link_work = getelementptr i8, ptr %ndev, i32 2728
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %62 = load ptr, ptr @system_wq, align 4
  %call.i.i45 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %62, ptr noundef %link_work, i32 noundef 200) #10
  tail call void @netif_carrier_off(ptr noundef %ndev) #10
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %tx_enable = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %tx_enable to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_enable, align 4
  tail call void %64(ptr noundef %add.ptr.i) #10
  %rx_enable = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %rx_enable to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rx_enable, align 4
  tail call void %66(ptr noundef %add.ptr.i) #10
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %67 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp4.not.i = icmp eq i32 %68, 0
  br i1 %cmp4.not.i, label %if.end16.cleanup_crit_edge, label %for.body.lr.ph.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body.i48

for.body.i48:                                     ; preds = %for.body.i48.for.body.i48_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i46, %for.body.i48.for.body.i48_crit_edge ]
  %69 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %70, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %inc.i46 = add nuw i32 %i.05.i, 1
  %71 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i47 = icmp ult i32 %inc.i46, %72
  br i1 %cmp.i47, label %for.body.i48.for.body.i48_crit_edge, label %for.body.i48.cleanup_crit_edge

for.body.i48.cleanup_crit_edge:                   ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i48.for.body.i48_crit_edge:              ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i48

cleanup:                                          ; preds = %for.body.i48.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %xgene_enet_register_irq.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %ret.1.lcssa.i, %xgene_enet_register_irq.exit.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %for.body.i48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_close(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %mac_ops1 = getelementptr i8, ptr %ndev, i32 2668
  %0 = ptrtoint ptr %mac_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_ops1, align 4
  tail call void @netif_tx_stop_all_queues(ptr noundef %ndev) #10
  %tx_disable = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tx_disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_disable, align 4
  tail call void %3(ptr noundef %add.ptr.i) #10
  %rx_disable = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %rx_disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_disable, align 4
  tail call void %5(ptr noundef %add.ptr.i) #10
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_stop(ptr noundef nonnull %7) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %link_work = getelementptr i8, ptr %ndev, i32 2728
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %link_work) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 8
  %rxq_cnt.i = getelementptr i8, ptr %ndev, i32 2500
  %10 = ptrtoint ptr %rxq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rxq_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp35.not.i = icmp eq i8 %11, 0
  br i1 %cmp35.not.i, label %if.end.for.cond6.preheader.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.cond6.preheader.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader.i

for.cond6.preheader.i:                            ; preds = %for.body.i.for.cond6.preheader.i_crit_edge, %if.end.for.cond6.preheader.i_crit_edge
  %cq_cnt.i = getelementptr i8, ptr %ndev, i32 2502
  %12 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cq_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp838.not.i = icmp eq i8 %13, 0
  br i1 %cmp838.not.i, label %for.cond6.preheader.i.xgene_enet_free_irq.exit_crit_edge, label %for.cond6.preheader.i.for.body10.i_crit_edge

for.cond6.preheader.i.for.body10.i_crit_edge:     ; preds = %for.cond6.preheader.i
  br label %for.body10.i

for.cond6.preheader.i.xgene_enet_free_irq.exit_crit_edge: ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_free_irq.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.036.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 7, i32 %i.036.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %irq.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %irq.i, align 8
  %conv3.i = zext i16 %17 to i32
  tail call void @irq_modify_status(i32 noundef %conv3.i, i32 noundef 524288, i32 noundef 0) #10
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %irq.i, align 8
  %conv5.i = zext i16 %19 to i32
  tail call void @devm_free_irq(ptr noundef %9, i32 noundef %conv5.i, ptr noundef %15) #10
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %20 = ptrtoint ptr %rxq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rxq_cnt.i, align 4
  %conv.i = zext i8 %21 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond6.preheader.i_crit_edge

for.body.i.for.cond6.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.cond6.preheader.i.for.body10.i_crit_edge
  %i.139.i = phi i32 [ %inc17.i, %for.body10.i.for.body10.i_crit_edge ], [ 0, %for.cond6.preheader.i.for.body10.i_crit_edge ]
  %arrayidx11.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 6, i32 %i.139.i
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx11.i, align 4
  %cp_ring.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %23, i32 0, i32 26
  %24 = ptrtoint ptr %cp_ring.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cp_ring.i, align 8
  %irq12.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %irq12.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %irq12.i, align 8
  %conv13.i = zext i16 %27 to i32
  tail call void @irq_modify_status(i32 noundef %conv13.i, i32 noundef 524288, i32 noundef 0) #10
  %28 = ptrtoint ptr %irq12.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %irq12.i, align 8
  %conv15.i = zext i16 %29 to i32
  tail call void @devm_free_irq(ptr noundef %9, i32 noundef %conv15.i, ptr noundef %25) #10
  %inc17.i = add nuw nsw i32 %i.139.i, 1
  %30 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cq_cnt.i, align 2
  %conv7.i = zext i8 %31 to i32
  %cmp8.i = icmp ult i32 %inc17.i, %conv7.i
  br i1 %cmp8.i, label %for.body10.i.for.body10.i_crit_edge, label %for.body10.i.xgene_enet_free_irq.exit_crit_edge

for.body10.i.xgene_enet_free_irq.exit_crit_edge:  ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_free_irq.exit

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i

xgene_enet_free_irq.exit:                         ; preds = %for.body10.i.xgene_enet_free_irq.exit_crit_edge, %for.cond6.preheader.i.xgene_enet_free_irq.exit_crit_edge
  %32 = ptrtoint ptr %rxq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rxq_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp23.not.i = icmp eq i8 %33, 0
  br i1 %cmp23.not.i, label %xgene_enet_free_irq.exit.for.cond3.preheader.i_crit_edge, label %xgene_enet_free_irq.exit.for.body.i25_crit_edge

xgene_enet_free_irq.exit.for.body.i25_crit_edge:  ; preds = %xgene_enet_free_irq.exit
  br label %for.body.i25

xgene_enet_free_irq.exit.for.cond3.preheader.i_crit_edge: ; preds = %xgene_enet_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.body.i25.for.cond3.preheader.i_crit_edge, %xgene_enet_free_irq.exit.for.cond3.preheader.i_crit_edge
  %34 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cq_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp526.not.i = icmp eq i8 %35, 0
  br i1 %cmp526.not.i, label %for.cond3.preheader.i.xgene_enet_napi_disable.exit_crit_edge, label %for.cond3.preheader.i.for.body7.i_crit_edge

for.cond3.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body7.i

for.cond3.preheader.i.xgene_enet_napi_disable.exit_crit_edge: ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_napi_disable.exit

for.body.i25:                                     ; preds = %for.body.i25.for.body.i25_crit_edge, %xgene_enet_free_irq.exit.for.body.i25_crit_edge
  %i.024.i = phi i32 [ %inc.i22, %for.body.i25.for.body.i25_crit_edge ], [ 0, %xgene_enet_free_irq.exit.for.body.i25_crit_edge ]
  %arrayidx.i21 = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 7, i32 %i.024.i
  %36 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i21, align 4
  %napi2.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %37, i32 0, i32 29
  tail call void @napi_disable(ptr noundef %napi2.i) #10
  %inc.i22 = add nuw nsw i32 %i.024.i, 1
  %38 = ptrtoint ptr %rxq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rxq_cnt.i, align 4
  %conv.i23 = zext i8 %39 to i32
  %cmp.i24 = icmp ult i32 %inc.i22, %conv.i23
  br i1 %cmp.i24, label %for.body.i25.for.body.i25_crit_edge, label %for.body.i25.for.cond3.preheader.i_crit_edge

for.body.i25.for.cond3.preheader.i_crit_edge:     ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader.i

for.body.i25.for.body.i25_crit_edge:              ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i25

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.cond3.preheader.i.for.body7.i_crit_edge
  %i.127.i = phi i32 [ %inc11.i, %for.body7.i.for.body7.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body7.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 6, i32 %i.127.i
  %40 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx8.i, align 4
  %cp_ring.i26 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %41, i32 0, i32 26
  %42 = ptrtoint ptr %cp_ring.i26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cp_ring.i26, align 8
  %napi9.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %43, i32 0, i32 29
  tail call void @napi_disable(ptr noundef %napi9.i) #10
  %inc11.i = add nuw nsw i32 %i.127.i, 1
  %44 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cq_cnt.i, align 2
  %conv4.i = zext i8 %45 to i32
  %cmp5.i = icmp ult i32 %inc11.i, %conv4.i
  br i1 %cmp5.i, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.xgene_enet_napi_disable.exit_crit_edge

for.body7.i.xgene_enet_napi_disable.exit_crit_edge: ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_napi_disable.exit

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i

xgene_enet_napi_disable.exit:                     ; preds = %for.body7.i.xgene_enet_napi_disable.exit_crit_edge, %for.cond3.preheader.i.xgene_enet_napi_disable.exit_crit_edge
  %46 = ptrtoint ptr %rxq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rxq_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp28.not = icmp eq i8 %47, 0
  br i1 %cmp28.not, label %xgene_enet_napi_disable.exit.for.end_crit_edge, label %xgene_enet_napi_disable.exit.for.body_crit_edge

xgene_enet_napi_disable.exit.for.body_crit_edge:  ; preds = %xgene_enet_napi_disable.exit
  br label %for.body

xgene_enet_napi_disable.exit.for.end_crit_edge:   ; preds = %xgene_enet_napi_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %xgene_enet_napi_disable.exit.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %xgene_enet_napi_disable.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 7, i32 %i.029
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call fastcc i32 @xgene_enet_process_ring(ptr noundef %49, i32 noundef -1)
  %inc = add nuw nsw i32 %i.029, 1
  %50 = ptrtoint ptr %rxq_cnt.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rxq_cnt.i, align 4
  %conv = zext i8 %51 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %xgene_enet_napi_disable.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_start_xmit(ptr noundef %skb, ptr nocapture noundef readonly %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping, align 8
  %conv = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 8, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv2 = zext i16 %3 to i32
  %arrayidx4 = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 6, i32 %conv
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 9, i32 %conv
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %7)
  %cmp = icmp ult i16 %3, %7
  %add = add nuw nsw i32 %conv2, 65535
  %spec.select = select i1 %cmp, i32 %add, i32 %conv2
  %conv10 = zext i16 %7 to i32
  %sub = sub nsw i32 %spec.select, %conv10
  %tx_qcnt_hi = getelementptr i8, ptr %ndev, i32 2432
  %8 = ptrtoint ptr %tx_qcnt_hi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_qcnt_hi, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp11 = icmp ugt i32 %sub, %9
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %11, i32 %conv, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

if.end15:                                         ; preds = %entry
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %13)
  %cmp.i = icmp ugt i32 %13, 59
  br i1 %cmp.i, label %if.end15.if.end18_crit_edge, label %skb_padto.exit, !prof !154

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

skb_padto.exit:                                   ; preds = %if.end15
  %sub.i = sub nuw nsw i32 60, %13
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %skb_padto.exit.if.end18_crit_edge, label %skb_padto.exit.cleanup_crit_edge

skb_padto.exit.cleanup_crit_edge:                 ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

skb_padto.exit.if.end18_crit_edge:                ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end18:                                         ; preds = %skb_padto.exit.if.end18_crit_edge, %if.end15.if.end18_crit_edge
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 133, i32 1
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 2304
  %tail3.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %tail3.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tail3.i, align 2
  %20 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 30
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %idxprom.i = zext i16 %19 to i32
  %arrayidx.i = getelementptr %struct.xgene_enet_raw_desc, ptr %22, i32 %idxprom.i
  %add.i = add i16 %19, 1
  %slots.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 6
  %23 = ptrtoint ptr %slots.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %slots.i, align 2
  %sub.i56 = add i16 %24, -1
  %and.i = and i16 %sub.i56, %add.i
  %25 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 32)
  %26 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %h_proto.i.i.i = getelementptr inbounds %struct.ethhdr, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %h_proto.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %h_proto.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %32)
  %cmp.i.i.i = icmp eq i16 %32, -32512
  %conv2.i.i.i = select i1 %cmp.i.i.i, i8 18, i8 14
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %33 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %protocol.i.i, align 8
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %34, label %if.end18.out.i.i_crit_edge [
    i16 2048, label %if.end18.if.end.i.i_crit_edge
    i16 -32512, label %if.end18.if.end.i.i_crit_edge69
  ], !prof !155

if.end18.if.end.i.i_crit_edge69:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end18.if.end.i.i_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end18.out.i.i_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end.i.i:                                       ; preds = %if.end18.if.end.i.i_crit_edge, %if.end18.if.end.i.i_crit_edge69
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 23
  %36 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %37, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end.i.i.out.i.i_crit_edge, label %if.end23.i.i, !prof !156

if.end.i.i.out.i.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end23.i.i:                                     ; preds = %if.end.i.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %38 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %40 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %41 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %39, i32 %conv.i.i.i.i
  %frag_off.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %frag_off.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %frag_off.i.i.i, align 2
  %44 = and i16 %43, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp.i177.not.i.i = icmp eq i16 %44, 0
  br i1 %cmp.i177.not.i.i, label %if.end33.i.i, label %if.end23.i.i.out.i.i_crit_edge, !prof !154

if.end23.i.i.out.i.i_crit_edge:                   ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end33.i.i:                                     ; preds = %if.end23.i.i
  %protocol34.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %protocol34.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %protocol34.i.i, align 1
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %46, label %if.end33.i.i.out.i.i_crit_edge [
    i8 6, label %if.then44.i.i
    i8 17, label %if.then111.i.i
  ], !prof !157

if.end33.i.i.out.i.i_crit_edge:                   ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.then44.i.i:                                    ; preds = %if.end33.i.i
  %transport_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %48 = ptrtoint ptr %transport_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %transport_header.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %49 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %39, i32 %conv.i.i.i.i.i
  %doff.i.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %doff.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i.i.i.i = load i16, ptr %doff.i.i.i.i, align 4
  %shr.i.i = lshr i16 %bf.load.i.i.i.i, 12
  %conv46.i.i = trunc i16 %shr.i.i to i8
  %and48.i.i = and i64 %37, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and48.i.i)
  %tobool49.not.i.i = icmp eq i64 %and48.i.i, 0
  br i1 %tobool49.not.i.i, label %if.then44.i.i.out.i.i_crit_edge, label %if.then50.i.i

if.then44.i.i.out.i.i_crit_edge:                  ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.then50.i.i:                                    ; preds = %if.then44.i.i
  %51 = lshr i16 %bf.load.i.i.i.i, 10
  %52 = and i16 %51, 60
  %mul.i.i.i.i = zext i16 %52 to i32
  %53 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i.i.i = load i8, ptr %add.ptr.i.i.i.i, align 4
  %bf.clear.i.i.i = shl i8 %bf.load.i.i.i, 2
  %54 = and i8 %bf.clear.i.i.i, 60
  %narrow.i.i = add nuw nsw i8 %54, %conv2.i.i.i
  %add.i.i = zext i8 %narrow.i.i to i32
  %add54.i.i = add nuw nsw i32 %add.i.i, %mul.i.i.i.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %55 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %gso_size.i.i, align 4
  %conv56.i.i = zext i16 %58 to i32
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %59 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.i.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool.i.not.i.i, label %if.then50.i.i.if.end84.i.i_crit_edge, label %if.then58.i.i

if.then50.i.i.if.end84.i.i_crit_edge:             ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i.i

if.then58.i.i:                                    ; preds = %if.then50.i.i
  %61 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len1.i, align 4
  %sub.i.i.i = sub i32 %62, %60
  %nr_frags61.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %56, i32 0, i32 2
  %63 = ptrtoint ptr %nr_frags61.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nr_frags61.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp65215.not.i.i = icmp eq i8 %64, 0
  br i1 %cmp65215.not.i.i, label %if.then58.i.i.for.end.i.i_crit_edge, label %for.body.preheader.i.i

if.then58.i.i.for.end.i.i_crit_edge:              ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %.not.i.i = icmp eq i8 %64, 1
  %65 = select i1 %.not.i.i, i32 1, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %len.0217.i.i = phi i32 [ %add69.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %sub.i.i.i, %for.body.preheader.i.i ]
  %i.0216.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %56, i32 0, i32 12, i32 %i.0216.i.i, i32 1
  %66 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bv_len.i.i.i, align 4
  %add69.i.i = add i32 %67, %len.0217.i.i
  %inc.i.i = add nuw nsw i32 %i.0216.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %65
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.then58.i.i.for.end.i.i_crit_edge
  %len.0.lcssa.i.i = phi i32 [ %sub.i.i.i, %if.then58.i.i.for.end.i.i_crit_edge ], [ %add69.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add54.i.i, i32 %len.0.lcssa.i.i)
  %cmp70.i.i = icmp ugt i32 %add54.i.i, %len.0.lcssa.i.i
  br i1 %cmp70.i.i, label %skb_linearize.exit.i.i, label %for.end.i.i.if.end84.i.i_crit_edge, !prof !156

for.end.i.i.if.end84.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i.i

skb_linearize.exit.i.i:                           ; preds = %for.end.i.i
  %call.i.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %60) #10
  %tobool.not.i.i.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.not.i.i, label %skb_linearize.exit.i.i.if.end.i58_crit_edge, label %skb_linearize.exit.i.i.if.end84.i.i_crit_edge

skb_linearize.exit.i.i.if.end84.i.i_crit_edge:    ; preds = %skb_linearize.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i.i

skb_linearize.exit.i.i.if.end.i58_crit_edge:      ; preds = %skb_linearize.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i58

if.end84.i.i:                                     ; preds = %skb_linearize.exit.i.i.if.end84.i.i_crit_edge, %for.end.i.i.if.end84.i.i_crit_edge, %if.then50.i.i.if.end84.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool85.not.i.i = icmp eq i16 %58, 0
  br i1 %tobool85.not.i.i, label %if.end84.i.i.out.i.i_crit_edge, label %lor.lhs.false.i.i

if.end84.i.i.out.i.i_crit_edge:                   ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

lor.lhs.false.i.i:                                ; preds = %if.end84.i.i
  %68 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len1.i, align 4
  %sub.i.i = sub i32 %69, %add54.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv56.i.i)
  %cmp87.not.i.i = icmp ugt i32 %sub.i.i, %conv56.i.i
  br i1 %cmp87.not.i.i, label %if.end90.i.i, label %lor.lhs.false.i.i.out.i.i_crit_edge

lor.lhs.false.i.i.out.i.i_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end90.i.i:                                     ; preds = %lor.lhs.false.i.i
  %add.ptr.i.i191.i.i = getelementptr i8, ptr %28, i32 2304
  %mss_lock.i.i.i = getelementptr i8, ptr %28, i32 2872
  tail call void @_raw_spin_lock(ptr noundef %mss_lock.i.i.i) #10
  %arrayidx.i.i.i = getelementptr i8, ptr %28, i32 2840
  %70 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %conv56.i.i)
  %cmp3.i.i.i = icmp eq i32 %71, %conv56.i.i
  br i1 %cmp3.i.i.i, label %if.end90.i.i.for.cond6.preheader.thread.i.i.i_crit_edge, label %for.inc.i.i.i

if.end90.i.i.for.cond6.preheader.thread.i.i.i_crit_edge: ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader.thread.i.i.i

for.cond6.preheader.thread.i.i.i:                 ; preds = %for.inc.i.2.i.i.for.cond6.preheader.thread.i.i.i_crit_edge, %for.inc.i.1.i.i.for.cond6.preheader.thread.i.i.i_crit_edge, %for.inc.i.i.i.for.cond6.preheader.thread.i.i.i_crit_edge, %if.end90.i.i.for.cond6.preheader.thread.i.i.i_crit_edge
  %i.051.i.lcssa.i.i = phi i32 [ 0, %if.end90.i.i.for.cond6.preheader.thread.i.i.i_crit_edge ], [ 1, %for.inc.i.i.i.for.cond6.preheader.thread.i.i.i_crit_edge ], [ 2, %for.inc.i.1.i.i.for.cond6.preheader.thread.i.i.i_crit_edge ], [ 3, %for.inc.i.2.i.i.for.cond6.preheader.thread.i.i.i_crit_edge ]
  %arrayidx4.i.i.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i.i191.i.i, i32 0, i32 46, i32 %i.051.i.lcssa.i.i
  %72 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx4.i.i.i, align 4
  %inc.i.i.i = add i32 %73, 1
  store i32 %inc.i.i.i, ptr %arrayidx4.i.i.i, align 4
  br label %if.end101.i.i

for.inc.i.i.i:                                    ; preds = %if.end90.i.i
  %arrayidx.i.1.i.i = getelementptr i8, ptr %28, i32 2844
  %74 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %conv56.i.i)
  %cmp3.i.1.i.i = icmp eq i32 %75, %conv56.i.i
  br i1 %cmp3.i.1.i.i, label %for.inc.i.i.i.for.cond6.preheader.thread.i.i.i_crit_edge, label %for.inc.i.1.i.i

for.inc.i.i.i.for.cond6.preheader.thread.i.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader.thread.i.i.i

for.inc.i.1.i.i:                                  ; preds = %for.inc.i.i.i
  %arrayidx.i.2.i.i = getelementptr i8, ptr %28, i32 2848
  %76 = ptrtoint ptr %arrayidx.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %conv56.i.i)
  %cmp3.i.2.i.i = icmp eq i32 %77, %conv56.i.i
  br i1 %cmp3.i.2.i.i, label %for.inc.i.1.i.i.for.cond6.preheader.thread.i.i.i_crit_edge, label %for.inc.i.2.i.i

for.inc.i.1.i.i.for.cond6.preheader.thread.i.i.i_crit_edge: ; preds = %for.inc.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader.thread.i.i.i

for.inc.i.2.i.i:                                  ; preds = %for.inc.i.1.i.i
  %arrayidx.i.3.i.i = getelementptr i8, ptr %28, i32 2852
  %78 = ptrtoint ptr %arrayidx.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %conv56.i.i)
  %cmp3.i.3.i.i = icmp eq i32 %79, %conv56.i.i
  br i1 %cmp3.i.3.i.i, label %for.inc.i.2.i.i.for.cond6.preheader.thread.i.i.i_crit_edge, label %for.inc.i.3.i.i

for.inc.i.2.i.i.for.cond6.preheader.thread.i.i.i_crit_edge: ; preds = %for.inc.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader.thread.i.i.i

for.inc.i.3.i.i:                                  ; preds = %for.inc.i.2.i.i
  %mac_ops.i.i.i = getelementptr i8, ptr %28, i32 2668
  %arrayidx13.i.i.i = getelementptr i8, ptr %28, i32 2856
  %80 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i.i.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.3.i.i.for.inc22.thread.i.i.i_crit_edge, label %for.inc22.i.i.i

for.inc.i.3.i.i.for.inc22.thread.i.i.i_crit_edge: ; preds = %for.inc.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc22.thread.i.i.i

for.inc22.thread.i.i.i:                           ; preds = %for.inc22.i.2.i.i.for.inc22.thread.i.i.i_crit_edge, %for.inc22.i.1.i.i.for.inc22.thread.i.i.i_crit_edge, %for.inc22.i.i.i.for.inc22.thread.i.i.i_crit_edge, %for.inc.i.3.i.i.for.inc22.thread.i.i.i_crit_edge
  %i.155.i.lcssa.i.i = phi i32 [ 0, %for.inc.i.3.i.i.for.inc22.thread.i.i.i_crit_edge ], [ 1, %for.inc22.i.i.i.for.inc22.thread.i.i.i_crit_edge ], [ 2, %for.inc22.i.1.i.i.for.inc22.thread.i.i.i_crit_edge ], [ 3, %for.inc22.i.2.i.i.for.inc22.thread.i.i.i_crit_edge ]
  %arrayidx13.i.lcssa.i.i = phi ptr [ %arrayidx13.i.i.i, %for.inc.i.3.i.i.for.inc22.thread.i.i.i_crit_edge ], [ %arrayidx13.i.1.i.i, %for.inc22.i.i.i.for.inc22.thread.i.i.i_crit_edge ], [ %arrayidx13.i.2.i.i, %for.inc22.i.1.i.i.for.inc22.thread.i.i.i_crit_edge ], [ %arrayidx13.i.3.i.i, %for.inc22.i.2.i.i.for.inc22.thread.i.i.i_crit_edge ]
  %82 = ptrtoint ptr %arrayidx13.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %arrayidx13.i.lcssa.i.i, align 4
  %83 = ptrtoint ptr %mac_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mac_ops.i.i.i, align 4
  %set_mss.i.i.i = getelementptr inbounds %struct.xgene_mac_ops, ptr %84, i32 0, i32 10
  %85 = ptrtoint ptr %set_mss.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %set_mss.i.i.i, align 4
  %conv18.i.i.i = trunc i32 %i.155.i.lcssa.i.i to i8
  tail call void %86(ptr noundef %add.ptr.i.i191.i.i, i16 noundef zeroext %58, i8 noundef zeroext %conv18.i.i.i) #10
  %arrayidx20.i.i.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i.i191.i.i, i32 0, i32 45, i32 %i.155.i.lcssa.i.i
  %87 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv56.i.i, ptr %arrayidx20.i.i.i, align 4
  br label %if.end101.i.i

for.inc22.i.i.i:                                  ; preds = %for.inc.i.3.i.i
  %arrayidx13.i.1.i.i = getelementptr i8, ptr %28, i32 2860
  %88 = ptrtoint ptr %arrayidx13.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx13.i.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i.1.i.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i.1.i.i, label %for.inc22.i.i.i.for.inc22.thread.i.i.i_crit_edge, label %for.inc22.i.1.i.i

for.inc22.i.i.i.for.inc22.thread.i.i.i_crit_edge: ; preds = %for.inc22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc22.thread.i.i.i

for.inc22.i.1.i.i:                                ; preds = %for.inc22.i.i.i
  %arrayidx13.i.2.i.i = getelementptr i8, ptr %28, i32 2864
  %90 = ptrtoint ptr %arrayidx13.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx13.i.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i.2.i.i = icmp eq i32 %91, 0
  br i1 %tobool.not.i.2.i.i, label %for.inc22.i.1.i.i.for.inc22.thread.i.i.i_crit_edge, label %for.inc22.i.2.i.i

for.inc22.i.1.i.i.for.inc22.thread.i.i.i_crit_edge: ; preds = %for.inc22.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc22.thread.i.i.i

for.inc22.i.2.i.i:                                ; preds = %for.inc22.i.1.i.i
  %arrayidx13.i.3.i.i = getelementptr i8, ptr %28, i32 2868
  %92 = ptrtoint ptr %arrayidx13.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx13.i.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.3.i.i = icmp eq i32 %93, 0
  br i1 %tobool.not.i.3.i.i, label %for.inc22.i.2.i.i.for.inc22.thread.i.i.i_crit_edge, label %xgene_enet_setup_tx_desc.exit

for.inc22.i.2.i.i.for.inc22.thread.i.i.i_crit_edge: ; preds = %for.inc22.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc22.thread.i.i.i

if.end101.i.i:                                    ; preds = %for.inc22.thread.i.i.i, %for.cond6.preheader.thread.i.i.i
  %mss_index.2.lcssa.i.ph.i.i = phi i32 [ %i.051.i.lcssa.i.i, %for.cond6.preheader.thread.i.i.i ], [ %i.155.i.lcssa.i.i, %for.inc22.thread.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %mss_lock.i.i.i) #10
  %94 = shl nuw nsw i32 %mss_index.2.lcssa.i.ph.i.i, 20
  %95 = and i32 %94, 3145728
  %96 = or i32 %95, 8388608
  %or.i.i = zext i32 %96 to i64
  br label %out.i.i

if.then111.i.i:                                   ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

out.i.i:                                          ; preds = %if.then111.i.i, %if.end101.i.i, %lor.lhs.false.i.i.out.i.i_crit_edge, %if.end84.i.i.out.i.i_crit_edge, %if.then44.i.i.out.i.i_crit_edge, %if.end33.i.i.out.i.i_crit_edge, %if.end23.i.i.out.i.i_crit_edge, %if.end.i.i.out.i.i_crit_edge, %if.end18.out.i.i_crit_edge
  %hopinfo.0.i = phi i64 [ 0, %if.end18.out.i.i_crit_edge ], [ 0, %if.end.i.i.out.i.i_crit_edge ], [ 0, %if.end33.i.i.out.i.i_crit_edge ], [ 0, %if.then111.i.i ], [ 0, %if.then44.i.i.out.i.i_crit_edge ], [ 0, %if.end84.i.i.out.i.i_crit_edge ], [ %or.i.i, %if.end101.i.i ], [ 0, %lor.lhs.false.i.i.out.i.i_crit_edge ], [ 0, %if.end23.i.i.out.i.i_crit_edge ]
  %l4hlen.0.i.i = phi i8 [ 0, %if.end18.out.i.i_crit_edge ], [ 0, %if.end.i.i.out.i.i_crit_edge ], [ 0, %if.end33.i.i.out.i.i_crit_edge ], [ 2, %if.then111.i.i ], [ %conv46.i.i, %if.then44.i.i.out.i.i_crit_edge ], [ %conv46.i.i, %if.end84.i.i.out.i.i_crit_edge ], [ %conv46.i.i, %if.end101.i.i ], [ %conv46.i.i, %lor.lhs.false.i.i.out.i.i_crit_edge ], [ 0, %if.end23.i.i.out.i.i_crit_edge ]
  %proto.0.i.i = phi i8 [ 0, %if.end18.out.i.i_crit_edge ], [ 0, %if.end.i.i.out.i.i_crit_edge ], [ 0, %if.end33.i.i.out.i.i_crit_edge ], [ 0, %if.then111.i.i ], [ 1, %if.then44.i.i.out.i.i_crit_edge ], [ 1, %if.end84.i.i.out.i.i_crit_edge ], [ 1, %if.end101.i.i ], [ 1, %lor.lhs.false.i.i.out.i.i_crit_edge ], [ 0, %if.end23.i.i.out.i.i_crit_edge ]
  %csum_enable.0.i.i = phi i8 [ 0, %if.end18.out.i.i_crit_edge ], [ 0, %if.end.i.i.out.i.i_crit_edge ], [ 0, %if.end33.i.i.out.i.i_crit_edge ], [ 1, %if.then111.i.i ], [ 1, %if.then44.i.i.out.i.i_crit_edge ], [ 1, %if.end84.i.i.out.i.i_crit_edge ], [ 1, %if.end101.i.i ], [ 1, %lor.lhs.false.i.i.out.i.i_crit_edge ], [ 0, %if.end23.i.i.out.i.i_crit_edge ]
  %head.i.i.i192.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %97 = ptrtoint ptr %head.i.i.i192.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %head.i.i.i192.i.i, align 8
  %network_header.i.i.i193.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %99 = ptrtoint ptr %network_header.i.i.i193.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %network_header.i.i.i193.i.i, align 4
  %conv.i.i.i194.i.i = zext i16 %100 to i32
  %add.ptr.i.i.i195.i.i = getelementptr i8, ptr %98, i32 %conv.i.i.i194.i.i
  %101 = ptrtoint ptr %add.ptr.i.i.i195.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load.i196.i.i = load i8, ptr %add.ptr.i.i.i195.i.i, align 4
  %102 = and i8 %l4hlen.0.i.i, 63
  %and.i199.i.i = zext i8 %102 to i64
  %103 = and i8 %bf.load.i196.i.i, 15
  %and.i200.i.i = zext i8 %103 to i64
  %shl2.i201.i.i = shl nuw nsw i64 %and.i200.i.i, 6
  %or121.i.i = or i64 %shl2.i201.i.i, %and.i199.i.i
  %conv122.i.i = zext i8 %conv2.i.i.i to i64
  %shl2.i203.i.i = shl nuw nsw i64 %conv122.i.i, 12
  %or124.i.i = or i64 %or121.i.i, %shl2.i203.i.i
  %conv125.i.i = zext i8 %csum_enable.0.i.i to i64
  %shl2.i205.i.i = shl nuw nsw i64 %conv125.i.i, 22
  %or127.i.i = or i64 %or124.i.i, %shl2.i205.i.i
  %conv128.i.i = zext i8 %proto.0.i.i to i64
  %shl2.i207.i.i = shl nuw nsw i64 %conv128.i.i, 24
  %or130.i.i = or i64 %or127.i.i, %shl2.i207.i.i
  %or134.i.i = or i64 %hopinfo.0.i, %or130.i.i
  %or135.i.i = or i64 %or134.i.i, 17626545782784
  br label %if.end.i58

if.end.i58:                                       ; preds = %out.i.i, %skb_linearize.exit.i.i.if.end.i58_crit_edge
  %hopinfo.1.ph.i = phi i64 [ 0, %skb_linearize.exit.i.i.if.end.i58_crit_edge ], [ %or135.i.i, %out.i.i ]
  %dst_ring_num.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 16
  %104 = ptrtoint ptr %dst_ring_num.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %dst_ring_num.i, align 4
  %106 = and i16 %105, 4095
  %and.i257.i = zext i16 %106 to i64
  %shl2.i.i = shl nuw nsw i64 %and.i257.i, 48
  %or.i = or i64 %shl2.i.i, %hopinfo.1.ph.i
  %107 = tail call i64 @llvm.bswap.i64(i64 %or.i) #10
  %m3.i = getelementptr %struct.xgene_enet_raw_desc, ptr %22, i32 %idxprom.i, i32 3
  %108 = ptrtoint ptr %m3.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %m3.i, align 8
  %109 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len1.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %111 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data_len.i.i, align 8
  %sub.i258.i = sub i32 %110, %112
  %conv10.i = trunc i32 %sub.i258.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %conv10.i)
  %cmp.i.i = icmp eq i16 %conv10.i, 16384
  %113 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data.i.i, align 4
  %call.i.i57 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %114) #10
  br i1 %call.i.i57, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i58
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !154

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %17) #10
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %115 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i259.i = icmp eq ptr %116, null
  br i1 %tobool.not.i.i259.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %17, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %118, %if.end.i.i.i ], [ %116, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %17, i32 noundef -1) #10
  br label %if.then16.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end.i58
  tail call void @debug_dma_map_single(ptr noundef %17, ptr noundef %114, i32 noundef %sub.i258.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %119 = load ptr, ptr @mem_map, align 4
  %120 = ptrtoint ptr %114 to i32
  %sub.i260.i = add i32 %120, 1073741824
  %shr.i261.i = lshr i32 %sub.i260.i, 12
  %add.ptr.i262.i = getelementptr %struct.page, ptr %119, i32 %shr.i261.i
  %and.i263.i = and i32 %120, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef %add.ptr.i262.i, i32 noundef %and.i263.i, i32 noundef %sub.i258.i, i32 noundef 1, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %17, i32 noundef %call41.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i265.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i265.i, label %dma_map_single_attrs.exit.i.if.then16.i_crit_edge, label %if.end18.i

dma_map_single_attrs.exit.i.if.then16.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i

if.then16.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then16.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %121 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %122, ptr noundef nonnull @.str.20) #13
  br label %if.then26

if.end18.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %conv19.i = zext i32 %call41.i.i to i64
  %conv10.op.i = and i16 %conv10.i, 32767
  %123 = select i1 %cmp.i.i, i16 0, i16 %conv10.op.i
  %and.i267.i = zext i16 %123 to i64
  %shl2.i268.i = shl nuw nsw i64 %and.i267.i, 48
  %or23.i = or i64 %shl2.i268.i, %conv19.i
  %or25.i = or i64 %or23.i, -9223372036854775808
  %124 = tail call i64 @llvm.bswap.i64(i64 %or25.i) #10
  %m1.i = getelementptr %struct.xgene_enet_raw_desc, ptr %22, i32 %idxprom.i, i32 1
  %125 = ptrtoint ptr %m1.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %m1.i, align 8
  %126 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.i.not.i = icmp eq i32 %127, 0
  br i1 %tobool.i.not.i, label %if.end18.i.if.end27_crit_edge, label %if.end28.i

if.end18.i.if.end27_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end28.i:                                       ; preds = %if.end18.i
  %128 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %20, align 8
  %idxprom29.i = zext i16 %and.i to i32
  %arrayidx30.i = getelementptr %struct.xgene_enet_raw_desc, ptr %129, i32 %idxprom29.i
  %add32.i = add i16 %and.i, 1
  %130 = ptrtoint ptr %slots.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %slots.i, align 2
  %sub35.i = add i16 %131, -1
  %and36.i = and i16 %sub35.i, %add32.i
  %132 = call ptr @memset(ptr %arrayidx30.i, i32 0, i32 32)
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %133 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %end.i.i, align 4
  %nr_frags39.i = getelementptr inbounds %struct.skb_shared_info, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %nr_frags39.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %nr_frags39.i, align 2
  %conv40.i = zext i8 %136 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %136)
  %cmp357.i = icmp ult i8 %136, 4
  br i1 %cmp357.i, label %for.body.i, label %for.end.thread.i

for.end.thread.i:                                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  %cp_ring.i372.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 26
  %137 = ptrtoint ptr %cp_ring.i372.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cp_ring.i372.i, align 8
  %frag_dma_addr.i373.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %138, i32 0, i32 23
  %139 = ptrtoint ptr %frag_dma_addr.i373.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %frag_dma_addr.i373.i, align 4
  %141 = ptrtoint ptr %tail3.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %tail3.i, align 2
  %conv.i374.i = zext i16 %142 to i32
  %mul.i375.i = mul nuw nsw i32 %conv.i374.i, 17
  %arrayidx.i376.i = getelementptr i32, ptr %140, i32 %mul.i375.i
  br label %for.body49.lr.ph.i

for.body.i:                                       ; preds = %if.end28.i
  %xor.i = xor i32 %conv40.i, 1
  %arrayidx42.i = getelementptr i64, ptr %arrayidx30.i, i32 %xor.i
  %143 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 120, ptr %arrayidx42.i, align 8
  %inc.i = add nuw nsw i32 %conv40.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.1

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.body.i
  %xor.i.1 = xor i32 %inc.i, 1
  %arrayidx42.i.1 = getelementptr i64, ptr %arrayidx30.i, i32 %xor.i.1
  %144 = ptrtoint ptr %arrayidx42.i.1 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 120, ptr %arrayidx42.i.1, align 8
  %inc.i.1 = add nuw nsw i32 %conv40.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i.1)
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 4
  br i1 %exitcond.not.i.1, label %for.body.i.1.for.end.i_crit_edge, label %for.body.i.2

for.body.i.1.for.end.i_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %xor.i.2 = xor i32 %inc.i.1, 1
  %arrayidx42.i.2 = getelementptr i64, ptr %arrayidx30.i, i32 %xor.i.2
  %145 = ptrtoint ptr %arrayidx42.i.2 to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 120, ptr %arrayidx42.i.2, align 8
  %inc.i.2 = add nuw nsw i32 %conv40.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i.2)
  %exitcond.not.i.2 = icmp eq i32 %inc.i.2, 4
  br i1 %exitcond.not.i.2, label %for.body.i.2.for.end.i_crit_edge, label %for.body.i.3

for.body.i.2.for.end.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.3 = xor i32 %inc.i.2, 1
  %arrayidx42.i.3 = getelementptr i64, ptr %arrayidx30.i, i32 %xor.i.3
  %146 = ptrtoint ptr %arrayidx42.i.3 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 120, ptr %arrayidx42.i.3, align 8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.3, %for.body.i.2.for.end.i_crit_edge, %for.body.i.1.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %cp_ring.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 26
  %147 = ptrtoint ptr %cp_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cp_ring.i.i, align 8
  %frag_dma_addr.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %148, i32 0, i32 23
  %149 = ptrtoint ptr %frag_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %frag_dma_addr.i.i, align 4
  %151 = ptrtoint ptr %tail3.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %tail3.i, align 2
  %conv.i.i = zext i16 %152 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 17
  %arrayidx.i.i = getelementptr i32, ptr %150, i32 %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp47359.not.i = icmp eq i8 %136, 0
  br i1 %cmp47359.not.i, label %for.end.i.if.end27_crit_edge, label %for.end.i.for.body49.lr.ph.i_crit_edge

for.end.i.for.body49.lr.ph.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body49.lr.ph.i

for.end.i.if.end27_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

for.body49.lr.ph.i:                               ; preds = %for.end.i.for.body49.lr.ph.i_crit_edge, %for.end.thread.i
  %arrayidx.i378.i = phi ptr [ %arrayidx.i376.i, %for.end.thread.i ], [ %arrayidx.i.i, %for.end.i.for.body49.lr.ph.i_crit_edge ]
  %exp_bufs1.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 31
  %exp_buf_tail.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 5
  %arrayidx.i294.i = getelementptr i64, ptr %arrayidx30.i, i32 2
  br label %for.body49.i

for.body49.i:                                     ; preds = %sw.epilog.i.for.body49.i_crit_edge, %for.body49.lr.ph.i
  %fidx.0369.i = phi i32 [ 0, %for.body49.lr.ph.i ], [ %fidx.1.i, %sw.epilog.i.for.body49.i_crit_edge ]
  %i.1367.i = phi i32 [ 0, %for.body49.lr.ph.i ], [ %inc96.i, %sw.epilog.i.for.body49.i_crit_edge ]
  %ell_bytes.0366.i = phi i32 [ 0, %for.body49.lr.ph.i ], [ %ell_bytes.1.i, %sw.epilog.i.for.body49.i_crit_edge ]
  %offset.0365.i = phi i32 [ -1, %for.body49.lr.ph.i ], [ %spec.select256.i, %sw.epilog.i.for.body49.i_crit_edge ]
  %size.0364.i = phi i32 [ -1, %for.body49.lr.ph.i ], [ %size.2.i, %sw.epilog.i.for.body49.i_crit_edge ]
  %split.0.off0363.i = phi i1 [ false, %for.body49.lr.ph.i ], [ %split.2.off0.i, %sw.epilog.i.for.body49.i_crit_edge ]
  %idx.0362.i = phi i8 [ 0, %for.body49.lr.ph.i ], [ %idx.1.i, %sw.epilog.i.for.body49.i_crit_edge ]
  %pbuf_addr.0361.i = phi i32 [ -1, %for.body49.lr.ph.i ], [ %pbuf_addr.1.i, %sw.epilog.i.for.body49.i_crit_edge ]
  %exp_bufs.0360.i = phi ptr [ null, %for.body49.lr.ph.i ], [ %exp_bufs.1.i, %sw.epilog.i.for.body49.i_crit_edge ]
  br i1 %split.0.off0363.i, label %for.body49.i.if.end66.i_crit_edge, label %if.then51.i

for.body49.i.if.end66.i_crit_edge:                ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

if.then51.i:                                      ; preds = %for.body49.i
  %153 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %end.i.i, align 4
  %arrayidx53.i = getelementptr %struct.skb_shared_info, ptr %154, i32 0, i32 12, i32 %fidx.0369.i
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %154, i32 0, i32 12, i32 %fidx.0369.i, i32 1
  %155 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %bv_len.i.i, align 4
  %157 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx53.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %154, i32 0, i32 12, i32 %fidx.0369.i, i32 2
  %159 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef %158, i32 noundef %160, i32 noundef %156, i32 noundef 1, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %17, i32 noundef %call2.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i271.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i271.not.i, label %if.then51.i.if.then26_crit_edge, label %if.end59.i

if.then51.i.if.then26_crit_edge:                  ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.end59.i:                                       ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx60.i = getelementptr i32, ptr %arrayidx.i378.i, i32 %fidx.0369.i
  %161 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %call2.i.i, ptr %arrayidx60.i, align 4
  %inc61.i = add i32 %fidx.0369.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %156)
  %cmp62.i = icmp ugt i32 %156, 16384
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.end59.i, %for.body49.i.if.end66.i_crit_edge
  %pbuf_addr.1.i = phi i32 [ %pbuf_addr.0361.i, %for.body49.i.if.end66.i_crit_edge ], [ %call2.i.i, %if.end59.i ]
  %split.1.off0.i = phi i1 [ true, %for.body49.i.if.end66.i_crit_edge ], [ %cmp62.i, %if.end59.i ]
  %size.1.i = phi i32 [ %size.0364.i, %for.body49.i.if.end66.i_crit_edge ], [ %156, %if.end59.i ]
  %offset.1.i = phi i32 [ %offset.0365.i, %for.body49.i.if.end66.i_crit_edge ], [ 0, %if.end59.i ]
  %fidx.1.i = phi i32 [ %fidx.0369.i, %for.body49.i.if.end66.i_crit_edge ], [ %inc61.i, %if.end59.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %size.1.i)
  %cmp67.i = icmp ugt i32 %size.1.i, 16384
  %sub70.i = add i32 %size.1.i, -16384
  %162 = tail call i32 @llvm.umin.i32(i32 %size.1.i, i32 16384) #10
  %split.2.off0.i = and i1 %split.1.off0.i, %cmp67.i
  %size.2.i = select i1 %cmp67.i, i32 %sub70.i, i32 %size.1.i
  %add72.i = add i32 %offset.1.i, %pbuf_addr.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %size.1.i)
  %cmp.i273.i = icmp ugt i32 %size.1.i, 16383
  %spec.select.i274.i = select i1 %cmp.i273.i, i32 0, i32 %162
  %163 = zext i32 %i.1367.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %i.1367.i, label %sw.default.i [
    i32 0, label %if.end66.i.sw.bb.i_crit_edge
    i32 1, label %if.end66.i.sw.bb.i_crit_edge70
    i32 2, label %if.end66.i.sw.bb.i_crit_edge71
    i32 3, label %sw.bb76.i
  ]

if.end66.i.sw.bb.i_crit_edge71:                   ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end66.i.sw.bb.i_crit_edge70:                   ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end66.i.sw.bb.i_crit_edge:                     ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end66.i.sw.bb.i_crit_edge, %if.end66.i.sw.bb.i_crit_edge70, %if.end66.i.sw.bb.i_crit_edge71
  %conv.i275.i = zext i32 %add72.i to i64
  %and.i3.i.i = zext i32 %spec.select.i274.i to i64
  %shl2.i.i.i = shl nuw nsw i64 %and.i3.i.i, 48
  %or.i276.i = or i64 %shl2.i.i.i, %conv.i275.i
  %164 = tail call i64 @llvm.bswap.i64(i64 %or.i276.i) #10
  %xor.i.i = xor i32 %i.1367.i, 1
  %arrayidx.i277.i = getelementptr i64, ptr %arrayidx30.i, i32 %xor.i.i
  %165 = ptrtoint ptr %arrayidx.i277.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %arrayidx.i277.i, align 8
  br label %sw.epilog.i

sw.bb76.i:                                        ; preds = %if.end66.i
  %split.2.off0.not.i = xor i1 %split.2.off0.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %fidx.1.i, i32 %conv40.i)
  %cmp79.not.i = icmp eq i32 %fidx.1.i, %conv40.i
  %or.cond255.i = select i1 %split.2.off0.not.i, i1 %cmp79.not.i, i1 false
  br i1 %or.cond255.i, label %if.else86.i, label %if.then81.i

if.then81.i:                                      ; preds = %sw.bb76.i
  call void @__sanitizer_cov_trace_pc() #12
  %166 = ptrtoint ptr %exp_bufs1.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %exp_bufs1.i.i, align 4
  %168 = ptrtoint ptr %exp_buf_tail.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %exp_buf_tail.i.i, align 4
  %conv.i278.i = zext i16 %169 to i32
  %mul.i279.i = shl nuw nsw i32 %conv.i278.i, 8
  %arrayidx.i280.i = getelementptr i64, ptr %167, i32 %mul.i279.i
  %170 = call ptr @memset(ptr %arrayidx.i280.i, i32 0, i32 2048)
  %171 = load i16, ptr %exp_buf_tail.i.i, align 4
  %add.i281.i = add i16 %171, 1
  %172 = ptrtoint ptr %slots.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %slots.i, align 2
  %174 = lshr i16 %173, 1
  %sub.i282.i = add nsw i16 %174, -1
  %and.i283.i = and i16 %sub.i282.i, %add.i281.i
  store i16 %and.i283.i, ptr %exp_buf_tail.i.i, align 4
  %conv.i284.i = zext i32 %add72.i to i64
  %and.i3.i285.i = zext i32 %spec.select.i274.i to i64
  %shl2.i.i286.i = shl nuw nsw i64 %and.i3.i285.i, 48
  %or.i287.i = or i64 %shl2.i.i286.i, %conv.i284.i
  %175 = tail call i64 @llvm.bswap.i64(i64 %or.i287.i) #10
  %176 = xor i8 %idx.0362.i, 1
  %xor.i288.i = zext i8 %176 to i32
  %arrayidx.i289.i = getelementptr i64, ptr %arrayidx.i280.i, i32 %xor.i288.i
  %177 = ptrtoint ptr %arrayidx.i289.i to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %175, ptr %arrayidx.i289.i, align 8
  %inc84.i = add i8 %idx.0362.i, 1
  %add85.i = add i32 %162, %ell_bytes.0366.i
  br label %sw.epilog.i

if.else86.i:                                      ; preds = %sw.bb76.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i290.i = zext i32 %add72.i to i64
  %and.i3.i291.i = zext i32 %spec.select.i274.i to i64
  %shl2.i.i292.i = shl nuw nsw i64 %and.i3.i291.i, 48
  %or.i293.i = or i64 %shl2.i.i292.i, %conv.i290.i
  %178 = tail call i64 @llvm.bswap.i64(i64 %or.i293.i) #10
  %179 = ptrtoint ptr %arrayidx.i294.i to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %178, ptr %arrayidx.i294.i, align 8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i295.i = zext i32 %add72.i to i64
  %and.i3.i296.i = zext i32 %spec.select.i274.i to i64
  %shl2.i.i297.i = shl nuw nsw i64 %and.i3.i296.i, 48
  %or.i298.i = or i64 %shl2.i.i297.i, %conv.i295.i
  %180 = tail call i64 @llvm.bswap.i64(i64 %or.i298.i) #10
  %181 = xor i8 %idx.0362.i, 1
  %xor.i299.i = zext i8 %181 to i32
  %arrayidx.i300.i = getelementptr i64, ptr %exp_bufs.0360.i, i32 %xor.i299.i
  %182 = ptrtoint ptr %arrayidx.i300.i to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %180, ptr %arrayidx.i300.i, align 8
  %inc89.i = add i8 %idx.0362.i, 1
  %add90.i = add i32 %162, %ell_bytes.0366.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.else86.i, %if.then81.i, %sw.bb.i
  %exp_bufs.1.i = phi ptr [ %exp_bufs.0360.i, %sw.default.i ], [ %arrayidx.i280.i, %if.then81.i ], [ %exp_bufs.0360.i, %if.else86.i ], [ %exp_bufs.0360.i, %sw.bb.i ]
  %idx.1.i = phi i8 [ %inc89.i, %sw.default.i ], [ %inc84.i, %if.then81.i ], [ %idx.0362.i, %if.else86.i ], [ %idx.0362.i, %sw.bb.i ]
  %ell_bytes.1.i = phi i32 [ %add90.i, %sw.default.i ], [ %add85.i, %if.then81.i ], [ %ell_bytes.0366.i, %if.else86.i ], [ %ell_bytes.0366.i, %sw.bb.i ]
  %add93.i = add i32 %offset.1.i, 16384
  %spec.select256.i = select i1 %split.2.off0.i, i32 %add93.i, i32 %offset.1.i
  %inc96.i = add i32 %i.1367.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %fidx.1.i, i32 %conv40.i)
  %cmp47.i = icmp ult i32 %fidx.1.i, %conv40.i
  %or.cond.i = select i1 %split.2.off0.i, i1 true, i1 %cmp47.i
  br i1 %or.cond.i, label %sw.epilog.i.for.body49.i_crit_edge, label %for.end97.i

sw.epilog.i.for.body49.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body49.i

for.end97.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %idx.1.i)
  %tobool99.not.i = icmp eq i8 %idx.1.i, 0
  br i1 %tobool99.not.i, label %for.end97.i.if.end27_crit_edge, label %if.then100.i

for.end97.i.if.end27_crit_edge:                   ; preds = %for.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then100.i:                                     ; preds = %for.end97.i
  %call.i301.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %exp_bufs.1.i) #10
  br i1 %call.i301.i, label %land.rhs.i303.i, label %dma_map_single_attrs.exit318.i

land.rhs.i303.i:                                  ; preds = %if.then100.i
  %.b1.i302.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i302.i, label %land.rhs.i303.i.dma_map_single_attrs.exit318.thread.i_crit_edge, label %if.then.i307.i, !prof !154

land.rhs.i303.i.dma_map_single_attrs.exit318.thread.i_crit_edge: ; preds = %land.rhs.i303.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit318.thread.i

if.then.i307.i:                                   ; preds = %land.rhs.i303.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i304.i = tail call ptr @dev_driver_string(ptr noundef %17) #10
  %init_name.i.i305.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %183 = ptrtoint ptr %init_name.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %init_name.i.i305.i, align 8
  %tobool.not.i.i306.i = icmp eq ptr %184, null
  br i1 %tobool.not.i.i306.i, label %if.end.i.i308.i, label %if.then.i307.i.dev_name.exit.i310.i_crit_edge

if.then.i307.i.dev_name.exit.i310.i_crit_edge:    ; preds = %if.then.i307.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i310.i

if.end.i.i308.i:                                  ; preds = %if.then.i307.i
  call void @__sanitizer_cov_trace_pc() #12
  %185 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %17, align 4
  br label %dev_name.exit.i310.i

dev_name.exit.i310.i:                             ; preds = %if.end.i.i308.i, %if.then.i307.i.dev_name.exit.i310.i_crit_edge
  %retval.0.i.i309.i = phi ptr [ %186, %if.end.i.i308.i ], [ %184, %if.then.i307.i.dev_name.exit.i310.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %call16.i304.i, ptr noundef %retval.0.i.i309.i) #10
  br label %dma_map_single_attrs.exit318.thread.i

dma_map_single_attrs.exit318.thread.i:            ; preds = %dev_name.exit.i310.i, %land.rhs.i303.i.dma_map_single_attrs.exit318.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %17, i32 noundef -1) #10
  br label %if.then104.i

dma_map_single_attrs.exit318.i:                   ; preds = %if.then100.i
  tail call void @debug_dma_map_single(ptr noundef %17, ptr noundef %exp_bufs.1.i, i32 noundef 2048) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %187 = load ptr, ptr @mem_map, align 4
  %188 = ptrtoint ptr %exp_bufs.1.i to i32
  %sub.i311.i = add i32 %188, 1073741824
  %shr.i312.i = lshr i32 %sub.i311.i, 12
  %add.ptr.i313.i = getelementptr %struct.page, ptr %187, i32 %shr.i312.i
  %and.i314.i = and i32 %188, 4095
  %call41.i315.i = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef %add.ptr.i313.i, i32 noundef %and.i314.i, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %17, i32 noundef %call41.i315.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i315.i)
  %cmp.i319.i = icmp eq i32 %call41.i315.i, -1
  br i1 %cmp.i319.i, label %dma_map_single_attrs.exit318.i.if.then104.i_crit_edge, label %if.end105.i

dma_map_single_attrs.exit318.i.if.then104.i_crit_edge: ; preds = %dma_map_single_attrs.exit318.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then104.i

if.then104.i:                                     ; preds = %dma_map_single_attrs.exit318.i.if.then104.i_crit_edge, %dma_map_single_attrs.exit318.thread.i
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %if.then26

if.end105.i:                                      ; preds = %dma_map_single_attrs.exit318.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = lshr i32 %ell_bytes.1.i, 12
  %conv106.i = zext i32 %call41.i315.i to i64
  %189 = and i32 %shr.i, 255
  %and.i322.i = zext i32 %189 to i64
  %shl2.i323.i = shl nuw i64 %and.i322.i, 56
  %or110.i = or i64 %shl2.i323.i, %conv106.i
  %conv111.i = zext i8 %idx.1.i to i64
  %shl2.i325.i = shl nuw nsw i64 %conv111.i, 48
  %or113.i = or i64 %or110.i, %shl2.i325.i
  %190 = tail call i64 @llvm.bswap.i64(i64 %or113.i) #10
  %191 = ptrtoint ptr %arrayidx.i294.i to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %190, ptr %arrayidx.i294.i, align 8
  %192 = and i32 %ell_bytes.1.i, 4095
  %193 = tail call i32 @llvm.bswap.i32(i32 %192) #10
  %194 = lshr exact i32 %193, 16
  %195 = zext i32 %194 to i64
  %m2.i = getelementptr %struct.xgene_enet_raw_desc, ptr %22, i32 %idxprom.i, i32 2
  %196 = ptrtoint ptr %m2.i to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 %195, ptr %m2.i, align 8
  br label %if.end27

xgene_enet_setup_tx_desc.exit:                    ; preds = %for.inc22.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %mss_lock.i.i.i) #10
  br label %cleanup

if.then26:                                        ; preds = %if.then104.i, %if.then51.i.if.then26_crit_edge, %if.then16.i
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end105.i, %for.end97.i.if.end27_crit_edge, %for.end.i.if.end27_crit_edge, %if.end18.i.if.end27_crit_edge
  %tail.0.i = phi i16 [ %and36.i, %if.end105.i ], [ %and36.i, %for.end97.i.if.end27_crit_edge ], [ %and.i, %if.end18.i.if.end27_crit_edge ], [ %and36.i, %for.end.i.if.end27_crit_edge ]
  %ll.0.i = phi i8 [ 1, %if.end105.i ], [ 0, %for.end97.i.if.end27_crit_edge ], [ 0, %if.end18.i.if.end27_crit_edge ], [ 0, %for.end.i.if.end27_crit_edge ]
  %nv.0.i = phi i8 [ 1, %if.end105.i ], [ 1, %for.end97.i.if.end27_crit_edge ], [ 0, %if.end18.i.if.end27_crit_edge ], [ 1, %for.end.i.if.end27_crit_edge ]
  %count.0.i = phi i32 [ 2, %if.end105.i ], [ 2, %for.end97.i.if.end27_crit_edge ], [ 1, %if.end18.i.if.end27_crit_edge ], [ 2, %for.end.i.if.end27_crit_edge ]
  %conv118.i = zext i8 %ll.0.i to i64
  %shl2.i329.i = shl nuw nsw i64 %conv118.i, 51
  %conv120.i = zext i8 %nv.0.i to i64
  %shl2.i331.i = shl nuw nsw i64 %conv120.i, 50
  %or122.i = or i64 %shl2.i331.i, %shl2.i329.i
  %197 = ptrtoint ptr %tail3.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %tail3.i, align 2
  %conv124.i = zext i16 %198 to i64
  %or126.i = or i64 %or122.i, %conv124.i
  %199 = tail call i64 @llvm.bswap.i64(i64 %or126.i) #10
  %200 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %199, ptr %arrayidx.i, align 8
  %cp_ring.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 26
  %201 = ptrtoint ptr %cp_ring.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %cp_ring.i, align 8
  %cp_skb.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %202, i32 0, i32 22
  %203 = ptrtoint ptr %cp_skb.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %cp_skb.i, align 8
  %205 = ptrtoint ptr %tail3.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %tail3.i, align 2
  %idxprom128.i = zext i16 %206 to i32
  %arrayidx129.i = getelementptr ptr, ptr %204, i32 %idxprom128.i
  %207 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %skb, ptr %arrayidx129.i, align 4
  %208 = load ptr, ptr %cp_ring.i, align 8
  %index.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %208, i32 0, i32 19
  %209 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %index.i, align 4
  %idxprom131.i = zext i8 %210 to i32
  %arrayidx132.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i.i, i32 0, i32 8, i32 %idxprom131.i
  %211 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %arrayidx132.i, align 2
  %213 = trunc i32 %count.0.i to i16
  %conv135.i = add i16 %212, %213
  store i16 %conv135.i, ptr %arrayidx132.i, align 2
  store i16 %tail.0.i, ptr %tail3.i, align 2
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #10
  %end.i.i60 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %214 = ptrtoint ptr %end.i.i60 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %end.i.i60, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %215, i32 0, i32 3
  %216 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %tx_flags.i, align 1
  %218 = and i8 %217, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool.not.i = icmp eq i8 %218, 0
  br i1 %tobool.not.i, label %if.end27.skb_tx_timestamp.exit_crit_edge, label %if.then.i

if.end27.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #10
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %if.end27.skb_tx_timestamp.exit_crit_edge
  %tx_packets = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 32
  %219 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %tx_packets, align 8
  %inc = add i64 %220, 1
  store i64 %inc, ptr %tx_packets, align 8
  %221 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %len1.i, align 4
  %conv28 = zext i32 %222 to i64
  %tx_bytes = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 33
  %223 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %tx_bytes, align 8
  %add29 = add i64 %224, %conv28
  store i64 %add29, ptr %tx_bytes, align 8
  %ring_ops = getelementptr i8, ptr %ndev, i32 2720
  %225 = ptrtoint ptr %ring_ops to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ring_ops, align 8
  %wr_cmd = getelementptr inbounds %struct.xgene_ring_ops, ptr %226, i32 0, i32 4
  %227 = ptrtoint ptr %wr_cmd to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %wr_cmd, align 4
  tail call void %228(ptr noundef %5, i32 noundef %count.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %skb_tx_timestamp.exit, %if.then26, %xgene_enet_setup_tx_desc.exit, %skb_padto.exit.cleanup_crit_edge, %if.then13
  %retval.0 = phi i32 [ 16, %if.then13 ], [ 0, %if.then26 ], [ 0, %skb_tx_timestamp.exit ], [ 0, %skb_padto.exit.cleanup_crit_edge ], [ 16, %xgene_enet_setup_tx_desc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_set_mac_address(ptr noundef %ndev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @eth_mac_addr(ptr noundef %ndev, ptr noundef %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %mac_ops = getelementptr i8, ptr %ndev, i32 2668
  %0 = ptrtoint ptr %mac_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_ops, align 4
  %set_mac_addr = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %set_mac_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_mac_addr, align 4
  tail call void %3(ptr noundef %add.ptr.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_change_mtu(ptr noundef %ndev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %new_mtu)
  %cmp = icmp sgt i32 %new_mtu, 1500
  %add = add i32 %new_mtu, 18
  %spec.select = select i1 %cmp, i32 %add, i32 1536
  %call2 = tail call i32 @xgene_enet_close(ptr noundef %ndev)
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  %mac_ops = getelementptr i8, ptr %ndev, i32 2668
  %3 = ptrtoint ptr %mac_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mac_ops, align 4
  %set_framesize = getelementptr inbounds %struct.xgene_mac_ops, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %set_framesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_framesize, align 4
  tail call void %6(ptr noundef %add.ptr.i, i32 noundef %spec.select) #10
  %call3 = tail call i32 @xgene_enet_open(ptr noundef %ndev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_timeout(ptr noundef %ndev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %mac_ops = getelementptr i8, ptr %ndev, i32 2668
  %0 = ptrtoint ptr %mac_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_ops, align 4
  %reset = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  tail call void %3(ptr noundef %add.ptr.i) #10
  %txq_cnt = getelementptr i8, ptr %ndev, i32 2501
  %4 = ptrtoint ptr %txq_cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %txq_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp10.not = icmp eq i8 %5, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %txq_trans_cond_update.exit.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %txq_trans_cond_update.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.011, i32 12
  %9 = ptrtoint ptr %trans_start.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %trans_start.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i, label %for.body.txq_trans_cond_update.exit_crit_edge, label %do.body5.i

for.body.txq_trans_cond_update.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %txq_trans_cond_update.exit

do.body5.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %trans_start.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %8, ptr %trans_start.i, align 16
  br label %txq_trans_cond_update.exit

txq_trans_cond_update.exit:                       ; preds = %do.body5.i, %for.body.txq_trans_cond_update.exit_crit_edge
  %state.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.011, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i) #10
  %inc = add nuw nsw i32 %i.011, 1
  %12 = ptrtoint ptr %txq_cnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %txq_cnt, align 1
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %txq_trans_cond_update.exit.for.body_crit_edge, label %txq_trans_cond_update.exit.for.end_crit_edge

txq_trans_cond_update.exit.for.end_crit_edge:     ; preds = %txq_trans_cond_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

txq_trans_cond_update.exit.for.body_crit_edge:    ; preds = %txq_trans_cond_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %txq_trans_cond_update.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_get_stats64(ptr nocapture noundef readonly %ndev, ptr nocapture noundef %stats) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %txq_cnt = getelementptr i8, ptr %ndev, i32 2501
  %0 = ptrtoint ptr %txq_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %txq_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp83.not = icmp eq i8 %1, 0
  br i1 %cmp83.not, label %entry.for.cond9.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond9.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader

for.body.lr.ph:                                   ; preds = %entry
  %tx_packets2 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_bytes3 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %tx_dropped5 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %tx_errors7 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  br label %for.body

for.cond9.preheader:                              ; preds = %for.inc.for.cond9.preheader_crit_edge, %entry.for.cond9.preheader_crit_edge
  %rxq_cnt = getelementptr i8, ptr %ndev, i32 2500
  %2 = ptrtoint ptr %rxq_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxq_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1186.not = icmp eq i8 %3, 0
  br i1 %cmp1186.not, label %for.cond9.preheader.for.end44_crit_edge, label %for.body13.lr.ph

for.cond9.preheader.for.end44_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.body13.lr.ph:                                 ; preds = %for.cond9.preheader
  %rx_bytes19 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %rx_dropped21 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %rx_errors27 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %rx_length_errors30 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 10
  %rx_crc_errors33 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 12
  %rx_frame_errors36 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 13
  %rx_fifo_errors39 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 14
  br label %for.body13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 6, i32 %i.084
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %tx_packets = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_packets, align 8
  %8 = ptrtoint ptr %tx_packets2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_packets2, align 8
  %add = add i64 %9, %7
  store i64 %add, ptr %tx_packets2, align 8
  %tx_bytes = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 33
  %10 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_bytes, align 8
  %12 = ptrtoint ptr %tx_bytes3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_bytes3, align 8
  %add4 = add i64 %13, %11
  store i64 %add4, ptr %tx_bytes3, align 8
  %tx_dropped = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 34
  %14 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_dropped, align 8
  %16 = ptrtoint ptr %tx_dropped5 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_dropped5, align 8
  %add6 = add i64 %17, %15
  store i64 %add6, ptr %tx_dropped5, align 8
  %tx_errors = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %5, i32 0, i32 35
  %18 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_errors, align 8
  %20 = ptrtoint ptr %tx_errors7 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_errors7, align 8
  %add8 = add i64 %21, %19
  store i64 %add8, ptr %tx_errors7, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.084, 1
  %22 = ptrtoint ptr %txq_cnt to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %txq_cnt, align 1
  %conv = zext i8 %23 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond9.preheader_crit_edge

for.inc.for.cond9.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body13:                                       ; preds = %for.inc42.for.body13_crit_edge, %for.body13.lr.ph
  %i.187 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc43, %for.inc42.for.body13_crit_edge ]
  %arrayidx14 = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 7, i32 %i.187
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %25, null
  br i1 %tobool15.not, label %for.body13.for.inc42_crit_edge, label %if.then16

for.body13.for.inc42_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc42

if.then16:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  %rx_packets = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %25, i32 0, i32 36
  %26 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rx_packets, align 8
  %28 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %stats, align 8
  %add18 = add i64 %29, %27
  store i64 %add18, ptr %stats, align 8
  %rx_bytes = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %25, i32 0, i32 37
  %30 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rx_bytes, align 8
  %32 = ptrtoint ptr %rx_bytes19 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rx_bytes19, align 8
  %add20 = add i64 %33, %31
  store i64 %add20, ptr %rx_bytes19, align 8
  %rx_dropped = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %25, i32 0, i32 38
  %34 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rx_dropped, align 8
  %36 = ptrtoint ptr %rx_dropped21 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rx_dropped21, align 8
  %add22 = add i64 %37, %35
  store i64 %add22, ptr %rx_dropped21, align 8
  %rx_errors = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %25, i32 0, i32 39
  %38 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rx_errors, align 8
  %rx_length_errors = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %25, i32 0, i32 40
  %40 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_length_errors, align 8
  %add23 = add i64 %41, %39
  %rx_crc_errors = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %25, i32 0, i32 41
  %42 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rx_crc_errors, align 8
  %add24 = add i64 %add23, %43
  %rx_frame_errors = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %25, i32 0, i32 42
  %44 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rx_frame_errors, align 8
  %add25 = add i64 %add24, %45
  %rx_fifo_errors = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %25, i32 0, i32 43
  %46 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rx_fifo_errors, align 8
  %add26 = add i64 %add25, %47
  %48 = ptrtoint ptr %rx_errors27 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %rx_errors27, align 8
  %add28 = add i64 %add26, %49
  store i64 %add28, ptr %rx_errors27, align 8
  %50 = load i64, ptr %rx_length_errors, align 8
  %51 = ptrtoint ptr %rx_length_errors30 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rx_length_errors30, align 8
  %add31 = add i64 %52, %50
  store i64 %add31, ptr %rx_length_errors30, align 8
  %53 = load i64, ptr %rx_crc_errors, align 8
  %54 = ptrtoint ptr %rx_crc_errors33 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rx_crc_errors33, align 8
  %add34 = add i64 %55, %53
  store i64 %add34, ptr %rx_crc_errors33, align 8
  %56 = load i64, ptr %rx_frame_errors, align 8
  %57 = ptrtoint ptr %rx_frame_errors36 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %rx_frame_errors36, align 8
  %add37 = add i64 %58, %56
  store i64 %add37, ptr %rx_frame_errors36, align 8
  %59 = load i64, ptr %rx_fifo_errors, align 8
  %60 = ptrtoint ptr %rx_fifo_errors39 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rx_fifo_errors39, align 8
  %add40 = add i64 %61, %59
  store i64 %add40, ptr %rx_fifo_errors39, align 8
  br label %for.inc42

for.inc42:                                        ; preds = %if.then16, %for.body13.for.inc42_crit_edge
  %inc43 = add nuw nsw i32 %i.187, 1
  %62 = ptrtoint ptr %rxq_cnt to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %rxq_cnt, align 4
  %conv10 = zext i8 %63 to i32
  %cmp11 = icmp ult i32 %inc43, %conv10
  br i1 %cmp11, label %for.inc42.for.body13_crit_edge, label %for.inc42.for.end44_crit_edge

for.inc42.for.end44_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.inc42.for.body13_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13

for.end44:                                        ; preds = %for.inc42.for.end44_crit_edge, %for.cond9.preheader.for.end44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_rx_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %data, i32 0, i32 29
  %call = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @disable_irq_nosync(i32 noundef %irq) #10
  tail call void @__napi_schedule(ptr noundef %napi) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgene_enet_process_ring(ptr noundef %ring, i32 noundef %budget) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %head2 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 3
  %2 = ptrtoint ptr %head2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %head2, align 8
  %slots3 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 6
  %4 = ptrtoint ptr %slots3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %slots3, align 2
  %sub = add i16 %5, -1
  %6 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 30
  %buf_pool4.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 27
  %page_pool5.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 28
  %rx_dropped.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 38
  %npagepool.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 18
  %rx_packets.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 37
  %napi.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 29
  %nbufpool.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 17
  %cp_skb.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 22
  %frag_dma_addr2.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 23
  %tx_dropped.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 34
  %tx_errors.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 35
  %index = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 19
  br label %do.body

do.body:                                          ; preds = %if.end54.do.body_crit_edge, %entry
  %budget.addr.0 = phi i32 [ %budget, %entry ], [ %dec, %if.end54.do.body_crit_edge ]
  %head.0 = phi i16 [ %3, %entry ], [ %and42, %if.end54.do.body_crit_edge ]
  %count.0 = phi i32 [ 0, %entry ], [ %inc44, %if.end54.do.body_crit_edge ]
  %processed.0 = phi i32 [ 0, %entry ], [ %inc46, %if.end54.do.body_crit_edge ]
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %idxprom = zext i16 %head.0 to i32
  %arrayidx = getelementptr %struct.xgene_enet_raw_desc, ptr %8, i32 %idxprom
  %arrayidx.i = getelementptr i64, ptr %arrayidx, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %10)
  %cmp.i = icmp eq i64 %10, -1
  br i1 %cmp.i, label %do.body.do.end_crit_edge, label %if.end, !prof !156

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx, align 8
  %13 = and i64 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool8.not = icmp eq i64 %13, 0
  br i1 %tobool8.not, label %if.end.if.end30_crit_edge, label %if.then9

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then9:                                         ; preds = %if.end
  %add = add i16 %head.0, 1
  %and = and i16 %add, %sub
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %6, align 8
  %idxprom13 = zext i16 %and to i32
  %arrayidx14 = getelementptr %struct.xgene_enet_raw_desc, ptr %15, i32 %idxprom13
  %arrayidx.i112 = getelementptr i64, ptr %arrayidx14, i32 1
  %16 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i112, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %17)
  %cmp.i113 = icmp eq i64 %17, -1
  br i1 %cmp.i113, label %if.then22, label %if.end28, !prof !156

if.then22:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %sub24 = add i16 %and, -1
  %and26 = and i16 %sub24, %sub
  br label %do.end

if.end28:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !159
  %inc = add i32 %count.0, 1
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.end.if.end30_crit_edge
  %exp_desc.0 = phi ptr [ %arrayidx14, %if.end28 ], [ null, %if.end.if.end30_crit_edge ]
  %head.1 = phi i16 [ %and, %if.end28 ], [ %head.0, %if.end.if.end30_crit_edge ]
  %desc_count.0 = phi i16 [ 2, %if.end28 ], [ 1, %if.end.if.end30_crit_edge ]
  %count.1 = phi i32 [ %inc, %if.end28 ], [ %count.0, %if.end.if.end30_crit_edge ]
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx, align 8
  %20 = and i64 %19, 4279173120
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool.i.not = icmp eq i64 %20, 0
  %21 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring, align 8
  br i1 %tobool.i.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end30
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 133, i32 1
  %23 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i.i, align 8
  %25 = ptrtoint ptr %buf_pool4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf_pool4.i, align 4
  %27 = ptrtoint ptr %page_pool5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %page_pool5.i, align 8
  %m1.i = getelementptr %struct.xgene_enet_raw_desc, ptr %8, i32 %idxprom, i32 1
  %29 = ptrtoint ptr %m1.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %m1.i, align 8
  %31 = and i64 %30, -16580608
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #10
  %conv.i = trunc i64 %32 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %24, i32 noundef %conv.i, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #10
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx, align 8
  %35 = and i64 %34, -4294967296
  %36 = tail call i64 @llvm.bswap.i64(i64 %35) #10
  %conv8.i = trunc i64 %36 to i32
  %rx_skb.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %26, i32 0, i32 21
  %37 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_skb.i, align 4
  %arrayidx.i114 = getelementptr ptr, ptr %38, i32 %conv8.i
  %39 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i114, align 4
  store ptr null, ptr %arrayidx.i114, align 4
  %41 = ptrtoint ptr %m1.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %m1.i, align 8
  %43 = tail call i64 @llvm.bswap.i64(i64 %42) #10
  %shr.i.i.i = lshr i64 %43, 48
  %44 = trunc i64 %shr.i.i.i to i32
  %conv.i.i = and i32 %44, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 30720, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %conv.i.i, 30720
  br i1 %cmp.i.i, label %if.then32.xgene_enet_get_data_len.exit.i_crit_edge, label %if.else.i.i, !prof !156

if.then32.xgene_enet_get_data_len.exit.i_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_get_data_len.exit.i

if.else.i.i:                                      ; preds = %if.then32
  %and.i173.i = and i32 %44, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i173.i)
  %tobool5.not.i.i = icmp eq i32 %and.i173.i, 0
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %if.else15.i.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and9.i.i = and i32 %44, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  %spec.select.i.i = select i1 %tobool10.not.i.i, i32 16384, i32 %and9.i.i
  br label %xgene_enet_get_data_len.exit.i

if.else15.i.i:                                    ; preds = %if.else.i.i
  %and17.i.i = and i32 %44, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  %and22.i.i = and i32 %44, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool18.not.i.i, label %if.then19.i.i, label %if.else32.i.i

if.then19.i.i:                                    ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select61.i.i = select i1 %tobool23.not.i.i, i32 4096, i32 %and22.i.i
  br label %xgene_enet_get_data_len.exit.i

if.else32.i.i:                                    ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select62.i.i = select i1 %tobool23.not.i.i, i32 2048, i32 %and22.i.i
  br label %xgene_enet_get_data_len.exit.i

xgene_enet_get_data_len.exit.i:                   ; preds = %if.else32.i.i, %if.then19.i.i, %if.then6.i.i, %if.then32.xgene_enet_get_data_len.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %spec.select62.i.i, %if.else32.i.i ], [ %spec.select61.i.i, %if.then19.i.i ], [ %spec.select.i.i, %if.then6.i.i ], [ 0, %if.then32.xgene_enet_get_data_len.exit.i_crit_edge ]
  %call14.i = tail call ptr @skb_put(ptr noundef %40, i32 noundef %retval.0.i.i) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 19
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %46, i32 -2
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i115) #10, !srcloc !160
  %call15.i = tail call zeroext i16 @eth_type_trans(ptr noundef %40, ptr noundef %22) #10
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15, i32 0, i32 18
  %47 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %call15.i, ptr %protocol.i, align 8
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx, align 8
  %50 = tail call i64 @llvm.bswap.i64(i64 %49) #10
  %51 = lshr i64 %50, 43
  %shl.i = and i64 %51, 24
  %shr.i175.i = lshr i64 %50, 60
  %and.i176.i = and i64 %shr.i175.i, 7
  %or.i = or i64 %shl.i, %and.i176.i
  %conv20.i = trunc i64 %or.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv20.i)
  %tobool.not.i = icmp eq i8 %conv20.i, 0
  br i1 %tobool.not.i, label %xgene_enet_get_data_len.exit.i.if.end32.i_crit_edge, label %if.then.i, !prof !154

xgene_enet_get_data_len.exit.i.if.end32.i_crit_edge: ; preds = %xgene_enet_get_data_len.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then.i:                                        ; preds = %xgene_enet_get_data_len.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %conv20.i)
  %cmp.i177.i = icmp eq i8 %conv20.i, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %retval.0.i.i)
  %cmp2.i.i = icmp eq i32 %retval.0.i.i, 64
  %or.cond.i.i = and i1 %cmp2.i.i, %cmp.i177.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i

if.then.i.i:                                      ; preds = %if.then.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 18
  %52 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i.i.i, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15, i32 0, i32 21
  %54 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %55 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %53, i32 %conv.i.i.i.i
  %h_proto.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %h_proto.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 46, i16 %57)
  %cmp5.i.i = icmp ult i16 %57, 46
  br i1 %cmp5.i.i, label %if.then.i.i.if.end32.sink.split.i_crit_edge, label %if.then.i.i.if.else28.i_crit_edge

if.then.i.i.if.else28.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i

if.then.i.i.if.end32.sink.split.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv20.i)
  %cmp.i179.i = icmp eq i8 %conv20.i, 16
  %58 = add nsw i32 %retval.0.i.i, -1519
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %59 = icmp ult i32 %58, 4
  %60 = and i1 %59, %cmp.i179.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %call15.i)
  %cmp9.i.i = icmp eq i16 %call15.i, -32512
  %or.cond.i = select i1 %60, i1 %cmp9.i.i, i1 false
  br i1 %or.cond.i, label %if.else.i.if.end32.sink.split.i_crit_edge, label %if.else.i.if.else28.i_crit_edge

if.else.i.if.else28.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i

if.else.i.if.end32.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.sink.split.i

if.else28.i:                                      ; preds = %if.else.i.if.else28.i_crit_edge, %if.then.i.i.if.else28.i_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %40, i32 noundef 1) #10
  tail call fastcc void @xgene_enet_free_pagepool(ptr noundef %28, ptr noundef %arrayidx, ptr noundef %exp_desc.0) #10
  %61 = trunc i64 %or.i to i32
  tail call void @xgene_enet_parse_error(ptr noundef %ring, i32 noundef %61) #10
  %62 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %rx_dropped.i, align 8
  %inc30.i = add i64 %63, 1
  store i64 %inc30.i, ptr %rx_dropped.i, align 8
  br label %out.i

if.end32.sink.split.i:                            ; preds = %if.else.i.if.end32.sink.split.i_crit_edge, %if.then.i.i.if.end32.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2608, %if.then.i.i.if.end32.sink.split.i_crit_edge ], [ 2616, %if.else.i.if.end32.sink.split.i_crit_edge ]
  %vlan_rjbr.i = getelementptr i8, ptr %22, i32 %.sink.i
  %64 = ptrtoint ptr %vlan_rjbr.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %vlan_rjbr.i, align 8
  %inc.i = add i64 %65, 1
  store i64 %inc.i, ptr %vlan_rjbr.i, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end32.sink.split.i, %xgene_enet_get_data_len.exit.i.if.end32.i_crit_edge
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx, align 8
  %68 = and i64 %67, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %tobool35.not.i = icmp eq i64 %68, 0
  br i1 %tobool35.not.i, label %if.then37.i, label %if.end38.i

if.then37.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add nsw i32 %retval.0.i.i, -4
  br label %skip_jumbo.i

if.end38.i:                                       ; preds = %if.end32.i
  %slots39.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %28, i32 0, i32 6
  %69 = ptrtoint ptr %slots39.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %slots39.i, align 2
  %sub41.i = add i16 %70, -1
  %head43.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %28, i32 0, i32 3
  %71 = ptrtoint ptr %head43.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %head43.i, align 8
  %frag_page.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %28, i32 0, i32 24
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %if.end50.i.for.body.i_crit_edge, %if.end38.i
  %i.0229.i = phi i32 [ 0, %if.end38.i ], [ %inc65.i, %if.end50.i.for.body.i_crit_edge ]
  %head.0227.i = phi i16 [ %72, %if.end38.i ], [ %and.i116, %if.end50.i.for.body.i_crit_edge ]
  %datalen.0225.i = phi i32 [ %retval.0.i.i, %if.end38.i ], [ %add.i, %if.end50.i.for.body.i_crit_edge ]
  %xor.i = xor i32 %i.0229.i, 1
  %arrayidx45.i = getelementptr i64, ptr %exp_desc.0, i32 %xor.i
  %73 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx45.i, align 8
  %75 = tail call i64 @llvm.bswap.i64(i64 %74) #10
  %shr.i.i183.i = lshr i64 %75, 48
  %76 = trunc i64 %shr.i.i183.i to i32
  %conv.i184.i = and i32 %76, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 30720, i32 %conv.i184.i)
  %cmp.i185.i = icmp eq i32 %conv.i184.i, 30720
  br i1 %cmp.i185.i, label %for.body.i.for.end.i_crit_edge, label %if.else.i188.i, !prof !156

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.else.i188.i:                                   ; preds = %for.body.i
  %and.i186.i = and i32 %76, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186.i)
  %tobool5.not.i187.i = icmp eq i32 %and.i186.i, 0
  br i1 %tobool5.not.i187.i, label %if.then6.i193.i, label %if.else15.i199.i

if.then6.i193.i:                                  ; preds = %if.else.i188.i
  %and9.i189.i = and i32 %76, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i189.i)
  %tobool10.not.i190.i = icmp eq i32 %and9.i189.i, 0
  br i1 %tobool10.not.i190.i, label %if.then6.i193.i.if.end50.i_crit_edge, label %if.then6.i193.i.xgene_enet_get_data_len.exit205.i_crit_edge

if.then6.i193.i.xgene_enet_get_data_len.exit205.i_crit_edge: ; preds = %if.then6.i193.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_get_data_len.exit205.i

if.then6.i193.i.if.end50.i_crit_edge:             ; preds = %if.then6.i193.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.else15.i199.i:                                 ; preds = %if.else.i188.i
  %and17.i194.i = and i32 %76, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i194.i)
  %tobool18.not.i195.i = icmp eq i32 %and17.i194.i, 0
  %and22.i196.i = and i32 %76, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i196.i)
  %tobool23.not.i197.i = icmp eq i32 %and22.i196.i, 0
  %..i = select i1 %tobool18.not.i195.i, i32 4096, i32 2048
  br i1 %tobool23.not.i197.i, label %if.else15.i199.i.if.end50.i_crit_edge, label %if.else15.i199.i.xgene_enet_get_data_len.exit205.i_crit_edge

if.else15.i199.i.xgene_enet_get_data_len.exit205.i_crit_edge: ; preds = %if.else15.i199.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_get_data_len.exit205.i

if.else15.i199.i.if.end50.i_crit_edge:            ; preds = %if.else15.i199.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

xgene_enet_get_data_len.exit205.i:                ; preds = %if.else15.i199.i.xgene_enet_get_data_len.exit205.i_crit_edge, %if.then6.i193.i.xgene_enet_get_data_len.exit205.i_crit_edge
  %retval.0.i204.in.i = phi i32 [ %and9.i189.i, %if.then6.i193.i.xgene_enet_get_data_len.exit205.i_crit_edge ], [ %and22.i196.i, %if.else15.i199.i.xgene_enet_get_data_len.exit205.i_crit_edge ]
  br label %if.end50.i

if.end50.i:                                       ; preds = %xgene_enet_get_data_len.exit205.i, %if.else15.i199.i.if.end50.i_crit_edge, %if.then6.i193.i.if.end50.i_crit_edge
  %retval.0.i204221.i = phi i32 [ %retval.0.i204.in.i, %xgene_enet_get_data_len.exit205.i ], [ 16384, %if.then6.i193.i.if.end50.i_crit_edge ], [ %..i, %if.else15.i199.i.if.end50.i_crit_edge ]
  %conv54.i = trunc i64 %75 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %24, i32 noundef %conv54.i, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #10
  %77 = ptrtoint ptr %frag_page.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %frag_page.i, align 8
  %idxprom.i = zext i16 %head.0227.i to i32
  %arrayidx55.i = getelementptr ptr, ptr %78, i32 %idxprom.i
  %79 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx55.i, align 4
  %81 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %nr_frags.i, align 2
  %conv57.i = zext i8 %84 to i32
  tail call void @skb_add_rx_frag(ptr noundef %40, i32 noundef %conv57.i, ptr noundef %80, i32 noundef 0, i32 noundef %retval.0.i204221.i, i32 noundef 4096) #10
  %add.i = add i32 %retval.0.i204221.i, %datalen.0225.i
  %85 = ptrtoint ptr %frag_page.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %frag_page.i, align 8
  %arrayidx60.i = getelementptr ptr, ptr %86, i32 %idxprom.i
  %87 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %arrayidx60.i, align 4
  %add62.i = add i16 %head.0227.i, 1
  %and.i116 = and i16 %add62.i, %sub41.i
  %inc65.i = add nuw nsw i32 %i.0229.i, 1
  %exitcond.not.i = icmp eq i32 %inc65.i, 4
  br i1 %exitcond.not.i, label %if.end50.i.for.end.i_crit_edge, label %if.end50.i.for.body.i_crit_edge

if.end50.i.for.body.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end50.i.for.end.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %if.end50.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %datalen.0.lcssa.i = phi i32 [ %datalen.0225.i, %for.body.i.for.end.i_crit_edge ], [ %add.i, %if.end50.i.for.end.i_crit_edge ]
  %head.0.lcssa.i = phi i16 [ %head.0227.i, %for.body.i.for.end.i_crit_edge ], [ %and.i116, %if.end50.i.for.end.i_crit_edge ]
  %88 = ptrtoint ptr %head43.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %head.0.lcssa.i, ptr %head43.i, align 8
  %89 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %end.i.i, align 4
  %nr_frags68.i = getelementptr inbounds %struct.skb_shared_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %nr_frags68.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %nr_frags68.i, align 2
  %conv69.i = zext i8 %92 to i32
  %93 = ptrtoint ptr %npagepool.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %npagepool.i, align 8
  %sub70.i = sub i32 %94, %conv69.i
  store i32 %sub70.i, ptr %npagepool.i, align 8
  br label %skip_jumbo.i

skip_jumbo.i:                                     ; preds = %for.end.i, %if.then37.i
  %datalen.1.i = phi i32 [ %datalen.0.lcssa.i, %for.end.i ], [ %sub.i, %if.then37.i ]
  %95 = getelementptr inbounds %struct.anon.51, ptr %40, i32 0, i32 2
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %head.i.i.i208.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 18
  %98 = ptrtoint ptr %head.i.i.i208.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %head.i.i.i208.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15, i32 0, i32 20
  %100 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i209.i = zext i16 %101 to i32
  %add.ptr.i.i.i210.i = getelementptr i8, ptr %99, i32 %conv.i.i.i209.i
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 23
  %102 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %features.i.i, align 16
  %and.i211.i = and i64 %103, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i211.i)
  %tobool.not.i.i = icmp eq i64 %and.i211.i, 0
  br i1 %tobool.not.i.i, label %skip_jumbo.i.xgene_enet_rx_csum.exit.i_crit_edge, label %if.end.i213.i

skip_jumbo.i.xgene_enet_rx_csum.exit.i_crit_edge: ; preds = %skip_jumbo.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_rx_csum.exit.i

if.end.i213.i:                                    ; preds = %skip_jumbo.i
  %104 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %105)
  %cmp.not.i.i = icmp eq i16 %105, 2048
  br i1 %cmp.not.i.i, label %if.end3.i.i, label %if.end.i213.i.xgene_enet_rx_csum.exit.i_crit_edge

if.end.i213.i.xgene_enet_rx_csum.exit.i_crit_edge: ; preds = %if.end.i213.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_rx_csum.exit.i

if.end3.i.i:                                      ; preds = %if.end.i213.i
  %frag_off.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i210.i, i32 0, i32 4
  %106 = ptrtoint ptr %frag_off.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %frag_off.i.i.i, align 2
  %108 = and i16 %107, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %cmp.i.not.i.i = icmp eq i16 %108, 0
  br i1 %cmp.i.not.i.i, label %if.end6.i.i, label %if.end3.i.i.xgene_enet_rx_csum.exit.i_crit_edge

if.end3.i.i.xgene_enet_rx_csum.exit.i_crit_edge:  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_rx_csum.exit.i

if.end6.i.i:                                      ; preds = %if.end3.i.i
  %protocol7.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i210.i, i32 0, i32 6
  %109 = ptrtoint ptr %protocol7.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %protocol7.i.i, align 1
  %111 = zext i8 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %110, label %if.end6.i.i.xgene_enet_rx_csum.exit.i_crit_edge [
    i8 6, label %if.end6.i.i.if.end16.i.i_crit_edge
    i8 17, label %if.end6.i.i.if.end16.i.i_crit_edge152
  ]

if.end6.i.i.if.end16.i.i_crit_edge152:            ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

if.end6.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

if.end6.i.i.xgene_enet_rx_csum.exit.i_crit_edge:  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xgene_enet_rx_csum.exit.i

if.end16.i.i:                                     ; preds = %if.end6.i.i.if.end16.i.i_crit_edge, %if.end6.i.i.if.end16.i.i_crit_edge152
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15
  %112 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  br label %xgene_enet_rx_csum.exit.i

xgene_enet_rx_csum.exit.i:                        ; preds = %if.end16.i.i, %if.end6.i.i.xgene_enet_rx_csum.exit.i_crit_edge, %if.end3.i.i.xgene_enet_rx_csum.exit.i_crit_edge, %if.end.i213.i.xgene_enet_rx_csum.exit.i_crit_edge, %skip_jumbo.i.xgene_enet_rx_csum.exit.i_crit_edge
  %113 = ptrtoint ptr %rx_packets.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %rx_packets.i, align 8
  %inc71.i = add i64 %114, 1
  store i64 %inc71.i, ptr %rx_packets.i, align 8
  %conv72.i = zext i32 %datalen.1.i to i64
  %115 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %rx_bytes.i, align 8
  %add73.i = add i64 %116, %conv72.i
  store i64 %add73.i, ptr %rx_bytes.i, align 8
  %call74.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef %40) #10
  br label %out.i

out.i:                                            ; preds = %xgene_enet_rx_csum.exit.i, %if.else28.i
  %117 = ptrtoint ptr %npagepool.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %npagepool.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp76.i = icmp slt i32 %118, 1
  br i1 %cmp76.i, label %if.then78.i, label %out.i.if.end84.i_crit_edge

out.i.if.end84.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i

if.then78.i:                                      ; preds = %out.i
  %call79.i = tail call fastcc i32 @xgene_enet_refill_pagepool(ptr noundef %28, i32 noundef 8) #10
  %119 = ptrtoint ptr %npagepool.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 8, ptr %npagepool.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool81.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool81.not.i, label %if.then78.i.if.end84.i_crit_edge, label %if.then78.i.if.end35_crit_edge

if.then78.i.if.end35_crit_edge:                   ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then78.i.if.end84.i_crit_edge:                 ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then78.i.if.end84.i_crit_edge, %out.i.if.end84.i_crit_edge
  %120 = ptrtoint ptr %nbufpool.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %nbufpool.i, align 2
  %dec.i = add i16 %121, -1
  store i16 %dec.i, ptr %nbufpool.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i)
  %cmp86.i = icmp eq i16 %dec.i, 0
  br i1 %cmp86.i, label %if.then88.i, label %if.end84.i.if.end35_crit_edge

if.end84.i.if.end35_crit_edge:                    ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then88.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #12
  %call89.i = tail call fastcc i32 @xgene_enet_refill_bufpool(ptr noundef %26, i32 noundef 32) #10
  %122 = ptrtoint ptr %nbufpool.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 32, ptr %nbufpool.i, align 2
  br label %if.end35

if.else:                                          ; preds = %if.end30
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 2304
  %123 = and i64 %19, -4294967296
  %124 = tail call i64 @llvm.bswap.i64(i64 %123) #10
  %conv.i117 = trunc i64 %124 to i32
  %125 = ptrtoint ptr %cp_skb.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cp_skb.i, align 8
  %idxprom.i118 = and i32 %conv.i117, 65535
  %arrayidx.i119 = getelementptr ptr, ptr %126, i32 %idxprom.i118
  %127 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i119, align 4
  %129 = ptrtoint ptr %frag_dma_addr2.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %frag_dma_addr2.i, align 4
  %mul.i = mul nuw nsw i32 %idxprom.i118, 17
  %arrayidx4.i = getelementptr i32, ptr %130, i32 %mul.i
  %parent.i.i120 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 133, i32 1
  %131 = ptrtoint ptr %parent.i.i120 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %parent.i.i120, align 8
  %m1.i121 = getelementptr %struct.xgene_enet_raw_desc, ptr %8, i32 %idxprom, i32 1
  %133 = ptrtoint ptr %m1.i121 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %m1.i121, align 8
  %135 = and i64 %134, -16580608
  %136 = tail call i64 @llvm.bswap.i64(i64 %135) #10
  %conv8.i122 = trunc i64 %136 to i32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %128, i32 0, i32 6
  %137 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %128, i32 0, i32 7
  %139 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %138, %140
  tail call void @dma_unmap_page_attrs(ptr noundef %132, i32 noundef %conv8.i122, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #10
  %end.i.i123 = getelementptr inbounds %struct.sk_buff, ptr %128, i32 0, i32 17
  %141 = ptrtoint ptr %end.i.i123 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %end.i.i123, align 4
  %nr_frags9.i = getelementptr inbounds %struct.skb_shared_info, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %nr_frags9.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %nr_frags9.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp11.not.i = icmp eq i8 %144, 0
  br i1 %cmp11.not.i, label %if.else.for.end.i129_crit_edge, label %if.else.for.body.i127_crit_edge

if.else.for.body.i127_crit_edge:                  ; preds = %if.else
  br label %for.body.i127

if.else.for.end.i129_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i129

for.body.i127:                                    ; preds = %for.body.i127.for.body.i127_crit_edge, %if.else.for.body.i127_crit_edge
  %145 = phi ptr [ %151, %for.body.i127.for.body.i127_crit_edge ], [ %142, %if.else.for.body.i127_crit_edge ]
  %i.012.i = phi i32 [ %inc.i124, %for.body.i127.for.body.i127_crit_edge ], [ 0, %if.else.for.body.i127_crit_edge ]
  %arrayidx15.i = getelementptr i32, ptr %arrayidx4.i, i32 %i.012.i
  %146 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx15.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %145, i32 0, i32 12, i32 %i.012.i, i32 1
  %148 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %bv_len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %132, i32 noundef %147, i32 noundef %149, i32 noundef 1, i32 noundef 0) #10
  %inc.i124 = add nuw nsw i32 %i.012.i, 1
  %150 = ptrtoint ptr %end.i.i123 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %end.i.i123, align 4
  %nr_frags.i125 = getelementptr inbounds %struct.skb_shared_info, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %nr_frags.i125 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %nr_frags.i125, align 2
  %conv11.i = zext i8 %153 to i32
  %cmp.i126 = icmp ult i32 %inc.i124, %conv11.i
  br i1 %cmp.i126, label %for.body.i127.for.body.i127_crit_edge, label %for.body.i127.for.end.i129_crit_edge

for.body.i127.for.end.i129_crit_edge:             ; preds = %for.body.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i129

for.body.i127.for.body.i127_crit_edge:            ; preds = %for.body.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i127

for.end.i129:                                     ; preds = %for.body.i127.for.end.i129_crit_edge, %if.else.for.end.i129_crit_edge
  %m3.i = getelementptr %struct.xgene_enet_raw_desc, ptr %8, i32 %idxprom, i32 3
  %154 = ptrtoint ptr %m3.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %m3.i, align 8
  %156 = tail call i64 @llvm.bswap.i64(i64 %155) #10
  %157 = and i64 %156, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %157)
  %tobool.not.i128 = icmp eq i64 %157, 0
  br i1 %tobool.not.i128, label %for.end.i129.if.end.i_crit_edge, label %if.then.i132

for.end.i129.if.end.i_crit_edge:                  ; preds = %for.end.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i132:                                     ; preds = %for.end.i129
  call void @__sanitizer_cov_trace_pc() #12
  %158 = trunc i64 %156 to i32
  %159 = lshr i32 %158, 20
  %conv20.i130 = and i32 %159, 3
  %mss_lock.i = getelementptr i8, ptr %22, i32 2872
  tail call void @_raw_spin_lock(ptr noundef %mss_lock.i) #10
  %arrayidx22.i = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i.i, i32 0, i32 46, i32 %conv20.i130
  %160 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx22.i, align 4
  %dec.i131 = add i32 %161, -1
  store i32 %dec.i131, ptr %arrayidx22.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mss_lock.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i132, %for.end.i129.if.end.i_crit_edge
  %162 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %arrayidx, align 8
  %164 = and i64 %163, 112
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %164)
  %cmp28.i = icmp ugt i64 %164, 32
  br i1 %cmp28.i, label %if.then32.i, label %if.end.i.if.end35.i_crit_edge, !prof !156

if.end.i.if.end35.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %tx_dropped.i, align 8
  %inc33.i = add i64 %166, 1
  store i64 %inc33.i, ptr %tx_dropped.i, align 8
  %167 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %tx_errors.i, align 8
  %inc34.i = add i64 %168, 1
  store i64 %inc34.i, ptr %tx_errors.i, align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.end.i.if.end35.i_crit_edge
  %tobool36.not.i = icmp eq ptr %128, null
  br i1 %tobool36.not.i, label %if.else.i133, label %if.then43.i, !prof !156

if.then43.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %128, i32 noundef 1) #10
  br label %if.end35

if.else.i133:                                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ring, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %170, ptr noundef nonnull @.str.23) #13
  br label %if.end35

if.end35:                                         ; preds = %if.else.i133, %if.then43.i, %if.then88.i, %if.end84.i.if.end35_crit_edge, %if.then78.i.if.end35_crit_edge
  %ret.0 = phi i32 [ %call79.i, %if.then78.i.if.end35_crit_edge ], [ %call89.i, %if.then88.i ], [ 0, %if.end84.i.if.end35_crit_edge ], [ 0, %if.then43.i ], [ 0, %if.else.i133 ]
  %171 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 -1, ptr %arrayidx.i, align 8
  %tobool36.not = icmp eq ptr %exp_desc.0, null
  br i1 %tobool36.not, label %if.end35.if.end38_crit_edge, label %if.then37

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i135 = getelementptr i64, ptr %exp_desc.0, i32 1
  %172 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 -1, ptr %arrayidx.i135, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35.if.end38_crit_edge
  %add40 = add i16 %head.1, 1
  %and42 = and i16 %add40, %sub
  %inc44 = add i32 %count.1, 1
  %inc46 = add i32 %processed.0, 1
  br i1 %tobool.i.not, label %if.then48, label %if.end38.if.end54_crit_edge

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then48:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %173 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %index, align 4
  %idxprom49 = zext i8 %174 to i32
  %arrayidx50 = getelementptr %struct.xgene_enet_pdata, ptr %add.ptr.i, i32 0, i32 9, i32 %idxprom49
  %175 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %arrayidx50, align 2
  %add52 = add i16 %176, %desc_count.0
  store i16 %add52, ptr %arrayidx50, align 2
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.end38.if.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool55.not = icmp ne i32 %ret.0, 0
  %dec = add i32 %budget.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool58.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool55.not, i1 true, i1 %tobool58.not
  br i1 %or.cond, label %if.end54.do.end_crit_edge, label %if.end54.do.body_crit_edge

if.end54.do.body_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end54.do.end_crit_edge:                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end54.do.end_crit_edge, %if.then22, %do.body.do.end_crit_edge
  %head.2 = phi i16 [ %and26, %if.then22 ], [ %and42, %if.end54.do.end_crit_edge ], [ %head.0, %do.body.do.end_crit_edge ]
  %count.2 = phi i32 [ %count.0, %if.then22 ], [ %inc44, %if.end54.do.end_crit_edge ], [ %count.0, %do.body.do.end_crit_edge ]
  %processed.1 = phi i32 [ %processed.0, %if.then22 ], [ %inc46, %if.end54.do.end_crit_edge ], [ %processed.0, %do.body.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.2)
  %tobool59.not = icmp eq i32 %count.2, 0
  br i1 %tobool59.not, label %do.end.if.end76_crit_edge, label %if.then66, !prof !156

do.end.if.end76_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then66:                                        ; preds = %do.end
  %ring_ops = getelementptr i8, ptr %1, i32 2720
  %177 = ptrtoint ptr %ring_ops to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ring_ops, align 8
  %wr_cmd = getelementptr inbounds %struct.xgene_ring_ops, ptr %178, i32 0, i32 4
  %179 = ptrtoint ptr %wr_cmd to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %wr_cmd, align 4
  %sub67 = sub i32 0, %count.2
  tail call void %180(ptr noundef %ring, i32 noundef %sub67) #10
  %181 = ptrtoint ptr %head2 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %head.2, ptr %head2, align 8
  %182 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %index, align 4
  %conv.i136 = zext i8 %183 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %184 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %185, i32 %conv.i136, i32 13
  %186 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %187, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then66.if.end76_crit_edge, label %if.then72

if.then66.if.end76_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then72:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.then66.if.end76_crit_edge, %do.end.if.end76_crit_edge
  ret i32 %processed.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_enet_free_pagepool(ptr noundef %buf_pool, ptr noundef readonly %raw_desc, ptr noundef readonly %exp_desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf_pool, null
  %tobool1.not = icmp eq ptr %raw_desc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %exp_desc, null
  %or.cond50 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond50, label %entry.cleanup_crit_edge, label %lor.lhs.false4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false4:                                   ; preds = %entry
  %0 = ptrtoint ptr %raw_desc to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %raw_desc, align 8
  %2 = and i64 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool5.not = icmp eq i64 %2, 0
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %3 = ptrtoint ptr %buf_pool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf_pool, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 133, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  %slots7 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 6
  %7 = ptrtoint ptr %slots7 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %slots7, align 2
  %sub = add i16 %8, -1
  %head9 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 3
  %9 = ptrtoint ptr %head9 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %head9, align 8
  %frag_page = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %if.end
  %i.063 = phi i32 [ 0, %if.end ], [ %inc, %put_page.exit.for.body_crit_edge ]
  %head.061 = phi i16 [ %10, %if.end ], [ %and, %put_page.exit.for.body_crit_edge ]
  %xor = xor i32 %i.063, 1
  %arrayidx = getelementptr i64, ptr %exp_desc, i32 %xor
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  %14 = and i64 %13, 9223090561878065152
  call void @__sanitizer_cov_trace_const_cmp8(i64 8646911284551352320, i64 %14)
  %cmp.i = icmp eq i64 %14, 8646911284551352320
  br i1 %cmp.i, label %for.body.for.end_crit_edge, label %if.end15, !prof !156

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end15:                                         ; preds = %for.body
  %conv19 = trunc i64 %13 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %conv19, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #10
  %15 = ptrtoint ptr %frag_page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %frag_page, align 8
  %idxprom = zext i16 %head.061 to i32
  %arrayidx20 = getelementptr ptr, ptr %16, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx20, align 4
  %19 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !154

if.then.i.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %21, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %18 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %22, %if.end.i.i ]
  %23 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %24 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !156

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !161
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !162
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !163
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xgene_enet_free_pagepool, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !165

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %23, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %23) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %28 = ptrtoint ptr %frag_page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %frag_page, align 8
  %arrayidx23 = getelementptr ptr, ptr %29, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx23, align 4
  %add = add i16 %head.061, 1
  %and = and i16 %add, %sub
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %put_page.exit.for.end_crit_edge, label %put_page.exit.for.body_crit_edge

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %head.0.lcssa = phi i16 [ %head.061, %for.body.for.end_crit_edge ], [ %and, %put_page.exit.for.end_crit_edge ]
  %31 = ptrtoint ptr %head9 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %head.0.lcssa, ptr %head9, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgene_enet_parse_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgene_enet_refill_pagepool(ptr noundef %buf_pool, i32 noundef %nbuf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf_pool, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !156

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_pool, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %slots6 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 6
  %4 = ptrtoint ptr %slots6 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %slots6, align 2
  %conv = zext i16 %5 to i32
  %sub = add nsw i32 %conv, -1
  %tail7 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 4
  %6 = ptrtoint ptr %tail7 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tail7, align 2
  %conv8 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbuf)
  %cmp73.not = icmp eq i32 %nbuf, 0
  br i1 %cmp73.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %8 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 30
  %frag_page = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end32.for.body_crit_edge ]
  %tail.074 = phi i32 [ %conv8, %for.body.lr.ph ], [ %and, %if.end32.for.body_crit_edge ]
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %tobool11.not = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool11.not, label %for.body.cleanup_crit_edge, label %if.end21, !prof !156

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %for.body
  %call22 = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp.i.not = icmp eq i32 %call22, -1
  br i1 %cmp.i.not, label %if.then31, label %if.end32, !prof !156

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @put_page(ptr noundef nonnull %call38.i.i.i.i.i)
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  %conv34 = zext i32 %call22 to i64
  %or39 = or i64 %conv34, -4611686018427387904
  %11 = tail call i64 @llvm.bswap.i64(i64 %or39)
  %m1 = getelementptr %struct.xgene_enet_raw_desc16, ptr %10, i32 %tail.074, i32 1
  %12 = ptrtoint ptr %m1 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %m1, align 8
  %13 = ptrtoint ptr %frag_page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %frag_page, align 8
  %arrayidx40 = getelementptr ptr, ptr %14, i32 %tail.074
  %15 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call38.i.i.i.i.i, ptr %arrayidx40, align 4
  %add = add i32 %tail.074, 1
  %and = and i32 %add, %sub
  %inc = add nuw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %nbuf
  br i1 %exitcond.not, label %if.end32.for.end_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %if.end.for.end_crit_edge
  %tail.0.lcssa = phi i32 [ %conv8, %if.end.for.end_crit_edge ], [ %and, %if.end32.for.end_crit_edge ]
  %ring_ops = getelementptr i8, ptr %1, i32 2720
  %16 = ptrtoint ptr %ring_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring_ops, align 8
  %wr_cmd = getelementptr inbounds %struct.xgene_ring_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %wr_cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr_cmd, align 4
  tail call void %19(ptr noundef nonnull %buf_pool, i32 noundef %nbuf) #10
  %conv41 = trunc i32 %tail.0.lcssa to i16
  %20 = ptrtoint ptr %tail7 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv41, ptr %tail7, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then31, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then31 ], [ 0, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgene_enet_refill_bufpool(ptr noundef %buf_pool, i32 noundef %nbuf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tail1 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 4
  %0 = ptrtoint ptr %tail1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tail1, align 2
  %conv = zext i16 %1 to i32
  %slots2 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 6
  %2 = ptrtoint ptr %slots2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %slots2, align 2
  %conv3 = zext i16 %3 to i32
  %sub = add nsw i32 %conv3, -1
  %4 = ptrtoint ptr %buf_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf_pool, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbuf)
  %cmp74.not = icmp eq i32 %nbuf, 0
  br i1 %cmp74.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %8 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 30
  %rx_skb = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18.for.body_crit_edge ]
  %tail.075 = phi i32 [ %conv, %for.body.lr.ph ], [ %and, %if.end18.for.body_crit_edge ]
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %5, i32 noundef 1538, i32 noundef 2592) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %14, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !154

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %7) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i58 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i58, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef -1) #10
  br label %if.then17

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %7, ptr noundef %add.ptr.i.i.i, i32 noundef 1536) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.i = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i59 = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef %add.ptr.i59, i32 noundef %and.i, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then17_crit_edge, label %if.end18

dma_map_single_attrs.exit.if.then17_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then17:                                        ; preds = %dma_map_single_attrs.exit.if.then17_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.20) #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #10
  br label %cleanup

if.end18:                                         ; preds = %dma_map_single_attrs.exit
  %21 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_skb, align 4
  %arrayidx19 = getelementptr ptr, ptr %22, i32 %tail.075
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i, ptr %arrayidx19, align 4
  %conv20 = zext i32 %call41.i to i64
  %or25 = or i64 %conv20, -3026981899546394624
  %24 = tail call i64 @llvm.bswap.i64(i64 %or25)
  %m1 = getelementptr %struct.xgene_enet_raw_desc16, ptr %10, i32 %tail.075, i32 1
  %25 = ptrtoint ptr %m1 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %m1, align 8
  %add = add i32 %tail.075, 1
  %and = and i32 %add, %sub
  %inc = add nuw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %nbuf
  br i1 %exitcond.not, label %if.end18.for.end_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end18.for.end_crit_edge, %entry.for.end_crit_edge
  %tail.0.lcssa = phi i32 [ %conv, %entry.for.end_crit_edge ], [ %and, %if.end18.for.end_crit_edge ]
  %ring_ops = getelementptr i8, ptr %5, i32 2720
  %26 = ptrtoint ptr %ring_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ring_ops, align 8
  %wr_cmd = getelementptr inbounds %struct.xgene_ring_ops, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %wr_cmd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr_cmd, align 4
  tail call void %29(ptr noundef %buf_pool, i32 noundef %nbuf) #10
  %conv26 = trunc i32 %tail.0.lcssa to i16
  %30 = ptrtoint ptr %tail1 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv26, ptr %tail1, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then17, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then17 ], [ 0, %for.end ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !154

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !156

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !161
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !162
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !163
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !165

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #10
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %4) #10
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgene_enet_phy_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xgene_enet_create_desc_ring(ptr noundef %ndev, i32 noundef %ring_num, i32 noundef %ring_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 464, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ndev, ptr %call.i, align 8
  %conv = trunc i32 %ring_num to i16
  %num = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %num, align 2
  %cfgsize7 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call.i, i32 0, i32 25
  %4 = ptrtoint ptr %cfgsize7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %cfgsize7, align 4
  %conv8 = trunc i32 %ring_id to i16
  %id = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv8, ptr %id, align 4
  %dma = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call.i, i32 0, i32 13
  %call.i1 = tail call ptr @dmam_alloc_attrs(ptr noundef %1, i32 noundef 16384, ptr noundef %dma, i32 noundef 3520, i32 noundef 0) #10
  %6 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call.i, i32 0, i32 30
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i1, ptr %6, align 8
  %tobool10.not = icmp eq ptr %call.i1, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %size13 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %size13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16384, ptr %size13, align 4
  %enet_id.i = getelementptr i8, ptr %ndev, i32 2324
  %9 = ptrtoint ptr %enet_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enet_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp eq i32 %10, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true.i:                                  ; preds = %if.end12
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %id, align 4
  %13 = and i16 %12, 960
  call void @__sanitizer_cov_trace_const_cmp2(i16 960, i16 %13)
  %cmp1.i = icmp eq i16 %13, 960
  br i1 %cmp1.i, label %if.then15, label %land.lhs.true.i.if.end22_crit_edge

land.lhs.true.i.if.end22_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then15:                                        ; preds = %land.lhs.true.i
  %irq_mbox_dma = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call.i, i32 0, i32 14
  %call.i3 = tail call ptr @dmam_alloc_attrs(ptr noundef %1, i32 noundef 1024, ptr noundef %irq_mbox_dma, i32 noundef 3520, i32 noundef 0) #10
  %tobool17.not = icmp eq ptr %call.i3, null
  br i1 %tobool17.not, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %6, align 8
  %16 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma, align 8
  tail call void @dmam_free_coherent(ptr noundef %1, i32 noundef 16384, ptr noundef %15, i32 noundef %17) #10
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end20:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %irq_mbox_addr21 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call.i, i32 0, i32 15
  %18 = ptrtoint ptr %irq_mbox_addr21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i3, ptr %irq_mbox_addr21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %land.lhs.true.i.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  %ring_ops.i = getelementptr i8, ptr %ndev, i32 2720
  %19 = ptrtoint ptr %ring_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring_ops.i, align 8
  %num_ring_id_shift1.i = getelementptr inbounds %struct.xgene_ring_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %num_ring_id_shift1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_ring_id_shift1.i, align 1
  %ring_cmd_addr.i = getelementptr i8, ptr %ndev, i32 2540
  %23 = ptrtoint ptr %ring_cmd_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring_cmd_addr.i, align 4
  %25 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num, align 2
  %conv.i = zext i16 %26 to i32
  %conv2.i = zext i8 %22 to i32
  %shl.i = shl i32 %conv.i, %conv2.i
  %add.ptr.i4 = getelementptr i8, ptr %24, i32 %shl.i
  %cmd_base = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call.i, i32 0, i32 11
  %27 = ptrtoint ptr %cmd_base to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i4, ptr %cmd_base, align 8
  %add.ptr = getelementptr i8, ptr %add.ptr.i4, i32 44
  %cmd = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call.i, i32 0, i32 12
  %28 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %cmd, align 4
  %setup = getelementptr inbounds %struct.xgene_ring_ops, ptr %20, i32 0, i32 2
  %29 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %setup, align 4
  %call25 = tail call ptr %30(ptr noundef nonnull %call.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_enet_create_desc_ring.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_enet_create_desc_ring, %if.then31)) #10
          to label %cleanup [label %if.then31], !srcloc !165

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %num32 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call25, i32 0, i32 2
  %31 = ptrtoint ptr %num32 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num32, align 2
  %conv33 = zext i16 %32 to i32
  %size34 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call25, i32 0, i32 9
  %33 = ptrtoint ptr %size34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size34, align 4
  %id35 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call25, i32 0, i32 1
  %35 = ptrtoint ptr %id35 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %id35, align 4
  %conv36 = zext i16 %36 to i32
  %slots = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %call25, i32 0, i32 6
  %37 = ptrtoint ptr %slots to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %slots, align 2
  %conv37 = zext i16 %38 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgene_enet_create_desc_ring.__UNIQUE_ID_ddebug504, ptr noundef %ndev, ptr noundef nonnull @.str.70, i32 noundef %conv33, i32 noundef %34, i32 noundef %conv36, i32 noundef %conv37) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end22, %if.then18, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then18 ], [ null, %if.then11 ], [ null, %entry.cleanup_crit_edge ], [ %call25, %if.then31 ], [ %call25, %if.end22 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmam_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_napi(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -136
  %call = tail call fastcc i32 @xgene_enet_process_ring(ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp.not = icmp eq i32 %call, %budget
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #10
  %irq = getelementptr i8, ptr %napi, i32 -120
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %irq, align 8
  %conv = zext i16 %1 to i32
  tail call void @enable_irq(i32 noundef %conv) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_enet_delete_pagepool(ptr nocapture noundef readonly %buf_pool) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_pool, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %slots = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 6
  %4 = ptrtoint ptr %slots to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %slots, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp11.not = icmp eq i16 %5, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %frag_page = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 24
  %frag_dma_addr = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %buf_pool, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %frag_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %frag_page, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.012
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %10 = ptrtoint ptr %frag_dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %frag_dma_addr, align 4
  %arrayidx2 = getelementptr i32, ptr %11, i32 %i.012
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %13, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #10
  %14 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !154

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %16, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %18 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !156

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !161
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !162
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !163
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xgene_enet_delete_pagepool, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !165

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %18, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %18) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %23 = ptrtoint ptr %slots to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %slots, align 2
  %conv = zext i16 %24 to i32
  %cmp = icmp ult i32 %inc, %conv
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !59, !61, !62, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !104, !106, !107, !108, !109, !111, !113, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !135, !137, !138, !139, !140}
!llvm.named.register.sp = !{!142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__initcall__kmod_xgene_enet__505_2179_xgene_enet_driver_init6, !1, !"__initcall__kmod_xgene_enet__505_2179_xgene_enet_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2179, i32 1}
!2 = !{ptr @__exitcall_xgene_enet_driver_exit, !1, !"__exitcall_xgene_enet_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description506, !4, !"__UNIQUE_ID_description506", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2181, i32 1}
!5 = !{ptr @__UNIQUE_ID_author507, !6, !"__UNIQUE_ID_author507", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2182, i32 1}
!7 = !{ptr @__UNIQUE_ID_author508, !8, !"__UNIQUE_ID_author508", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2183, i32 1}
!9 = !{ptr @__UNIQUE_ID_file509, !10, !"__UNIQUE_ID_file509", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2184, i32 1}
!11 = !{ptr @__UNIQUE_ID_license510, !10, !"__UNIQUE_ID_license510", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2170, i32 14}
!14 = !{ptr @xgene_enet_driver, !15, !"xgene_enet_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2168, i32 31}
!16 = !{ptr @xgene_enet_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2063, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @xgene_enet_probe.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2067, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2073, i32 20}
!24 = !{ptr @xgene_enet_probe.__key.5, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2085, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @xgene_enet_probe.__key.7, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @xgene_enet_probe.__key.9, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2090, i32 4}
!31 = !{ptr @xgene_enet_probe.__key.10, !30, !"__key", i1 false, i1 false}
!32 = !{ptr @xgene_enet_probe.__key.11, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2096, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2104, i32 20}
!37 = !{ptr @xgene_ndev_ops, !38, !"xgene_ndev_ops", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1536, i32 36}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 915, i32 21}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 886, i32 42}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 889, i32 42}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 896, i32 41}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/mm.h", i32 717, i32 2}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 148, i32 21}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 270, i32 29}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1694, i32 3}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @xgene_enet_get_resources._entry, !60, !"_entry", i1 false, i1 false}
!66 = !{ptr @xgene_enet_get_resources._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1699, i32 3}
!69 = !{ptr @xgene_enet_get_resources._entry.29, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @xgene_enet_get_resources._entry_ptr.31, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1705, i32 3}
!73 = !{ptr @xgene_enet_get_resources._entry.32, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @xgene_enet_get_resources._entry_ptr.34, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1711, i32 3}
!77 = !{ptr @xgene_enet_get_resources._entry.35, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @xgene_enet_get_resources._entry_ptr.37, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1717, i32 3}
!81 = !{ptr @xgene_enet_get_resources._entry.38, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @xgene_enet_get_resources._entry_ptr.40, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1723, i32 3}
!85 = !{ptr @xgene_enet_get_resources._entry.41, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @xgene_enet_get_resources._entry_ptr.43, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1741, i32 3}
!89 = !{ptr @xgene_enet_get_resources._entry.44, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @xgene_enet_get_resources._entry_ptr.46, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1747, i32 3}
!93 = !{ptr @xgene_enet_get_resources._entry.47, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @xgene_enet_get_resources._entry_ptr.49, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1775, i32 4}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @xgene_enet_get_resources._entry.50, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @xgene_enet_get_resources._entry_ptr.53, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1568, i32 37}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1580, i32 38}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1587, i32 3}
!106 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @xgene_get_tx_delay._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @xgene_get_tx_delay._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1601, i32 38}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1608, i32 3}
!113 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @xgene_get_rx_delay._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @xgene_get_rx_delay._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1668, i32 37}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1669, i32 37}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1673, i32 34}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1675, i32 35}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1823, i32 20}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1858, i32 21}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1296, i32 38}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1258, i32 2}
!132 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @xgene_enet_create_desc_ring.__UNIQUE_ID_ddebug504, !131, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!135 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 1118, i32 3}
!137 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @xgene_enet_get_ring_size._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @xgene_enet_get_ring_size._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @xgene_enet_of_match, !141, !"xgene_enet_of_match", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_main.c", i32 2002, i32 34}
!142 = !{!"sp"}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
!153 = !{i8 0, i8 2}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!156 = !{!"branch_weights", i32 1, i32 2000}
!157 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!158 = !{i64 2158805179}
!159 = !{i64 2158805621}
!160 = !{i64 1057928}
!161 = !{i64 2155259938, i64 2155260421, i64 2155259975, i64 2155260031, i64 2155260065, i64 2155260089, i64 2155260130, i64 2155260151, i64 2155260179, i64 2155260213}
!162 = !{i64 2148647112}
!163 = !{i64 2148561845, i64 2148561877, i64 2148561906, i64 2148561940, i64 2148561971, i64 2148561994}
!164 = !{i64 2148647341}
!165 = !{i64 2148372053, i64 2148372058, i64 2148372071, i64 2148372115, i64 2148372149, i64 2148372170}
