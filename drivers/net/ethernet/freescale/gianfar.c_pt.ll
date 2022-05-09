; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/gianfar.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/gianfar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.80 }
%union.anon.80 = type { i32 }
%struct.gfar_private = type { ptr, ptr, i32, i16, i16, i32, i32, i32, [8 x ptr], [8 x ptr], [36 x i8], [2 x %struct.gfar_priv_grp], i32, i16, i32, i32, i32, i32, %struct.gfar_extra_stats, %struct.rmon_overflow, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.work_struct, ptr, i8, i32, i32, i32, i32, i32, i32, i32, %struct.ethtool_rx_list, %struct.mutex, [16 x ptr], i32, i16, i16, [256 x i32], [256 x i32], [40 x i8] }
%struct.gfar_priv_grp = type { %struct.spinlock, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, [3 x ptr], [92 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.gfar_extra_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.rmon_overflow = type { %struct.spinlock, i32, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ethtool_rx_list = type { %struct.list_head, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.gfar = type { i32, i32, [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [28 x i8], i32, i32, i32, i32, [44 x i8], i32, [8 x i8], i32, i32, [96 x i8], i32, i32, i32, i32, i32, i32, [40 x i8], i32, i32, [52 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [64 x i8], i32, i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [192 x i8], i32, i32, [8 x i8], i32, i32, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, [56 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [64 x i8], i32, i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [192 x i8], i32, i32, i32, i32, i32, [12 x i8], [24 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [192 x i8], %struct.rmon_mib, i32, [188 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [96 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [352 x i8], i32, [252 x i8], [248 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [36 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], [556 x i8], i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [208 x i8] }
%struct.rmon_mib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gfar_priv_tx_q = type { %struct.spinlock, ptr, ptr, i32, i16, i16, %struct.tx_q_stats, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, [16 x i8] }
%struct.tx_q_stats = type { i64, i64 }
%struct.txbd8 = type { %union.anon.148, i32 }
%union.anon.148 = type { i32 }
%struct.anon.149 = type { i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.gfar_priv_rx_q = type { ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, ptr, %struct.rx_q_stats, ptr, i8, i32, i32, [48 x i8] }
%struct.rx_q_stats = type { i64, i64, i64 }
%struct.rxbd8 = type { %union.anon.150, i32 }
%union.anon.150 = type { i32 }
%struct.gfar_rx_buff = type { i32, ptr, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gfar_irqinfo = type { i32, [22 x i8] }
%struct.rxfcb = type { i16, i8, i8, i16, i16 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.txfcb = type { i8, i8, i8, i8, i16, i16 }
%struct.page = type { i32, %union.anon.10, %union.anon.95, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.95 = type { %struct.atomic_t }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.126, %union.anon.127 }
%union.anon.126 = type { [16 x i8] }
%union.anon.127 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__UNIQUE_ID_author484 = internal constant [51 x i8] c"gianfar_driver.author=Freescale Semiconductor, Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description485 = internal constant [51 x i8] c"gianfar_driver.description=Gianfar Ethernet Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file486 = internal constant [66 x i8] c"gianfar_driver.file=drivers/net/ethernet/freescale/gianfar_driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license487 = internal constant [27 x i8] c"gianfar_driver.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__initcall__kmod_gianfar_driver__496_3647_gfar_driver_init6 = internal global ptr @gfar_driver_init, section ".initcall6.init", align 4
@gfar_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gfar_probe, ptr @gfar_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gfar_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfar_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gfar_driver_exit = internal global ptr @gfar_driver_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't alloc RX buffers\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl-gianfar\00", [20 x i8] zeroinitializer }, align 32
@gfar_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] c"network\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gianfar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,etsec2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@gfar_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @gfar_suspend, ptr @gfar_resume, ptr @gfar_suspend, ptr @gfar_resume, ptr null, ptr @gfar_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gfar_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&priv->reset_task)\00", [59 x i8] zeroinitializer }, align 32
@gfar_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @gfar_enet_open, ptr @gfar_close, ptr @gfar_start_xmit, ptr null, ptr null, ptr null, ptr @gfar_set_multi, ptr @gfar_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @gfar_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @gfar_change_mtu, ptr null, ptr @gfar_timeout, ptr @gfar_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfar_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfar_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fixed_phy_change_carrier, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@gfar_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@gfar_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&priv->rmon_overflow.lock\00", [38 x i8] zeroinitializer }, align 32
@gfar_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 3308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013gianfar_driver: %s: Cannot register net device, aborting\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gfar_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/freescale/gianfar.c\00", [55 x i8] zeroinitializer }, align 32
@gfar_probe._entry_ptr = internal global ptr @gfar_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s%s%c%s\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"_g\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"_tx\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"_rx\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"_er\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mac: %pM\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Running with NAPI enabled\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RX BD ring size for Q[%d]: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TX BD ring size for Q[%d]: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,etsec2\00", [21 x i8] zeroinitializer }, align 32
@gfar_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.8, i32 661, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid # of int groups(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gfar_of_init\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gfar_of_init._entry_ptr = internal global ptr @gfar_of_init._entry, section ".printk_index", align 4
@gfar_of_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.8, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gianfar_driver: Cannot do alloc_etherdev, aborting\0A\00", [42 x i8] zeroinitializer }, align 32
@gfar_of_init._entry_ptr.25 = internal global ptr @gfar_of_init._entry.23, section ".printk_index", align 4
@gfar_of_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.8, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013gianfar_driver: num_tx_qs(=%d) greater than MAX_TX_QS(=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@gfar_of_init._entry_ptr.28 = internal global ptr @gfar_of_init._entry.26, section ".printk_index", align 4
@gfar_of_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.8, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gfar_of_init._entry_ptr.30 = internal global ptr @gfar_of_init._entry.29, section ".printk_index", align 4
@gfar_of_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.20, ptr @.str.8, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013gianfar_driver: num_rx_qs(=%d) greater than MAX_RX_QS(=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@gfar_of_init._entry_ptr.33 = internal global ptr @gfar_of_init._entry.31, section ".printk_index", align 4
@gfar_of_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.8, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gfar_of_init._entry_ptr.35 = internal global ptr @gfar_of_init._entry.34, section ".printk_index", align 4
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@gfar_of_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.20, ptr @.str.8, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013gianfar_driver: Device model property missing, aborting\0A\00", [37 x i8] zeroinitializer }, align 32
@gfar_of_init._entry_ptr.39 = internal global ptr @gfar_of_init._entry.37, section ".printk_index", align 4
@gfar_of_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&priv->rx_queue_access\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"queue-group\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bd-stash\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx-stash-len\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx-stash-idx\00", [19 x i8] zeroinitializer }, align 32
@gfar_of_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.20, ptr @.str.8, i32 759, ptr @.str.47, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using random MAC address: %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gfar_of_init._entry_ptr.48 = internal global ptr @gfar_of_init._entry.45, section ".printk_index", align 4
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TSEC\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eTSEC\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,magic-packet\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,wake-on-filer\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tbi-handle\00", [21 x i8] zeroinitializer }, align 32
@gfar_alloc_tx_queues.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(priv->tx_queue[i]->txlock)\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FEC\00", [28 x i8] zeroinitializer }, align 32
@gfar_parse_group.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&grp->grplock\00", [18 x i8] zeroinitializer }, align 32
@gfar_detect_errata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.8, i32 944, ptr @.str.47, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"enabled errata workarounds, flags: 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gfar_detect_errata\00", [45 x i8] zeroinitializer }, align 32
@gfar_detect_errata._entry_ptr = internal global ptr @gfar_detect_errata._entry, section ".printk_index", align 4
@phy_10_100_features_array = external dso_local local_unnamed_addr constant [4 x i32], align 4
@init_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.8, i32 1669, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_phy\00", [23 x i8] zeroinitializer }, align 32
@init_phy._entry_ptr = internal global ptr @init_phy._entry, section ".printk_index", align 4
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Ack!  Speed (%d) is not 10/100/1000!\0A\00", [58 x i8] zeroinitializer }, align 32
@gfar_configure_serdes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.8, i32 1609, ptr @.str.65, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"error: SGMII mode requires that the device tree specify a tbi-handle\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gfar_configure_serdes\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gfar_configure_serdes._entry_ptr = internal global ptr @gfar_configure_serdes._entry, section ".printk_index", align 4
@gfar_configure_serdes._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.64, ptr @.str.8, i32 1615, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: Could not get TBI device\0A\00", [63 x i8] zeroinitializer }, align 32
@gfar_configure_serdes._entry_ptr.68 = internal global ptr @gfar_configure_serdes._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Can't get IRQ %d\0A\00", [46 x i8] zeroinitializer }, align 32
@gfar_error.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.70, ptr @.str.71, ptr @.str.8, ptr @.str.72, i8 2, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gianfar_driver\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gfar_error\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"error interrupt (ievent=0x%08x imask=0x%08x)\0A\00", [50 x i8] zeroinitializer }, align 32
@gfar_error.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.70, ptr @.str.71, ptr @.str.8, ptr @.str.73, i8 2, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TX FIFO underrun, packet dropped\0A\00", [62 x i8] zeroinitializer }, align 32
@gfar_error.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.70, ptr @.str.71, ptr @.str.8, ptr @.str.74, i8 2, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Transmit Error\0A\00", [16 x i8] zeroinitializer }, align 32
@gfar_error.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.70, ptr @.str.71, ptr @.str.8, ptr @.str.75, i8 2, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"busy error (rstat: %x)\0A\00", [40 x i8] zeroinitializer }, align 32
@gfar_error.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.70, ptr @.str.71, ptr @.str.8, ptr @.str.76, i8 2, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"babbling RX error\0A\00", [45 x i8] zeroinitializer }, align 32
@gfar_error.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.70, ptr @.str.71, ptr @.str.8, ptr @.str.77, i8 2, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bus error\0A\00", [21 x i8] zeroinitializer }, align 32
@gfar_error.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.70, ptr @.str.71, ptr @.str.8, ptr @.str.78, i8 2, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"control frame\0A\00", [17 x i8] zeroinitializer }, align 32
@gfar_error.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.70, ptr @.str.71, ptr @.str.8, ptr @.str.79, i8 2, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"babbling TX error\0A\00", [45 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"gianfar: rx fragment size underflow\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"gfar_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3637, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1239, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3639, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [11 x i8] c"gfar_match\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3623, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"gfar_pm_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3607, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3214, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"gfar_netdev_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3175, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3297, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3308, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3325, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3326, i32 16 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3326, i32 31 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3328, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3330, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3339, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3344, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3346, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3349, i32 20 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 647, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 660, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 662, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 671, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 673, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 678, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 680, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 706, i32 36 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 708, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 715, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 723, i32 32 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 738, i32 32 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 743, i32 33 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 748, i32 33 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 759, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 762, i32 34 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 768, i32 34 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 790, i32 27 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 793, i32 26 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 796, i32 40 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 810, i32 40 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 423, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 522, i32 33 }
@___asan_gen_.263 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 532, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 943, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1669, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1532, i32 5 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1608, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1615, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2825, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2683, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2696, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2703, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2721, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2728, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2732, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2735, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2739, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 326, i32 6 }
@___asan_gen_.348 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 156, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.351 = private constant [44 x i8] c"../drivers/net/ethernet/freescale/gianfar.c\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2361, i32 3 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_author484, ptr @__UNIQUE_ID_description485, ptr @__UNIQUE_ID_file486, ptr @__UNIQUE_ID_license487, ptr @__exitcall_gfar_driver_exit, ptr @__initcall__kmod_gianfar_driver__496_3647_gfar_driver_init6, ptr @gfar_configure_serdes._entry, ptr @gfar_configure_serdes._entry.66, ptr @gfar_configure_serdes._entry_ptr, ptr @gfar_configure_serdes._entry_ptr.68, ptr @gfar_detect_errata._entry, ptr @gfar_detect_errata._entry_ptr, ptr @gfar_driver_exit, ptr @gfar_of_init._entry, ptr @gfar_of_init._entry.23, ptr @gfar_of_init._entry.26, ptr @gfar_of_init._entry.29, ptr @gfar_of_init._entry.31, ptr @gfar_of_init._entry.34, ptr @gfar_of_init._entry.37, ptr @gfar_of_init._entry.45, ptr @gfar_of_init._entry_ptr, ptr @gfar_of_init._entry_ptr.25, ptr @gfar_of_init._entry_ptr.28, ptr @gfar_of_init._entry_ptr.30, ptr @gfar_of_init._entry_ptr.33, ptr @gfar_of_init._entry_ptr.35, ptr @gfar_of_init._entry_ptr.39, ptr @gfar_of_init._entry_ptr.48, ptr @gfar_probe._entry, ptr @gfar_probe._entry_ptr, ptr @init_phy._entry, ptr @init_phy._entry_ptr, ptr @gfar_driver, ptr @.str.1, ptr @.str.2, ptr @gfar_match, ptr @gfar_pm_ops, ptr @gfar_probe.__key, ptr @.str.3, ptr @gfar_netdev_ops, ptr @gfar_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.32, ptr @.str.36, ptr @.str.38, ptr @gfar_of_init.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @gfar_alloc_tx_queues.__key, ptr @.str.55, ptr @.str.56, ptr @gfar_parse_group.__key, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_of_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_of_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_of_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_of_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_of_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_of_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_of_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_of_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_alloc_tx_queues.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_parse_group.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_detect_errata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_configure_serdes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_configure_serdes._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stop_gfar(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @netif_tx_stop_all_queues(ptr noundef %dev) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !200
  %state = getelementptr i8, ptr %dev, i32 3712
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !201
  %num_grps.i = getelementptr i8, ptr %dev, i32 3728
  %0 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_grps.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not.i = icmp eq i32 %1, 0
  br i1 %cmp8.not.i, label %entry.disable_napi.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.disable_napi.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %disable_napi.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %napi_rx.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.09.i, i32 1
  tail call void @napi_disable(ptr noundef %napi_rx.i) #15
  %napi_tx.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.09.i, i32 2
  tail call void @napi_disable(ptr noundef %napi_tx.i) #15
  %inc.i = add nuw i32 %i.09.i, 1
  %2 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_grps.i, align 16
  %cmp.i = icmp ult i32 %inc.i, %3
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.disable_napi.exit_crit_edge

for.body.i.disable_napi.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %disable_napi.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

disable_napi.exit:                                ; preds = %for.body.i.disable_napi.exit_crit_edge, %entry.disable_napi.exit_crit_edge
  tail call fastcc void @gfar_halt(ptr noundef %add.ptr.i)
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %5) #15
  tail call fastcc void @free_skb_resources(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfar_halt(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 0, i32 3
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 16
  %rqueue = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqueue, i32 0) #15, !srcloc !203
  %tqueue = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tqueue, i32 0) #15, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #15
  %12 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1, align 16
  %num_grps.i.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 16
  %14 = ptrtoint ptr %num_grps.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_grps.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp6.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp6.not.i.i, label %entry.gfar_ints_disable.exit.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.gfar_ints_disable.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_ints_disable.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %regs1.i.i = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %i.07.i.i, i32 3
  %16 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1.i.i, align 16
  %ievent.i.i = getelementptr inbounds %struct.gfar, ptr %17, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent.i.i, i32 -1) #15, !srcloc !203
  %imask.i.i = getelementptr inbounds %struct.gfar, ptr %17, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask.i.i, i32 0) #15, !srcloc !203
  %inc.i.i = add nuw i32 %i.07.i.i, 1
  %18 = ptrtoint ptr %num_grps.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_grps.i.i, align 16
  %cmp.i.i = icmp ult i32 %inc.i.i, %19
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.gfar_ints_disable.exit.i_crit_edge

for.body.i.i.gfar_ints_disable.exit.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_ints_disable.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

gfar_ints_disable.exit.i:                         ; preds = %for.body.i.i.gfar_ints_disable.exit.i_crit_edge, %entry.gfar_ints_disable.exit.i_crit_edge
  %20 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs1, align 16
  %ievent.i39.i = getelementptr inbounds %struct.gfar, ptr %21, i32 0, i32 3
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent.i39.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and.i.i = and i32 %22, 33554688
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554688, i32 %and.i.i)
  %cmp.i40.not.i = icmp eq i32 %and.i.i, 33554688
  br i1 %cmp.i40.not.i, label %gfar_ints_disable.exit.i.gfar_halt_nodisable.exit_crit_edge, label %if.end.i

gfar_ints_disable.exit.i.gfar_halt_nodisable.exit_crit_edge: ; preds = %gfar_ints_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_halt_nodisable.exit

if.end.i:                                         ; preds = %gfar_ints_disable.exit.i
  %dmactrl.i = getelementptr inbounds %struct.gfar, ptr %13, i32 0, i32 10
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmactrl.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %or.i = or i32 %23, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmactrl.i, i32 %or.i) #15, !srcloc !203
  %errata.i.i.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 2
  br label %retry.i

retry.i:                                          ; preds = %__gfar_is_rx_idle.exit.i.retry.i_crit_edge, %if.end.i
  %24 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1, align 16
  %ievent.i4256.i = getelementptr inbounds %struct.gfar, ptr %25, i32 0, i32 3
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent.i4256.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and.i4357.i = and i32 %26, 33554688
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554688, i32 %and.i4357.i)
  %cmp.i4458.i = icmp eq i32 %and.i4357.i, 33554688
  br i1 %cmp.i4458.i, label %retry.i.gfar_halt_nodisable.exit_crit_edge, label %retry.i.do.end.i_crit_edge

retry.i.do.end.i_crit_edge:                       ; preds = %retry.i
  br label %do.end.i

retry.i.gfar_halt_nodisable.exit_crit_edge:       ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_halt_nodisable.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %retry.i.do.end.i_crit_edge
  %timeout.060.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ 1000, %retry.i.do.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !206
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !207
  %dec.i = add nsw i32 %timeout.060.i, -1
  %27 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs1, align 16
  %ievent.i42.i = getelementptr inbounds %struct.gfar, ptr %28, i32 0, i32 3
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent.i42.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and.i43.i = and i32 %29, 33554688
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554688, i32 %and.i43.i)
  %cmp.i44.i = icmp eq i32 %and.i43.i, 33554688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool6.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %cmp.i44.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond.i, label %while.end.i, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

while.end.i:                                      ; preds = %do.end.i
  br i1 %tobool6.not.i, label %if.then14.i, label %if.end16.i

if.then14.i:                                      ; preds = %while.end.i
  %30 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs1, align 16
  %ievent.i47.i = getelementptr inbounds %struct.gfar, ptr %31, i32 0, i32 3
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent.i47.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and.i48.i = and i32 %32, 33554688
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554688, i32 %and.i48.i)
  %cmp.i49.i = icmp eq i32 %and.i48.i, 33554688
  br i1 %cmp.i49.i, label %if.then14.i.gfar_halt_nodisable.exit_crit_edge, label %if.then14.i.land.lhs.true.i_crit_edge

if.then14.i.land.lhs.true.i_crit_edge:            ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

if.then14.i.gfar_halt_nodisable.exit_crit_edge:   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_halt_nodisable.exit

if.end16.i:                                       ; preds = %while.end.i
  br i1 %cmp.i44.i, label %if.end16.i.gfar_halt_nodisable.exit_crit_edge, label %if.end16.i.land.lhs.true.i_crit_edge

if.end16.i.land.lhs.true.i_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

if.end16.i.gfar_halt_nodisable.exit_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_halt_nodisable.exit

land.lhs.true.i:                                  ; preds = %if.end16.i.land.lhs.true.i_crit_edge, %if.then14.i.land.lhs.true.i_crit_edge
  %33 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs1, align 16
  %ievent.i52.i = getelementptr inbounds %struct.gfar, ptr %34, i32 0, i32 3
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent.i52.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and.i53.i = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53.i)
  %tobool19.not.i = icmp eq i32 %and.i53.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true20.i, label %land.lhs.true.i.gfar_halt_nodisable.exit_crit_edge

land.lhs.true.i.gfar_halt_nodisable.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_halt_nodisable.exit

land.lhs.true20.i:                                ; preds = %land.lhs.true.i
  %36 = ptrtoint ptr %errata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %errata.i.i.i, align 8
  %and.i.i.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true20.i.__gfar_is_rx_idle.exit.i_crit_edge, label %if.end.i.i

land.lhs.true20.i.__gfar_is_rx_idle.exit.i_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__gfar_is_rx_idle.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs1, align 16
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 3356
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and.i54.i = lshr i32 %40, 16
  %41 = xor i32 %and.i54.i, %40
  %42 = and i32 %41, 32640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i55.i = icmp eq i32 %42, 0
  %..i.i = zext i1 %cmp.i55.i to i32
  br label %__gfar_is_rx_idle.exit.i

__gfar_is_rx_idle.exit.i:                         ; preds = %if.end.i.i, %land.lhs.true20.i.__gfar_is_rx_idle.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %land.lhs.true20.i.__gfar_is_rx_idle.exit.i_crit_edge ], [ %..i.i, %if.end.i.i ]
  %tobool22.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool22.not.i, label %__gfar_is_rx_idle.exit.i.retry.i_crit_edge, label %__gfar_is_rx_idle.exit.i.gfar_halt_nodisable.exit_crit_edge

__gfar_is_rx_idle.exit.i.gfar_halt_nodisable.exit_crit_edge: ; preds = %__gfar_is_rx_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_halt_nodisable.exit

__gfar_is_rx_idle.exit.i.retry.i_crit_edge:       ; preds = %__gfar_is_rx_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %retry.i

gfar_halt_nodisable.exit:                         ; preds = %__gfar_is_rx_idle.exit.i.gfar_halt_nodisable.exit_crit_edge, %land.lhs.true.i.gfar_halt_nodisable.exit_crit_edge, %if.end16.i.gfar_halt_nodisable.exit_crit_edge, %if.then14.i.gfar_halt_nodisable.exit_crit_edge, %retry.i.gfar_halt_nodisable.exit_crit_edge, %gfar_ints_disable.exit.i.gfar_halt_nodisable.exit_crit_edge
  %maccfg1 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 119
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg1) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and = and i32 %43, -6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1, i32 %and) #15, !srcloc !203
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_skb_resources(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_queues = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp51.not = icmp eq i32 %1, 0
  br i1 %cmp51.not, label %entry.for.cond2.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %if.end.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %num_rx_queues = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp353.not = icmp eq i32 %3, 0
  br i1 %cmp353.not, label %for.cond2.preheader.for.end13_crit_edge, label %for.cond2.preheader.for.body5_crit_edge

for.cond2.preheader.for.body5_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body5

for.cond2.preheader.for.end13_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end13

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 8, i32 %i.052
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %dev = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %qindex = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %qindex to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %qindex, align 2
  %conv = zext i16 %9 to i32
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i, align 128
  %tx_skbuff = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_skbuff, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %for.body
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 2304
  %tx_ring_size.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tx_ring_size.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp56.not.i = icmp eq i16 %15, 0
  br i1 %cmp56.not.i, label %if.then.free_skb_tx_queue.exit_crit_edge, label %for.body.lr.ph.i

if.then.free_skb_tx_queue.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_skb_tx_queue.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %tx_bd_base.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %tx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_bd_base.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc21.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.058.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc22.i, %for.inc21.i.for.body.i_crit_edge ]
  %txbdp.057.i = phi ptr [ %17, %for.body.lr.ph.i ], [ %txbdp.2.i, %for.inc21.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_skbuff, align 8
  %arrayidx.i38 = getelementptr ptr, ptr %19, i32 %i.058.i
  %20 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i38, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %for.body.i.for.inc21.i_crit_edge, label %if.end.i

for.body.i.for.inc21.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc21.i

if.end.i:                                         ; preds = %for.body.i
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i, align 128
  %bufPtr.i = getelementptr inbounds %struct.txbd8, ptr %txbdp.057.i, i32 0, i32 1
  %24 = ptrtoint ptr %bufPtr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bufPtr.i, align 4
  %length.i = getelementptr inbounds %struct.anon.149, ptr %txbdp.057.i, i32 0, i32 1
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %length.i, align 2
  %conv3.i = zext i16 %27 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %25, i32 noundef %conv3.i, i32 noundef 1, i32 noundef 0) #15
  %28 = ptrtoint ptr %txbdp.057.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %txbdp.057.i, align 4
  %29 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_skbuff, align 8
  %arrayidx647.i = getelementptr ptr, ptr %30, i32 %i.058.i
  %31 = ptrtoint ptr %arrayidx647.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx647.i, align 4
  %end.i48.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %end.i48.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i48.i, align 4
  %nr_frags49.i = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %nr_frags49.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nr_frags49.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp951.not.i = icmp eq i8 %36, 0
  br i1 %cmp951.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body11.i_crit_edge

if.end.i.for.body11.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body11.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %if.end.i.for.body11.i_crit_edge
  %j.053.i = phi i32 [ %inc.i, %for.body11.i.for.body11.i_crit_edge ], [ 0, %if.end.i.for.body11.i_crit_edge ]
  %txbdp.152.i = phi ptr [ %incdec.ptr.i, %for.body11.i.for.body11.i_crit_edge ], [ %txbdp.057.i, %if.end.i.for.body11.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.txbd8, ptr %txbdp.152.i, i32 1
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i.i, align 128
  %bufPtr13.i = getelementptr %struct.txbd8, ptr %txbdp.152.i, i32 1, i32 1
  %39 = ptrtoint ptr %bufPtr13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bufPtr13.i, align 4
  %length14.i = getelementptr inbounds %struct.anon.149, ptr %incdec.ptr.i, i32 0, i32 1
  %41 = ptrtoint ptr %length14.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %length14.i, align 2
  %conv15.i = zext i16 %42 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %38, i32 noundef %40, i32 noundef %conv15.i, i32 noundef 1, i32 noundef 0) #15
  %inc.i = add nuw nsw i32 %j.053.i, 1
  %43 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_skbuff, align 8
  %arrayidx6.i = getelementptr ptr, ptr %44, i32 %i.058.i
  %45 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx6.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %nr_frags.i, align 2
  %conv8.i = zext i8 %50 to i32
  %cmp9.i = icmp ult i32 %inc.i, %conv8.i
  br i1 %cmp9.i, label %for.body11.i.for.body11.i_crit_edge, label %for.body11.i.for.end.i_crit_edge

for.body11.i.for.end.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11.i

for.end.i:                                        ; preds = %for.body11.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %txbdp.1.lcssa.i = phi ptr [ %txbdp.057.i, %if.end.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body11.i.for.end.i_crit_edge ]
  %.lcssa.i = phi ptr [ %32, %if.end.i.for.end.i_crit_edge ], [ %46, %for.body11.i.for.end.i_crit_edge ]
  %incdec.ptr16.i = getelementptr %struct.txbd8, ptr %txbdp.1.lcssa.i, i32 1
  tail call void @__dev_kfree_skb_any(ptr noundef %.lcssa.i, i32 noundef 1) #15
  %51 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_skbuff, align 8
  %arrayidx20.i = getelementptr ptr, ptr %52, i32 %i.058.i
  %53 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx20.i, align 4
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %for.end.i, %for.body.i.for.inc21.i_crit_edge
  %txbdp.2.i = phi ptr [ %incdec.ptr16.i, %for.end.i ], [ %txbdp.057.i, %for.body.i.for.inc21.i_crit_edge ]
  %inc22.i = add nuw nsw i32 %i.058.i, 1
  %54 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tx_ring_size.i, align 2
  %conv.i = zext i16 %55 to i32
  %cmp.i = icmp ult i32 %inc22.i, %conv.i
  br i1 %cmp.i, label %for.inc21.i.for.body.i_crit_edge, label %for.inc21.i.free_skb_tx_queue.exit_crit_edge

for.inc21.i.free_skb_tx_queue.exit_crit_edge:     ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_skb_tx_queue.exit

for.inc21.i.for.body.i_crit_edge:                 ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

free_skb_tx_queue.exit:                           ; preds = %for.inc21.i.free_skb_tx_queue.exit_crit_edge, %if.then.free_skb_tx_queue.exit_crit_edge
  %56 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_skbuff, align 8
  tail call void @kfree(ptr noundef %57) #15
  %58 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %tx_skbuff, align 8
  br label %if.end

if.end:                                           ; preds = %free_skb_tx_queue.exit, %for.body.if.end_crit_edge
  %state.i = getelementptr %struct.netdev_queue, ptr %11, i32 %conv, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #15
  %dql.i = getelementptr %struct.netdev_queue, ptr %11, i32 %conv, i32 15
  tail call void @dql_reset(ptr noundef %dql.i) #15
  %inc = add nuw i32 %i.052, 1
  %59 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_tx_queues, align 8
  %cmp = icmp ult i32 %inc, %60
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.cond2.preheader_crit_edge

if.end.for.cond2.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond2.preheader

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body5:                                        ; preds = %for.inc11.for.body5_crit_edge, %for.cond2.preheader.for.body5_crit_edge
  %i.154 = phi i32 [ %inc12, %for.inc11.for.body5_crit_edge ], [ 0, %for.cond2.preheader.for.body5_crit_edge ]
  %arrayidx7 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 9, i32 %i.154
  %61 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx7, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 128
  %tobool8.not = icmp eq ptr %64, null
  br i1 %tobool8.not, label %for.body5.for.inc11_crit_edge, label %if.then9

for.body5.for.inc11_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc11

if.then9:                                         ; preds = %for.body5
  %rx_bd_base.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %rx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rx_bd_base.i, align 4
  %skb.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %62, i32 0, i32 10
  %67 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %skb.i, align 32
  tail call void @consume_skb(ptr noundef %68) #15
  %rx_ring_size.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %62, i32 0, i32 4
  %69 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %rx_ring_size.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp20.not.i = icmp eq i16 %70, 0
  br i1 %cmp20.not.i, label %if.then9.free_skb_rx_queue.exit_crit_edge, label %for.body.lr.ph.i40

if.then9.free_skb_rx_queue.exit_crit_edge:        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_skb_rx_queue.exit

for.body.lr.ph.i40:                               ; preds = %if.then9
  %dev.i39 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %62, i32 0, i32 3
  br label %for.body.i44

for.body.i44:                                     ; preds = %cleanup.i.for.body.i44_crit_edge, %for.body.lr.ph.i40
  %rxbdp.023.i = phi ptr [ %66, %for.body.lr.ph.i40 ], [ %incdec.ptr.i42, %cleanup.i.for.body.i44_crit_edge ]
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i40 ], [ %inc.i47, %cleanup.i.for.body.i44_crit_edge ]
  %71 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %62, align 128
  %73 = ptrtoint ptr %rxbdp.023.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %rxbdp.023.i, align 4
  %bufPtr.i41 = getelementptr inbounds %struct.rxbd8, ptr %rxbdp.023.i, i32 0, i32 1
  %74 = ptrtoint ptr %bufPtr.i41 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %bufPtr.i41, align 4
  %incdec.ptr.i42 = getelementptr %struct.rxbd8, ptr %rxbdp.023.i, i32 1
  %page.i = getelementptr %struct.gfar_rx_buff, ptr %72, i32 %i.021.i, i32 1
  %75 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %page.i, align 4
  %tobool.not.i43 = icmp eq ptr %76, null
  br i1 %tobool.not.i43, label %for.body.i44.cleanup.i_crit_edge, label %if.end.i46

for.body.i44.cleanup.i_crit_edge:                 ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.end.i46:                                       ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i45 = getelementptr %struct.gfar_rx_buff, ptr %72, i32 %i.021.i
  %77 = ptrtoint ptr %dev.i39 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i39, align 4
  %79 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i45, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %78, i32 noundef %80, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #15
  %81 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %page.i, align 4
  tail call void @__free_pages(ptr noundef %82, i32 noundef 0) #15
  %83 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %page.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i46, %for.body.i44.cleanup.i_crit_edge
  %inc.i47 = add nuw nsw i32 %i.021.i, 1
  %84 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %rx_ring_size.i, align 16
  %conv.i48 = zext i16 %85 to i32
  %cmp.i49 = icmp ult i32 %inc.i47, %conv.i48
  br i1 %cmp.i49, label %cleanup.i.for.body.i44_crit_edge, label %cleanup.i.free_skb_rx_queue.exit_crit_edge

cleanup.i.free_skb_rx_queue.exit_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_skb_rx_queue.exit

cleanup.i.for.body.i44_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i44

free_skb_rx_queue.exit:                           ; preds = %cleanup.i.free_skb_rx_queue.exit_crit_edge, %if.then9.free_skb_rx_queue.exit_crit_edge
  %86 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %62, align 128
  tail call void @kfree(ptr noundef %87) #15
  %88 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %62, align 128
  br label %for.inc11

for.inc11:                                        ; preds = %free_skb_rx_queue.exit, %for.body5.for.inc11_crit_edge
  %inc12 = add nuw i32 %i.154, 1
  %89 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_rx_queues, align 4
  %cmp3 = icmp ult i32 %inc12, %90
  br i1 %cmp3, label %for.inc11.for.body5_crit_edge, label %for.inc11.for.end13_crit_edge

for.inc11.for.end13_crit_edge:                    ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end13

for.inc11.for.body5_crit_edge:                    ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5

for.end13:                                        ; preds = %for.inc11.for.end13_crit_edge, %for.cond2.preheader.for.end13_crit_edge
  %91 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv, align 128
  %total_tx_ring_size = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 31
  %93 = ptrtoint ptr %total_tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %total_tx_ring_size, align 4
  %total_rx_ring_size = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 32
  %95 = ptrtoint ptr %total_rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %total_rx_ring_size, align 16
  %mul37 = add i32 %96, %94
  %add = shl i32 %mul37, 3
  %tx_queue16 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 8
  %97 = ptrtoint ptr %tx_queue16 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tx_queue16, align 4
  %tx_bd_base = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %tx_bd_base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tx_bd_base, align 4
  %tx_bd_dma_base = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %98, i32 0, i32 15
  %101 = ptrtoint ptr %tx_bd_dma_base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tx_bd_dma_base, align 4
  tail call void @dma_free_attrs(ptr noundef %92, i32 noundef %add, ptr noundef %100, i32 noundef %102, i32 noundef 0) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @startup_gfar(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call void @gfar_mac_reset(ptr noundef %add.ptr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #15
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr.i, align 4, !annotation !208
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 128
  %total_tx_ring_size.i = getelementptr i8, ptr %ndev, i32 3980
  %3 = ptrtoint ptr %total_tx_ring_size.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %total_tx_ring_size.i, align 4
  %num_tx_queues.i = getelementptr i8, ptr %ndev, i32 3720
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp190.not.i = icmp eq i32 %5, 0
  br i1 %cmp190.not.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.0191.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.0191.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tx_ring_size.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tx_ring_size.i, align 2
  %conv.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %total_tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_tx_ring_size.i, align 4
  %add.i = add i32 %11, %conv.i
  store i32 %add.i, ptr %total_tx_ring_size.i, align 4
  %inc.i = add nuw i32 %i.0191.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %total_rx_ring_size.i = getelementptr i8, ptr %ndev, i32 3984
  %12 = ptrtoint ptr %total_rx_ring_size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %total_rx_ring_size.i, align 16
  %num_rx_queues.i = getelementptr i8, ptr %ndev, i32 3724
  %13 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5192.not.i = icmp eq i32 %14, 0
  br i1 %cmp5192.not.i, label %for.end.i.for.end15.i_crit_edge, label %for.end.i.for.body7.i_crit_edge

for.end.i.for.body7.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body7.i

for.end.i.for.end15.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end15.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.end.i.for.body7.i_crit_edge
  %i.1193.i = phi i32 [ %inc14.i, %for.body7.i.for.body7.i_crit_edge ], [ 0, %for.end.i.for.body7.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.1193.i
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx9.i, align 4
  %rx_ring_size.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rx_ring_size.i, align 16
  %conv10.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %total_rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %total_rx_ring_size.i, align 16
  %add12.i = add i32 %20, %conv10.i
  store i32 %add12.i, ptr %total_rx_ring_size.i, align 16
  %inc14.i = add nuw i32 %i.1193.i, 1
  %exitcond215.not.i = icmp eq i32 %inc14.i, %14
  br i1 %exitcond215.not.i, label %for.body7.i.for.end15.i_crit_edge, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7.i

for.body7.i.for.end15.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end15.i

for.end15.i:                                      ; preds = %for.body7.i.for.end15.i_crit_edge, %for.end.i.for.end15.i_crit_edge
  %21 = ptrtoint ptr %total_tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_tx_ring_size.i, align 4
  %23 = ptrtoint ptr %total_rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_rx_ring_size.i, align 16
  %mul175.i = add i32 %24, %22
  %add19.i = shl i32 %mul175.i, 3
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef %add19.i, ptr noundef nonnull %addr.i, i32 noundef 3264, i32 noundef 0) #15
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.end15.i.gfar_alloc_skb_resources.exit_crit_edge, label %for.cond21.preheader.i

for.end15.i.gfar_alloc_skb_resources.exit_crit_edge: ; preds = %for.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_alloc_skb_resources.exit

for.cond21.preheader.i:                           ; preds = %for.end15.i
  %25 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp23195.not.i = icmp eq i32 %26, 0
  br i1 %cmp23195.not.i, label %for.cond21.preheader.i.for.cond39.preheader.i_crit_edge, label %for.body25.preheader.i

for.cond21.preheader.i.for.cond39.preheader.i_crit_edge: ; preds = %for.cond21.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond39.preheader.i

for.body25.preheader.i:                           ; preds = %for.cond21.preheader.i
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %addr.promoted.i = load i32, ptr %addr.i, align 4
  br label %for.body25.i

for.cond21.for.cond39.preheader_crit_edge.i:      ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add32.i, ptr %addr.i, align 4
  br label %for.cond39.preheader.i

for.cond39.preheader.i:                           ; preds = %for.cond21.for.cond39.preheader_crit_edge.i, %for.cond21.preheader.i.for.cond39.preheader.i_crit_edge
  %vaddr.0.lcssa.i = phi ptr [ %add.ptr.i23, %for.cond21.for.cond39.preheader_crit_edge.i ], [ %call.i.i, %for.cond21.preheader.i.for.cond39.preheader.i_crit_edge ]
  %29 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp41202.not.i = icmp eq i32 %30, 0
  br i1 %cmp41202.not.i, label %for.cond39.preheader.i.for.cond59.preheader.i_crit_edge, label %for.body43.preheader.i

for.cond39.preheader.i.for.cond59.preheader.i_crit_edge: ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond59.preheader.i

for.body43.preheader.i:                           ; preds = %for.cond39.preheader.i
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %addr.promoted200.i = load i32, ptr %addr.i, align 4
  br label %for.body43.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.body25.preheader.i
  %i.2198.i = phi i32 [ %inc37.i, %for.body25.i.for.body25.i_crit_edge ], [ 0, %for.body25.preheader.i ]
  %vaddr.0197.i = phi ptr [ %add.ptr.i23, %for.body25.i.for.body25.i_crit_edge ], [ %call.i.i, %for.body25.preheader.i ]
  %add32194196.i = phi i32 [ %add32.i, %for.body25.i.for.body25.i_crit_edge ], [ %addr.promoted.i, %for.body25.preheader.i ]
  %arrayidx27.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.2198.i
  %32 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx27.i, align 4
  %tx_bd_base.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %tx_bd_base.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %vaddr.0197.i, ptr %tx_bd_base.i, align 4
  %tx_bd_dma_base.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %33, i32 0, i32 15
  %35 = ptrtoint ptr %tx_bd_dma_base.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add32194196.i, ptr %tx_bd_dma_base.i, align 4
  %dev28.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %33, i32 0, i32 8
  %36 = ptrtoint ptr %dev28.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ndev, ptr %dev28.i, align 4
  %tx_ring_size29.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %33, i32 0, i32 5
  %37 = ptrtoint ptr %tx_ring_size29.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tx_ring_size29.i, align 2
  %conv30.i = zext i16 %38 to i32
  %mul31.i = shl nuw nsw i32 %conv30.i, 3
  %add32.i = add i32 %mul31.i, %add32194196.i
  %add.ptr.i23 = getelementptr i8, ptr %vaddr.0197.i, i32 %mul31.i
  %inc37.i = add nuw i32 %i.2198.i, 1
  %39 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_tx_queues.i, align 8
  %cmp23.i = icmp ult i32 %inc37.i, %40
  br i1 %cmp23.i, label %for.body25.i.for.body25.i_crit_edge, label %for.cond21.for.cond39.preheader_crit_edge.i

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body25.i

for.cond39.for.cond59.preheader_crit_edge.i:      ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add51.i, ptr %addr.i, align 4
  br label %for.cond59.preheader.i

for.cond59.preheader.i:                           ; preds = %for.cond39.for.cond59.preheader_crit_edge.i, %for.cond39.preheader.i.for.cond59.preheader.i_crit_edge
  %42 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp61210.not.i = icmp eq i32 %43, 0
  br i1 %cmp61210.not.i, label %for.cond59.preheader.i.for.cond87.preheader.i_crit_edge, label %for.cond59.preheader.i.for.body63.i_crit_edge

for.cond59.preheader.i.for.body63.i_crit_edge:    ; preds = %for.cond59.preheader.i
  br label %for.body63.i

for.cond59.preheader.i.for.cond87.preheader.i_crit_edge: ; preds = %for.cond59.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond87.preheader.i

for.body43.i:                                     ; preds = %for.body43.i.for.body43.i_crit_edge, %for.body43.preheader.i
  %i.3205.i = phi i32 [ %inc57.i, %for.body43.i.for.body43.i_crit_edge ], [ 0, %for.body43.preheader.i ]
  %vaddr.1204.i = phi ptr [ %add.ptr55.i, %for.body43.i.for.body43.i_crit_edge ], [ %vaddr.0.lcssa.i, %for.body43.preheader.i ]
  %add51201203.i = phi i32 [ %add51.i, %for.body43.i.for.body43.i_crit_edge ], [ %addr.promoted200.i, %for.body43.preheader.i ]
  %arrayidx45.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.3205.i
  %44 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx45.i, align 4
  %rx_bd_base.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %rx_bd_base.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %vaddr.1204.i, ptr %rx_bd_base.i, align 4
  %rx_bd_dma_base.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %45, i32 0, i32 15
  %47 = ptrtoint ptr %rx_bd_dma_base.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add51201203.i, ptr %rx_bd_dma_base.i, align 4
  %ndev46.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %ndev46.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %ndev, ptr %ndev46.i, align 8
  %dev47.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %45, i32 0, i32 3
  %49 = ptrtoint ptr %dev47.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %2, ptr %dev47.i, align 4
  %rx_ring_size48.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %45, i32 0, i32 4
  %50 = ptrtoint ptr %rx_ring_size48.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %rx_ring_size48.i, align 16
  %conv49.i = zext i16 %51 to i32
  %mul50.i = shl nuw nsw i32 %conv49.i, 3
  %add51.i = add i32 %mul50.i, %add51201203.i
  %add.ptr55.i = getelementptr i8, ptr %vaddr.1204.i, i32 %mul50.i
  %inc57.i = add nuw i32 %i.3205.i, 1
  %52 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_rx_queues.i, align 4
  %cmp41.i = icmp ult i32 %inc57.i, %53
  br i1 %cmp41.i, label %for.body43.i.for.body43.i_crit_edge, label %for.cond39.for.cond59.preheader_crit_edge.i

for.body43.i.for.body43.i_crit_edge:              ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body43.i

for.cond87.preheader.i:                           ; preds = %for.inc84.i.for.cond87.preheader.i_crit_edge, %for.cond59.preheader.i.for.cond87.preheader.i_crit_edge
  %54 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp89212.not.i = icmp eq i32 %55, 0
  br i1 %cmp89212.not.i, label %for.cond87.preheader.i.for.end103.i_crit_edge, label %for.cond87.preheader.i.for.body91.i_crit_edge

for.cond87.preheader.i.for.body91.i_crit_edge:    ; preds = %for.cond87.preheader.i
  br label %for.body91.i

for.cond87.preheader.i.for.end103.i_crit_edge:    ; preds = %for.cond87.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end103.i

for.body63.i:                                     ; preds = %for.inc84.i.for.body63.i_crit_edge, %for.cond59.preheader.i.for.body63.i_crit_edge
  %i.4211.i = phi i32 [ %inc85.i, %for.inc84.i.for.body63.i_crit_edge ], [ 0, %for.cond59.preheader.i.for.body63.i_crit_edge ]
  %arrayidx65.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.4211.i
  %56 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx65.i, align 4
  %tx_ring_size66.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %tx_ring_size66.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %tx_ring_size66.i, align 2
  %conv67.i = zext i16 %59 to i32
  %60 = shl nuw nsw i32 %conv67.i, 2
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %60, i32 noundef 3264) #18
  %tx_skbuff.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %57, i32 0, i32 9
  %61 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call8.i.i, ptr %tx_skbuff.i, align 8
  %tobool70.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool70.not.i, label %for.body63.i.cleanup.i_crit_edge, label %for.cond73.preheader.i

for.body63.i.cleanup.i_crit_edge:                 ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

for.cond73.preheader.i:                           ; preds = %for.body63.i
  %62 = ptrtoint ptr %tx_ring_size66.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %tx_ring_size66.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp76208.not.i = icmp eq i16 %63, 0
  br i1 %cmp76208.not.i, label %for.cond73.preheader.i.for.inc84.i_crit_edge, label %for.cond73.preheader.i.for.body78.i_crit_edge

for.cond73.preheader.i.for.body78.i_crit_edge:    ; preds = %for.cond73.preheader.i
  br label %for.body78.i

for.cond73.preheader.i.for.inc84.i_crit_edge:     ; preds = %for.cond73.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc84.i

for.body78.i:                                     ; preds = %for.body78.i.for.body78.i_crit_edge, %for.cond73.preheader.i.for.body78.i_crit_edge
  %j.0209.i = phi i32 [ %inc82.i, %for.body78.i.for.body78.i_crit_edge ], [ 0, %for.cond73.preheader.i.for.body78.i_crit_edge ]
  %64 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_skbuff.i, align 8
  %arrayidx80.i = getelementptr ptr, ptr %65, i32 %j.0209.i
  %66 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx80.i, align 4
  %inc82.i = add nuw nsw i32 %j.0209.i, 1
  %67 = ptrtoint ptr %tx_ring_size66.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %tx_ring_size66.i, align 2
  %conv75.i = zext i16 %68 to i32
  %cmp76.i = icmp ult i32 %inc82.i, %conv75.i
  br i1 %cmp76.i, label %for.body78.i.for.body78.i_crit_edge, label %for.body78.i.for.inc84.i_crit_edge

for.body78.i.for.inc84.i_crit_edge:               ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc84.i

for.body78.i.for.body78.i_crit_edge:              ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body78.i

for.inc84.i:                                      ; preds = %for.body78.i.for.inc84.i_crit_edge, %for.cond73.preheader.i.for.inc84.i_crit_edge
  %inc85.i = add nuw i32 %i.4211.i, 1
  %69 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_tx_queues.i, align 8
  %cmp61.i = icmp ult i32 %inc85.i, %70
  br i1 %cmp61.i, label %for.inc84.i.for.body63.i_crit_edge, label %for.inc84.i.for.cond87.preheader.i_crit_edge

for.inc84.i.for.cond87.preheader.i_crit_edge:     ; preds = %for.inc84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond87.preheader.i

for.inc84.i.for.body63.i_crit_edge:               ; preds = %for.inc84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body63.i

for.body91.i:                                     ; preds = %for.inc101.i.for.body91.i_crit_edge, %for.cond87.preheader.i.for.body91.i_crit_edge
  %i.5213.i = phi i32 [ %inc102.i, %for.inc101.i.for.body91.i_crit_edge ], [ 0, %for.cond87.preheader.i.for.body91.i_crit_edge ]
  %arrayidx93.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.5213.i
  %71 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx93.i, align 4
  %rx_ring_size94.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %rx_ring_size94.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %rx_ring_size94.i, align 16
  %conv95.i = zext i16 %74 to i32
  %75 = mul nuw nsw i32 %conv95.i, 12
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %75, i32 noundef 3520) #18
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call8.i.i.i, ptr %72, align 128
  %tobool98.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool98.not.i, label %for.body91.i.cleanup.i_crit_edge, label %for.inc101.i

for.body91.i.cleanup.i_crit_edge:                 ; preds = %for.body91.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

for.inc101.i:                                     ; preds = %for.body91.i
  %inc102.i = add nuw i32 %i.5213.i, 1
  %77 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_rx_queues.i, align 4
  %cmp89.i = icmp ult i32 %inc102.i, %78
  br i1 %cmp89.i, label %for.inc101.i.for.body91.i_crit_edge, label %for.inc101.i.for.end103.i_crit_edge

for.inc101.i.for.end103.i_crit_edge:              ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end103.i

for.inc101.i.for.body91.i_crit_edge:              ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body91.i

for.end103.i:                                     ; preds = %for.inc101.i.for.end103.i_crit_edge, %for.cond87.preheader.i.for.end103.i_crit_edge
  %regs1.i.i = getelementptr i8, ptr %ndev, i32 2928
  %79 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs1.i.i, align 16
  %81 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp64.not.i.i = icmp eq i32 %82, 0
  br i1 %cmp64.not.i.i, label %for.end103.i.for.end18.i.i_crit_edge, label %for.end103.i.for.body.i.i_crit_edge

for.end103.i.for.body.i.i_crit_edge:              ; preds = %for.end103.i
  br label %for.body.i.i

for.end103.i.for.end18.i.i_crit_edge:             ; preds = %for.end103.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end18.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.end103.i.for.body.i.i_crit_edge
  %i.065.i.i = phi i32 [ %inc17.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.end103.i.for.body.i.i_crit_edge ]
  %arrayidx3.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.065.i.i
  %83 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx3.i.i, align 4
  %tx_ring_size.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %tx_ring_size.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %tx_ring_size.i.i, align 2
  %conv.i.i = zext i16 %86 to i32
  %num_txbdfree.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %84, i32 0, i32 3
  %87 = ptrtoint ptr %num_txbdfree.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv.i.i, ptr %num_txbdfree.i.i, align 4
  %tx_bd_base.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %84, i32 0, i32 1
  %88 = ptrtoint ptr %tx_bd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tx_bd_base.i.i, align 4
  %dirty_tx.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %84, i32 0, i32 10
  %90 = ptrtoint ptr %dirty_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %dirty_tx.i.i, align 4
  %cur_tx.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %84, i32 0, i32 2
  %91 = ptrtoint ptr %cur_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %89, ptr %cur_tx.i.i, align 16
  %skb_curtx.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %84, i32 0, i32 4
  %92 = ptrtoint ptr %skb_curtx.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %skb_curtx.i.i, align 8
  %skb_dirtytx.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %84, i32 0, i32 11
  %93 = ptrtoint ptr %skb_dirtytx.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %skb_dirtytx.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp961.not.i.i = icmp eq i16 %86, 0
  br i1 %cmp961.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body11.i.i_crit_edge

for.body.i.i.for.body11.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body11.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body11.i.i:                                   ; preds = %for.body11.i.i.for.body11.i.i_crit_edge, %for.body.i.i.for.body11.i.i_crit_edge
  %j.063.i.i = phi i32 [ %inc.i.i, %for.body11.i.i.for.body11.i.i_crit_edge ], [ 0, %for.body.i.i.for.body11.i.i_crit_edge ]
  %txbdp.062.i.i = phi ptr [ %incdec.ptr.i.i, %for.body11.i.i.for.body11.i.i_crit_edge ], [ %89, %for.body.i.i.for.body11.i.i_crit_edge ]
  %94 = ptrtoint ptr %txbdp.062.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %txbdp.062.i.i, align 4
  %bufPtr.i.i = getelementptr inbounds %struct.txbd8, ptr %txbdp.062.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %bufPtr.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %bufPtr.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.txbd8, ptr %txbdp.062.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %j.063.i.i, 1
  %96 = ptrtoint ptr %tx_ring_size.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %tx_ring_size.i.i, align 2
  %conv8.i.i = zext i16 %97 to i32
  %cmp9.i.i = icmp ult i32 %inc.i.i, %conv8.i.i
  br i1 %cmp9.i.i, label %for.body11.i.i.for.body11.i.i_crit_edge, label %for.body11.i.i.for.end.i.i_crit_edge

for.body11.i.i.for.end.i.i_crit_edge:             ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body11.i.i.for.body11.i.i_crit_edge:          ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11.i.i

for.end.i.i:                                      ; preds = %for.body11.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %txbdp.0.lcssa.i.i = phi ptr [ %89, %for.body.i.i.for.end.i.i_crit_edge ], [ %incdec.ptr.i.i, %for.body11.i.i.for.end.i.i_crit_edge ]
  %incdec.ptr12.i.i = getelementptr %struct.txbd8, ptr %txbdp.0.lcssa.i.i, i32 -1
  %98 = ptrtoint ptr %incdec.ptr12.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %incdec.ptr12.i.i, align 4
  %100 = or i16 %99, 8192
  store i16 %100, ptr %incdec.ptr12.i.i, align 4
  %inc17.i.i = add nuw i32 %i.065.i.i, 1
  %101 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_tx_queues.i, align 8
  %cmp.i.i = icmp ult i32 %inc17.i.i, %102
  br i1 %cmp.i.i, label %for.end.i.i.for.body.i.i_crit_edge, label %for.end.i.i.for.end18.i.i_crit_edge

for.end.i.i.for.end18.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end18.i.i

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.end18.i.i:                                    ; preds = %for.end.i.i.for.end18.i.i_crit_edge, %for.end103.i.for.end18.i.i_crit_edge
  %103 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp2066.not.i.i = icmp eq i32 %104, 0
  br i1 %cmp2066.not.i.i, label %for.end18.i.i.if.end_crit_edge, label %gfar_rxbd_unused.exit.preheader.i.i

for.end18.i.i.if.end_crit_edge:                   ; preds = %for.end18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

gfar_rxbd_unused.exit.preheader.i.i:              ; preds = %for.end18.i.i
  %rfbptr0.i.i = getelementptr inbounds %struct.gfar, ptr %80, i32 0, i32 196
  br label %gfar_rxbd_unused.exit.i.i

gfar_rxbd_unused.exit.i.i:                        ; preds = %gfar_rxbd_unused.exit.i.i.gfar_rxbd_unused.exit.i.i_crit_edge, %gfar_rxbd_unused.exit.preheader.i.i
  %i.168.i.i = phi i32 [ %inc28.i.i, %gfar_rxbd_unused.exit.i.i.gfar_rxbd_unused.exit.i.i_crit_edge ], [ 0, %gfar_rxbd_unused.exit.preheader.i.i ]
  %rfbptr.067.i.i = phi ptr [ %add.ptr.i180.i, %gfar_rxbd_unused.exit.i.i.gfar_rxbd_unused.exit.i.i_crit_edge ], [ %rfbptr0.i.i, %gfar_rxbd_unused.exit.preheader.i.i ]
  %arrayidx24.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.168.i.i
  %105 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx24.i.i, align 4
  %next_to_clean.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %106, i32 0, i32 7
  %107 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %next_to_clean.i.i, align 8
  %next_to_use.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %106, i32 0, i32 8
  %108 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %next_to_use.i.i, align 2
  %next_to_alloc.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %106, i32 0, i32 9
  %109 = ptrtoint ptr %next_to_alloc.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %next_to_alloc.i.i, align 4
  %rx_ring_size.i.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %106, i32 0, i32 4
  %110 = ptrtoint ptr %rx_ring_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %rx_ring_size.i.i.i, align 16
  %conv8.i.i.i = zext i16 %111 to i32
  %sub14.i.i.i = add nsw i32 %conv8.i.i.i, -1
  call fastcc void @gfar_alloc_rx_buffs(ptr noundef %106, i32 noundef %sub14.i.i.i) #15
  %rfbptr26.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %106, i32 0, i32 12
  %112 = ptrtoint ptr %rfbptr26.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %rfbptr.067.i.i, ptr %rfbptr26.i.i, align 64
  %add.ptr.i180.i = getelementptr i32, ptr %rfbptr.067.i.i, i32 2
  %inc28.i.i = add nuw i32 %i.168.i.i, 1
  %113 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %num_rx_queues.i, align 4
  %cmp20.i.i = icmp ult i32 %inc28.i.i, %114
  br i1 %cmp20.i.i, label %gfar_rxbd_unused.exit.i.i.gfar_rxbd_unused.exit.i.i_crit_edge, label %gfar_rxbd_unused.exit.i.i.if.end_crit_edge

gfar_rxbd_unused.exit.i.i.if.end_crit_edge:       ; preds = %gfar_rxbd_unused.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

gfar_rxbd_unused.exit.i.i.gfar_rxbd_unused.exit.i.i_crit_edge: ; preds = %gfar_rxbd_unused.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_rxbd_unused.exit.i.i

cleanup.i:                                        ; preds = %for.body91.i.cleanup.i_crit_edge, %for.body63.i.cleanup.i_crit_edge
  call fastcc void @free_skb_resources(ptr noundef %add.ptr.i) #15
  br label %gfar_alloc_skb_resources.exit

gfar_alloc_skb_resources.exit:                    ; preds = %cleanup.i, %for.end15.i.gfar_alloc_skb_resources.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #15
  br label %cleanup

if.end:                                           ; preds = %gfar_rxbd_unused.exit.i.i.if.end_crit_edge, %for.end18.i.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #15
  %115 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs1.i.i, align 16
  %117 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp24.not.i = icmp eq i32 %118, 0
  br i1 %cmp24.not.i, label %if.end.for.end.i30_crit_edge, label %for.body.preheader.i

if.end.for.end.i30_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i30

for.body.preheader.i:                             ; preds = %if.end
  %tbase0.i = getelementptr inbounds %struct.gfar, ptr %116, i32 0, i32 52
  br label %for.body.i28

for.body.i28:                                     ; preds = %for.body.i28.for.body.i28_crit_edge, %for.body.preheader.i
  %i.026.i = phi i32 [ %inc.i27, %for.body.i28.for.body.i28_crit_edge ], [ 0, %for.body.preheader.i ]
  %baddr.025.i = phi ptr [ %add.ptr.i26, %for.body.i28.for.body.i28_crit_edge ], [ %tbase0.i, %for.body.preheader.i ]
  %arrayidx2.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.026.i
  %119 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx2.i, align 4
  %tx_bd_dma_base.i25 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %120, i32 0, i32 15
  %121 = ptrtoint ptr %tx_bd_dma_base.i25 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tx_bd_dma_base.i25, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %baddr.025.i, i32 %122) #15, !srcloc !203
  %add.ptr.i26 = getelementptr i32, ptr %baddr.025.i, i32 2
  %inc.i27 = add nuw i32 %i.026.i, 1
  %123 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_tx_queues.i, align 8
  %cmp.i = icmp ult i32 %inc.i27, %124
  br i1 %cmp.i, label %for.body.i28.for.body.i28_crit_edge, label %for.body.i28.for.end.i30_crit_edge

for.body.i28.for.end.i30_crit_edge:               ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i30

for.body.i28.for.body.i28_crit_edge:              ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i28

for.end.i30:                                      ; preds = %for.body.i28.for.end.i30_crit_edge, %if.end.for.end.i30_crit_edge
  %125 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp427.not.i = icmp eq i32 %126, 0
  br i1 %cmp427.not.i, label %for.end.i30.gfar_init_tx_rx_base.exit_crit_edge, label %for.body5.preheader.i

for.end.i30.gfar_init_tx_rx_base.exit_crit_edge:  ; preds = %for.end.i30
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_init_tx_rx_base.exit

for.body5.preheader.i:                            ; preds = %for.end.i30
  %rbase0.i = getelementptr inbounds %struct.gfar, ptr %116, i32 0, i32 103
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.body5.preheader.i
  %i.129.i = phi i32 [ %inc9.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body5.preheader.i ]
  %baddr.128.i = phi ptr [ %add.ptr7.i, %for.body5.i.for.body5.i_crit_edge ], [ %rbase0.i, %for.body5.preheader.i ]
  %arrayidx6.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.129.i
  %127 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx6.i, align 4
  %rx_bd_dma_base.i31 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %128, i32 0, i32 15
  %129 = ptrtoint ptr %rx_bd_dma_base.i31 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rx_bd_dma_base.i31, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %baddr.128.i, i32 %130) #15, !srcloc !203
  %add.ptr7.i = getelementptr i32, ptr %baddr.128.i, i32 2
  %inc9.i = add nuw i32 %i.129.i, 1
  %131 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_rx_queues.i, align 4
  %cmp4.i = icmp ult i32 %inc9.i, %132
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.gfar_init_tx_rx_base.exit_crit_edge

for.body5.i.gfar_init_tx_rx_base.exit_crit_edge:  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_init_tx_rx_base.exit

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5.i

gfar_init_tx_rx_base.exit:                        ; preds = %for.body5.i.gfar_init_tx_rx_base.exit_crit_edge, %for.end.i30.gfar_init_tx_rx_base.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !209
  %state = getelementptr i8, ptr %ndev, i32 3712
  call void @_clear_bit(i32 noundef 1, ptr noundef %state) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !210
  call fastcc void @gfar_start(ptr noundef %add.ptr.i)
  %oldlink = getelementptr i8, ptr %ndev, i32 3920
  %133 = ptrtoint ptr %oldlink to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %oldlink, align 16
  %oldspeed = getelementptr i8, ptr %ndev, i32 3912
  %134 = ptrtoint ptr %oldspeed to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %oldspeed, align 8
  %oldduplex = getelementptr i8, ptr %ndev, i32 3916
  %135 = ptrtoint ptr %oldduplex to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -1, ptr %oldduplex, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %136 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %phydev, align 16
  call void @phy_start(ptr noundef %137) #15
  %num_grps.i = getelementptr i8, ptr %ndev, i32 3728
  %138 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %num_grps.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp8.not.i = icmp eq i32 %139, 0
  br i1 %cmp8.not.i, label %gfar_init_tx_rx_base.exit.enable_napi.exit_crit_edge, label %gfar_init_tx_rx_base.exit.for.body.i34_crit_edge

gfar_init_tx_rx_base.exit.for.body.i34_crit_edge: ; preds = %gfar_init_tx_rx_base.exit
  br label %for.body.i34

gfar_init_tx_rx_base.exit.enable_napi.exit_crit_edge: ; preds = %gfar_init_tx_rx_base.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %enable_napi.exit

for.body.i34:                                     ; preds = %for.body.i34.for.body.i34_crit_edge, %gfar_init_tx_rx_base.exit.for.body.i34_crit_edge
  %i.09.i = phi i32 [ %inc.i32, %for.body.i34.for.body.i34_crit_edge ], [ 0, %gfar_init_tx_rx_base.exit.for.body.i34_crit_edge ]
  %napi_rx.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.09.i, i32 1
  call void @napi_enable(ptr noundef %napi_rx.i) #15
  %napi_tx.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.09.i, i32 2
  call void @napi_enable(ptr noundef %napi_tx.i) #15
  %inc.i32 = add nuw i32 %i.09.i, 1
  %140 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %num_grps.i, align 16
  %cmp.i33 = icmp ult i32 %inc.i32, %141
  br i1 %cmp.i33, label %for.body.i34.for.body.i34_crit_edge, label %for.body.i34.enable_napi.exit_crit_edge

for.body.i34.enable_napi.exit_crit_edge:          ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #17
  br label %enable_napi.exit

for.body.i34.for.body.i34_crit_edge:              ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i34

enable_napi.exit:                                 ; preds = %for.body.i34.enable_napi.exit_crit_edge, %gfar_init_tx_rx_base.exit.enable_napi.exit_crit_edge
  %num_tx_queues.i36 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %142 = ptrtoint ptr %num_tx_queues.i36 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %num_tx_queues.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp4.not.i = icmp eq i32 %143, 0
  br i1 %cmp4.not.i, label %enable_napi.exit.cleanup_crit_edge, label %for.body.lr.ph.i

enable_napi.exit.cleanup_crit_edge:               ; preds = %enable_napi.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %enable_napi.exit
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body.i39

for.body.i39:                                     ; preds = %for.body.i39.for.body.i39_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i37, %for.body.i39.for.body.i39_crit_edge ]
  %144 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %145, i32 %i.05.i
  call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #15
  %inc.i37 = add nuw i32 %i.05.i, 1
  %146 = ptrtoint ptr %num_tx_queues.i36 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %num_tx_queues.i36, align 4
  %cmp.i38 = icmp ult i32 %inc.i37, %147
  br i1 %cmp.i38, label %for.body.i39.for.body.i39_crit_edge, label %for.body.i39.cleanup_crit_edge

for.body.i39.cleanup_crit_edge:                   ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i39.for.body.i39_crit_edge:              ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i39

cleanup:                                          ; preds = %for.body.i39.cleanup_crit_edge, %enable_napi.exit.cleanup_crit_edge, %gfar_alloc_skb_resources.exit
  %retval.0 = phi i32 [ -12, %gfar_alloc_skb_resources.exit ], [ 0, %enable_napi.exit.cleanup_crit_edge ], [ 0, %for.body.i39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfar_mac_reset(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %tx_mask.addr.i.i = alloca i32, align 4
  %rx_mask.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 0, i32 3
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 16
  %maccfg1 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1, i32 -2147483648) #15, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 644244) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1, i32 0) #15, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 644244) #15
  %uses_rxfcb.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %uses_rxfcb.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %uses_rxfcb.i, align 4
  %ndev.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %features.i, align 16
  %and.i = and i64 %8, 1099511628032
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp ne i64 %and.i, 0
  %spec.store.select.i = zext i1 %tobool.not.i to i16
  %9 = ptrtoint ptr %uses_rxfcb.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %spec.store.select.i, ptr %uses_rxfcb.i, align 4
  %hwts_rx_en.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 6
  %10 = ptrtoint ptr %hwts_rx_en.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwts_rx_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %entry.if.then4.i_crit_edge

entry.if.then4.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4.i

lor.lhs.false.i:                                  ; preds = %entry
  %rx_filer_enable.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 30
  %12 = ptrtoint ptr %rx_filer_enable.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %rx_filer_enable.i, align 8
  %13 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i = icmp eq i8 %13, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.gfar_rx_offload_en.exit_crit_edge, label %lor.lhs.false.i.if.then4.i_crit_edge

lor.lhs.false.i.if.then4.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4.i

lor.lhs.false.i.gfar_rx_offload_en.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_rx_offload_en.exit

if.then4.i:                                       ; preds = %lor.lhs.false.i.if.then4.i_crit_edge, %entry.if.then4.i_crit_edge
  %14 = ptrtoint ptr %uses_rxfcb.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %uses_rxfcb.i, align 4
  br label %gfar_rx_offload_en.exit

gfar_rx_offload_en.exit:                          ; preds = %if.then4.i, %lor.lhs.false.i.gfar_rx_offload_en.exit_crit_edge
  %maxfrm = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maxfrm, i32 9600) #15, !srcloc !203
  %mrblr = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mrblr, i32 1728) #15, !srcloc !203
  %minflr = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %minflr, i32 64) #15, !srcloc !203
  %errata.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 2
  %15 = ptrtoint ptr %errata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %errata.i, align 8
  %and.i42 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not = icmp eq i32 %and.i42, 0
  %spec.select = select i1 %tobool.not, i32 29189, i32 29237
  %maccfg2 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg2, i32 %spec.select) #15, !srcloc !203
  %igaddr0 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr0, i32 0) #15, !srcloc !203
  %igaddr1 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr1, i32 0) #15, !srcloc !203
  %igaddr2 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr2, i32 0) #15, !srcloc !203
  %igaddr3 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr3, i32 0) #15, !srcloc !203
  %igaddr4 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr4, i32 0) #15, !srcloc !203
  %igaddr5 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr5, i32 0) #15, !srcloc !203
  %igaddr6 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr6, i32 0) #15, !srcloc !203
  %igaddr7 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr7, i32 0) #15, !srcloc !203
  %gaddr0 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr0, i32 0) #15, !srcloc !203
  %gaddr1 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr1, i32 0) #15, !srcloc !203
  %gaddr2 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr2, i32 0) #15, !srcloc !203
  %gaddr3 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr3, i32 0) #15, !srcloc !203
  %gaddr4 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr4, i32 0) #15, !srcloc !203
  %gaddr5 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr5, i32 0) #15, !srcloc !203
  %gaddr6 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr6, i32 0) #15, !srcloc !203
  %gaddr7 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr7, i32 0) #15, !srcloc !203
  %extended_hash = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 30
  %17 = ptrtoint ptr %extended_hash to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %extended_hash, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool3.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool3.not, label %gfar_rx_offload_en.exit.if.end5_crit_edge, label %if.then4

gfar_rx_offload_en.exit.if.end5_crit_edge:        ; preds = %gfar_rx_offload_en.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %gfar_rx_offload_en.exit
  %18 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev.i, align 4
  %regs1.i.i = getelementptr i8, ptr %19, i32 2928
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then4
  %idx.03.i = phi i32 [ 1, %if.then4 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs1.i.i, align 16
  %macstnaddr1.i.i = getelementptr inbounds %struct.gfar, ptr %21, i32 0, i32 128
  %mul.i.i = shl nuw i32 %idx.03.i, 1
  %add.ptr.i.i = getelementptr i32, ptr %macstnaddr1.i.i, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #15, !srcloc !203
  %add.ptr20.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 0) #15, !srcloc !203
  %inc.i = add nuw nsw i32 %idx.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.body.i.if.end5_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.if.end5_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.end5:                                          ; preds = %for.body.i.if.end5_crit_edge, %gfar_rx_offload_en.exit.if.end5_crit_edge
  %22 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs1, align 16
  %24 = ptrtoint ptr %extended_hash to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i44 = load i8, ptr %extended_hash, align 8
  %25 = and i8 %bf.load.i44, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i45 = icmp eq i8 %25, 0
  br i1 %tobool.not.i45, label %if.end5.if.end.i_crit_edge, label %if.then.i

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %rir0.i = getelementptr inbounds %struct.gfar, ptr %23, i32 0, i32 73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rir0.i, i32 68174080) #15, !srcloc !203
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end5.if.end.i_crit_edge
  %rctrl.0.i = phi i32 [ 4288, %if.then.i ], [ 0, %if.end5.if.end.i_crit_edge ]
  %26 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndev.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 8
  %and.i47 = lshr i32 %29, 5
  %30 = and i32 %and.i47, 8
  %31 = or i32 %30, %rctrl.0.i
  %features.i48 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 23
  %32 = ptrtoint ptr %features.i48 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %features.i48, align 16
  %and7.i = and i64 %33, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i)
  %tobool8.not.i = icmp eq i64 %and7.i, 0
  %or10.i = or i32 %31, 960
  %rctrl.2.i = select i1 %tobool8.not.i, i32 %31, i32 %or10.i
  %34 = ptrtoint ptr %extended_hash to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load12.i = load i8, ptr %extended_hash, align 8
  %or16.i = or i32 %rctrl.2.i, 1026
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load12.i)
  %tobool14.not61.i = icmp slt i8 %bf.load12.i, 0
  %rctrl.3.i = select i1 %tobool14.not61.i, i32 %or16.i, i32 %rctrl.2.i
  %padding.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 4
  %35 = ptrtoint ptr %padding.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %padding.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool18.not.i = icmp eq i16 %36, 0
  %and20.i = and i32 %rctrl.3.i, -2031617
  %conv.i = zext i16 %36 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %and22.i = and i32 %shl.i, 2031616
  %or23.i = or i32 %and20.i, %and22.i
  %rctrl.4.i = select i1 %tobool18.not.i, i32 %rctrl.3.i, i32 %or23.i
  %37 = ptrtoint ptr %hwts_rx_en.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hwts_rx_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool25.not.i = icmp eq i32 %38, 0
  %or27.i = or i32 %rctrl.4.i, 16777408
  %rctrl.5.i = select i1 %tobool25.not.i, i32 %rctrl.4.i, i32 %or27.i
  %and31.i = and i64 %33, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31.i)
  %tobool32.not.i = icmp eq i64 %and31.i, 0
  %or34.i = or i32 %rctrl.5.i, 8384
  %rctrl.6.i = select i1 %tobool32.not.i, i32 %rctrl.5.i, i32 %or34.i
  %rctrl36.i = getelementptr inbounds %struct.gfar, ptr %23, i32 0, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl36.i, i32 %rctrl.6.i) #15, !srcloc !203
  %num_rx_queues.i.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 15
  %39 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_rx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp8.not.i.i = icmp eq i32 %40, 0
  br i1 %cmp8.not.i.i, label %if.end.i.gfar_mac_rx_config.exit_crit_edge, label %for.body.preheader.i.i

if.end.i.gfar_mac_rx_config.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_mac_rx_config.exit

for.body.preheader.i.i:                           ; preds = %if.end.i
  %41 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs1, align 16
  %rqprm0.i.i = getelementptr inbounds %struct.gfar, ptr %42, i32 0, i32 187
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %baddr.09.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %rqprm0.i.i, %for.body.preheader.i.i ]
  %arrayidx2.i.i = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 9, i32 %i.010.i.i
  %43 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx2.i.i, align 4
  %rx_ring_size.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %rx_ring_size.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %rx_ring_size.i.i, align 16
  %conv.i.i = zext i16 %46 to i32
  %or.i.i = or i32 %conv.i.i, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %baddr.09.i.i, i32 %or.i.i) #15, !srcloc !203
  %incdec.ptr.i.i = getelementptr i32, ptr %baddr.09.i.i, i32 1
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %47 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_rx_queues.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %48
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.gfar_mac_rx_config.exit_crit_edge

for.body.i.i.gfar_mac_rx_config.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_mac_rx_config.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

gfar_mac_rx_config.exit:                          ; preds = %for.body.i.i.gfar_mac_rx_config.exit_crit_edge, %if.end.i.gfar_mac_rx_config.exit_crit_edge
  %ptv.i = getelementptr inbounds %struct.gfar, ptr %23, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptv.i, i32 4) #15, !srcloc !203
  %or37.i = or i32 %rctrl.6.i, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl36.i, i32 %or37.i) #15, !srcloc !203
  %49 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs1, align 16
  %51 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ndev.i, align 4
  %features.i52 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 23
  %53 = ptrtoint ptr %features.i52 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %features.i52, align 16
  %and.i53 = and i64 %54, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i53)
  %tobool.not.i54 = icmp eq i64 %and.i53, 0
  %spec.select.i = select i1 %tobool.not.i54, i32 0, i32 24576
  %55 = ptrtoint ptr %extended_hash to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i55 = load i8, ptr %extended_hash, align 8
  %56 = and i8 %bf.load.i55, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool2.not.i56 = icmp eq i8 %56, 0
  br i1 %tobool2.not.i56, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %gfar_mac_rx_config.exit
  call void @__sanitizer_cov_trace_pc() #17
  %or4.i = or i32 %spec.select.i, 2
  br label %gfar_mac_tx_config.exit

if.else.i:                                        ; preds = %gfar_mac_rx_config.exit
  call void @__sanitizer_cov_trace_pc() #17
  %or5.i = or i32 %spec.select.i, 4
  %tr03wt.i = getelementptr inbounds %struct.gfar, ptr %50, i32 0, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tr03wt.i, i32 404232216) #15, !srcloc !203
  %tr47wt.i = getelementptr inbounds %struct.gfar, ptr %50, i32 0, i32 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tr47wt.i, i32 404232216) #15, !srcloc !203
  br label %gfar_mac_tx_config.exit

gfar_mac_tx_config.exit:                          ; preds = %if.else.i, %if.then3.i
  %tctrl.1.i = phi i32 [ %or4.i, %if.then3.i ], [ %or5.i, %if.else.i ]
  %57 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ndev.i, align 4
  %features8.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 23
  %59 = ptrtoint ptr %features8.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %features8.i, align 16
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %61, 5
  %63 = and i32 %62, 4096
  %64 = or i32 %63, %tctrl.1.i
  %tctrl14.i = getelementptr inbounds %struct.gfar, ptr %50, i32 0, i32 23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tctrl14.i, i32 %64) #15, !srcloc !203
  %65 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ndev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 86
  %67 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_addr.i, align 64
  %regs1.i.i57 = getelementptr i8, ptr %66, i32 2928
  %69 = ptrtoint ptr %regs1.i.i57 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs1.i.i57, align 16
  %macstnaddr1.i.i58 = getelementptr inbounds %struct.gfar, ptr %70, i32 0, i32 128
  %arrayidx2.i.i59 = getelementptr i8, ptr %68, i32 5
  %71 = ptrtoint ptr %arrayidx2.i.i59 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx2.i.i59, align 1
  %conv.i.i60 = zext i8 %72 to i32
  %shl.i.i = shl nuw i32 %conv.i.i60, 24
  %arrayidx3.i.i = getelementptr i8, ptr %68, i32 4
  %73 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %74 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 16
  %or.i.i61 = or i32 %shl5.i.i, %shl.i.i
  %arrayidx6.i.i = getelementptr i8, ptr %68, i32 3
  %75 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %76 to i32
  %shl8.i.i = shl nuw nsw i32 %conv7.i.i, 8
  %or9.i.i = or i32 %or.i.i61, %shl8.i.i
  %arrayidx10.i.i = getelementptr i8, ptr %68, i32 2
  %77 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %78 to i32
  %or12.i.i = or i32 %or9.i.i, %conv11.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macstnaddr1.i.i58, i32 %or12.i.i) #15, !srcloc !203
  %arrayidx13.i.i = getelementptr i8, ptr %68, i32 1
  %79 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx13.i.i, align 1
  %conv14.i.i = zext i8 %80 to i32
  %shl15.i.i = shl nuw i32 %conv14.i.i, 24
  %81 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %68, align 1
  %conv17.i.i = zext i8 %82 to i32
  %shl18.i.i = shl nuw nsw i32 %conv17.i.i, 16
  %or19.i.i = or i32 %shl18.i.i, %shl15.i.i
  %add.ptr20.i.i62 = getelementptr %struct.gfar, ptr %70, i32 0, i32 129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i62, i32 %or19.i.i) #15, !srcloc !203
  %83 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ndev.i, align 4
  tail call void @gfar_set_multi(ptr noundef %84)
  %num_grps.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 16
  %85 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_grps.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp6.not.i = icmp eq i32 %86, 0
  br i1 %cmp6.not.i, label %gfar_mac_tx_config.exit.gfar_ints_disable.exit_crit_edge, label %gfar_mac_tx_config.exit.for.body.i65_crit_edge

gfar_mac_tx_config.exit.for.body.i65_crit_edge:   ; preds = %gfar_mac_tx_config.exit
  br label %for.body.i65

gfar_mac_tx_config.exit.gfar_ints_disable.exit_crit_edge: ; preds = %gfar_mac_tx_config.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_ints_disable.exit

for.body.i65:                                     ; preds = %for.body.i65.for.body.i65_crit_edge, %gfar_mac_tx_config.exit.for.body.i65_crit_edge
  %i.07.i = phi i32 [ %inc.i64, %for.body.i65.for.body.i65_crit_edge ], [ 0, %gfar_mac_tx_config.exit.for.body.i65_crit_edge ]
  %regs1.i63 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %i.07.i, i32 3
  %87 = ptrtoint ptr %regs1.i63 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs1.i63, align 16
  %ievent.i = getelementptr inbounds %struct.gfar, ptr %88, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent.i, i32 -1) #15, !srcloc !203
  %imask.i = getelementptr inbounds %struct.gfar, ptr %88, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask.i, i32 0) #15, !srcloc !203
  %inc.i64 = add nuw i32 %i.07.i, 1
  %89 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_grps.i, align 16
  %cmp.i = icmp ult i32 %inc.i64, %90
  br i1 %cmp.i, label %for.body.i65.for.body.i65_crit_edge, label %for.body.i65.gfar_ints_disable.exit_crit_edge

for.body.i65.gfar_ints_disable.exit_crit_edge:    ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_ints_disable.exit

for.body.i65.for.body.i65_crit_edge:              ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i65

gfar_ints_disable.exit:                           ; preds = %for.body.i65.gfar_ints_disable.exit_crit_edge, %gfar_mac_tx_config.exit.gfar_ints_disable.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_mask.addr.i.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_mask.addr.i.i) #15
  %91 = ptrtoint ptr %tx_mask.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 255, ptr %tx_mask.addr.i.i, align 4
  %92 = ptrtoint ptr %rx_mask.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 255, ptr %rx_mask.addr.i.i, align 4
  %93 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs1, align 16
  %mode.i.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 13
  %95 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %96)
  %cmp.i.i67 = icmp eq i16 %96, 1
  br i1 %cmp.i.i67, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %gfar_ints_disable.exit
  %txic0.i.i = getelementptr inbounds %struct.gfar, ptr %94, i32 0, i32 227
  %num_tx_queues.i.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 14
  %97 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_tx_queues.i.i, align 8
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tx_mask.addr.i.i, i32 noundef %98, i32 noundef 0) #15
  %99 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_tx_queues.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %100)
  %cmp41.i.i = icmp ult i32 %call.i.i, %100
  br i1 %cmp41.i.i, label %if.then.i.i.for.body.i.i70_crit_edge, label %if.then.i.i.for.end.i.i_crit_edge

if.then.i.i.for.end.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

if.then.i.i.for.body.i.i70_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i70

for.body.i.i70:                                   ; preds = %for.inc.i.i.for.body.i.i70_crit_edge, %if.then.i.i.for.body.i.i70_crit_edge
  %i.02.i.i = phi i32 [ %call14.i.i, %for.inc.i.i.for.body.i.i70_crit_edge ], [ %call.i.i, %if.then.i.i.for.body.i.i70_crit_edge ]
  %add.ptr.i.i68 = getelementptr i32, ptr %txic0.i.i, i32 %i.02.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68, i32 0) #15, !srcloc !203
  %arrayidx6.i.i69 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 8, i32 %i.02.i.i
  %101 = ptrtoint ptr %arrayidx6.i.i69 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx6.i.i69, align 4
  %txcoalescing.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %102, i32 0, i32 13
  %103 = ptrtoint ptr %txcoalescing.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %txcoalescing.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i.i = icmp eq i32 %104, 0
  br i1 %tobool.not.i.i, label %for.body.i.i70.for.inc.i.i_crit_edge, label %if.then9.i.i, !prof !211

for.body.i.i70.for.inc.i.i_crit_edge:             ; preds = %for.body.i.i70
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %for.body.i.i70
  call void @__sanitizer_cov_trace_pc() #17
  %txic.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %102, i32 0, i32 14
  %105 = ptrtoint ptr %txic.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %txic.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68, i32 %106) #15, !srcloc !203
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then9.i.i, %for.body.i.i70.for.inc.i.i_crit_edge
  %107 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_tx_queues.i.i, align 8
  %add.i.i = add nuw i32 %i.02.i.i, 1
  %call14.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tx_mask.addr.i.i, i32 noundef %108, i32 noundef %add.i.i) #15
  %109 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_tx_queues.i.i, align 8
  %cmp4.i.i = icmp ult i32 %call14.i.i, %110
  br i1 %cmp4.i.i, label %for.inc.i.i.for.body.i.i70_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.inc.i.i.for.body.i.i70_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i70

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then.i.i.for.end.i.i_crit_edge
  %rxic0.i.i = getelementptr inbounds %struct.gfar, ptr %94, i32 0, i32 218
  %111 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_rx_queues.i.i, align 4
  %call15.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %rx_mask.addr.i.i, i32 noundef %112, i32 noundef 0) #15
  %113 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %num_rx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call15.i.i, i32 %114)
  %cmp183.i.i = icmp ult i32 %call15.i.i, %114
  br i1 %cmp183.i.i, label %for.end.i.i.for.body20.i.i_crit_edge, label %for.end.i.i.gfar_configure_coalescing_all.exit_crit_edge

for.end.i.i.gfar_configure_coalescing_all.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_configure_coalescing_all.exit

for.end.i.i.for.body20.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body20.i.i

for.body20.i.i:                                   ; preds = %for.inc35.i.i.for.body20.i.i_crit_edge, %for.end.i.i.for.body20.i.i_crit_edge
  %i.14.i.i = phi i32 [ %call38.i.i, %for.inc35.i.i.for.body20.i.i_crit_edge ], [ %call15.i.i, %for.end.i.i.for.body20.i.i_crit_edge ]
  %add.ptr21.i.i = getelementptr i32, ptr %rxic0.i.i, i32 %i.14.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 0) #15, !srcloc !203
  %arrayidx22.i.i = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 9, i32 %i.14.i.i
  %115 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx22.i.i, align 4
  %rxcoalescing.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %116, i32 0, i32 13
  %117 = ptrtoint ptr %rxcoalescing.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %rxcoalescing.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool23.not.i.i = icmp eq i8 %118, 0
  br i1 %tobool23.not.i.i, label %for.body20.i.i.for.inc35.i.i_crit_edge, label %if.then30.i.i, !prof !211

for.body20.i.i.for.inc35.i.i_crit_edge:           ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc35.i.i

if.then30.i.i:                                    ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %rxic.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %116, i32 0, i32 14
  %119 = ptrtoint ptr %rxic.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rxic.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %120) #15, !srcloc !203
  br label %for.inc35.i.i

for.inc35.i.i:                                    ; preds = %if.then30.i.i, %for.body20.i.i.for.inc35.i.i_crit_edge
  %121 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_rx_queues.i.i, align 4
  %add37.i.i = add nuw i32 %i.14.i.i, 1
  %call38.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %rx_mask.addr.i.i, i32 noundef %122, i32 noundef %add37.i.i) #15
  %123 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_rx_queues.i.i, align 4
  %cmp18.i.i = icmp ult i32 %call38.i.i, %124
  br i1 %cmp18.i.i, label %for.inc35.i.i.for.body20.i.i_crit_edge, label %for.inc35.i.i.gfar_configure_coalescing_all.exit_crit_edge

for.inc35.i.i.gfar_configure_coalescing_all.exit_crit_edge: ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_configure_coalescing_all.exit

for.inc35.i.i.for.body20.i.i_crit_edge:           ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body20.i.i

if.else.i.i:                                      ; preds = %gfar_ints_disable.exit
  %txic40.i.i = getelementptr inbounds %struct.gfar, ptr %94, i32 0, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txic40.i.i, i32 0) #15, !srcloc !203
  %tx_queue41.i.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 8
  %125 = ptrtoint ptr %tx_queue41.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tx_queue41.i.i, align 4
  %txcoalescing43.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %126, i32 0, i32 13
  %127 = ptrtoint ptr %txcoalescing43.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %txcoalescing43.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool44.not.i.i = icmp eq i32 %128, 0
  br i1 %tobool44.not.i.i, label %if.else.i.i.if.end56.i.i_crit_edge, label %if.then51.i.i, !prof !211

if.else.i.i.if.end56.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56.i.i

if.then51.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %txic55.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %126, i32 0, i32 14
  %129 = ptrtoint ptr %txic55.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %txic55.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txic40.i.i, i32 %130) #15, !srcloc !203
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.then51.i.i, %if.else.i.i.if.end56.i.i_crit_edge
  %rxic57.i.i = getelementptr inbounds %struct.gfar, ptr %94, i32 0, i32 71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxic57.i.i, i32 0) #15, !srcloc !203
  %rx_queue58.i.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 9
  %131 = ptrtoint ptr %rx_queue58.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rx_queue58.i.i, align 4
  %rxcoalescing60.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %132, i32 0, i32 13
  %133 = ptrtoint ptr %rxcoalescing60.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %rxcoalescing60.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool61.not.i.i = icmp eq i8 %134, 0
  br i1 %tobool61.not.i.i, label %if.end56.i.i.gfar_configure_coalescing_all.exit_crit_edge, label %if.then68.i.i, !prof !212

if.end56.i.i.gfar_configure_coalescing_all.exit_crit_edge: ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_configure_coalescing_all.exit

if.then68.i.i:                                    ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %rxic72.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %132, i32 0, i32 14
  %135 = ptrtoint ptr %rxic72.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rxic72.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxic57.i.i, i32 %136) #15, !srcloc !203
  br label %gfar_configure_coalescing_all.exit

gfar_configure_coalescing_all.exit:               ; preds = %if.then68.i.i, %if.end56.i.i.gfar_configure_coalescing_all.exit_crit_edge, %for.inc35.i.i.gfar_configure_coalescing_all.exit_crit_edge, %for.end.i.i.gfar_configure_coalescing_all.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_mask.addr.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_mask.addr.i.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfar_start(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 0, i32 3
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 16
  %rqueue = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 72
  %rqueue2 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 33
  %2 = ptrtoint ptr %rqueue2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rqueue2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqueue, i32 %3) #15, !srcloc !203
  %tqueue = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 28
  %tqueue3 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 34
  %4 = ptrtoint ptr %tqueue3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tqueue3, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tqueue, i32 %5) #15, !srcloc !203
  %dmactrl = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 10
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmactrl) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %or = or i32 %6, 195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmactrl, i32 %or) #15, !srcloc !203
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmactrl) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and = and i32 %7, -25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmactrl, i32 %and) #15, !srcloc !203
  %num_grps = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 16
  %8 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_grps, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp46.not = icmp eq i32 %9, 0
  br i1 %cmp46.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.047 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %regs10 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %i.047, i32 3
  %10 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs10, align 16
  %tstat = getelementptr inbounds %struct.gfar, ptr %11, i32 0, i32 24
  %tstat13 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %i.047, i32 6
  %12 = ptrtoint ptr %tstat13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tstat13, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tstat, i32 %13) #15, !srcloc !203
  %rstat = getelementptr inbounds %struct.gfar, ptr %11, i32 0, i32 69
  %rstat16 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %i.047, i32 7
  %14 = ptrtoint ptr %rstat16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rstat16, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rstat, i32 %15) #15, !srcloc !203
  %inc = add nuw i32 %i.047, 1
  %16 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_grps, align 16
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %regs.0.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %11, %for.body.for.end_crit_edge ]
  %maccfg1 = getelementptr inbounds %struct.gfar, ptr %regs.0.lcssa, i32 0, i32 119
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg1) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %or18 = or i32 %18, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1, i32 %or18) #15, !srcloc !203
  %19 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_grps, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7.not.i = icmp eq i32 %20, 0
  br i1 %cmp7.not.i, label %for.end.gfar_ints_enable.exit_crit_edge, label %for.body.lr.ph.i

for.end.gfar_ints_enable.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_ints_enable.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %imask2.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 19, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %regs1.i = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %i.08.i, i32 3
  %21 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs1.i, align 16
  %imask.i = getelementptr inbounds %struct.gfar, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %imask2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %imask2.i, align 4
  %or.i = or i32 %24, -244252541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask.i, i32 %or.i) #15, !srcloc !203
  %inc.i = add nuw i32 %i.08.i, 1
  %25 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_grps, align 16
  %cmp.i = icmp ult i32 %inc.i, %26
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.gfar_ints_enable.exit_crit_edge

for.body.i.gfar_ints_enable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_ints_enable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

gfar_ints_enable.exit:                            ; preds = %for.body.i.gfar_ints_enable.exit_crit_edge, %for.end.gfar_ints_enable.exit_crit_edge
  %ndev = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 1
  %27 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 12
  %32 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp.not.i.i = icmp eq i32 %33, %31
  br i1 %cmp.not.i.i, label %gfar_ints_enable.exit.netif_trans_update.exit_crit_edge, label %do.body5.i.i

gfar_ints_enable.exit.netif_trans_update.exit_crit_edge: ; preds = %gfar_ints_enable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %gfar_ints_enable.exit
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %31, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %gfar_ints_enable.exit.netif_trans_update.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfar_set_multi(ptr noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %regs1 = getelementptr i8, ptr %dev, i32 2928
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %rctrl4 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 68
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %4, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl4, i32 %or) #15, !srcloc !203
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %and6 = and i32 %4, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl4, i32 %and6) #15, !srcloc !203
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and9 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %igaddr013 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr013, i32 -1) #15, !srcloc !203
  %igaddr1 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr1, i32 -1) #15, !srcloc !203
  %igaddr2 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr2, i32 -1) #15, !srcloc !203
  %igaddr3 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr3, i32 -1) #15, !srcloc !203
  %igaddr4 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr4, i32 -1) #15, !srcloc !203
  %igaddr5 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr5, i32 -1) #15, !srcloc !203
  %igaddr6 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr6, i32 -1) #15, !srcloc !203
  %igaddr7 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr7, i32 -1) #15, !srcloc !203
  %gaddr0 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr0, i32 -1) #15, !srcloc !203
  %gaddr1 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr1, i32 -1) #15, !srcloc !203
  %gaddr2 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr2, i32 -1) #15, !srcloc !203
  %gaddr3 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr3, i32 -1) #15, !srcloc !203
  %gaddr4 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr4, i32 -1) #15, !srcloc !203
  %gaddr5 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr5, i32 -1) #15, !srcloc !203
  %gaddr6 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr6, i32 -1) #15, !srcloc !203
  %gaddr7 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr7, i32 -1) #15, !srcloc !203
  br label %cleanup53

if.else12:                                        ; preds = %if.end
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr013, i32 0) #15, !srcloc !203
  %igaddr114 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr114, i32 0) #15, !srcloc !203
  %igaddr215 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr215, i32 0) #15, !srcloc !203
  %igaddr316 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr316, i32 0) #15, !srcloc !203
  %igaddr417 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr417, i32 0) #15, !srcloc !203
  %igaddr518 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr518, i32 0) #15, !srcloc !203
  %igaddr619 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr619, i32 0) #15, !srcloc !203
  %igaddr720 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %igaddr720, i32 0) #15, !srcloc !203
  %gaddr021 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr021, i32 0) #15, !srcloc !203
  %gaddr122 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr122, i32 0) #15, !srcloc !203
  %gaddr223 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr223, i32 0) #15, !srcloc !203
  %gaddr324 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr324, i32 0) #15, !srcloc !203
  %gaddr425 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr425, i32 0) #15, !srcloc !203
  %gaddr526 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr526, i32 0) #15, !srcloc !203
  %gaddr627 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr627, i32 0) #15, !srcloc !203
  %gaddr728 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gaddr728, i32 0) #15, !srcloc !203
  %extended_hash = getelementptr i8, ptr %dev, i32 3976
  %7 = ptrtoint ptr %extended_hash to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %extended_hash, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool29.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool29.not, label %if.else12.if.end32_crit_edge, label %if.else12.for.body.i_crit_edge

if.else12.for.body.i_crit_edge:                   ; preds = %if.else12
  br label %for.body.i

if.else12.if.end32_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else12.for.body.i_crit_edge
  %idx.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.else12.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1, align 16
  %macstnaddr1.i.i = getelementptr inbounds %struct.gfar, ptr %9, i32 0, i32 128
  %mul.i.i = shl nuw i32 %idx.03.i, 1
  %add.ptr.i.i = getelementptr i32, ptr %macstnaddr1.i.i, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #15, !srcloc !203
  %add.ptr20.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 0) #15, !srcloc !203
  %inc.i = add nuw nsw i32 %idx.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.body.i.if.end32_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.if.end32_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.end32:                                         ; preds = %for.body.i.if.end32_crit_edge, %if.else12.if.end32_crit_edge
  %em_num.0 = phi i32 [ 0, %if.else12.if.end32_crit_edge ], [ 16, %for.body.i.if.end32_crit_edge ]
  %idx.0 = phi i32 [ 0, %if.else12.if.end32_crit_edge ], [ 1, %for.body.i.if.end32_crit_edge ]
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.end32.cleanup53_crit_edge, label %for.cond.preheader

if.end32.cleanup53_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup53

for.cond.preheader:                               ; preds = %if.end32
  %12 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.0114 = load ptr, ptr %mc, align 4
  %cmp39.not115 = icmp eq ptr %ha.0114, %mc
  br i1 %cmp39.not115, label %for.cond.preheader.cleanup53_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup53_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup53

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hash_width.i = getelementptr i8, ptr %dev, i32 4176
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ha.0117 = phi ptr [ %ha.0114, %for.body.lr.ph ], [ %ha.0, %for.inc.for.body_crit_edge ]
  %idx.1116 = phi i32 [ %idx.0, %for.body.lr.ph ], [ %idx.2, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.1116, i32 %em_num.0)
  %cmp40 = icmp slt i32 %idx.1116, %em_num.0
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0117, i32 0, i32 2
  br i1 %cmp40, label %if.then41, label %gfar_set_hash_for_addr.exit

if.then41:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs1, align 16
  %macstnaddr1.i = getelementptr inbounds %struct.gfar, ptr %14, i32 0, i32 128
  %mul.i = shl i32 %idx.1116, 1
  %add.ptr.i111 = getelementptr i32, ptr %macstnaddr1.i, i32 %mul.i
  %arrayidx2.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0117, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i, align 1
  %conv.i = zext i8 %16 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx3.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0117, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %18 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %or.i = or i32 %shl5.i, %shl.i
  %arrayidx6.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0117, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %20 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 8
  %or9.i = or i32 %or.i, %shl8.i
  %arrayidx10.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0117, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %22 to i32
  %or12.i = or i32 %or9.i, %conv11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %or12.i) #15, !srcloc !203
  %arrayidx13.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0117, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %24 to i32
  %shl15.i = shl nuw i32 %conv14.i, 24
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %addr, align 1
  %conv17.i = zext i8 %26 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 16
  %or19.i = or i32 %shl18.i, %shl15.i
  %add.ptr20.i = getelementptr i32, ptr %add.ptr.i111, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %or19.i) #15, !srcloc !203
  %inc = add nsw i32 %idx.1116, 1
  br label %for.inc

gfar_set_hash_for_addr.exit:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #19
  %27 = lshr i32 %call1.i, 8
  %conv4.i.i.i = and i32 %27, 255
  %arrayidx.i10.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.i
  %28 = ptrtoint ptr %arrayidx.i10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i10.i.i.i, align 1
  %conv6.i.i.i = zext i8 %29 to i32
  %30 = shl nuw nsw i32 %conv6.i.i.i, 16
  %31 = and i32 %call1.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv2.i.i.i = zext i8 %33 to i32
  %34 = shl nuw i32 %conv2.i.i.i, 24
  %or.i13.i.i = or i32 %30, %34
  %sum.shift.i.i = lshr i32 %call1.i, 24
  %arrayidx.i10.i11.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i.i
  %35 = ptrtoint ptr %arrayidx.i10.i11.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i10.i11.i.i, align 1
  %conv6.i12.i.i = zext i8 %36 to i32
  %shl.i.i = or i32 %or.i13.i.i, %conv6.i12.i.i
  %shr.i.i = lshr i32 %call1.i, 16
  %37 = and i32 %shr.i.i, 255
  %arrayidx.i.i7.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i7.i.i, align 1
  %conv2.i8.i.i = zext i8 %39 to i32
  %shl.i9.i.i = shl nuw nsw i32 %conv2.i8.i.i, 8
  %or.i.i = or i32 %shl.i.i, %shl.i9.i.i
  %40 = ptrtoint ptr %hash_width.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hash_width.i, align 16
  %sub.i = sub i32 32, %41
  %shr23.i = lshr i32 %or.i.i, %sub.i
  %conv.i113 = and i32 %shr23.i, 31
  %add.i = sub i32 37, %41
  %shr26.i = lshr i32 %or.i.i, %add.i
  %sub29.i = xor i32 %conv.i113, 31
  %shl30.i = shl nuw i32 1, %sub29.i
  %idxprom.i = and i32 %shr26.i, 255
  %arrayidx.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 40, i32 %idxprom.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %or32.i = or i32 %shl30.i, %44
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %or32.i) #15, !srcloc !203
  br label %for.inc

for.inc:                                          ; preds = %gfar_set_hash_for_addr.exit, %if.then41
  %idx.2 = phi i32 [ %inc, %if.then41 ], [ %idx.1116, %gfar_set_hash_for_addr.exit ]
  %47 = ptrtoint ptr %ha.0117 to i32
  call void @__asan_load4_noabort(i32 %47)
  %ha.0 = load ptr, ptr %ha.0117, align 4
  %cmp39.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp39.not, label %for.inc.cleanup53_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup53_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup53

cleanup53:                                        ; preds = %for.inc.cleanup53_crit_edge, %for.cond.preheader.cleanup53_crit_edge, %if.end32.cleanup53_crit_edge, %if.then11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gfar_driver, ptr noundef null) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gfar_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @platform_driver_unregister(ptr noundef nonnull @gfar_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfar_alloc_rx_buffs(ptr nocapture noundef %rx_queue, i32 noundef %alloc_cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_use = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %rx_queue, i32 0, i32 8
  %0 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_use, align 2
  %conv = zext i16 %1 to i32
  %rx_bd_base = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %rx_queue, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alloc_cnt)
  %tobool.not55 = icmp eq i32 %alloc_cnt, 0
  br i1 %tobool.not55, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_queue, align 128
  %arrayidx1 = getelementptr %struct.gfar_rx_buff, ptr %3, i32 %conv
  %4 = ptrtoint ptr %rx_bd_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_bd_base, align 4
  %arrayidx = getelementptr %struct.rxbd8, ptr %5, i32 %conv
  %rx_ring_size.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %rx_queue, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end29.while.body_crit_edge, %while.body.lr.ph
  %dec60.in = phi i32 [ %alloc_cnt, %while.body.lr.ph ], [ %dec60, %if.end29.while.body_crit_edge ]
  %i.058 = phi i32 [ %conv, %while.body.lr.ph ], [ %i.1, %if.end29.while.body_crit_edge ]
  %rxb.057 = phi ptr [ %arrayidx1, %while.body.lr.ph ], [ %rxb.1, %if.end29.while.body_crit_edge ]
  %bdp.056 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %bdp.1, %if.end29.while.body_crit_edge ]
  %dec60 = add i32 %dec60.in, -1
  %page = getelementptr inbounds %struct.gfar_rx_buff, ptr %rxb.057, i32 0, i32 1
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.then, label %while.body.if.end15_crit_edge, !prof !211

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then:                                          ; preds = %while.body
  %call = tail call fastcc zeroext i1 @gfar_new_page(ptr noundef %rx_queue, ptr noundef %rxb.057)
  br i1 %call, label %if.then.if.end15_crit_edge, label %if.then14, !prof !212

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @gfar_rx_alloc_err(ptr noundef %rx_queue)
  br label %while.end

if.end15:                                         ; preds = %if.then.if.end15_crit_edge, %while.body.if.end15_crit_edge
  %8 = ptrtoint ptr %rxb.057 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxb.057, align 4
  %page_offset = getelementptr inbounds %struct.gfar_rx_buff, ptr %rxb.057, i32 0, i32 2
  %10 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_offset, align 4
  %add = add i32 %9, 64
  %add16 = add i32 %add, %11
  %bufPtr.i = getelementptr inbounds %struct.rxbd8, ptr %bdp.056, i32 0, i32 1
  %12 = ptrtoint ptr %bufPtr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add16, ptr %bufPtr.i, align 4
  %13 = ptrtoint ptr %rx_bd_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_bd_base, align 4
  %15 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rx_ring_size.i, align 16
  %conv.i = zext i16 %16 to i32
  %add.ptr.i = getelementptr %struct.rxbd8, ptr %14, i32 -1
  %add.ptr1.i = getelementptr %struct.rxbd8, ptr %add.ptr.i, i32 %conv.i
  %cmp.i = icmp eq ptr %add.ptr1.i, %bdp.056
  %spec.select.i = select i1 %cmp.i, i32 -1342177280, i32 -1879048192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !213
  tail call void @arm_heavy_mb() #15
  %17 = ptrtoint ptr %bdp.056 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %bdp.056, align 4
  %incdec.ptr = getelementptr %struct.rxbd8, ptr %bdp.056, i32 1
  %incdec.ptr17 = getelementptr %struct.gfar_rx_buff, ptr %rxb.057, i32 1
  %inc = add i32 %i.058, 1
  %18 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rx_ring_size.i, align 16
  %conv18 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv18)
  %cmp = icmp eq i32 %inc, %conv18
  br i1 %cmp, label %if.then26, label %if.end15.if.end29_crit_edge, !prof !211

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then26:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %rx_bd_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_bd_base, align 4
  %22 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_queue, align 128
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end15.if.end29_crit_edge
  %bdp.1 = phi ptr [ %21, %if.then26 ], [ %incdec.ptr, %if.end15.if.end29_crit_edge ]
  %rxb.1 = phi ptr [ %23, %if.then26 ], [ %incdec.ptr17, %if.end15.if.end29_crit_edge ]
  %i.1 = phi i32 [ 0, %if.then26 ], [ %inc, %if.end15.if.end29_crit_edge ]
  %tobool.not = icmp eq i32 %dec60, 0
  br i1 %tobool.not, label %if.end29.while.end_crit_edge, label %if.end29.while.body_crit_edge

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end29.while.end_crit_edge, %if.then14, %entry.while.end_crit_edge
  %i.053 = phi i32 [ %i.058, %if.then14 ], [ %conv, %entry.while.end_crit_edge ], [ %i.1, %if.end29.while.end_crit_edge ]
  %conv30 = trunc i32 %i.053 to i16
  %24 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv30, ptr %next_to_use, align 2
  %next_to_alloc = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %rx_queue, i32 0, i32 9
  %25 = ptrtoint ptr %next_to_alloc to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv30, ptr %next_to_alloc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @gfar_new_page(ptr nocapture noundef readonly %rxq, ptr nocapture noundef writeonly %rxb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !211

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %rxq, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call4 = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i.not = icmp eq i32 %call4, -1
  br i1 %cmp.i.not, label %if.then14, label %if.end15, !prof !211

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 0) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %rxb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call4, ptr %rxb, align 4
  %page16 = getelementptr inbounds %struct.gfar_rx_buff, ptr %rxb, i32 0, i32 1
  %5 = ptrtoint ptr %page16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call38.i.i.i.i.i, ptr %page16, align 4
  %page_offset = getelementptr inbounds %struct.gfar_rx_buff, ptr %rxb, i32 0, i32 2
  %6 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %page_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then14 ], [ true, %if.end15 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfar_rx_alloc_err(ptr nocapture noundef readonly %rx_queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %rx_queue, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %extra_stats = getelementptr i8, ptr %1, i32 3736
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %extra_stats, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %extra_stats) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_probe(ptr noundef %ofdev) #0 align 64 {
entry:
  %args.i358 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %model.i = alloca ptr, align 4
  %interface.i = alloca i32, align 4
  %stash_len.i = alloca i32, align 4
  %stash_idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %model.i) #15
  %2 = ptrtoint ptr %model.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %model.i, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interface.i) #15
  %3 = ptrtoint ptr %interface.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %interface.i, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stash_len.i) #15
  %4 = ptrtoint ptr %stash_len.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %stash_len.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stash_idx.i) #15
  %5 = ptrtoint ptr %stash_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %stash_idx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.gfar_of_init.exit.thread_crit_edge, label %if.end.i

entry.gfar_of_init.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_of_init.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %1, ptr noundef nonnull @.str.18) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  %not.tobool2.not.i = xor i1 %tobool2.not.i, true
  %..i = zext i1 %not.tobool2.not.i to i16
  br i1 %tobool2.not.i, label %if.end.i.if.end48.i_crit_edge, label %if.else7.i

if.end.i.if.end48.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.i

if.else7.i:                                       ; preds = %if.end.i
  %call.i.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #15
  %cmp.not7.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not7.i.i, label %if.else7.i.cleanup.i_crit_edge, label %if.else7.i.for.body.i.i_crit_edge

if.else7.i.for.body.i.i_crit_edge:                ; preds = %if.else7.i
  br label %for.body.i.i

if.else7.i.cleanup.i_crit_edge:                   ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.else7.i.for.body.i.i_crit_edge
  %num.09.i.i = phi i32 [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.else7.i.for.body.i.i_crit_edge ]
  %child.08.i.i = phi ptr [ %call2.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.else7.i.for.body.i.i_crit_edge ]
  %call1.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.08.i.i, ptr noundef nonnull @.str.41) #15
  %inc.i.i = zext i1 %call1.i.i to i32
  %spec.select.i.i = add i32 %num.09.i.i, %inc.i.i
  %call2.i.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child.08.i.i) #15
  %cmp.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %cmp.not.i.i, label %gfar_of_group_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

gfar_of_group_count.exit.i:                       ; preds = %for.body.i.i
  %6 = add i32 %spec.select.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %6)
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %gfar_of_group_count.exit.i.cleanup.i_crit_edge, label %gfar_of_group_count.exit.i.if.end48.i_crit_edge

gfar_of_group_count.exit.i.if.end48.i_crit_edge:  ; preds = %gfar_of_group_count.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.i

gfar_of_group_count.exit.i.cleanup.i_crit_edge:   ; preds = %gfar_of_group_count.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

cleanup.i:                                        ; preds = %gfar_of_group_count.exit.i.cleanup.i_crit_edge, %if.else7.i.cleanup.i_crit_edge
  %num.0.lcssa.i320.i = phi i32 [ %spec.select.i.i, %gfar_of_group_count.exit.i.cleanup.i_crit_edge ], [ 0, %if.else7.i.cleanup.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %num.0.lcssa.i320.i) #20
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #20
  br label %gfar_of_init.exit.thread

if.end48.i:                                       ; preds = %gfar_of_group_count.exit.i.if.end48.i_crit_edge, %if.end.i.if.end48.i_crit_edge
  %num_rx_qs.1.i = phi i32 [ 1, %if.end.i.if.end48.i_crit_edge ], [ %spec.select.i.i, %gfar_of_group_count.exit.i.if.end48.i_crit_edge ]
  %call49.i = tail call ptr @alloc_etherdev_mqs(i32 noundef 3968, i32 noundef %num_rx_qs.1.i, i32 noundef %num_rx_qs.1.i) #15
  %cmp50.i = icmp eq ptr %call49.i, null
  br i1 %cmp50.i, label %if.end48.i.gfar_of_init.exit.thread_crit_edge, label %if.end53.i

if.end48.i.gfar_of_init.exit.thread_crit_edge:    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_of_init.exit.thread

if.end53.i:                                       ; preds = %if.end48.i
  %add.ptr.i.i = getelementptr i8, ptr %call49.i, i32 2304
  %ndev.i = getelementptr i8, ptr %call49.i, i32 2308
  %8 = ptrtoint ptr %ndev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call49.i, ptr %ndev.i, align 4
  %mode55.i = getelementptr i8, ptr %call49.i, i32 3716
  %9 = ptrtoint ptr %mode55.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %..i, ptr %mode55.i, align 4
  %num_tx_queues.i = getelementptr i8, ptr %call49.i, i32 3720
  %10 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %num_rx_qs.1.i, ptr %num_tx_queues.i, align 8
  %call56.i = tail call i32 @netif_set_real_num_rx_queues(ptr noundef nonnull %call49.i, i32 noundef %num_rx_qs.1.i) #15
  %num_rx_queues.i = getelementptr i8, ptr %call49.i, i32 3724
  %11 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %num_rx_qs.1.i, ptr %num_rx_queues.i, align 4
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp27.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp27.not.i.i, label %if.end53.i.for.body.i293.i.preheader_crit_edge, label %if.end53.i.for.body.i286.i_crit_edge

if.end53.i.for.body.i286.i_crit_edge:             ; preds = %if.end53.i
  br label %for.body.i286.i

if.end53.i.for.body.i293.i.preheader_crit_edge:   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i293.i.preheader

for.body.i286.i:                                  ; preds = %if.end.i.i.for.body.i286.i_crit_edge, %if.end53.i.for.body.i286.i_crit_edge
  %i.028.i.i = phi i32 [ %inc.i287.i, %if.end.i.i.for.body.i286.i_crit_edge ], [ 0, %if.end53.i.for.body.i286.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 128) #21
  %arrayidx.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 8, i32 %i.028.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i.i, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i286.i.tx_alloc_failed.i_crit_edge, label %if.end.i.i

for.body.i286.i.tx_alloc_failed.i_crit_edge:      ; preds = %for.body.i286.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_alloc_failed.i

if.end.i.i:                                       ; preds = %for.body.i286.i
  %tx_skbuff.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %call7.i.i.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %tx_skbuff.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %tx_skbuff.i.i, align 8
  %conv.i.i = trunc i32 %i.028.i.i to i16
  %qindex.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %call7.i.i.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %qindex.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %qindex.i.i, align 2
  %18 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev.i, align 4
  %dev.i.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %call7.i.i.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %dev.i.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @gfar_alloc_tx_queues.__key, i16 noundef signext 3) #15
  %inc.i287.i = add nuw i32 %i.028.i.i, 1
  %21 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_tx_queues.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i287.i, %22
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i286.i_crit_edge, label %if.end60.i

if.end.i.i.for.body.i286.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i286.i

if.end60.i:                                       ; preds = %if.end.i.i
  %23 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp19.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp19.not.i.i, label %if.end60.i.if.end64.i_crit_edge, label %if.end60.i.for.body.i293.i.preheader_crit_edge

if.end60.i.for.body.i293.i.preheader_crit_edge:   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i293.i.preheader

if.end60.i.if.end64.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64.i

for.body.i293.i.preheader:                        ; preds = %if.end60.i.for.body.i293.i.preheader_crit_edge, %if.end53.i.for.body.i293.i.preheader_crit_edge
  br label %for.body.i293.i

for.body.i293.i:                                  ; preds = %if.end.i298.i.for.body.i293.i_crit_edge, %for.body.i293.i.preheader
  %i.020.i.i = phi i32 [ %inc.i296.i, %if.end.i298.i.for.body.i293.i_crit_edge ], [ 0, %for.body.i293.i.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i290.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 128) #21
  %arrayidx.i291.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 9, i32 %i.020.i.i
  %25 = ptrtoint ptr %arrayidx.i291.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i290.i, ptr %arrayidx.i291.i, align 4
  %tobool.not.i292.i = icmp eq ptr %call7.i.i.i290.i, null
  br i1 %tobool.not.i292.i, label %for.body.i293.i.rx_alloc_failed.i_crit_edge, label %if.end.i298.i

for.body.i293.i.rx_alloc_failed.i_crit_edge:      ; preds = %for.body.i293.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rx_alloc_failed.i

if.end.i298.i:                                    ; preds = %for.body.i293.i
  %conv.i294.i = trunc i32 %i.020.i.i to i16
  %qindex.i295.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %call7.i.i.i290.i, i32 0, i32 5
  %26 = ptrtoint ptr %qindex.i295.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i294.i, ptr %qindex.i295.i, align 2
  %27 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev.i, align 4
  %ndev7.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %call7.i.i.i290.i, i32 0, i32 2
  %29 = ptrtoint ptr %ndev7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %ndev7.i.i, align 8
  %inc.i296.i = add nuw i32 %i.020.i.i, 1
  %30 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i297.i = icmp ult i32 %inc.i296.i, %31
  br i1 %cmp.i297.i, label %if.end.i298.i.for.body.i293.i_crit_edge, label %if.end.i298.i.if.end64.i_crit_edge

if.end.i298.i.if.end64.i_crit_edge:               ; preds = %if.end.i298.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64.i

if.end.i298.i.for.body.i293.i_crit_edge:          ; preds = %if.end.i298.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i293.i

if.end64.i:                                       ; preds = %if.end.i298.i.if.end64.i_crit_edge, %if.end60.i.if.end64.i_crit_edge
  %call65.i = call i32 @of_property_read_string(ptr noundef nonnull %1, ptr noundef nonnull @.str.36, ptr noundef nonnull %model.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end73.i, label %do.end70.i

do.end70.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #17
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #20
  br label %rx_alloc_failed.i

if.end73.i:                                       ; preds = %if.end64.i
  %rx_list.i = getelementptr i8, ptr %call49.i, i32 4008
  %32 = ptrtoint ptr %rx_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %rx_list.i, ptr %rx_list.i, align 4
  %prev.i.i = getelementptr i8, ptr %call49.i, i32 4012
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %rx_list.i, ptr %prev.i.i, align 4
  %count.i = getelementptr i8, ptr %call49.i, i32 4016
  %34 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %count.i, align 8
  %rx_queue_access.i = getelementptr i8, ptr %call49.i, i32 4020
  call void @__mutex_init(ptr noundef %rx_queue_access.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @gfar_of_init.__key) #15
  %regs.i = getelementptr i8, ptr %call49.i, i32 2928
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %regs.i, align 16
  %regs.1.i = getelementptr i8, ptr %call49.i, i32 3568
  %36 = ptrtoint ptr %regs.1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %regs.1.i, align 16
  %37 = ptrtoint ptr %mode55.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mode55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %38)
  %cmp82.i = icmp eq i16 %38, 1
  br i1 %cmp82.i, label %if.then84.i, label %if.else100.i

if.then84.i:                                      ; preds = %if.end73.i
  %call85.i = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #15
  %cmp87.not335.i = icmp eq ptr %call85.i, null
  br i1 %cmp87.not335.i, label %if.then84.i.if.end105.i_crit_edge, label %if.then84.i.for.body89.i_crit_edge

if.then84.i.for.body89.i_crit_edge:               ; preds = %if.then84.i
  br label %for.body89.i

if.then84.i.if.end105.i_crit_edge:                ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105.i

for.body89.i:                                     ; preds = %for.inc97.i.for.body89.i_crit_edge, %if.then84.i.for.body89.i_crit_edge
  %child.0336.i = phi ptr [ %call98.i, %for.inc97.i.for.body89.i_crit_edge ], [ %call85.i, %if.then84.i.for.body89.i_crit_edge ]
  %call90.i = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.0336.i, ptr noundef nonnull @.str.41) #15
  br i1 %call90.i, label %if.end92.i, label %for.body89.i.for.inc97.i_crit_edge

for.body89.i.for.inc97.i_crit_edge:               ; preds = %for.body89.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc97.i

if.end92.i:                                       ; preds = %for.body89.i
  %39 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %model.i, align 4
  %call93.i = call fastcc i32 @gfar_parse_group(ptr noundef nonnull %child.0336.i, ptr noundef %add.ptr.i.i, ptr noundef %40) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %if.end92.i.for.inc97.i_crit_edge, label %if.then95.i

if.end92.i.for.inc97.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc97.i

if.then95.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @of_node_put(ptr noundef nonnull %child.0336.i) #15
  br label %err_grp_init.i

for.inc97.i:                                      ; preds = %if.end92.i.for.inc97.i_crit_edge, %for.body89.i.for.inc97.i_crit_edge
  %call98.i = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child.0336.i) #15
  %cmp87.not.i = icmp eq ptr %call98.i, null
  br i1 %cmp87.not.i, label %for.inc97.i.if.end105.i_crit_edge, label %for.inc97.i.for.body89.i_crit_edge

for.inc97.i.for.body89.i_crit_edge:               ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body89.i

for.inc97.i.if.end105.i_crit_edge:                ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105.i

if.else100.i:                                     ; preds = %if.end73.i
  %41 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %model.i, align 4
  %call101.i = call fastcc i32 @gfar_parse_group(ptr noundef nonnull %1, ptr noundef %add.ptr.i.i, ptr noundef %42) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %tobool102.not.i = icmp eq i32 %call101.i, 0
  br i1 %tobool102.not.i, label %if.else100.i.if.end105.i_crit_edge, label %if.else100.i.err_grp_init.i_crit_edge

if.else100.i.err_grp_init.i_crit_edge:            ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_grp_init.i

if.else100.i.if.end105.i_crit_edge:               ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.else100.i.if.end105.i_crit_edge, %for.inc97.i.if.end105.i_crit_edge, %if.then84.i.if.end105.i_crit_edge
  %call.i300.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.42, ptr noundef null) #15
  %tobool.i.not.i = icmp eq ptr %call.i300.i, null
  br i1 %tobool.i.not.i, label %if.end105.i.if.end108.i_crit_edge, label %if.then107.i

if.end105.i.if.end108.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108.i

if.then107.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #17
  %device_flags.i = getelementptr i8, ptr %call49.i, i32 2320
  %43 = ptrtoint ptr %device_flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %device_flags.i, align 16
  %or.i = or i32 %44, 512
  store i32 %or.i, ptr %device_flags.i, align 16
  %bd_stash_en.i = getelementptr i8, ptr %call49.i, i32 3976
  %45 = ptrtoint ptr %bd_stash_en.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i = load i8, ptr %bd_stash_en.i, align 8
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %bd_stash_en.i, align 8
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then107.i, %if.end105.i.if.end108.i_crit_edge
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.43, ptr noundef nonnull %stash_len.i, i32 noundef 1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp110.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp110.i, label %if.then112.i, label %if.end108.i.if.end113.i_crit_edge

if.end108.i.if.end113.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113.i

if.then112.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %stash_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stash_len.i, align 4
  %rx_stash_size.i = getelementptr i8, ptr %call49.i, i32 3996
  %48 = ptrtoint ptr %rx_stash_size.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %rx_stash_size.i, align 4
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then112.i, %if.end108.i.if.end113.i_crit_edge
  %call.i.i301.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.44, ptr noundef nonnull %stash_idx.i, i32 noundef 1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i301.i)
  %cmp115.i = icmp sgt i32 %call.i.i301.i, -1
  br i1 %cmp115.i, label %if.then117.i, label %if.end113.i.if.end118.i_crit_edge

if.end113.i.if.end118.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end118.i

if.then117.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %stash_idx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stash_idx.i, align 4
  %rx_stash_index.i = getelementptr i8, ptr %call49.i, i32 4000
  %51 = ptrtoint ptr %rx_stash_index.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %rx_stash_index.i, align 32
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then117.i, %if.end113.i.if.end118.i_crit_edge
  %52 = ptrtoint ptr %stash_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stash_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool119.not.i = icmp eq i32 %53, 0
  br i1 %tobool119.not.i, label %lor.lhs.false120.i, label %if.end118.i.if.then122.i_crit_edge

if.end118.i.if.then122.i_crit_edge:               ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then122.i

lor.lhs.false120.i:                               ; preds = %if.end118.i
  %54 = ptrtoint ptr %stash_idx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %stash_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool121.not.i = icmp eq i32 %55, 0
  br i1 %tobool121.not.i, label %lor.lhs.false120.i.if.end125.i_crit_edge, label %lor.lhs.false120.i.if.then122.i_crit_edge

lor.lhs.false120.i.if.then122.i_crit_edge:        ; preds = %lor.lhs.false120.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then122.i

lor.lhs.false120.i.if.end125.i_crit_edge:         ; preds = %lor.lhs.false120.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125.i

if.then122.i:                                     ; preds = %lor.lhs.false120.i.if.then122.i_crit_edge, %if.end118.i.if.then122.i_crit_edge
  %device_flags123.i = getelementptr i8, ptr %call49.i, i32 2320
  %56 = ptrtoint ptr %device_flags123.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %device_flags123.i, align 16
  %or124.i = or i32 %57, 1024
  store i32 %or124.i, ptr %device_flags123.i, align 16
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then122.i, %lor.lhs.false120.i.if.end125.i_crit_edge
  %call126.i = call i32 @of_get_ethdev_address(ptr noundef nonnull %1, ptr noundef nonnull %call49.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.i)
  %tobool127.not.i = icmp eq i32 %call126.i, 0
  br i1 %tobool127.not.i, label %if.end125.i.if.end133.i_crit_edge, label %if.then128.i

if.end125.i.if.end133.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end133.i

if.then128.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call49.i) #15
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 86
  %58 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_addr.i, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef %59) #20
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then128.i, %if.end125.i.if.end133.i_crit_edge
  %60 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %model.i, align 4
  %tobool134.not.i = icmp eq ptr %61, null
  br i1 %tobool134.not.i, label %if.end133.i.if.end148.i_crit_edge, label %land.lhs.true.i

if.end133.i.if.end148.i_crit_edge:                ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end148.i

land.lhs.true.i:                                  ; preds = %if.end133.i
  %call135.i = call i32 @strcasecmp(ptr noundef nonnull %61, ptr noundef nonnull @.str.49) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135.i)
  %tobool136.not.i = icmp eq i32 %call135.i, 0
  br i1 %tobool136.not.i, label %if.end140.i, label %land.lhs.true.i.land.lhs.true142.i_crit_edge

land.lhs.true.i.land.lhs.true142.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true142.i

if.end140.i:                                      ; preds = %land.lhs.true.i
  %device_flags138.i = getelementptr i8, ptr %call49.i, i32 2320
  %62 = ptrtoint ptr %device_flags138.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %device_flags138.i, align 16
  %or139.i = or i32 %63, 15
  store i32 %or139.i, ptr %device_flags138.i, align 16
  %64 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr328.i = load ptr, ptr %model.i, align 4
  %tobool141.not.i = icmp eq ptr %.pr328.i, null
  br i1 %tobool141.not.i, label %if.end140.i.if.end148.i_crit_edge, label %if.end140.i.land.lhs.true142.i_crit_edge

if.end140.i.land.lhs.true142.i_crit_edge:         ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true142.i

if.end140.i.if.end148.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end148.i

land.lhs.true142.i:                               ; preds = %if.end140.i.land.lhs.true142.i_crit_edge, %land.lhs.true.i.land.lhs.true142.i_crit_edge
  %65 = phi ptr [ %.pr328.i, %if.end140.i.land.lhs.true142.i_crit_edge ], [ %61, %land.lhs.true.i.land.lhs.true142.i_crit_edge ]
  %call143.i = call i32 @strcasecmp(ptr noundef nonnull %65, ptr noundef nonnull @.str.50) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143.i)
  %tobool144.not.i = icmp eq i32 %call143.i, 0
  br i1 %tobool144.not.i, label %if.then145.i, label %land.lhs.true142.i.if.end148.i_crit_edge

land.lhs.true142.i.if.end148.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end148.i

if.then145.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #17
  %device_flags146.i = getelementptr i8, ptr %call49.i, i32 2320
  %66 = ptrtoint ptr %device_flags146.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %device_flags146.i, align 16
  %or147.i = or i32 %67, 10623
  store i32 %or147.i, ptr %device_flags146.i, align 16
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then145.i, %land.lhs.true142.i.if.end148.i_crit_edge, %if.end140.i.if.end148.i_crit_edge, %if.end133.i.if.end148.i_crit_edge
  %call149.i = call i32 @of_get_phy_mode(ptr noundef nonnull %1, ptr noundef nonnull %interface.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %tobool150.not.i = icmp eq i32 %call149.i, 0
  br i1 %tobool150.not.i, label %if.then151.i, label %if.else153.i

if.then151.i:                                     ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %interface.i, align 4
  br label %if.end156.i

if.else153.i:                                     ; preds = %if.end148.i
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 16
  %ecntrl2.i = getelementptr inbounds %struct.gfar, ptr %71, i32 0, i32 7
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ecntrl2.i) #15, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and.i366 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i366)
  %tobool.not.i367 = icmp eq i32 %and.i366, 0
  br i1 %tobool.not.i367, label %if.end.i368, label %if.else153.i.if.end156.i_crit_edge

if.else153.i.if.end156.i_crit_edge:               ; preds = %if.else153.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end156.i

if.end.i368:                                      ; preds = %if.else153.i
  %and4.i = and i32 %72, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %and11.i = and i32 %72, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool5.not.i, label %if.end10.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i368
  call void @__sanitizer_cov_trace_pc() #17
  %..i369 = select i1 %tobool12.not.i, i32 5, i32 13
  br label %if.end156.i

if.end10.i:                                       ; preds = %if.end.i368
  br i1 %tobool12.not.i, label %if.end21.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end10.i
  %and14.i = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else17.i, label %if.then13.i.if.end156.i_crit_edge

if.then13.i.if.end156.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end156.i

if.else17.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  %interface18.i = getelementptr i8, ptr %call49.i, i32 3896
  %73 = ptrtoint ptr %interface18.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %interface18.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %74)
  %cmp.i370 = icmp eq i32 %74, 10
  %.35.i = select i1 %cmp.i370, i32 10, i32 9
  br label %if.end156.i

if.end21.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %device_flags.i371 = getelementptr i8, ptr %call49.i, i32 2320
  %75 = ptrtoint ptr %device_flags.i371 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %device_flags.i371, align 16
  %and22.i = and i32 %76, 1
  %77 = or i32 %and22.i, 2
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.end21.i, %if.else17.i, %if.then13.i.if.end156.i_crit_edge, %if.then6.i, %if.else153.i.if.end156.i_crit_edge, %if.then151.i
  %call154.sink.i = phi i32 [ %69, %if.then151.i ], [ %.35.i, %if.else17.i ], [ 4, %if.else153.i.if.end156.i_crit_edge ], [ %..i369, %if.then6.i ], [ 7, %if.then13.i.if.end156.i_crit_edge ], [ %77, %if.end21.i ]
  %78 = getelementptr i8, ptr %call49.i, i32 3896
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call154.sink.i, ptr %78, align 8
  %call157.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.51, ptr noundef null) #15
  %tobool158.not.i = icmp eq ptr %call157.i, null
  br i1 %tobool158.not.i, label %if.end156.i.if.end162.i_crit_edge, label %if.then159.i

if.end156.i.if.end162.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end162.i

if.then159.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #17
  %device_flags160.i = getelementptr i8, ptr %call49.i, i32 2320
  %80 = ptrtoint ptr %device_flags160.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %device_flags160.i, align 16
  %or161.i = or i32 %81, 256
  store i32 %or161.i, ptr %device_flags160.i, align 16
  br label %if.end162.i

if.end162.i:                                      ; preds = %if.then159.i, %if.end156.i.if.end162.i_crit_edge
  %call163.i = call ptr @of_get_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.52, ptr noundef null) #15
  %tobool164.not.i = icmp eq ptr %call163.i, null
  br i1 %tobool164.not.i, label %if.end162.i.if.end168.i_crit_edge, label %if.then165.i

if.end162.i.if.end168.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end168.i

if.then165.i:                                     ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #17
  %device_flags166.i = getelementptr i8, ptr %call49.i, i32 2320
  %82 = ptrtoint ptr %device_flags166.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %device_flags166.i, align 16
  %or167.i = or i32 %83, 4096
  store i32 %or167.i, ptr %device_flags166.i, align 16
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.then165.i, %if.end162.i.if.end168.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i358) #15
  %84 = call ptr @memset(ptr %args.i358, i32 255, i32 72)
  %call.i359 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.53, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i358) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i359)
  %tobool.not.i360 = icmp eq i32 %call.i359, 0
  br i1 %tobool.not.i360, label %of_parse_phandle.exit364, label %of_parse_phandle.exit364.thread

of_parse_phandle.exit364.thread:                  ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i358) #15
  %phy_node.i397 = getelementptr i8, ptr %call49.i, i32 3900
  %85 = ptrtoint ptr %phy_node.i397 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %phy_node.i397, align 4
  br label %land.lhs.true172.i

of_parse_phandle.exit364:                         ; preds = %if.end168.i
  %86 = ptrtoint ptr %args.i358 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %args.i358, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i358) #15
  %phy_node.i = getelementptr i8, ptr %call49.i, i32 3900
  %88 = ptrtoint ptr %phy_node.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %phy_node.i, align 4
  %tobool171.not.i = icmp eq ptr %87, null
  br i1 %tobool171.not.i, label %of_parse_phandle.exit364.land.lhs.true172.i_crit_edge, label %of_parse_phandle.exit364.if.end182.i_crit_edge

of_parse_phandle.exit364.if.end182.i_crit_edge:   ; preds = %of_parse_phandle.exit364
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end182.i

of_parse_phandle.exit364.land.lhs.true172.i_crit_edge: ; preds = %of_parse_phandle.exit364
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true172.i

land.lhs.true172.i:                               ; preds = %of_parse_phandle.exit364.land.lhs.true172.i_crit_edge, %of_parse_phandle.exit364.thread
  %phy_node.i399 = phi ptr [ %phy_node.i397, %of_parse_phandle.exit364.thread ], [ %phy_node.i, %of_parse_phandle.exit364.land.lhs.true172.i_crit_edge ]
  %call173.i = call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %1) #15
  br i1 %call173.i, label %if.then175.i, label %land.lhs.true172.i.if.end182.i_crit_edge

land.lhs.true172.i.if.end182.i_crit_edge:         ; preds = %land.lhs.true172.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end182.i

if.then175.i:                                     ; preds = %land.lhs.true172.i
  %call176.i = call i32 @of_phy_register_fixed_link(ptr noundef nonnull %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176.i)
  %tobool177.not.i = icmp eq i32 %call176.i, 0
  br i1 %tobool177.not.i, label %if.end179.i, label %if.then175.i.err_grp_init.i_crit_edge

if.then175.i.err_grp_init.i_crit_edge:            ; preds = %if.then175.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_grp_init.i

if.end179.i:                                      ; preds = %if.then175.i
  call void @__sanitizer_cov_trace_pc() #17
  %call180.i = call ptr @of_node_get(ptr noundef nonnull %1) #15
  %89 = ptrtoint ptr %phy_node.i399 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call180.i, ptr %phy_node.i399, align 4
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.end179.i, %land.lhs.true172.i.if.end182.i_crit_edge, %of_parse_phandle.exit364.if.end182.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #15
  %90 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i354 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.54, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %tobool.not.i355 = icmp eq i32 %call.i354, 0
  br i1 %tobool.not.i355, label %if.end.i356, label %if.end182.i.gfar_of_init.exit.thread403_crit_edge

if.end182.i.gfar_of_init.exit.thread403_crit_edge: ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_of_init.exit.thread403

if.end.i356:                                      ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %args.i, align 4
  br label %gfar_of_init.exit.thread403

gfar_of_init.exit.thread403:                      ; preds = %if.end.i356, %if.end182.i.gfar_of_init.exit.thread403_crit_edge
  %retval.0.i = phi ptr [ %92, %if.end.i356 ], [ null, %if.end182.i.gfar_of_init.exit.thread403_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #15
  %tbi_node.i = getelementptr i8, ptr %call49.i, i32 3904
  %93 = ptrtoint ptr %tbi_node.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %retval.0.i, ptr %tbi_node.i, align 64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stash_idx.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stash_len.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interface.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %model.i) #15
  br label %if.end

err_grp_init.i:                                   ; preds = %if.then175.i.err_grp_init.i_crit_edge, %if.else100.i.err_grp_init.i_crit_edge, %if.then95.i
  %err.0.i = phi i32 [ %call93.i, %if.then95.i ], [ %call176.i, %if.then175.i.err_grp_init.i_crit_edge ], [ %call101.i, %if.else100.i.err_grp_init.i_crit_edge ]
  %94 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i, align 16
  %tobool.not.i347 = icmp eq ptr %95, null
  br i1 %tobool.not.i347, label %err_grp_init.i.for.inc.i351_crit_edge, label %if.then.i348

err_grp_init.i.for.inc.i351_crit_edge:            ; preds = %err_grp_init.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i351

if.then.i348:                                     ; preds = %err_grp_init.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @iounmap(ptr noundef nonnull %95) #15
  br label %for.inc.i351

for.inc.i351:                                     ; preds = %if.then.i348, %err_grp_init.i.for.inc.i351_crit_edge
  %96 = ptrtoint ptr %regs.1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.1.i, align 16
  %tobool.not.1.i350 = icmp eq ptr %97, null
  br i1 %tobool.not.1.i350, label %for.inc.i351.rx_alloc_failed.i_crit_edge, label %if.then.1.i352

for.inc.i351.rx_alloc_failed.i_crit_edge:         ; preds = %for.inc.i351
  call void @__sanitizer_cov_trace_pc() #17
  br label %rx_alloc_failed.i

if.then.1.i352:                                   ; preds = %for.inc.i351
  call void @__sanitizer_cov_trace_pc() #17
  call void @iounmap(ptr noundef nonnull %97) #15
  br label %rx_alloc_failed.i

rx_alloc_failed.i:                                ; preds = %if.then.1.i352, %for.inc.i351.rx_alloc_failed.i_crit_edge, %do.end70.i, %for.body.i293.i.rx_alloc_failed.i_crit_edge
  %err.1.i = phi i32 [ %call65.i, %do.end70.i ], [ %err.0.i, %for.inc.i351.rx_alloc_failed.i_crit_edge ], [ %err.0.i, %if.then.1.i352 ], [ -12, %for.body.i293.i.rx_alloc_failed.i_crit_edge ]
  %98 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp4.not.i.i = icmp eq i32 %99, 0
  br i1 %cmp4.not.i.i, label %rx_alloc_failed.i.tx_alloc_failed.i_crit_edge, label %rx_alloc_failed.i.for.body.i306.i_crit_edge

rx_alloc_failed.i.for.body.i306.i_crit_edge:      ; preds = %rx_alloc_failed.i
  br label %for.body.i306.i

rx_alloc_failed.i.tx_alloc_failed.i_crit_edge:    ; preds = %rx_alloc_failed.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_alloc_failed.i

for.body.i306.i:                                  ; preds = %for.body.i306.i.for.body.i306.i_crit_edge, %rx_alloc_failed.i.for.body.i306.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i304.i, %for.body.i306.i.for.body.i306.i_crit_edge ], [ 0, %rx_alloc_failed.i.for.body.i306.i_crit_edge ]
  %arrayidx.i303.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 9, i32 %i.05.i.i
  %100 = ptrtoint ptr %arrayidx.i303.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i303.i, align 4
  call void @kfree(ptr noundef %101) #15
  %inc.i304.i = add nuw i32 %i.05.i.i, 1
  %102 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i305.i = icmp ult i32 %inc.i304.i, %103
  br i1 %cmp.i305.i, label %for.body.i306.i.for.body.i306.i_crit_edge, label %for.body.i306.i.tx_alloc_failed.i_crit_edge

for.body.i306.i.tx_alloc_failed.i_crit_edge:      ; preds = %for.body.i306.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_alloc_failed.i

for.body.i306.i.for.body.i306.i_crit_edge:        ; preds = %for.body.i306.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i306.i

tx_alloc_failed.i:                                ; preds = %for.body.i306.i.tx_alloc_failed.i_crit_edge, %rx_alloc_failed.i.tx_alloc_failed.i_crit_edge, %for.body.i286.i.tx_alloc_failed.i_crit_edge
  %err.2.i = phi i32 [ %err.1.i, %rx_alloc_failed.i.tx_alloc_failed.i_crit_edge ], [ %err.1.i, %for.body.i306.i.tx_alloc_failed.i_crit_edge ], [ -12, %for.body.i286.i.tx_alloc_failed.i_crit_edge ]
  %104 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp4.not.i308.i = icmp eq i32 %105, 0
  br i1 %cmp4.not.i308.i, label %tx_alloc_failed.i.gfar_free_tx_queues.exit.i_crit_edge, label %tx_alloc_failed.i.for.body.i313.i_crit_edge

tx_alloc_failed.i.for.body.i313.i_crit_edge:      ; preds = %tx_alloc_failed.i
  br label %for.body.i313.i

tx_alloc_failed.i.gfar_free_tx_queues.exit.i_crit_edge: ; preds = %tx_alloc_failed.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_tx_queues.exit.i

for.body.i313.i:                                  ; preds = %for.body.i313.i.for.body.i313.i_crit_edge, %tx_alloc_failed.i.for.body.i313.i_crit_edge
  %i.05.i309.i = phi i32 [ %inc.i311.i, %for.body.i313.i.for.body.i313.i_crit_edge ], [ 0, %tx_alloc_failed.i.for.body.i313.i_crit_edge ]
  %arrayidx.i310.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 8, i32 %i.05.i309.i
  %106 = ptrtoint ptr %arrayidx.i310.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i310.i, align 4
  call void @kfree(ptr noundef %107) #15
  %inc.i311.i = add nuw i32 %i.05.i309.i, 1
  %108 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_tx_queues.i, align 8
  %cmp.i312.i = icmp ult i32 %inc.i311.i, %109
  br i1 %cmp.i312.i, label %for.body.i313.i.for.body.i313.i_crit_edge, label %for.body.i313.i.gfar_free_tx_queues.exit.i_crit_edge

for.body.i313.i.gfar_free_tx_queues.exit.i_crit_edge: ; preds = %for.body.i313.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_tx_queues.exit.i

for.body.i313.i.for.body.i313.i_crit_edge:        ; preds = %for.body.i313.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i313.i

gfar_free_tx_queues.exit.i:                       ; preds = %for.body.i313.i.gfar_free_tx_queues.exit.i_crit_edge, %tx_alloc_failed.i.gfar_free_tx_queues.exit.i_crit_edge
  %num_grps.i.i = getelementptr i8, ptr %call49.i, i32 3728
  %110 = ptrtoint ptr %num_grps.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_grps.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp22.not.i.i = icmp eq i32 %111, 0
  br i1 %cmp22.not.i.i, label %gfar_free_tx_queues.exit.i.gfar_of_init.exit_crit_edge, label %gfar_free_tx_queues.exit.i.for.cond1.preheader.i.i_crit_edge

gfar_free_tx_queues.exit.i.for.cond1.preheader.i.i_crit_edge: ; preds = %gfar_free_tx_queues.exit.i
  br label %for.cond1.preheader.i.i

gfar_free_tx_queues.exit.i.gfar_of_init.exit_crit_edge: ; preds = %gfar_free_tx_queues.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_of_init.exit

for.cond1.preheader.i.i:                          ; preds = %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge, %gfar_free_tx_queues.exit.i.for.cond1.preheader.i.i_crit_edge
  %i.023.i.i = phi i32 [ %inc10.i.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ], [ 0, %gfar_free_tx_queues.exit.i.for.cond1.preheader.i.i_crit_edge ]
  %arrayidx4.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 11, i32 %i.023.i.i, i32 13, i32 0
  %112 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx4.i.i, align 4
  call void @kfree(ptr noundef %113) #15
  %114 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %arrayidx4.i.i, align 4
  %arrayidx4.1.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 11, i32 %i.023.i.i, i32 13, i32 1
  %115 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx4.1.i.i, align 4
  call void @kfree(ptr noundef %116) #15
  %117 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %arrayidx4.1.i.i, align 4
  %arrayidx4.2.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 11, i32 %i.023.i.i, i32 13, i32 2
  %118 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx4.2.i.i, align 4
  call void @kfree(ptr noundef %119) #15
  %120 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %arrayidx4.2.i.i, align 4
  %inc10.i.i = add nuw i32 %i.023.i.i, 1
  %121 = ptrtoint ptr %num_grps.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_grps.i.i, align 16
  %cmp.i314.i = icmp ult i32 %inc10.i.i, %122
  br i1 %cmp.i314.i, label %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge, label %for.cond1.preheader.i.i.gfar_of_init.exit_crit_edge

for.cond1.preheader.i.i.gfar_of_init.exit_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_of_init.exit

for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond1.preheader.i.i

gfar_of_init.exit.thread:                         ; preds = %if.end48.i.gfar_of_init.exit.thread_crit_edge, %cleanup.i, %entry.gfar_of_init.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ -12, %if.end48.i.gfar_of_init.exit.thread_crit_edge ], [ -19, %entry.gfar_of_init.exit.thread_crit_edge ], [ -22, %cleanup.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stash_idx.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stash_len.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interface.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %model.i) #15
  br label %cleanup

gfar_of_init.exit:                                ; preds = %for.cond1.preheader.i.i.gfar_of_init.exit_crit_edge, %gfar_free_tx_queues.exit.i.gfar_of_init.exit_crit_edge
  %123 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ndev.i, align 4
  call void @free_netdev(ptr noundef %124) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stash_idx.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stash_len.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interface.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %model.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool.not = icmp eq i32 %err.2.i, 0
  br i1 %tobool.not, label %gfar_of_init.exit.if.end_crit_edge, label %gfar_of_init.exit.cleanup_crit_edge

gfar_of_init.exit.cleanup_crit_edge:              ; preds = %gfar_of_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

gfar_of_init.exit.if.end_crit_edge:               ; preds = %gfar_of_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %gfar_of_init.exit.if.end_crit_edge, %gfar_of_init.exit.thread403
  %125 = ptrtoint ptr %ndev.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call49.i, ptr %ndev.i, align 4
  %ofdev3 = getelementptr i8, ptr %call49.i, i32 3972
  %126 = ptrtoint ptr %ofdev3 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %ofdev, ptr %ofdev3, align 4
  %127 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %dev, ptr %add.ptr.i.i, align 128
  %parent = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 133, i32 1
  %128 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %dev, ptr %parent, align 8
  %reset_task = getelementptr i8, ptr %call49.i, i32 3928
  call void @__init_work(ptr noundef %reset_task, i32 noundef 0) #15
  %129 = ptrtoint ptr %reset_task to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -64, ptr %reset_task, align 8
  %lockdep_map = getelementptr i8, ptr %call49.i, i32 3944
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @gfar_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry11 = getelementptr i8, ptr %call49.i, i32 3932
  %130 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr i8, ptr %call49.i, i32 3936
  %131 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call49.i, i32 3940
  %132 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @gfar_reset_task, ptr %func, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %133 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %add.ptr.i.i, ptr %driver_data.i.i, align 4
  %134 = ptrtoint ptr %ofdev3 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ofdev3, align 4
  %errata.i = getelementptr i8, ptr %call49.i, i32 2312
  %136 = ptrtoint ptr %errata.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %errata.i, align 8
  %or.i304 = or i32 %137, 4
  store i32 %or.i304, ptr %errata.i, align 8
  %dev1.i305 = getelementptr inbounds %struct.platform_device, ptr %135, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i305, ptr noundef nonnull @.str.58, i32 noundef %or.i304) #20
  %regs = getelementptr i8, ptr %call49.i, i32 2928
  %138 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs, align 16
  %140 = ptrtoint ptr %139 to i32
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 5
  %141 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %base_addr, align 32
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 115
  %142 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 500, ptr %watchdog_timeo, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 20
  %143 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1500, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 30
  %144 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 50, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 31
  %145 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 9586, ptr %max_mtu, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 16
  %146 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @gfar_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 44
  %147 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @gfar_ethtool_ops, ptr %ethtool_ops, align 16
  %num_grps = getelementptr i8, ptr %call49.i, i32 3728
  %148 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %num_grps, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp410.not = icmp eq i32 %149, 0
  br i1 %cmp410.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0411 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %napi_rx = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 11, i32 %i.0411, i32 1
  call void @netif_napi_add(ptr noundef %call49.i, ptr noundef %napi_rx, ptr noundef nonnull @gfar_poll_rx_sq, i32 noundef 64) #15
  %napi_tx = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 11, i32 %i.0411, i32 2
  %state.i = getelementptr inbounds %struct.napi_struct, ptr %napi_tx, i32 0, i32 1
  call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #15
  call void @netif_napi_add(ptr noundef %call49.i, ptr noundef %napi_tx, ptr noundef nonnull @gfar_poll_tx_sq, i32 noundef 2) #15
  %inc = add nuw i32 %i.0411, 1
  %150 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %num_grps, align 16
  %cmp = icmp ult i32 %inc, %151
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %device_flags = getelementptr i8, ptr %call49.i, i32 2320
  %152 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %device_flags, align 16
  %and = and i32 %153, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %for.end.if.end19_crit_edge, label %if.then18

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 24
  %154 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 1099511627779, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 23
  %155 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %features, align 16
  %or = or i64 %156, 1099511627811
  store i64 %or, ptr %features, align 16
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %for.end.if.end19_crit_edge
  %157 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %device_flags, align 16
  %and21 = and i32 %158, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end28_crit_edge, label %if.then23

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %hw_features24 = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 24
  %159 = ptrtoint ptr %hw_features24 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %hw_features24, align 8
  %or25 = or i64 %160, 384
  store i64 %or25, ptr %hw_features24, align 8
  %features26 = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 23
  %161 = ptrtoint ptr %features26 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %features26, align 16
  %or27 = or i64 %162, 256
  store i64 %or27, ptr %features26, align 16
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end19.if.end28_crit_edge
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 15
  %163 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %priv_flags, align 16
  %or29 = or i64 %164, 32768
  store i64 %or29, ptr %priv_flags, align 16
  %165 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs, align 16
  %167 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %device_flags, align 16
  %and.i = and i32 %168, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i307 = icmp eq i32 %and.i, 0
  %extended_hash33.i = getelementptr i8, ptr %call49.i, i32 3976
  %169 = ptrtoint ptr %extended_hash33.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %bf.load34.i = load i8, ptr %extended_hash33.i, align 8
  br i1 %tobool.not.i307, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set.i308 = or i8 %bf.load34.i, -128
  %170 = ptrtoint ptr %extended_hash33.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %bf.set.i308, ptr %extended_hash33.i, align 8
  %igaddr0.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 164
  %igaddr1.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 165
  %igaddr2.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 166
  %igaddr3.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 167
  %igaddr4.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 168
  %igaddr5.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 169
  %igaddr6.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 170
  %igaddr7.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 171
  %gaddr0.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 173
  %arrayidx18.i = getelementptr i8, ptr %call49.i, i32 4144
  %171 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %gaddr0.i, ptr %arrayidx18.i, align 16
  %gaddr1.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 174
  %arrayidx20.i = getelementptr i8, ptr %call49.i, i32 4148
  %172 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %gaddr1.i, ptr %arrayidx20.i, align 4
  %gaddr2.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 175
  %arrayidx22.i = getelementptr i8, ptr %call49.i, i32 4152
  %173 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %gaddr2.i, ptr %arrayidx22.i, align 8
  %gaddr3.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 176
  %arrayidx24.i = getelementptr i8, ptr %call49.i, i32 4156
  %174 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %gaddr3.i, ptr %arrayidx24.i, align 4
  %gaddr4.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 177
  %arrayidx26.i = getelementptr i8, ptr %call49.i, i32 4160
  %175 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %gaddr4.i, ptr %arrayidx26.i, align 16
  %gaddr5.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 178
  %arrayidx28.i = getelementptr i8, ptr %call49.i, i32 4164
  %176 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %gaddr5.i, ptr %arrayidx28.i, align 4
  %gaddr6.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 179
  %arrayidx30.i = getelementptr i8, ptr %call49.i, i32 4168
  %177 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %gaddr6.i, ptr %arrayidx30.i, align 8
  %gaddr7.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 180
  %arrayidx32.i = getelementptr i8, ptr %call49.i, i32 4172
  %178 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %gaddr7.i, ptr %arrayidx32.i, align 4
  br label %gfar_init_addr_hash_table.exit

if.else.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear35.i = and i8 %bf.load34.i, 127
  %179 = ptrtoint ptr %extended_hash33.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %bf.clear35.i, ptr %extended_hash33.i, align 8
  %gaddr038.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 173
  %gaddr141.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 174
  %gaddr244.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 175
  %gaddr347.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 176
  %gaddr450.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 177
  %gaddr553.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 178
  %gaddr656.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 179
  %gaddr759.i = getelementptr inbounds %struct.gfar, ptr %166, i32 0, i32 180
  br label %gfar_init_addr_hash_table.exit

gfar_init_addr_hash_table.exit:                   ; preds = %if.else.i, %if.then.i
  %.sink = phi i32 [ 8, %if.else.i ], [ 9, %if.then.i ]
  %igaddr0.i.sink = phi ptr [ %gaddr038.i, %if.else.i ], [ %igaddr0.i, %if.then.i ]
  %igaddr1.i.sink = phi ptr [ %gaddr141.i, %if.else.i ], [ %igaddr1.i, %if.then.i ]
  %igaddr2.i.sink = phi ptr [ %gaddr244.i, %if.else.i ], [ %igaddr2.i, %if.then.i ]
  %igaddr3.i.sink = phi ptr [ %gaddr347.i, %if.else.i ], [ %igaddr3.i, %if.then.i ]
  %igaddr4.sink.i = phi ptr [ %gaddr450.i, %if.else.i ], [ %igaddr4.i, %if.then.i ]
  %igaddr5.sink.i = phi ptr [ %gaddr553.i, %if.else.i ], [ %igaddr5.i, %if.then.i ]
  %igaddr6.sink.i = phi ptr [ %gaddr656.i, %if.else.i ], [ %igaddr6.i, %if.then.i ]
  %igaddr7.sink.i = phi ptr [ %gaddr759.i, %if.else.i ], [ %igaddr7.i, %if.then.i ]
  %180 = getelementptr i8, ptr %call49.i, i32 4176
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %.sink, ptr %180, align 16
  %182 = getelementptr i8, ptr %call49.i, i32 4112
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %igaddr0.i.sink, ptr %182, align 16
  %184 = getelementptr i8, ptr %call49.i, i32 4116
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %igaddr1.i.sink, ptr %184, align 4
  %186 = getelementptr i8, ptr %call49.i, i32 4120
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %igaddr2.i.sink, ptr %186, align 8
  %188 = getelementptr i8, ptr %call49.i, i32 4124
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %igaddr3.i.sink, ptr %188, align 4
  %190 = getelementptr i8, ptr %call49.i, i32 4128
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %igaddr4.sink.i, ptr %190, align 16
  %192 = getelementptr i8, ptr %call49.i, i32 4132
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %igaddr5.sink.i, ptr %192, align 4
  %194 = getelementptr i8, ptr %call49.i, i32 4136
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %igaddr6.sink.i, ptr %194, align 8
  %196 = getelementptr i8, ptr %call49.i, i32 4140
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %igaddr7.sink.i, ptr %196, align 4
  %198 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %device_flags, align 16
  %and31 = and i32 %199, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %gfar_init_addr_hash_table.exit.if.end34_crit_edge, label %if.then33

gfar_init_addr_hash_table.exit.if.end34_crit_edge: ; preds = %gfar_init_addr_hash_table.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then33:                                        ; preds = %gfar_init_addr_hash_table.exit
  call void @__sanitizer_cov_trace_pc() #17
  %padding = getelementptr i8, ptr %call49.i, i32 2318
  %200 = ptrtoint ptr %padding to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 10, ptr %padding, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %gfar_init_addr_hash_table.exit.if.end34_crit_edge
  %features35 = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 23
  %201 = ptrtoint ptr %features35 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %features35, align 16
  %and36 = and i64 %202, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and36)
  %tobool37.not = icmp eq i64 %and36, 0
  br i1 %tobool37.not, label %lor.lhs.false, label %if.end34.if.then41_crit_edge

if.end34.if.then41_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then41

lor.lhs.false:                                    ; preds = %if.end34
  %203 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %device_flags, align 16
  %and39 = and i32 %204, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %lor.lhs.false.if.end42_crit_edge, label %lor.lhs.false.if.then41_crit_edge

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then41

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then41:                                        ; preds = %lor.lhs.false.if.then41_crit_edge, %if.end34.if.then41_crit_edge
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 21
  %205 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 24, ptr %needed_headroom, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %lor.lhs.false.if.end42_crit_edge
  %206 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp44412.not = icmp eq i32 %207, 0
  br i1 %cmp44412.not, label %if.end42.for.cond56.preheader_crit_edge, label %if.end42.for.body45_crit_edge

if.end42.for.body45_crit_edge:                    ; preds = %if.end42
  br label %for.body45

if.end42.for.cond56.preheader_crit_edge:          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %for.body45.for.cond56.preheader_crit_edge, %if.end42.for.cond56.preheader_crit_edge
  %208 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp57414.not = icmp eq i32 %209, 0
  br i1 %cmp57414.not, label %for.cond56.preheader.for.end66_crit_edge, label %for.cond56.preheader.for.body58_crit_edge

for.cond56.preheader.for.body58_crit_edge:        ; preds = %for.cond56.preheader
  br label %for.body58

for.cond56.preheader.for.end66_crit_edge:         ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end66

for.body45:                                       ; preds = %for.body45.for.body45_crit_edge, %if.end42.for.body45_crit_edge
  %i.1413 = phi i32 [ %inc54, %for.body45.for.body45_crit_edge ], [ 0, %if.end42.for.body45_crit_edge ]
  %arrayidx46 = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 8, i32 %i.1413
  %210 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx46, align 4
  %tx_ring_size = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %211, i32 0, i32 5
  %212 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 256, ptr %tx_ring_size, align 2
  %213 = load ptr, ptr %arrayidx46, align 4
  %num_txbdfree = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %213, i32 0, i32 3
  %214 = ptrtoint ptr %num_txbdfree to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 256, ptr %num_txbdfree, align 4
  %215 = load ptr, ptr %arrayidx46, align 4
  %txcoalescing = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %215, i32 0, i32 13
  %216 = ptrtoint ptr %txcoalescing to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 1, ptr %txcoalescing, align 4
  %217 = load ptr, ptr %arrayidx46, align 4
  %txic = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %217, i32 0, i32 14
  %218 = ptrtoint ptr %txic to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 -2113929195, ptr %txic, align 8
  %inc54 = add nuw i32 %i.1413, 1
  %219 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %num_tx_queues.i, align 8
  %cmp44 = icmp ult i32 %inc54, %220
  br i1 %cmp44, label %for.body45.for.body45_crit_edge, label %for.body45.for.cond56.preheader_crit_edge

for.body45.for.cond56.preheader_crit_edge:        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond56.preheader

for.body45.for.body45_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body45

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %for.cond56.preheader.for.body58_crit_edge
  %i.2415 = phi i32 [ %inc65, %for.body58.for.body58_crit_edge ], [ 0, %for.cond56.preheader.for.body58_crit_edge ]
  %arrayidx59 = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 9, i32 %i.2415
  %221 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arrayidx59, align 4
  %rx_ring_size = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %222, i32 0, i32 4
  %223 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 256, ptr %rx_ring_size, align 16
  %224 = load ptr, ptr %arrayidx59, align 4
  %rxcoalescing = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %224, i32 0, i32 13
  %225 = ptrtoint ptr %rxcoalescing to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %rxcoalescing, align 4
  %226 = load ptr, ptr %arrayidx59, align 4
  %rxic = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %226, i32 0, i32 14
  %227 = ptrtoint ptr %rxic to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 -2147483627, ptr %rxic, align 8
  %inc65 = add nuw i32 %i.2415, 1
  %228 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %num_rx_queues.i, align 4
  %cmp57 = icmp ult i32 %inc65, %229
  br i1 %cmp57, label %for.body58.for.body58_crit_edge, label %for.body58.for.end66_crit_edge

for.body58.for.end66_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end66

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body58

for.end66:                                        ; preds = %for.body58.for.end66_crit_edge, %for.cond56.preheader.for.end66_crit_edge
  %230 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %device_flags, align 16
  %232 = ptrtoint ptr %extended_hash33.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %bf.load = load i8, ptr %extended_hash33.i, align 8
  %sh.diff = lshr i32 %231, 8
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %extended_hash33.i, align 8
  %msg_enable = getelementptr i8, ptr %call49.i, i32 3924
  %233 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 63, ptr %msg_enable, align 4
  %234 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %235)
  %cmp71 = icmp eq i32 %235, 1
  br i1 %cmp71, label %if.then73, label %for.end66.if.end77_crit_edge

for.end66.if.end77_crit_edge:                     ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.then73:                                        ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set76 = or i8 %bf.set, 16
  %236 = ptrtoint ptr %extended_hash33.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %bf.set76, ptr %extended_hash33.i, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %for.end66.if.end77_crit_edge
  %state = getelementptr i8, ptr %call49.i, i32 3712
  call void @_set_bit(i32 noundef 1, ptr noundef %state) #15
  %237 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %regs, align 16
  call fastcc void @gfar_halt(ptr noundef %add.ptr.i.i) #15
  call void @gfar_mac_reset(ptr noundef %add.ptr.i.i) #15
  %239 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %device_flags, align 16
  %and.i312 = and i32 %240, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i312)
  %tobool.not.i313 = icmp eq i32 %and.i312, 0
  br i1 %tobool.not.i313, label %if.end77.if.end.i320_crit_edge, label %if.then.i314

if.end77.if.end.i320_crit_edge:                   ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i320

if.then.i314:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  %rmon.i = getelementptr inbounds %struct.gfar, ptr %238, i32 0, i32 161
  call void @mmioset(ptr noundef %rmon.i, i32 noundef 0, i32 noundef 176) #15
  %cam1.i = getelementptr inbounds %struct.gfar, ptr %238, i32 0, i32 161, i32 46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cam1.i, i32 -1) #15, !srcloc !203
  %cam2.i = getelementptr inbounds %struct.gfar, ptr %238, i32 0, i32 161, i32 47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cam2.i, i32 -1) #15, !srcloc !203
  %car1.i = getelementptr inbounds %struct.gfar, ptr %238, i32 0, i32 161, i32 44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %car1.i, i32 -1) #15, !srcloc !203
  %car2.i = getelementptr inbounds %struct.gfar, ptr %238, i32 0, i32 161, i32 45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %car2.i, i32 -1) #15, !srcloc !203
  br label %if.end.i320

if.end.i320:                                      ; preds = %if.then.i314, %if.end77.if.end.i320_crit_edge
  %ecntrl.i = getelementptr inbounds %struct.gfar, ptr %238, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ecntrl.i, i32 4096) #15, !srcloc !203
  %rx_stash_size.i315 = getelementptr i8, ptr %call49.i, i32 3996
  %241 = ptrtoint ptr %rx_stash_size.i315 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %rx_stash_size.i315, align 4
  %shl.i = shl i32 %242, 16
  %rx_stash_index.i316 = getelementptr i8, ptr %call49.i, i32 4000
  %243 = ptrtoint ptr %rx_stash_index.i316 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %rx_stash_index.i316, align 32
  %or.i317 = or i32 %shl.i, %244
  %attreli.i = getelementptr inbounds %struct.gfar, ptr %238, i32 0, i32 186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %attreli.i, i32 %or.i317) #15, !srcloc !203
  %245 = ptrtoint ptr %extended_hash33.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %bf.load.i319 = load i8, ptr %extended_hash33.i, align 8
  %246 = and i8 %bf.load.i319, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool6.not.i = icmp eq i8 %246, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 192, i32 2240
  %247 = ptrtoint ptr %rx_stash_size.i315 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %rx_stash_size.i315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp.not.i = icmp eq i32 %248, 0
  %or12.i = or i32 %spec.select.i, 16384
  %attrs.1.i = select i1 %cmp.not.i, i32 %spec.select.i, i32 %or12.i
  %attr.i = getelementptr inbounds %struct.gfar, ptr %238, i32 0, i32 185
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %attr.i, i32 %attrs.1.i) #15, !srcloc !203
  %fifo_tx_thr.i = getelementptr inbounds %struct.gfar, ptr %238, i32 0, i32 18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fifo_tx_thr.i, i32 256) #15, !srcloc !203
  %fifo_tx_starve.i = getelementptr inbounds %struct.gfar, ptr %238, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fifo_tx_starve.i, i32 64) #15, !srcloc !203
  %fifo_tx_starve_shutoff.i = getelementptr inbounds %struct.gfar, ptr %238, i32 0, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fifo_tx_starve_shutoff.i, i32 128) #15, !srcloc !203
  %249 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %num_grps, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %250)
  %cmp14.i = icmp ugt i32 %250, 1
  br i1 %cmp14.i, label %for.body.lr.ph.i.i, label %if.end.i320.gfar_hw_init.exit_crit_edge

if.end.i320.gfar_hw_init.exit_crit_edge:          ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_hw_init.exit

for.body.lr.ph.i.i:                               ; preds = %if.end.i320
  %251 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %regs, align 16
  %isrg0.i.i = getelementptr inbounds %struct.gfar, ptr %252, i32 0, i32 213
  br label %for.body.i.i322

for.body.i.i322:                                  ; preds = %for.end23.i.i.for.body.i.i322_crit_edge, %for.body.lr.ph.i.i
  %grp_idx.057.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i323, %for.end23.i.i.for.body.i.i322_crit_edge ]
  %baddr.056.i.i = phi ptr [ %isrg0.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.end23.i.i.for.body.i.i322_crit_edge ]
  %rx_bit_map.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 11, i32 %grp_idx.057.i.i, i32 12
  %253 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %num_rx_queues.i, align 4
  %call.i.i321 = call i32 @_find_next_bit_be(ptr noundef %rx_bit_map.i.i, i32 noundef %254, i32 noundef 0) #15
  %255 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i321, i32 %256)
  %cmp648.i.i = icmp ult i32 %call.i.i321, %256
  br i1 %cmp648.i.i, label %for.body.i.i322.for.body7.i.i_crit_edge, label %for.body.i.i322.for.end.i.i_crit_edge

for.body.i.i322.for.end.i.i_crit_edge:            ; preds = %for.body.i.i322
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.i.i322.for.body7.i.i_crit_edge:          ; preds = %for.body.i.i322
  br label %for.body7.i.i

for.body7.i.i:                                    ; preds = %for.body7.i.i.for.body7.i.i_crit_edge, %for.body.i.i322.for.body7.i.i_crit_edge
  %257 = phi i32 [ %259, %for.body7.i.i.for.body7.i.i_crit_edge ], [ %256, %for.body.i.i322.for.body7.i.i_crit_edge ]
  %i.050.i.i = phi i32 [ %call10.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ], [ %call.i.i321, %for.body.i.i322.for.body7.i.i_crit_edge ]
  %isrg.149.i.i = phi i32 [ %or.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ], [ 0, %for.body.i.i322.for.body7.i.i_crit_edge ]
  %shr.i.i = lshr i32 -2147483648, %i.050.i.i
  %or.i.i = or i32 %shr.i.i, %isrg.149.i.i
  %add.i.i = add nuw i32 %i.050.i.i, 1
  %call10.i.i = call i32 @_find_next_bit_be(ptr noundef %rx_bit_map.i.i, i32 noundef %257, i32 noundef %add.i.i) #15
  %258 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %num_rx_queues.i, align 4
  %cmp6.i.i = icmp ult i32 %call10.i.i, %259
  br i1 %cmp6.i.i, label %for.body7.i.i.for.body7.i.i_crit_edge, label %for.body7.i.i.for.end.i.i_crit_edge

for.body7.i.i.for.end.i.i_crit_edge:              ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body7.i.i.for.body7.i.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7.i.i

for.end.i.i:                                      ; preds = %for.body7.i.i.for.end.i.i_crit_edge, %for.body.i.i322.for.end.i.i_crit_edge
  %isrg.1.lcssa.i.i = phi i32 [ 0, %for.body.i.i322.for.end.i.i_crit_edge ], [ %or.i.i, %for.body7.i.i.for.end.i.i_crit_edge ]
  %tx_bit_map.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 11, i32 %grp_idx.057.i.i, i32 10
  %260 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %num_tx_queues.i, align 8
  %call11.i.i = call i32 @_find_next_bit_be(ptr noundef %tx_bit_map.i.i, i32 noundef %261, i32 noundef 0) #15
  %262 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i.i, i32 %263)
  %cmp1451.i.i = icmp ult i32 %call11.i.i, %263
  br i1 %cmp1451.i.i, label %for.end.i.i.for.body15.i.i_crit_edge, label %for.end.i.i.for.end23.i.i_crit_edge

for.end.i.i.for.end23.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end23.i.i

for.end.i.i.for.body15.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body15.i.i

for.body15.i.i:                                   ; preds = %for.body15.i.i.for.body15.i.i_crit_edge, %for.end.i.i.for.body15.i.i_crit_edge
  %264 = phi i32 [ %266, %for.body15.i.i.for.body15.i.i_crit_edge ], [ %263, %for.end.i.i.for.body15.i.i_crit_edge ]
  %i.153.i.i = phi i32 [ %call22.i.i, %for.body15.i.i.for.body15.i.i_crit_edge ], [ %call11.i.i, %for.end.i.i.for.body15.i.i_crit_edge ]
  %isrg.252.i.i = phi i32 [ %or17.i.i, %for.body15.i.i.for.body15.i.i_crit_edge ], [ %isrg.1.lcssa.i.i, %for.end.i.i.for.body15.i.i_crit_edge ]
  %shr16.i.i = lshr i32 8388608, %i.153.i.i
  %or17.i.i = or i32 %shr16.i.i, %isrg.252.i.i
  %add21.i.i = add nuw i32 %i.153.i.i, 1
  %call22.i.i = call i32 @_find_next_bit_be(ptr noundef %tx_bit_map.i.i, i32 noundef %264, i32 noundef %add21.i.i) #15
  %265 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %num_tx_queues.i, align 8
  %cmp14.i.i = icmp ult i32 %call22.i.i, %266
  br i1 %cmp14.i.i, label %for.body15.i.i.for.body15.i.i_crit_edge, label %for.body15.i.i.for.end23.i.i_crit_edge

for.body15.i.i.for.end23.i.i_crit_edge:           ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end23.i.i

for.body15.i.i.for.body15.i.i_crit_edge:          ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body15.i.i

for.end23.i.i:                                    ; preds = %for.body15.i.i.for.end23.i.i_crit_edge, %for.end.i.i.for.end23.i.i_crit_edge
  %isrg.2.lcssa.i.i = phi i32 [ %isrg.1.lcssa.i.i, %for.end.i.i.for.end23.i.i_crit_edge ], [ %or17.i.i, %for.body15.i.i.for.end23.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %baddr.056.i.i, i32 %isrg.2.lcssa.i.i) #15, !srcloc !203
  %incdec.ptr.i.i = getelementptr i32, ptr %baddr.056.i.i, i32 1
  %inc.i.i323 = add nuw i32 %grp_idx.057.i.i, 1
  %267 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %num_grps, align 16
  %cmp.i.i324 = icmp ult i32 %inc.i.i323, %268
  br i1 %cmp.i.i324, label %for.end23.i.i.for.body.i.i322_crit_edge, label %for.end23.i.i.gfar_hw_init.exit_crit_edge

for.end23.i.i.gfar_hw_init.exit_crit_edge:        ; preds = %for.end23.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_hw_init.exit

for.end23.i.i.for.body.i.i322_crit_edge:          ; preds = %for.end23.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i322

gfar_hw_init.exit:                                ; preds = %for.end23.i.i.gfar_hw_init.exit_crit_edge, %if.end.i320.gfar_hw_init.exit_crit_edge
  %269 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %device_flags, align 16
  %and79 = and i32 %270, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %gfar_hw_init.exit.if.end94_crit_edge, label %if.then81

gfar_hw_init.exit.if.end94_crit_edge:             ; preds = %gfar_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.then81:                                        ; preds = %gfar_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %271 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %regs, align 16
  %rmon_overflow = getelementptr i8, ptr %call49.i, i32 3840
  call void @__raw_spin_lock_init(ptr noundef %rmon_overflow, ptr noundef nonnull @.str.5, ptr noundef nonnull @gfar_probe.__key.4, i16 noundef signext 3) #15
  %imask = getelementptr i8, ptr %call49.i, i32 3884
  %273 = ptrtoint ptr %imask to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 67108864, ptr %imask, align 4
  %cam1 = getelementptr inbounds %struct.gfar, ptr %272, i32 0, i32 161, i32 46
  %274 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cam1) #15, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and93 = and i32 %274, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cam1, i32 %and93) #15, !srcloc !203
  br label %if.end94

if.end94:                                         ; preds = %if.then81, %gfar_hw_init.exit.if.end94_crit_edge
  call void @netif_carrier_off(ptr noundef %call49.i) #15
  %call95 = call i32 @register_netdev(ptr noundef %call49.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end102, label %do.end100

do.end100:                                        ; preds = %if.end94
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %call49.i) #20
  %call196 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %1) #15
  br i1 %call196, label %if.then197, label %do.end100.if.end198_crit_edge

do.end100.if.end198_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end198

if.end102:                                        ; preds = %if.end94
  %275 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %device_flags, align 16
  %and104 = and i32 %276, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end102.if.end110_crit_edge, label %if.then106

if.end102.if.end110_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end110

if.then106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  %wol_supported = getelementptr i8, ptr %call49.i, i32 4182
  %277 = ptrtoint ptr %wol_supported to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %wol_supported, align 2
  %279 = or i16 %278, 1
  store i16 %279, ptr %wol_supported, align 2
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.end102.if.end110_crit_edge
  %280 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %device_flags, align 16
  %and112 = and i32 %281, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end110.if.end124_crit_edge, label %land.lhs.true

if.end110.if.end124_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end124

land.lhs.true:                                    ; preds = %if.end110
  %282 = ptrtoint ptr %extended_hash33.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %bf.load115 = load i8, ptr %extended_hash33.i, align 8
  %283 = and i8 %bf.load115, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool118.not = icmp eq i8 %283, 0
  br i1 %tobool118.not, label %land.lhs.true.if.end124_crit_edge, label %if.then119

land.lhs.true.if.end124_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end124

if.then119:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %wol_supported120 = getelementptr i8, ptr %call49.i, i32 4182
  %284 = ptrtoint ptr %wol_supported120 to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %wol_supported120, align 2
  %286 = or i16 %285, 2
  store i16 %286, ptr %wol_supported120, align 2
  br label %if.end124

if.end124:                                        ; preds = %if.then119, %land.lhs.true.if.end124_crit_edge, %if.end110.if.end124_crit_edge
  %wol_supported126 = getelementptr i8, ptr %call49.i, i32 4182
  %287 = ptrtoint ptr %wol_supported126 to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %wol_supported126, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %288)
  %tobool127 = icmp ne i16 %288, 0
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext %tobool127) #15
  %289 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %num_grps, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %cmp130416.not = icmp eq i32 %290, 0
  br i1 %cmp130416.not, label %if.end124.for.end171_crit_edge, label %if.end124.for.body132_crit_edge

if.end124.for.body132_crit_edge:                  ; preds = %if.end124
  br label %for.body132

if.end124.for.end171_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end171

for.body132:                                      ; preds = %if.end168.for.body132_crit_edge, %if.end124.for.body132_crit_edge
  %i.3417 = phi i32 [ %inc170, %if.end168.for.body132_crit_edge ], [ 0, %if.end124.for.body132_crit_edge ]
  %291 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %device_flags, align 16
  %and136 = and i32 %292, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  %irqinfo161 = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 11, i32 %i.3417, i32 13
  %293 = ptrtoint ptr %irqinfo161 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %irqinfo161, align 8
  %name163 = getelementptr inbounds %struct.gfar_irqinfo, ptr %294, i32 0, i32 1
  br i1 %tobool137.not, label %if.else, label %if.then138

if.then138:                                       ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #17
  %add = add i32 %i.3417, 48
  %call144 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name163, ptr noundef nonnull @.str.9, ptr noundef %call49.i, ptr noundef nonnull @.str.10, i32 noundef %add, ptr noundef nonnull @.str.11)
  %arrayidx146 = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 11, i32 %i.3417, i32 13, i32 1
  %295 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %arrayidx146, align 4
  %name147 = getelementptr inbounds %struct.gfar_irqinfo, ptr %296, i32 0, i32 1
  %call152 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name147, ptr noundef nonnull @.str.9, ptr noundef %call49.i, ptr noundef nonnull @.str.10, i32 noundef %add, ptr noundef nonnull @.str.12)
  %arrayidx154 = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 11, i32 %i.3417, i32 13, i32 2
  %297 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %arrayidx154, align 8
  %name155 = getelementptr inbounds %struct.gfar_irqinfo, ptr %298, i32 0, i32 1
  %call160 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name155, ptr noundef nonnull @.str.9, ptr noundef %call49.i, ptr noundef nonnull @.str.10, i32 noundef %add, ptr noundef nonnull @.str.13)
  br label %if.end168

if.else:                                          ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #17
  %call167 = call ptr @strcpy(ptr noundef %name163, ptr noundef %call49.i) #22
  br label %if.end168

if.end168:                                        ; preds = %if.else, %if.then138
  %inc170 = add nuw i32 %i.3417, 1
  %299 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %num_grps, align 16
  %cmp130 = icmp ult i32 %inc170, %300
  br i1 %cmp130, label %if.end168.for.body132_crit_edge, label %if.end168.for.end171_crit_edge

if.end168.for.end171_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end171

if.end168.for.body132_crit_edge:                  ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body132

for.end171:                                       ; preds = %if.end168.for.end171_crit_edge, %if.end124.for.end171_crit_edge
  %arrayidx.i = getelementptr i8, ptr %call49.i, i32 6228
  %301 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr i8, ptr %call49.i, i32 5204
  %302 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 -1, ptr %arrayidx1.i, align 4
  %303 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %regs, align 16
  %rqfar.i.i = getelementptr inbounds %struct.gfar, ptr %304, i32 0, i32 79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i.i, i32 255) #15, !srcloc !203
  %rqfcr.i.i = getelementptr inbounds %struct.gfar, ptr %304, i32 0, i32 80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i.i, i32 32) #15, !srcloc !203
  %rqfpr.i.i = getelementptr inbounds %struct.gfar, ptr %304, i32 0, i32 81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i.i, i32 -1) #15, !srcloc !203
  %call.i325 = call fastcc i32 @cluster_entry_per_class(ptr noundef %add.ptr.i.i, i32 noundef 255, i32 noundef 256) #15
  %call2.i = call fastcc i32 @cluster_entry_per_class(ptr noundef %add.ptr.i.i, i32 noundef %call.i325, i32 noundef 272) #15
  %call3.i = call fastcc i32 @cluster_entry_per_class(ptr noundef %add.ptr.i.i, i32 noundef %call2.i, i32 noundef 288) #15
  %call4.i = call fastcc i32 @cluster_entry_per_class(ptr noundef %add.ptr.i.i, i32 noundef %call3.i, i32 noundef 512) #15
  %call5.i = call fastcc i32 @cluster_entry_per_class(ptr noundef %add.ptr.i.i, i32 noundef %call4.i, i32 noundef 528) #15
  %call6.i = call fastcc i32 @cluster_entry_per_class(ptr noundef %add.ptr.i.i, i32 noundef %call5.i, i32 noundef 544) #15
  %cur_filer_idx.i = getelementptr i8, ptr %call49.i, i32 4004
  %305 = ptrtoint ptr %cur_filer_idx.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %call6.i, ptr %cur_filer_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp47.not.i = icmp eq i32 %call6.i, 0
  br i1 %cmp47.not.i, label %for.end171.gfar_init_filer_table.exit_crit_edge, label %for.end171.for.body.i_crit_edge

for.end171.for.body.i_crit_edge:                  ; preds = %for.end171
  br label %for.body.i

for.end171.gfar_init_filer_table.exit_crit_edge:  ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_init_filer_table.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end171.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end171.for.body.i_crit_edge ]
  %arrayidx8.i326 = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 45, i32 %i.048.i
  %306 = ptrtoint ptr %arrayidx8.i326 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 96, ptr %arrayidx8.i326, align 4
  %arrayidx10.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 44, i32 %i.048.i
  %307 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 -1, ptr %arrayidx10.i, align 4
  %308 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %regs, align 16
  %rqfar.i44.i = getelementptr inbounds %struct.gfar, ptr %309, i32 0, i32 79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i44.i, i32 %i.048.i) #15, !srcloc !203
  %rqfcr.i45.i = getelementptr inbounds %struct.gfar, ptr %309, i32 0, i32 80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i45.i, i32 96) #15, !srcloc !203
  %rqfpr.i46.i = getelementptr inbounds %struct.gfar, ptr %309, i32 0, i32 81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i46.i, i32 -1) #15, !srcloc !203
  %inc.i = add nuw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call6.i
  br i1 %exitcond.not.i, label %for.body.i.gfar_init_filer_table.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.gfar_init_filer_table.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_init_filer_table.exit

gfar_init_filer_table.exit:                       ; preds = %for.body.i.gfar_init_filer_table.exit_crit_edge, %for.end171.gfar_init_filer_table.exit_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call49.i, i32 0, i32 86
  %310 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call49.i, ptr noundef nonnull @.str.14, ptr noundef %311) #20
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call49.i, ptr noundef nonnull @.str.15) #20
  %312 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %313)
  %cmp174419.not = icmp eq i32 %313, 0
  br i1 %cmp174419.not, label %gfar_init_filer_table.exit.for.cond184.preheader_crit_edge, label %gfar_init_filer_table.exit.for.body176_crit_edge

gfar_init_filer_table.exit.for.body176_crit_edge: ; preds = %gfar_init_filer_table.exit
  br label %for.body176

gfar_init_filer_table.exit.for.cond184.preheader_crit_edge: ; preds = %gfar_init_filer_table.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond184.preheader

for.cond184.preheader:                            ; preds = %for.body176.for.cond184.preheader_crit_edge, %gfar_init_filer_table.exit.for.cond184.preheader_crit_edge
  %314 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %cmp186421.not = icmp eq i32 %315, 0
  br i1 %cmp186421.not, label %for.cond184.preheader.cleanup_crit_edge, label %for.cond184.preheader.for.body188_crit_edge

for.cond184.preheader.for.body188_crit_edge:      ; preds = %for.cond184.preheader
  br label %for.body188

for.cond184.preheader.cleanup_crit_edge:          ; preds = %for.cond184.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body176:                                      ; preds = %for.body176.for.body176_crit_edge, %gfar_init_filer_table.exit.for.body176_crit_edge
  %i.4420 = phi i32 [ %inc182, %for.body176.for.body176_crit_edge ], [ 0, %gfar_init_filer_table.exit.for.body176_crit_edge ]
  %arrayidx178 = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 9, i32 %i.4420
  %316 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %arrayidx178, align 4
  %rx_ring_size179 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %317, i32 0, i32 4
  %318 = ptrtoint ptr %rx_ring_size179 to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %rx_ring_size179, align 16
  %conv180 = zext i16 %319 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call49.i, ptr noundef nonnull @.str.16, i32 noundef %i.4420, i32 noundef %conv180) #20
  %inc182 = add nuw i32 %i.4420, 1
  %320 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %num_rx_queues.i, align 4
  %cmp174 = icmp ult i32 %inc182, %321
  br i1 %cmp174, label %for.body176.for.body176_crit_edge, label %for.body176.for.cond184.preheader_crit_edge

for.body176.for.cond184.preheader_crit_edge:      ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond184.preheader

for.body176.for.body176_crit_edge:                ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body176

for.body188:                                      ; preds = %for.body188.for.body188_crit_edge, %for.cond184.preheader.for.body188_crit_edge
  %i.5422 = phi i32 [ %inc194, %for.body188.for.body188_crit_edge ], [ 0, %for.cond184.preheader.for.body188_crit_edge ]
  %arrayidx190 = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 8, i32 %i.5422
  %322 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %arrayidx190, align 4
  %tx_ring_size191 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %323, i32 0, i32 5
  %324 = ptrtoint ptr %tx_ring_size191 to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %tx_ring_size191, align 2
  %conv192 = zext i16 %325 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call49.i, ptr noundef nonnull @.str.17, i32 noundef %i.5422, i32 noundef %conv192) #20
  %inc194 = add nuw i32 %i.5422, 1
  %326 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %num_tx_queues.i, align 8
  %cmp186 = icmp ult i32 %inc194, %327
  br i1 %cmp186, label %for.body188.for.body188_crit_edge, label %for.body188.cleanup_crit_edge

for.body188.cleanup_crit_edge:                    ; preds = %for.body188
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body188.for.body188_crit_edge:                ; preds = %for.body188
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body188

if.then197:                                       ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #17
  call void @of_phy_deregister_fixed_link(ptr noundef nonnull %1) #15
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %do.end100.if.end198_crit_edge
  %328 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %regs, align 16
  %tobool.not.i328 = icmp eq ptr %329, null
  br i1 %tobool.not.i328, label %if.end198.for.inc.i_crit_edge, label %if.then.i329

if.end198.for.inc.i_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i329:                                     ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #17
  call void @iounmap(ptr noundef nonnull %329) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i329, %if.end198.for.inc.i_crit_edge
  %regs.1.i330 = getelementptr i8, ptr %call49.i, i32 3568
  %330 = ptrtoint ptr %regs.1.i330 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %regs.1.i330, align 16
  %tobool.not.1.i = icmp eq ptr %331, null
  br i1 %tobool.not.1.i, label %for.inc.i.unmap_group_regs.exit_crit_edge, label %if.then.1.i

for.inc.i.unmap_group_regs.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %unmap_group_regs.exit

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @iounmap(ptr noundef nonnull %331) #15
  br label %unmap_group_regs.exit

unmap_group_regs.exit:                            ; preds = %if.then.1.i, %for.inc.i.unmap_group_regs.exit_crit_edge
  %332 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %cmp4.not.i = icmp eq i32 %333, 0
  br i1 %cmp4.not.i, label %unmap_group_regs.exit.gfar_free_rx_queues.exit_crit_edge, label %unmap_group_regs.exit.for.body.i334_crit_edge

unmap_group_regs.exit.for.body.i334_crit_edge:    ; preds = %unmap_group_regs.exit
  br label %for.body.i334

unmap_group_regs.exit.gfar_free_rx_queues.exit_crit_edge: ; preds = %unmap_group_regs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_rx_queues.exit

for.body.i334:                                    ; preds = %for.body.i334.for.body.i334_crit_edge, %unmap_group_regs.exit.for.body.i334_crit_edge
  %i.05.i = phi i32 [ %inc.i333, %for.body.i334.for.body.i334_crit_edge ], [ 0, %unmap_group_regs.exit.for.body.i334_crit_edge ]
  %arrayidx.i332 = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 9, i32 %i.05.i
  %334 = ptrtoint ptr %arrayidx.i332 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %arrayidx.i332, align 4
  call void @kfree(ptr noundef %335) #15
  %inc.i333 = add nuw i32 %i.05.i, 1
  %336 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i333, %337
  br i1 %cmp.i, label %for.body.i334.for.body.i334_crit_edge, label %for.body.i334.gfar_free_rx_queues.exit_crit_edge

for.body.i334.gfar_free_rx_queues.exit_crit_edge: ; preds = %for.body.i334
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_rx_queues.exit

for.body.i334.for.body.i334_crit_edge:            ; preds = %for.body.i334
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i334

gfar_free_rx_queues.exit:                         ; preds = %for.body.i334.gfar_free_rx_queues.exit_crit_edge, %unmap_group_regs.exit.gfar_free_rx_queues.exit_crit_edge
  %338 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %cmp4.not.i336 = icmp eq i32 %339, 0
  br i1 %cmp4.not.i336, label %gfar_free_rx_queues.exit.gfar_free_tx_queues.exit_crit_edge, label %gfar_free_rx_queues.exit.for.body.i341_crit_edge

gfar_free_rx_queues.exit.for.body.i341_crit_edge: ; preds = %gfar_free_rx_queues.exit
  br label %for.body.i341

gfar_free_rx_queues.exit.gfar_free_tx_queues.exit_crit_edge: ; preds = %gfar_free_rx_queues.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_tx_queues.exit

for.body.i341:                                    ; preds = %for.body.i341.for.body.i341_crit_edge, %gfar_free_rx_queues.exit.for.body.i341_crit_edge
  %i.05.i337 = phi i32 [ %inc.i339, %for.body.i341.for.body.i341_crit_edge ], [ 0, %gfar_free_rx_queues.exit.for.body.i341_crit_edge ]
  %arrayidx.i338 = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 8, i32 %i.05.i337
  %340 = ptrtoint ptr %arrayidx.i338 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %arrayidx.i338, align 4
  call void @kfree(ptr noundef %341) #15
  %inc.i339 = add nuw i32 %i.05.i337, 1
  %342 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %num_tx_queues.i, align 8
  %cmp.i340 = icmp ult i32 %inc.i339, %343
  br i1 %cmp.i340, label %for.body.i341.for.body.i341_crit_edge, label %for.body.i341.gfar_free_tx_queues.exit_crit_edge

for.body.i341.gfar_free_tx_queues.exit_crit_edge: ; preds = %for.body.i341
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_tx_queues.exit

for.body.i341.for.body.i341_crit_edge:            ; preds = %for.body.i341
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i341

gfar_free_tx_queues.exit:                         ; preds = %for.body.i341.gfar_free_tx_queues.exit_crit_edge, %gfar_free_rx_queues.exit.gfar_free_tx_queues.exit_crit_edge
  %phy_node = getelementptr i8, ptr %call49.i, i32 3900
  %344 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %phy_node, align 4
  call void @of_node_put(ptr noundef %345) #15
  %tbi_node = getelementptr i8, ptr %call49.i, i32 3904
  %346 = ptrtoint ptr %tbi_node to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %tbi_node, align 64
  call void @of_node_put(ptr noundef %347) #15
  %348 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %num_grps, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %cmp22.not.i = icmp eq i32 %349, 0
  br i1 %cmp22.not.i, label %gfar_free_tx_queues.exit.free_gfar_dev.exit_crit_edge, label %gfar_free_tx_queues.exit.for.cond1.preheader.i_crit_edge

gfar_free_tx_queues.exit.for.cond1.preheader.i_crit_edge: ; preds = %gfar_free_tx_queues.exit
  br label %for.cond1.preheader.i

gfar_free_tx_queues.exit.free_gfar_dev.exit_crit_edge: ; preds = %gfar_free_tx_queues.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_gfar_dev.exit

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge, %gfar_free_tx_queues.exit.for.cond1.preheader.i_crit_edge
  %i.023.i = phi i32 [ %inc10.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ 0, %gfar_free_tx_queues.exit.for.cond1.preheader.i_crit_edge ]
  %arrayidx4.i343 = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 11, i32 %i.023.i, i32 13, i32 0
  %350 = ptrtoint ptr %arrayidx4.i343 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %arrayidx4.i343, align 4
  call void @kfree(ptr noundef %351) #15
  %352 = ptrtoint ptr %arrayidx4.i343 to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr null, ptr %arrayidx4.i343, align 4
  %arrayidx4.1.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 11, i32 %i.023.i, i32 13, i32 1
  %353 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %arrayidx4.1.i, align 4
  call void @kfree(ptr noundef %354) #15
  %355 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr null, ptr %arrayidx4.1.i, align 4
  %arrayidx4.2.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 11, i32 %i.023.i, i32 13, i32 2
  %356 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %arrayidx4.2.i, align 4
  call void @kfree(ptr noundef %357) #15
  %358 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr null, ptr %arrayidx4.2.i, align 4
  %inc10.i = add nuw i32 %i.023.i, 1
  %359 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %num_grps, align 16
  %cmp.i344 = icmp ult i32 %inc10.i, %360
  br i1 %cmp.i344, label %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge, label %for.cond1.preheader.i.free_gfar_dev.exit_crit_edge

for.cond1.preheader.i.free_gfar_dev.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_gfar_dev.exit

for.cond1.preheader.i.for.cond1.preheader.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond1.preheader.i

free_gfar_dev.exit:                               ; preds = %for.cond1.preheader.i.free_gfar_dev.exit_crit_edge, %gfar_free_tx_queues.exit.free_gfar_dev.exit_crit_edge
  %361 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %ndev.i, align 4
  call void @free_netdev(ptr noundef %362) #15
  br label %cleanup

cleanup:                                          ; preds = %free_gfar_dev.exit, %for.body188.cleanup_crit_edge, %for.cond184.preheader.cleanup_crit_edge, %gfar_of_init.exit.cleanup_crit_edge, %gfar_of_init.exit.thread
  %retval.0 = phi i32 [ %call95, %free_gfar_dev.exit ], [ %err.2.i, %gfar_of_init.exit.cleanup_crit_edge ], [ %retval.1.i.ph, %gfar_of_init.exit.thread ], [ 0, %for.cond184.preheader.cleanup_crit_edge ], [ 0, %for.body188.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_remove(ptr nocapture noundef readonly %ofdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %phy_node = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_node, align 4
  tail call void @of_node_put(ptr noundef %5) #15
  %tbi_node = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %tbi_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tbi_node, align 64
  tail call void @of_node_put(ptr noundef %7) #15
  %ndev = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  tail call void @unregister_netdev(ptr noundef %9) #15
  %call1 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %3) #15
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @of_phy_deregister_fixed_link(ptr noundef %3) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regs.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 0, i32 3
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 16
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.for.inc.i_crit_edge, label %if.then.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %11) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end.for.inc.i_crit_edge
  %regs.1.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 1, i32 3
  %12 = ptrtoint ptr %regs.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.1.i, align 16
  %tobool.not.1.i = icmp eq ptr %13, null
  br i1 %tobool.not.1.i, label %for.inc.i.unmap_group_regs.exit_crit_edge, label %if.then.1.i

for.inc.i.unmap_group_regs.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %unmap_group_regs.exit

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %13) #15
  br label %unmap_group_regs.exit

unmap_group_regs.exit:                            ; preds = %if.then.1.i, %for.inc.i.unmap_group_regs.exit_crit_edge
  %num_rx_queues.i = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4.not.i = icmp eq i32 %15, 0
  br i1 %cmp4.not.i, label %unmap_group_regs.exit.gfar_free_rx_queues.exit_crit_edge, label %unmap_group_regs.exit.for.body.i_crit_edge

unmap_group_regs.exit.for.body.i_crit_edge:       ; preds = %unmap_group_regs.exit
  br label %for.body.i

unmap_group_regs.exit.gfar_free_rx_queues.exit_crit_edge: ; preds = %unmap_group_regs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_rx_queues.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %unmap_group_regs.exit.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %unmap_group_regs.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 9, i32 %i.05.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %17) #15
  %inc.i = add nuw i32 %i.05.i, 1
  %18 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.gfar_free_rx_queues.exit_crit_edge

for.body.i.gfar_free_rx_queues.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_rx_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

gfar_free_rx_queues.exit:                         ; preds = %for.body.i.gfar_free_rx_queues.exit_crit_edge, %unmap_group_regs.exit.gfar_free_rx_queues.exit_crit_edge
  %num_tx_queues.i = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp4.not.i10 = icmp eq i32 %21, 0
  br i1 %cmp4.not.i10, label %gfar_free_rx_queues.exit.gfar_free_tx_queues.exit_crit_edge, label %gfar_free_rx_queues.exit.for.body.i15_crit_edge

gfar_free_rx_queues.exit.for.body.i15_crit_edge:  ; preds = %gfar_free_rx_queues.exit
  br label %for.body.i15

gfar_free_rx_queues.exit.gfar_free_tx_queues.exit_crit_edge: ; preds = %gfar_free_rx_queues.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_tx_queues.exit

for.body.i15:                                     ; preds = %for.body.i15.for.body.i15_crit_edge, %gfar_free_rx_queues.exit.for.body.i15_crit_edge
  %i.05.i11 = phi i32 [ %inc.i13, %for.body.i15.for.body.i15_crit_edge ], [ 0, %gfar_free_rx_queues.exit.for.body.i15_crit_edge ]
  %arrayidx.i12 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 8, i32 %i.05.i11
  %22 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i12, align 4
  tail call void @kfree(ptr noundef %23) #15
  %inc.i13 = add nuw i32 %i.05.i11, 1
  %24 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_tx_queues.i, align 8
  %cmp.i14 = icmp ult i32 %inc.i13, %25
  br i1 %cmp.i14, label %for.body.i15.for.body.i15_crit_edge, label %for.body.i15.gfar_free_tx_queues.exit_crit_edge

for.body.i15.gfar_free_tx_queues.exit_crit_edge:  ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_tx_queues.exit

for.body.i15.for.body.i15_crit_edge:              ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i15

gfar_free_tx_queues.exit:                         ; preds = %for.body.i15.gfar_free_tx_queues.exit_crit_edge, %gfar_free_rx_queues.exit.gfar_free_tx_queues.exit_crit_edge
  %num_grps.i = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 16
  %26 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_grps.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp22.not.i = icmp eq i32 %27, 0
  br i1 %cmp22.not.i, label %gfar_free_tx_queues.exit.free_gfar_dev.exit_crit_edge, label %gfar_free_tx_queues.exit.for.cond1.preheader.i_crit_edge

gfar_free_tx_queues.exit.for.cond1.preheader.i_crit_edge: ; preds = %gfar_free_tx_queues.exit
  br label %for.cond1.preheader.i

gfar_free_tx_queues.exit.free_gfar_dev.exit_crit_edge: ; preds = %gfar_free_tx_queues.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_gfar_dev.exit

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge, %gfar_free_tx_queues.exit.for.cond1.preheader.i_crit_edge
  %i.023.i = phi i32 [ %inc10.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ 0, %gfar_free_tx_queues.exit.for.cond1.preheader.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %i.023.i, i32 13, i32 0
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx4.i, align 4
  tail call void @kfree(ptr noundef %29) #15
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx4.i, align 4
  %arrayidx4.1.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %i.023.i, i32 13, i32 1
  %31 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx4.1.i, align 4
  tail call void @kfree(ptr noundef %32) #15
  %33 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx4.1.i, align 4
  %arrayidx4.2.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %i.023.i, i32 13, i32 2
  %34 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx4.2.i, align 4
  tail call void @kfree(ptr noundef %35) #15
  %36 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx4.2.i, align 4
  %inc10.i = add nuw i32 %i.023.i, 1
  %37 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_grps.i, align 16
  %cmp.i16 = icmp ult i32 %inc10.i, %38
  br i1 %cmp.i16, label %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge, label %for.cond1.preheader.i.free_gfar_dev.exit_crit_edge

for.cond1.preheader.i.free_gfar_dev.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_gfar_dev.exit

for.cond1.preheader.i.for.cond1.preheader.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond1.preheader.i

free_gfar_dev.exit:                               ; preds = %for.cond1.preheader.i.free_gfar_dev.exit_crit_edge, %gfar_free_tx_queues.exit.free_gfar_dev.exit_crit_edge
  %39 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev, align 4
  tail call void @free_netdev(ptr noundef %40) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfar_reset_task(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr i8, ptr %work, i32 -1620
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  tail call fastcc void @reset_gfar(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_poll_rx_sq(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %napi, i32 448
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 16
  %rx_queue2 = getelementptr i8, ptr %napi, i32 456
  %2 = ptrtoint ptr %rx_queue2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_queue2, align 8
  %ievent = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent, i32 536903808) #15, !srcloc !203
  %ndev1.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev1.i, align 8
  %skb2.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %skb2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb2.i, align 32
  %next_to_clean.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %next_to_clean.i.i, align 8
  %conv.i.i = zext i16 %9 to i32
  %next_to_use.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %next_to_use.i.i, align 2
  %conv1.i.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp.i.i = icmp ugt i16 %9, %11
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %12 = xor i32 %conv1.i.i, -1
  %sub7.i.i = add nsw i32 %12, %conv.i.i
  br label %gfar_rxbd_unused.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %rx_ring_size.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %rx_ring_size.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rx_ring_size.i.i, align 16
  %conv8.i.i = zext i16 %14 to i32
  %15 = xor i32 %conv1.i.i, -1
  %add.i.i = add nsw i32 %15, %conv.i.i
  %sub14.i.i = add nsw i32 %add.i.i, %conv8.i.i
  br label %gfar_rxbd_unused.exit.i

gfar_rxbd_unused.exit.i:                          ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub7.i.i, %if.then.i.i ], [ %sub14.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool.not166.i = icmp eq i32 %budget, 0
  br i1 %tobool.not166.i, label %gfar_rxbd_unused.exit.i.while.end.i_crit_edge, label %while.body.lr.ph.i

gfar_rxbd_unused.exit.i.while.end.i_crit_edge:    ; preds = %gfar_rxbd_unused.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %gfar_rxbd_unused.exit.i
  %rx_bd_base.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 1
  %rx_dropped.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 11, i32 2
  %dev.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 3
  %next_to_alloc.i.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 9
  %rx_ring_size.i.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 4
  %uses_rxfcb.i.i = getelementptr i8, ptr %5, i32 2316
  %hwts_rx_en.i.i = getelementptr i8, ptr %5, i32 2324
  %padding.i.i = getelementptr i8, ptr %5, i32 2318
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %qindex.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 5
  %grp.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 6
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 10
  %rx_trunc.i = getelementptr i8, ptr %5, i32 3800
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 13
  %rx_nonoctet.i = getelementptr i8, ptr %5, i32 3760
  %rx_crcerr.i = getelementptr i8, ptr %5, i32 3768
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 12
  %rx_overrun.i = getelementptr i8, ptr %5, i32 3776
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 11
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec176.in.i = phi i32 [ %budget, %while.body.lr.ph.i ], [ %dec176.i, %cleanup.i.while.body.i_crit_edge ]
  %total_pkts.0174.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %total_pkts.1.i, %cleanup.i.while.body.i_crit_edge ]
  %total_bytes.0172.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %total_bytes.1.i, %cleanup.i.while.body.i_crit_edge ]
  %cleaned_cnt.0171.i = phi i32 [ %retval.0.i.i, %while.body.lr.ph.i ], [ %inc20.i, %cleanup.i.while.body.i_crit_edge ]
  %skb.0170.i = phi ptr [ %7, %while.body.lr.ph.i ], [ %skb.2.i, %cleanup.i.while.body.i_crit_edge ]
  %howmany.0168.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc21.i, %cleanup.i.while.body.i_crit_edge ]
  %i.0167.i = phi i32 [ %conv.i.i, %while.body.lr.ph.i ], [ %i.1.i, %cleanup.i.while.body.i_crit_edge ]
  %dec176.i = add i32 %dec176.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %cleaned_cnt.0171.i)
  %cmp.i = icmp sgt i32 %cleaned_cnt.0171.i, 15
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @gfar_alloc_rx_buffs(ptr noundef %3, i32 noundef %cleaned_cnt.0171.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %cleaned_cnt.1.i = phi i32 [ 0, %if.then.i ], [ %cleaned_cnt.0171.i, %while.body.i.if.end.i_crit_edge ]
  %16 = ptrtoint ptr %rx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_bd_base.i, align 4
  %arrayidx.i = getelementptr %struct.rxbd8, ptr %17, i32 %i.0167.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool5.not.i = icmp sgt i32 %19, -1
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end7.i:                                        ; preds = %if.end.i
  %tobool8.not.i = icmp eq ptr %skb.0170.i, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end12.i_crit_edge, label %land.lhs.true.i

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %and9.i = and i32 %19, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.if.end12.i_crit_edge, label %if.then11.i

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @consume_skb(ptr noundef nonnull %skb.0170.i) #15
  %20 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_dropped.i, align 8
  %inc.i = add i64 %21, 1
  store i64 %inc.i, ptr %rx_dropped.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %land.lhs.true.i.if.end12.i_crit_edge, %if.end7.i.if.end12.i_crit_edge
  %skb.1.i = phi ptr [ null, %if.then11.i ], [ %skb.0170.i, %land.lhs.true.i.if.end12.i_crit_edge ], [ null, %if.end7.i.if.end12.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !214
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 128
  %24 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %next_to_clean.i.i, align 8
  %idxprom.i.i = zext i16 %25 to i32
  %arrayidx.i.i = getelementptr %struct.gfar_rx_buff, ptr %23, i32 %idxprom.i.i
  %page1.i.i = getelementptr %struct.gfar_rx_buff, ptr %23, i32 %idxprom.i.i, i32 1
  %tobool.not.i.i = icmp eq ptr %skb.1.i, null
  br i1 %tobool.not.i.i, label %if.then.i133.i, label %if.end12.i.if.end16.i.i_crit_edge, !prof !212

if.end12.i.if.end16.i.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i.i

if.then.i133.i:                                   ; preds = %if.end12.i
  %26 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %page1.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %27) #15
  %page_offset.i.i = getelementptr %struct.gfar_rx_buff, ptr %23, i32 %idxprom.i.i, i32 2
  %28 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %page_offset.i.i, align 4
  %add.ptr.i132.i = getelementptr i8, ptr %call.i.i, i32 %29
  %call5.i.i = tail call ptr @build_skb(ptr noundef %add.ptr.i132.i, i32 noundef 2048) #15
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %gfar_get_next_rxbuff.exit.thread.i, label %if.end.i134.i, !prof !211

gfar_get_next_rxbuff.exit.thread.i:               ; preds = %if.then.i133.i
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev1.i, align 8
  %extra_stats.i = getelementptr i8, ptr %31, i32 3736
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.1) #20
  %call.i.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %extra_stats.i, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %extra_stats.i) #15
  br label %while.end.i

if.end.i134.i:                                    ; preds = %if.then.i133.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5.i.i, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 64
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5.i.i, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %35, i32 64
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.end.i134.i, %if.end12.i.if.end16.i.i_crit_edge
  %skb.addr.0.i.i = phi ptr [ %skb.1.i, %if.end12.i.if.end16.i.i_crit_edge ], [ %call5.i.i, %if.end.i134.i ]
  %36 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.i, align 4
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i, align 4
  %page_offset17.i.i = getelementptr %struct.gfar_rx_buff, ptr %23, i32 %idxprom.i.i, i32 2
  %40 = ptrtoint ptr %page_offset17.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %page_offset17.i.i, align 4
  %add.i.i.i = add i32 %41, %39
  tail call void @dma_sync_single_for_cpu(ptr noundef %37, i32 noundef %add.i.i.i, i32 noundef 2048, i32 noundef 2) #15
  %call19.i.i = tail call fastcc zeroext i1 @gfar_add_rx_frag(ptr noundef %arrayidx.i.i, i32 noundef %19, ptr noundef nonnull %skb.addr.0.i.i, i1 noundef zeroext %tobool.not.i.i) #15
  br i1 %call19.i.i, label %if.then20.i.i, label %if.else.i.i

if.then20.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %next_to_alloc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %next_to_alloc.i.i.i, align 4
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 128
  %inc.i.i.i = add i16 %43, 1
  %46 = ptrtoint ptr %rx_ring_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rx_ring_size.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i.i, i16 %47)
  %cmp.i.i.i = icmp ult i16 %inc.i.i.i, %47
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i16 %inc.i.i.i, i16 0
  %idxprom.i.i.i = zext i16 %43 to i32
  %arrayidx.i.i.i = getelementptr %struct.gfar_rx_buff, ptr %45, i32 %idxprom.i.i.i
  %48 = ptrtoint ptr %next_to_alloc.i.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %spec.select.i.i.i, ptr %next_to_alloc.i.i.i, align 4
  %49 = call ptr @memcpy(ptr %arrayidx.i.i.i, ptr %arrayidx.i.i, i32 12)
  %50 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i.i, align 4
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i, align 4
  %54 = ptrtoint ptr %page_offset17.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_offset17.i.i, align 4
  %add.i.i.i.i = add i32 %55, %53
  tail call void @dma_sync_single_for_device(ptr noundef %51, i32 noundef %add.i.i.i.i, i32 noundef 2048, i32 noundef 2) #15
  br label %if.end19.i

if.else.i.i:                                      ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i, align 4
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %57, i32 noundef %59, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #15
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i.i, %if.then20.i.i
  %60 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %page1.i.i, align 4
  %inc20.i = add nsw i32 %cleaned_cnt.1.i, 1
  %inc21.i = add nuw i32 %howmany.0168.i, 1
  %inc22.i = add i32 %i.0167.i, 1
  %61 = ptrtoint ptr %rx_ring_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %rx_ring_size.i.i.i, align 16
  %conv23.i = zext i16 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc22.i, i32 %conv23.i)
  %cmp24.i = icmp eq i32 %inc22.i, %conv23.i
  br i1 %cmp24.i, label %if.then32.i, label %if.end19.i.if.end33.i_crit_edge, !prof !211

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.i

if.then32.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %if.end19.i.if.end33.i_crit_edge
  %i.1.i = phi i32 [ 0, %if.then32.i ], [ %inc22.i, %if.end19.i.if.end33.i_crit_edge ]
  %conv34.i = trunc i32 %i.1.i to i16
  %63 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv34.i, ptr %next_to_clean.i.i, align 8
  %and36.i = and i32 %19, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end33.i.cleanup.i_crit_edge, label %if.end39.i

if.end33.i.cleanup.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.end39.i:                                       ; preds = %if.end33.i
  %and40.i = and i32 %19, 4128768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end52.i, label %if.then48.i, !prof !212

if.then48.i:                                      ; preds = %if.end39.i
  %and.i = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i21 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i21, label %if.end.i24, label %if.then.i23

if.then.i23:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_length_errors.i, align 4
  %inc.i22 = add i32 %65, 1
  store i32 %inc.i22, ptr %rx_length_errors.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_trunc.i, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %rx_trunc.i) #15
  br label %count_errors.exit

if.end.i24:                                       ; preds = %if.then48.i
  %and2.i = and i32 %19, 2621440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i24.if.end11.i_crit_edge, label %if.then4.i

if.end.i24.if.end11.i_crit_edge:                  ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then4.i:                                       ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #17
  %66 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_length_errors.i, align 4
  %inc6.i = add i32 %67, 1
  store i32 %inc6.i, ptr %rx_length_errors.i, align 4
  %and7.i = and i32 %19, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i25 = icmp eq i32 %and7.i, 0
  %..i = select i1 %tobool8.not.i25, i32 3752, i32 3744
  %rx_short.i = getelementptr i8, ptr %5, i32 %..i
  %call.i.i44.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_short.i, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %rx_short.i) #15
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then4.i, %if.end.i24.if.end11.i_crit_edge
  %and12.i = and i32 %19, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end16.i_crit_edge, label %if.then14.i

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_frame_errors.i, align 4
  %inc15.i = add i32 %69, 1
  store i32 %inc15.i, ptr %rx_frame_errors.i, align 4
  %call.i.i46.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_nonoctet.i, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %rx_nonoctet.i) #15
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end16.i_crit_edge
  %and17.i = and i32 %19, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end21.i_crit_edge, label %if.then19.i

if.end16.i.if.end21.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i47.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_crcerr.i, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %rx_crcerr.i) #15
  %70 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_crc_errors.i, align 4
  %inc20.i26 = add i32 %71, 1
  store i32 %inc20.i26, ptr %rx_crc_errors.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end21.i_crit_edge
  %and22.i = and i32 %19, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.count_errors.exit_crit_edge, label %if.then24.i

if.end21.i.count_errors.exit_crit_edge:           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %count_errors.exit

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i48.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_overrun.i, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %rx_overrun.i) #15
  %72 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_over_errors.i, align 4
  %inc25.i = add i32 %73, 1
  store i32 %inc25.i, ptr %rx_over_errors.i, align 4
  br label %count_errors.exit

count_errors.exit:                                ; preds = %if.then24.i, %if.end21.i.count_errors.exit_crit_edge, %if.then.i23
  tail call void @consume_skb(ptr noundef nonnull %skb.addr.0.i.i) #15
  %74 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %rx_dropped.i, align 8
  %inc51.i = add i64 %75, 1
  store i64 %inc51.i, ptr %rx_dropped.i, align 8
  br label %cleanup.i

if.end52.i:                                       ; preds = %if.end39.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 19
  %76 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i, align 4
  %78 = ptrtoint ptr %uses_rxfcb.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %uses_rxfcb.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool.not.i135.i = icmp eq i16 %79, 0
  br i1 %tobool.not.i135.i, label %if.end52.i.if.end.i137.i_crit_edge, label %if.then.i136.i

if.end52.i.if.end.i137.i_crit_edge:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i137.i

if.then.i136.i:                                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i.i = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i.i, i32 noundef 8) #15
  br label %if.end.i137.i

if.end.i137.i:                                    ; preds = %if.then.i136.i, %if.end52.i.if.end.i137.i_crit_edge
  %80 = ptrtoint ptr %hwts_rx_en.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hwts_rx_en.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool2.not.i.i = icmp eq i32 %81, 0
  br i1 %tobool2.not.i.i, label %if.end.i137.i.if.end7.i.i_crit_edge, label %if.then3.i.i

if.end.i137.i.if.end7.i.i_crit_edge:              ; preds = %if.end.i137.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i.i

if.then3.i.i:                                     ; preds = %if.end.i137.i
  call void @__sanitizer_cov_trace_pc() #17
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 17
  %82 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %end.i.i.i.i, align 4
  %hwtstamps.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i, align 4
  %86 = ptrtoint ptr %hwtstamps.i.i.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 0, ptr %hwtstamps.i.i.i, align 8
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %85, align 8
  store i64 %88, ptr %hwtstamps.i.i.i, align 8
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then3.i.i, %if.end.i137.i.if.end7.i.i_crit_edge
  %89 = ptrtoint ptr %padding.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %padding.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool8.not.i.i = icmp eq i16 %90, 0
  br i1 %tobool8.not.i.i, label %if.end7.i.i.if.end12.i.i_crit_edge, label %if.then9.i.i

if.end7.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i.i

if.then9.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i138.i = zext i16 %90 to i32
  %call11.i.i = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i.i, i32 noundef %conv.i138.i) #15
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then9.i.i, %if.end7.i.i.if.end12.i.i_crit_edge
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 6
  %91 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len.i.i, align 4
  %sub.i.i = add i32 %92, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %92)
  %cmp.i.i139.i = icmp ugt i32 %92, 3
  br i1 %cmp.i.i139.i, label %cond.true.i.i.i, label %if.end12.i.i.pskb_trim.exit.i.i_crit_edge

if.end12.i.i.pskb_trim.exit.i.i_crit_edge:        ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pskb_trim.exit.i.i

cond.true.i.i.i:                                  ; preds = %if.end12.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 7
  %93 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i.i.i.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i.i.i.i, label %__skb_trim.exit.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i = tail call i32 @___pskb_trim(ptr noundef nonnull %skb.addr.0.i.i, i32 noundef %sub.i.i) #15
  br label %pskb_trim.exit.i.i

__skb_trim.exit.i.i.i.i:                          ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %95 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %sub.i.i, ptr %len.i.i, align 4
  %96 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %97, i32 %sub.i.i
  %tail.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 16
  %98 = ptrtoint ptr %tail.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %add.ptr.i.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i.i, align 8
  br label %pskb_trim.exit.i.i

pskb_trim.exit.i.i:                               ; preds = %__skb_trim.exit.i.i.i.i, %if.then.i.i.i.i, %if.end12.i.i.pskb_trim.exit.i.i_crit_edge
  %99 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %100, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool14.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool14.not.i.i, label %pskb_trim.exit.i.i.if.end16.i141.i_crit_edge, label %if.then15.i140.i

pskb_trim.exit.i.i.if.end16.i141.i_crit_edge:     ; preds = %pskb_trim.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i141.i

if.then15.i140.i:                                 ; preds = %pskb_trim.exit.i.i
  %101 = ptrtoint ptr %77 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %77, align 2
  %103 = and i16 %102, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %103)
  %cmp.i41.i.i = icmp eq i16 %103, 3072
  br i1 %cmp.i41.i.i, label %if.then.i.i.i, label %if.then15.i140.i.if.end16.i141.i_crit_edge

if.then15.i140.i.if.end16.i141.i_crit_edge:       ; preds = %if.then15.i140.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i141.i

if.then.i.i.i:                                    ; preds = %if.then15.i140.i
  call void @__sanitizer_cov_trace_pc() #17
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15
  %104 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load.i.i.i = load i16, ptr %ip_summed.i.i.i, align 8
  %bf.clear.i.i.i = and i16 %bf.load.i.i.i, -1537
  %bf.set.i.i.i = or i16 %bf.clear.i.i.i, 512
  store i16 %bf.set.i.i.i, ptr %ip_summed.i.i.i, align 8
  br label %if.end16.i141.i

if.end16.i141.i:                                  ; preds = %if.then.i.i.i, %if.then15.i140.i.if.end16.i141.i_crit_edge, %pskb_trim.exit.i.i.if.end16.i141.i_crit_edge
  %105 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %features.i.i, align 16
  %and18.i.i = and i64 %106, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i.i)
  %tobool19.not.i.i = icmp eq i64 %and18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end16.i141.i.gfar_process_frame.exit.i_crit_edge, label %land.lhs.true.i.i

if.end16.i141.i.gfar_process_frame.exit.i_crit_edge: ; preds = %if.end16.i141.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_process_frame.exit.i

land.lhs.true.i.i:                                ; preds = %if.end16.i141.i
  %107 = ptrtoint ptr %77 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %77, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %108)
  %tobool22.not.i.i = icmp sgt i16 %108, -1
  br i1 %tobool22.not.i.i, label %land.lhs.true.i.i.gfar_process_frame.exit.i_crit_edge, label %if.then23.i.i

land.lhs.true.i.i.gfar_process_frame.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_process_frame.exit.i

if.then23.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %vlctl.i.i = getelementptr inbounds %struct.rxfcb, ptr %77, i32 0, i32 4
  %109 = ptrtoint ptr %vlctl.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %vlctl.i.i, align 2
  %vlan_proto1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15, i32 0, i32 9
  %111 = ptrtoint ptr %vlan_proto1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 -32512, ptr %vlan_proto1.i.i.i, align 8
  %vlan_tci2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15, i32 0, i32 10
  %112 = ptrtoint ptr %vlan_tci2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %110, ptr %vlan_tci2.i.i.i, align 2
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15, i32 0, i32 3
  %113 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %bf.load.i42.i.i = load i32, ptr %vlan_present.i.i.i, align 2
  %bf.set.i43.i.i = or i32 %bf.load.i42.i.i, -2147483648
  store i32 %bf.set.i43.i.i, ptr %vlan_present.i.i.i, align 2
  br label %gfar_process_frame.exit.i

gfar_process_frame.exit.i:                        ; preds = %if.then23.i.i, %land.lhs.true.i.i.gfar_process_frame.exit.i_crit_edge, %if.end16.i141.i.gfar_process_frame.exit.i_crit_edge
  %inc53.i = add i32 %total_pkts.0174.i, 1
  %114 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len.i.i, align 4
  %add.i = add i32 %115, %total_bytes.0172.i
  %116 = ptrtoint ptr %qindex.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %qindex.i, align 2
  %add.i142.i = add i16 %117, 1
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 10
  %118 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %add.i142.i, ptr %queue_mapping.i.i, align 8
  %call54.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.addr.0.i.i, ptr noundef %5) #15
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15, i32 0, i32 18
  %119 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %call54.i, ptr %protocol.i, align 8
  %120 = ptrtoint ptr %grp.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %grp.i, align 4
  %napi_rx.i = getelementptr inbounds %struct.gfar_priv_grp, ptr %121, i32 0, i32 1
  %call55.i = tail call i32 @napi_gro_receive(ptr noundef %napi_rx.i, ptr noundef nonnull %skb.addr.0.i.i) #15
  br label %cleanup.i

cleanup.i:                                        ; preds = %gfar_process_frame.exit.i, %count_errors.exit, %if.end33.i.cleanup.i_crit_edge
  %skb.2.i = phi ptr [ null, %count_errors.exit ], [ null, %gfar_process_frame.exit.i ], [ %skb.addr.0.i.i, %if.end33.i.cleanup.i_crit_edge ]
  %total_bytes.1.i = phi i32 [ %total_bytes.0172.i, %count_errors.exit ], [ %add.i, %gfar_process_frame.exit.i ], [ %total_bytes.0172.i, %if.end33.i.cleanup.i_crit_edge ]
  %total_pkts.1.i = phi i32 [ %total_pkts.0174.i, %count_errors.exit ], [ %inc53.i, %gfar_process_frame.exit.i ], [ %total_pkts.0174.i, %if.end33.i.cleanup.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %dec176.i, 0
  br i1 %tobool.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %gfar_get_next_rxbuff.exit.thread.i, %if.end.i.while.end.i_crit_edge, %gfar_rxbd_unused.exit.i.while.end.i_crit_edge
  %howmany.0164.i = phi i32 [ %howmany.0168.i, %gfar_get_next_rxbuff.exit.thread.i ], [ 0, %gfar_rxbd_unused.exit.i.while.end.i_crit_edge ], [ %howmany.0168.i, %if.end.i.while.end.i_crit_edge ], [ %budget, %cleanup.i.while.end.i_crit_edge ]
  %total_bytes.0161.i = phi i32 [ %total_bytes.0172.i, %gfar_get_next_rxbuff.exit.thread.i ], [ 0, %gfar_rxbd_unused.exit.i.while.end.i_crit_edge ], [ %total_bytes.0172.i, %if.end.i.while.end.i_crit_edge ], [ %total_bytes.1.i, %cleanup.i.while.end.i_crit_edge ]
  %total_pkts.0159.i = phi i32 [ %total_pkts.0174.i, %gfar_get_next_rxbuff.exit.thread.i ], [ 0, %gfar_rxbd_unused.exit.i.while.end.i_crit_edge ], [ %total_pkts.0174.i, %if.end.i.while.end.i_crit_edge ], [ %total_pkts.1.i, %cleanup.i.while.end.i_crit_edge ]
  %skb.3.i = phi ptr [ null, %gfar_get_next_rxbuff.exit.thread.i ], [ %7, %gfar_rxbd_unused.exit.i.while.end.i_crit_edge ], [ %skb.0170.i, %if.end.i.while.end.i_crit_edge ], [ %skb.2.i, %cleanup.i.while.end.i_crit_edge ]
  %cleaned_cnt.3.i = phi i32 [ %cleaned_cnt.1.i, %gfar_get_next_rxbuff.exit.thread.i ], [ %retval.0.i.i, %gfar_rxbd_unused.exit.i.while.end.i_crit_edge ], [ %cleaned_cnt.1.i, %if.end.i.while.end.i_crit_edge ], [ %inc20.i, %cleanup.i.while.end.i_crit_edge ]
  %122 = ptrtoint ptr %skb2.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %skb.3.i, ptr %skb2.i, align 32
  %conv57.i = zext i32 %total_pkts.0159.i to i64
  %stats58.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 11
  %123 = ptrtoint ptr %stats58.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %stats58.i, align 8
  %add59.i = add i64 %124, %conv57.i
  store i64 %add59.i, ptr %stats58.i, align 8
  %conv60.i = zext i32 %total_bytes.0161.i to i64
  %rx_bytes.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 11, i32 1
  %125 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %rx_bytes.i, align 8
  %add62.i = add i64 %126, %conv60.i
  store i64 %add62.i, ptr %rx_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleaned_cnt.3.i)
  %tobool63.not.i = icmp eq i32 %cleaned_cnt.3.i, 0
  br i1 %tobool63.not.i, label %while.end.i.if.end65.i_crit_edge, label %if.then64.i

while.end.i.if.end65.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65.i

if.then64.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @gfar_alloc_rx_buffs(ptr noundef %3, i32 noundef %cleaned_cnt.3.i) #15
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then64.i, %while.end.i.if.end65.i_crit_edge
  %tx_actual_en.i = getelementptr i8, ptr %5, i32 3732
  %127 = ptrtoint ptr %tx_actual_en.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tx_actual_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool66.not.i = icmp eq i32 %128, 0
  br i1 %tobool66.not.i, label %if.end65.i.gfar_clean_rx_ring.exit_crit_edge, label %if.then73.i, !prof !212

if.end65.i.gfar_clean_rx_ring.exit_crit_edge:     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_clean_rx_ring.exit

if.then73.i:                                      ; preds = %if.end65.i
  %129 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %next_to_use.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %tobool.not.i144.i = icmp eq i16 %130, 0
  br i1 %tobool.not.i144.i, label %cond.false.i.i, label %if.then73.i.gfar_rxbd_dma_lastfree.exit.i_crit_edge

if.then73.i.gfar_rxbd_dma_lastfree.exit.i_crit_edge: ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_rxbd_dma_lastfree.exit.i

cond.false.i.i:                                   ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #17
  %rx_ring_size.i145.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 4
  %131 = ptrtoint ptr %rx_ring_size.i145.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %rx_ring_size.i145.i, align 16
  br label %gfar_rxbd_dma_lastfree.exit.i

gfar_rxbd_dma_lastfree.exit.i:                    ; preds = %cond.false.i.i, %if.then73.i.gfar_rxbd_dma_lastfree.exit.i_crit_edge
  %cond.in.in.i.i = phi i16 [ %132, %cond.false.i.i ], [ %130, %if.then73.i.gfar_rxbd_dma_lastfree.exit.i_crit_edge ]
  %cond.in.i.i = zext i16 %cond.in.in.i.i to i32
  %rx_bd_dma_base.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 15
  %133 = ptrtoint ptr %rx_bd_dma_base.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rx_bd_dma_base.i.i, align 4
  %cond.i.i = shl nuw nsw i32 %cond.in.i.i, 3
  %arrayidx.idx.i.i = add i32 %134, -8
  %add.i146.i = add i32 %arrayidx.idx.i.i, %cond.i.i
  %rfbptr.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 12
  %135 = ptrtoint ptr %rfbptr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rfbptr.i, align 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %add.i146.i) #15, !srcloc !203
  br label %gfar_clean_rx_ring.exit

gfar_clean_rx_ring.exit:                          ; preds = %gfar_rxbd_dma_lastfree.exit.i, %if.end65.i.gfar_clean_rx_ring.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %howmany.0164.i, i32 %budget)
  %cmp = icmp slt i32 %howmany.0164.i, %budget
  br i1 %cmp, label %if.then, label %gfar_clean_rx_ring.exit.if.end_crit_edge

gfar_clean_rx_ring.exit.if.end_crit_edge:         ; preds = %gfar_clean_rx_ring.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %gfar_clean_rx_ring.exit
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %napi, i32 -48
  %call3 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %howmany.0164.i) #15
  %rstat = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 69
  %rstat4 = getelementptr i8, ptr %napi, i32 464
  %137 = ptrtoint ptr %rstat4 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rstat4, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rstat, i32 %138) #15, !srcloc !203
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr) #15
  %imask5 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 4
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask5) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %or = or i32 %139, 536871040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask5, i32 %or) #15, !srcloc !203
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %gfar_clean_rx_ring.exit.if.end_crit_edge
  ret i32 %howmany.0164.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_poll_tx_sq(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %shhwtstamps.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %napi, i32 224
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 16
  %tx_queue2 = getelementptr i8, ptr %napi, i32 228
  %2 = ptrtoint ptr %tx_queue2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_queue2, align 4
  %ievent = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent, i32 3145728) #15, !srcloc !203
  %tx_skbuff = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skbuff, align 8
  %skb_dirtytx = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %skb_dirtytx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %skb_dirtytx, align 32
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr ptr, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %while.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

while.body.lr.ph.i:                               ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 2304
  %qindex.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %qindex.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %qindex.i, align 2
  %conv3.i = zext i16 %13 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %15, i32 %conv3.i
  %dirty_tx.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dirty_tx.i, align 4
  %tx_ring_size2.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %tx_ring_size2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_ring_size2.i, align 2
  %conv.i = zext i16 %19 to i32
  %tx_bd_base.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %tx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_bd_base.i, align 4
  %hwts_tx_en.i = getelementptr i8, ptr %11, i32 2328
  %add.ptr1.i.i = getelementptr %struct.txbd8, ptr %21, i32 %conv.i
  %idx.neg.i.i = sub nsw i32 0, %conv.i
  %sub66.i = add nsw i32 %conv.i, -1
  %num_txbdfree.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %22 = phi ptr [ %9, %while.body.lr.ph.i ], [ %78, %cleanup.i.while.body.i_crit_edge ]
  %bytes_sent.0182.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add62.i, %cleanup.i.while.body.i_crit_edge ]
  %skb_dirtytx.0181.i = phi i32 [ %idxprom, %while.body.lr.ph.i ], [ %and67.i, %cleanup.i.while.body.i_crit_edge ]
  %bdp.0180.i = phi ptr [ %17, %while.body.lr.ph.i ], [ %bdp.2.lcssa.i, %cleanup.i.while.body.i_crit_edge ]
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tx_flags.i, align 1
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool9.not.i = icmp eq i8 %27, 0
  br i1 %tobool9.not.i, label %land.end.thread.i, label %land.end.i

land.end.thread.i:                                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %nr_frags159.i = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 2
  %28 = ptrtoint ptr %nr_frags159.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr_frags159.i, align 2
  %conv12160.i = zext i8 %29 to i32
  br label %if.else.i

land.end.i:                                       ; preds = %while.body.i
  %30 = ptrtoint ptr %hwts_tx_en.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hwts_tx_en.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool10.not.i = icmp eq i32 %31, 0
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 2
  %32 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nr_frags.i, align 2
  %conv12.i = zext i8 %33 to i32
  br i1 %tobool10.not.i, label %land.end.i.if.else.i_crit_edge, label %if.then.i, !prof !212

land.end.i.if.else.i_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.i = add nuw nsw i32 %conv12.i, 2
  br label %if.end.i

if.else.i:                                        ; preds = %land.end.i.if.else.i_crit_edge, %land.end.thread.i
  %conv12162.i = phi i32 [ %conv12160.i, %land.end.thread.i ], [ %conv12.i, %land.end.i.if.else.i_crit_edge ]
  %add16.i = add nuw nsw i32 %conv12162.i, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %conv12161.i = phi i32 [ %conv12.i, %if.then.i ], [ %conv12162.i, %if.else.i ]
  %34 = phi i1 [ true, %if.then.i ], [ false, %if.else.i ]
  %nr_txbds.0.i = phi i32 [ %add.i, %if.then.i ], [ %add16.i, %if.else.i ]
  %sub.i = add nsw i32 %nr_txbds.0.i, -1
  %add.ptr.i143.i = getelementptr %struct.txbd8, ptr %bdp.0180.i, i32 %sub.i
  %cmp.not.i.i = icmp ult ptr %add.ptr.i143.i, %add.ptr1.i.i
  %cond.idx.i.i = select i1 %cmp.not.i.i, i32 0, i32 %idx.neg.i.i
  %cond.i.i = getelementptr %struct.txbd8, ptr %add.ptr.i143.i, i32 %cond.idx.i.i
  %35 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cond.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %tobool19.not.i = icmp sgt i32 %36, -1
  %and20.i = and i32 %36, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %or.cond.i = or i1 %tobool19.not.i, %tobool21.not.i
  br i1 %or.cond.i, label %if.end23.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end23.i:                                       ; preds = %if.end.i
  br i1 %34, label %if.then48.i, label %if.end39.i, !prof !211

if.end39.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  %length37.i = getelementptr inbounds %struct.anon.149, ptr %bdp.0180.i, i32 0, i32 1
  %37 = ptrtoint ptr %length37.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %length37.i, align 2
  %conv38.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i.i, align 128
  %bufPtr.i = getelementptr inbounds %struct.txbd8, ptr %bdp.0180.i, i32 0, i32 1
  %41 = ptrtoint ptr %bufPtr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bufPtr.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %40, i32 noundef %42, i32 noundef %conv38.i, i32 noundef 1, i32 noundef 0) #15
  br label %if.end53.i

if.then48.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i = getelementptr %struct.txbd8, ptr %bdp.0180.i, i32 1
  %cmp.not.i.i.i = icmp ult ptr %add.ptr.i.i.i, %add.ptr1.i.i
  %cond.idx.i.i.i = select i1 %cmp.not.i.i.i, i32 0, i32 %idx.neg.i.i
  %cond.i.i.i = getelementptr %struct.txbd8, ptr %add.ptr.i.i.i, i32 %cond.idx.i.i.i
  %length.i = getelementptr inbounds %struct.anon.149, ptr %cond.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %length.i, align 2
  %conv33.i = zext i16 %44 to i32
  %add35.i = add nuw nsw i32 %conv33.i, 24
  %45 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i.i, align 128
  %bufPtr165.i = getelementptr inbounds %struct.txbd8, ptr %bdp.0180.i, i32 0, i32 1
  %47 = ptrtoint ptr %bufPtr165.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bufPtr165.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %46, i32 noundef %48, i32 noundef %add35.i, i32 noundef 1, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps.i) #15
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 19
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i, align 4
  %51 = ptrtoint ptr %50 to i32
  %add49.i = add i32 %51, 16
  %and50.i = and i32 %add49.i, -8
  %52 = inttoptr i32 %and50.i to ptr
  %53 = ptrtoint ptr %shhwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %shhwtstamps.i, align 8
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %52, align 8
  store i64 %55, ptr %shhwtstamps.i, align 8
  %call52.i = call ptr @skb_pull(ptr noundef nonnull %22, i32 noundef 24) #15
  call void @skb_tstamp_tx(ptr noundef nonnull %22, ptr noundef nonnull %shhwtstamps.i) #15
  %56 = ptrtoint ptr %bdp.0180.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bdp.0180.i, align 4
  %and.i.i = and i32 %57, 536870912
  store i32 %and.i.i, ptr %bdp.0180.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps.i) #15
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then48.i, %if.end39.i
  %bdp.1.i = phi ptr [ %cond.i.i.i, %if.then48.i ], [ %bdp.0180.i, %if.end39.i ]
  %58 = ptrtoint ptr %bdp.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bdp.1.i, align 4
  %and.i144.i = and i32 %59, 536870912
  store i32 %and.i144.i, ptr %bdp.1.i, align 4
  %add.ptr.i.i145.i = getelementptr %struct.txbd8, ptr %bdp.1.i, i32 1
  %cmp.not.i.i147.i = icmp ult ptr %add.ptr.i.i145.i, %add.ptr1.i.i
  %cond.idx.i.i149.i = select i1 %cmp.not.i.i147.i, i32 0, i32 %idx.neg.i.i
  %cond.i.i150.i = getelementptr %struct.txbd8, ptr %add.ptr.i.i145.i, i32 %cond.idx.i.i149.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv12161.i)
  %cmp175.not.i = icmp eq i32 %conv12161.i, 0
  br i1 %cmp175.not.i, label %if.end53.i.cleanup.i_crit_edge, label %if.end53.i.for.body.i_crit_edge

if.end53.i.for.body.i_crit_edge:                  ; preds = %if.end53.i
  br label %for.body.i

if.end53.i.cleanup.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end53.i.for.body.i_crit_edge
  %i.0177.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end53.i.for.body.i_crit_edge ]
  %bdp.2176.i = phi ptr [ %cond.i.i157.i, %for.body.i.for.body.i_crit_edge ], [ %cond.i.i150.i, %if.end53.i.for.body.i_crit_edge ]
  %60 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i.i, align 128
  %bufPtr57.i = getelementptr inbounds %struct.txbd8, ptr %bdp.2176.i, i32 0, i32 1
  %62 = ptrtoint ptr %bufPtr57.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bufPtr57.i, align 4
  %length58.i = getelementptr inbounds %struct.anon.149, ptr %bdp.2176.i, i32 0, i32 1
  %64 = ptrtoint ptr %length58.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %length58.i, align 2
  %conv59.i = zext i16 %65 to i32
  call void @dma_unmap_page_attrs(ptr noundef %61, i32 noundef %63, i32 noundef %conv59.i, i32 noundef 1, i32 noundef 0) #15
  %66 = ptrtoint ptr %bdp.2176.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bdp.2176.i, align 4
  %and.i151.i = and i32 %67, 536870912
  store i32 %and.i151.i, ptr %bdp.2176.i, align 4
  %add.ptr.i.i152.i = getelementptr %struct.txbd8, ptr %bdp.2176.i, i32 1
  %cmp.not.i.i154.i = icmp ult ptr %add.ptr.i.i152.i, %add.ptr1.i.i
  %cond.idx.i.i156.i = select i1 %cmp.not.i.i154.i, i32 0, i32 %idx.neg.i.i
  %cond.i.i157.i = getelementptr %struct.txbd8, ptr %add.ptr.i.i152.i, i32 %cond.idx.i.i156.i
  %inc.i = add nuw nsw i32 %i.0177.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv12161.i
  br i1 %exitcond.not.i, label %for.body.i.cleanup.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.body.i.cleanup.i_crit_edge, %if.end53.i.cleanup.i_crit_edge
  %bdp.2.lcssa.i = phi ptr [ %cond.i.i150.i, %if.end53.i.cleanup.i_crit_edge ], [ %cond.i.i157.i, %for.body.i.cleanup.i_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3
  %68 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cb.i, align 8
  %add62.i = add i32 %69, %bytes_sent.0182.i
  call void @__dev_kfree_skb_any(ptr noundef nonnull %22, i32 noundef 1) #15
  %70 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tx_skbuff, align 8
  %arrayidx64.i = getelementptr ptr, ptr %71, i32 %skb_dirtytx.0181.i
  %72 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx64.i, align 4
  %add65.i = add i32 %skb_dirtytx.0181.i, 1
  %and67.i = and i32 %add65.i, %sub66.i
  call void @_raw_spin_lock(ptr noundef %3) #15
  %73 = ptrtoint ptr %num_txbdfree.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_txbdfree.i, align 4
  %add69.i = add i32 %74, %nr_txbds.0.i
  store i32 %add69.i, ptr %num_txbdfree.i, align 4
  call void @_raw_spin_unlock(ptr noundef %3) #15
  %75 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_skbuff, align 8
  %arrayidx.i = getelementptr ptr, ptr %76, i32 %and67.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %78, null
  br i1 %tobool.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %bdp.0.lcssa.i = phi ptr [ %bdp.0180.i, %if.end.i.while.end.i_crit_edge ], [ %bdp.2.lcssa.i, %cleanup.i.while.end.i_crit_edge ]
  %skb_dirtytx.0.lcssa.i = phi i32 [ %skb_dirtytx.0181.i, %if.end.i.while.end.i_crit_edge ], [ %and67.i, %cleanup.i.while.end.i_crit_edge ]
  %bytes_sent.0.lcssa.i = phi i32 [ %bytes_sent.0182.i, %if.end.i.while.end.i_crit_edge ], [ %add62.i, %cleanup.i.while.end.i_crit_edge ]
  %79 = ptrtoint ptr %num_txbdfree.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_txbdfree.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool72.not.i = icmp eq i32 %80, 0
  br i1 %tobool72.not.i, label %while.end.i.if.end81.i_crit_edge, label %land.lhs.true73.i

while.end.i.if.end81.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81.i

land.lhs.true73.i:                                ; preds = %while.end.i
  %state.i.i = getelementptr %struct.netdev_queue, ptr %15, i32 %conv3.i, i32 13
  %81 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true73.i.if.end81.i_crit_edge, label %land.lhs.true76.i

land.lhs.true73.i.if.end81.i_crit_edge:           ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81.i

land.lhs.true76.i:                                ; preds = %land.lhs.true73.i
  %state.i = getelementptr i8, ptr %11, i32 3712
  %83 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %state.i, align 4
  %85 = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool78.not.i = icmp eq i32 %85, 0
  br i1 %tobool78.not.i, label %if.then79.i, label %land.lhs.true76.i.if.end81.i_crit_edge

land.lhs.true76.i.if.end81.i_crit_edge:           ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81.i

if.then79.i:                                      ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #17
  %ndev.i = getelementptr i8, ptr %11, i32 2308
  %86 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ndev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 103
  %88 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %_tx.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr %struct.netdev_queue, ptr %89, i32 %conv3.i
  call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i.i) #15
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then79.i, %land.lhs.true76.i.if.end81.i_crit_edge, %land.lhs.true73.i.if.end81.i_crit_edge, %while.end.i.if.end81.i_crit_edge
  %conv82.i = trunc i32 %skb_dirtytx.0.lcssa.i to i16
  %90 = ptrtoint ptr %skb_dirtytx to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv82.i, ptr %skb_dirtytx, align 32
  %91 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %bdp.0.lcssa.i, ptr %dirty_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_sent.0.lcssa.i)
  %tobool.not.i.i = icmp eq i32 %bytes_sent.0.lcssa.i, 0
  br i1 %tobool.not.i.i, label %if.end81.i.if.end_crit_edge, label %if.end.i.i, !prof !211

if.end81.i.if.end_crit_edge:                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i.i:                                       ; preds = %if.end81.i
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %15, i32 %conv3.i, i32 15
  call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %bytes_sent.0.lcssa.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !215
  %adj_limit.i.i.i = getelementptr %struct.netdev_queue, ptr %15, i32 %conv3.i, i32 15, i32 1
  %92 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %94 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %93, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end14.i.i, !prof !211

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end14.i.i:                                     ; preds = %if.end.i.i
  %state.i158.i = getelementptr %struct.netdev_queue, ptr %15, i32 %conv3.i, i32 13
  %call15.i.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i158.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.if.end_crit_edge, label %if.then17.i.i

if.end14.i.i.if.end_crit_edge:                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @netif_schedule_queue(ptr noundef %arrayidx.i.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then17.i.i, %if.end14.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %if.end81.i.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %napi, i32 -272
  %call.i = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #15
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr) #15
  %imask3 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 4
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask3) #15, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %or = or i32 %96, 3145728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask3, i32 %or) #15, !srcloc !203
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfar_parse_group(ptr noundef %np, ptr noundef %priv, ptr noundef readonly %model) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %num_grps = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_grps, align 16
  %arrayidx = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #21
  %arrayidx1 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1, i32 13, i32 0
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #21
  %arrayidx1.1 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1, i32 13, i32 1
  %5 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.1, ptr %arrayidx1.1, align 4
  %tobool.not.1 = icmp eq ptr %call7.i.i.1, null
  br i1 %tobool.not.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #21
  %arrayidx1.2 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1, i32 13, i32 2
  %7 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.2, ptr %arrayidx1.2, align 4
  %tobool.not.2 = icmp eq ptr %call7.i.i.2, null
  br i1 %tobool.not.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %call4 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #15
  %regs = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1, i32 3
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %regs, align 16
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %for.cond.2.cleanup_crit_edge, label %if.end8

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %for.cond.2
  %call9 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #15
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call9, ptr %10, align 4
  %tobool12.not = icmp eq ptr %model, null
  br i1 %tobool12.not, label %if.end8.if.end39_crit_edge, label %land.lhs.true

if.end8.if.end39_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end8
  %call13 = tail call i32 @strcasecmp(ptr noundef nonnull %model, ptr noundef nonnull @.str.56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end39_crit_edge, label %if.then15

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then15:                                        ; preds = %land.lhs.true
  %call16 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 1) #15
  %12 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1.1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call16, ptr %13, align 4
  %call20 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 2) #15
  %15 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx1.2, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call20, ptr %16, align 4
  %18 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx1, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool27.not = icmp eq i32 %21, 0
  br i1 %tobool27.not, label %if.then15.cleanup_crit_edge, label %lor.lhs.false

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then15
  %22 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx1.1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool31.not = icmp eq i32 %25, 0
  br i1 %tobool31.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false32

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx1.2, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool36.not = icmp eq i32 %29, 0
  br i1 %tobool36.not, label %lor.lhs.false32.cleanup_crit_edge, label %lor.lhs.false32.if.end39_crit_edge

lor.lhs.false32.if.end39_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

lor.lhs.false32.cleanup_crit_edge:                ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false32.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %if.end8.if.end39_crit_edge
  %priv40 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1, i32 8
  %30 = ptrtoint ptr %priv40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %priv, ptr %priv40, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.57, ptr noundef nonnull @gfar_parse_group.__key, i16 noundef signext 3) #15
  %mode = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 13
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %32)
  %cmp42 = icmp eq i16 %32, 1
  br i1 %cmp42, label %if.then44, label %if.end39.if.end50_crit_edge

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_grps, align 16
  %shr = lshr i32 170, %34
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %if.end39.if.end50_crit_edge
  %.sink266 = phi i32 [ %shr, %if.then44 ], [ 255, %if.end39.if.end50_crit_edge ]
  %35 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1, i32 12
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink266, ptr %35, align 4
  %37 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1, i32 10
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink266, ptr %37, align 4
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %.sink266
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  %cond = zext i8 %40 to i32
  store i32 %cond, ptr %35, align 4
  %cond111 = zext i8 %40 to i32
  store i32 %cond111, ptr %37, align 4
  %num_rx_queues = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 15
  %41 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_rx_queues, align 4
  %call114 = tail call i32 @_find_next_bit_be(ptr noundef %35, i32 noundef %42, i32 noundef 0) #15
  %43 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call114, i32 %44)
  %cmp117262 = icmp ult i32 %call114, %44
  br i1 %cmp117262, label %for.body119.lr.ph, label %if.end50.for.end139_crit_edge

if.end50.for.end139_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end139

for.body119.lr.ph:                                ; preds = %if.end50
  %rx_queue = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1, i32 5
  %num_rx_queues126 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1, i32 11
  %rstat = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1, i32 7
  %rqueue = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 33
  br label %for.body119

for.body119:                                      ; preds = %if.end125.for.body119_crit_edge, %for.body119.lr.ph
  %i.1263 = phi i32 [ %call114, %for.body119.lr.ph ], [ %call138, %if.end125.for.body119_crit_edge ]
  %45 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_queue, align 8
  %tobool120.not = icmp eq ptr %46, null
  br i1 %tobool120.not, label %if.then121, label %for.body119.if.end125_crit_edge

for.body119.if.end125_crit_edge:                  ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then121:                                       ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx123 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 9, i32 %i.1263
  %47 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx123, align 4
  %49 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %rx_queue, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %for.body119.if.end125_crit_edge
  %50 = ptrtoint ptr %num_rx_queues126 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_rx_queues126, align 16
  %inc127 = add i32 %51, 1
  store i32 %inc127, ptr %num_rx_queues126, align 16
  %shr128 = lshr i32 8388608, %i.1263
  %52 = ptrtoint ptr %rstat to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rstat, align 128
  %or129 = or i32 %53, %shr128
  store i32 %or129, ptr %rstat, align 128
  %shr130 = lshr i32 8388736, %i.1263
  %54 = ptrtoint ptr %rqueue to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rqueue, align 4
  %or131 = or i32 %55, %shr130
  store i32 %or131, ptr %rqueue, align 4
  %arrayidx133 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 9, i32 %i.1263
  %56 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx133, align 4
  %grp134 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %grp134 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx, ptr %grp134, align 4
  %59 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_rx_queues, align 4
  %add = add nuw i32 %i.1263, 1
  %call138 = tail call i32 @_find_next_bit_be(ptr noundef %35, i32 noundef %60, i32 noundef %add) #15
  %61 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_rx_queues, align 4
  %cmp117 = icmp ult i32 %call138, %62
  br i1 %cmp117, label %if.end125.for.body119_crit_edge, label %if.end125.for.end139_crit_edge

if.end125.for.end139_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end139

if.end125.for.body119_crit_edge:                  ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body119

for.end139:                                       ; preds = %if.end125.for.end139_crit_edge, %if.end50.for.end139_crit_edge
  %num_tx_queues = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 14
  %63 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_tx_queues, align 8
  %call141 = tail call i32 @_find_next_bit_be(ptr noundef %37, i32 noundef %64, i32 noundef 0) #15
  %65 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call141, i32 %66)
  %cmp144264 = icmp ult i32 %call141, %66
  br i1 %cmp144264, label %for.body146.lr.ph, label %for.end139.for.end167_crit_edge

for.end139.for.end167_crit_edge:                  ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end167

for.body146.lr.ph:                                ; preds = %for.end139
  %tx_queue = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1, i32 4
  %num_tx_queues153 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1, i32 9
  %tstat = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 %1, i32 6
  %tqueue = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 34
  br label %for.body146

for.body146:                                      ; preds = %if.end152.for.body146_crit_edge, %for.body146.lr.ph
  %i.2265 = phi i32 [ %call141, %for.body146.lr.ph ], [ %call166, %if.end152.for.body146_crit_edge ]
  %67 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_queue, align 4
  %tobool147.not = icmp eq ptr %68, null
  br i1 %tobool147.not, label %if.then148, label %for.body146.if.end152_crit_edge

for.body146.if.end152_crit_edge:                  ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end152

if.then148:                                       ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx150 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 8, i32 %i.2265
  %69 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx150, align 4
  %71 = ptrtoint ptr %tx_queue to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %tx_queue, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then148, %for.body146.if.end152_crit_edge
  %72 = ptrtoint ptr %num_tx_queues153 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_tx_queues153, align 8
  %inc154 = add i32 %73, 1
  store i32 %inc154, ptr %num_tx_queues153, align 8
  %shr155 = lshr i32 -2147483648, %i.2265
  %74 = ptrtoint ptr %tstat to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tstat, align 4
  %or156 = or i32 %75, %shr155
  store i32 %or156, ptr %tstat, align 4
  %shr157 = lshr i32 32768, %i.2265
  %76 = ptrtoint ptr %tqueue to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tqueue, align 8
  %or158 = or i32 %77, %shr157
  store i32 %or158, ptr %tqueue, align 8
  %arrayidx160 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 8, i32 %i.2265
  %78 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx160, align 4
  %grp161 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %grp161 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %arrayidx, ptr %grp161, align 16
  %81 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_tx_queues, align 8
  %add165 = add nuw i32 %i.2265, 1
  %call166 = tail call i32 @_find_next_bit_be(ptr noundef %37, i32 noundef %82, i32 noundef %add165) #15
  %83 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_tx_queues, align 8
  %cmp144 = icmp ult i32 %call166, %84
  br i1 %cmp144, label %if.end152.for.body146_crit_edge, label %if.end152.for.end167_crit_edge

if.end152.for.end167_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end167

if.end152.for.body146_crit_edge:                  ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body146

for.end167:                                       ; preds = %if.end152.for.end167_crit_edge, %for.end139.for.end167_crit_edge
  %85 = ptrtoint ptr %num_grps to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_grps, align 16
  %inc169 = add i32 %86, 1
  store i32 %inc169, ptr %num_grps, align 16
  br label %cleanup

cleanup:                                          ; preds = %for.end167, %lor.lhs.false32.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end167 ], [ -12, %for.cond.2.cleanup_crit_edge ], [ -22, %lor.lhs.false32.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ], [ -12, %for.cond.1.cleanup_crit_edge ], [ -12, %for.cond.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #11 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #15
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #15
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #15
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_gfar(ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %ndev, i32 3712
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and.i.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %while.cond.do.end_crit_edge

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

test_and_set_bit_lock.exit:                       ; preds = %while.cond
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 4, ptr elementtype(i32) %state) #15, !srcloc !216
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !217
  %3 = and i32 %asmresult.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %phi.cmp.i.not = icmp eq i32 %3, 0
  br i1 %phi.cmp.i.not, label %while.end, label %test_and_set_bit_lock.exit.do.end_crit_edge

test_and_set_bit_lock.exit.do.end_crit_edge:      ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %test_and_set_bit_lock.exit.do.end_crit_edge, %while.cond.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !218
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !219
  br label %while.cond

while.end:                                        ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @stop_gfar(ptr noundef %ndev)
  %call8 = tail call i32 @startup_gfar(ptr noundef %ndev)
  %call.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !220
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 4, ptr elementtype(i32) %state) #15, !srcloc !221
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_enet_open(ptr noundef %dev) #0 align 64 {
entry:
  %mask.i = alloca [3 x i32], align 4
  %edata.i = alloca %struct.ethtool_eee, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask.i) #15
  %0 = call ptr @memset(ptr %mask.i, i32 0, i32 12)
  %interface1.i = getelementptr i8, ptr %dev, i32 3896
  %1 = ptrtoint ptr %interface1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %interface1.i, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %edata.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @phy_10_100_features_array to i32))
  %3 = load i32, ptr @phy_10_100_features_array, align 4
  %rem.i.i.i.i = and i32 %3, 31
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %div2.i.i.i.i = lshr i32 %3, 5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %mask.i, i32 %div2.i.i.i.i
  %4 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %5
  store i32 %or.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 1) to i32))
  %6 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 1), align 4
  %rem.i.i.1.i.i = and i32 %6, 31
  %shl.i.i.1.i.i = shl nuw i32 1, %rem.i.i.1.i.i
  %div2.i.i.1.i.i = lshr i32 %6, 5
  %add.ptr.i.i.1.i.i = getelementptr i32, ptr %mask.i, i32 %div2.i.i.1.i.i
  %7 = ptrtoint ptr %add.ptr.i.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i.1.i.i, align 4
  %or.i.i.1.i.i = or i32 %shl.i.i.1.i.i, %8
  store i32 %or.i.i.1.i.i, ptr %add.ptr.i.i.1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 2) to i32))
  %9 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 2), align 4
  %rem.i.i.2.i.i = and i32 %9, 31
  %shl.i.i.2.i.i = shl nuw i32 1, %rem.i.i.2.i.i
  %div2.i.i.2.i.i = lshr i32 %9, 5
  %add.ptr.i.i.2.i.i = getelementptr i32, ptr %mask.i, i32 %div2.i.i.2.i.i
  %10 = ptrtoint ptr %add.ptr.i.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.2.i.i, align 4
  %or.i.i.2.i.i = or i32 %shl.i.i.2.i.i, %11
  store i32 %or.i.i.2.i.i, ptr %add.ptr.i.i.2.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 3) to i32))
  %12 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 3), align 4
  %rem.i.i.3.i.i = and i32 %12, 31
  %shl.i.i.3.i.i = shl nuw i32 1, %rem.i.i.3.i.i
  %div2.i.i.3.i.i = lshr i32 %12, 5
  %add.ptr.i.i.3.i.i = getelementptr i32, ptr %mask.i, i32 %div2.i.i.3.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i.3.i.i, align 4
  %or.i.i.3.i.i = or i32 %shl.i.i.3.i.i, %14
  store i32 %or.i.i.3.i.i, ptr %add.ptr.i.i.3.i.i, align 4
  %15 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask.i, align 4
  %or.i.i39.i = or i32 %16, 576
  store i32 %or.i.i39.i, ptr %mask.i, align 4
  %device_flags.i = getelementptr i8, ptr %dev, i32 2320
  %17 = ptrtoint ptr %device_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device_flags.i, align 16
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %or.i.i40.i = or i32 %16, 608
  %19 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i40.i, ptr %mask.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %oldlink.i = getelementptr i8, ptr %dev, i32 3920
  %20 = ptrtoint ptr %oldlink.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %oldlink.i, align 16
  %oldspeed.i = getelementptr i8, ptr %dev, i32 3912
  %21 = ptrtoint ptr %oldspeed.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %oldspeed.i, align 8
  %oldduplex.i = getelementptr i8, ptr %dev, i32 3916
  %22 = ptrtoint ptr %oldduplex.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %oldduplex.i, align 4
  %phy_node.i = getelementptr i8, ptr %dev, i32 3900
  %23 = ptrtoint ptr %phy_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy_node.i, align 4
  %call5.i = tail call ptr @of_phy_connect(ptr noundef %dev, ptr noundef %24, ptr noundef nonnull @adjust_link, i32 noundef 0, i32 noundef %2) #15
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %init_phy.exit, label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp.i = icmp eq i32 %2, 4
  br i1 %cmp.i, label %if.then10.i, label %if.end9.i.if.end_crit_edge

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i:                                      ; preds = %if.end9.i
  %tbi_node.i.i = getelementptr i8, ptr %dev, i32 3904
  %25 = ptrtoint ptr %tbi_node.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tbi_node.i.i, align 64
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev1.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.63) #20
  br label %if.end

if.end.i.i:                                       ; preds = %if.then10.i
  %call3.i.i = tail call ptr @of_phy_find_device(ptr noundef nonnull %26) #15
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %do.end8.i.i, label %if.end10.i.i

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev9.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i.i, ptr noundef nonnull @.str.67) #20
  br label %if.end

if.end10.i.i:                                     ; preds = %if.end.i.i
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %call3.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %call3.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_read(ptr noundef %28, i32 noundef %30, i32 noundef 1) #15
  %and.i.i = and i32 %call.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool12.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end15.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @put_device(ptr noundef nonnull %call3.i.i) #15
  br label %if.end

if.end15.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i.i.i, align 8
  %33 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i.i.i, align 8
  %call.i33.i.i = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef %34, i32 noundef 17, i16 noundef zeroext 32) #15
  %35 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i.i.i, align 8
  %37 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr.i.i.i, align 8
  %call.i36.i.i = tail call i32 @mdiobus_write(ptr noundef %36, i32 noundef %38, i32 noundef 4, i16 noundef zeroext 416) #15
  %39 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i.i.i, align 8
  %41 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i.i.i, align 8
  %call.i39.i.i = tail call i32 @mdiobus_write(ptr noundef %40, i32 noundef %42, i32 noundef 0, i16 noundef zeroext 4928) #15
  tail call void @put_device(ptr noundef nonnull %call3.i.i) #15
  br label %if.end

init_phy.exit:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev8.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.60) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %edata.i) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask.i) #15
  br label %cleanup

if.end:                                           ; preds = %if.end15.i.i, %if.then13.i.i, %do.end8.i.i, %do.end.i.i, %if.end9.i.if.end_crit_edge
  %supported.i = getelementptr inbounds %struct.phy_device, ptr %call5.i, i32 0, i32 16
  %call.i.i41.i = call i32 @__bitmap_and(ptr noundef %supported.i, ptr noundef %supported.i, ptr noundef nonnull %mask.i, i32 noundef 92) #15
  %advertising.i = getelementptr inbounds %struct.phy_device, ptr %call5.i, i32 0, i32 17
  %43 = call ptr @memcpy(ptr %advertising.i, ptr %supported.i, i32 12)
  call void @phy_support_asym_pause(ptr noundef nonnull %call5.i) #15
  %44 = call ptr @memset(ptr %edata.i, i32 0, i32 40)
  %call19.i = call i32 @phy_ethtool_set_eee(ptr noundef nonnull %call5.i, ptr noundef nonnull %edata.i) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %edata.i) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask.i) #15
  %num_grps.i = getelementptr i8, ptr %dev, i32 3728
  %45 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_grps.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp48.not.i = icmp eq i32 %46, 0
  br i1 %cmp48.not.i, label %if.end.if.end5_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

for.body.i:                                       ; preds = %for.inc6.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.049.i = phi i32 [ %inc7.i, %for.inc6.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.049.i
  %priv1.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.049.i, i32 8
  %47 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv1.i.i, align 4
  %ndev.i.i = getelementptr inbounds %struct.gfar_private, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ndev.i.i, align 4
  %device_flags.i.i = getelementptr inbounds %struct.gfar_private, ptr %48, i32 0, i32 5
  %51 = ptrtoint ptr %device_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %device_flags.i.i, align 16
  %and.i.i19 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19)
  %tobool.not.i.i20 = icmp eq i32 %and.i.i19, 0
  %irqinfo64.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.049.i, i32 13
  br i1 %tobool.not.i.i20, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %arrayidx.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.049.i, i32 13, i32 2
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %name.i.i = getelementptr inbounds %struct.gfar_irqinfo, ptr %54, i32 0, i32 1
  %call.i.i.i21 = call i32 @request_threaded_irq(i32 noundef %56, ptr noundef nonnull @gfar_error, ptr noundef null, i32 noundef 0, ptr noundef %name.i.i, ptr noundef %arrayidx.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i21)
  %cmp.i.i = icmp slt i32 %call.i.i.i21, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end11.i.i

do.body.i.i:                                      ; preds = %if.then.i.i
  %msg_enable.i.i = getelementptr inbounds %struct.gfar_private, ptr %48, i32 0, i32 27
  %57 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable.i.i, align 4
  %and5.i.i = and i32 %58, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %do.body.i.i.register_grp_irqs.exit.i_crit_edge, label %if.then7.i.i

do.body.i.i.register_grp_irqs.exit.i_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %register_grp_irqs.exit.i

if.then7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.69, i32 noundef %62) #20
  br label %register_grp_irqs.exit.i

if.end11.i.i:                                     ; preds = %if.then.i.i
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %call.i136.i.i = call i32 @irq_set_irq_wake(i32 noundef %66, i32 noundef 1) #15
  %67 = ptrtoint ptr %irqinfo64.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %irqinfo64.i.i, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %name21.i.i = getelementptr inbounds %struct.gfar_irqinfo, ptr %68, i32 0, i32 1
  %call.i137.i.i = call i32 @request_threaded_irq(i32 noundef %70, ptr noundef nonnull @gfar_transmit, ptr noundef null, i32 noundef 0, ptr noundef %name21.i.i, ptr noundef %arrayidx.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137.i.i)
  %cmp24.i.i = icmp slt i32 %call.i137.i.i, 0
  br i1 %cmp24.i.i, label %do.body26.i.i, label %if.end37.i.i

do.body26.i.i:                                    ; preds = %if.end11.i.i
  %msg_enable27.i.i = getelementptr inbounds %struct.gfar_private, ptr %48, i32 0, i32 27
  %71 = ptrtoint ptr %msg_enable27.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %msg_enable27.i.i, align 4
  %and28.i.i = and i32 %72, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i)
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  br i1 %tobool29.not.i.i, label %do.body26.i.i.tx_irq_fail.i.i_crit_edge, label %if.then30.i.i

do.body26.i.i.tx_irq_fail.i.i_crit_edge:          ; preds = %do.body26.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_irq_fail.i.i

if.then30.i.i:                                    ; preds = %do.body26.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %irqinfo64.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %irqinfo64.i.i, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.69, i32 noundef %76) #20
  br label %tx_irq_fail.i.i

if.end37.i.i:                                     ; preds = %if.end11.i.i
  %arrayidx39.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.049.i, i32 13, i32 1
  %77 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx39.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %name43.i.i = getelementptr inbounds %struct.gfar_irqinfo, ptr %78, i32 0, i32 1
  %call.i138.i.i = call i32 @request_threaded_irq(i32 noundef %80, ptr noundef nonnull @gfar_receive, ptr noundef null, i32 noundef 0, ptr noundef %name43.i.i, ptr noundef %arrayidx.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i.i)
  %cmp46.i.i = icmp slt i32 %call.i138.i.i, 0
  br i1 %cmp46.i.i, label %do.body48.i.i, label %if.end37.i.i.for.inc6.i_crit_edge

if.end37.i.i.for.inc6.i_crit_edge:                ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc6.i

do.body48.i.i:                                    ; preds = %if.end37.i.i
  %msg_enable49.i.i = getelementptr inbounds %struct.gfar_private, ptr %48, i32 0, i32 27
  %81 = ptrtoint ptr %msg_enable49.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %msg_enable49.i.i, align 4
  %and50.i.i = and i32 %82, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i.i)
  %tobool51.not.i.i = icmp eq i32 %and50.i.i, 0
  br i1 %tobool51.not.i.i, label %do.body48.i.i.rx_irq_fail.i.i_crit_edge, label %if.then52.i.i

do.body48.i.i.rx_irq_fail.i.i_crit_edge:          ; preds = %do.body48.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rx_irq_fail.i.i

if.then52.i.i:                                    ; preds = %do.body48.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx39.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.69, i32 noundef %86) #20
  br label %rx_irq_fail.i.i

if.else.i.i:                                      ; preds = %for.body.i
  %87 = ptrtoint ptr %irqinfo64.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %irqinfo64.i.i, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %name69.i.i = getelementptr inbounds %struct.gfar_irqinfo, ptr %88, i32 0, i32 1
  %call.i140.i.i = call i32 @request_threaded_irq(i32 noundef %90, ptr noundef nonnull @gfar_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %name69.i.i, ptr noundef %arrayidx.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140.i.i)
  %cmp72.i.i = icmp slt i32 %call.i140.i.i, 0
  br i1 %cmp72.i.i, label %do.body74.i.i, label %if.else.i.i.for.inc6.i_crit_edge

if.else.i.i.for.inc6.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc6.i

do.body74.i.i:                                    ; preds = %if.else.i.i
  %msg_enable75.i.i = getelementptr inbounds %struct.gfar_private, ptr %48, i32 0, i32 27
  %91 = ptrtoint ptr %msg_enable75.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msg_enable75.i.i, align 4
  %and76.i.i = and i32 %92, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i.i)
  %tobool77.not.i.i = icmp eq i32 %and76.i.i, 0
  br i1 %tobool77.not.i.i, label %do.body74.i.i.register_grp_irqs.exit.i_crit_edge, label %if.then78.i.i

do.body74.i.i.register_grp_irqs.exit.i_crit_edge: ; preds = %do.body74.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %register_grp_irqs.exit.i

if.then78.i.i:                                    ; preds = %do.body74.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %93 = ptrtoint ptr %irqinfo64.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %irqinfo64.i.i, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.69, i32 noundef %96) #20
  br label %register_grp_irqs.exit.i

rx_irq_fail.i.i:                                  ; preds = %if.then52.i.i, %do.body48.i.i.rx_irq_fail.i.i_crit_edge
  %97 = ptrtoint ptr %irqinfo64.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %irqinfo64.i.i, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %call94.i.i = call ptr @free_irq(i32 noundef %100, ptr noundef %arrayidx.i) #15
  br label %tx_irq_fail.i.i

tx_irq_fail.i.i:                                  ; preds = %rx_irq_fail.i.i, %if.then30.i.i, %do.body26.i.i.tx_irq_fail.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call.i137.i.i, %if.then30.i.i ], [ %call.i137.i.i, %do.body26.i.i.tx_irq_fail.i.i_crit_edge ], [ %call.i138.i.i, %rx_irq_fail.i.i ]
  %101 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i.i, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  %call98.i.i = call ptr @free_irq(i32 noundef %104, ptr noundef %arrayidx.i) #15
  br label %register_grp_irqs.exit.i

register_grp_irqs.exit.i:                         ; preds = %tx_irq_fail.i.i, %if.then78.i.i, %do.body74.i.i.register_grp_irqs.exit.i_crit_edge, %if.then7.i.i, %do.body.i.i.register_grp_irqs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i21, %if.then7.i.i ], [ %call.i.i.i21, %do.body.i.i.register_grp_irqs.exit.i_crit_edge ], [ %err.0.i.i, %tx_irq_fail.i.i ], [ %call.i140.i.i, %if.then78.i.i ], [ %call.i140.i.i, %do.body74.i.i.register_grp_irqs.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.049.i)
  %cmp251.i = icmp sgt i32 %i.049.i, 0
  br i1 %cmp251.i, label %register_grp_irqs.exit.i.for.body3.i_crit_edge, label %register_grp_irqs.exit.i.cleanup_crit_edge

register_grp_irqs.exit.i.cleanup_crit_edge:       ; preds = %register_grp_irqs.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

register_grp_irqs.exit.i.for.body3.i_crit_edge:   ; preds = %register_grp_irqs.exit.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %register_grp_irqs.exit.i.for.body3.i_crit_edge
  %j.052.i = phi i32 [ %inc.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %register_grp_irqs.exit.i.for.body3.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %j.052.i
  %irqinfo.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %j.052.i, i32 13
  %105 = ptrtoint ptr %irqinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %irqinfo.i.i, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %call.i.i = call ptr @free_irq(i32 noundef %108, ptr noundef %arrayidx5.i) #15
  %arrayidx2.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %j.052.i, i32 13, i32 1
  %109 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx2.i.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %call4.i.i = call ptr @free_irq(i32 noundef %112, ptr noundef %arrayidx5.i) #15
  %arrayidx6.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %j.052.i, i32 13, i32 2
  %113 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx6.i.i, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %call8.i.i = call ptr @free_irq(i32 noundef %116, ptr noundef %arrayidx5.i) #15
  %inc.i = add nuw nsw i32 %j.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.049.i
  br i1 %exitcond.not.i, label %for.body3.i.cleanup_crit_edge, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body3.i

for.body3.i.cleanup_crit_edge:                    ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc6.i:                                       ; preds = %if.else.i.i.for.inc6.i_crit_edge, %if.end37.i.i.for.inc6.i_crit_edge
  %.sink115.in.i = phi ptr [ %arrayidx39.i.i, %if.end37.i.i.for.inc6.i_crit_edge ], [ %irqinfo64.i.i, %if.else.i.i.for.inc6.i_crit_edge ]
  %117 = ptrtoint ptr %.sink115.in.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %.sink115.i = load ptr, ptr %.sink115.in.i, align 4
  %118 = ptrtoint ptr %.sink115.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %.sink115.i, align 4
  %call.i141.i.i = call i32 @irq_set_irq_wake(i32 noundef %119, i32 noundef 1) #15
  %inc7.i = add nuw i32 %i.049.i, 1
  %120 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_grps.i, align 16
  %cmp.i22 = icmp ult i32 %inc7.i, %121
  br i1 %cmp.i22, label %for.inc6.i.for.body.i_crit_edge, label %for.inc6.i.if.end5_crit_edge

for.inc6.i.if.end5_crit_edge:                     ; preds = %for.inc6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

for.inc6.i.for.body.i_crit_edge:                  ; preds = %for.inc6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end5:                                          ; preds = %for.inc6.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = call i32 @startup_gfar(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %for.body3.i.cleanup_crit_edge, %register_grp_irqs.exit.i.cleanup_crit_edge, %init_phy.exit
  %retval.0 = phi i32 [ -19, %init_phy.exit ], [ %call6, %if.end5 ], [ %retval.0.i.i, %register_grp_irqs.exit.i.cleanup_crit_edge ], [ %retval.0.i.i, %for.body3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %reset_task = getelementptr i8, ptr %dev, i32 3928
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_task) #15
  tail call void @stop_gfar(ptr noundef %dev)
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %1) #15
  %device_flags.i = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %device_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_flags.i, align 16
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %num_grps2.i = getelementptr i8, ptr %dev, i32 3728
  %4 = ptrtoint ptr %num_grps2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_grps2.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp327.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %for.cond1.preheader.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  br i1 %cmp327.not.i, label %for.cond.preheader.i.gfar_free_irq.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.gfar_free_irq.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_irq.exit

for.cond1.preheader.i:                            ; preds = %entry
  br i1 %cmp327.not.i, label %for.cond1.preheader.i.gfar_free_irq.exit_crit_edge, label %for.cond1.preheader.i.for.body4.i_crit_edge

for.cond1.preheader.i.for.body4.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body4.i

for.cond1.preheader.i.gfar_free_irq.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_irq.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.026.i
  %irqinfo.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.026.i, i32 13
  %6 = ptrtoint ptr %irqinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irqinfo.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call.i.i = tail call ptr @free_irq(i32 noundef %9, ptr noundef %arrayidx.i) #15
  %arrayidx2.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.026.i, i32 13, i32 1
  %10 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call4.i.i = tail call ptr @free_irq(i32 noundef %13, ptr noundef %arrayidx.i) #15
  %arrayidx6.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.026.i, i32 13, i32 2
  %14 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %call8.i.i = tail call ptr @free_irq(i32 noundef %17, ptr noundef %arrayidx.i) #15
  %inc.i = add nuw i32 %i.026.i, 1
  %18 = ptrtoint ptr %num_grps2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_grps2.i, align 16
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.gfar_free_irq.exit_crit_edge

for.body.i.gfar_free_irq.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_irq.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.cond1.preheader.i.for.body4.i_crit_edge
  %i.128.i = phi i32 [ %inc11.i, %for.body4.i.for.body4.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body4.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.128.i
  %irqinfo.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.128.i, i32 13
  %20 = ptrtoint ptr %irqinfo.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irqinfo.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %23, ptr noundef %arrayidx6.i) #15
  %inc11.i = add nuw i32 %i.128.i, 1
  %24 = ptrtoint ptr %num_grps2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_grps2.i, align 16
  %cmp3.i = icmp ult i32 %inc11.i, %25
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.gfar_free_irq.exit_crit_edge

for.body4.i.gfar_free_irq.exit_crit_edge:         ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_free_irq.exit

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body4.i

gfar_free_irq.exit:                               ; preds = %for.body4.i.gfar_free_irq.exit_crit_edge, %for.body.i.gfar_free_irq.exit_crit_edge, %for.cond1.preheader.i.gfar_free_irq.exit_crit_edge, %for.cond.preheader.i.gfar_free_irq.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_start_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping, align 8
  %conv = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 8, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i, align 128
  %tx_bd_base = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tx_bd_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_bd_base, align 4
  %grp = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %grp, align 16
  %regs3 = getelementptr inbounds %struct.gfar_priv_grp, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs3, align 16
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %12 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %ip_summed, align 8
  %13 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %13)
  %cmp = icmp eq i16 %13, 1536
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %14 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load6 = load i32, ptr %vlan_present, align 2
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_flags, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %land.end.thread, label %land.end

land.end.thread:                                  ; preds = %entry
  %cmp.not499 = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load6)
  %tobool14.not500 = icmp sgt i32 %bf.load6, -1
  %or.cond501 = select i1 %cmp.not499, i1 %tobool14.not500, i1 false
  br i1 %or.cond501, label %land.end.thread.if.end32.thread_crit_edge, label %land.end.thread.if.then21_crit_edge

land.end.thread.if.then21_crit_edge:              ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

land.end.thread.if.end32.thread_crit_edge:        ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.thread

land.end:                                         ; preds = %entry
  %hwts_tx_en = getelementptr i8, ptr %dev, i32 2328
  %20 = ptrtoint ptr %hwts_tx_en to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hwts_tx_en, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load6)
  %tobool14.not = icmp sgt i32 %bf.load6, -1
  br i1 %tobool12.not, label %if.end19, label %land.end.if.then21_crit_edge, !prof !212

land.end.if.then21_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

if.end19:                                         ; preds = %land.end
  %cmp.not = xor i1 %cmp, true
  %or.cond = select i1 %cmp.not, i1 %tobool14.not, i1 false
  br i1 %or.cond, label %if.end19.if.end32.thread_crit_edge, label %if.end19.if.then21_crit_edge

if.end19.if.then21_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

if.end19.if.end32.thread_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.thread

if.then21:                                        ; preds = %if.end19.if.then21_crit_edge, %land.end.if.then21_crit_edge, %land.end.thread.if.then21_crit_edge
  %fcb_len.1510 = phi i32 [ 8, %if.end19.if.then21_crit_edge ], [ 8, %land.end.thread.if.then21_crit_edge ], [ 24, %land.end.if.then21_crit_edge ]
  %22 = phi i1 [ false, %if.end19.if.then21_crit_edge ], [ false, %land.end.thread.if.then21_crit_edge ], [ true, %land.end.if.then21_crit_edge ]
  %tobool14.not503508 = phi i1 [ %tobool14.not, %if.end19.if.then21_crit_edge ], [ %tobool14.not500, %land.end.thread.if.then21_crit_edge ], [ %tobool14.not, %land.end.if.then21_crit_edge ]
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %23 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then21.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

if.then21.skb_header_cloned.exit.i_crit_edge:     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #15
  %24 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %25, 65535
  %shr.i.i = ashr i32 %25, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %if.then21.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %if.then21.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %fcb_len.1510)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %fcb_len.1510
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cow_head.exit.thread, label %skb_cow_head.exit

skb_cow_head.exit.thread:                         ; preds = %skb_header_cloned.exit.i
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i, align 4
  %nr_frags34534 = getelementptr inbounds %struct.skb_shared_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %nr_frags34534 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nr_frags34534, align 2
  %conv35535 = zext i8 %33 to i32
  br i1 %22, label %skb_cow_head.exit.thread.if.then43_crit_edge, label %skb_cow_head.exit.thread.if.else_crit_edge, !prof !211

skb_cow_head.exit.thread.if.else_crit_edge:       ; preds = %skb_cow_head.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

skb_cow_head.exit.thread.if.then43_crit_edge:     ; preds = %skb_cow_head.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then43

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %34 = tail call i32 @llvm.usub.sat.i32(i32 %fcb_len.1510, i32 %sub.ptr.sub.i.i.i) #15
  %add.i.i = add nuw nsw i32 %34, 127
  %and.i4.i = and i32 %add.i.i, 128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool23.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool23.not, label %if.end32, label %if.then30, !prof !212

if.then30:                                        ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %35 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %tx_errors, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  br label %cleanup271

if.end32.thread:                                  ; preds = %if.end19.if.end32.thread_crit_edge, %land.end.thread.if.end32.thread_crit_edge
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i, align 4
  %nr_frags34524 = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %nr_frags34524 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nr_frags34524, align 2
  %conv35525 = zext i8 %40 to i32
  br label %if.else

if.end32:                                         ; preds = %skb_cow_head.exit
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %nr_frags34 = getelementptr inbounds %struct.skb_shared_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %nr_frags34 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %nr_frags34, align 2
  %conv35 = zext i8 %44 to i32
  br i1 %22, label %if.end32.if.then43_crit_edge, label %if.end32.if.else_crit_edge, !prof !211

if.end32.if.else_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.end32.if.then43_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then43

if.then43:                                        ; preds = %if.end32.if.then43_crit_edge, %skb_cow_head.exit.thread.if.then43_crit_edge
  %conv35539 = phi i32 [ %conv35535, %skb_cow_head.exit.thread.if.then43_crit_edge ], [ %conv35, %if.end32.if.then43_crit_edge ]
  %45 = phi i8 [ %33, %skb_cow_head.exit.thread.if.then43_crit_edge ], [ %44, %if.end32.if.then43_crit_edge ]
  %add = add nuw nsw i32 %conv35539, 2
  br label %if.end45

if.else:                                          ; preds = %if.end32.if.else_crit_edge, %if.end32.thread, %skb_cow_head.exit.thread.if.else_crit_edge
  %conv35533 = phi i32 [ %conv35525, %if.end32.thread ], [ %conv35, %if.end32.if.else_crit_edge ], [ %conv35535, %skb_cow_head.exit.thread.if.else_crit_edge ]
  %46 = phi i8 [ %40, %if.end32.thread ], [ %44, %if.end32.if.else_crit_edge ], [ %33, %skb_cow_head.exit.thread.if.else_crit_edge ]
  %tobool14.not503509531 = phi i1 [ true, %if.end32.thread ], [ %tobool14.not503508, %if.end32.if.else_crit_edge ], [ %tobool14.not503508, %skb_cow_head.exit.thread.if.else_crit_edge ]
  %fcb_len.1511529 = phi i32 [ 0, %if.end32.thread ], [ %fcb_len.1510, %if.end32.if.else_crit_edge ], [ %fcb_len.1510, %skb_cow_head.exit.thread.if.else_crit_edge ]
  %tobool20.not513527 = phi i1 [ true, %if.end32.thread ], [ false, %if.end32.if.else_crit_edge ], [ false, %skb_cow_head.exit.thread.if.else_crit_edge ]
  %add44 = add nuw nsw i32 %conv35533, 1
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then43
  %conv35532 = phi i32 [ %conv35539, %if.then43 ], [ %conv35533, %if.else ]
  %47 = phi i8 [ %45, %if.then43 ], [ %46, %if.else ]
  %tobool14.not503509530 = phi i1 [ %tobool14.not503508, %if.then43 ], [ %tobool14.not503509531, %if.else ]
  %48 = phi i1 [ true, %if.then43 ], [ false, %if.else ]
  %fcb_len.1511528 = phi i32 [ %fcb_len.1510, %if.then43 ], [ %fcb_len.1511529, %if.else ]
  %tobool20.not513526 = phi i1 [ false, %if.then43 ], [ %tobool20.not513527, %if.else ]
  %nr_txbds.0 = phi i32 [ %add, %if.then43 ], [ %add44, %if.else ]
  %num_txbdfree = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 3
  %49 = ptrtoint ptr %num_txbdfree to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_txbdfree, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_txbds.0, i32 %50)
  %cmp46 = icmp ugt i32 %nr_txbds.0, %50
  br i1 %cmp46, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  %state.i = getelementptr %struct.netdev_queue, ptr %5, i32 %conv, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #15
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %51 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_fifo_errors, align 8
  %inc50 = add i32 %52, 1
  store i32 %inc50, ptr %tx_fifo_errors, align 8
  br label %cleanup271

if.end51:                                         ; preds = %if.end45
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %conv52 = zext i32 %54 to i64
  %stats53 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 6
  %tx_bytes = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 6, i32 1
  %55 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %tx_bytes, align 8
  %add54 = add i64 %56, %conv52
  store i64 %add54, ptr %tx_bytes, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %57 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %54, ptr %cb, align 8
  %58 = ptrtoint ptr %stats53 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %stats53, align 64
  %inc57 = add i64 %59, 1
  store i64 %inc57, ptr %stats53, align 64
  %cur_tx = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 2
  %60 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur_tx, align 16
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  br i1 %48, label %if.then65, label %if.end51.if.end67_crit_edge, !prof !211

if.end51.if.end67_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.then65:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %call66 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 16) #15
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %66 = call ptr @memset(ptr %65, i32 0, i32 16)
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end51.if.end67_crit_edge
  br i1 %tobool20.not513526, label %if.end67.if.end71_crit_edge, label %if.then69

if.end67.if.end71_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #15
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 8)
  store i64 0, ptr %call.i, align 2
  %or = or i32 %63, 131072
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end67.if.end71_crit_edge
  %fcb.0 = phi ptr [ %call.i, %if.then69 ], [ null, %if.end67.if.end71_crit_edge ]
  %lstatus.0 = phi i32 [ %or, %if.then69 ], [ %63, %if.end67.if.end71_crit_edge ]
  br i1 %cmp, label %if.then73, label %if.end71.if.end102_crit_edge

if.end71.if.end102_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

if.then73:                                        ; preds = %if.end71
  %head.i.i.i434 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %68 = ptrtoint ptr %head.i.i.i434 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %head.i.i.i434, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %70 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %71 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %69, i32 %conv.i.i.i
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %72 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %73)
  %cmp.i = icmp eq i8 %73, 17
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %74 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i23.i = zext i16 %75 to i32
  %add.ptr.i.i24.i = getelementptr i8, ptr %69, i32 %conv.i.i23.i
  %check.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i24.i, i32 0, i32 3
  %check6.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i24.i, i32 0, i32 6
  %.sink.in.i = select i1 %cmp.i, ptr %check.i, ptr %check6.i
  %flags.0.i = select i1 %cmp.i, i8 91, i8 83
  %76 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %.sink.i = load i16, ptr %.sink.in.i, align 2
  %77 = getelementptr inbounds %struct.txfcb, ptr %fcb.0, i32 0, i32 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %.sink.i, ptr %77, align 2
  %79 = ptrtoint ptr %head.i.i.i434 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %head.i.i.i434, align 8
  %81 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i31.i = zext i16 %82 to i32
  %add.ptr.i.i32.i = getelementptr i8, ptr %80, i32 %conv.i.i31.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %83 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i32.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %84 to i32
  %85 = add i32 %fcb_len.1511528, %sub.ptr.rhs.cast.i.i
  %sub.i = sub i32 %sub.ptr.lhs.cast.i.i, %85
  %conv9.i = trunc i32 %sub.i to i8
  %l3os.i = getelementptr inbounds %struct.txfcb, ptr %fcb.0, i32 0, i32 3
  %86 = ptrtoint ptr %l3os.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv9.i, ptr %l3os.i, align 1
  %87 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i = trunc i16 %87 to i8
  %88 = load i16, ptr %network_header.i.i.i, align 4
  %conv1.i.i = trunc i16 %88 to i8
  %sub.i.i435 = sub i8 %conv.i.i, %conv1.i.i
  %l4os.i = getelementptr inbounds %struct.txfcb, ptr %fcb.0, i32 0, i32 2
  %89 = ptrtoint ptr %l4os.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %sub.i.i435, ptr %l4os.i, align 2
  %90 = ptrtoint ptr %fcb.0 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %flags.0.i, ptr %fcb.0, align 2
  %91 = ptrtoint ptr %fcb.0 to i32
  %errata.i.i = getelementptr i8, ptr %dev, i32 2312
  %92 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %errata.i.i, align 8
  %and.i.i436 = and i32 %93, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i436)
  %tobool.not.i = icmp ne i32 %and.i.i436, 0
  %rem.i = and i32 %91, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %rem.i)
  %cmp.i437 = icmp ugt i32 %rem.i, 24
  %94 = and i1 %cmp.i437, %tobool.not.i
  br i1 %94, label %if.then73.if.then90_crit_edge, label %lor.lhs.false81, !prof !211

if.then73.if.then90_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then90

lor.lhs.false81:                                  ; preds = %if.then73
  %95 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len, align 4
  %and.i.i439 = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i439)
  %tobool.not.i440 = icmp ne i32 %and.i.i439, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %96)
  %cmp.i441 = icmp ugt i32 %96, 2500
  %spec.select.i = and i1 %tobool.not.i440, %cmp.i441
  br i1 %spec.select.i, label %lor.lhs.false81.if.then90_crit_edge, label %lor.lhs.false81.if.end102_crit_edge, !prof !211

lor.lhs.false81.if.end102_crit_edge:              ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

lor.lhs.false81.if.then90_crit_edge:              ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then90

if.then90:                                        ; preds = %lor.lhs.false81.if.then90_crit_edge, %if.then73.if.then90_crit_edge
  %97 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len, align 4
  %sub.i442 = add i32 %98, -8
  store i32 %sub.i442, ptr %len, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %99 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i442, i32 %100)
  %cmp.i443 = icmp ult i32 %sub.i442, %100
  br i1 %cmp.i443, label %do.body4.i, label %__skb_pull.exit, !prof !211

do.body4.i:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #15, !srcloc !222
  unreachable

__skb_pull.exit:                                  ; preds = %if.then90
  %101 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i444 = getelementptr i8, ptr %102, i32 8
  store ptr %add.ptr.i444, ptr %data.i.i, align 4
  %call92 = tail call i32 @skb_checksum_help(ptr noundef %skb) #15
  %tobool93.not.not = xor i1 %tobool14.not503509530, true
  %brmerge = or i1 %48, %tobool93.not.not
  br i1 %brmerge, label %if.then96, label %if.else98

if.then96:                                        ; preds = %__skb_pull.exit
  %call.i445 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #15
  %103 = ptrtoint ptr %call.i445 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 8)
  store i64 0, ptr %call.i445, align 2
  br i1 %tobool14.not503509530, label %if.then96.if.end105_crit_edge, label %if.then96.if.then104_crit_edge

if.then96.if.then104_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

if.then96.if.end105_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

if.else98:                                        ; preds = %__skb_pull.exit
  %and99 = and i32 %lstatus.0, -131073
  br i1 %tobool14.not503509530, label %if.else98.if.end105_crit_edge, label %if.else98.if.then104_crit_edge

if.else98.if.then104_crit_edge:                   ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

if.else98.if.end105_crit_edge:                    ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

if.end102:                                        ; preds = %lor.lhs.false81.if.end102_crit_edge, %if.end71.if.end102_crit_edge
  br i1 %tobool14.not503509530, label %if.end102.if.end105_crit_edge, label %if.end102.if.then104_crit_edge

if.end102.if.then104_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

if.end102.if.end105_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

if.then104:                                       ; preds = %if.end102.if.then104_crit_edge, %if.else98.if.then104_crit_edge, %if.then96.if.then104_crit_edge
  %lstatus.1542 = phi i32 [ %lstatus.0, %if.then96.if.then104_crit_edge ], [ %lstatus.0, %if.end102.if.then104_crit_edge ], [ %and99, %if.else98.if.then104_crit_edge ]
  %fcb.1540 = phi ptr [ %call.i445, %if.then96.if.then104_crit_edge ], [ %fcb.0, %if.end102.if.then104_crit_edge ], [ null, %if.else98.if.then104_crit_edge ]
  %104 = ptrtoint ptr %fcb.1540 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %fcb.1540, align 2
  %106 = or i8 %105, -128
  store i8 %106, ptr %fcb.1540, align 2
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %107 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %vlan_tci.i, align 2
  %vlctl.i = getelementptr inbounds %struct.txfcb, ptr %fcb.1540, i32 0, i32 5
  %109 = ptrtoint ptr %vlctl.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %vlctl.i, align 2
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end102.if.end105_crit_edge, %if.else98.if.end105_crit_edge, %if.then96.if.end105_crit_edge
  %lstatus.1543 = phi i32 [ %lstatus.0, %if.then96.if.end105_crit_edge ], [ %lstatus.1542, %if.then104 ], [ %lstatus.0, %if.end102.if.end105_crit_edge ], [ %and99, %if.else98.if.end105_crit_edge ]
  %fcb.1541 = phi ptr [ %call.i445, %if.then96.if.end105_crit_edge ], [ %fcb.1540, %if.then104 ], [ %fcb.0, %if.end102.if.end105_crit_edge ], [ null, %if.else98.if.end105_crit_edge ]
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr.i, align 128
  %data107 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %112 = ptrtoint ptr %data107 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data107, align 4
  %114 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len, align 4
  %data_len.i446 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %116 = ptrtoint ptr %data_len.i446 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %data_len.i446, align 8
  %call.i448 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %113) #15
  br i1 %call.i448, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end105
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !212

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %111) #15
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 3
  %118 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i449 = icmp eq ptr %119, null
  br i1 %tobool.not.i.i449, label %if.end.i.i450, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i450:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %120 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %111, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i450, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i451 = phi ptr [ %121, %if.end.i.i450 ], [ %119, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i, ptr noundef %retval.0.i.i451) #15
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %122 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr.i, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %123, i32 noundef -1) #15
  br label %dma_map_err

dma_map_single_attrs.exit:                        ; preds = %if.end105
  %sub.i447 = sub i32 %115, %117
  tail call void @debug_dma_map_single(ptr noundef %111, ptr noundef %113, i32 noundef %sub.i447) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %124 = load ptr, ptr @mem_map, align 4
  %125 = ptrtoint ptr %113 to i32
  %sub.i452 = add i32 %125, 1073741824
  %shr.i = lshr i32 %sub.i452, 12
  %add.ptr.i453 = getelementptr %struct.page, ptr %124, i32 %shr.i
  %and.i = and i32 %125, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %111, ptr noundef %add.ptr.i453, i32 noundef %and.i, i32 noundef %sub.i447, i32 noundef 1, i32 noundef 0) #15
  %126 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr.i, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %127, i32 noundef %call41.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i454 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i454, label %dma_map_single_attrs.exit.dma_map_err_crit_edge, label %if.end120

dma_map_single_attrs.exit.dma_map_err_crit_edge:  ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_err

if.end120:                                        ; preds = %dma_map_single_attrs.exit
  %bufPtr = getelementptr inbounds %struct.txbd8, ptr %61, i32 0, i32 1
  %128 = ptrtoint ptr %bufPtr to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %call41.i, ptr %bufPtr, align 4
  br i1 %48, label %if.then128, label %if.end120.if.end131_crit_edge, !prof !211

if.end120.if.end131_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end131

if.then128:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #17
  %tx_ring_size = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 5
  %129 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %tx_ring_size, align 2
  %conv129 = zext i16 %130 to i32
  %add.ptr.i.i = getelementptr %struct.txbd8, ptr %61, i32 1
  %add.ptr1.i.i = getelementptr %struct.txbd8, ptr %7, i32 %conv129
  %cmp.not.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr1.i.i
  %idx.neg.i.i = sub nsw i32 0, %conv129
  %cond.idx.i.i = select i1 %cmp.not.i.i, i32 0, i32 %idx.neg.i.i
  %cond.i.i = getelementptr %struct.txbd8, ptr %add.ptr.i.i, i32 %cond.idx.i.i
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %if.end120.if.end131_crit_edge
  %txbdp.0 = phi ptr [ %cond.i.i, %if.then128 ], [ %61, %if.end120.if.end131_crit_edge ]
  %txbdp_tstamp.0 = phi ptr [ %cond.i.i, %if.then128 ], [ null, %if.end120.if.end131_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool132.not = icmp eq i8 %47, 0
  br i1 %tobool132.not, label %if.then141, label %if.else154, !prof !212

if.then141:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #17
  %or152 = or i32 %lstatus.1543, 402653184
  %spec.select = select i1 %48, i32 %lstatus.1543, i32 %or152, !prof !211
  br label %if.end188

if.else154:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv35532)
  %cmp157558.not = icmp eq i32 %conv35532, 0
  br i1 %cmp157558.not, label %if.else154.if.end188_crit_edge, label %for.body.lr.ph

if.else154.if.end188_crit_edge:                   ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end188

for.body.lr.ph:                                   ; preds = %if.else154
  %131 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %end.i, align 4
  %frags = getelementptr inbounds %struct.skb_shared_info, ptr %132, i32 0, i32 12
  %tx_ring_size159 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 5
  %sub = add nsw i32 %conv35532, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0561 = phi i32 [ 0, %for.body.lr.ph ], [ %inc184, %for.inc.for.body_crit_edge ]
  %frag.0560 = phi ptr [ %frags, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %txbdp.1559 = phi ptr [ %txbdp.0, %for.body.lr.ph ], [ %cond.i.i461, %for.inc.for.body_crit_edge ]
  %133 = ptrtoint ptr %tx_ring_size159 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %tx_ring_size159, align 2
  %conv160 = zext i16 %134 to i32
  %add.ptr.i.i456 = getelementptr %struct.txbd8, ptr %txbdp.1559, i32 1
  %add.ptr1.i.i457 = getelementptr %struct.txbd8, ptr %7, i32 %conv160
  %cmp.not.i.i458 = icmp ult ptr %add.ptr.i.i456, %add.ptr1.i.i457
  %idx.neg.i.i459 = sub nsw i32 0, %conv160
  %cond.idx.i.i460 = select i1 %cmp.not.i.i458, i32 0, i32 %idx.neg.i.i459
  %cond.i.i461 = getelementptr %struct.txbd8, ptr %add.ptr.i.i456, i32 %cond.idx.i.i460
  %bv_len.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0560, i32 0, i32 1
  %135 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %bv_len.i, align 4
  %137 = ptrtoint ptr %cond.i.i461 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cond.i.i461, align 4
  %139 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr.i, align 128
  %141 = ptrtoint ptr %frag.0560 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %frag.0560, align 4
  %bv_offset.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0560, i32 0, i32 2
  %143 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %140, ptr noundef %142, i32 noundef %144, i32 noundef %136, i32 noundef 1, i32 noundef 0) #15
  %145 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr.i, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %146, i32 noundef %call2.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i462.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i462.not, label %for.body.dma_map_err_crit_edge, label %for.inc, !prof !211

for.body.dma_map_err_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_err

for.inc:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0561, i32 %sub)
  %cmp165 = icmp eq i32 %i.0561, %sub
  %spec.select430.v = select i1 %cmp165, i32 -1744830464, i32 -2147483648
  %or163 = or i32 %136, %spec.select430.v
  %spec.select430 = or i32 %or163, %138
  %bufPtr183 = getelementptr inbounds %struct.txbd8, ptr %cond.i.i461, i32 0, i32 1
  %147 = ptrtoint ptr %bufPtr183 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %call2.i, ptr %bufPtr183, align 4
  %148 = ptrtoint ptr %cond.i.i461 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %spec.select430, ptr %cond.i.i461, align 4
  %inc184 = add nuw nsw i32 %i.0561, 1
  %incdec.ptr = getelementptr %struct.bio_vec, ptr %frag.0560, i32 1
  %exitcond.not = icmp eq i32 %inc184, %conv35532
  br i1 %exitcond.not, label %for.inc.if.end188_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.if.end188_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end188

if.end188:                                        ; preds = %for.inc.if.end188_crit_edge, %if.else154.if.end188_crit_edge, %if.then141
  %txbdp.3 = phi ptr [ %txbdp.0, %if.then141 ], [ %txbdp.0, %if.else154.if.end188_crit_edge ], [ %cond.i.i461, %for.inc.if.end188_crit_edge ]
  %lstatus.4 = phi i32 [ %spec.select, %if.then141 ], [ %lstatus.1543, %if.else154.if.end188_crit_edge ], [ %lstatus.1543, %for.inc.if.end188_crit_edge ]
  br i1 %48, label %if.then196, label %if.else214, !prof !211

if.then196:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #17
  %149 = ptrtoint ptr %txbdp_tstamp.0 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %txbdp_tstamp.0, align 4
  %151 = ptrtoint ptr %bufPtr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bufPtr, align 4
  %add198 = add i32 %152, %fcb_len.1511528
  %153 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %len, align 4
  %155 = ptrtoint ptr %data_len.i446 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %data_len.i446, align 8
  %157 = add i32 %fcb_len.1511528, %156
  %sub200 = sub i32 %154, %157
  %or201 = or i32 %150, %sub200
  %spec.select431.v = select i1 %tobool132.not, i32 -1744830464, i32 -2147483648
  %spec.select431 = or i32 %or201, %spec.select431.v
  %bufPtr207 = getelementptr inbounds %struct.txbd8, ptr %txbdp_tstamp.0, i32 0, i32 1
  %158 = ptrtoint ptr %bufPtr207 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add198, ptr %bufPtr207, align 4
  store i32 %spec.select431, ptr %txbdp_tstamp.0, align 4
  %or208 = or i32 %lstatus.4, -2080374776
  %159 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %end.i, align 4
  %tx_flags210 = getelementptr inbounds %struct.skb_shared_info, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %tx_flags210 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %tx_flags210, align 1
  %163 = or i8 %162, 4
  store i8 %163, ptr %tx_flags210, align 1
  %ptp = getelementptr inbounds %struct.txfcb, ptr %fcb.1541, i32 0, i32 1
  %164 = ptrtoint ptr %ptp to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %ptp, align 1
  br label %if.end218

if.else214:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #17
  %165 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %len, align 4
  %167 = ptrtoint ptr %data_len.i446 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %data_len.i446, align 8
  %sub.i470 = sub i32 %166, %168
  %or216 = or i32 %lstatus.4, %sub.i470
  %or217 = or i32 %or216, -2080374784
  br label %if.end218

if.end218:                                        ; preds = %if.else214, %if.then196
  %lstatus.5 = phi i32 [ %or208, %if.then196 ], [ %or217, %if.else214 ]
  %dql.i = getelementptr %struct.netdev_queue, ptr %5, i32 %conv, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %54)
  %cmp.i.i = icmp ugt i32 %54, 268435455
  br i1 %cmp.i.i, label %do.body2.i.i, label %dql_queued.exit.i, !prof !211

do.body2.i.i:                                     ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #15, !srcloc !223
  unreachable

dql_queued.exit.i:                                ; preds = %if.end218
  %last_obj_cnt.i.i = getelementptr %struct.netdev_queue, ptr %5, i32 %conv, i32 15, i32 2
  %169 = ptrtoint ptr %last_obj_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %54, ptr %last_obj_cnt.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !224
  %170 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %dql.i, align 128
  %add.i.i471 = add i32 %171, %54
  store i32 %add.i.i471, ptr %dql.i, align 128
  %adj_limit.i.i = getelementptr %struct.netdev_queue, ptr %5, i32 %conv, i32 15, i32 1
  %172 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %adj_limit.i.i, align 4
  %174 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i472 = sub i32 %173, %174
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i472)
  %cmp.i473 = icmp sgt i32 %sub.i.i472, -1
  br i1 %cmp.i473, label %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge, label %if.end.i, !prof !212

dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_tx_sent_queue.exit

if.end.i:                                         ; preds = %dql_queued.exit.i
  %state.i474 = getelementptr %struct.netdev_queue, ptr %5, i32 %conv, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i474) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !225
  %175 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %adj_limit.i.i, align 4
  %177 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %dql.i, align 128
  %sub.i22.i = sub i32 %176, %178
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i)
  %cmp7.i = icmp sgt i32 %sub.i22.i, -1
  br i1 %cmp7.i, label %if.then14.i, label %if.end.i.netdev_tx_sent_queue.exit_crit_edge, !prof !211

if.end.i.netdev_tx_sent_queue.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_tx_sent_queue.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i474) #15
  br label %netdev_tx_sent_queue.exit

netdev_tx_sent_queue.exit:                        ; preds = %if.then14.i, %if.end.i.netdev_tx_sent_queue.exit_crit_edge, %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !213
  tail call void @arm_heavy_mb() #15
  %179 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %lstatus.5, ptr %61, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !213
  tail call void @arm_heavy_mb() #15
  %tx_skbuff = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 9
  %180 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %tx_skbuff, align 8
  %skb_curtx = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 4
  %182 = ptrtoint ptr %skb_curtx to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %skb_curtx, align 8
  %idxprom = zext i16 %183 to i32
  %arrayidx219 = getelementptr ptr, ptr %181, i32 %idxprom
  %184 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %skb, ptr %arrayidx219, align 4
  %185 = load i16, ptr %skb_curtx, align 8
  %add222 = add i16 %185, 1
  %tx_ring_size223 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 5
  %186 = ptrtoint ptr %tx_ring_size223 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %tx_ring_size223, align 2
  %sub225 = add i16 %187, -1
  %and226 = and i16 %sub225, %add222
  store i16 %and226, ptr %skb_curtx, align 8
  %conv230 = zext i16 %187 to i32
  %add.ptr.i.i475 = getelementptr %struct.txbd8, ptr %txbdp.3, i32 1
  %add.ptr1.i.i476 = getelementptr %struct.txbd8, ptr %7, i32 %conv230
  %cmp.not.i.i477 = icmp ult ptr %add.ptr.i.i475, %add.ptr1.i.i476
  %idx.neg.i.i478 = sub nsw i32 0, %conv230
  %cond.idx.i.i479 = select i1 %cmp.not.i.i477, i32 0, i32 %idx.neg.i.i478
  %cond.i.i480 = getelementptr %struct.txbd8, ptr %add.ptr.i.i475, i32 %cond.idx.i.i479
  %188 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %cond.i.i480, ptr %cur_tx, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #15
  %189 = ptrtoint ptr %num_txbdfree to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %num_txbdfree, align 4
  %sub234 = sub i32 %190, %nr_txbds.0
  store i32 %sub234, ptr %num_txbdfree, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #15
  %191 = ptrtoint ptr %num_txbdfree to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %num_txbdfree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool237.not = icmp eq i32 %192, 0
  br i1 %tobool237.not, label %if.then238, label %netdev_tx_sent_queue.exit.if.end242_crit_edge

netdev_tx_sent_queue.exit.if.end242_crit_edge:    ; preds = %netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end242

if.then238:                                       ; preds = %netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #17
  %state.i432 = getelementptr %struct.netdev_queue, ptr %5, i32 %conv, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i432) #15
  %tx_fifo_errors240 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %193 = ptrtoint ptr %tx_fifo_errors240 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %tx_fifo_errors240, align 8
  %inc241 = add i32 %194, 1
  store i32 %inc241, ptr %tx_fifo_errors240, align 8
  br label %if.end242

if.end242:                                        ; preds = %if.then238, %netdev_tx_sent_queue.exit.if.end242_crit_edge
  %tstat = getelementptr inbounds %struct.gfar, ptr %11, i32 0, i32 24
  %qindex = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 12
  %195 = ptrtoint ptr %qindex to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %qindex, align 2
  %conv243 = zext i16 %196 to i32
  %shr = lshr i32 -2147483648, %conv243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tstat, i32 %shr) #15, !srcloc !203
  br label %cleanup271

dma_map_err:                                      ; preds = %for.body.dma_map_err_crit_edge, %dma_map_single_attrs.exit.dma_map_err_crit_edge, %dma_map_single_attrs.exit.thread
  %tx_ring_size244 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %3, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv35532)
  %cmp254562.not = icmp eq i32 %conv35532, 0
  br i1 %cmp254562.not, label %dma_map_err.for.end270_crit_edge, label %for.body256.preheader

dma_map_err.for.end270_crit_edge:                 ; preds = %dma_map_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end270

for.body256.preheader:                            ; preds = %dma_map_err
  %add.ptr.i.i481 = getelementptr %struct.txbd8, ptr %61, i32 1
  %197 = ptrtoint ptr %tx_ring_size244 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %tx_ring_size244, align 2
  %conv245 = zext i16 %198 to i32
  %add.ptr1.i.i482 = getelementptr %struct.txbd8, ptr %7, i32 %conv245
  %cmp.not.i.i483 = icmp ult ptr %add.ptr.i.i481, %add.ptr1.i.i482
  %idx.neg.i.i484 = sub nsw i32 0, %conv245
  %cond.idx.i.i485 = select i1 %cmp.not.i.i483, i32 0, i32 %idx.neg.i.i484
  %cond.i.i486 = getelementptr %struct.txbd8, ptr %add.ptr.i.i481, i32 %cond.idx.i.i485
  %add.ptr.i.i487 = getelementptr %struct.txbd8, ptr %cond.i.i486, i32 1
  %cmp.not.i.i489 = icmp ult ptr %add.ptr.i.i487, %add.ptr1.i.i482
  %cond.idx.i.i491 = select i1 %cmp.not.i.i489, i32 0, i32 %idx.neg.i.i484
  %cond.i.i492 = getelementptr %struct.txbd8, ptr %add.ptr.i.i487, i32 %cond.idx.i.i491
  %txbdp.4 = select i1 %48, ptr %cond.i.i492, ptr %cond.i.i486
  br label %for.body256

for.body256:                                      ; preds = %if.end260.for.body256_crit_edge, %for.body256.preheader
  %i.1564 = phi i32 [ %inc269, %if.end260.for.body256_crit_edge ], [ 0, %for.body256.preheader ]
  %txbdp.5563 = phi ptr [ %cond.i.i498, %if.end260.for.body256_crit_edge ], [ %txbdp.4, %for.body256.preheader ]
  %199 = ptrtoint ptr %txbdp.5563 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %txbdp.5563, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %200)
  %tobool258.not = icmp sgt i32 %200, -1
  br i1 %tobool258.not, label %for.body256.for.end270_crit_edge, label %if.end260

for.body256.for.end270_crit_edge:                 ; preds = %for.body256
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end270

if.end260:                                        ; preds = %for.body256
  %and261 = and i32 %200, 2147483647
  %201 = ptrtoint ptr %txbdp.5563 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %and261, ptr %txbdp.5563, align 4
  %bufPtr262 = getelementptr inbounds %struct.txbd8, ptr %txbdp.5563, i32 0, i32 1
  %202 = ptrtoint ptr %bufPtr262 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %bufPtr262, align 4
  %204 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %add.ptr.i, align 128
  %conv264 = and i32 %200, 65535
  tail call void @dma_unmap_page_attrs(ptr noundef %205, i32 noundef %203, i32 noundef %conv264, i32 noundef 1, i32 noundef 0) #15
  %206 = ptrtoint ptr %tx_ring_size244 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %tx_ring_size244, align 2
  %conv266 = zext i16 %207 to i32
  %add.ptr.i.i493 = getelementptr %struct.txbd8, ptr %txbdp.5563, i32 1
  %add.ptr1.i.i494 = getelementptr %struct.txbd8, ptr %7, i32 %conv266
  %cmp.not.i.i495 = icmp ult ptr %add.ptr.i.i493, %add.ptr1.i.i494
  %idx.neg.i.i496 = sub nsw i32 0, %conv266
  %cond.idx.i.i497 = select i1 %cmp.not.i.i495, i32 0, i32 %idx.neg.i.i496
  %cond.i.i498 = getelementptr %struct.txbd8, ptr %add.ptr.i.i493, i32 %cond.idx.i.i497
  %inc269 = add nuw nsw i32 %i.1564, 1
  %exitcond566.not = icmp eq i32 %inc269, %conv35532
  br i1 %exitcond566.not, label %if.end260.for.end270_crit_edge, label %if.end260.for.body256_crit_edge

if.end260.for.body256_crit_edge:                  ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body256

if.end260.for.end270_crit_edge:                   ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end270

for.end270:                                       ; preds = %if.end260.for.end270_crit_edge, %for.body256.for.end270_crit_edge, %dma_map_err.for.end270_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !213
  tail call void @arm_heavy_mb() #15
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  br label %cleanup271

cleanup271:                                       ; preds = %for.end270, %if.end242, %if.then48, %if.then30
  %retval.0 = phi i32 [ 0, %if.then30 ], [ 16, %if.then48 ], [ 0, %for.end270 ], [ 0, %if.end242 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_set_mac_addr(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @eth_mac_addr(ptr noundef %dev, ptr noundef %p) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %regs1.i = getelementptr i8, ptr %dev, i32 2928
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 16
  %macstnaddr1.i = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 128
  %arrayidx2.i = getelementptr i8, ptr %1, i32 5
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx3.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %7 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %or.i = or i32 %shl5.i, %shl.i
  %arrayidx6.i = getelementptr i8, ptr %1, i32 3
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %9 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 8
  %or9.i = or i32 %or.i, %shl8.i
  %arrayidx10.i = getelementptr i8, ptr %1, i32 2
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %11 to i32
  %or12.i = or i32 %or9.i, %conv11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macstnaddr1.i, i32 %or12.i) #15, !srcloc !203
  %arrayidx13.i = getelementptr i8, ptr %1, i32 1
  %12 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %13 to i32
  %shl15.i = shl nuw i32 %conv14.i, 24
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  %conv17.i = zext i8 %15 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 16
  %or19.i = or i32 %shl18.i, %shl15.i
  %add.ptr20.i = getelementptr %struct.gfar, ptr %3, i32 0, i32 129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %or19.i) #15, !srcloc !203
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #0 align 64 {
entry:
  %config.i20 = alloca %struct.hwtstamp_config, align 4
  %config.i = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end8 [
    i32 35248, label %if.then2
    i32 35249, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config.i) #15
  %5 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %config.i, align 4, !annotation !208
  %6 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !208
  %8 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !208
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %10 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ifr_ifru.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.84, i32 noundef 156) #15
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i, label %if.then2.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then2.if.then11.i.i.i_crit_edge:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then2
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 12, i32 -1226833920) #23, !srcloc !226
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !212

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config.i, i32 noundef 12) #15
  %13 = call i32 @llvm.read_register.i32(metadata !190) #15
  %and.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !227
  %and.i.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #15, !srcloc !228
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !229
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config.i, ptr noundef %11, i32 noundef 12) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #15, !srcloc !228
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !212

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then2.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %if.then2.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %config.i, i32 %sub.i.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %gfar_hwtstamp_set.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %6, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %18, label %if.end.i.gfar_hwtstamp_set.exit_crit_edge [
    i32 0, label %if.end.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb2.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

if.end.i.gfar_hwtstamp_set.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_hwtstamp_set.exit

sw.bb2.i:                                         ; preds = %if.end.i
  %device_flags.i = getelementptr i8, ptr %dev, i32 2320
  %20 = ptrtoint ptr %device_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %device_flags.i, align 16
  %and.i = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %sw.bb2.i.gfar_hwtstamp_set.exit_crit_edge, label %sw.bb2.i.sw.epilog.i_crit_edge

sw.bb2.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb2.i.gfar_hwtstamp_set.exit_crit_edge:        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_hwtstamp_set.exit

sw.epilog.i:                                      ; preds = %sw.bb2.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge
  %hwts_tx_en6.i = getelementptr i8, ptr %dev, i32 2328
  %22 = ptrtoint ptr %hwts_tx_en6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %18, ptr %hwts_tx_en6.i, align 8
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cond29.i = icmp eq i32 %24, 0
  br i1 %cond29.i, label %sw.bb7.i, label %sw.default12.i

sw.bb7.i:                                         ; preds = %sw.epilog.i
  %hwts_rx_en.i = getelementptr i8, ptr %dev, i32 2324
  %25 = ptrtoint ptr %hwts_rx_en.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hwts_rx_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool8.not.i = icmp eq i32 %26, 0
  br i1 %tobool8.not.i, label %sw.bb7.i.if.then.i43.i_crit_edge, label %if.then9.i

sw.bb7.i.if.then.i43.i_crit_edge:                 ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i43.i

if.then9.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %hwts_rx_en.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %hwts_rx_en.i, align 4
  call fastcc void @reset_gfar(ptr noundef %dev) #15
  br label %if.then.i43.i

sw.default12.i:                                   ; preds = %sw.epilog.i
  %device_flags13.i = getelementptr i8, ptr %dev, i32 2320
  %28 = ptrtoint ptr %device_flags13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %device_flags13.i, align 16
  %and14.i = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %sw.default12.i.gfar_hwtstamp_set.exit_crit_edge, label %if.end17.i

sw.default12.i.gfar_hwtstamp_set.exit_crit_edge:  ; preds = %sw.default12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_hwtstamp_set.exit

if.end17.i:                                       ; preds = %sw.default12.i
  %hwts_rx_en18.i = getelementptr i8, ptr %dev, i32 2324
  %30 = ptrtoint ptr %hwts_rx_en18.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hwts_rx_en18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool19.not.i = icmp eq i32 %31, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end17.i.if.end22.i_crit_edge

if.end17.i.if.end22.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %hwts_rx_en18.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %hwts_rx_en18.i, align 4
  call fastcc void @reset_gfar(ptr noundef %dev) #15
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end22.i_crit_edge
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %8, align 4
  br label %if.then.i43.i

if.then.i43.i:                                    ; preds = %if.end22.i, %if.then9.i, %sw.bb7.i.if.then.i43.i_crit_edge
  %34 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ifr_ifru.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.84, i32 noundef 174) #15
  %call.i.i42.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i42.i, label %if.then.i43.i.gfar_hwtstamp_set.exit_crit_edge, label %if.end.i.i46.i

if.then.i43.i.gfar_hwtstamp_set.exit_crit_edge:   ; preds = %if.then.i43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_hwtstamp_set.exit

if.end.i.i46.i:                                   ; preds = %if.then.i43.i
  %36 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %35, i32 12, i32 -1226833920) #23, !srcloc !230
  %asmresult.i.i44.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i44.i)
  %cmp.i.i45.i = icmp eq i32 %asmresult.i.i44.i, 0
  br i1 %cmp.i.i45.i, label %copy_to_user.exit.i, label %if.end.i.i46.i.gfar_hwtstamp_set.exit_crit_edge

if.end.i.i46.i.gfar_hwtstamp_set.exit_crit_edge:  ; preds = %if.end.i.i46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_hwtstamp_set.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i46.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i47.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config.i, i32 noundef 12) #15
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %35, ptr noundef nonnull %config.i, i32 noundef 12) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool27.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool27.not.i, i32 0, i32 -14
  br label %gfar_hwtstamp_set.exit

gfar_hwtstamp_set.exit:                           ; preds = %copy_to_user.exit.i, %if.end.i.i46.i.gfar_hwtstamp_set.exit_crit_edge, %if.then.i43.i.gfar_hwtstamp_set.exit_crit_edge, %sw.default12.i.gfar_hwtstamp_set.exit_crit_edge, %sw.bb2.i.gfar_hwtstamp_set.exit_crit_edge, %if.end.i.gfar_hwtstamp_set.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ -34, %sw.bb2.i.gfar_hwtstamp_set.exit_crit_edge ], [ -34, %if.end.i.gfar_hwtstamp_set.exit_crit_edge ], [ -34, %sw.default12.i.gfar_hwtstamp_set.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then.i43.i.gfar_hwtstamp_set.exit_crit_edge ], [ -14, %if.end.i.i46.i.gfar_hwtstamp_set.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config.i) #15
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config.i20) #15
  %37 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i20, i32 0, i32 1
  %38 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i20, i32 0, i32 2
  %39 = ptrtoint ptr %config.i20 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %config.i20, align 4
  %hwts_tx_en.i = getelementptr i8, ptr %dev, i32 2328
  %40 = ptrtoint ptr %hwts_tx_en.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hwts_tx_en.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp ne i32 %41, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond.i, ptr %37, align 4
  %hwts_rx_en.i21 = getelementptr i8, ptr %dev, i32 2324
  %43 = ptrtoint ptr %hwts_rx_en.i21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hwts_rx_en.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool1.not.i = icmp ne i32 %44, 0
  %cond2.i = zext i1 %tobool1.not.i to i32
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond2.i, ptr %38, align 4
  %ifr_ifru.i22 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %46 = ptrtoint ptr %ifr_ifru.i22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ifr_ifru.i22, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.84, i32 noundef 174) #15
  %call.i.i.i23 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i23, label %if.then6.gfar_hwtstamp_get.exit_crit_edge, label %if.end.i.i.i26

if.then6.gfar_hwtstamp_get.exit_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_hwtstamp_get.exit

if.end.i.i.i26:                                   ; preds = %if.then6
  %48 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %47, i32 12, i32 -1226833920) #23, !srcloc !230
  %asmresult.i.i.i24 = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i24)
  %cmp.i.i.i25 = icmp eq i32 %asmresult.i.i.i24, 0
  br i1 %cmp.i.i.i25, label %copy_to_user.exit.i30, label %if.end.i.i.i26.gfar_hwtstamp_get.exit_crit_edge

if.end.i.i.i26.gfar_hwtstamp_get.exit_crit_edge:  ; preds = %if.end.i.i.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_hwtstamp_get.exit

copy_to_user.exit.i30:                            ; preds = %if.end.i.i.i26
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i27 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config.i20, i32 noundef 12) #15
  %call.i1.i.i.i28 = call i32 @arm_copy_to_user(ptr noundef %47, ptr noundef nonnull %config.i20, i32 noundef 12) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i28)
  %tobool4.not.i = icmp eq i32 %call.i1.i.i.i28, 0
  %spec.select.i29 = select i1 %tobool4.not.i, i32 0, i32 -14
  br label %gfar_hwtstamp_get.exit

gfar_hwtstamp_get.exit:                           ; preds = %copy_to_user.exit.i30, %if.end.i.i.i26.gfar_hwtstamp_get.exit_crit_edge, %if.then6.gfar_hwtstamp_get.exit_crit_edge
  %49 = phi i32 [ -14, %if.then6.gfar_hwtstamp_get.exit_crit_edge ], [ -14, %if.end.i.i.i26.gfar_hwtstamp_get.exit_crit_edge ], [ %spec.select.i29, %copy_to_user.exit.i30 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config.i20) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %1, ptr noundef %rq, i32 noundef %cmd) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end8.cleanup_crit_edge, %gfar_hwtstamp_get.exit, %gfar_hwtstamp_set.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %gfar_hwtstamp_set.exit ], [ %49, %gfar_hwtstamp_get.exit ], [ %call11, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %dev, i32 3712
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and.i.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %while.cond.do.end_crit_edge

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

test_and_set_bit_lock.exit:                       ; preds = %while.cond
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 4, ptr elementtype(i32) %state) #15, !srcloc !216
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !217
  %3 = and i32 %asmresult.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %phi.cmp.i.not = icmp eq i32 %3, 0
  br i1 %phi.cmp.i.not, label %while.end, label %test_and_set_bit_lock.exit.do.end_crit_edge

test_and_set_bit_lock.exit.do.end_crit_edge:      ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %test_and_set_bit_lock.exit.do.end_crit_edge, %while.cond.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !231
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !232
  br label %while.cond

while.end:                                        ; preds = %test_and_set_bit_lock.exit
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @stop_gfar(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %new_mtu, ptr %mtu, align 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and9 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call i32 @startup_gfar(ptr noundef %dev)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %call.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !220
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 4, ptr elementtype(i32) %state) #15, !srcloc !221
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfar_timeout(ptr noundef %dev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_errors, align 4
  %reset_task = getelementptr i8, ptr %dev, i32 3928
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %reset_task) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfar_get_stats64(ptr noundef %dev, ptr nocapture noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %num_rx_queues = getelementptr i8, ptr %dev, i32 3724
  %0 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp92.not = icmp eq i32 %1, 0
  br i1 %cmp92.not, label %entry.for.cond13.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond13.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond13.preheader

for.body.lr.ph:                                   ; preds = %entry
  %rx_bytes6 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %rx_dropped11 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  br label %for.body

for.cond13.preheader:                             ; preds = %for.body.for.cond13.preheader_crit_edge, %entry.for.cond13.preheader_crit_edge
  %num_tx_queues = getelementptr i8, ptr %dev, i32 3720
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1494.not = icmp eq i32 %3, 0
  br i1 %cmp1494.not, label %for.cond13.preheader.for.end27_crit_edge, label %for.body15.lr.ph

for.cond13.preheader.for.end27_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end27

for.body15.lr.ph:                                 ; preds = %for.cond13.preheader
  %tx_bytes18 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %tx_packets23 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  br label %for.body15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.093
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %stats1 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %stats1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stats1, align 8
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %stats, align 8
  %add = add i64 %9, %7
  store i64 %add, ptr %stats, align 8
  %10 = load ptr, ptr %arrayidx, align 4
  %rx_bytes = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %10, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rx_bytes, align 8
  %13 = ptrtoint ptr %rx_bytes6 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rx_bytes6, align 8
  %add7 = add i64 %14, %12
  store i64 %add7, ptr %rx_bytes6, align 8
  %15 = load ptr, ptr %arrayidx, align 4
  %rx_dropped = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %15, i32 0, i32 11, i32 2
  %16 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rx_dropped, align 8
  %18 = ptrtoint ptr %rx_dropped11 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_dropped11, align 8
  %add12 = add i64 %19, %17
  store i64 %add12, ptr %rx_dropped11, align 8
  %inc = add nuw i32 %i.093, 1
  %20 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_rx_queues, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond13.preheader_crit_edge

for.body.for.cond13.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond13.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.body15.lr.ph
  %i.195 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc26, %for.body15.for.body15_crit_edge ]
  %arrayidx16 = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.195
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx16, align 4
  %tx_bytes = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %23, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_bytes, align 8
  %26 = ptrtoint ptr %tx_bytes18 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tx_bytes18, align 8
  %add19 = add i64 %27, %25
  store i64 %add19, ptr %tx_bytes18, align 8
  %28 = load ptr, ptr %arrayidx16, align 4
  %stats22 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %stats22 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %stats22, align 64
  %31 = ptrtoint ptr %tx_packets23 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tx_packets23, align 8
  %add24 = add i64 %32, %30
  store i64 %add24, ptr %tx_packets23, align 8
  %inc26 = add nuw i32 %i.195, 1
  %33 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_tx_queues, align 8
  %cmp14 = icmp ult i32 %inc26, %34
  br i1 %cmp14, label %for.body15.for.body15_crit_edge, label %for.body15.for.end27_crit_edge

for.body15.for.end27_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end27

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body15

for.end27:                                        ; preds = %for.body15.for.end27_crit_edge, %for.cond13.preheader.for.end27_crit_edge
  %device_flags = getelementptr i8, ptr %dev, i32 2320
  %35 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %device_flags, align 16
  %and = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end27.if.end60_crit_edge, label %if.then

for.end27.if.end60_crit_edge:                     ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then:                                          ; preds = %for.end27
  %regs = getelementptr i8, ptr %dev, i32 2928
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 16
  %rmon_overflow = getelementptr i8, ptr %dev, i32 3840
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rmon_overflow) #15
  %car1 = getelementptr inbounds %struct.gfar, ptr %38, i32 0, i32 161, i32 44
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %car1) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and37 = and i32 %39, 1
  %rdrp39 = getelementptr inbounds %struct.gfar, ptr %38, i32 0, i32 161, i32 23
  br label %do.body38

do.body38:                                        ; preds = %do.body38.do.body38_crit_edge, %if.then
  %car.0 = phi i32 [ %and37, %if.then ], [ %and43, %do.body38.do.body38_crit_edge ]
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rdrp39) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %car1) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and43 = and i32 %41, 1
  %cmp45.not = icmp eq i32 %and43, %car.0
  br i1 %cmp45.not, label %do.end47, label %do.body38.do.body38_crit_edge

do.body38.do.body38_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body38

do.end47:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %car.0)
  %tobool48.not = icmp eq i32 %car.0, 0
  br i1 %tobool48.not, label %do.end47.if.end_crit_edge, label %if.then49

do.end47.if.end_crit_edge:                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then49:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #17
  %rdrp51 = getelementptr i8, ptr %dev, i32 3888
  %42 = ptrtoint ptr %rdrp51 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rdrp51, align 16
  %inc52 = add i64 %43, 1
  store i64 %inc52, ptr %rdrp51, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %car1, i32 1) #15, !srcloc !203
  br label %if.end

if.end:                                           ; preds = %if.then49, %do.end47.if.end_crit_edge
  %rdrp55 = getelementptr i8, ptr %dev, i32 3888
  %44 = ptrtoint ptr %rdrp55 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rdrp55, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rmon_overflow, i32 noundef %call33) #15
  %conv58 = zext i32 %40 to i64
  %shl = shl i64 %45, 16
  %add59 = add i64 %shl, %conv58
  %rx_missed_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 15
  %46 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add59, ptr %rx_missed_errors, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.end, %for.end27.if.end60_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfar_netpoll(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %device_flags = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_flags, align 16
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %num_grps22 = getelementptr i8, ptr %dev, i32 3728
  %2 = ptrtoint ptr %num_grps22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_grps22, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2380.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond21.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp2380.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.cond21.preheader:                             ; preds = %entry
  br i1 %cmp2380.not, label %for.cond21.preheader.if.end_crit_edge, label %for.cond21.preheader.for.body24_crit_edge

for.cond21.preheader.for.body24_crit_edge:        ; preds = %for.cond21.preheader
  br label %for.body24

for.cond21.preheader.if.end_crit_edge:            ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body:                                         ; preds = %gfar_interrupt.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.079 = phi i32 [ %inc, %gfar_interrupt.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.079
  %irqinfo = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.079, i32 13
  %4 = ptrtoint ptr %irqinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irqinfo, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  tail call void @disable_irq(i32 noundef %7) #15
  %arrayidx3 = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.079, i32 13, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  tail call void @disable_irq(i32 noundef %11) #15
  %arrayidx6 = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.079, i32 13, i32 2
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  tail call void @disable_irq(i32 noundef %15) #15
  %16 = ptrtoint ptr %irqinfo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irqinfo, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %regs.i = getelementptr inbounds %struct.gfar_priv_grp, ptr %arrayidx, i32 0, i32 3
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 16
  %ievent.i = getelementptr inbounds %struct.gfar, ptr %21, i32 0, i32 3
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and.i = and i32 %22, 536903808
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 @gfar_receive(i32 noundef %19, ptr noundef %arrayidx) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %and2.i = and i32 %22, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i = tail call i32 @gfar_transmit(i32 noundef %19, ptr noundef %arrayidx) #15
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %and7.i = and i32 %22, -171505661
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.gfar_interrupt.exit_crit_edge, label %if.then9.i

if.end6.i.gfar_interrupt.exit_crit_edge:          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_interrupt.exit

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %call10.i = tail call i32 @gfar_error(i32 noundef %19, ptr noundef %arrayidx) #15
  br label %gfar_interrupt.exit

gfar_interrupt.exit:                              ; preds = %if.then9.i, %if.end6.i.gfar_interrupt.exit_crit_edge
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx6, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  tail call void @enable_irq(i32 noundef %26) #15
  %27 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx3, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  tail call void @enable_irq(i32 noundef %30) #15
  %31 = ptrtoint ptr %irqinfo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irqinfo, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  tail call void @enable_irq(i32 noundef %34) #15
  %inc = add nuw i32 %i.079, 1
  %35 = ptrtoint ptr %num_grps22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_grps22, align 16
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %gfar_interrupt.exit.for.body_crit_edge, label %gfar_interrupt.exit.if.end_crit_edge

gfar_interrupt.exit.if.end_crit_edge:             ; preds = %gfar_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

gfar_interrupt.exit.for.body_crit_edge:           ; preds = %gfar_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body24:                                       ; preds = %gfar_interrupt.exit76.for.body24_crit_edge, %for.cond21.preheader.for.body24_crit_edge
  %i.181 = phi i32 [ %inc39, %gfar_interrupt.exit76.for.body24_crit_edge ], [ 0, %for.cond21.preheader.for.body24_crit_edge ]
  %arrayidx27 = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.181
  %irqinfo28 = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 11, i32 %i.181, i32 13
  %37 = ptrtoint ptr %irqinfo28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irqinfo28, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  tail call void @disable_irq(i32 noundef %40) #15
  %41 = ptrtoint ptr %irqinfo28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irqinfo28, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %regs.i60 = getelementptr inbounds %struct.gfar_priv_grp, ptr %arrayidx27, i32 0, i32 3
  %45 = ptrtoint ptr %regs.i60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i60, align 16
  %ievent.i61 = getelementptr inbounds %struct.gfar, ptr %46, i32 0, i32 3
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent.i61) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and.i62 = and i32 %47, 536903808
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool.not.i63 = icmp eq i32 %and.i62, 0
  br i1 %tobool.not.i63, label %for.body24.if.end.i68_crit_edge, label %if.then.i65

for.body24.if.end.i68_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i68

if.then.i65:                                      ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i64 = tail call i32 @gfar_receive(i32 noundef %44, ptr noundef %arrayidx27) #15
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.then.i65, %for.body24.if.end.i68_crit_edge
  %and2.i66 = and i32 %47, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i66)
  %tobool3.not.i67 = icmp eq i32 %and2.i66, 0
  br i1 %tobool3.not.i67, label %if.end.i68.if.end6.i73_crit_edge, label %if.then4.i70

if.end.i68.if.end6.i73_crit_edge:                 ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i73

if.then4.i70:                                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i69 = tail call i32 @gfar_transmit(i32 noundef %44, ptr noundef %arrayidx27) #15
  br label %if.end6.i73

if.end6.i73:                                      ; preds = %if.then4.i70, %if.end.i68.if.end6.i73_crit_edge
  %and7.i71 = and i32 %47, -171505661
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i71)
  %tobool8.not.i72 = icmp eq i32 %and7.i71, 0
  br i1 %tobool8.not.i72, label %if.end6.i73.gfar_interrupt.exit76_crit_edge, label %if.then9.i75

if.end6.i73.gfar_interrupt.exit76_crit_edge:      ; preds = %if.end6.i73
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_interrupt.exit76

if.then9.i75:                                     ; preds = %if.end6.i73
  call void @__sanitizer_cov_trace_pc() #17
  %call10.i74 = tail call i32 @gfar_error(i32 noundef %44, ptr noundef %arrayidx27) #15
  br label %gfar_interrupt.exit76

gfar_interrupt.exit76:                            ; preds = %if.then9.i75, %if.end6.i73.gfar_interrupt.exit76_crit_edge
  %48 = ptrtoint ptr %irqinfo28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %irqinfo28, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  tail call void @enable_irq(i32 noundef %51) #15
  %inc39 = add nuw i32 %i.181, 1
  %52 = ptrtoint ptr %num_grps22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_grps22, align 16
  %cmp23 = icmp ult i32 %inc39, %53
  br i1 %cmp23, label %gfar_interrupt.exit76.for.body24_crit_edge, label %gfar_interrupt.exit76.if.end_crit_edge

gfar_interrupt.exit76.if.end_crit_edge:           ; preds = %gfar_interrupt.exit76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

gfar_interrupt.exit76.for.body24_crit_edge:       ; preds = %gfar_interrupt.exit76
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body24

if.end:                                           ; preds = %gfar_interrupt.exit76.if.end_crit_edge, %gfar_interrupt.exit.if.end_crit_edge, %for.cond21.preheader.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfar_set_features(ptr noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fixed_phy_change_carrier(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adjust_link(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %oldlink = getelementptr i8, ptr %dev, i32 3920
  %3 = ptrtoint ptr %oldlink to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %oldlink, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %bf.cast)
  %cmp.not = icmp eq i32 %4, %bf.cast
  br i1 %cmp.not, label %lor.rhs, label %entry.if.then_crit_edge, !prof !212

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %tobool.not = icmp eq i16 %bf.clear, 0
  br i1 %tobool.not, label %lor.rhs.if.end_crit_edge, label %land.rhs

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %lor.rhs
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %duplex, align 4
  %oldduplex = getelementptr i8, ptr %dev, i32 3916
  %7 = ptrtoint ptr %oldduplex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oldduplex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp7.not = icmp eq i32 %6, %8
  br i1 %cmp7.not, label %lor.rhs8, label %land.rhs.if.then_crit_edge

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.rhs8:                                         ; preds = %land.rhs
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed, align 8
  %oldspeed = getelementptr i8, ptr %dev, i32 3912
  %11 = ptrtoint ptr %oldspeed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oldspeed, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp9.not = icmp eq i32 %10, %12
  br i1 %cmp9.not, label %lor.rhs8.if.end_crit_edge, label %lor.rhs8.if.then_crit_edge, !prof !212

lor.rhs8.if.then_crit_edge:                       ; preds = %lor.rhs8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.rhs8.if.end_crit_edge:                        ; preds = %lor.rhs8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %lor.rhs8.if.then_crit_edge, %land.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @gfar_update_link_state(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.rhs8.if.end_crit_edge, %lor.rhs.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfar_update_link_state(ptr noundef %priv) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 0, i32 3
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 16
  %ndev2 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev2, align 4
  %phydev3 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 145
  %4 = ptrtoint ptr %phydev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev3, align 16
  %state = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 12
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !212

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %link, align 8
  %10 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool6.not = icmp eq i16 %10, 0
  br i1 %tobool6.not, label %if.else77, label %if.then7

if.then7:                                         ; preds = %if.end
  %maccfg1 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 119
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg1) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %maccfg2 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 120
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg2) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %ecntrl10 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 7
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ecntrl10) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and = and i32 %11, 16
  %duplex = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 9
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %duplex, align 4
  %oldduplex = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 25
  %16 = ptrtoint ptr %oldduplex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oldduplex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not = icmp eq i32 %15, %17
  br i1 %cmp.not, label %if.then7.if.end20_crit_edge, label %if.then12

if.then7.if.end20_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp ne i32 %15, 0
  %and16 = and i32 %12, -2
  %masksel = zext i1 %tobool14.not to i32
  %tempval.0 = or i32 %and16, %masksel
  %18 = ptrtoint ptr %oldduplex to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %oldduplex, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %if.then7.if.end20_crit_edge
  %tempval.1 = phi i32 [ %tempval.0, %if.then12 ], [ %12, %if.then7.if.end20_crit_edge ]
  %speed = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 8
  %19 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed, align 8
  %oldspeed = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 24
  %21 = ptrtoint ptr %oldspeed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oldspeed, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp21.not = icmp eq i32 %20, %22
  br i1 %cmp21.not, label %if.end20.if.end45_crit_edge, label %if.then22

if.end20.if.end45_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then22:                                        ; preds = %if.end20
  %23 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %20, label %do.body [
    i32 1000, label %sw.bb
    i32 100, label %if.then22.sw.bb27_crit_edge
    i32 10, label %if.then22.sw.bb27_crit_edge158
  ]

if.then22.sw.bb27_crit_edge158:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27

if.then22.sw.bb27_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27

sw.bb:                                            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  %and24 = and i32 %tempval.1, -769
  %or25 = or i32 %and24, 512
  %and26 = and i32 %13, -9
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.then22.sw.bb27_crit_edge, %if.then22.sw.bb27_crit_edge158
  %and28 = and i32 %tempval.1, -769
  %or29 = or i32 %and28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %20)
  %cmp31 = icmp eq i32 %20, 100
  br i1 %cmp31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #17
  %or33 = or i32 %13, 8
  br label %sw.epilog

if.else34:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #17
  %and35 = and i32 %13, -9
  br label %sw.epilog

do.body:                                          ; preds = %if.then22
  %msg_enable = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 27
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 4
  %and37 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body.sw.epilog_crit_edge, label %if.then39

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndev2, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.62, i32 noundef %20) #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then39, %do.body.sw.epilog_crit_edge, %if.else34, %if.then32, %sw.bb
  %tempval.2 = phi i32 [ %tempval.1, %if.then39 ], [ %tempval.1, %do.body.sw.epilog_crit_edge ], [ %or29, %if.then32 ], [ %or29, %if.else34 ], [ %or25, %sw.bb ]
  %ecntrl.0 = phi i32 [ %13, %if.then39 ], [ %13, %do.body.sw.epilog_crit_edge ], [ %or33, %if.then32 ], [ %and35, %if.else34 ], [ %and26, %sw.bb ]
  %28 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %speed, align 8
  %30 = ptrtoint ptr %oldspeed to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %oldspeed, align 8
  br label %if.end45

if.end45:                                         ; preds = %sw.epilog, %if.end20.if.end45_crit_edge
  %tempval.3 = phi i32 [ %tempval.2, %sw.epilog ], [ %tempval.1, %if.end20.if.end45_crit_edge ]
  %ecntrl.1 = phi i32 [ %ecntrl.0, %sw.epilog ], [ %13, %if.end20.if.end45_crit_edge ]
  %and46 = and i32 %11, -49
  %31 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ndev2, align 4
  %phydev2.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 145
  %33 = ptrtoint ptr %phydev2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phydev2.i, align 16
  %duplex.i = getelementptr inbounds %struct.phy_device, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %if.end45.if.end57_crit_edge, label %if.end.i

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.end.i:                                         ; preds = %if.end45
  %pause_aneg_en.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 30
  %37 = ptrtoint ptr %pause_aneg_en.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i = load i8, ptr %pause_aneg_en.i, align 8
  %38 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool3.not.i = icmp eq i8 %38, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = shl i8 %bf.load.i, 2
  %40 = and i8 %39, 16
  %41 = shl i8 %bf.load.i, 4
  %42 = and i8 %41, 32
  %43 = or i8 %42, %40
  %44 = zext i8 %43 to i32
  br label %gfar_get_flowctrl_cfg.exit

if.else.i:                                        ; preds = %if.end.i
  %pause.i = getelementptr inbounds %struct.phy_device, ptr %34, i32 0, i32 11
  %45 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pause.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool18.not.i = icmp eq i32 %46, 0
  %spec.store.select.i = select i1 %tobool18.not.i, i16 0, i16 1024
  %asym_pause.i = getelementptr inbounds %struct.phy_device, ptr %34, i32 0, i32 12
  %47 = ptrtoint ptr %asym_pause.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %asym_pause.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool21.not.i = icmp eq i32 %48, 0
  %49 = or i16 %spec.store.select.i, 2048
  %spec.select55.i = select i1 %tobool21.not.i, i16 %spec.store.select.i, i16 %49
  %advertising.i = getelementptr inbounds %struct.phy_device, ptr %34, i32 0, i32 17
  %50 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %advertising.i, align 4
  %52 = lshr i32 %51, 3
  %53 = and i32 %52, 1024
  %54 = load volatile i32, ptr %advertising.i, align 4
  %55 = lshr i32 %54, 3
  %56 = and i32 %55, 2048
  %57 = or i32 %56, %53
  %conv26.i = trunc i32 %57 to i16
  %and25.i.i = and i16 %spec.select55.i, %conv26.i
  %and.i.i = zext i16 %and25.i.i to i32
  %and2.i.i = and i32 %and.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.else.i.gfar_get_flowctrl_cfg.exit_crit_edge

if.else.i.gfar_get_flowctrl_cfg.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_get_flowctrl_cfg.exit

if.else.i.i:                                      ; preds = %if.else.i
  %and6.i.i = and i32 %and.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i.if.end57_crit_edge, label %if.then8.i.i

if.else.i.i.if.end57_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then8.i.i:                                     ; preds = %if.else.i.i
  %58 = and i16 %conv26.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool11.not.i.i = icmp eq i16 %58, 0
  br i1 %tobool11.not.i.i, label %if.else13.i.i, label %if.then8.i.i.if.end57_crit_edge

if.then8.i.i.if.end57_crit_edge:                  ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.else13.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %59 = lshr exact i16 %spec.select55.i, 6
  %60 = and i16 %59, 16
  %phi.bo57.i = zext i16 %60 to i32
  br label %gfar_get_flowctrl_cfg.exit

gfar_get_flowctrl_cfg.exit:                       ; preds = %if.else13.i.i, %if.else.i.gfar_get_flowctrl_cfg.exit_crit_edge, %if.then4.i
  %retval.0.i = phi i32 [ %44, %if.then4.i ], [ 48, %if.else.i.gfar_get_flowctrl_cfg.exit_crit_edge ], [ %phi.bo57.i, %if.else13.i.i ]
  %and49 = and i32 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %tobool50.not.not = xor i1 %tobool50.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool50.not.not, i1 %tobool51.not, i1 false
  br i1 %or.cond, label %for.cond.preheader, label %gfar_get_flowctrl_cfg.exit.if.end57_crit_edge

gfar_get_flowctrl_cfg.exit.if.end57_crit_edge:    ; preds = %gfar_get_flowctrl_cfg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

for.cond.preheader:                               ; preds = %gfar_get_flowctrl_cfg.exit
  %num_rx_queues = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 15
  %61 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp53156.not = icmp eq i32 %62, 0
  br i1 %cmp53156.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %gfar_rxbd_dma_lastfree.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0157 = phi i32 [ %inc, %gfar_rxbd_dma_lastfree.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx55 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 9, i32 %i.0157
  %63 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx55, align 4
  %next_to_use.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %next_to_use.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool.not.i146 = icmp eq i16 %66, 0
  br i1 %tobool.not.i146, label %cond.false.i, label %for.body.gfar_rxbd_dma_lastfree.exit_crit_edge

for.body.gfar_rxbd_dma_lastfree.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_rxbd_dma_lastfree.exit

cond.false.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %rx_ring_size.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %64, i32 0, i32 4
  %67 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %rx_ring_size.i, align 16
  br label %gfar_rxbd_dma_lastfree.exit

gfar_rxbd_dma_lastfree.exit:                      ; preds = %cond.false.i, %for.body.gfar_rxbd_dma_lastfree.exit_crit_edge
  %cond.in.in.i = phi i16 [ %68, %cond.false.i ], [ %66, %for.body.gfar_rxbd_dma_lastfree.exit_crit_edge ]
  %cond.in.i = zext i16 %cond.in.in.i to i32
  %rx_bd_dma_base.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %64, i32 0, i32 15
  %69 = ptrtoint ptr %rx_bd_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_bd_dma_base.i, align 4
  %cond.i = shl nuw nsw i32 %cond.in.i, 3
  %arrayidx.idx.i = add i32 %70, -8
  %add.i = add i32 %arrayidx.idx.i, %cond.i
  %rfbptr = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %64, i32 0, i32 12
  %71 = ptrtoint ptr %rfbptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rfbptr, align 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %add.i) #15, !srcloc !203
  %inc = add nuw i32 %i.0157, 1
  %73 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_rx_queues, align 4
  %cmp53 = icmp ult i32 %inc, %74
  br i1 %cmp53, label %gfar_rxbd_dma_lastfree.exit.for.body_crit_edge, label %gfar_rxbd_dma_lastfree.exit.for.end_crit_edge

gfar_rxbd_dma_lastfree.exit.for.end_crit_edge:    ; preds = %gfar_rxbd_dma_lastfree.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

gfar_rxbd_dma_lastfree.exit.for.body_crit_edge:   ; preds = %gfar_rxbd_dma_lastfree.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %gfar_rxbd_dma_lastfree.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %tx_actual_en = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 17
  %75 = ptrtoint ptr %tx_actual_en to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %tx_actual_en, align 4
  br label %if.end57

if.end57:                                         ; preds = %for.end, %gfar_get_flowctrl_cfg.exit.if.end57_crit_edge, %if.then8.i.i.if.end57_crit_edge, %if.else.i.i.if.end57_crit_edge, %if.end45.if.end57_crit_edge
  %tobool50.not155 = phi i1 [ %tobool50.not, %for.end ], [ %tobool50.not, %gfar_get_flowctrl_cfg.exit.if.end57_crit_edge ], [ true, %if.end45.if.end57_crit_edge ], [ true, %if.else.i.i.if.end57_crit_edge ], [ true, %if.then8.i.i.if.end57_crit_edge ]
  %retval.0.i.ph.pn = phi i32 [ %retval.0.i, %for.end ], [ %retval.0.i, %gfar_get_flowctrl_cfg.exit.if.end57_crit_edge ], [ 0, %if.end45.if.end57_crit_edge ], [ 0, %if.else.i.i.if.end57_crit_edge ], [ 32, %if.then8.i.i.if.end57_crit_edge ]
  %or48154 = or i32 %retval.0.i.ph.pn, %and46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60 = icmp ne i32 %and, 0
  %spec.select = select i1 %tobool50.not155, i1 %tobool60, i1 false
  br i1 %spec.select, label %if.then67, label %if.end57.if.end69_crit_edge, !prof !211

if.end57.if.end69_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then67:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  %tx_actual_en68 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 17
  %76 = ptrtoint ptr %tx_actual_en68 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %tx_actual_en68, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end57.if.end69_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1, i32 %or48154) #15, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg2, i32 %tempval.3) #15, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ecntrl10, i32 %ecntrl.1) #15, !srcloc !203
  %oldlink = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 26
  %77 = ptrtoint ptr %oldlink to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %oldlink, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool73.not = icmp eq i32 %78, 0
  br i1 %tobool73.not, label %if.then74, label %if.end69.if.end85_crit_edge

if.end69.if.end85_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %oldlink to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %oldlink, align 16
  br label %if.end85

if.else77:                                        ; preds = %if.end
  %oldlink78 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 26
  %80 = ptrtoint ptr %oldlink78 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %oldlink78, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool79.not = icmp eq i32 %81, 0
  br i1 %tobool79.not, label %if.else77.if.end85_crit_edge, label %if.then80

if.else77.if.end85_crit_edge:                     ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

if.then80:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #17
  %82 = ptrtoint ptr %oldlink78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %oldlink78, align 16
  %oldspeed82 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 24
  %83 = ptrtoint ptr %oldspeed82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %oldspeed82, align 8
  %oldduplex83 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 25
  %84 = ptrtoint ptr %oldduplex83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %oldduplex83, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %if.else77.if.end85_crit_edge, %if.then74, %if.end69.if.end85_crit_edge
  %msg_enable86 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 27
  %85 = ptrtoint ptr %msg_enable86 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msg_enable86, align 4
  %and87 = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end85.cleanup_crit_edge, label %if.then89

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @phy_print_status(ptr noundef %5) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %if.end85.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_error(i32 noundef %irq, ptr nocapture noundef readonly %grp_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.gfar_priv_grp, ptr %grp_id, i32 0, i32 3
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 16
  %priv2 = getelementptr inbounds %struct.gfar_priv_grp, ptr %grp_id, i32 0, i32 8
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %ndev = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %ievent = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and = and i32 %6, -171505661
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent, i32 %and) #15, !srcloc !203
  %device_flags = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device_flags, align 16
  %and4 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %and5 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  %and7 = and i32 %6, -2049
  %events.0 = select i1 %or.cond, i32 %6, i32 %and7
  %msg_enable = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 27
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %11 = and i32 %10, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %entry.if.end24_crit_edge, label %do.body14

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfar_error.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gfar_error, %if.then19)) #15
          to label %if.end24 [label %if.then19], !srcloc !233

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #17
  %imask = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gfar_error.__UNIQUE_ID_ddebug488, ptr noundef %5, ptr noundef nonnull @.str.72, i32 noundef %events.0, i32 noundef %13) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %do.body14, %entry.if.end24_crit_edge
  %and25 = and i32 %events.0, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end95_crit_edge, label %if.then27

if.end24.if.end95_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

if.then27:                                        ; preds = %if.end24
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 5
  %14 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %tx_errors, align 4
  %and28 = and i32 %events.0, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then27.if.end33_crit_edge, label %if.then30

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 20
  %16 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_window_errors, align 8
  %inc32 = add i32 %17, 1
  store i32 %inc32, ptr %tx_window_errors, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.then27.if.end33_crit_edge
  %and34 = and i32 %events.0, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 16
  %18 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_aborted_errors, align 8
  %inc38 = add i32 %19, 1
  store i32 %inc38, ptr %tx_aborted_errors, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %and40 = and i32 %events.0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.do.body71_crit_edge, label %do.body43

if.end39.do.body71_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body71

do.body43:                                        ; preds = %if.end39
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and45 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body43.do.end66_crit_edge, label %do.body48

do.body43.do.end66_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end66

do.body48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfar_error.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gfar_error, %if.then60)) #15
          to label %do.end66 [label %if.then60], !srcloc !233

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gfar_error.__UNIQUE_ID_ddebug489, ptr noundef %5, ptr noundef nonnull @.str.73) #15
  br label %do.end66

do.end66:                                         ; preds = %if.then60, %do.body48, %do.body43.do.end66_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 7
  %22 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_dropped, align 4
  %inc68 = add i32 %23, 1
  store i32 %inc68, ptr %tx_dropped, align 4
  %tx_underrun = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 18, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_underrun, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %tx_underrun) #15
  %reset_task = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i338 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %reset_task) #15
  br label %do.body71

do.body71:                                        ; preds = %do.end66, %if.end39.do.body71_crit_edge
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable, align 4
  %and73 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %do.body71.if.end95_crit_edge, label %do.body76

do.body71.if.end95_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

do.body76:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfar_error.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gfar_error, %if.then88)) #15
          to label %if.end95 [label %if.then88], !srcloc !233

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gfar_error.__UNIQUE_ID_ddebug490, ptr noundef %5, ptr noundef nonnull @.str.74) #15
  br label %if.end95

if.end95:                                         ; preds = %if.then88, %do.body76, %do.body71.if.end95_crit_edge, %if.end24.if.end95_crit_edge
  %and96 = and i32 %events.0, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end110_crit_edge, label %if.then98

if.end95.if.end110_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end110

if.then98:                                        ; preds = %if.end95
  %rmon_overflow = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %rmon_overflow) #15
  %car1 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 161, i32 44
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %car1) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and101 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.then98.if.end107_crit_edge, label %if.then103

if.then98.if.end107_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then103:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  %rdrp = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 19, i32 2
  %28 = ptrtoint ptr %rdrp to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rdrp, align 16
  %inc105 = add i64 %29, 1
  store i64 %inc105, ptr %rdrp, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %car1, i32 1) #15, !srcloc !203
  br label %if.end107

if.end107:                                        ; preds = %if.then103, %if.then98.if.end107_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rmon_overflow) #15
  br label %if.end110

if.end110:                                        ; preds = %if.end107, %if.end95.if.end110_crit_edge
  %and111 = and i32 %events.0, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end110.if.end142_crit_edge, label %if.then113

if.end110.if.end142_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end142

if.then113:                                       ; preds = %if.end110
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 11
  %30 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_over_errors, align 4
  %inc115 = add i32 %31, 1
  store i32 %inc115, ptr %rx_over_errors, align 4
  %rx_bsy = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 18, i32 6
  %call.i.i319 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_bsy, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %rx_bsy) #15
  %32 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable, align 4
  %and119 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.then113.if.end142_crit_edge, label %do.body122

if.then113.if.end142_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end142

do.body122:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfar_error.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gfar_error, %if.then134)) #15
          to label %if.end142 [label %if.then134], !srcloc !233

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #17
  %rstat = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 69
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rstat) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gfar_error.__UNIQUE_ID_ddebug491, ptr noundef %5, ptr noundef nonnull @.str.75, i32 noundef %34) #15
  br label %if.end142

if.end142:                                        ; preds = %if.then134, %do.body122, %if.then113.if.end142_crit_edge, %if.end110.if.end142_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %events.0)
  %tobool144.not = icmp sgt i32 %events.0, -1
  br i1 %tobool144.not, label %if.end142.if.end173_crit_edge, label %if.then145

if.end142.if.end173_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end173

if.then145:                                       ; preds = %if.end142
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 4
  %35 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_errors, align 8
  %inc147 = add i32 %36, 1
  store i32 %inc147, ptr %rx_errors, align 8
  %rx_babr = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 18, i32 7
  %call.i.i323 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_babr, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %rx_babr) #15
  %37 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable, align 4
  %and151 = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.then145.if.end173_crit_edge, label %do.body154

if.then145.if.end173_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end173

do.body154:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfar_error.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gfar_error, %if.then166)) #15
          to label %if.end173 [label %if.then166], !srcloc !233

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gfar_error.__UNIQUE_ID_ddebug492, ptr noundef %5, ptr noundef nonnull @.str.76) #15
  br label %if.end173

if.end173:                                        ; preds = %if.then166, %do.body154, %if.then145.if.end173_crit_edge, %if.end142.if.end173_crit_edge
  %and174 = and i32 %events.0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end173.if.end202_crit_edge, label %if.then176

if.end173.if.end202_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end202

if.then176:                                       ; preds = %if.end173
  %eberr = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 18, i32 9
  %call.i.i327 = tail call zeroext i1 @__kasan_check_write(ptr noundef %eberr, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %eberr) #15
  %39 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable, align 4
  %and180 = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.then176.if.end202_crit_edge, label %do.body183

if.then176.if.end202_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end202

do.body183:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfar_error.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gfar_error, %if.then195)) #15
          to label %if.end202 [label %if.then195], !srcloc !233

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gfar_error.__UNIQUE_ID_ddebug493, ptr noundef %5, ptr noundef nonnull @.str.77) #15
  br label %if.end202

if.end202:                                        ; preds = %if.then195, %do.body183, %if.then176.if.end202_crit_edge, %if.end173.if.end202_crit_edge
  %and203 = and i32 %events.0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %if.end202.if.end230_crit_edge, label %do.body206

if.end202.if.end230_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end230

do.body206:                                       ; preds = %if.end202
  %41 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable, align 4
  %and208 = and i32 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %do.body206.if.end230_crit_edge, label %do.body211

do.body206.if.end230_crit_edge:                   ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end230

do.body211:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfar_error.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gfar_error, %if.then223)) #15
          to label %if.end230 [label %if.then223], !srcloc !233

if.then223:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gfar_error.__UNIQUE_ID_ddebug494, ptr noundef %5, ptr noundef nonnull @.str.78) #15
  br label %if.end230

if.end230:                                        ; preds = %if.then223, %do.body211, %do.body206.if.end230_crit_edge, %if.end202.if.end230_crit_edge
  %and231 = and i32 %events.0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %if.end230.if.end259_crit_edge, label %if.then233

if.end230.if.end259_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end259

if.then233:                                       ; preds = %if.end230
  %tx_babt = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 18, i32 10
  %call.i.i334 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_babt, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %tx_babt) #15
  %43 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable, align 4
  %and237 = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  br i1 %tobool238.not, label %if.then233.if.end259_crit_edge, label %do.body240

if.then233.if.end259_crit_edge:                   ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end259

do.body240:                                       ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfar_error.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gfar_error, %if.then252)) #15
          to label %if.end259 [label %if.then252], !srcloc !233

if.then252:                                       ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gfar_error.__UNIQUE_ID_ddebug495, ptr noundef %5, ptr noundef nonnull @.str.79) #15
  br label %if.end259

if.end259:                                        ; preds = %if.then252, %do.body240, %if.then233.if.end259_crit_edge, %if.end230.if.end259_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_transmit(i32 noundef %irq, ptr noundef %grp_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %napi_tx = getelementptr inbounds %struct.gfar_priv_grp, ptr %grp_id, i32 0, i32 2
  %call = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_tx) #15
  br i1 %call, label %do.body2, label %if.else, !prof !212

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %grp_id) #15
  %regs = getelementptr inbounds %struct.gfar_priv_grp, ptr %grp_id, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 16
  %imask7 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask7) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %priv = getelementptr inbounds %struct.gfar_priv_grp, ptr %grp_id, i32 0, i32 8
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %imask9 = getelementptr inbounds %struct.gfar_private, ptr %4, i32 0, i32 19, i32 1
  %5 = ptrtoint ptr %imask9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %imask9, align 4
  %or = or i32 %6, -247398269
  %and = and i32 %or, %2
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 16
  %imask11 = getelementptr inbounds %struct.gfar, ptr %8, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask11, i32 %and) #15, !srcloc !203
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %grp_id, i32 noundef %call4) #15
  tail call void @__napi_schedule(ptr noundef %napi_tx) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %regs14 = getelementptr inbounds %struct.gfar_priv_grp, ptr %grp_id, i32 0, i32 3
  %9 = ptrtoint ptr %regs14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs14, align 16
  %ievent = getelementptr inbounds %struct.gfar, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent, i32 3145728) #15, !srcloc !203
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_receive(i32 noundef %irq, ptr noundef %grp_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.gfar_priv_grp, ptr %grp_id, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 16
  %ievent1 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent1) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 16
  %ievent5 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent5, i32 16) #15, !srcloc !203
  br label %cleanup

if.end:                                           ; preds = %entry
  %napi_rx = getelementptr inbounds %struct.gfar_priv_grp, ptr %grp_id, i32 0, i32 1
  %call6 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_rx) #15
  br i1 %call6, label %do.body14, label %if.else, !prof !212

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %grp_id) #15
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 16
  %imask20 = getelementptr inbounds %struct.gfar, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask20) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %priv = getelementptr inbounds %struct.gfar_priv_grp, ptr %grp_id, i32 0, i32 8
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %imask22 = getelementptr inbounds %struct.gfar_private, ptr %9, i32 0, i32 19, i32 1
  %10 = ptrtoint ptr %imask22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %imask22, align 4
  %or = or i32 %11, -781123581
  %and23 = and i32 %or, %7
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 16
  %imask25 = getelementptr inbounds %struct.gfar, ptr %13, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask25, i32 %and23) #15, !srcloc !203
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %grp_id, i32 noundef %call16) #15
  tail call void @__napi_schedule(ptr noundef %napi_rx) #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 16
  %ievent29 = getelementptr inbounds %struct.gfar, ptr %15, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent29, i32 536903808) #15, !srcloc !203
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.body14, %if.then
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_interrupt(i32 noundef %irq, ptr noundef %grp_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.gfar_priv_grp, ptr %grp_id, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 16
  %ievent = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and = and i32 %2, 536903808
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @gfar_receive(i32 noundef %irq, ptr noundef %grp_id)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %2, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 @gfar_transmit(i32 noundef %irq, ptr noundef %grp_id)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %and7 = and i32 %2, -171505661
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 @gfar_error(i32 noundef %irq, ptr noundef %grp_id)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @gfar_add_rx_frag(ptr nocapture noundef %rxb, i32 noundef %lstatus, ptr noundef %skb, i1 noundef zeroext %first) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %lstatus, 65535
  %page1 = getelementptr inbounds %struct.gfar_rx_buff, ptr %rxb, i32 0, i32 1
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 4
  br i1 %first, label %if.then, label %if.else, !prof !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %and) #15
  br label %if.end36

if.else:                                          ; preds = %entry
  %and4 = and i32 %lstatus, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end34_crit_edge, label %if.end

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.end:                                           ; preds = %if.else
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %sub = sub i32 %and, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end.if.end34_crit_edge, !prof !211

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2361, i32 noundef 9, ptr noundef nonnull @.str.85) #15
  br label %cleanup

if.end34:                                         ; preds = %if.end.if.end34_crit_edge, %if.else.if.end34_crit_edge
  %size.068 = phi i32 [ %sub, %if.end.if.end34_crit_edge ], [ %and, %if.else.if.end34_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %7 to i32
  %page_offset = getelementptr inbounds %struct.gfar_rx_buff, ptr %rxb, i32 0, i32 2
  %8 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_offset, align 4
  %add = add i32 %9, 64
  tail call void @skb_add_rx_frag(ptr noundef %skb, i32 noundef %conv, ptr noundef %1, i32 noundef %add, i32 noundef %size.068, i32 noundef 2048) #15
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.then
  %10 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !212

if.then.i.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %12, -1
  br label %page_count.exit

if.end.i.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %1 to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #15
  %15 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp38.not = icmp eq i32 %16, 1
  br i1 %cmp38.not, label %lor.rhs, label %page_count.exit.cleanup_crit_edge, !prof !212

page_count.exit.cleanup_crit_edge:                ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.rhs:                                          ; preds = %page_count.exit
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %19 = ptrtoint ptr %18 to i32
  %and.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end49, label %lor.rhs.cleanup_crit_edge, !prof !212

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end49:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %page_offset50 = getelementptr inbounds %struct.gfar_rx_buff, ptr %rxb, i32 0, i32 2
  %20 = ptrtoint ptr %page_offset50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_offset50, align 4
  %xor = xor i32 %21, 2048
  store i32 %xor, ptr %page_offset50, align 4
  %_refcount.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #15
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #15, !srcloc !234
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@gfar_add_rx_frag, %if.then.i)) #15
          to label %cleanup [label %if.then.i], !srcloc !233

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__page_ref_mod(ptr noundef %1, i32 noundef 1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end49, %lor.rhs.cleanup_crit_edge, %page_count.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %lor.rhs.cleanup_crit_edge ], [ false, %page_count.exit.cleanup_crit_edge ], [ true, %if.end49 ], [ true, %if.then.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cluster_entry_per_class(ptr nocapture noundef %priv, i32 noundef %rqfar, i32 noundef %class) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dec = add i32 %rqfar, -1
  %arrayidx = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 44, i32 %dec
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 45, i32 %dec
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 512, ptr %arrayidx1, align 4
  %regs1.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 0, i32 3
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 16
  %rqfar.i = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i, i32 %dec) #15, !srcloc !203
  %rqfcr.i = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i, i32 512) #15, !srcloc !203
  %rqfpr.i = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i, i32 -1) #15, !srcloc !203
  %dec2 = add i32 %rqfar, -2
  %arrayidx4 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 44, i32 %dec2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 45, i32 %dec2
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 96, ptr %arrayidx6, align 4
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 16
  %rqfar.i60 = getelementptr inbounds %struct.gfar, ptr %7, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i60, i32 %dec2) #15, !srcloc !203
  %rqfcr.i61 = getelementptr inbounds %struct.gfar, ptr %7, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i61, i32 96) #15, !srcloc !203
  %rqfpr.i62 = getelementptr inbounds %struct.gfar, ptr %7, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i62, i32 -1) #15, !srcloc !203
  %dec7 = add i32 %rqfar, -3
  %arrayidx9 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 45, i32 %dec7
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 641, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 44, i32 %dec7
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %class, ptr %arrayidx11, align 4
  %10 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1.i, align 16
  %rqfar.i64 = getelementptr inbounds %struct.gfar, ptr %11, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i64, i32 %dec7) #15, !srcloc !203
  %rqfcr.i65 = getelementptr inbounds %struct.gfar, ptr %11, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i65, i32 641) #15, !srcloc !203
  %rqfpr.i66 = getelementptr inbounds %struct.gfar, ptr %11, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i66, i32 %class) #15, !srcloc !203
  %dec12 = add i32 %rqfar, -4
  %arrayidx14 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 45, i32 %dec12
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 128, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr %struct.gfar_private, ptr %priv, i32 0, i32 44, i32 %dec12
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %class, ptr %arrayidx16, align 4
  %14 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs1.i, align 16
  %rqfar.i68 = getelementptr inbounds %struct.gfar, ptr %15, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i68, i32 %dec12) #15, !srcloc !203
  %rqfcr.i69 = getelementptr inbounds %struct.gfar, ptr %15, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i69, i32 128) #15, !srcloc !203
  %rqfpr.i70 = getelementptr inbounds %struct.gfar, ptr %15, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i70, i32 %class) #15, !srcloc !203
  ret i32 %dec12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ndev1 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev1, align 4
  %regs2 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 11, i32 0, i32 3
  %4 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs2, align 16
  %wol_opts = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 42
  %6 = ptrtoint ptr %wol_opts to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wol_opts, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_grps.i = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_grps.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8.not.i = icmp eq i32 %11, 0
  br i1 %cmp8.not.i, label %if.end.disable_napi.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.disable_napi.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %disable_napi.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %napi_rx.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %i.09.i, i32 1
  tail call void @napi_disable(ptr noundef %napi_rx.i) #15
  %napi_tx.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %i.09.i, i32 2
  tail call void @napi_disable(ptr noundef %napi_tx.i) #15
  %inc.i = add nuw i32 %i.09.i, 1
  %12 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_grps.i, align 16
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.disable_napi.exit_crit_edge

for.body.i.disable_napi.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %disable_napi.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

disable_napi.exit:                                ; preds = %for.body.i.disable_napi.exit_crit_edge, %if.end.disable_napi.exit_crit_edge
  tail call void @netif_tx_lock(ptr noundef %3) #15
  tail call void @netif_device_detach(ptr noundef %3) #15
  tail call void @netif_tx_unlock(ptr noundef %3) #15
  tail call fastcc void @gfar_halt(ptr noundef %1)
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %disable_napi.exit
  call void @__sanitizer_cov_trace_pc() #17
  %imask = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask, i32 2048) #15, !srcloc !203
  %maccfg2 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 120
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg2) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %or = or i32 %14, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg2, i32 %or) #15, !srcloc !203
  %maccfg1 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 119
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg1) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %or8 = or i32 %15, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1, i32 %or8) #15, !srcloc !203
  br label %cleanup

if.else:                                          ; preds = %disable_napi.exit
  %and11 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.else
  %16 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs2, align 16
  %rctrl.i.i = getelementptr inbounds %struct.gfar, ptr %17, i32 0, i32 68
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl.i.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and.i.i = and i32 %18, -4289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl.i.i, i32 %and.i.i) #15, !srcloc !203
  br label %for.body.i40

for.body.i40:                                     ; preds = %for.body.i40.for.body.i40_crit_edge, %if.then13
  %i.070.i = phi i32 [ 0, %if.then13 ], [ %inc.i39, %for.body.i40.for.body.i40_crit_edge ]
  %19 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs2, align 16
  %rqfar.i.i = getelementptr inbounds %struct.gfar, ptr %20, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i.i, i32 %i.070.i) #15, !srcloc !203
  %rqfcr.i.i = getelementptr inbounds %struct.gfar, ptr %20, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i.i, i32 288) #15, !srcloc !203
  %rqfpr.i.i = getelementptr inbounds %struct.gfar, ptr %20, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i.i, i32 0) #15, !srcloc !203
  %inc.i39 = add nuw nsw i32 %i.070.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i39, 256
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i40.for.body.i40_crit_edge

for.body.i40.for.body.i40_crit_edge:              ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i40

for.end.i:                                        ; preds = %for.body.i40
  %21 = ptrtoint ptr %wol_opts to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %wol_opts, align 4
  %23 = and i16 %22, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i, label %for.end.i.gfar_filer_config_wol.exit_crit_edge, label %if.then.i

for.end.i.gfar_filer_config_wol.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_filer_config_wol.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev1, align 4
  %rx_queue.i = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 11, i32 0, i32 5
  %26 = ptrtoint ptr %rx_queue.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_queue.i, align 8
  %qindex2.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %qindex2.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %qindex2.i, align 2
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 86
  %30 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr.i, align 64
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv5.i = zext i8 %33 to i32
  %shl.i = shl nuw nsw i32 %conv5.i, 16
  %arrayidx7.i = getelementptr i8, ptr %31, i32 1
  %34 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %35 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 8
  %or.i = or i32 %shl9.i, %shl.i
  %arrayidx11.i = getelementptr i8, ptr %31, i32 2
  %36 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %37 to i32
  %or13.i = or i32 %or.i, %conv12.i
  %38 = and i16 %29, 255
  %conv14.i = zext i16 %38 to i32
  %shl15.i = shl nuw nsw i32 %conv14.i, 10
  %or18.i = or i32 %shl15.i, 131
  %39 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs2, align 16
  %rqfar.i61.i = getelementptr inbounds %struct.gfar, ptr %40, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i61.i, i32 0) #15, !srcloc !203
  %rqfcr.i62.i = getelementptr inbounds %struct.gfar, ptr %40, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i62.i, i32 %or18.i) #15, !srcloc !203
  %rqfpr.i63.i = getelementptr inbounds %struct.gfar, ptr %40, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i63.i, i32 %or13.i) #15, !srcloc !203
  %41 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx21.i = getelementptr i8, ptr %42, i32 3
  %43 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %44 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 16
  %arrayidx25.i = getelementptr i8, ptr %42, i32 4
  %45 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %46 to i32
  %shl27.i = shl nuw nsw i32 %conv26.i, 8
  %or28.i = or i32 %shl27.i, %shl23.i
  %arrayidx30.i = getelementptr i8, ptr %42, i32 5
  %47 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %48 to i32
  %or32.i = or i32 %or28.i, %conv31.i
  %or37.i = or i32 %shl15.i, -2147483644
  %49 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs2, align 16
  %rqfar.i65.i = getelementptr inbounds %struct.gfar, ptr %50, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i65.i, i32 1) #15, !srcloc !203
  %rqfcr.i66.i = getelementptr inbounds %struct.gfar, ptr %50, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i66.i, i32 %or37.i) #15, !srcloc !203
  %rqfpr.i67.i = getelementptr inbounds %struct.gfar, ptr %50, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i67.i, i32 %or32.i) #15, !srcloc !203
  br label %gfar_filer_config_wol.exit

gfar_filer_config_wol.exit:                       ; preds = %if.then.i, %for.end.i.gfar_filer_config_wol.exit_crit_edge
  %51 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs2, align 16
  %rctrl.i69.i = getelementptr inbounds %struct.gfar, ptr %52, i32 0, i32 68
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl.i69.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %or.i.i = or i32 %53, 4288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl.i69.i, i32 %or.i.i) #15, !srcloc !203
  %54 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs2, align 16
  %rqueue.i = getelementptr inbounds %struct.gfar, ptr %55, i32 0, i32 72
  %rqueue2.i = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 33
  %56 = ptrtoint ptr %rqueue2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rqueue2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqueue.i, i32 %57) #15, !srcloc !203
  %dmactrl.i = getelementptr inbounds %struct.gfar, ptr %55, i32 0, i32 10
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmactrl.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %or.i41 = or i32 %58, 195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmactrl.i, i32 %or.i41) #15, !srcloc !203
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmactrl.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and.i = and i32 %59, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmactrl.i, i32 %and.i) #15, !srcloc !203
  %60 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_grps.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp36.not.i = icmp eq i32 %61, 0
  br i1 %cmp36.not.i, label %gfar_filer_config_wol.exit.gfar_start_wol_filer.exit_crit_edge, label %gfar_filer_config_wol.exit.for.body.i45_crit_edge

gfar_filer_config_wol.exit.for.body.i45_crit_edge: ; preds = %gfar_filer_config_wol.exit
  br label %for.body.i45

gfar_filer_config_wol.exit.gfar_start_wol_filer.exit_crit_edge: ; preds = %gfar_filer_config_wol.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_start_wol_filer.exit

for.body.i45:                                     ; preds = %for.body.i45.for.body.i45_crit_edge, %gfar_filer_config_wol.exit.for.body.i45_crit_edge
  %i.037.i = phi i32 [ %inc.i43, %for.body.i45.for.body.i45_crit_edge ], [ 0, %gfar_filer_config_wol.exit.for.body.i45_crit_edge ]
  %regs9.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %i.037.i, i32 3
  %62 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs9.i, align 16
  %rstat.i = getelementptr inbounds %struct.gfar, ptr %63, i32 0, i32 69
  %rstat12.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %i.037.i, i32 7
  %64 = ptrtoint ptr %rstat12.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rstat12.i, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rstat.i, i32 %65) #15, !srcloc !203
  %imask.i = getelementptr inbounds %struct.gfar, ptr %63, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask.i, i32 16) #15, !srcloc !203
  %inc.i43 = add nuw i32 %i.037.i, 1
  %66 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_grps.i, align 16
  %cmp.i44 = icmp ult i32 %inc.i43, %67
  br i1 %cmp.i44, label %for.body.i45.for.body.i45_crit_edge, label %for.body.i45.gfar_start_wol_filer.exit_crit_edge

for.body.i45.gfar_start_wol_filer.exit_crit_edge: ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_start_wol_filer.exit

for.body.i45.for.body.i45_crit_edge:              ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i45

gfar_start_wol_filer.exit:                        ; preds = %for.body.i45.gfar_start_wol_filer.exit_crit_edge, %gfar_filer_config_wol.exit.gfar_start_wol_filer.exit_crit_edge
  %regs.0.lcssa.i = phi ptr [ %55, %gfar_filer_config_wol.exit.gfar_start_wol_filer.exit_crit_edge ], [ %63, %for.body.i45.gfar_start_wol_filer.exit_crit_edge ]
  %maccfg1.i = getelementptr inbounds %struct.gfar, ptr %regs.0.lcssa.i, i32 0, i32 119
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg1.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %or14.i = or i32 %68, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1.i, i32 %or14.i) #15, !srcloc !203
  br label %cleanup

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %phydev = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 145
  %69 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %70) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else14, %gfar_start_wol_filer.exit, %if.then4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ndev1 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev1, align 4
  %regs2 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 11, i32 0, i32 3
  %4 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs2, align 16
  %wol_opts = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 42
  %6 = ptrtoint ptr %wol_opts to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wol_opts, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %maccfg2 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 120
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg2) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and6 = and i32 %10, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg2, i32 %and6) #15, !srcloc !203
  br label %if.end14

if.else:                                          ; preds = %if.end
  %and9 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.else
  tail call fastcc void @gfar_halt(ptr noundef %1)
  %11 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs2, align 16
  %rctrl.i.i = getelementptr inbounds %struct.gfar, ptr %12, i32 0, i32 68
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl.i.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %and.i.i = and i32 %13, -4289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl.i.i, i32 %and.i.i) #15, !srcloc !203
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then11
  %i.013.i = phi i32 [ 0, %if.then11 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 45, i32 %i.013.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 44, i32 %i.013.i
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.i, align 4
  %18 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs2, align 16
  %rqfar.i.i = getelementptr inbounds %struct.gfar, ptr %19, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i.i, i32 %i.013.i) #15, !srcloc !203
  %rqfcr.i.i = getelementptr inbounds %struct.gfar, ptr %19, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i.i, i32 %15) #15, !srcloc !203
  %rqfpr.i.i = getelementptr inbounds %struct.gfar, ptr %19, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i.i, i32 %17) #15, !srcloc !203
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %gfar_filer_restore_table.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

gfar_filer_restore_table.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs2, align 16
  %rctrl.i12.i = getelementptr inbounds %struct.gfar, ptr %21, i32 0, i32 68
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl.i12.i) #15, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  %or.i.i = or i32 %22, 4288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl.i12.i, i32 %or.i.i) #15, !srcloc !203
  br label %if.end14

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %phydev = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 145
  %23 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %24) #15
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %gfar_filer_restore_table.exit, %if.then4
  tail call fastcc void @gfar_start(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %3) #15
  %num_grps.i = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_grps.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp8.not.i = icmp eq i32 %26, 0
  br i1 %cmp8.not.i, label %if.end14.cleanup_crit_edge, label %if.end14.for.body.i31_crit_edge

if.end14.for.body.i31_crit_edge:                  ; preds = %if.end14
  br label %for.body.i31

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i31:                                     ; preds = %for.body.i31.for.body.i31_crit_edge, %if.end14.for.body.i31_crit_edge
  %i.09.i = phi i32 [ %inc.i30, %for.body.i31.for.body.i31_crit_edge ], [ 0, %if.end14.for.body.i31_crit_edge ]
  %napi_rx.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %i.09.i, i32 1
  tail call void @napi_enable(ptr noundef %napi_rx.i) #15
  %napi_tx.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %i.09.i, i32 2
  tail call void @napi_enable(ptr noundef %napi_tx.i) #15
  %inc.i30 = add nuw i32 %i.09.i, 1
  %27 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_grps.i, align 16
  %cmp.i = icmp ult i32 %inc.i30, %28
  br i1 %cmp.i, label %for.body.i31.for.body.i31_crit_edge, label %for.body.i31.cleanup_crit_edge

for.body.i31.cleanup_crit_edge:                   ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i31.for.body.i31_crit_edge:              ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i31

cleanup:                                          ; preds = %for.body.i31.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_restore(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ndev1 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_device_attach(ptr noundef %3) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  %regs1.i = getelementptr i8, ptr %3, i32 2928
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 16
  %num_tx_queues.i = getelementptr i8, ptr %3, i32 3720
  %8 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp64.not.i = icmp eq i32 %9, 0
  br i1 %cmp64.not.i, label %if.end.for.end18.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.end18.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end18.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.065.i = phi i32 [ %inc17.i, %for.end.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 8, i32 %i.065.i
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.i, align 4
  %tx_ring_size.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tx_ring_size.i, align 2
  %conv.i = zext i16 %13 to i32
  %num_txbdfree.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %num_txbdfree.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %num_txbdfree.i, align 4
  %tx_bd_base.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %tx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_bd_base.i, align 4
  %dirty_tx.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %11, i32 0, i32 10
  %17 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %dirty_tx.i, align 4
  %cur_tx.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %cur_tx.i, align 16
  %skb_curtx.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %skb_curtx.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %skb_curtx.i, align 8
  %skb_dirtytx.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %11, i32 0, i32 11
  %20 = ptrtoint ptr %skb_dirtytx.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %skb_dirtytx.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp961.not.i = icmp eq i16 %13, 0
  br i1 %cmp961.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body11.i_crit_edge

for.body.i.for.body11.i_crit_edge:                ; preds = %for.body.i
  br label %for.body11.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.body.i.for.body11.i_crit_edge
  %j.063.i = phi i32 [ %inc.i, %for.body11.i.for.body11.i_crit_edge ], [ 0, %for.body.i.for.body11.i_crit_edge ]
  %txbdp.062.i = phi ptr [ %incdec.ptr.i, %for.body11.i.for.body11.i_crit_edge ], [ %16, %for.body.i.for.body11.i_crit_edge ]
  %21 = ptrtoint ptr %txbdp.062.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %txbdp.062.i, align 4
  %bufPtr.i = getelementptr inbounds %struct.txbd8, ptr %txbdp.062.i, i32 0, i32 1
  %22 = ptrtoint ptr %bufPtr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %bufPtr.i, align 4
  %incdec.ptr.i = getelementptr %struct.txbd8, ptr %txbdp.062.i, i32 1
  %inc.i = add nuw nsw i32 %j.063.i, 1
  %23 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tx_ring_size.i, align 2
  %conv8.i = zext i16 %24 to i32
  %cmp9.i = icmp ult i32 %inc.i, %conv8.i
  br i1 %cmp9.i, label %for.body11.i.for.body11.i_crit_edge, label %for.body11.i.for.end.i_crit_edge

for.body11.i.for.end.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11.i

for.end.i:                                        ; preds = %for.body11.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %txbdp.0.lcssa.i = phi ptr [ %16, %for.body.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body11.i.for.end.i_crit_edge ]
  %incdec.ptr12.i = getelementptr %struct.txbd8, ptr %txbdp.0.lcssa.i, i32 -1
  %25 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %incdec.ptr12.i, align 4
  %27 = or i16 %26, 8192
  store i16 %27, ptr %incdec.ptr12.i, align 4
  %inc17.i = add nuw i32 %i.065.i, 1
  %28 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_tx_queues.i, align 8
  %cmp.i = icmp ult i32 %inc17.i, %29
  br i1 %cmp.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.for.end18.i_crit_edge

for.end.i.for.end18.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end18.i

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end18.i:                                      ; preds = %for.end.i.for.end18.i_crit_edge, %if.end.for.end18.i_crit_edge
  %num_rx_queues.i = getelementptr i8, ptr %3, i32 3724
  %30 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp2066.not.i = icmp eq i32 %31, 0
  br i1 %cmp2066.not.i, label %for.end18.i.gfar_init_bds.exit_crit_edge, label %gfar_rxbd_unused.exit.preheader.i

for.end18.i.gfar_init_bds.exit_crit_edge:         ; preds = %for.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_init_bds.exit

gfar_rxbd_unused.exit.preheader.i:                ; preds = %for.end18.i
  %rfbptr0.i = getelementptr inbounds %struct.gfar, ptr %7, i32 0, i32 196
  br label %gfar_rxbd_unused.exit.i

gfar_rxbd_unused.exit.i:                          ; preds = %gfar_rxbd_unused.exit.i.gfar_rxbd_unused.exit.i_crit_edge, %gfar_rxbd_unused.exit.preheader.i
  %i.168.i = phi i32 [ %inc28.i, %gfar_rxbd_unused.exit.i.gfar_rxbd_unused.exit.i_crit_edge ], [ 0, %gfar_rxbd_unused.exit.preheader.i ]
  %rfbptr.067.i = phi ptr [ %add.ptr.i, %gfar_rxbd_unused.exit.i.gfar_rxbd_unused.exit.i_crit_edge ], [ %rfbptr0.i, %gfar_rxbd_unused.exit.preheader.i ]
  %arrayidx24.i = getelementptr %struct.gfar_private, ptr %add.ptr.i.i, i32 0, i32 9, i32 %i.168.i
  %32 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx24.i, align 4
  %next_to_clean.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %next_to_clean.i, align 8
  %next_to_use.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %33, i32 0, i32 8
  %35 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %next_to_use.i, align 2
  %next_to_alloc.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %33, i32 0, i32 9
  %36 = ptrtoint ptr %next_to_alloc.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %next_to_alloc.i, align 4
  %rx_ring_size.i.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %33, i32 0, i32 4
  %37 = ptrtoint ptr %rx_ring_size.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rx_ring_size.i.i, align 16
  %conv8.i.i = zext i16 %38 to i32
  %sub14.i.i = add nsw i32 %conv8.i.i, -1
  tail call fastcc void @gfar_alloc_rx_buffs(ptr noundef %33, i32 noundef %sub14.i.i) #15
  %rfbptr26.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %33, i32 0, i32 12
  %39 = ptrtoint ptr %rfbptr26.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rfbptr.067.i, ptr %rfbptr26.i, align 64
  %add.ptr.i = getelementptr i32, ptr %rfbptr.067.i, i32 2
  %inc28.i = add nuw i32 %i.168.i, 1
  %40 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_rx_queues.i, align 4
  %cmp20.i = icmp ult i32 %inc28.i, %41
  br i1 %cmp20.i, label %gfar_rxbd_unused.exit.i.gfar_rxbd_unused.exit.i_crit_edge, label %gfar_rxbd_unused.exit.i.gfar_init_bds.exit_crit_edge

gfar_rxbd_unused.exit.i.gfar_init_bds.exit_crit_edge: ; preds = %gfar_rxbd_unused.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_init_bds.exit

gfar_rxbd_unused.exit.i.gfar_rxbd_unused.exit.i_crit_edge: ; preds = %gfar_rxbd_unused.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_rxbd_unused.exit.i

gfar_init_bds.exit:                               ; preds = %gfar_rxbd_unused.exit.i.gfar_init_bds.exit_crit_edge, %for.end18.i.gfar_init_bds.exit_crit_edge
  tail call void @gfar_mac_reset(ptr noundef %1)
  %regs1.i19 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 11, i32 0, i32 3
  %42 = ptrtoint ptr %regs1.i19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs1.i19, align 16
  %num_tx_queues.i20 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 14
  %44 = ptrtoint ptr %num_tx_queues.i20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_tx_queues.i20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp24.not.i = icmp eq i32 %45, 0
  br i1 %cmp24.not.i, label %gfar_init_bds.exit.for.end.i26_crit_edge, label %for.body.preheader.i

gfar_init_bds.exit.for.end.i26_crit_edge:         ; preds = %gfar_init_bds.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i26

for.body.preheader.i:                             ; preds = %gfar_init_bds.exit
  %tbase0.i = getelementptr inbounds %struct.gfar, ptr %43, i32 0, i32 52
  br label %for.body.i24

for.body.i24:                                     ; preds = %for.body.i24.for.body.i24_crit_edge, %for.body.preheader.i
  %i.026.i = phi i32 [ %inc.i22, %for.body.i24.for.body.i24_crit_edge ], [ 0, %for.body.preheader.i ]
  %baddr.025.i = phi ptr [ %add.ptr.i21, %for.body.i24.for.body.i24_crit_edge ], [ %tbase0.i, %for.body.preheader.i ]
  %arrayidx2.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 8, i32 %i.026.i
  %46 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx2.i, align 4
  %tx_bd_dma_base.i = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %tx_bd_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_bd_dma_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %baddr.025.i, i32 %49) #15, !srcloc !203
  %add.ptr.i21 = getelementptr i32, ptr %baddr.025.i, i32 2
  %inc.i22 = add nuw i32 %i.026.i, 1
  %50 = ptrtoint ptr %num_tx_queues.i20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_tx_queues.i20, align 8
  %cmp.i23 = icmp ult i32 %inc.i22, %51
  br i1 %cmp.i23, label %for.body.i24.for.body.i24_crit_edge, label %for.body.i24.for.end.i26_crit_edge

for.body.i24.for.end.i26_crit_edge:               ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i26

for.body.i24.for.body.i24_crit_edge:              ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i24

for.end.i26:                                      ; preds = %for.body.i24.for.end.i26_crit_edge, %gfar_init_bds.exit.for.end.i26_crit_edge
  %num_rx_queues.i25 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 15
  %52 = ptrtoint ptr %num_rx_queues.i25 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_rx_queues.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp427.not.i = icmp eq i32 %53, 0
  br i1 %cmp427.not.i, label %for.end.i26.gfar_init_tx_rx_base.exit_crit_edge, label %for.body5.preheader.i

for.end.i26.gfar_init_tx_rx_base.exit_crit_edge:  ; preds = %for.end.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_init_tx_rx_base.exit

for.body5.preheader.i:                            ; preds = %for.end.i26
  %rbase0.i = getelementptr inbounds %struct.gfar, ptr %43, i32 0, i32 103
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.body5.preheader.i
  %i.129.i = phi i32 [ %inc9.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body5.preheader.i ]
  %baddr.128.i = phi ptr [ %add.ptr7.i, %for.body5.i.for.body5.i_crit_edge ], [ %rbase0.i, %for.body5.preheader.i ]
  %arrayidx6.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 9, i32 %i.129.i
  %54 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx6.i, align 4
  %rx_bd_dma_base.i = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %55, i32 0, i32 15
  %56 = ptrtoint ptr %rx_bd_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_bd_dma_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %baddr.128.i, i32 %57) #15, !srcloc !203
  %add.ptr7.i = getelementptr i32, ptr %baddr.128.i, i32 2
  %inc9.i = add nuw i32 %i.129.i, 1
  %58 = ptrtoint ptr %num_rx_queues.i25 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_rx_queues.i25, align 4
  %cmp4.i = icmp ult i32 %inc9.i, %59
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.gfar_init_tx_rx_base.exit_crit_edge

for.body5.i.gfar_init_tx_rx_base.exit_crit_edge:  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_init_tx_rx_base.exit

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5.i

gfar_init_tx_rx_base.exit:                        ; preds = %for.body5.i.gfar_init_tx_rx_base.exit_crit_edge, %for.end.i26.gfar_init_tx_rx_base.exit_crit_edge
  tail call fastcc void @gfar_start(ptr noundef %1)
  %oldlink = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 26
  %60 = ptrtoint ptr %oldlink to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %oldlink, align 16
  %oldspeed = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 24
  %61 = ptrtoint ptr %oldspeed to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %oldspeed, align 8
  %oldduplex = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 25
  %62 = ptrtoint ptr %oldduplex to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %oldduplex, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 145
  %63 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %64, null
  br i1 %tobool.not, label %gfar_init_tx_rx_base.exit.if.end5_crit_edge, label %if.then3

gfar_init_tx_rx_base.exit.if.end5_crit_edge:      ; preds = %gfar_init_tx_rx_base.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then3:                                         ; preds = %gfar_init_tx_rx_base.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @phy_start(ptr noundef nonnull %64) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %gfar_init_tx_rx_base.exit.if.end5_crit_edge
  tail call void @netif_device_attach(ptr noundef %3) #15
  %num_grps.i = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 16
  %65 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_grps.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp8.not.i = icmp eq i32 %66, 0
  br i1 %cmp8.not.i, label %if.end5.cleanup_crit_edge, label %if.end5.for.body.i29_crit_edge

if.end5.for.body.i29_crit_edge:                   ; preds = %if.end5
  br label %for.body.i29

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i29:                                     ; preds = %for.body.i29.for.body.i29_crit_edge, %if.end5.for.body.i29_crit_edge
  %i.09.i = phi i32 [ %inc.i27, %for.body.i29.for.body.i29_crit_edge ], [ 0, %if.end5.for.body.i29_crit_edge ]
  %napi_rx.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %i.09.i, i32 1
  tail call void @napi_enable(ptr noundef %napi_rx.i) #15
  %napi_tx.i = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %i.09.i, i32 2
  tail call void @napi_enable(ptr noundef %napi_tx.i) #15
  %inc.i27 = add nuw i32 %i.09.i, 1
  %67 = ptrtoint ptr %num_grps.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_grps.i, align 16
  %cmp.i28 = icmp ult i32 %inc.i27, %68
  br i1 %cmp.i28, label %for.body.i29.for.body.i29_crit_edge, label %for.body.i29.cleanup_crit_edge

for.body.i29.cleanup_crit_edge:                   ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i29.for.body.i29_crit_edge:              ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i29

cleanup:                                          ; preds = %for.body.i29.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !26, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !81, !82, !83, !85, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !114, !116, !118, !119, !121, !122, !123, !124, !126, !128, !129, !130, !131, !133, !135, !136, !137, !138, !139, !141, !142, !143, !145, !147, !148, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !175, !177, !178, !180, !182, !184, !186, !188}
!llvm.named.register.sp = !{!190}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @__UNIQUE_ID_author484, !1, !"__UNIQUE_ID_author484", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 105, i32 1}
!2 = !{ptr @__UNIQUE_ID_description485, !3, !"__UNIQUE_ID_description485", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 106, i32 1}
!4 = !{ptr @__UNIQUE_ID_file486, !5, !"__UNIQUE_ID_file486", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 107, i32 1}
!6 = !{ptr @__UNIQUE_ID_license487, !5, !"__UNIQUE_ID_license487", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gianfar_driver__496_3647_gfar_driver_init6, !8, !"__initcall__kmod_gianfar_driver__496_3647_gfar_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3647, i32 1}
!9 = !{ptr @__exitcall_gfar_driver_exit, !8, !"__exitcall_gfar_driver_exit", i1 false, i1 false}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 1239, i32 29}
!14 = distinct !{null, !15, !"zero_arr", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 2946, i32 18}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3639, i32 11}
!18 = !{ptr @gfar_driver, !19, !"gfar_driver", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3637, i32 31}
!20 = !{ptr @gfar_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3214, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @gfar_probe.__key.4, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3297, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3308, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @gfar_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @gfar_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3325, i32 37}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3326, i32 16}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3326, i32 31}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3328, i32 31}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3330, i32 31}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3339, i32 19}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3344, i32 19}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3346, i32 20}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3349, i32 20}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 647, i32 34}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 660, i32 4}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @gfar_of_init._entry, !53, !"_entry", i1 false, i1 false}
!58 = !{ptr @gfar_of_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 662, i32 4}
!61 = !{ptr @gfar_of_init._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @gfar_of_init._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 671, i32 3}
!65 = !{ptr @gfar_of_init._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @gfar_of_init._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @gfar_of_init._entry.29, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 673, i32 3}
!69 = !{ptr @gfar_of_init._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 678, i32 3}
!72 = !{ptr @gfar_of_init._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @gfar_of_init._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @gfar_of_init._entry.34, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 680, i32 3}
!76 = !{ptr @gfar_of_init._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 706, i32 36}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 708, i32 3}
!81 = !{ptr @gfar_of_init._entry.37, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @gfar_of_init._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @gfar_of_init.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 715, i32 2}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 723, i32 32}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 738, i32 32}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 743, i32 33}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 748, i32 33}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 759, i32 3}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @gfar_of_init._entry.45, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @gfar_of_init._entry_ptr.48, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 762, i32 34}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 768, i32 34}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 790, i32 27}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 793, i32 26}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 796, i32 40}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 810, i32 40}
!111 = !{ptr @gfar_alloc_tx_queues.__key, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 423, i32 3}
!113 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 522, i32 33}
!116 = !{ptr @gfar_parse_group.__key, !117, !"__key", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 532, i32 2}
!118 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 943, i32 3}
!121 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @gfar_detect_errata._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @gfar_detect_errata._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @gfar_netdev_ops, !125, !"gfar_netdev_ops", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3175, i32 36}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 1669, i32 3}
!128 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @init_phy._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @init_phy._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 1532, i32 5}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 1608, i32 3}
!135 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @gfar_configure_serdes._entry, !134, !"_entry", i1 false, i1 false}
!138 = !{ptr @gfar_configure_serdes._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 1615, i32 3}
!141 = !{ptr @gfar_configure_serdes._entry.66, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @gfar_configure_serdes._entry_ptr.68, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 2825, i32 4}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 2683, i32 3}
!147 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @gfar_error.__UNIQUE_ID_ddebug488, !146, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 2696, i32 4}
!152 = !{ptr @gfar_error.__UNIQUE_ID_ddebug489, !151, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 2703, i32 3}
!155 = !{ptr @gfar_error.__UNIQUE_ID_ddebug490, !154, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 2721, i32 3}
!158 = !{ptr @gfar_error.__UNIQUE_ID_ddebug491, !157, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 2728, i32 3}
!161 = !{ptr @gfar_error.__UNIQUE_ID_ddebug492, !160, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 2732, i32 3}
!164 = !{ptr @gfar_error.__UNIQUE_ID_ddebug493, !163, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 2735, i32 3}
!167 = !{ptr @gfar_error.__UNIQUE_ID_ddebug494, !166, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 2739, i32 3}
!170 = !{ptr @gfar_error.__UNIQUE_ID_ddebug495, !169, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!171 = distinct !{null, !172, !"__already_done", i1 false, i1 false}
!172 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!173 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!175 = distinct !{null, !176, !"__already_done", i1 false, i1 false}
!176 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!177 = distinct !{null, !176, !"<string literal>", i1 false, i1 false}
!178 = distinct !{null, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 2361, i32 3}
!184 = distinct !{null, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!186 = !{ptr @gfar_match, !187, !"gfar_match", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3623, i32 34}
!188 = !{ptr @gfar_pm_ops, !189, !"gfar_pm_ops", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/freescale/gianfar.c", i32 3607, i32 32}
!190 = !{!"sp"}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{i64 2157893331}
!201 = !{i64 2157893612}
!202 = !{i64 2157860757}
!203 = !{i64 4740236}
!204 = !{i64 4740654}
!205 = !{i64 2157860360}
!206 = !{i64 2157890949}
!207 = !{i64 2157890791}
!208 = !{!"auto-init"}
!209 = !{i64 2157895038}
!210 = !{i64 2157895325}
!211 = !{!"branch_weights", i32 1, i32 2000}
!212 = !{!"branch_weights", i32 2000, i32 1}
!213 = !{i64 2157862844}
!214 = !{i64 2157915470}
!215 = !{i64 2155851019}
!216 = !{i64 2148312043, i64 2148312075, i64 2148312104, i64 2148312138, i64 2148312169, i64 2148312192}
!217 = !{i64 2148401124}
!218 = !{i64 2157907253}
!219 = !{i64 2157907095}
!220 = !{i64 2148400011}
!221 = !{i64 2148310430, i64 2148310462, i64 2148310491, i64 2148310525, i64 2148310556, i64 2148310579}
!222 = !{i64 2155151448, i64 2155151936, i64 2155151485, i64 2155151541, i64 2155151575, i64 2155151599, i64 2155151640, i64 2155151661, i64 2155151689, i64 2155151723}
!223 = !{i64 2152830753, i64 2152831253, i64 2152830790, i64 2152830846, i64 2152830880, i64 2152830904, i64 2152830945, i64 2152830966, i64 2152830994, i64 2152831028}
!224 = !{i64 2152832097}
!225 = !{i64 2155849948}
!226 = !{i64 2153739862, i64 2153739887}
!227 = !{i64 6235417}
!228 = !{i64 6235614}
!229 = !{i64 2153720847}
!230 = !{i64 2153740543, i64 2153740568}
!231 = !{i64 2157906964}
!232 = !{i64 2157906806}
!233 = !{i64 2148785000, i64 2148785005, i64 2148785018, i64 2148785062, i64 2148785096, i64 2148785117}
!234 = !{i64 2148303185, i64 2148303211, i64 2148303240, i64 2148303274, i64 2148303305, i64 2148303328}
