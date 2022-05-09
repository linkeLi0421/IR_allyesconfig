; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/renesas/ravb_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/renesas/ravb_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdiobb_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ravb_hw_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ravb_desc = type { i16, i8, i8, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ravb_private = type { ptr, ptr, ptr, ptr, ptr, %struct.mdiobb_ctrl, [2 x i32], [2 x i32], i32, i32, ptr, [2 x i32], [2 x i32], ptr, [2 x ptr], [2 x ptr], [2 x ptr], ptr, [2 x ptr], [2 x ptr], i32, i32, [2 x %struct.net_device_stats], i32, i32, %struct.list_head, i32, %struct.ravb_ptp, %struct.spinlock, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x %struct.napi_struct], %struct.work_struct, ptr, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i8, i32, i32, ptr, ptr }
%struct.mdiobb_ctrl = type { ptr, i32, i8, i8 }
%struct.ravb_ptp = type { ptr, %struct.ptp_clock_info, i32, i32, [1 x i32], [1 x %struct.ravb_ptp_perout] }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ravb_ptp_perout = type { i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ravb_rx_desc = type { i16, i8, i8, i32 }
%struct.ravb_tx_desc = type { i16, i8, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ravb_tstamp_skb = type { %struct.list_head, ptr, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.page = type { i32, %union.anon.26, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.19, %union.anon.20 }
%union.anon.19 = type { [16 x i8] }
%union.anon.20 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ravb_ex_rx_desc = type { i16, i8, i8, i32, i32, i32, i16, i16 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__initcall__kmod_ravb__356_2969_ravb_driver_init6 = internal global ptr @ravb_driver_init, section ".initcall6.init", align 4
@ravb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ravb_probe, ptr @ravb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ravb_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ravb_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ravb_driver_exit = internal global ptr @ravb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author357 = internal constant [43 x i8] c"ravb.author=Mitsuhiro Kimura, Masaru Nagai\00", section ".modinfo", align 1
@__UNIQUE_ID_description358 = internal constant [45 x i8] c"ravb.description=Renesas Ethernet AVB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file359 = internal constant [44 x i8] c"ravb.file=drivers/net/ethernet/renesas/ravb\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [20 x i8] c"ravb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ravb\00", [27 x i8] zeroinitializer }, align 32
@ravb_match_table = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,etheravb-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ravb_gen2_hw_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,etheravb-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ravb_gen2_hw_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,etheravb-rcar-gen2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ravb_gen2_hw_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,etheravb-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ravb_gen3_hw_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,etheravb-rcar-gen3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ravb_gen3_hw_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rzg2l-gbeth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gbeth_hw_info }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@ravb_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ravb_suspend, ptr @ravb_resume, ptr @ravb_suspend, ptr @ravb_resume, ptr @ravb_suspend, ptr @ravb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ravb_runtime_nop, ptr @ravb_runtime_nop, ptr null }, [36 x i8] zeroinitializer }, align 32
@ravb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"this driver is required to be instantiated from device tree\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ravb_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/renesas/ravb_main.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ravb_probe._entry_ptr = internal global ptr @ravb_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get cpg reset\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ch22\00", [27 x i8] zeroinitializer }, align 32
@ravb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@ravb_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&priv->work)\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"renesas,no-ether-link\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"renesas,ether-link-active-low\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ch24\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@ravb_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ravb_open, ptr @ravb_close, ptr @ravb_start_xmit, ptr null, ptr @ravb_select_queue, ptr null, ptr @ravb_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @ravb_do_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @ravb_change_mtu, ptr null, ptr @ravb_tx_timeout, ptr null, ptr null, ptr null, ptr @ravb_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ravb_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ravb_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @ravb_get_wol, ptr @ravb_set_wol, ptr @ravb_get_msglevel, ptr @ravb_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ravb_get_ringparam, ptr @ravb_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @ravb_get_strings, ptr null, ptr @ravb_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @ravb_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ravb_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ravb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 2724, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Cannot allocate desc base address table (size %d bytes)\0A\00", [39 x i8] zeroinitializer }, align 32
@ravb_probe._entry_ptr.17 = internal global ptr @ravb_probe._entry.15, section ".printk_index", align 4
@ravb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 2746, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"no valid MAC address supplied, using a random one\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ravb_probe._entry_ptr.21 = internal global ptr @ravb_probe._entry.18, section ".printk_index", align 4
@ravb_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 2753, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialize MDIO\0A\00", [37 x i8] zeroinitializer }, align 32
@ravb_probe._entry_ptr.24 = internal global ptr @ravb_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Base address at %#x, %pM, IRQ %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: ravb_dmac_init() failed, error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.ravb_tx_timeout_work = private unnamed_addr constant [21 x i8] c"ravb_tx_timeout_work\00", align 1
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to switch device to config mode\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ch0\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ch1\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ch18\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ch19\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot request IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch22:multi\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ch24:emac\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ch0:rx_be\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch18:tx_be\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ch1:rx_nc\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch19:tx_nc\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ignoring interrupt, rx status 0x%08x, rx mask 0x%08x,\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"                    tx status 0x%08x, tx mask 0x%08x.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%s\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot request IRQ %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to connect PHY\0A\00", [41 x i8] zeroinitializer }, align 32
@r8a7795es10 = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.47, ptr null, ptr @.str.48, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to limit PHY to 100Mbit/s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"limited PHY to 100Mbit/s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.0\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7795\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"device will be stopped after h/w processes are done.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"still transmitting with the full ring!\0A\00", [56 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"transmit timed out, status %08x, resetting...\0A\00", [49 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.57 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"cannot set ringparam! Any AVB processes are still running?\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.ravb_set_ringparam = private unnamed_addr constant [19 x i8] c"ravb_set_ringparam\00", align 1
@ravb_set_gti._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 2494, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"gti.tiv increment 0x%llx is outside the range 0x%x - 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ravb_set_gti\00", [19 x i8] zeroinitializer }, align 32
@ravb_set_gti._entry_ptr = internal global ptr @ravb_set_gti._entry, section ".printk_index", align 4
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx-internal-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx-internal-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@bb_ops = internal constant { %struct.mdiobb_ops, [44 x i8] } { %struct.mdiobb_ops { ptr null, ptr @ravb_set_mdc, ptr @ravb_set_mdio_dir, ptr @ravb_set_mdio_data, ptr @ravb_get_mdio_data }, [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ravb_mii\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%x\00", [26 x i8] zeroinitializer }, align 32
@ravb_gstrings_stats = internal constant { [30 x [32 x i8]], [224 x i8] } { [30 x [32 x i8]] [[32 x i8] c"rx_queue_0_current\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queue_0_current\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_dirty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queue_0_dirty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queue_0_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queue_0_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_mcast_packets\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_crc_errors\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_frame_errors\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_length_errors\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_missed_errors\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_over_errors\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_1_current\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queue_1_current\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_1_dirty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queue_1_dirty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_1_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queue_1_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_1_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queue_1_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_1_mcast_packets\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_1_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_1_crc_errors\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_1_frame_errors\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_1_length_errors\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_1_missed_errors\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_1_over_errors\00\00\00\00\00\00\00\00\00\00"], [224 x i8] zeroinitializer }, align 32
@ravb_gen2_hw_info = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i8, i8 } { ptr @ravb_rx_ring_free_rcar, ptr @ravb_rx_ring_format_rcar, ptr @ravb_alloc_rx_desc_rcar, ptr @ravb_rx_rcar, ptr @ravb_set_rate_rcar, ptr @ravb_set_features_rcar, ptr @ravb_dmac_init_rcar, ptr @ravb_emac_init_rcar, ptr @ravb_gstrings_stats, i32 960, i64 1099511627776, i64 1099511627776, i32 30, i32 2173, i32 15, i32 2048, i8 -123, i8 -128 }, [48 x i8] zeroinitializer }, align 32
@ravb_gen3_hw_info = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i8, i8 } { ptr @ravb_rx_ring_free_rcar, ptr @ravb_rx_ring_format_rcar, ptr @ravb_alloc_rx_desc_rcar, ptr @ravb_rx_rcar, ptr @ravb_set_rate_rcar, ptr @ravb_set_features_rcar, ptr @ravb_dmac_init_rcar, ptr @ravb_emac_init_rcar, ptr @ravb_gstrings_stats, i32 960, i64 1099511627776, i64 1099511627776, i32 30, i32 2173, i32 15, i32 2048, i8 107, i8 -128 }, [48 x i8] zeroinitializer }, align 32
@ravb_gstrings_stats_gbeth = internal constant { [15 x [32 x i8]], [96 x i8] } { [15 x [32 x i8]] [[32 x i8] c"rx_queue_0_current\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queue_0_current\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_dirty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queue_0_dirty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queue_0_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queue_0_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_mcast_packets\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_crc_errors\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_frame_errors\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_length_errors\00\00\00\00\00\00\00\00", [32 x i8] c"rx_queue_0_csum_offload_errors\00\00", [32 x i8] c"rx_queue_0_over_errors\00\00\00\00\00\00\00\00\00\00"], [96 x i8] zeroinitializer }, align 32
@gbeth_hw_info = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i8, i8 } { ptr @ravb_rx_ring_free_gbeth, ptr @ravb_rx_ring_format_gbeth, ptr @ravb_alloc_rx_desc_gbeth, ptr @ravb_rx_gbeth, ptr @ravb_set_rate_gbeth, ptr @ravb_set_features_gbeth, ptr @ravb_dmac_init_gbeth, ptr @ravb_emac_init_gbeth, ptr @ravb_gstrings_stats_gbeth, i32 480, i64 0, i64 0, i32 15, i32 8192, i32 1, i32 8192, i8 -80, i8 64 }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"ravb_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2959, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2963, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"ravb_match_table\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2468, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"ravb_dev_pm_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2954, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2579, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2587, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2604, i32 39 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2636, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2637, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2643, i32 48 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2645, i32 29 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2648, i32 39 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2678, i32 51 }
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"ravb_netdev_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2339, i32 36 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"ravb_ethtool_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1728, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2722, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2745, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2753, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2769, i32 20 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1907, i32 20 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 80, i32 20 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 44, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 45, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 49, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 50, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1779, i32 21 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1784, i32 16 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1788, i32 16 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1792, i32 22 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1796, i32 22 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1800, i32 22 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1804, i32 22 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1137, i32 9 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1140, i32 9 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1752, i32 41 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1757, i32 20 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1408, i32 28 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1426, i32 20 }
@___asan_gen_.223 = private unnamed_addr constant [12 x i8] c"r8a7795es10\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1387, i32 42 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1437, i32 21 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1441, i32 21 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1388, i32 37 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1388, i32 14 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2150, i32 7 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1939, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 326, i32 6 }
@___asan_gen_.251 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 174, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1858, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1645, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2493, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2527, i32 32 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2532, i32 32 }
@___asan_gen_.274 = private unnamed_addr constant [7 x i8] c"bb_ops\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 186, i32 32 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2370, i32 24 }
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2372, i32 47 }
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c"ravb_gstrings_stats\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1515, i32 19 }
@___asan_gen_.286 = private unnamed_addr constant [18 x i8] c"ravb_gen2_hw_info\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2424, i32 34 }
@___asan_gen_.289 = private unnamed_addr constant [18 x i8] c"ravb_gen3_hw_info\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2399, i32 34 }
@___asan_gen_.292 = private unnamed_addr constant [26 x i8] c"ravb_gstrings_stats_gbeth\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1497, i32 19 }
@___asan_gen_.295 = private unnamed_addr constant [14 x i8] c"gbeth_hw_info\00", align 1
@___asan_gen_.296 = private constant [44 x i8] c"../drivers/net/ethernet/renesas/ravb_main.c\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2447, i32 34 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_description358, ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_license360, ptr @__exitcall_ravb_driver_exit, ptr @__initcall__kmod_ravb__356_2969_ravb_driver_init6, ptr @ravb_driver_exit, ptr @ravb_probe._entry, ptr @ravb_probe._entry.15, ptr @ravb_probe._entry.18, ptr @ravb_probe._entry.22, ptr @ravb_probe._entry_ptr, ptr @ravb_probe._entry_ptr.17, ptr @ravb_probe._entry_ptr.21, ptr @ravb_probe._entry_ptr.24, ptr @ravb_set_gti._entry, ptr @ravb_set_gti._entry_ptr, ptr @ravb_driver, ptr @.str, ptr @ravb_match_table, ptr @ravb_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ravb_probe.__key, ptr @.str.8, ptr @ravb_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ravb_netdev_ops, ptr @ravb_ethtool_ops, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @r8a7795es10, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @bb_ops, ptr @.str.62, ptr @.str.63, ptr @ravb_gstrings_stats, ptr @ravb_gen2_hw_info, ptr @ravb_gen3_hw_info, ptr @ravb_gstrings_stats_gbeth, ptr @gbeth_hw_info], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_match_table to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a7795es10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_set_gti._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bb_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_gstrings_stats to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_gen2_hw_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_gen3_hw_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_gstrings_stats_gbeth to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbeth_hw_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ravb_modify(ptr nocapture noundef readonly %ndev, i32 noundef %reg, i32 noundef %clear, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #19, !srcloc !173
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %neg = xor i32 %clear, -1
  %and = and i32 %3, %neg
  %or = or i32 %and, %set
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %6) #19, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ravb_wait(ptr nocapture noundef readonly %ndev, i32 noundef %reg, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #19, !srcloc !173
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %and = and i32 %3, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %value)
  %cmp1 = icmp eq i32 %and, %value
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #19
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ravb_driver, ptr noundef null) #19
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ravb_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @platform_driver_unregister(ptr noundef nonnull @ravb_driver) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #19
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !177
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #19
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %3 = ptrtoint ptr %call.i to i32
  %call7 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %3, ptr noundef nonnull @.str.6) #19
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1096, i32 noundef 2, i32 noundef 2) #19
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call14 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #19
  %net_features = getelementptr inbounds %struct.ravb_hw_info, ptr %call14, i32 0, i32 11
  %4 = ptrtoint ptr %net_features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %net_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 23
  %6 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %features, align 16
  %net_hw_features = getelementptr inbounds %struct.ravb_hw_info, ptr %call14, i32 0, i32 10
  %7 = ptrtoint ptr %net_hw_features to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %net_hw_features, align 8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 24
  %9 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %hw_features, align 8
  %call15 = tail call i32 @reset_control_deassert(ptr noundef %call.i) #19
  tail call void @pm_runtime_enable(ptr noundef %dev) #19
  %call.i422 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #19
  %multi_irqs = getelementptr inbounds %struct.ravb_hw_info, ptr %call14, i32 0, i32 16
  %10 = ptrtoint ptr %multi_irqs to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %multi_irqs, align 8
  %11 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool19.not = icmp eq i16 %11, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  %call21 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.7) #19
  br label %if.end23

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  %call22 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #19
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %irq.0 = phi i32 [ %call21, %if.then20 ], [ %call22, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq.0)
  %cmp = icmp slt i32 %irq.0, 0
  br i1 %cmp, label %if.end23.out_release_crit_edge, label %if.end25

if.end23.out_release_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_release

if.end25:                                         ; preds = %if.end23
  %irq26 = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 64
  %12 = ptrtoint ptr %irq26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %irq.0, ptr %irq26, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 133, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call9, i32 2304
  %info30 = getelementptr i8, ptr %call9, i32 3392
  %14 = ptrtoint ptr %info30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call14, ptr %info30, align 8
  %rstc31 = getelementptr i8, ptr %call9, i32 3396
  %15 = ptrtoint ptr %rstc31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %rstc31, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9, ptr %add.ptr.i, align 8
  %pdev33 = getelementptr i8, ptr %call9, i32 2308
  %17 = ptrtoint ptr %pdev33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pdev, ptr %pdev33, align 4
  %num_tx_ring = getelementptr i8, ptr %call9, i32 2344
  %18 = ptrtoint ptr %num_tx_ring to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 64, ptr %num_tx_ring, align 8
  %num_rx_ring = getelementptr i8, ptr %call9, i32 2336
  %19 = ptrtoint ptr %num_rx_ring to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1024, ptr %num_rx_ring, align 8
  %20 = ptrtoint ptr %multi_irqs to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load35 = load i16, ptr %multi_irqs, align 8
  %21 = and i16 %bf.load35, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool39.not = icmp eq i16 %21, 0
  br i1 %tobool39.not, label %if.end25.if.end45_crit_edge, label %if.then40

if.end25.if.end45_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end45

if.then40:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx42 = getelementptr i8, ptr %call9, i32 2348
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 64, ptr %arrayidx42, align 4
  %arrayidx44 = getelementptr i8, ptr %call9, i32 2340
  %23 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 64, ptr %arrayidx44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.end25.if.end45_crit_edge
  %call46 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #19
  %addr = getelementptr i8, ptr %call9, i32 2312
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call46, ptr %addr, align 8
  %cmp.i423 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i423, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21
  %25 = ptrtoint ptr %call46 to i32
  br label %out_release

if.end52:                                         ; preds = %if.end45
  %26 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %res, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 5
  %30 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %base_addr, align 32
  %lock = getelementptr i8, ptr %call9, i32 2772
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @ravb_probe.__key, i16 noundef signext 3) #19
  %work = getelementptr i8, ptr %call9, i32 3296
  call void @__init_work(ptr noundef %work, i32 noundef 0) #19
  %31 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr i8, ptr %call9, i32 3312
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @ravb_probe.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  %entry61 = getelementptr i8, ptr %call9, i32 3300
  %32 = ptrtoint ptr %entry61 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry61, ptr %entry61, align 4
  %prev.i = getelementptr i8, ptr %call9, i32 3304
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry61, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call9, i32 3308
  %34 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ravb_tx_timeout_work, ptr %func, align 4
  %phy_interface = getelementptr i8, ptr %call9, i32 3348
  %call65 = call i32 @of_get_phy_mode(ptr noundef nonnull %1, ptr noundef %phy_interface) #19
  %35 = zext i32 %call65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call65, label %if.end52.out_release_crit_edge [
    i32 0, label %if.end52.if.end69_crit_edge
    i32 -19, label %if.end52.if.end69_crit_edge440
  ]

if.end52.if.end69_crit_edge440:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

if.end52.if.end69_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

if.end52.out_release_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_release

if.end69:                                         ; preds = %if.end52.if.end69_crit_edge, %if.end52.if.end69_crit_edge440
  %call.i424 = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef null) #19
  %tobool.i.not = icmp eq ptr %call.i424, null
  %no_avb_link = getelementptr i8, ptr %call9, i32 3380
  %36 = ptrtoint ptr %no_avb_link to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load71 = load i8, ptr %no_avb_link, align 4
  %bf.shl = select i1 %tobool.i.not, i8 0, i8 -128
  %bf.clear72 = and i8 %bf.load71, 127
  %bf.set = or i8 %bf.clear72, %bf.shl
  store i8 %bf.set, ptr %no_avb_link, align 4
  %call.i425 = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef null) #19
  %tobool.i426.not = icmp eq ptr %call.i425, null
  %37 = ptrtoint ptr %no_avb_link to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load75 = load i8, ptr %no_avb_link, align 4
  %bf.shl77 = select i1 %tobool.i426.not, i8 0, i8 64
  %bf.clear78 = and i8 %bf.load75, -65
  %bf.set79 = or i8 %bf.clear78, %bf.shl77
  store i8 %bf.set79, ptr %no_avb_link, align 4
  %38 = ptrtoint ptr %multi_irqs to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load82 = load i16, ptr %multi_irqs, align 8
  %39 = and i16 %bf.load82, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool86.not = icmp eq i16 %39, 0
  br i1 %tobool86.not, label %if.end69.if.end116_crit_edge, label %if.then87

if.end69.if.end116_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end116

if.then87:                                        ; preds = %if.end69
  %call88 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.then87.out_release_crit_edge, label %if.end92

if.then87.out_release_crit_edge:                  ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_release

if.end92:                                         ; preds = %if.then87
  %emac_irq = getelementptr i8, ptr %call9, i32 3360
  %40 = ptrtoint ptr %emac_irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call88, ptr %emac_irq, align 8
  %call96 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.28) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.end92.out_release_crit_edge, label %if.end100

if.end92.out_release_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_release

if.end100:                                        ; preds = %if.end92
  %arrayidx101 = getelementptr i8, ptr %call9, i32 3364
  %41 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call96, ptr %arrayidx101, align 4
  %call96.1 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.29) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.1)
  %cmp97.1 = icmp slt i32 %call96.1, 0
  br i1 %cmp97.1, label %if.end100.out_release_crit_edge, label %if.end100.1

if.end100.out_release_crit_edge:                  ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_release

if.end100.1:                                      ; preds = %if.end100
  %arrayidx101.1 = getelementptr i8, ptr %call9, i32 3368
  %42 = ptrtoint ptr %arrayidx101.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call96.1, ptr %arrayidx101.1, align 4
  %call107 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.30) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %if.end100.1.out_release_crit_edge, label %if.end111

if.end100.1.out_release_crit_edge:                ; preds = %if.end100.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_release

if.end111:                                        ; preds = %if.end100.1
  %arrayidx112 = getelementptr i8, ptr %call9, i32 3372
  %43 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call107, ptr %arrayidx112, align 4
  %call107.1 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.31) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.1)
  %cmp108.1 = icmp slt i32 %call107.1, 0
  br i1 %cmp108.1, label %if.end111.out_release_crit_edge, label %if.end111.1

if.end111.out_release_crit_edge:                  ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_release

if.end111.1:                                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx112.1 = getelementptr i8, ptr %call9, i32 3376
  %44 = ptrtoint ptr %arrayidx112.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call107.1, ptr %arrayidx112.1, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.end111.1, %if.end69.if.end116_crit_edge
  %call118 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #19
  %clk = getelementptr i8, ptr %call9, i32 2316
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call118, ptr %clk, align 4
  %cmp.i427 = icmp ugt ptr %call118, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i427, label %if.then121, label %if.end124

if.then121:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #21
  %46 = ptrtoint ptr %call118 to i32
  br label %out_release

if.end124:                                        ; preds = %if.end116
  %call126 = call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.14) #19
  %refclk = getelementptr i8, ptr %call9, i32 2320
  %47 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call126, ptr %refclk, align 8
  %cmp.i428 = icmp ugt ptr %call126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i428, label %if.then129, label %if.end132

if.then129:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #21
  %48 = ptrtoint ptr %call126 to i32
  br label %out_release

if.end132:                                        ; preds = %if.end124
  call fastcc void @clk_prepare_enable(ptr noundef %call126)
  %rx_max_buf_size = getelementptr inbounds %struct.ravb_hw_info, ptr %call14, i32 0, i32 15
  %49 = ptrtoint ptr %rx_max_buf_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_max_buf_size, align 4
  %sub = add i32 %50, -22
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 31
  %51 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub, ptr %max_mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 30
  %52 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 68, ptr %min_mtu, align 8
  %53 = ptrtoint ptr %multi_irqs to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load135 = load i16, ptr %multi_irqs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load135)
  %tobool138.not = icmp sgt i16 %bf.load135, -1
  %cond = select i1 %tobool138.not, i32 1, i32 2
  %num_tx_desc = getelementptr i8, ptr %call9, i32 3384
  %54 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond, ptr %num_tx_desc, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 16
  %55 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @ravb_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 44
  %56 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @ravb_ethtool_ops, ptr %ethtool_ops, align 16
  call fastcc void @ravb_set_config_mode(ptr noundef nonnull %call9)
  %57 = ptrtoint ptr %multi_irqs to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load139 = load i16, ptr %multi_irqs, align 8
  %58 = and i16 %bf.load139, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %if.end132.if.end154_crit_edge, label %if.then149

if.end132.if.end154_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end154

if.then149:                                       ; preds = %if.end132
  %call150 = call fastcc i32 @ravb_set_gti(ptr noundef nonnull %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end153, label %if.then149.out_disable_refclk_crit_edge

if.then149.out_disable_refclk_crit_edge:          ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_disable_refclk

if.end153:                                        ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #21
  call void @ravb_modify(ptr noundef nonnull %call9, i32 noundef 912, i32 noundef 8, i32 noundef 8)
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.end132.if.end154_crit_edge
  %60 = ptrtoint ptr %multi_irqs to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load155 = load i16, ptr %multi_irqs, align 8
  %61 = and i16 %bf.load155, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool159.not = icmp eq i16 %61, 0
  br i1 %tobool159.not, label %if.end154.if.end161_crit_edge, label %if.then160

if.end154.if.end161_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end161

if.then160:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @ravb_parse_delay_mode(ptr noundef nonnull %1, ptr noundef nonnull %call9)
  call fastcc void @ravb_set_delay_mode(ptr noundef nonnull %call9)
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %if.end154.if.end161_crit_edge
  %desc_bat_size = getelementptr i8, ptr %call9, i32 2352
  %62 = ptrtoint ptr %desc_bat_size to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 176, ptr %desc_bat_size, align 8
  %63 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parent, align 8
  %desc_bat_dma = getelementptr i8, ptr %call9, i32 2356
  %call.i429 = call ptr @dma_alloc_attrs(ptr noundef %64, i32 noundef 176, ptr noundef %desc_bat_dma, i32 noundef 3264, i32 noundef 0) #19
  %desc_bat = getelementptr i8, ptr %call9, i32 2360
  %65 = ptrtoint ptr %desc_bat to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i429, ptr %desc_bat, align 8
  %tobool167.not = icmp eq ptr %call.i429, null
  br i1 %tobool167.not, label %do.end171, label %for.body178.preheader

for.body178.preheader:                            ; preds = %if.end161
  %66 = ptrtoint ptr %desc_bat to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %desc_bat, align 8
  %die_dt = getelementptr %struct.ravb_desc, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %die_dt to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -96, ptr %die_dt, align 1
  %69 = load ptr, ptr %desc_bat, align 8
  %die_dt.1 = getelementptr %struct.ravb_desc, ptr %69, i32 1, i32 2
  %70 = ptrtoint ptr %die_dt.1 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -96, ptr %die_dt.1, align 1
  %71 = load ptr, ptr %desc_bat, align 8
  %die_dt.2 = getelementptr %struct.ravb_desc, ptr %71, i32 2, i32 2
  %72 = ptrtoint ptr %die_dt.2 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -96, ptr %die_dt.2, align 1
  %73 = load ptr, ptr %desc_bat, align 8
  %die_dt.3 = getelementptr %struct.ravb_desc, ptr %73, i32 3, i32 2
  %74 = ptrtoint ptr %die_dt.3 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -96, ptr %die_dt.3, align 1
  %75 = load ptr, ptr %desc_bat, align 8
  %die_dt.4 = getelementptr %struct.ravb_desc, ptr %75, i32 4, i32 2
  %76 = ptrtoint ptr %die_dt.4 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -96, ptr %die_dt.4, align 1
  %77 = load ptr, ptr %desc_bat, align 8
  %die_dt.5 = getelementptr %struct.ravb_desc, ptr %77, i32 5, i32 2
  %78 = ptrtoint ptr %die_dt.5 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -96, ptr %die_dt.5, align 1
  %79 = load ptr, ptr %desc_bat, align 8
  %die_dt.6 = getelementptr %struct.ravb_desc, ptr %79, i32 6, i32 2
  %80 = ptrtoint ptr %die_dt.6 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -96, ptr %die_dt.6, align 1
  %81 = load ptr, ptr %desc_bat, align 8
  %die_dt.7 = getelementptr %struct.ravb_desc, ptr %81, i32 7, i32 2
  %82 = ptrtoint ptr %die_dt.7 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -96, ptr %die_dt.7, align 1
  %83 = load ptr, ptr %desc_bat, align 8
  %die_dt.8 = getelementptr %struct.ravb_desc, ptr %83, i32 8, i32 2
  %84 = ptrtoint ptr %die_dt.8 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -96, ptr %die_dt.8, align 1
  %85 = load ptr, ptr %desc_bat, align 8
  %die_dt.9 = getelementptr %struct.ravb_desc, ptr %85, i32 9, i32 2
  %86 = ptrtoint ptr %die_dt.9 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -96, ptr %die_dt.9, align 1
  %87 = load ptr, ptr %desc_bat, align 8
  %die_dt.10 = getelementptr %struct.ravb_desc, ptr %87, i32 10, i32 2
  %88 = ptrtoint ptr %die_dt.10 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -96, ptr %die_dt.10, align 1
  %89 = load ptr, ptr %desc_bat, align 8
  %die_dt.11 = getelementptr %struct.ravb_desc, ptr %89, i32 11, i32 2
  %90 = ptrtoint ptr %die_dt.11 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -96, ptr %die_dt.11, align 1
  %91 = load ptr, ptr %desc_bat, align 8
  %die_dt.12 = getelementptr %struct.ravb_desc, ptr %91, i32 12, i32 2
  %92 = ptrtoint ptr %die_dt.12 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -96, ptr %die_dt.12, align 1
  %93 = load ptr, ptr %desc_bat, align 8
  %die_dt.13 = getelementptr %struct.ravb_desc, ptr %93, i32 13, i32 2
  %94 = ptrtoint ptr %die_dt.13 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -96, ptr %die_dt.13, align 1
  %95 = load ptr, ptr %desc_bat, align 8
  %die_dt.14 = getelementptr %struct.ravb_desc, ptr %95, i32 14, i32 2
  %96 = ptrtoint ptr %die_dt.14 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -96, ptr %die_dt.14, align 1
  %97 = load ptr, ptr %desc_bat, align 8
  %die_dt.15 = getelementptr %struct.ravb_desc, ptr %97, i32 15, i32 2
  %98 = ptrtoint ptr %die_dt.15 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -96, ptr %die_dt.15, align 1
  %99 = load ptr, ptr %desc_bat, align 8
  %die_dt.16 = getelementptr %struct.ravb_desc, ptr %99, i32 16, i32 2
  %100 = ptrtoint ptr %die_dt.16 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -96, ptr %die_dt.16, align 1
  %101 = load ptr, ptr %desc_bat, align 8
  %die_dt.17 = getelementptr %struct.ravb_desc, ptr %101, i32 17, i32 2
  %102 = ptrtoint ptr %die_dt.17 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -96, ptr %die_dt.17, align 1
  %103 = load ptr, ptr %desc_bat, align 8
  %die_dt.18 = getelementptr %struct.ravb_desc, ptr %103, i32 18, i32 2
  %104 = ptrtoint ptr %die_dt.18 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -96, ptr %die_dt.18, align 1
  %105 = load ptr, ptr %desc_bat, align 8
  %die_dt.19 = getelementptr %struct.ravb_desc, ptr %105, i32 19, i32 2
  %106 = ptrtoint ptr %die_dt.19 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -96, ptr %die_dt.19, align 1
  %107 = load ptr, ptr %desc_bat, align 8
  %die_dt.20 = getelementptr %struct.ravb_desc, ptr %107, i32 20, i32 2
  %108 = ptrtoint ptr %die_dt.20 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -96, ptr %die_dt.20, align 1
  %109 = load ptr, ptr %desc_bat, align 8
  %die_dt.21 = getelementptr %struct.ravb_desc, ptr %109, i32 21, i32 2
  %110 = ptrtoint ptr %die_dt.21 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -96, ptr %die_dt.21, align 1
  %111 = ptrtoint ptr %desc_bat_dma to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %desc_bat_dma, align 4
  %113 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %addr, align 8
  %add.ptr.i430 = getelementptr i8, ptr %114, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  call void @arm_heavy_mb() #19
  %115 = call i32 @llvm.bswap.i32(i32 %112) #19
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i430, i32 %115) #19, !srcloc !176
  %ts_skb_list = getelementptr i8, ptr %call9, i32 2628
  %116 = ptrtoint ptr %ts_skb_list to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %ts_skb_list, ptr %ts_skb_list, align 4
  %prev.i431 = getelementptr i8, ptr %call9, i32 2632
  %117 = ptrtoint ptr %prev.i431 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %ts_skb_list, ptr %prev.i431, align 4
  %118 = ptrtoint ptr %multi_irqs to i32
  call void @__asan_load2_noabort(i32 %118)
  %bf.load186 = load i16, ptr %multi_irqs, align 8
  %119 = and i16 %bf.load186, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool190.not = icmp eq i16 %119, 0
  br i1 %tobool190.not, label %for.body178.preheader.if.end192_crit_edge, label %if.then191

for.body178.preheader.if.end192_crit_edge:        ; preds = %for.body178.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end192

do.end171:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #21
  %120 = ptrtoint ptr %desc_bat_size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %desc_bat_size, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %121) #22
  br label %out_disable_refclk

if.then191:                                       ; preds = %for.body178.preheader
  call void @__sanitizer_cov_trace_pc() #21
  call void @ravb_ptp_init(ptr noundef nonnull %call9, ptr noundef %pdev) #19
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %for.body178.preheader.if.end192_crit_edge
  %msg_enable = getelementptr i8, ptr %call9, i32 3352
  %122 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 204, ptr %msg_enable, align 8
  call fastcc void @ravb_read_mac_address(ptr noundef nonnull %1, ptr noundef nonnull %call9)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 86
  %123 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev_addr, align 64
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 4
  %127 = and i32 %126, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.i.not.i = icmp eq i32 %127, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end192.do.end197_crit_edge

if.end192.do.end197_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end197

is_valid_ether_addr.exit:                         ; preds = %if.end192
  %add.ptr.i.i = getelementptr i8, ptr %124, i32 4
  %128 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %129 to i32
  %or.i.i = or i32 %126, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end197_crit_edge, label %is_valid_ether_addr.exit.if.end199_crit_edge

is_valid_ether_addr.exit.if.end199_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end199

is_valid_ether_addr.exit.do.end197_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end197

do.end197:                                        ; preds = %is_valid_ether_addr.exit.do.end197_crit_edge, %if.end192.do.end197_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #22
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call9)
  br label %if.end199

if.end199:                                        ; preds = %do.end197, %is_valid_ether_addr.exit.if.end199_crit_edge
  %call200 = call fastcc i32 @ravb_mdio_init(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end207, label %do.end205

do.end205:                                        ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #22
  br label %out_dma_free

if.end207:                                        ; preds = %if.end199
  %napi = getelementptr i8, ptr %call9, i32 2848
  call void @netif_napi_add(ptr noundef nonnull %call9, ptr noundef %napi, ptr noundef nonnull @ravb_poll, i32 noundef 64) #19
  %130 = ptrtoint ptr %multi_irqs to i32
  call void @__asan_load2_noabort(i32 %130)
  %bf.load210 = load i16, ptr %multi_irqs, align 8
  %131 = and i16 %bf.load210, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool214.not = icmp eq i16 %131, 0
  br i1 %tobool214.not, label %if.end207.if.end218_crit_edge, label %if.then215

if.end207.if.end218_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end218

if.then215:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx217 = getelementptr i8, ptr %call9, i32 3072
  call void @netif_napi_add(ptr noundef nonnull %call9, ptr noundef %arrayidx217, ptr noundef nonnull @ravb_poll, i32 noundef 64) #19
  br label %if.end218

if.end218:                                        ; preds = %if.then215, %if.end207.if.end218_crit_edge
  %call219 = call i32 @register_netdev(ptr noundef nonnull %call9) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end222, label %out_napi_del

if.end222:                                        ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #21
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #19
  %132 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %base_addr, align 32
  %134 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev_addr, align 64
  %136 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %irq26, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call9, ptr noundef nonnull @.str.25, i32 noundef %133, ptr noundef %135, i32 noundef %137) #22
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %138 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call9, ptr %driver_data.i.i, align 4
  br label %cleanup

out_napi_del:                                     ; preds = %if.end218
  %139 = ptrtoint ptr %multi_irqs to i32
  call void @__asan_load2_noabort(i32 %139)
  %bf.load228 = load i16, ptr %multi_irqs, align 8
  %140 = and i16 %bf.load228, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %tobool232.not = icmp eq i16 %140, 0
  br i1 %tobool232.not, label %out_napi_del.if.end236_crit_edge, label %if.then233

out_napi_del.if.end236_crit_edge:                 ; preds = %out_napi_del
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end236

if.then233:                                       ; preds = %out_napi_del
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx235 = getelementptr i8, ptr %call9, i32 3072
  call void @__netif_napi_del(ptr noundef %arrayidx235) #19
  call void @synchronize_net() #19
  br label %if.end236

if.end236:                                        ; preds = %if.then233, %out_napi_del.if.end236_crit_edge
  call void @__netif_napi_del(ptr noundef %napi) #19
  call void @synchronize_net() #19
  call fastcc void @ravb_mdio_release(ptr noundef %add.ptr.i)
  br label %out_dma_free

out_dma_free:                                     ; preds = %if.end236, %do.end205
  %error.0 = phi i32 [ %call200, %do.end205 ], [ %call219, %if.end236 ]
  %141 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %parent, align 8
  %143 = ptrtoint ptr %desc_bat_size to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %desc_bat_size, align 8
  %145 = ptrtoint ptr %desc_bat to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %desc_bat, align 8
  %147 = ptrtoint ptr %desc_bat_dma to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %desc_bat_dma, align 4
  call void @dma_free_attrs(ptr noundef %142, i32 noundef %144, ptr noundef %146, i32 noundef %148, i32 noundef 0) #19
  %149 = ptrtoint ptr %multi_irqs to i32
  call void @__asan_load2_noabort(i32 %149)
  %bf.load246 = load i16, ptr %multi_irqs, align 8
  %150 = and i16 %bf.load246, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %150)
  %tobool250.not = icmp eq i16 %150, 0
  br i1 %tobool250.not, label %out_dma_free.out_disable_refclk_crit_edge, label %if.then251

out_dma_free.out_disable_refclk_crit_edge:        ; preds = %out_dma_free
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_disable_refclk

if.then251:                                       ; preds = %out_dma_free
  call void @__sanitizer_cov_trace_pc() #21
  call void @ravb_ptp_stop(ptr noundef nonnull %call9) #19
  br label %out_disable_refclk

out_disable_refclk:                               ; preds = %if.then251, %out_dma_free.out_disable_refclk_crit_edge, %do.end171, %if.then149.out_disable_refclk_crit_edge
  %error.1 = phi i32 [ %call150, %if.then149.out_disable_refclk_crit_edge ], [ %error.0, %if.then251 ], [ %error.0, %out_dma_free.out_disable_refclk_crit_edge ], [ -12, %do.end171 ]
  %151 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %refclk, align 8
  call void @clk_disable(ptr noundef %152) #19
  call void @clk_unprepare(ptr noundef %152) #19
  br label %out_release

out_release:                                      ; preds = %out_disable_refclk, %if.then129, %if.then121, %if.end111.out_release_crit_edge, %if.end100.1.out_release_crit_edge, %if.end100.out_release_crit_edge, %if.end92.out_release_crit_edge, %if.then87.out_release_crit_edge, %if.end52.out_release_crit_edge, %if.then49, %if.end23.out_release_crit_edge
  %error.2 = phi i32 [ %25, %if.then49 ], [ %46, %if.then121 ], [ %48, %if.then129 ], [ %error.1, %out_disable_refclk ], [ %irq.0, %if.end23.out_release_crit_edge ], [ %call65, %if.end52.out_release_crit_edge ], [ %call88, %if.then87.out_release_crit_edge ], [ %call107, %if.end100.1.out_release_crit_edge ], [ %call107.1, %if.end111.out_release_crit_edge ], [ %call96, %if.end92.out_release_crit_edge ], [ %call96.1, %if.end100.out_release_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call9) #19
  %call.i432 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #19
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #19
  %call257 = call i32 @reset_control_assert(ptr noundef %call.i) #19
  br label %cleanup

cleanup:                                          ; preds = %out_release, %if.end222, %if.end8.cleanup_crit_edge, %if.then4, %do.end
  %retval.0 = phi i32 [ %call7, %if.then4 ], [ %error.2, %out_release ], [ 0, %if.end222 ], [ -22, %do.end ], [ -12, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %info2 = getelementptr i8, ptr %1, i32 3392
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 8
  %ccc_gac = getelementptr inbounds %struct.ravb_hw_info, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ccc_gac to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %ccc_gac, align 8
  %5 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ravb_ptp_stop(ptr noundef %1) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %refclk = getelementptr i8, ptr %1, i32 2320
  %6 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refclk, align 8
  tail call void @clk_disable(ptr noundef %7) #19
  tail call void @clk_unprepare(ptr noundef %7) #19
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %desc_bat_size = getelementptr i8, ptr %1, i32 2352
  %10 = ptrtoint ptr %desc_bat_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desc_bat_size, align 8
  %desc_bat = getelementptr i8, ptr %1, i32 2360
  %12 = ptrtoint ptr %desc_bat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc_bat, align 8
  %desc_bat_dma = getelementptr i8, ptr %1, i32 2356
  %14 = ptrtoint ptr %desc_bat_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc_bat_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef 0) #19
  %addr.i = getelementptr i8, ptr %1, i32 2312
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #19, !srcloc !176
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev3, i32 noundef 4) #19
  tail call void @unregister_netdev(ptr noundef %1) #19
  %18 = ptrtoint ptr %ccc_gac to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load5 = load i16, ptr %ccc_gac, align 8
  %19 = and i16 %bf.load5, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool9.not = icmp eq i16 %19, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx = getelementptr i8, ptr %1, i32 3072
  tail call void @__netif_napi_del(ptr noundef %arrayidx) #19
  tail call void @synchronize_net() #19
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %napi12 = getelementptr i8, ptr %1, i32 2848
  tail call void @__netif_napi_del(ptr noundef %napi12) #19
  tail call void @synchronize_net() #19
  %mii_bus.i = getelementptr i8, ptr %1, i32 3340
  %20 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mii_bus.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %21) #19
  %22 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mii_bus.i, align 4
  tail call void @free_mdio_bitbang(ptr noundef %23) #19
  tail call void @__pm_runtime_disable(ptr noundef %dev3, i1 noundef zeroext true) #19
  %rstc = getelementptr i8, ptr %1, i32 3396
  %24 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rstc, align 4
  %call16 = tail call i32 @reset_control_assert(ptr noundef %25) #19
  tail call void @free_netdev(ptr noundef %1) #19
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_tx_timeout_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -992
  %info1 = getelementptr i8, ptr %work, i32 96
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  tail call void @netif_tx_stop_all_queues(ptr noundef %3) #19
  %gptp = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %gptp, align 8
  %5 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ravb_ptp_stop(ptr noundef %3) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @ravb_stop_dma(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i.i.i = getelementptr i8, ptr %3, i32 2312
  %6 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 1280
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %9 = or i32 %8, 1610612736
  %10 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %11, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %9) #19, !srcloc !176
  br label %out

if.end5:                                          ; preds = %if.end
  tail call fastcc void @ravb_ring_free(ptr noundef %3, i32 noundef 0)
  %12 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load6 = load i16, ptr %gptp, align 8
  %13 = and i16 %bf.load6, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool10.not = icmp eq i16 %13, 0
  br i1 %tobool10.not, label %if.end5.if.end12_crit_edge, label %if.then11

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @ravb_ring_free(ptr noundef %3, i32 noundef 1)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end5.if.end12_crit_edge
  %call13 = tail call fastcc i32 @ravb_dmac_init(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.ravb_tx_timeout_work, i32 noundef %call13) #22
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  %info1.i = getelementptr i8, ptr %3, i32 3392
  %14 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info1.i, align 8
  %emac_init.i = getelementptr inbounds %struct.ravb_hw_info, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %emac_init.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %emac_init.i, align 4
  tail call void %17(ptr noundef %3) #19
  br label %out

out:                                              ; preds = %if.end16, %if.then4
  %18 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load18 = load i16, ptr %gptp, align 8
  %19 = and i16 %bf.load18, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool22.not = icmp eq i16 %19, 0
  br i1 %tobool22.not, label %out.if.end24_crit_edge, label %if.then23

out.if.end24_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then23:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  %pdev = getelementptr i8, ptr %work, i32 -988
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  tail call void @ravb_ptp_init(ptr noundef %3, ptr noundef %21) #19
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %out.if.end24_crit_edge
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %22 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4.not.i = icmp eq i32 %23, 0
  br i1 %cmp4.not.i, label %if.end24.cleanup_crit_edge, label %for.body.lr.ph.i

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end24
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %25, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #19
  %inc.i = add nuw i32 %i.05.i, 1
  %26 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %27
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @clk_unprepare(ptr noundef %clk) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ravb_set_config_mode(ptr nocapture noundef readonly %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %gptp = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %gptp, align 8
  %3 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i.i = getelementptr i8, ptr %ndev, i32 2312
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr.i.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %7 = and i32 %6, -50331649
  %8 = or i32 %7, 16777216
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #19, !srcloc !176
  %11 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr.i.i, align 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %14 = and i32 %13, -769
  %15 = or i32 %14, 256
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #19, !srcloc !176
  br label %if.end9

if.else:                                          ; preds = %entry
  %18 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool6.not = icmp eq i16 %18, 0
  %addr.i.i21 = getelementptr i8, ptr %ndev, i32 2312
  %19 = ptrtoint ptr %addr.i.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr.i.i21, align 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19
  br i1 %tobool6.not, label %if.else8, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %22 = and i32 %21, 2097151743
  %23 = or i32 %22, -2130706176
  %24 = ptrtoint ptr %addr.i.i21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %addr.i.i21, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #19, !srcloc !176
  br label %if.end9

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %26 = and i32 %21, -50331649
  %27 = or i32 %26, 16777216
  %28 = ptrtoint ptr %addr.i.i21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr.i.i21, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #19, !srcloc !176
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ravb_set_gti(ptr nocapture noundef readonly %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %clk = getelementptr i8, ptr %ndev, i32 2316
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_get_rate(ptr noundef %3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else174.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.else174.i.i:                                   ; preds = %entry
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call2, i64 1048576000000000) #23, !srcloc !178
  %asmresult1.i.i.i = extractvalue { i64, i64 } %4, 1
  %5 = add i64 %asmresult1.i.i.i, -268435456
  call void @__sanitizer_cov_trace_const_cmp8(i64 -268435424, i64 %5)
  %6 = icmp ult i64 %5, -268435424
  br i1 %6, label %do.end, label %if.end6

do.end:                                           ; preds = %if.else174.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.58, i64 noundef %asmresult1.i.i.i, i32 noundef 32, i32 noundef 268435455) #22
  br label %cleanup

if.end6:                                          ; preds = %if.else174.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv = trunc i64 %asmresult1.i.i.i to i32
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr.i, align 8
  %add.ptr.i16 = getelementptr i8, ptr %8, i32 924
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %9) #19, !srcloc !176
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ravb_parse_delay_mode(ptr noundef %np, ptr nocapture noundef %ndev) unnamed_addr #0 align 64 {
entry:
  %delay = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay) #19
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %delay, align 4, !annotation !177
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.60, ptr noundef nonnull %delay, i32 noundef 1, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  %rxcidm = getelementptr i8, ptr %ndev, i32 3380
  %3 = ptrtoint ptr %rxcidm to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %rxcidm, align 4
  %bf.shl = select i1 %tobool2.not, i8 0, i8 16
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %rxcidm, align 4
  %call.i.i61 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.61, ptr noundef nonnull %delay, i32 noundef 1, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i61)
  %tobool5.not = icmp sgt i32 %call.i.i61, -1
  br i1 %tobool5.not, label %if.end.if.then6_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then6

if.end.thread:                                    ; preds = %entry
  %call.i.i6162 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.61, ptr noundef nonnull %delay, i32 noundef 1, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i6162)
  %tobool5.not63 = icmp sgt i32 %call.i.i6162, -1
  br i1 %tobool5.not63, label %if.end.thread.if.then6_crit_edge, label %if.end21

if.end.thread.if.then6_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then6

if.then6:                                         ; preds = %if.end.thread.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %4 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  %txcidm = getelementptr i8, ptr %ndev, i32 3380
  %6 = ptrtoint ptr %txcidm to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load12 = load i8, ptr %txcidm, align 4
  %bf.shl14 = select i1 %tobool7.not, i8 0, i8 8
  %bf.clear15 = and i8 %bf.load12, -9
  %bf.set16 = or i8 %bf.clear15, %bf.shl14
  store i8 %bf.set16, ptr %txcidm, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end.thread
  %phy_interface = getelementptr i8, ptr %ndev, i32 3348
  %7 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phy_interface, align 4
  %9 = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %switch = icmp eq i32 %9, 10
  br i1 %switch, label %if.then24, label %if.end21.if.end32_crit_edge

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end32

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  %rxcidm25 = getelementptr i8, ptr %ndev, i32 3380
  %10 = ptrtoint ptr %rxcidm25 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load26 = load i8, ptr %rxcidm25, align 4
  %bf.set31 = or i8 %bf.load26, 20
  store i8 %bf.set31, ptr %rxcidm25, align 4
  %11 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %phy_interface, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %if.end21.if.end32_crit_edge
  %12 = phi i32 [ %8, %if.end21.if.end32_crit_edge ], [ %.pr, %if.then24 ]
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %12, label %if.end32.cleanup_crit_edge [
    i32 10, label %if.end32.if.then38_crit_edge
    i32 12, label %if.end32.if.then38_crit_edge64
  ]

if.end32.if.then38_crit_edge64:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then38

if.end32.if.then38_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then38:                                        ; preds = %if.end32.if.then38_crit_edge, %if.end32.if.then38_crit_edge64
  %txcidm39 = getelementptr i8, ptr %ndev, i32 3380
  %14 = ptrtoint ptr %txcidm39 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load40 = load i8, ptr %txcidm39, align 4
  %bf.set46 = or i8 %bf.load40, 12
  store i8 %bf.set46, ptr %txcidm39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end32.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ravb_set_delay_mode(ptr nocapture noundef readonly %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rxcidm = getelementptr i8, ptr %ndev, i32 3380
  %0 = ptrtoint ptr %rxcidm to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %rxcidm, align 4
  %1 = and i8 %bf.load, 16
  %2 = zext i8 %1 to i32
  %3 = shl nuw nsw i32 %2, 9
  %4 = and i8 %bf.load, 8
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 11
  %7 = or i32 %6, %3
  %addr.i.i = getelementptr i8, ptr %ndev, i32 2312
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 140
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %11 = and i32 %10, -6291457
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %or.i = or i32 %12, %7
  %13 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %14, i32 140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %15) #19, !srcloc !176
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ravb_ptp_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ravb_read_mac_address(ptr noundef %np, ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_get_ethdev_address(ptr noundef %np, ptr noundef %ndev) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1472
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #19, !srcloc !173
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr.i, align 8
  %add.ptr.i31 = getelementptr i8, ptr %5, i32 1480
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #19, !srcloc !173
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #19
  %8 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %9 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %10 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %11 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %12 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %shr = lshr i32 %3, 24
  %conv = trunc i32 %shr to i8
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %addr, align 1
  %shr3 = lshr i32 %3, 16
  %conv5 = trunc i32 %shr3 to i8
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv5, ptr %8, align 1
  %shr7 = lshr i32 %3, 8
  %conv9 = trunc i32 %shr7 to i8
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %9, align 1
  %conv13 = trunc i32 %3 to i8
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13, ptr %10, align 1
  %shr15 = lshr i32 %7, 8
  %conv17 = trunc i32 %shr15 to i8
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv17, ptr %11, align 1
  %conv21 = trunc i32 %7 to i8
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv21, ptr %12, align 1
  call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #19
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #19
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #19
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #19
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ravb_mdio_init(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ravb_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %mdiobb = getelementptr inbounds %struct.ravb_private, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %mdiobb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bb_ops, ptr %mdiobb, align 4
  %call = tail call ptr @alloc_mdio_bitbang(ptr noundef %mdiobb) #19
  %mii_bus = getelementptr inbounds %struct.ravb_private, ptr %priv, i32 0, i32 35
  %3 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %mii_bus, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %name = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.62, ptr %name, align 4
  %5 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mii_bus, align 4
  %parent = getelementptr inbounds %struct.mii_bus, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev2, ptr %parent, align 4
  %8 = load ptr, ptr %mii_bus, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %id9 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id9, align 4
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.63, ptr noundef %10, i32 noundef %12)
  %13 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mii_bus, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call12 = tail call i32 @of_mdiobus_register(ptr noundef %14, ptr noundef %16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %out_free_bus

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

out_free_bus:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %17 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mii_bus, align 4
  tail call void @free_mdio_bitbang(ptr noundef %18) #19
  br label %cleanup

cleanup:                                          ; preds = %out_free_bus, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %out_free_bus ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %quota = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %info1 = getelementptr i8, ptr %1, i32 3392
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 8
  %gptp2 = getelementptr inbounds %struct.ravb_hw_info, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %gptp2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %gptp2, align 8
  %5 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %.not = icmp eq i16 %5, 0
  %napi8 = getelementptr i8, ptr %1, i32 2848
  %sub.ptr.lhs.cast = ptrtoint ptr %napi to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %napi8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 224
  %shl = shl nuw i32 1, %sub.ptr.div
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %quota) #19
  %6 = ptrtoint ptr %quota to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %budget, ptr %quota, align 4
  br i1 %.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 29, i32 %sub.ptr.div
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 6, i32 %sub.ptr.div
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11, align 4
  %rem = urem i32 %8, %10
  %gbeth_rx_ring = getelementptr i8, ptr %1, i32 2380
  %11 = ptrtoint ptr %gbeth_rx_ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gbeth_rx_ring, align 4
  %arrayidx12 = getelementptr %struct.ravb_rx_desc, ptr %12, i32 %rem
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %desc.0 = phi ptr [ inttoptr (i32 -1 to ptr), %entry.if.end_crit_edge ], [ %arrayidx12, %if.then ]
  %13 = and i32 %shl, 262143
  %neg = xor i32 %13, 262143
  %addr.i = getelementptr i8, ptr %1, i32 2312
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i, align 8
  %add.ptr.i137 = getelementptr i8, ptr %15, i32 868
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %16 = tail call i32 @llvm.bswap.i32(i32 %neg) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 %16) #19, !srcloc !176
  br i1 %.not, label %lor.lhs.false, label %if.end.if.then15_crit_edge

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end
  %die_dt = getelementptr inbounds %struct.ravb_rx_desc, ptr %desc.0, i32 0, i32 2
  %17 = ptrtoint ptr %die_dt to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %die_dt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %18)
  %cmp.not = icmp eq i8 %18, -64
  br i1 %cmp.not, label %lor.lhs.false.do.body20_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then15

lor.lhs.false.do.body20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body20

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %19 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info1, align 8
  %receive.i = getelementptr inbounds %struct.ravb_hw_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %receive.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %receive.i, align 4
  %call2.i = call zeroext i1 %22(ptr noundef %1, ptr noundef nonnull %quota, i32 noundef %sub.ptr.div) #19
  br i1 %call2.i, label %if.then15.out_crit_edge, label %if.then15.do.body20_crit_edge

if.then15.do.body20_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body20

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.body20:                                        ; preds = %if.then15.do.body20_crit_edge, %lor.lhs.false.do.body20_crit_edge
  %lock = getelementptr i8, ptr %1, i32 2772
  %call24 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #19
  %23 = and i32 %shl, 986895
  %neg28 = xor i32 %23, 986895
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %addr.i, align 8
  %add.ptr.i139 = getelementptr i8, ptr %25, i32 892
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  call void @arm_heavy_mb() #19
  %26 = call i32 @llvm.bswap.i32(i32 %neg28) #19
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %26) #19, !srcloc !176
  %call29 = call fastcc i32 @ravb_tx_free(ptr noundef %1, i32 noundef %sub.ptr.div, i1 noundef zeroext true)
  %conv.i = and i32 %sub.ptr.div, 65535
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %27 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %28, i32 %conv.i
  call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #19
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call24) #19
  %call.i = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #19
  %call42 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #19
  %29 = ptrtoint ptr %gptp2 to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load47 = load i16, ptr %gptp2, align 8
  %30 = and i16 %bf.load47, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool51.not = icmp eq i16 %30, 0
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr.i, align 8
  br i1 %tobool51.not, label %if.then52, label %if.else

if.then52:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 864
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #19, !srcloc !173
  %34 = call i32 @llvm.bswap.i32(i32 %33) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %or.i = or i32 %34, %shl
  %35 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %addr.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %36, i32 864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  call void @arm_heavy_mb() #19
  %37 = call i32 @llvm.bswap.i32(i32 %or.i) #19
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %37) #19, !srcloc !176
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr.i, align 8
  %add.ptr.i.i141 = getelementptr i8, ptr %39, i32 888
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i141) #19, !srcloc !173
  %41 = call i32 @llvm.bswap.i32(i32 %40) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %or.i144 = or i32 %41, %shl
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr.i, align 8
  %add.ptr.i4.i145 = getelementptr i8, ptr %43, i32 888
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  call void @arm_heavy_mb() #19
  %44 = call i32 @llvm.bswap.i32(i32 %or.i144) #19
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i145, i32 %44) #19, !srcloc !176
  br label %if.end53

if.else:                                          ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i147 = getelementptr i8, ptr %32, i32 1120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  call void @arm_heavy_mb() #19
  %45 = call i32 @llvm.bswap.i32(i32 %shl) #19
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %45) #19, !srcloc !176
  %46 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %addr.i, align 8
  %add.ptr.i149 = getelementptr i8, ptr %47, i32 1144
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  call void @arm_heavy_mb() #19
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %45) #19, !srcloc !176
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then52
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call42) #19
  %rx_over_errors = getelementptr i8, ptr %1, i32 2480
  %48 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_over_errors, align 4
  %rx_over_errors56 = getelementptr i8, ptr %1, i32 2428
  %50 = ptrtoint ptr %rx_over_errors56 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %rx_over_errors56, align 4
  %51 = ptrtoint ptr %gptp2 to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load57 = load i16, ptr %gptp2, align 8
  %52 = and i16 %bf.load57, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool61.not = icmp eq i16 %52, 0
  br i1 %tobool61.not, label %if.end53.if.end67_crit_edge, label %if.then62

if.end53.if.end67_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end67

if.then62:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #21
  %rx_over_errors65 = getelementptr i8, ptr %1, i32 2572
  %53 = ptrtoint ptr %rx_over_errors65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_over_errors65, align 4
  %add = add i32 %54, %49
  %55 = ptrtoint ptr %rx_over_errors56 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add, ptr %rx_over_errors56, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.end53.if.end67_crit_edge
  %56 = ptrtoint ptr %rx_over_errors56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_over_errors56, align 4
  %rx_over_errors70 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %58 = ptrtoint ptr %rx_over_errors70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_over_errors70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp71.not = icmp eq i32 %57, %59
  br i1 %cmp71.not, label %if.end67.if.end77_crit_edge, label %if.then73

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end77

if.then73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #21
  %60 = ptrtoint ptr %rx_over_errors70 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %57, ptr %rx_over_errors70, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.end67.if.end77_crit_edge
  %rx_fifo_errors = getelementptr i8, ptr %1, i32 2432
  %61 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_fifo_errors, align 8
  %rx_fifo_errors79 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %63 = ptrtoint ptr %rx_fifo_errors79 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_fifo_errors79, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp80.not = icmp eq i32 %62, %64
  br i1 %cmp80.not, label %if.end77.out_crit_edge, label %if.then82

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #21
  %65 = ptrtoint ptr %rx_fifo_errors79 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %62, ptr %rx_fifo_errors79, align 8
  br label %out

out:                                              ; preds = %if.then82, %if.end77.out_crit_edge, %if.then15.out_crit_edge
  %66 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %quota, align 4
  %sub = sub i32 %budget, %67
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %quota) #19
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ravb_mdio_release(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_bus = getelementptr inbounds %struct.ravb_private, ptr %priv, i32 0, i32 35
  %0 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mii_bus, align 4
  tail call void @mdiobus_unregister(ptr noundef %1) #19
  %2 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mii_bus, align 4
  tail call void @free_mdio_bitbang(ptr noundef %3) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ravb_ptp_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ravb_stop_dma(ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %tccr_mask = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %tccr_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tccr_mask, align 8
  %addr.i.i = getelementptr i8, ptr %ndev, i32 2312
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 772
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #19, !srcloc !173
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %and.i = and i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %for.body.i.for.body.i29_crit_edge, label %if.end.i

for.body.i.for.body.i29_crit_edge:                ; preds = %for.body.i
  br label %for.body.i29

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #19
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.i29:                                     ; preds = %if.end.i32.for.body.i29_crit_edge, %for.body.i.for.body.i29_crit_edge
  %i.03.i25 = phi i32 [ %inc.i30, %if.end.i32.for.body.i29_crit_edge ], [ 0, %for.body.i.for.body.i29_crit_edge ]
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i.i26 = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %12 = and i32 %11, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.i28 = icmp eq i32 %12, 0
  br i1 %cmp1.i28, label %if.end6, label %if.end.i32

if.end.i32:                                       ; preds = %for.body.i29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #19
  %inc.i30 = add nuw nsw i32 %i.03.i25, 1
  %exitcond.not.i31 = icmp eq i32 %inc.i30, 10000
  br i1 %exitcond.not.i31, label %if.end.i32.cleanup_crit_edge, label %if.end.i32.for.body.i29_crit_edge

if.end.i32.for.body.i29_crit_edge:                ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i29

if.end.i32.cleanup_crit_edge:                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end6:                                          ; preds = %for.body.i29
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 1280
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %17 = and i32 %16, -1610612737
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %19, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %17) #19, !srcloc !176
  br label %for.body.i40

for.body.i40:                                     ; preds = %if.end.i43.for.body.i40_crit_edge, %if.end6
  %i.03.i36 = phi i32 [ 0, %if.end6 ], [ %inc.i41, %if.end.i43.for.body.i40_crit_edge ]
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i.i37 = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %23 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1.i39 = icmp eq i32 %23, 0
  br i1 %cmp1.i39, label %if.end10, label %if.end.i43

if.end.i43:                                       ; preds = %for.body.i40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #19
  %inc.i41 = add nuw nsw i32 %i.03.i36, 1
  %exitcond.not.i42 = icmp eq i32 %inc.i41, 10000
  br i1 %exitcond.not.i42, label %if.end.i43.cleanup_crit_edge, label %if.end.i43.for.body.i40_crit_edge

if.end.i43.for.body.i40_crit_edge:                ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i40

if.end.i43.cleanup_crit_edge:                     ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end10:                                         ; preds = %for.body.i40
  %25 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr.i.i, align 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %28 = and i32 %27, -50331649
  %29 = or i32 %28, 16777216
  %30 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %addr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #19, !srcloc !176
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end10
  %i.03.i.i = phi i32 [ 0, %if.end10 ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i.i.i47 = getelementptr i8, ptr %33, i32 12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i47) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %35 = and i32 %34, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %35)
  %cmp1.i.i = icmp eq i32 %35, 33554432
  br i1 %cmp1.i.i, label %for.body.i.i.cleanup_crit_edge, label %if.end.i.i

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #19
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10000
  br i1 %exitcond.not.i.i, label %if.then.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i

if.then.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.27) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %for.body.i.i.cleanup_crit_edge, %if.end.i43.cleanup_crit_edge, %if.end.i32.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then.i ], [ 0, %for.body.i.i.cleanup_crit_edge ], [ -110, %if.end.i43.cleanup_crit_edge ], [ -110, %if.end.i32.cleanup_crit_edge ], [ -110, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ravb_ring_free(ptr noundef %ndev, i32 noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %num_tx_desc2 = getelementptr i8, ptr %ndev, i32 3384
  %2 = ptrtoint ptr %num_tx_desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_desc2, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void %5(ptr noundef %ndev, i32 noundef %q) #19
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 15, i32 %q
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call3 = tail call fastcc i32 @ravb_tx_free(ptr noundef %ndev, i32 noundef %q, i1 noundef zeroext false)
  %arrayidx4 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 7, i32 %q
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %mul = shl i32 %3, 3
  %add = mul i32 %mul, %9
  %mul5 = add i32 %add, 8
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 12, i32 %q
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %mul5, ptr noundef %13, i32 noundef %15, i32 noundef 0) #19
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx11 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 18, i32 %q
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %if.end.if.end18_crit_edge, label %for.cond.preheader

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

for.cond.preheader:                               ; preds = %if.end
  %arrayidx14 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 6, i32 %q
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp64.not = icmp eq i32 %20, 0
  br i1 %cmp64.not, label %for.cond.preheader.if.end18_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end18_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.065 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx11, align 4
  %arrayidx17 = getelementptr ptr, ptr %22, i32 %i.065
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx17, align 4
  tail call void @consume_skb(ptr noundef %24) #19
  %inc = add nuw i32 %i.065, 1
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end18_crit_edge

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.end18:                                         ; preds = %for.body.if.end18_crit_edge, %for.cond.preheader.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx11, align 4
  tail call void @kfree(ptr noundef %28) #19
  %29 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx11, align 4
  %arrayidx23 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 16, i32 %q
  %30 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx23, align 4
  tail call void @kfree(ptr noundef %31) #19
  %32 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx23, align 4
  %arrayidx26 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 19, i32 %q
  %33 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx26, align 4
  tail call void @kfree(ptr noundef %34) #19
  %35 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx26, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ravb_dmac_init(ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %addr.i.i.i = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i.i.i, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %5 = and i32 %4, -50331649
  %6 = or i32 %5, 16777216
  %7 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #19, !srcloc !176
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %i.03.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %9 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %12 = and i32 %11, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %12)
  %cmp1.i.i = icmp eq i32 %12, 33554432
  br i1 %cmp1.i.i, label %if.end, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #19
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10000
  br i1 %exitcond.not.i.i, label %ravb_config.exit, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i

ravb_config.exit:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.27) #22
  br label %cleanup

if.end:                                           ; preds = %for.body.i.i
  %dmac_init = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %dmac_init to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmac_init, align 8
  %call3 = tail call i32 %15(ptr noundef %ndev) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %16 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr.i.i.i, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %19 = and i32 %18, -50331649
  %20 = or i32 %19, 33554432
  %21 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #19, !srcloc !176
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %ravb_config.exit
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -110, %ravb_config.exit ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ravb_tx_free(ptr nocapture noundef %ndev, i32 noundef %q, i1 noundef zeroext %free_txed_only) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %num_tx_desc2 = getelementptr i8, ptr %ndev, i32 3384
  %0 = ptrtoint ptr %num_tx_desc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_desc2, align 8
  %arrayidx4 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 31, i32 %q
  %arrayidx5 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 32, i32 %q
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not94 = icmp eq i32 %3, %5
  br i1 %cmp.not94, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx8 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 7, i32 %q
  %arrayidx9 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 15, i32 %q
  %free_txed_only.not = xor i1 %free_txed_only, true
  %arrayidx17 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 19, i32 %q
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %sub22 = add i32 %1, -1
  %tx_packets = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 1
  %tx_bytes = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %inc45, %for.inc.for.body_crit_edge ]
  %free_num.095 = phi i32 [ 0, %for.body.lr.ph ], [ %free_num.1, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx8, align 4
  %mul = mul i32 %8, %1
  %rem = urem i32 %6, %mul
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9, align 4
  %die_dt = getelementptr %struct.ravb_tx_desc, ptr %10, i32 %rem, i32 2
  %11 = ptrtoint ptr %die_dt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %die_dt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %12)
  %cmp11 = icmp eq i8 %12, -64
  %brmerge = select i1 %free_txed_only.not, i1 true, i1 %cmp11
  br i1 %brmerge, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end:                                           ; preds = %for.body
  %arrayidx10 = getelementptr %struct.ravb_tx_desc, ptr %10, i32 %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !179
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx10, align 4
  %15 = and i16 %14, -241
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %and = zext i16 %16 to i32
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx17, align 4
  %rem.frozen = freeze i32 %rem
  %.frozen = freeze i32 %1
  %div = udiv i32 %rem.frozen, %.frozen
  %arrayidx18 = getelementptr ptr, ptr %18, i32 %div
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %20, null
  br i1 %tobool19.not, label %if.end.if.end38_crit_edge, label %if.then20

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

if.then20:                                        ; preds = %if.end
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent, align 8
  %dptr = getelementptr %struct.ravb_tx_desc, ptr %10, i32 %rem, i32 3
  %23 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dptr, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %25, i32 noundef %and, i32 noundef 1, i32 noundef 0) #19
  %26 = mul i32 %div, %.frozen
  %rem21.decomposed = sub i32 %rem.frozen, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %rem21.decomposed, i32 %sub22)
  %cmp23 = icmp eq i32 %rem21.decomposed, %sub22
  br i1 %cmp23, label %if.then25, label %if.then20.if.end36_crit_edge

if.then20.if.end36_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end36

if.then25:                                        ; preds = %if.then20
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx17, align 4
  %arrayidx29 = getelementptr ptr, ptr %28, i32 %div
  %29 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx29, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %30, i32 noundef 1) #19
  %31 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx17, align 4
  %arrayidx32 = getelementptr ptr, ptr %32, i32 %div
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx32, align 4
  br i1 %cmp11, label %if.then34, label %if.then25.if.end36_crit_edge

if.then25.if.end36_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end36

if.then34:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #21
  %34 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %tx_packets, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then25.if.end36_crit_edge, %if.then20.if.end36_crit_edge
  %inc37 = add i32 %free_num.095, 1
  br label %if.end38

if.end38:                                         ; preds = %if.end36, %if.end.if.end38_crit_edge
  %free_num.1 = phi i32 [ %inc37, %if.end36 ], [ %free_num.095, %if.end.if.end38_crit_edge ]
  br i1 %cmp11, label %if.then40, label %if.end38.for.inc_crit_edge

if.end38.for.inc_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  %36 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %37, %and
  store i32 %add, ptr %tx_bytes, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %if.end38.for.inc_crit_edge
  %38 = ptrtoint ptr %die_dt to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 48, ptr %die_dt, align 1
  %39 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx5, align 4
  %inc45 = add i32 %40, 1
  store i32 %inc45, ptr %arrayidx5, align 4
  %41 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx4, align 4
  %cmp.not = icmp eq i32 %42, %inc45
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %free_num.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %free_num.095, %for.body.for.end_crit_edge ], [ %free_num.1, %for.inc.for.end_crit_edge ]
  ret i32 %free_num.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_open(ptr noundef %ndev) #0 align 64 {
entry:
  %args.i.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %pdev2 = getelementptr i8, ptr %ndev, i32 2308
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %napi = getelementptr i8, ptr %ndev, i32 2848
  tail call void @napi_enable(ptr noundef %napi) #19
  %nc_queues = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %nc_queues to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %nc_queues, align 8
  %5 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx5 = getelementptr i8, ptr %ndev, i32 3072
  tail call void @napi_enable(ptr noundef %arrayidx5) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %nc_queues to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load6 = load i16, ptr %nc_queues, align 8
  %7 = and i16 %bf.load6, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool10.not = icmp eq i16 %7, 0
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @ravb_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %ndev, ptr noundef %ndev) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.then11.if.end47_crit_edge, label %if.then14

if.then11.if.end47_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end47

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.32) #22
  br label %out_napi_off

if.else:                                          ; preds = %if.end
  %call.i171 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev3, i32 noundef 3264, ptr noundef nonnull @.str.41, ptr noundef %ndev, ptr noundef nonnull @.str.33) #19
  %tobool.not.i = icmp eq ptr %call.i171, null
  br i1 %tobool.not.i, label %if.else.out_napi_off_crit_edge, label %if.end.i

if.else.out_napi_off_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_napi_off

if.end.i:                                         ; preds = %if.else
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @ravb_multi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call.i171, ptr noundef %ndev) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end20, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.42, ptr noundef nonnull %call.i171) #22
  br label %out_napi_off

if.end20:                                         ; preds = %if.end.i
  %emac_irq = getelementptr i8, ptr %ndev, i32 3360
  %10 = ptrtoint ptr %emac_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %emac_irq, align 8
  %call.i172 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev3, i32 noundef 3264, ptr noundef nonnull @.str.41, ptr noundef %ndev, ptr noundef nonnull @.str.34) #19
  %tobool.not.i173 = icmp eq ptr %call.i172, null
  br i1 %tobool.not.i173, label %if.end20.out_free_irq_crit_edge, label %if.end.i176

if.end20.out_free_irq_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_irq

if.end.i176:                                      ; preds = %if.end20
  %call.i.i174 = tail call i32 @request_threaded_irq(i32 noundef %11, ptr noundef nonnull @ravb_emac_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call.i172, ptr noundef %ndev) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i174)
  %tobool3.not.i175 = icmp eq i32 %call.i.i174, 0
  br i1 %tobool3.not.i175, label %if.end24, label %if.then4.i177

if.then4.i177:                                    ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.42, ptr noundef nonnull %call.i172) #22
  br label %out_free_irq

if.end24:                                         ; preds = %if.end.i176
  %rx_irqs = getelementptr i8, ptr %ndev, i32 3364
  %12 = ptrtoint ptr %rx_irqs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_irqs, align 4
  %call.i180 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev3, i32 noundef 3264, ptr noundef nonnull @.str.41, ptr noundef %ndev, ptr noundef nonnull @.str.35) #19
  %tobool.not.i181 = icmp eq ptr %call.i180, null
  br i1 %tobool.not.i181, label %if.end24.out_free_irq_emac_crit_edge, label %if.end.i184

if.end24.out_free_irq_emac_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_irq_emac

if.end.i184:                                      ; preds = %if.end24
  %call.i.i182 = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef nonnull @ravb_be_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call.i180, ptr noundef %ndev) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i182)
  %tobool3.not.i183 = icmp eq i32 %call.i.i182, 0
  br i1 %tobool3.not.i183, label %if.end29, label %if.then4.i185

if.then4.i185:                                    ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.42, ptr noundef nonnull %call.i180) #22
  br label %out_free_irq_emac

if.end29:                                         ; preds = %if.end.i184
  %tx_irqs = getelementptr i8, ptr %ndev, i32 3372
  %14 = ptrtoint ptr %tx_irqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_irqs, align 4
  %call.i188 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev3, i32 noundef 3264, ptr noundef nonnull @.str.41, ptr noundef %ndev, ptr noundef nonnull @.str.36) #19
  %tobool.not.i189 = icmp eq ptr %call.i188, null
  br i1 %tobool.not.i189, label %if.end29.out_free_irq_be_rx_crit_edge, label %if.end.i192

if.end29.out_free_irq_be_rx_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_irq_be_rx

if.end.i192:                                      ; preds = %if.end29
  %call.i.i190 = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @ravb_be_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call.i188, ptr noundef %ndev) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i190)
  %tobool3.not.i191 = icmp eq i32 %call.i.i190, 0
  br i1 %tobool3.not.i191, label %if.end34, label %if.then4.i193

if.then4.i193:                                    ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.42, ptr noundef nonnull %call.i188) #22
  br label %out_free_irq_be_rx

if.end34:                                         ; preds = %if.end.i192
  %arrayidx36 = getelementptr i8, ptr %ndev, i32 3368
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx36, align 4
  %call37 = tail call fastcc i32 @ravb_hook_irq(i32 noundef %17, ptr noundef nonnull @ravb_nc_interrupt, ptr noundef %ndev, ptr noundef %dev3, ptr noundef nonnull @.str.37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.out_free_irq_be_tx_crit_edge

if.end34.out_free_irq_be_tx_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_irq_be_tx

if.end40:                                         ; preds = %if.end34
  %arrayidx42 = getelementptr i8, ptr %ndev, i32 3376
  %18 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx42, align 4
  %call43 = tail call fastcc i32 @ravb_hook_irq(i32 noundef %19, ptr noundef nonnull @ravb_nc_interrupt, ptr noundef %ndev, ptr noundef %dev3, ptr noundef nonnull @.str.38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end40.if.end47_crit_edge, label %if.end40.out_free_irq_nc_rx_crit_edge

if.end40.out_free_irq_nc_rx_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_irq_nc_rx

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end47

if.end47:                                         ; preds = %if.end40.if.end47_crit_edge, %if.then11.if.end47_crit_edge
  %call48 = tail call fastcc i32 @ravb_dmac_init(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.out_free_irq_nc_tx_crit_edge

if.end47.out_free_irq_nc_tx_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_irq_nc_tx

if.end51:                                         ; preds = %if.end47
  %20 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info1, align 8
  %emac_init.i = getelementptr inbounds %struct.ravb_hw_info, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %emac_init.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %emac_init.i, align 4
  tail call void %23(ptr noundef %ndev) #19
  %24 = ptrtoint ptr %nc_queues to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load52 = load i16, ptr %nc_queues, align 8
  %25 = and i16 %bf.load52, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool56.not = icmp eq i16 %25, 0
  br i1 %tobool56.not, label %if.end51.if.end59_crit_edge, label %if.then57

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end59

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #21
  %26 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev2, align 4
  tail call void @ravb_ptp_init(ptr noundef %ndev, ptr noundef %27) #19
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end51.if.end59_crit_edge
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %28 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp4.not.i = icmp eq i32 %29, 0
  br i1 %cmp4.not.i, label %if.end59.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i

if.end59.netif_tx_start_all_queues.exit_crit_edge: ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #21
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.end59
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %31, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #19
  %inc.i = add nuw i32 %i.05.i, 1
  %32 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %33
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_start_all_queues.exit_crit_edge

for.body.i.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %netif_tx_start_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i.netif_tx_start_all_queues.exit_crit_edge, %if.end59.netif_tx_start_all_queues.exit_crit_edge
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %34 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node.i.i, align 8
  %38 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info1, align 8
  %link.i.i = getelementptr i8, ptr %ndev, i32 3344
  %40 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %link.i.i, align 8
  %speed.i.i = getelementptr i8, ptr %ndev, i32 3356
  %41 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %speed.i.i, align 4
  %duplex.i.i = getelementptr i8, ptr %ndev, i32 3388
  %42 = ptrtoint ptr %duplex.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %duplex.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i.i) #19
  %43 = call ptr @memset(ptr %args.i.i.i, i32 255, i32 72)
  %call.i.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %37, ptr noundef nonnull @.str.43, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %of_parse_phandle.exit.i.i, label %of_parse_phandle.exit.thread.i.i

of_parse_phandle.exit.thread.i.i:                 ; preds = %netif_tx_start_all_queues.exit
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #19
  br label %if.then.i.i

of_parse_phandle.exit.i.i:                        ; preds = %netif_tx_start_all_queues.exit
  %44 = ptrtoint ptr %args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %args.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #19
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i.i.if.then.i.i_crit_edge, label %of_parse_phandle.exit.i.i.if.end10.i.i_crit_edge

of_parse_phandle.exit.i.i.if.end10.i.i_crit_edge: ; preds = %of_parse_phandle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10.i.i

of_parse_phandle.exit.i.i.if.then.i.i_crit_edge:  ; preds = %of_parse_phandle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %of_parse_phandle.exit.i.i.if.then.i.i_crit_edge, %of_parse_phandle.exit.thread.i.i
  %call3.i.i = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %37) #19
  br i1 %call3.i.i, label %if.then4.i.i, label %if.then.i.i.if.end8.i.i_crit_edge

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  %call5.i.i = call i32 @of_phy_register_fixed_link(ptr noundef %37) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then4.i.i.if.end8.i.i_crit_edge, label %if.then4.i.i.out_ptp_stop_crit_edge

if.then4.i.i.out_ptp_stop_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_ptp_stop

if.then4.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then4.i.i.if.end8.i.i_crit_edge, %if.then.i.i.if.end8.i.i_crit_edge
  %call9.i.i = call ptr @of_node_get(ptr noundef %37) #19
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end8.i.i, %of_parse_phandle.exit.i.i.if.end10.i.i_crit_edge
  %pn.0.i.i = phi ptr [ %45, %of_parse_phandle.exit.i.i.if.end10.i.i_crit_edge ], [ %call9.i.i, %if.end8.i.i ]
  %rgmii_override.i.i = getelementptr i8, ptr %ndev, i32 3380
  %46 = ptrtoint ptr %rgmii_override.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i.i = load i8, ptr %rgmii_override.i.i, align 4
  %47 = and i8 %bf.load.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool11.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool11.not.i.i, label %cond.false.i.i, label %if.end10.i.i.cond.end.i.i_crit_edge

if.end10.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %phy_interface.i.i = getelementptr i8, ptr %ndev, i32 3348
  %48 = ptrtoint ptr %phy_interface.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %phy_interface.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end10.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %49, %cond.false.i.i ], [ 9, %if.end10.i.i.cond.end.i.i_crit_edge ]
  %call12.i.i = call ptr @of_phy_connect(ptr noundef %ndev, ptr noundef %pn.0.i.i, ptr noundef nonnull @ravb_adjust_link, i32 noundef 0, i32 noundef %cond.i.i) #19
  call void @of_node_put(ptr noundef %pn.0.i.i) #19
  %tobool13.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %if.end15.i.i

if.then14.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.44) #22
  br label %err_deregister_fixed_link.i.i

if.end15.i.i:                                     ; preds = %cond.end.i.i
  %call16.i.i = call ptr @soc_device_match(ptr noundef nonnull @r8a7795es10) #19
  %tobool17.not.i.i = icmp eq ptr %call16.i.i, null
  br i1 %tobool17.not.i.i, label %if.end15.i.i.if.end23.i.i_crit_edge, label %if.then18.i.i

if.end15.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end23.i.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  %call19.i.i = call i32 @phy_set_max_speed(ptr noundef nonnull %call12.i.i, i32 noundef 100) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end22.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.45) #22
  call void @phy_disconnect(ptr noundef nonnull %call12.i.i) #19
  br label %err_deregister_fixed_link.i.i

if.end22.i.i:                                     ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.46) #22
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.end22.i.i, %if.end15.i.i.if.end23.i.i_crit_edge
  %half_duplex.i.i = getelementptr inbounds %struct.ravb_hw_info, ptr %39, i32 0, i32 16
  %50 = ptrtoint ptr %half_duplex.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load24.i.i = load i16, ptr %half_duplex.i.i, align 8
  %51 = and i16 %bf.load24.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool28.not.i.i = icmp eq i16 %51, 0
  br i1 %tobool28.not.i.i, label %if.then29.i.i, label %if.end23.i.i.ravb_phy_start.exit_crit_edge

if.end23.i.i.ravb_phy_start.exit_crit_edge:       ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_phy_start.exit

if.then29.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @phy_remove_link_mode(ptr noundef nonnull %call12.i.i, i32 noundef 0) #19
  call void @phy_remove_link_mode(ptr noundef nonnull %call12.i.i, i32 noundef 1) #19
  call void @phy_remove_link_mode(ptr noundef nonnull %call12.i.i, i32 noundef 13) #19
  call void @phy_remove_link_mode(ptr noundef nonnull %call12.i.i, i32 noundef 14) #19
  call void @phy_remove_link_mode(ptr noundef nonnull %call12.i.i, i32 noundef 4) #19
  call void @phy_remove_link_mode(ptr noundef nonnull %call12.i.i, i32 noundef 2) #19
  br label %ravb_phy_start.exit

err_deregister_fixed_link.i.i:                    ; preds = %if.then21.i.i, %if.then14.i.i
  %err.0.i.i = phi i32 [ %call19.i.i, %if.then21.i.i ], [ -2, %if.then14.i.i ]
  %call31.i.i = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %37) #19
  br i1 %call31.i.i, label %if.then32.i.i, label %err_deregister_fixed_link.i.i.out_ptp_stop_crit_edge

err_deregister_fixed_link.i.i.out_ptp_stop_crit_edge: ; preds = %err_deregister_fixed_link.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_ptp_stop

if.then32.i.i:                                    ; preds = %err_deregister_fixed_link.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @of_phy_deregister_fixed_link(ptr noundef %37) #19
  br label %out_ptp_stop

ravb_phy_start.exit:                              ; preds = %if.then29.i.i, %if.end23.i.i.ravb_phy_start.exit_crit_edge
  call void @phy_attached_info(ptr noundef nonnull %call12.i.i) #19
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %52 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phydev.i, align 16
  call void @phy_start(ptr noundef %53) #19
  br label %cleanup

out_ptp_stop:                                     ; preds = %if.then32.i.i, %err_deregister_fixed_link.i.i.out_ptp_stop_crit_edge, %if.then4.i.i.out_ptp_stop_crit_edge
  %retval.0.i197.ph = phi i32 [ %call5.i.i, %if.then4.i.i.out_ptp_stop_crit_edge ], [ %err.0.i.i, %if.then32.i.i ], [ %err.0.i.i, %err_deregister_fixed_link.i.i.out_ptp_stop_crit_edge ]
  %54 = ptrtoint ptr %nc_queues to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load65 = load i16, ptr %nc_queues, align 8
  %55 = and i16 %bf.load65, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool69.not = icmp eq i16 %55, 0
  br i1 %tobool69.not, label %out_ptp_stop.out_free_irq_nc_tx_crit_edge, label %if.then70

out_ptp_stop.out_free_irq_nc_tx_crit_edge:        ; preds = %out_ptp_stop
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_irq_nc_tx

if.then70:                                        ; preds = %out_ptp_stop
  call void @__sanitizer_cov_trace_pc() #21
  call void @ravb_ptp_stop(ptr noundef %ndev) #19
  br label %out_free_irq_nc_tx

out_free_irq_nc_tx:                               ; preds = %if.then70, %out_ptp_stop.out_free_irq_nc_tx_crit_edge, %if.end47.out_free_irq_nc_tx_crit_edge
  %error.0 = phi i32 [ %call48, %if.end47.out_free_irq_nc_tx_crit_edge ], [ %retval.0.i197.ph, %if.then70 ], [ %retval.0.i197.ph, %out_ptp_stop.out_free_irq_nc_tx_crit_edge ]
  %56 = ptrtoint ptr %nc_queues to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load73 = load i16, ptr %nc_queues, align 8
  %57 = and i16 %bf.load73, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool77.not = icmp eq i16 %57, 0
  br i1 %tobool77.not, label %out_free_irq_nc_tx.out_free_irq_crit_edge, label %if.end79

out_free_irq_nc_tx.out_free_irq_crit_edge:        ; preds = %out_free_irq_nc_tx
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_irq

if.end79:                                         ; preds = %out_free_irq_nc_tx
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx81 = getelementptr i8, ptr %ndev, i32 3376
  %58 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx81, align 4
  %call82 = call ptr @free_irq(i32 noundef %59, ptr noundef %ndev) #19
  br label %out_free_irq_nc_rx

out_free_irq_nc_rx:                               ; preds = %if.end79, %if.end40.out_free_irq_nc_rx_crit_edge
  %error.1 = phi i32 [ %call43, %if.end40.out_free_irq_nc_rx_crit_edge ], [ %error.0, %if.end79 ]
  %arrayidx84 = getelementptr i8, ptr %ndev, i32 3368
  %60 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx84, align 4
  %call85 = call ptr @free_irq(i32 noundef %61, ptr noundef %ndev) #19
  br label %out_free_irq_be_tx

out_free_irq_be_tx:                               ; preds = %out_free_irq_nc_rx, %if.end34.out_free_irq_be_tx_crit_edge
  %error.2 = phi i32 [ %call37, %if.end34.out_free_irq_be_tx_crit_edge ], [ %error.1, %out_free_irq_nc_rx ]
  %tx_irqs86 = getelementptr i8, ptr %ndev, i32 3372
  %62 = ptrtoint ptr %tx_irqs86 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_irqs86, align 4
  %call88 = call ptr @free_irq(i32 noundef %63, ptr noundef %ndev) #19
  br label %out_free_irq_be_rx

out_free_irq_be_rx:                               ; preds = %out_free_irq_be_tx, %if.then4.i193, %if.end29.out_free_irq_be_rx_crit_edge
  %error.3 = phi i32 [ %error.2, %out_free_irq_be_tx ], [ %call.i.i190, %if.then4.i193 ], [ -12, %if.end29.out_free_irq_be_rx_crit_edge ]
  %rx_irqs89 = getelementptr i8, ptr %ndev, i32 3364
  %64 = ptrtoint ptr %rx_irqs89 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_irqs89, align 4
  %call91 = call ptr @free_irq(i32 noundef %65, ptr noundef %ndev) #19
  br label %out_free_irq_emac

out_free_irq_emac:                                ; preds = %out_free_irq_be_rx, %if.then4.i185, %if.end24.out_free_irq_emac_crit_edge
  %error.4 = phi i32 [ %error.3, %out_free_irq_be_rx ], [ %call.i.i182, %if.then4.i185 ], [ -12, %if.end24.out_free_irq_emac_crit_edge ]
  %emac_irq92 = getelementptr i8, ptr %ndev, i32 3360
  %66 = ptrtoint ptr %emac_irq92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %emac_irq92, align 8
  %call93 = call ptr @free_irq(i32 noundef %67, ptr noundef %ndev) #19
  br label %out_free_irq

out_free_irq:                                     ; preds = %out_free_irq_emac, %out_free_irq_nc_tx.out_free_irq_crit_edge, %if.then4.i177, %if.end20.out_free_irq_crit_edge
  %error.5 = phi i32 [ %error.4, %out_free_irq_emac ], [ %error.0, %out_free_irq_nc_tx.out_free_irq_crit_edge ], [ %call.i.i174, %if.then4.i177 ], [ -12, %if.end20.out_free_irq_crit_edge ]
  %irq94 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %68 = ptrtoint ptr %irq94 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq94, align 4
  %call95 = call ptr @free_irq(i32 noundef %69, ptr noundef %ndev) #19
  br label %out_napi_off

out_napi_off:                                     ; preds = %out_free_irq, %if.then4.i, %if.else.out_napi_off_crit_edge, %if.then14
  %error.6 = phi i32 [ %error.5, %out_free_irq ], [ %call.i, %if.then14 ], [ %call.i.i, %if.then4.i ], [ -12, %if.else.out_napi_off_crit_edge ]
  %70 = ptrtoint ptr %nc_queues to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load97 = load i16, ptr %nc_queues, align 8
  %71 = and i16 %bf.load97, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool101.not = icmp eq i16 %71, 0
  br i1 %tobool101.not, label %out_napi_off.if.end105_crit_edge, label %if.then102

out_napi_off.if.end105_crit_edge:                 ; preds = %out_napi_off
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end105

if.then102:                                       ; preds = %out_napi_off
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx104 = getelementptr i8, ptr %ndev, i32 3072
  call void @napi_disable(ptr noundef %arrayidx104) #19
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %out_napi_off.if.end105_crit_edge
  call void @napi_disable(ptr noundef %napi) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %ravb_phy_start.exit
  %retval.0 = phi i32 [ %error.6, %if.end105 ], [ 0, %ravb_phy_start.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_close(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %4 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info1, align 8
  tail call void @netif_tx_stop_all_queues(ptr noundef %ndev) #19
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i, align 8
  %add.ptr.i115 = getelementptr i8, ptr %7, i32 864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 0) #19, !srcloc !176
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr.i, align 8
  %add.ptr.i117 = getelementptr i8, ptr %9, i32 880
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 0) #19, !srcloc !176
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i, align 8
  %add.ptr.i119 = getelementptr i8, ptr %11, i32 888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 0) #19, !srcloc !176
  %gptp = getelementptr inbounds %struct.ravb_hw_info, ptr %5, i32 0, i32 16
  %12 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %gptp, align 8
  %13 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ravb_ptp_stop(ptr noundef %ndev) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call fastcc i32 @ravb_stop_dma(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.49) #22
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %14 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load6 = load i16, ptr %gptp, align 8
  %15 = and i16 %bf.load6, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %if.end4.if.end30_crit_edge, label %if.then16

if.end4.if.end30_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

if.then16:                                        ; preds = %if.end4
  %ts_skb_list = getelementptr i8, ptr %ndev, i32 2628
  %17 = ptrtoint ptr %ts_skb_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ts_skb_list, align 4
  %cmp23.not120 = icmp eq ptr %18, %ts_skb_list
  br i1 %cmp23.not120, label %if.then16.if.end30_crit_edge, label %if.then16.for.body_crit_edge

if.then16.for.body_crit_edge:                     ; preds = %if.then16
  br label %for.body

if.then16.if.end30_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.then16.for.body_crit_edge
  %ts_skb.0121 = phi ptr [ %ts_skb2.0, %list_del.exit.for.body_crit_edge ], [ %18, %if.then16.for.body_crit_edge ]
  %19 = ptrtoint ptr %ts_skb.0121 to i32
  call void @__asan_load4_noabort(i32 %19)
  %ts_skb2.0 = load ptr, ptr %ts_skb.0121, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ts_skb.0121) #19
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ts_skb.0121, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %ts_skb.0121 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ts_skb.0121, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %26 = ptrtoint ptr %ts_skb.0121 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %ts_skb.0121, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ts_skb.0121, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %skb = getelementptr inbounds %struct.ravb_tstamp_skb, ptr %ts_skb.0121, i32 0, i32 1
  %28 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %29, i32 noundef 0) #19
  tail call void @kfree(ptr noundef %ts_skb.0121) #19
  %cmp23.not = icmp eq ptr %ts_skb2.0, %ts_skb_list
  br i1 %cmp23.not, label %list_del.exit.if.end30_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

list_del.exit.if.end30_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

if.end30:                                         ; preds = %list_del.exit.if.end30_crit_edge, %if.then16.if.end30_crit_edge, %if.end4.if.end30_crit_edge
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %30 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phydev, align 16
  %tobool31.not = icmp eq ptr %31, null
  br i1 %tobool31.not, label %if.end30.if.end38_crit_edge, label %if.then32

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

if.then32:                                        ; preds = %if.end30
  tail call void @phy_stop(ptr noundef nonnull %31) #19
  %32 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %33) #19
  %call35 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %3) #19
  br i1 %call35, label %if.then36, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @of_phy_deregister_fixed_link(ptr noundef %3) #19
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then32.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  %34 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load39 = load i16, ptr %gptp, align 8
  %35 = and i16 %bf.load39, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool43.not = icmp eq i16 %35, 0
  br i1 %tobool43.not, label %if.end38.if.end55_crit_edge, label %if.then44

if.end38.if.end55_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end55

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  %tx_irqs = getelementptr i8, ptr %ndev, i32 3372
  %arrayidx = getelementptr i8, ptr %ndev, i32 3376
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %call45 = tail call ptr @free_irq(i32 noundef %37, ptr noundef %ndev) #19
  %rx_irqs = getelementptr i8, ptr %ndev, i32 3364
  %arrayidx46 = getelementptr i8, ptr %ndev, i32 3368
  %38 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx46, align 4
  %call47 = tail call ptr @free_irq(i32 noundef %39, ptr noundef %ndev) #19
  %40 = ptrtoint ptr %tx_irqs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_irqs, align 4
  %call50 = tail call ptr @free_irq(i32 noundef %41, ptr noundef %ndev) #19
  %42 = ptrtoint ptr %rx_irqs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_irqs, align 4
  %call53 = tail call ptr @free_irq(i32 noundef %43, ptr noundef %ndev) #19
  %emac_irq = getelementptr i8, ptr %ndev, i32 3360
  %44 = ptrtoint ptr %emac_irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %emac_irq, align 8
  %call54 = tail call ptr @free_irq(i32 noundef %45, ptr noundef %ndev) #19
  br label %if.end55

if.end55:                                         ; preds = %if.then44, %if.end38.if.end55_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  %call56 = tail call ptr @free_irq(i32 noundef %47, ptr noundef %ndev) #19
  %48 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load57 = load i16, ptr %gptp, align 8
  %49 = and i16 %bf.load57, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool61.not = icmp eq i16 %49, 0
  br i1 %tobool61.not, label %if.end55.if.end64_crit_edge, label %if.then62

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end64

if.then62:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx63 = getelementptr i8, ptr %ndev, i32 3072
  tail call void @napi_disable(ptr noundef %arrayidx63) #19
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end55.if.end64_crit_edge
  %napi65 = getelementptr i8, ptr %ndev, i32 2848
  tail call void @napi_disable(ptr noundef %napi65) #19
  tail call fastcc void @ravb_ring_free(ptr noundef %ndev, i32 noundef 0)
  %50 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load68 = load i16, ptr %gptp, align 8
  %51 = and i16 %bf.load68, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool72.not = icmp eq i16 %51, 0
  br i1 %tobool72.not, label %if.end64.if.end74_crit_edge, label %if.then73

if.end64.if.end74_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end74

if.then73:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @ravb_ring_free(ptr noundef %ndev, i32 noundef 1)
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end64.if.end74_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_start_xmit(ptr noundef %skb, ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %num_tx_desc2 = getelementptr i8, ptr %ndev, i32 3384
  %2 = ptrtoint ptr %num_tx_desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_desc2, align 8
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %4 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %queue_mapping.i, align 8
  %lock = getelementptr i8, ptr %ndev, i32 2772
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #19
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 31, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 32, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11, align 4
  %sub = sub i32 %7, %9
  %arrayidx13 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 7, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %sub14 = add i32 %11, -1
  %mul = mul i32 %sub14, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %mul)
  %cmp15 = icmp ugt i32 %sub, %mul
  br i1 %cmp15, label %do.body17, label %if.end22

do.body17:                                        ; preds = %entry
  %msg_enable = getelementptr i8, ptr %ndev, i32 3352
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 8
  %and = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body17.do.end20_crit_edge, label %if.then18

do.body17.do.end20_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end20

if.then18:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.50) #22
  br label %do.end20

do.end20:                                         ; preds = %if.then18, %do.body17.do.end20_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %15, i32 %idxprom, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #19
  br label %cleanup

if.end22:                                         ; preds = %entry
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %17)
  %cmp.i.i = icmp ult i32 %17, 60
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end22.if.end26_crit_edge, !prof !180

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26

if.then.i.i:                                      ; preds = %if.end22
  %sub.i.i = sub nuw nsw i32 60, %17
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i, i1 noundef zeroext true) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %18 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !181

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #19, !srcloc !182
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i.i, align 8
  %22 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %23, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %if.end26

if.end26:                                         ; preds = %__skb_put.exit.i.i, %if.end22.if.end26_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx13, align 4
  %mul33 = mul i32 %27, %3
  %rem = urem i32 %25, %mul33
  %arrayidx35 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 19, i32 %idxprom
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx35, align 4
  %div = udiv i32 %rem, %3
  %arrayidx36 = getelementptr ptr, ptr %29, i32 %div
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %skb, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp37 = icmp ugt i32 %3, 1
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end26
  %arrayidx41 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 16, i32 %idxprom
  %31 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx41, align 4
  %33 = ptrtoint ptr %32 to i32
  %add = add i32 %33, 3
  %and42 = and i32 %add, -4
  %34 = inttoptr i32 %and42 to ptr
  %mul44 = shl i32 %div, 2
  %add.ptr = getelementptr i8, ptr %34, i32 %mul44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %37 = ptrtoint ptr %36 to i32
  %add45 = add i32 %37, 3
  %and46 = and i32 %add45, -4
  %sub.ptr.sub = sub i32 %and46, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %and46, i32 %37)
  %cmp48 = icmp eq i32 %and46, %37
  %spec.store.select = select i1 %cmp48, i32 4, i32 %sub.ptr.sub
  %38 = call ptr @memcpy(ptr %add.ptr, ptr %36, i32 %spec.store.select)
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %39 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr) #19
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then39
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !181

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %40) #19
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.i314, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit.i

if.end.i.i314:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i314, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i315 = phi ptr [ %44, %if.end.i.i314 ], [ %42, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16.i, ptr noundef %retval.0.i.i315) #19
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %45 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %46, i32 noundef -1) #19
  br label %drop

dma_map_single_attrs.exit:                        ; preds = %if.then39
  tail call void @debug_dma_map_single(ptr noundef %40, ptr noundef %add.ptr, i32 noundef %spec.store.select) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %47 = load ptr, ptr @mem_map, align 4
  %48 = ptrtoint ptr %add.ptr to i32
  %sub.i = add i32 %48, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i316 = getelementptr %struct.page, ptr %47, i32 %shr.i
  %and.i = and i32 %48, 4092
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %40, ptr noundef %add.ptr.i316, i32 noundef %and.i, i32 noundef %spec.store.select, i32 noundef 1, i32 noundef 0) #19
  %49 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %50, i32 noundef %call41.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.drop_crit_edge, label %if.end59

dma_map_single_attrs.exit.drop_crit_edge:         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %drop

if.end59:                                         ; preds = %dma_map_single_attrs.exit
  %arrayidx61 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 15, i32 %idxprom
  %51 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx61, align 4
  %arrayidx62 = getelementptr %struct.ravb_tx_desc, ptr %52, i32 %rem
  %conv63 = trunc i32 %spec.store.select to i16
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv63)
  %54 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %arrayidx62, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %dptr = getelementptr %struct.ravb_tx_desc, ptr %52, i32 %rem, i32 3
  %56 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %dptr, align 4
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  %add.ptr65 = getelementptr i8, ptr %58, i32 %spec.store.select
  %59 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len1.i.i, align 4
  %sub67 = sub i32 %60, %spec.store.select
  %61 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parent, align 8
  %call.i317 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr65) #19
  br i1 %call.i317, label %land.rhs.i319, label %dma_map_single_attrs.exit334

land.rhs.i319:                                    ; preds = %if.end59
  %.b1.i318 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i318, label %land.rhs.i319.dma_map_single_attrs.exit334.thread_crit_edge, label %if.then.i323, !prof !181

land.rhs.i319.dma_map_single_attrs.exit334.thread_crit_edge: ; preds = %land.rhs.i319
  call void @__sanitizer_cov_trace_pc() #21
  br label %dma_map_single_attrs.exit334.thread

if.then.i323:                                     ; preds = %land.rhs.i319
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i320 = tail call ptr @dev_driver_string(ptr noundef %62) #19
  %init_name.i.i321 = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %init_name.i.i321 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i.i321, align 8
  %tobool.not.i.i322 = icmp eq ptr %64, null
  br i1 %tobool.not.i.i322, label %if.end.i.i324, label %if.then.i323.dev_name.exit.i326_crit_edge

if.then.i323.dev_name.exit.i326_crit_edge:        ; preds = %if.then.i323
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit.i326

if.end.i.i324:                                    ; preds = %if.then.i323
  call void @__sanitizer_cov_trace_pc() #21
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %62, align 4
  br label %dev_name.exit.i326

dev_name.exit.i326:                               ; preds = %if.end.i.i324, %if.then.i323.dev_name.exit.i326_crit_edge
  %retval.0.i.i325 = phi ptr [ %66, %if.end.i.i324 ], [ %64, %if.then.i323.dev_name.exit.i326_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16.i320, ptr noundef %retval.0.i.i325) #19
  br label %dma_map_single_attrs.exit334.thread

dma_map_single_attrs.exit334.thread:              ; preds = %dev_name.exit.i326, %land.rhs.i319.dma_map_single_attrs.exit334.thread_crit_edge
  %67 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %68, i32 noundef -1) #19
  br label %unmap

dma_map_single_attrs.exit334:                     ; preds = %if.end59
  tail call void @debug_dma_map_single(ptr noundef %62, ptr noundef %add.ptr65, i32 noundef %sub67) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %69 = load ptr, ptr @mem_map, align 4
  %70 = ptrtoint ptr %add.ptr65 to i32
  %sub.i327 = add i32 %70, 1073741824
  %shr.i328 = lshr i32 %sub.i327, 12
  %add.ptr.i329 = getelementptr %struct.page, ptr %69, i32 %shr.i328
  %and.i330 = and i32 %70, 4095
  %call41.i331 = tail call i32 @dma_map_page_attrs(ptr noundef %62, ptr noundef %add.ptr.i329, i32 noundef %and.i330, i32 noundef %sub67, i32 noundef 1, i32 noundef 0) #19
  %71 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %72, i32 noundef %call41.i331) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i331)
  %cmp.i335 = icmp eq i32 %call41.i331, -1
  br i1 %cmp.i335, label %dma_map_single_attrs.exit334.unmap_crit_edge, label %if.end76

dma_map_single_attrs.exit334.unmap_crit_edge:     ; preds = %dma_map_single_attrs.exit334
  call void @__sanitizer_cov_trace_pc() #21
  br label %unmap

if.end76:                                         ; preds = %dma_map_single_attrs.exit334
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr = getelementptr %struct.ravb_tx_desc, ptr %arrayidx62, i32 1
  br label %if.end93

if.else:                                          ; preds = %if.end26
  %arrayidx79 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 15, i32 %idxprom
  %73 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx79, align 4
  %75 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len1.i.i, align 4
  %parent83 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %77 = ptrtoint ptr %parent83 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %parent83, align 8
  %data84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %79 = ptrtoint ptr %data84 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data84, align 4
  %call.i337 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %80) #19
  br i1 %call.i337, label %land.rhs.i339, label %dma_map_single_attrs.exit354

land.rhs.i339:                                    ; preds = %if.else
  %.b1.i338 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i338, label %land.rhs.i339.dma_map_single_attrs.exit354.thread_crit_edge, label %if.then.i343, !prof !181

land.rhs.i339.dma_map_single_attrs.exit354.thread_crit_edge: ; preds = %land.rhs.i339
  call void @__sanitizer_cov_trace_pc() #21
  br label %dma_map_single_attrs.exit354.thread

if.then.i343:                                     ; preds = %land.rhs.i339
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i340 = tail call ptr @dev_driver_string(ptr noundef %78) #19
  %init_name.i.i341 = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 3
  %81 = ptrtoint ptr %init_name.i.i341 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init_name.i.i341, align 8
  %tobool.not.i.i342 = icmp eq ptr %82, null
  br i1 %tobool.not.i.i342, label %if.end.i.i344, label %if.then.i343.dev_name.exit.i346_crit_edge

if.then.i343.dev_name.exit.i346_crit_edge:        ; preds = %if.then.i343
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit.i346

if.end.i.i344:                                    ; preds = %if.then.i343
  call void @__sanitizer_cov_trace_pc() #21
  %83 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %78, align 4
  br label %dev_name.exit.i346

dev_name.exit.i346:                               ; preds = %if.end.i.i344, %if.then.i343.dev_name.exit.i346_crit_edge
  %retval.0.i.i345 = phi ptr [ %84, %if.end.i.i344 ], [ %82, %if.then.i343.dev_name.exit.i346_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16.i340, ptr noundef %retval.0.i.i345) #19
  br label %dma_map_single_attrs.exit354.thread

dma_map_single_attrs.exit354.thread:              ; preds = %dev_name.exit.i346, %land.rhs.i339.dma_map_single_attrs.exit354.thread_crit_edge
  %85 = ptrtoint ptr %parent83 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %parent83, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %86, i32 noundef -1) #19
  br label %drop

dma_map_single_attrs.exit354:                     ; preds = %if.else
  %arrayidx80 = getelementptr %struct.ravb_tx_desc, ptr %74, i32 %rem
  tail call void @debug_dma_map_single(ptr noundef %78, ptr noundef %80, i32 noundef %76) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %87 = load ptr, ptr @mem_map, align 4
  %88 = ptrtoint ptr %80 to i32
  %sub.i347 = add i32 %88, 1073741824
  %shr.i348 = lshr i32 %sub.i347, 12
  %add.ptr.i349 = getelementptr %struct.page, ptr %87, i32 %shr.i348
  %and.i350 = and i32 %88, 4095
  %call41.i351 = tail call i32 @dma_map_page_attrs(ptr noundef %78, ptr noundef %add.ptr.i349, i32 noundef %and.i350, i32 noundef %76, i32 noundef 1, i32 noundef 0) #19
  %89 = ptrtoint ptr %parent83 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %parent83, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %90, i32 noundef %call41.i351) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i351)
  %cmp.i355 = icmp eq i32 %call41.i351, -1
  br i1 %cmp.i355, label %dma_map_single_attrs.exit354.drop_crit_edge, label %dma_map_single_attrs.exit354.if.end93_crit_edge

dma_map_single_attrs.exit354.if.end93_crit_edge:  ; preds = %dma_map_single_attrs.exit354
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end93

dma_map_single_attrs.exit354.drop_crit_edge:      ; preds = %dma_map_single_attrs.exit354
  call void @__sanitizer_cov_trace_pc() #21
  br label %drop

if.end93:                                         ; preds = %dma_map_single_attrs.exit354.if.end93_crit_edge, %if.end76
  %desc.0 = phi ptr [ %incdec.ptr, %if.end76 ], [ %arrayidx80, %dma_map_single_attrs.exit354.if.end93_crit_edge ]
  %dma_addr.0 = phi i32 [ %call41.i331, %if.end76 ], [ %call41.i351, %dma_map_single_attrs.exit354.if.end93_crit_edge ]
  %len.0 = phi i32 [ %sub67, %if.end76 ], [ %76, %dma_map_single_attrs.exit354.if.end93_crit_edge ]
  %conv94 = trunc i32 %len.0 to i16
  %91 = tail call i16 @llvm.bswap.i16(i16 %conv94)
  %92 = ptrtoint ptr %desc.0 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %desc.0, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %dma_addr.0)
  %dptr96 = getelementptr inbounds %struct.ravb_tx_desc, ptr %desc.0, i32 0, i32 3
  %94 = ptrtoint ptr %dptr96 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %dptr96, align 4
  %gptp = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %95 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load = load i16, ptr %gptp, align 8
  %96 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %if.end93.if.end140_crit_edge, label %if.then103

if.end93.if.end140_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end140

if.then103:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp105 = icmp eq i16 %5, 1
  br i1 %cmp105, label %if.then107, label %if.then103.if.end139_crit_edge

if.then103.if.end139_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end139

if.then107:                                       ; preds = %if.then103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %98 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %98, i32 noundef 2592, i32 noundef 16) #24
  %tobool109.not = icmp eq ptr %call7.i, null
  br i1 %tobool109.not, label %if.then110, label %if.end118

if.then110:                                       ; preds = %if.then107
  br i1 %cmp37, label %if.then113, label %if.then110.unmap_crit_edge

if.then110.unmap_crit_edge:                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #21
  br label %unmap

if.then113:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr114 = getelementptr %struct.ravb_tx_desc, ptr %desc.0, i32 -1
  %parent116 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %99 = ptrtoint ptr %parent116 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %parent116, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %100, i32 noundef %dma_addr.0, i32 noundef %len.0, i32 noundef 1, i32 noundef 0) #19
  br label %unmap

if.end118:                                        ; preds = %if.then107
  %call119 = tail call fastcc ptr @skb_get(ptr noundef %skb)
  %skb120 = getelementptr inbounds %struct.ravb_tstamp_skb, ptr %call7.i, i32 0, i32 1
  %101 = ptrtoint ptr %skb120 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %skb, ptr %skb120, align 8
  %ts_skb_tag = getelementptr i8, ptr %ndev, i32 2636
  %102 = ptrtoint ptr %ts_skb_tag to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ts_skb_tag, align 4
  %inc = add i32 %103, 1
  %conv121 = trunc i32 %103 to i16
  %tag = getelementptr inbounds %struct.ravb_tstamp_skb, ptr %call7.i, i32 0, i32 2
  %104 = ptrtoint ptr %tag to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv121, ptr %tag, align 4
  %and123 = and i32 %inc, 1023
  store i32 %and123, ptr %ts_skb_tag, align 4
  %ts_skb_list = getelementptr i8, ptr %ndev, i32 2628
  %prev.i = getelementptr i8, ptr %ndev, i32 2632
  %105 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i, align 4
  %call.i.i357 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %106, ptr noundef %ts_skb_list) #19
  br i1 %call.i.i357, label %if.end.i.i358, label %if.end118.list_add_tail.exit_crit_edge

if.end118.list_add_tail.exit_crit_edge:           ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_add_tail.exit

if.end.i.i358:                                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #21
  %107 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call7.i, ptr %prev.i, align 4
  %108 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %ts_skb_list, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %109 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev3.i.i, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %call7.i, ptr %106, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i358, %if.end118.list_add_tail.exit_crit_edge
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %111 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %tx_flags, align 1
  %115 = or i8 %114, 4
  store i8 %115, ptr %tx_flags, align 1
  %116 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %tag, align 4
  %118 = lshr i16 %117, 4
  %119 = trunc i16 %118 to i8
  %conv130 = or i8 %119, 64
  %tagh_tsr = getelementptr inbounds %struct.ravb_tx_desc, ptr %desc.0, i32 0, i32 1
  %120 = ptrtoint ptr %tagh_tsr to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv130, ptr %tagh_tsr, align 2
  %121 = load i16, ptr %tag, align 4
  %122 = shl i16 %121, 4
  %123 = and i16 %122, 240
  %124 = ptrtoint ptr %desc.0 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %desc.0, align 4
  %or137313 = or i16 %123, %125
  store i16 %or137313, ptr %desc.0, align 4
  br label %if.end139

if.end139:                                        ; preds = %list_add_tail.exit, %if.then103.if.end139_crit_edge
  tail call fastcc void @skb_tx_timestamp(ptr noundef %skb)
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end93.if.end140_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !183
  br i1 %cmp37, label %if.then143, label %if.end140.if.end148_crit_edge

if.end140.if.end148_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end148

if.then143:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #21
  %die_dt145 = getelementptr %struct.ravb_tx_desc, ptr %desc.0, i32 -1, i32 2
  %126 = ptrtoint ptr %die_dt145 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 80, ptr %die_dt145, align 1
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %if.end140.if.end148_crit_edge
  %.sink = phi i8 [ 96, %if.then143 ], [ 112, %if.end140.if.end148_crit_edge ]
  %127 = getelementptr inbounds %struct.ravb_tx_desc, ptr %desc.0, i32 0, i32 2
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %.sink, ptr %127, align 1
  %shl150 = shl nuw i32 1, %idxprom
  %addr.i.i = getelementptr i8, ptr %ndev, i32 2312
  %129 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %130, i32 772
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #19, !srcloc !173
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %or.i = or i32 %132, %shl150
  %133 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %134, i32 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %135 = tail call i32 @llvm.bswap.i32(i32 %or.i) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %135) #19, !srcloc !176
  %136 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx, align 4
  %add156 = add i32 %137, %3
  store i32 %add156, ptr %arrayidx, align 4
  %138 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx11, align 4
  %sub163 = sub i32 %add156, %139
  %140 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx13, align 4
  %sub167 = add i32 %141, -1
  %mul168 = mul i32 %sub167, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub163, i32 %mul168)
  %cmp169 = icmp ugt i32 %sub163, %mul168
  br i1 %cmp169, label %land.lhs.true, label %if.end148.cleanup_crit_edge

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end148
  %call172 = tail call fastcc i32 @ravb_tx_free(ptr noundef %ndev, i32 noundef %idxprom, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.then174, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then174:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %_tx.i.i361 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %142 = ptrtoint ptr %_tx.i.i361 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %_tx.i.i361, align 128
  %state.i.i362 = getelementptr %struct.netdev_queue, ptr %143, i32 %idxprom, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i362) #19
  br label %cleanup

unmap:                                            ; preds = %if.then113, %if.then110.unmap_crit_edge, %dma_map_single_attrs.exit334.unmap_crit_edge, %dma_map_single_attrs.exit334.thread
  %desc.1 = phi ptr [ %incdec.ptr114, %if.then113 ], [ %desc.0, %if.then110.unmap_crit_edge ], [ %arrayidx62, %dma_map_single_attrs.exit334.unmap_crit_edge ], [ %arrayidx62, %dma_map_single_attrs.exit334.thread ]
  %parent178 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %144 = ptrtoint ptr %parent178 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %parent178, align 8
  %dptr179 = getelementptr inbounds %struct.ravb_tx_desc, ptr %desc.1, i32 0, i32 3
  %146 = ptrtoint ptr %dptr179 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %dptr179, align 4
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  %149 = ptrtoint ptr %desc.1 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %desc.1, align 4
  %151 = tail call i16 @llvm.bswap.i16(i16 %150)
  %conv181 = zext i16 %151 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %145, i32 noundef %148, i32 noundef %conv181, i32 noundef 1, i32 noundef 0) #19
  br label %drop

drop:                                             ; preds = %unmap, %dma_map_single_attrs.exit354.drop_crit_edge, %dma_map_single_attrs.exit354.thread, %dma_map_single_attrs.exit.drop_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #19
  %152 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx35, align 4
  %arrayidx186 = getelementptr ptr, ptr %153, i32 %div
  %154 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %arrayidx186, align 4
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.then174, %land.lhs.true.cleanup_crit_edge, %if.end148.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %do.end20
  %retval.0 = phi i32 [ 16, %do.end20 ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.end148.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then174 ], [ 0, %drop ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #19
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ravb_select_queue(ptr nocapture noundef readnone %ndev, ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %sb_dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_flags, align 1
  %4 = and i8 %3, 1
  %5 = zext i8 %4 to i16
  ret i16 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_set_rx_mode(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %ndev, i32 2772
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #19
  %flags6 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags6, align 8
  %and = lshr i32 %1, 8
  %and.lobit = and i32 %and, 1
  %addr.i.i = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1280
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %5 = and i32 %4, -16777217
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or.i = or i32 %6, %and.lobit
  %7 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %8, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %9) #19, !srcloc !176
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_do_ioctl(ptr noundef %ndev, ptr noundef %req, i32 noundef %cmd) #0 align 64 {
entry:
  %config.i15 = alloca %struct.hwtstamp_config, align 4
  %config.i = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %cmd, label %sw.epilog [
    i32 35249, label %sw.bb
    i32 35248, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config.i) #19
  %5 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i, i32 0, i32 2
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %config.i, align 4
  %tstamp_tx_ctrl.i = getelementptr i8, ptr %ndev, i32 2620
  %8 = ptrtoint ptr %tstamp_tx_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tstamp_tx_ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp ne i32 %9, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i, ptr %5, align 4
  %tstamp_rx_ctrl.i = getelementptr i8, ptr %ndev, i32 2624
  %11 = ptrtoint ptr %tstamp_rx_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tstamp_rx_ctrl.i, align 8
  %and.i = and i32 %12, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %switch.selectcmp.i = icmp eq i32 %and.i, 6
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %switch.selectcmp10.i = icmp eq i32 %and.i, 2
  %switch.select11.i = select i1 %switch.selectcmp10.i, i32 9, i32 %switch.select.i
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %switch.select11.i, ptr %6, align 4
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ifr_ifru.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 174) #19
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i.i, label %sw.bb.ravb_hwtstamp_get.exit_crit_edge, label %if.end.i.i.i

sw.bb.ravb_hwtstamp_get.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_hwtstamp_get.exit

if.end.i.i.i:                                     ; preds = %sw.bb
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 12, i32 -1226833920) #23, !srcloc !184
  %asmresult.i.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.ravb_hwtstamp_get.exit_crit_edge

if.end.i.i.i.ravb_hwtstamp_get.exit_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_hwtstamp_get.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config.i, i32 noundef 12) #19
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %15, ptr noundef nonnull %config.i, i32 noundef 12) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool5.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 0, i32 -14
  br label %ravb_hwtstamp_get.exit

ravb_hwtstamp_get.exit:                           ; preds = %copy_to_user.exit.i, %if.end.i.i.i.ravb_hwtstamp_get.exit_crit_edge, %sw.bb.ravb_hwtstamp_get.exit_crit_edge
  %17 = phi i32 [ -14, %sw.bb.ravb_hwtstamp_get.exit_crit_edge ], [ -14, %if.end.i.i.i.ravb_hwtstamp_get.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config.i) #19
  br label %cleanup

sw.bb5:                                           ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config.i15) #19
  %18 = ptrtoint ptr %config.i15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %config.i15, align 4, !annotation !177
  %19 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i15, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4, !annotation !177
  %21 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i15, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4, !annotation !177
  %ifr_ifru.i16 = getelementptr inbounds %struct.ifreq, ptr %req, i32 0, i32 1
  %23 = ptrtoint ptr %ifr_ifru.i16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ifr_ifru.i16, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #19
  %call.i.i.i17 = tail call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i.i17, label %sw.bb5.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb5.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb5
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 12, i32 -1226833920) #23, !srcloc !185
  %asmresult.i.i.i18 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i18)
  %cmp.i.i.i19 = icmp eq i32 %asmresult.i.i.i18, 0
  br i1 %cmp.i.i.i19, label %if.end.i.i.i21, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !181

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i.i

if.end.i.i.i21:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i20 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config.i15, i32 noundef 12) #19
  %26 = call i32 @llvm.read_register.i32(metadata !163) #19
  %and.i.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #11, !srcloc !186
  %and.i.i.i.i.i = and i32 %28, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #19, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !188
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config.i15, ptr noundef %24, i32 noundef 12) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #19, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i21.if.then11.i.i.i_crit_edge, !prof !181

if.end.i.i.i21.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i21.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb5.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i21.if.then11.i.i.i_crit_edge ], [ 12, %sw.bb5.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %config.i15, i32 %sub.i.i.i
  %29 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %ravb_hwtstamp_set.exit

if.end.i:                                         ; preds = %if.end.i.i.i21
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %19, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %31, label %if.end.i.ravb_hwtstamp_set.exit_crit_edge [
    i32 0, label %if.end.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb2.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

if.end.i.ravb_hwtstamp_set.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_hwtstamp_set.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %if.end.i.sw.epilog.i_crit_edge
  %tstamp_tx_ctrl.0.i = phi i32 [ 16, %sw.bb2.i ], [ %31, %if.end.i.sw.epilog.i_crit_edge ]
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %21, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %34, label %sw.default5.i [
    i32 0, label %sw.epilog.i.if.then.i24.i_crit_edge
    i32 9, label %sw.bb4.i
  ]

sw.epilog.i.if.then.i24.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i24.i

sw.bb4.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i24.i

sw.default5.i:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #21
  %36 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %21, align 4
  br label %if.then.i24.i

if.then.i24.i:                                    ; preds = %sw.default5.i, %sw.bb4.i, %sw.epilog.i.if.then.i24.i_crit_edge
  %tstamp_rx_ctrl.0.i = phi i32 [ 22, %sw.default5.i ], [ 18, %sw.bb4.i ], [ %34, %sw.epilog.i.if.then.i24.i_crit_edge ]
  %tstamp_tx_ctrl9.i = getelementptr i8, ptr %ndev, i32 2620
  %37 = ptrtoint ptr %tstamp_tx_ctrl9.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %tstamp_tx_ctrl.0.i, ptr %tstamp_tx_ctrl9.i, align 4
  %tstamp_rx_ctrl10.i = getelementptr i8, ptr %ndev, i32 2624
  %38 = ptrtoint ptr %tstamp_rx_ctrl10.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %tstamp_rx_ctrl.0.i, ptr %tstamp_rx_ctrl10.i, align 8
  %39 = ptrtoint ptr %ifr_ifru.i16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ifr_ifru.i16, align 4
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 174) #19
  %call.i.i23.i = call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i23.i, label %if.then.i24.i.ravb_hwtstamp_set.exit_crit_edge, label %if.end.i.i27.i

if.then.i24.i.ravb_hwtstamp_set.exit_crit_edge:   ; preds = %if.then.i24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_hwtstamp_set.exit

if.end.i.i27.i:                                   ; preds = %if.then.i24.i
  %41 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %40, i32 12, i32 -1226833920) #23, !srcloc !184
  %asmresult.i.i25.i = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i25.i)
  %cmp.i.i26.i = icmp eq i32 %asmresult.i.i25.i, 0
  br i1 %cmp.i.i26.i, label %copy_to_user.exit.i24, label %if.end.i.i27.i.ravb_hwtstamp_set.exit_crit_edge

if.end.i.i27.i.ravb_hwtstamp_set.exit_crit_edge:  ; preds = %if.end.i.i27.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_hwtstamp_set.exit

copy_to_user.exit.i24:                            ; preds = %if.end.i.i27.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i.i28.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config.i15, i32 noundef 12) #19
  %call.i1.i.i.i22 = call i32 @arm_copy_to_user(ptr noundef %40, ptr noundef nonnull %config.i15, i32 noundef 12) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i22)
  %tobool13.not.i = icmp eq i32 %call.i1.i.i.i22, 0
  %spec.select.i23 = select i1 %tobool13.not.i, i32 0, i32 -14
  br label %ravb_hwtstamp_set.exit

ravb_hwtstamp_set.exit:                           ; preds = %copy_to_user.exit.i24, %if.end.i.i27.i.ravb_hwtstamp_set.exit_crit_edge, %if.then.i24.i.ravb_hwtstamp_set.exit_crit_edge, %if.end.i.ravb_hwtstamp_set.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ -34, %if.end.i.ravb_hwtstamp_set.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then.i24.i.ravb_hwtstamp_set.exit_crit_edge ], [ -14, %if.end.i.i27.i.ravb_hwtstamp_set.exit_crit_edge ], [ %spec.select.i23, %copy_to_user.exit.i24 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config.i15) #19
  br label %cleanup

sw.epilog:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  %call7 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %1, ptr noundef %req, i32 noundef %cmd) #19
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %ravb_hwtstamp_set.exit, %ravb_hwtstamp_get.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.epilog ], [ %retval.0.i, %ravb_hwtstamp_set.exit ], [ %17, %ravb_hwtstamp_get.exit ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_change_mtu(ptr noundef %ndev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %emac_irq = getelementptr i8, ptr %ndev, i32 3360
  %3 = ptrtoint ptr %emac_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %emac_irq, align 8
  tail call void @synchronize_irq(i32 noundef %4) #19
  %info1.i = getelementptr i8, ptr %ndev, i32 3392
  %5 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info1.i, align 8
  %emac_init.i = getelementptr inbounds %struct.ravb_hw_info, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %emac_init.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %emac_init.i, align 4
  tail call void %8(ptr noundef %ndev) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @netdev_update_features(ptr noundef %ndev) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_tx_timeout(ptr noundef %ndev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 3352
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %3, i32 896
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #19, !srcloc !173
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.56, i32 noundef %5) #22
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %6 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_errors, align 4
  %work = getelementptr i8, ptr %ndev, i32 3296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ravb_get_stats(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %stats = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36
  %stats2 = getelementptr i8, ptr %ndev, i32 2436
  %tx_counters = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %tx_counters to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %tx_counters, align 8
  %3 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr.i, align 8
  %add.ptr.i124 = getelementptr i8, ptr %5, i32 1792
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #19, !srcloc !173
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %8 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_dropped, align 4
  %add = add i32 %9, %7
  store i32 %add, ptr %tx_dropped, align 4
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i, align 8
  %add.ptr.i126 = getelementptr i8, ptr %11, i32 1792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 0) #19, !srcloc !176
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %tx_counters to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load4 = load i16, ptr %tx_counters, align 8
  %13 = and i16 %bf.load4, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool8.not = icmp eq i16 %13, 0
  br i1 %tobool8.not, label %if.end.if.end14_crit_edge, label %if.then9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i127 = getelementptr i8, ptr %ndev, i32 2312
  %14 = ptrtoint ptr %addr.i127 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i127, align 8
  %add.ptr.i128 = getelementptr i8, ptr %15, i32 1800
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #19, !srcloc !173
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %collisions = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 9
  %18 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %collisions, align 4
  %add11 = add i32 %19, %17
  store i32 %add11, ptr %collisions, align 4
  %20 = ptrtoint ptr %addr.i127 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i127, align 8
  %add.ptr.i130 = getelementptr i8, ptr %21, i32 1800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 0) #19, !srcloc !176
  %22 = ptrtoint ptr %addr.i127 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr.i127, align 8
  %add.ptr.i132 = getelementptr i8, ptr %23, i32 1808
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #19, !srcloc !173
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 17
  %26 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_carrier_errors, align 4
  %add13 = add i32 %27, %25
  store i32 %add13, ptr %tx_carrier_errors, align 4
  %28 = ptrtoint ptr %addr.i127 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr.i127, align 8
  %add.ptr.i134 = getelementptr i8, ptr %29, i32 1808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 0) #19, !srcloc !176
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge
  %30 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stats2, align 4
  %32 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %stats, align 4
  %tx_packets = getelementptr i8, ptr %ndev, i32 2440
  %33 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_packets, align 4
  %tx_packets16 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %35 = ptrtoint ptr %tx_packets16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tx_packets16, align 4
  %rx_bytes = getelementptr i8, ptr %ndev, i32 2444
  %36 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_bytes, align 4
  %rx_bytes17 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 2
  %38 = ptrtoint ptr %rx_bytes17 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %rx_bytes17, align 4
  %tx_bytes = getelementptr i8, ptr %ndev, i32 2448
  %39 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_bytes, align 4
  %tx_bytes18 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %41 = ptrtoint ptr %tx_bytes18 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tx_bytes18, align 4
  %multicast = getelementptr i8, ptr %ndev, i32 2468
  %42 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %multicast, align 4
  %multicast19 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 8
  %44 = ptrtoint ptr %multicast19 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %multicast19, align 4
  %rx_errors = getelementptr i8, ptr %ndev, i32 2452
  %45 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_errors, align 4
  %rx_errors20 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %47 = ptrtoint ptr %rx_errors20 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %rx_errors20, align 4
  %rx_crc_errors = getelementptr i8, ptr %ndev, i32 2484
  %48 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_crc_errors, align 4
  %rx_crc_errors21 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 12
  %50 = ptrtoint ptr %rx_crc_errors21 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %rx_crc_errors21, align 4
  %rx_frame_errors = getelementptr i8, ptr %ndev, i32 2488
  %51 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_frame_errors, align 4
  %rx_frame_errors22 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 13
  %53 = ptrtoint ptr %rx_frame_errors22 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %rx_frame_errors22, align 4
  %rx_length_errors = getelementptr i8, ptr %ndev, i32 2476
  %54 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_length_errors, align 4
  %rx_length_errors23 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 10
  %56 = ptrtoint ptr %rx_length_errors23 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %rx_length_errors23, align 4
  %rx_missed_errors = getelementptr i8, ptr %ndev, i32 2496
  %57 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_missed_errors, align 4
  %rx_missed_errors24 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 15
  %59 = ptrtoint ptr %rx_missed_errors24 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %rx_missed_errors24, align 4
  %rx_over_errors = getelementptr i8, ptr %ndev, i32 2480
  %60 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_over_errors, align 4
  %rx_over_errors25 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 11
  %62 = ptrtoint ptr %rx_over_errors25 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %rx_over_errors25, align 4
  %63 = ptrtoint ptr %tx_counters to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load26 = load i16, ptr %tx_counters, align 8
  %64 = and i16 %bf.load26, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool30.not = icmp eq i16 %64, 0
  br i1 %tobool30.not, label %if.end14.if.end67_crit_edge, label %if.then31

if.end14.if.end67_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end67

if.then31:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx33 = getelementptr i8, ptr %ndev, i32 2528
  %65 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx33, align 4
  %add36 = add i32 %66, %31
  %67 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add36, ptr %stats, align 4
  %tx_packets37 = getelementptr i8, ptr %ndev, i32 2532
  %68 = ptrtoint ptr %tx_packets37 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_packets37, align 4
  %add39 = add i32 %69, %34
  %70 = ptrtoint ptr %tx_packets16 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add39, ptr %tx_packets16, align 4
  %rx_bytes40 = getelementptr i8, ptr %ndev, i32 2536
  %71 = ptrtoint ptr %rx_bytes40 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_bytes40, align 4
  %add42 = add i32 %72, %37
  %73 = ptrtoint ptr %rx_bytes17 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add42, ptr %rx_bytes17, align 4
  %tx_bytes43 = getelementptr i8, ptr %ndev, i32 2540
  %74 = ptrtoint ptr %tx_bytes43 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_bytes43, align 4
  %add45 = add i32 %75, %40
  %76 = ptrtoint ptr %tx_bytes18 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add45, ptr %tx_bytes18, align 4
  %multicast46 = getelementptr i8, ptr %ndev, i32 2560
  %77 = ptrtoint ptr %multicast46 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %multicast46, align 4
  %add48 = add i32 %78, %43
  %79 = ptrtoint ptr %multicast19 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add48, ptr %multicast19, align 4
  %rx_errors49 = getelementptr i8, ptr %ndev, i32 2544
  %80 = ptrtoint ptr %rx_errors49 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_errors49, align 4
  %add51 = add i32 %81, %46
  %82 = ptrtoint ptr %rx_errors20 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add51, ptr %rx_errors20, align 4
  %rx_crc_errors52 = getelementptr i8, ptr %ndev, i32 2576
  %83 = ptrtoint ptr %rx_crc_errors52 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_crc_errors52, align 4
  %add54 = add i32 %84, %49
  %85 = ptrtoint ptr %rx_crc_errors21 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add54, ptr %rx_crc_errors21, align 4
  %rx_frame_errors55 = getelementptr i8, ptr %ndev, i32 2580
  %86 = ptrtoint ptr %rx_frame_errors55 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_frame_errors55, align 4
  %add57 = add i32 %87, %52
  %88 = ptrtoint ptr %rx_frame_errors22 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add57, ptr %rx_frame_errors22, align 4
  %rx_length_errors58 = getelementptr i8, ptr %ndev, i32 2568
  %89 = ptrtoint ptr %rx_length_errors58 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_length_errors58, align 4
  %add60 = add i32 %90, %55
  %91 = ptrtoint ptr %rx_length_errors23 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add60, ptr %rx_length_errors23, align 4
  %rx_missed_errors61 = getelementptr i8, ptr %ndev, i32 2588
  %92 = ptrtoint ptr %rx_missed_errors61 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rx_missed_errors61, align 4
  %add63 = add i32 %93, %58
  %94 = ptrtoint ptr %rx_missed_errors24 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add63, ptr %rx_missed_errors24, align 4
  %rx_over_errors64 = getelementptr i8, ptr %ndev, i32 2572
  %95 = ptrtoint ptr %rx_over_errors64 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_over_errors64, align 4
  %add66 = add i32 %96, %61
  %97 = ptrtoint ptr %rx_over_errors25 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add66, ptr %rx_over_errors25, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then31, %if.end14.if.end67_crit_edge
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_set_features(ptr noundef %ndev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %set_feature = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %set_feature to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_feature, align 4
  %call2 = tail call i32 %3(ptr noundef %ndev, i64 noundef %features) #19
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %dev_id, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %lock = getelementptr i8, ptr %dev_id, i32 2772
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  %addr.i = getelementptr i8, ptr %dev_id, i32 2312
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i, align 8
  %add.ptr.i44 = getelementptr i8, ptr %3, i32 896
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #19, !srcloc !173
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %and = and i32 %5, 261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

if.then:                                          ; preds = %entry
  %call3 = tail call fastcc zeroext i1 @ravb_timestamp_interrupt(ptr noundef %dev_id)
  %spec.select = zext i1 %call3 to i32
  %nc_queues = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %nc_queues to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %nc_queues, align 8
  %7 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool5.not = icmp eq i16 %7, 0
  br i1 %tobool5.not, label %if.else, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %call7 = tail call fastcc zeroext i1 @ravb_queue_interrupt(ptr noundef %dev_id, i32 noundef 1)
  %call7.1 = tail call fastcc zeroext i1 @ravb_queue_interrupt(ptr noundef %dev_id, i32 noundef 0)
  %8 = select i1 %call7.1, i1 true, i1 %call7
  %spec.select42.1 = select i1 %8, i32 1, i32 %spec.select
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %call10 = tail call fastcc zeroext i1 @ravb_queue_interrupt(ptr noundef %dev_id, i32 noundef 0)
  %spec.select43 = select i1 %call10, i32 1, i32 %spec.select
  br label %if.end14

if.end14:                                         ; preds = %if.else, %for.body.preheader, %entry.if.end14_crit_edge
  %result.4 = phi i32 [ 0, %entry.if.end14_crit_edge ], [ %spec.select43, %if.else ], [ %spec.select42.1, %for.body.preheader ]
  %and15 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @ravb_emac_interrupt_unlocked(ptr noundef %dev_id)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %result.5 = phi i32 [ 1, %if.then17 ], [ %result.4, %if.end14.if.end18_crit_edge ]
  %and19 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @ravb_error_interrupt(ptr noundef %dev_id)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %result.6 = phi i32 [ 1, %if.then21 ], [ %result.5, %if.end18.if.end22_crit_edge ]
  %and23 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end26_crit_edge, label %if.then25

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ravb_ptp_interrupt(ptr noundef %dev_id) #19
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  %result.7 = phi i32 [ 1, %if.then25 ], [ %result.6, %if.end22.if.end26_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  ret i32 %result.7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ravb_hook_irq(i32 noundef %irq, ptr noundef %handler, ptr noundef %ndev, ptr noundef %dev, ptr noundef %ch) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.41, ptr noundef %ndev, ptr noundef %ch) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef %handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call, ptr noundef %ndev) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.42, ptr noundef nonnull %call) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_multi_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev_id, i32 2772
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  %addr.i = getelementptr i8, ptr %dev_id, i32 2312
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 8
  %add.ptr.i19 = getelementptr i8, ptr %1, i32 896
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #19, !srcloc !173
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call2 = tail call fastcc zeroext i1 @ravb_timestamp_interrupt(ptr noundef %dev_id)
  %spec.select = zext i1 %call2 to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %result.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %and3 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @ravb_error_interrupt(ptr noundef %dev_id)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %result.1 = phi i32 [ 1, %if.then5 ], [ %result.0, %if.end.if.end6_crit_edge ]
  %and7 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ravb_ptp_interrupt(ptr noundef %dev_id) #19
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %result.2 = phi i32 [ 1, %if.then9 ], [ %result.1, %if.end6.if.end10_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  ret i32 %result.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_emac_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev_id, i32 2772
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  tail call fastcc void @ravb_emac_interrupt_unlocked(ptr noundef %dev_id)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_be_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr i8, ptr %dev_id, i32 2772
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #19
  %call1.i = tail call fastcc zeroext i1 @ravb_queue_interrupt(ptr noundef %dev_id, i32 noundef 0) #19
  %spec.select.i = zext i1 %call1.i to i32
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #19
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_nc_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr i8, ptr %dev_id, i32 2772
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #19
  %call1.i = tail call fastcc zeroext i1 @ravb_queue_interrupt(ptr noundef %dev_id, i32 noundef 1) #19
  %spec.select.i = zext i1 %call1.i to i32
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #19
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ravb_timestamp_interrupt(ptr noundef readonly %ndev) unnamed_addr #0 align 64 {
entry:
  %shhwtstamps.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 892
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 892
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 252579584) #19, !srcloc !176
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps.i) #19
  %6 = ptrtoint ptr %shhwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %shhwtstamps.i, align 8, !annotation !177
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr.i, align 8
  %add.ptr.i47.i = getelementptr i8, ptr %8, i32 776
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #19, !srcloc !173
  %10 = lshr i32 %9, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %shr.i = and i32 %10, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not60.i = icmp eq i32 %shr.i, 0
  br i1 %tobool.not60.i, label %if.then.ravb_get_tx_tstamp.exit_crit_edge, label %while.body.lr.ph.i

if.then.ravb_get_tx_tstamp.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_get_tx_tstamp.exit

while.body.lr.ph.i:                               ; preds = %if.then
  %ts_skb_list.i = getelementptr i8, ptr %ndev, i32 2628
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec62.in.i = phi i32 [ %shr.i, %while.body.lr.ph.i ], [ %dec62.i, %for.end.i.while.body.i_crit_edge ]
  %dec62.i = add nsw i32 %dec62.in.i, -1
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr.i, align 8
  %add.ptr.i49.i = getelementptr i8, ptr %12, i32 792
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i) #19, !srcloc !173
  %14 = call i32 @llvm.bswap.i32(i32 %13) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %and3.i = lshr i32 %14, 16
  %conv.i = and i32 %and3.i, 1023
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr.i, align 8
  %add.ptr.i51.i = getelementptr i8, ptr %16, i32 784
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i) #19, !srcloc !173
  %18 = call i32 @llvm.bswap.i32(i32 %17) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %conv6.i = zext i32 %18 to i64
  %and8.i = and i32 %14, 65535
  %conv9.i = zext i32 %and8.i to i64
  %shl.i = shl nuw nsw i64 %conv9.i, 32
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr.i, align 8
  %add.ptr.i53.i = getelementptr i8, ptr %20, i32 788
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i) #19, !srcloc !173
  %22 = call i32 @llvm.bswap.i32(i32 %21) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %conv11.i = zext i32 %22 to i64
  %or.i = or i64 %shl.i, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %or.i)
  %cmp.i.i.i = icmp ugt i64 %or.i, 9223372035
  %mul.i.i.i = mul i64 %or.i, 1000000000
  %add.i.i.i = add i64 %mul.i.i.i, %conv6.i
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i64 9223372036854775807, i64 %add.i.i.i, !prof !180
  %23 = ptrtoint ptr %shhwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %retval.0.i.i.i, ptr %shhwtstamps.i, align 8
  %24 = ptrtoint ptr %ts_skb_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ts_skb_list.i, align 4
  %cmp.not55.i = icmp eq ptr %25, %ts_skb_list.i
  br i1 %cmp.not55.i, label %while.body.i.for.end.i_crit_edge, label %while.body.i.for.body.i_crit_edge

while.body.i.for.body.i_crit_edge:                ; preds = %while.body.i
  br label %for.body.i

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.i:                                       ; preds = %if.else.i.for.body.i_crit_edge, %while.body.i.for.body.i_crit_edge
  %ts_skb.056.i = phi ptr [ %ts_skb2.058.i, %if.else.i.for.body.i_crit_edge ], [ %25, %while.body.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %ts_skb.056.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %ts_skb2.058.i = load ptr, ptr %ts_skb.056.i, align 4
  %skb20.i = getelementptr inbounds %struct.ravb_tstamp_skb, ptr %ts_skb.056.i, i32 0, i32 1
  %27 = ptrtoint ptr %skb20.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb20.i, align 4
  %tag21.i = getelementptr inbounds %struct.ravb_tstamp_skb, ptr %ts_skb.056.i, i32 0, i32 2
  %29 = ptrtoint ptr %tag21.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tag21.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %ts_skb.056.i) #19
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ts_skb.056.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %ts_skb.056.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ts_skb.056.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %37 = ptrtoint ptr %ts_skb.056.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %ts_skb.056.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ts_skb.056.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %ts_skb.056.i) #19
  %conv23.i = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv23.i)
  %cmp25.i = icmp eq i32 %conv.i, %conv23.i
  br i1 %cmp25.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @skb_tstamp_tx(ptr noundef %28, ptr noundef nonnull %shhwtstamps.i) #19
  call void @__dev_kfree_skb_any(ptr noundef %28, i32 noundef 0) #19
  br label %for.end.i

if.else.i:                                        ; preds = %list_del.exit.i
  call void @__dev_kfree_skb_any(ptr noundef %28, i32 noundef 1) #19
  %cmp.not.i = icmp eq ptr %ts_skb2.058.i, %ts_skb_list.i
  br i1 %cmp.not.i, label %if.else.i.for.end.i_crit_edge, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.end.i:                                        ; preds = %if.else.i.for.end.i_crit_edge, %if.then.i, %while.body.i.for.end.i_crit_edge
  %39 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %addr.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 772
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %42 = or i32 %41, 131072
  %43 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %addr.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %44, i32 772
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  call void @arm_heavy_mb() #19
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %42) #19, !srcloc !176
  %tobool.not.i = icmp eq i32 %dec62.i, 0
  br i1 %tobool.not.i, label %for.end.i.ravb_get_tx_tstamp.exit_crit_edge, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i

for.end.i.ravb_get_tx_tstamp.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_get_tx_tstamp.exit

ravb_get_tx_tstamp.exit:                          ; preds = %for.end.i.ravb_get_tx_tstamp.exit_crit_edge, %if.then.ravb_get_tx_tstamp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps.i) #19
  br label %cleanup

cleanup:                                          ; preds = %ravb_get_tx_tstamp.exit, %entry.cleanup_crit_edge
  %45 = xor i1 %tobool.not, true
  ret i1 %45
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ravb_queue_interrupt(ptr noundef %ndev, i32 noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i, align 8
  %add.ptr.i57 = getelementptr i8, ptr %3, i32 868
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #19, !srcloc !173
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i, align 8
  %add.ptr.i59 = getelementptr i8, ptr %7, i32 864
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #19, !srcloc !173
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i, align 8
  %add.ptr.i61 = getelementptr i8, ptr %11, i32 892
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #19, !srcloc !173
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i, align 8
  %add.ptr.i63 = getelementptr i8, ptr %15, i32 888
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #19, !srcloc !173
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %shl = shl nuw i32 1, %q
  %and = and i32 %5, %shl
  %and6 = and i32 %and, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %and7 = and i32 %13, %shl
  %and9 = and i32 %and7, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 33, i32 %q
  %call11 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx) #19
  br i1 %call11, label %if.then12, label %if.else24

if.then12:                                        ; preds = %if.then
  %multi_irqs = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %multi_irqs to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %multi_irqs, align 8
  %19 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool13.not = icmp eq i16 %19, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21
  %neg = xor i32 %shl, -1
  %and16 = and i32 %9, %neg
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %21, i32 864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %22 = tail call i32 @llvm.bswap.i32(i32 %and16) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %22) #19, !srcloc !176
  %and19 = and i32 %17, %neg
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addr.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %24, i32 888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %25 = tail call i32 @llvm.bswap.i32(i32 %and19) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %25) #19, !srcloc !176
  br label %if.end

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr.i, align 8
  %add.ptr.i69 = getelementptr i8, ptr %27, i32 1124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %28 = tail call i32 @llvm.bswap.i32(i32 %shl) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %28) #19, !srcloc !176
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr.i, align 8
  %add.ptr.i71 = getelementptr i8, ptr %30, i32 1148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %28) #19, !srcloc !176
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  tail call void @__napi_schedule(ptr noundef %arrayidx) #19
  br label %cleanup

if.else24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %ndev, ptr noundef nonnull @.str.39, i32 noundef %5, i32 noundef %9) #22
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %ndev, ptr noundef nonnull @.str.40, i32 noundef %13, i32 noundef %17) #22
  br label %cleanup

cleanup:                                          ; preds = %if.else24, %if.end, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.else24 ], [ true, %if.end ], [ false, %lor.lhs.false.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ravb_emac_interrupt_unlocked(ptr nocapture noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 8
  %add.ptr.i38 = getelementptr i8, ptr %1, i32 1296
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #19, !srcloc !173
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr.i, align 8
  %add.ptr.i40 = getelementptr i8, ptr %5, i32 1296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %2) #19, !srcloc !176
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %pdev = getelementptr i8, ptr %ndev, i32 2308
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void @pm_wakeup_dev_event(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext false) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 17
  %8 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_carrier_errors, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_carrier_errors, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %and6 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  %no_avb_link = getelementptr i8, ptr %ndev, i32 3380
  %10 = ptrtoint ptr %no_avb_link to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %no_avb_link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool9.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool9.not, label %if.end11, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr.i, align 8
  %add.ptr.i42 = getelementptr i8, ptr %12, i32 1320
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #19, !srcloc !173
  %14 = lshr i32 %13, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %15 = ptrtoint ptr %no_avb_link to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load13 = load i8, ptr %no_avb_link, align 4
  %16 = lshr i8 %bf.load13, 6
  %17 = zext i8 %16 to i32
  %spec.select = xor i32 %14, %17
  %and19 = and i32 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 1280
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %21 = and i32 %20, -1610612737
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %23, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %21) #19, !srcloc !176
  br label %cleanup

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %24 = or i32 %20, 1610612736
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr.i, align 8
  %add.ptr.i4.i.i45 = getelementptr i8, ptr %26, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i45, i32 %24) #19, !srcloc !176
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then21, %if.then8.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ravb_error_interrupt(ptr nocapture noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 8
  %add.ptr.i28 = getelementptr i8, ptr %1, i32 860
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr.i, align 8
  %add.ptr.i30 = getelementptr i8, ptr %4, i32 860
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 -16318464) #19, !srcloc !176
  %5 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i, align 8
  %add.ptr.i32 = getelementptr i8, ptr %7, i32 884
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #19, !srcloc !173
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i, align 8
  %add.ptr.i34 = getelementptr i8, ptr %11, i32 884
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 -16841984) #19, !srcloc !176
  %and3 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %rx_over_errors = getelementptr i8, ptr %ndev, i32 2480
  %12 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %and6 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %rx_over_errors11 = getelementptr i8, ptr %ndev, i32 2572
  %14 = ptrtoint ptr %rx_over_errors11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_over_errors11, align 4
  %inc12 = add i32 %15, 1
  store i32 %inc12, ptr %rx_over_errors11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool15.not = icmp sgt i32 %9, -1
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  %rx_fifo_errors = getelementptr i8, ptr %ndev, i32 2432
  %16 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_fifo_errors, align 8
  %inc17 = add i32 %17, 1
  store i32 %inc17, ptr %rx_fifo_errors, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ravb_ptp_interrupt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_adjust_link(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %phydev2 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev2, align 16
  %lock = getelementptr i8, ptr %ndev, i32 2772
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #19
  %no_avb_link = getelementptr i8, ptr %ndev, i32 3380
  %4 = ptrtoint ptr %no_avb_link to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %no_avb_link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i.i.i = getelementptr i8, ptr %ndev, i32 2312
  %5 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 1280
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %8 = and i32 %7, -1610612737
  %9 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %10, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %8) #19, !srcloc !176
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %link = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load8 = load i16, ptr %link, align 8
  %12 = and i16 %bf.load8, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool11.not = icmp eq i16 %12, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  %half_duplex = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %half_duplex to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load13 = load i16, ptr %half_duplex, align 8
  %14 = and i16 %bf.load13, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool17.not = icmp eq i16 %14, 0
  br i1 %tobool17.not, label %if.then12.if.end24_crit_edge, label %land.lhs.true

if.then12.if.end24_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

land.lhs.true:                                    ; preds = %if.then12
  %duplex = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %duplex, align 4
  %duplex18 = getelementptr i8, ptr %ndev, i32 3388
  %17 = ptrtoint ptr %duplex18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %duplex18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp19.not = icmp eq i32 %16, %18
  br i1 %cmp19.not, label %land.lhs.true.if.end24_crit_edge, label %if.then21

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %19 = ptrtoint ptr %duplex18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %duplex18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp sgt i32 %16, 0
  %cond.i = select i1 %cmp.i, i32 2, i32 0
  %addr.i.i.i110 = getelementptr i8, ptr %ndev, i32 2312
  %20 = ptrtoint ptr %addr.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i.i.i110, align 8
  %add.ptr.i.i.i111 = getelementptr i8, ptr %21, i32 1280
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i111) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %23 = and i32 %22, -33554433
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #19
  %or.i.i = or i32 %24, %cond.i
  %25 = ptrtoint ptr %addr.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr.i.i.i110, align 8
  %add.ptr.i4.i.i112 = getelementptr i8, ptr %26, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i112, i32 %27) #19, !srcloc !176
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %land.lhs.true.if.end24_crit_edge, %if.then12.if.end24_crit_edge
  %new_state.0 = phi i1 [ true, %if.then21 ], [ false, %land.lhs.true.if.end24_crit_edge ], [ false, %if.then12.if.end24_crit_edge ]
  %speed = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %28 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %speed, align 8
  %speed25 = getelementptr i8, ptr %ndev, i32 3356
  %30 = ptrtoint ptr %speed25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %speed25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp26.not = icmp eq i32 %29, %31
  br i1 %cmp26.not, label %if.end24.if.end31_crit_edge, label %if.then28

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  %32 = ptrtoint ptr %speed25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %speed25, align 4
  %set_rate = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %set_rate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_rate, align 8
  tail call void %34(ptr noundef %ndev) #19
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end24.if.end31_crit_edge
  %new_state.1 = phi i1 [ true, %if.then28 ], [ %new_state.0, %if.end24.if.end31_crit_edge ]
  %link32 = getelementptr i8, ptr %ndev, i32 3344
  %35 = ptrtoint ptr %link32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %link32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool33.not = icmp eq i32 %36, 0
  br i1 %tobool33.not, label %if.then34, label %if.end31.if.end57_crit_edge

if.end31.if.end57_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end57

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i.i = getelementptr i8, ptr %ndev, i32 2312
  %37 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 1280
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %40 = and i32 %39, -257
  %41 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %42, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %40) #19, !srcloc !176
  %43 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load36 = load i16, ptr %link, align 8
  %bf.lshr37 = lshr i16 %bf.load36, 2
  %bf.clear38 = and i16 %bf.lshr37, 1
  %bf.cast39 = zext i16 %bf.clear38 to i32
  %44 = ptrtoint ptr %link32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %bf.cast39, ptr %link32, align 8
  br label %if.end57

if.else:                                          ; preds = %if.end
  %link42 = getelementptr i8, ptr %ndev, i32 3344
  %45 = ptrtoint ptr %link42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %link42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool43.not = icmp eq i32 %46, 0
  br i1 %tobool43.not, label %if.else.if.end57_crit_edge, label %if.then44

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end57

if.then44:                                        ; preds = %if.else
  %47 = ptrtoint ptr %link42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %link42, align 8
  %speed46 = getelementptr i8, ptr %ndev, i32 3356
  %48 = ptrtoint ptr %speed46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %speed46, align 4
  %half_duplex47 = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %49 = ptrtoint ptr %half_duplex47 to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load48 = load i16, ptr %half_duplex47, align 8
  %50 = and i16 %bf.load48, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool52.not = icmp eq i16 %50, 0
  br i1 %tobool52.not, label %if.then44.if.end57_crit_edge, label %if.then53

if.then44.if.end57_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end57

if.then53:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #21
  %duplex54 = getelementptr i8, ptr %ndev, i32 3388
  %51 = ptrtoint ptr %duplex54 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %duplex54, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.then44.if.end57_crit_edge, %if.else.if.end57_crit_edge, %if.then34, %if.end31.if.end57_crit_edge
  %new_state.2.off0 = phi i1 [ %new_state.1, %if.end31.if.end57_crit_edge ], [ true, %if.then34 ], [ true, %if.then53 ], [ true, %if.then44.if.end57_crit_edge ], [ false, %if.else.if.end57_crit_edge ]
  %52 = ptrtoint ptr %no_avb_link to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load59 = load i8, ptr %no_avb_link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load59)
  %tobool62.not = icmp sgt i8 %bf.load59, -1
  br i1 %tobool62.not, label %if.end57.if.end71_crit_edge, label %land.lhs.true63

if.end57.if.end71_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

land.lhs.true63:                                  ; preds = %if.end57
  %53 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load65 = load i16, ptr %link, align 8
  %54 = and i16 %bf.load65, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool69.not = icmp eq i16 %54, 0
  br i1 %tobool69.not, label %land.lhs.true63.if.end71_crit_edge, label %if.then70

land.lhs.true63.if.end71_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

if.then70:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i.i.i113 = getelementptr i8, ptr %ndev, i32 2312
  %55 = ptrtoint ptr %addr.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %addr.i.i.i113, align 8
  %add.ptr.i.i.i114 = getelementptr i8, ptr %56, i32 1280
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i114) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %58 = or i32 %57, 1610612736
  %59 = ptrtoint ptr %addr.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %addr.i.i.i113, align 8
  %add.ptr.i4.i.i115 = getelementptr i8, ptr %60, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i115, i32 %58) #19, !srcloc !176
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %land.lhs.true63.if.end71_crit_edge, %if.end57.if.end71_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #19
  br i1 %new_state.2.off0, label %land.lhs.true75, label %if.end71.if.end78_crit_edge

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end78

land.lhs.true75:                                  ; preds = %if.end71
  %msg_enable = getelementptr i8, ptr %ndev, i32 3352
  %61 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable, align 8
  %and = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %land.lhs.true75.if.end78_crit_edge, label %if.then77

land.lhs.true75.if.end78_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end78

if.then77:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @phy_print_status(ptr noundef %3) #19
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %land.lhs.true75.if.end78_crit_edge, %if.end71.if.end78_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_remove_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_get(ptr noundef returned %skb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %users = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #19
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #19, !srcloc !189
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !180

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !181

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #19
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret ptr %skb
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_tx_timestamp(ptr noundef %skb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #19
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_flags, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ravb_get_wol(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %wol) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %supported, align 4
  %wol_enabled = getelementptr i8, ptr %ndev, i32 3380
  %1 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %wol_enabled, align 4
  %2 = and i8 %bf.load, 32
  %3 = zext i8 %2 to i32
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %wolopts, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_set_wol(ptr nocapture noundef %ndev, ptr nocapture noundef readonly %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %magic_pkt = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %magic_pkt to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %magic_pkt, align 8
  %3 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts, align 4
  %and = and i32 %5, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  %wol_enabled = getelementptr i8, ptr %ndev, i32 3380
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 32
  %8 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load7 = load i8, ptr %wol_enabled, align 4
  %bf.clear8 = and i8 %bf.load7, -33
  %bf.set = or i8 %bf.clear8, %7
  store i8 %bf.set, ptr %wol_enabled, align 4
  %pdev = getelementptr i8, ptr %ndev, i32 2308
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool14 = icmp ne i8 %7, 0
  %call15 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool14) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ravb_get_msglevel(ptr nocapture noundef readonly %ndev) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 3352
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ravb_set_msglevel(ptr nocapture noundef writeonly %ndev, i32 noundef %value) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 3352
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ravb_get_ringparam(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2048, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1024, ptr %tx_max_pending, align 4
  %num_rx_ring = getelementptr i8, ptr %ndev, i32 2336
  %2 = ptrtoint ptr %num_rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx_ring, align 8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pending, align 4
  %num_tx_ring = getelementptr i8, ptr %ndev, i32 2344
  %5 = ptrtoint ptr %num_tx_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_tx_ring, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_set_ringparam(ptr noundef %ndev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %2 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp = icmp ugt i32 %3, 1024
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %cmp2 = icmp ugt i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp5 = icmp ult i32 %3, 64
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp5
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp8 = icmp ult i32 %5, 64
  %or.cond81 = or i1 %cmp8, %or.cond
  br i1 %or.cond81, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %6 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.end12, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false9
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end12.if.end29_crit_edge, label %if.then14

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29

if.then14:                                        ; preds = %if.end12
  tail call void @netif_device_detach(ptr noundef %ndev) #19
  %gptp = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %gptp, align 8
  %13 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool15.not = icmp eq i16 %13, 0
  br i1 %tobool15.not, label %if.then14.if.end17_crit_edge, label %if.then16

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ravb_ptp_stop(ptr noundef %ndev) #19
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14.if.end17_crit_edge
  %call18 = tail call fastcc i32 @ravb_stop_dma(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.57) #22
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %15) #19
  tail call fastcc void @ravb_ring_free(ptr noundef %ndev, i32 noundef 0)
  %16 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load22 = load i16, ptr %gptp, align 8
  %17 = and i16 %bf.load22, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool26.not = icmp eq i16 %17, 0
  br i1 %tobool26.not, label %if.end21.if.end29_crit_edge, label %if.then27

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @ravb_ring_free(ptr noundef %ndev, i32 noundef 1)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end21.if.end29_crit_edge, %if.end12.if.end29_crit_edge
  %18 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_pending, align 4
  %num_rx_ring = getelementptr i8, ptr %ndev, i32 2336
  %20 = ptrtoint ptr %num_rx_ring to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %num_rx_ring, align 8
  %21 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_pending, align 4
  %num_tx_ring = getelementptr i8, ptr %ndev, i32 2344
  %23 = ptrtoint ptr %num_tx_ring to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %num_tx_ring, align 8
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i, align 4
  %and1.i.i83 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i83)
  %tobool.i84.not = icmp eq i32 %and1.i.i83, 0
  br i1 %tobool.i84.not, label %if.end29.cleanup_crit_edge, label %if.then34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then34:                                        ; preds = %if.end29
  %call35 = tail call fastcc i32 @ravb_dmac_init(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.ravb_set_ringparam, i32 noundef %call35) #22
  br label %cleanup

if.end38:                                         ; preds = %if.then34
  %26 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info1, align 8
  %emac_init.i = getelementptr inbounds %struct.ravb_hw_info, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %emac_init.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %emac_init.i, align 4
  tail call void %29(ptr noundef %ndev) #19
  %gptp39 = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %30 = ptrtoint ptr %gptp39 to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load40 = load i16, ptr %gptp39, align 8
  %31 = and i16 %bf.load40, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool44.not = icmp eq i16 %31, 0
  br i1 %tobool44.not, label %if.end38.if.end46_crit_edge, label %if.then45

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end46

if.then45:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  %pdev = getelementptr i8, ptr %ndev, i32 2308
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 4
  tail call void @ravb_ptp_init(ptr noundef %ndev, ptr noundef %33) #19
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end38.if.end46_crit_edge
  tail call void @netif_device_attach(ptr noundef %ndev) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then37, %if.end29.cleanup_crit_edge, %if.then20, %lor.lhs.false9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then20 ], [ %call35, %if.then37 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end46 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ravb_get_strings(ptr nocapture noundef readonly %ndev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %gstrings_stats = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gstrings_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gstrings_stats, align 8
  %gstrings_size = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %gstrings_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gstrings_size, align 4
  %6 = call ptr @memcpy(ptr %data, ptr %3, i32 %5)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_get_ethtool_stats(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readnone %estats, ptr nocapture noundef writeonly %data) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %nc_queues = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %nc_queues to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %nc_queues, align 8
  %3 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %q.0101 = phi i32 [ 0, %entry ], [ %inc50, %for.body.for.body_crit_edge ]
  %i.0100 = phi i32 [ 0, %entry ], [ %inc48, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q.0101
  %arrayidx3 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 29, i32 %q.0101
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %conv = zext i32 %5 to i64
  %inc = add nuw nsw i32 %i.0100, 1
  %arrayidx4 = getelementptr i64, ptr %data, i32 %i.0100
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %arrayidx4, align 8
  %arrayidx5 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 31, i32 %q.0101
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx5, align 4
  %conv6 = zext i32 %8 to i64
  %inc7 = add nuw nsw i32 %i.0100, 2
  %arrayidx8 = getelementptr i64, ptr %data, i32 %inc
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv6, ptr %arrayidx8, align 8
  %arrayidx9 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 30, i32 %q.0101
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  %conv10 = zext i32 %11 to i64
  %inc11 = add nuw nsw i32 %i.0100, 3
  %arrayidx12 = getelementptr i64, ptr %data, i32 %inc7
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv10, ptr %arrayidx12, align 8
  %arrayidx13 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 32, i32 %q.0101
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx13, align 4
  %conv14 = zext i32 %14 to i64
  %inc15 = add nuw nsw i32 %i.0100, 4
  %arrayidx16 = getelementptr i64, ptr %data, i32 %inc11
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv14, ptr %arrayidx16, align 8
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %conv17 = zext i32 %17 to i64
  %inc18 = add nuw nsw i32 %i.0100, 5
  %arrayidx19 = getelementptr i64, ptr %data, i32 %inc15
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv17, ptr %arrayidx19, align 8
  %tx_packets = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q.0101, i32 1
  %19 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_packets, align 4
  %conv20 = zext i32 %20 to i64
  %inc21 = add nuw nsw i32 %i.0100, 6
  %arrayidx22 = getelementptr i64, ptr %data, i32 %inc18
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv20, ptr %arrayidx22, align 8
  %rx_bytes = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q.0101, i32 2
  %22 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_bytes, align 4
  %conv23 = zext i32 %23 to i64
  %inc24 = add nuw nsw i32 %i.0100, 7
  %arrayidx25 = getelementptr i64, ptr %data, i32 %inc21
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv23, ptr %arrayidx25, align 8
  %tx_bytes = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q.0101, i32 3
  %25 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_bytes, align 4
  %conv26 = zext i32 %26 to i64
  %inc27 = add nuw nsw i32 %i.0100, 8
  %arrayidx28 = getelementptr i64, ptr %data, i32 %inc24
  %27 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv26, ptr %arrayidx28, align 8
  %multicast = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q.0101, i32 8
  %28 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %multicast, align 4
  %conv29 = zext i32 %29 to i64
  %inc30 = add nuw nsw i32 %i.0100, 9
  %arrayidx31 = getelementptr i64, ptr %data, i32 %inc27
  %30 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv29, ptr %arrayidx31, align 8
  %rx_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q.0101, i32 4
  %31 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_errors, align 4
  %conv32 = zext i32 %32 to i64
  %inc33 = add nuw nsw i32 %i.0100, 10
  %arrayidx34 = getelementptr i64, ptr %data, i32 %inc30
  %33 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv32, ptr %arrayidx34, align 8
  %rx_crc_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q.0101, i32 12
  %34 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_crc_errors, align 4
  %conv35 = zext i32 %35 to i64
  %inc36 = add nuw nsw i32 %i.0100, 11
  %arrayidx37 = getelementptr i64, ptr %data, i32 %inc33
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv35, ptr %arrayidx37, align 8
  %rx_frame_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q.0101, i32 13
  %37 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_frame_errors, align 4
  %conv38 = zext i32 %38 to i64
  %inc39 = add nuw nsw i32 %i.0100, 12
  %arrayidx40 = getelementptr i64, ptr %data, i32 %inc36
  %39 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv38, ptr %arrayidx40, align 8
  %rx_length_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q.0101, i32 10
  %40 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_length_errors, align 4
  %conv41 = zext i32 %41 to i64
  %inc42 = add nuw nsw i32 %i.0100, 13
  %arrayidx43 = getelementptr i64, ptr %data, i32 %inc39
  %42 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv41, ptr %arrayidx43, align 8
  %rx_missed_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q.0101, i32 15
  %43 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_missed_errors, align 4
  %conv44 = zext i32 %44 to i64
  %inc45 = add nuw nsw i32 %i.0100, 14
  %arrayidx46 = getelementptr i64, ptr %data, i32 %inc42
  %45 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv44, ptr %arrayidx46, align 8
  %rx_over_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q.0101, i32 11
  %46 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_over_errors, align 4
  %conv47 = zext i32 %47 to i64
  %inc48 = add nuw nsw i32 %i.0100, 15
  %arrayidx49 = getelementptr i64, ptr %data, i32 %inc45
  %48 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv47, ptr %arrayidx49, align 8
  %inc50 = add nuw nsw i32 %q.0101, 1
  %exitcond.not = icmp eq i32 %inc50, %cond
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ravb_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %sset) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %info1 = getelementptr i8, ptr %netdev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %stats_len = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %stats_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stats_len, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_get_ts_info(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 95, ptr %so_timestamping, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 515, ptr %rx_filters, align 4
  %gptp = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %gptp, align 8
  %6 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %ptp = getelementptr i8, ptr %ndev, i32 2640
  %8 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp, align 8
  %call7 = tail call i32 @ptp_clock_index(ptr noundef %9) #19
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call7, ptr %phc_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_mdio_bitbang(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_mdio_bitbang(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_set_mdc(ptr nocapture noundef readonly %ctrl, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ctrl, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %tobool.not.i = icmp ne i32 %level, 0
  %spec.select.i = zext i1 %tobool.not.i to i32
  %addr.i.i.i = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 1312
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %5 = and i32 %4, -16777217
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or.i.i = or i32 %6, %spec.select.i
  %7 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %8, i32 1312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %9) #19, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_set_mdio_dir(ptr nocapture noundef readonly %ctrl, i32 noundef %output) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ctrl, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %output)
  %tobool.not.i = icmp eq i32 %output, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 2
  %addr.i.i.i = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 1312
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %5 = and i32 %4, -33554433
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or.i.i = or i32 %6, %spec.select.i
  %7 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %8, i32 1312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %9) #19, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_set_mdio_data(ptr nocapture noundef readonly %ctrl, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ctrl, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 4
  %addr.i.i.i = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 1312
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %5 = and i32 %4, -67108865
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or.i.i = or i32 %6, %spec.select.i
  %7 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %8, i32 1312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %9) #19, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_get_mdio_data(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ctrl, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %addr.i = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1312
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #19, !srcloc !173
  %5 = lshr i32 %4, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %and.lobit = and i32 %5, 1
  ret i32 %and.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_rx_ring_free_rcar(ptr nocapture noundef %ndev, i32 noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 14, i32 %q
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %arrayidx1 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 6, i32 %q
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp41.not = icmp eq i32 %3, 0
  br i1 %cmp41.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %dptr = getelementptr %struct.ravb_ex_rx_desc, ptr %5, i32 %i.042, i32 3
  %8 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dptr, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef %10) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not = icmp eq i32 %9, -1
  br i1 %cmp.i.not, label %for.body.if.end11_crit_edge, label %if.then7

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %13 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dptr, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %15, i32 noundef 2046, i32 noundef 2, i32 noundef 0) #19
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %for.body.if.end11_crit_edge
  %inc = add nuw i32 %i.042, 1
  %16 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %for.end.loopexit

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %phi.bo = mul i32 %17, 20
  %phi.bo44 = add i32 %phi.bo, 20
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 20, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo44, %for.end.loopexit ]
  %parent15 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %18 = ptrtoint ptr %parent15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent15, align 8
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %arrayidx18 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 11, i32 %q
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx18, align 4
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef %.lcssa, ptr noundef %21, i32 noundef %23, i32 noundef 0) #19
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_rx_ring_format_rcar(ptr nocapture noundef readonly %ndev, i32 noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 6, i32 %q
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %1, 20
  %arrayidx1 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 14, i32 %q
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 %mul)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp52.not = icmp eq i32 %5, 0
  br i1 %cmp52.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %arrayidx7 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 18, i32 %q
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %arrayidx6 = getelementptr %struct.ravb_ex_rx_desc, ptr %7, i32 %i.053
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -505, ptr %arrayidx6, align 4
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr ptr, ptr %12, i32 %i.053
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx8, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %16) #19
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %for.body
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !181

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %10) #19
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %10, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #19
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %22, i32 noundef -1) #19
  br label %if.then

dma_map_single_attrs.exit:                        ; preds = %for.body
  tail call void @debug_dma_map_single(ptr noundef %10, ptr noundef %16, i32 noundef 2046) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %16 to i32
  %sub.i = add i32 %24, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i44 = getelementptr %struct.page, ptr %23, i32 %shr.i
  %and.i = and i32 %24, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %10, ptr noundef %add.ptr.i44, i32 noundef %and.i, i32 noundef 2046, i32 noundef 2, i32 noundef 0) #19
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %26, i32 noundef %call41.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then_crit_edge, label %dma_map_single_attrs.exit.if.end_crit_edge

dma_map_single_attrs.exit.if.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

dma_map_single_attrs.exit.if.then_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

if.then:                                          ; preds = %dma_map_single_attrs.exit.if.then_crit_edge, %dma_map_single_attrs.exit.thread
  %27 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %dma_map_single_attrs.exit.if.end_crit_edge
  %retval.0.i4751 = phi i32 [ -1, %if.then ], [ %call41.i, %dma_map_single_attrs.exit.if.end_crit_edge ]
  %28 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i4751)
  %dptr = getelementptr %struct.ravb_ex_rx_desc, ptr %7, i32 %i.053, i32 3
  %29 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dptr, align 4
  %die_dt = getelementptr %struct.ravb_ex_rx_desc, ptr %7, i32 %i.053, i32 2
  %30 = ptrtoint ptr %die_dt to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -64, ptr %die_dt, align 1
  %inc = add nuw i32 %i.053, 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %if.end.for.end_crit_edge ]
  %33 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx1, align 4
  %arrayidx17 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 11, i32 %q
  %35 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx17, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %dptr18 = getelementptr %struct.ravb_ex_rx_desc, ptr %34, i32 %i.0.lcssa, i32 3
  %38 = ptrtoint ptr %dptr18 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dptr18, align 4
  %die_dt19 = getelementptr %struct.ravb_ex_rx_desc, ptr %34, i32 %i.0.lcssa, i32 2
  %39 = ptrtoint ptr %die_dt19 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -112, ptr %die_dt19, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ravb_alloc_rx_desc_rcar(ptr noundef %ndev, i32 noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 6, i32 %q
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = mul i32 %1, 20
  %mul = add i32 %2, 20
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %arrayidx1 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 11, i32 %q
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef %mul, ptr noundef %arrayidx1, i32 noundef 3264, i32 noundef 0) #19
  %arrayidx3 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 14, i32 %q
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %arrayidx3, align 4
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ravb_rx_rcar(ptr noundef %ndev, ptr nocapture noundef %quota, i32 noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 29, i32 %q
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 6, i32 %q
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %rem = urem i32 %3, %5
  %arrayidx4 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 30, i32 %q
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %add = sub i32 %5, %3
  %sub = add i32 %add, %7
  %arrayidx10 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q
  %8 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quota, align 4
  %10 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %9)
  %arrayidx11 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 14, i32 %q
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr %struct.ravb_ex_rx_desc, ptr %12, i32 %rem
  %multicast = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 8
  %rx_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 4
  %rx_crc_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 12
  %rx_frame_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 13
  %rx_length_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 10
  %rx_missed_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 15
  %tstamp_rx_ctrl = getelementptr i8, ptr %ndev, i32 2624
  %arrayidx56 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 18, i32 %q
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %q)
  %cmp61 = icmp eq i32 %q, 1
  %cond63 = select i1 %cmp61, i32 2, i32 4
  %features = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %arrayidx79 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 33, i32 %q
  %rx_bytes = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 2
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end84, %entry
  %boguscnt.0.ph = phi i32 [ %dec, %if.end84 ], [ %10, %entry ]
  %desc.0.ph = phi ptr [ %arrayidx93, %if.end84 ], [ %arrayidx12, %entry ]
  %entry2.0.ph = phi i32 [ %rem90, %if.end84 ], [ %rem, %entry ]
  %die_dt = getelementptr inbounds %struct.ravb_ex_rx_desc, ptr %desc.0.ph, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %while.cond.outer
  %boguscnt.0 = phi i32 [ %dec, %if.end.while.cond_crit_edge ], [ %boguscnt.0.ph, %while.cond.outer ]
  %13 = ptrtoint ptr %die_dt to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %die_dt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %14)
  %cmp13.not = icmp eq i8 %14, -64
  br i1 %cmp13.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %while.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !190
  %dec = add i32 %boguscnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp17 = icmp slt i32 %dec, 0
  br i1 %cmp17, label %while.end.split.loop.exit, label %if.end

if.end:                                           ; preds = %while.body
  %15 = ptrtoint ptr %desc.0.ph to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %desc.0.ph, align 4
  %17 = and i16 %16, -241
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %if.end.while.cond_crit_edge, label %if.end20

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond

if.end20:                                         ; preds = %if.end
  %msc.le = getelementptr inbounds %struct.ravb_ex_rx_desc, ptr %desc.0.ph, i32 0, i32 1
  %18 = ptrtoint ptr %msc.le to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msc.le, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv21 = zext i8 %19 to i32
  %and22 = and i32 %conv21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  %21 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %multicast, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %multicast, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge
  %and27 = and i32 %conv21, 79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end25
  %23 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_errors, align 4
  %inc30 = add i32 %24, 1
  store i32 %inc30, ptr %rx_errors, align 4
  %and32 = and i32 %conv21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then29.if.end36_crit_edge, label %if.then34

if.then29.if.end36_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end36

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #21
  %25 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_crc_errors, align 4
  %inc35 = add i32 %26, 1
  store i32 %inc35, ptr %rx_crc_errors, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then29.if.end36_crit_edge
  %and38 = and i32 %conv21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.if.end42_crit_edge, label %if.then40

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #21
  %27 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_frame_errors, align 4
  %inc41 = add i32 %28, 1
  store i32 %inc41, ptr %rx_frame_errors, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end36.if.end42_crit_edge
  %and44 = and i32 %conv21, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.if.end48_crit_edge, label %if.then46

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_length_errors, align 4
  %inc47 = add i32 %30, 1
  store i32 %inc47, ptr %rx_length_errors, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end42.if.end48_crit_edge
  %and50 = and i32 %conv21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end48.if.end84_crit_edge, label %if.end48.if.end84.sink.split_crit_edge

if.end48.if.end84.sink.split_crit_edge:           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end84.sink.split

if.end48.if.end84_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end84

if.else:                                          ; preds = %if.end25
  %31 = ptrtoint ptr %tstamp_rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tstamp_rx_ctrl, align 8
  %33 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx56, align 4
  %arrayidx57 = getelementptr ptr, ptr %34, i32 %entry2.0.ph
  %35 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx57, align 4
  store ptr null, ptr %arrayidx57, align 4
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 8
  %dptr = getelementptr inbounds %struct.ravb_ex_rx_desc, ptr %desc.0.ph, i32 0, i32 3
  %39 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dptr, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void @dma_unmap_page_attrs(ptr noundef %38, i32 noundef %41, i32 noundef 2046, i32 noundef 2, i32 noundef 0) #19
  %and64 = and i32 %cond63, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.else.if.end71_crit_edge, label %if.then66

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

if.then66:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 17
  %42 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %hwtstamps.i, align 8
  %ts_sh = getelementptr inbounds %struct.ravb_ex_rx_desc, ptr %desc.0.ph, i32 0, i32 6
  %45 = ptrtoint ptr %ts_sh to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ts_sh, align 4
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %conv68 = zext i16 %47 to i64
  %shl = shl nuw nsw i64 %conv68, 32
  %ts_sl = getelementptr inbounds %struct.ravb_ex_rx_desc, ptr %desc.0.ph, i32 0, i32 5
  %48 = ptrtoint ptr %ts_sl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ts_sl, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %conv69 = zext i32 %50 to i64
  %or = or i64 %shl, %conv69
  %ts_n = getelementptr inbounds %struct.ravb_ex_rx_desc, ptr %desc.0.ph, i32 0, i32 4
  %51 = ptrtoint ptr %ts_n to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ts_n, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %ts.sroa.5.8.insert.ext = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %or)
  %cmp.i.i = icmp ugt i64 %or, 9223372035
  %mul.i.i = mul i64 %or, 1000000000
  %add.i.i = add i64 %mul.i.i, %ts.sroa.5.8.insert.ext
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !180
  %54 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %retval.0.i.i, ptr %hwtstamps.i, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.else.if.end71_crit_edge
  %conv72 = zext i16 %20 to i32
  %call73 = tail call ptr @skb_put(ptr noundef %36, i32 noundef %conv72) #19
  %call74 = tail call zeroext i16 @eth_type_trans(ptr noundef %36, ptr noundef %ndev) #19
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 15, i32 0, i32 18
  %55 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %call74, ptr %protocol, align 8
  %56 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %features, align 16
  %and75 = and i64 %57, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and75)
  %tobool76.not = icmp eq i64 %and75, 0
  br i1 %tobool76.not, label %if.end71.if.end78_crit_edge, label %if.then77

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end78

if.then77:                                        ; preds = %if.end71
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 6
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp.i = icmp ult i32 %59, 2
  br i1 %cmp.i, label %if.then77.if.end78_crit_edge, label %if.end.i, !prof !180

if.then77.if.end78_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end78

if.end.i:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #21
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 16
  %60 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i245 = getelementptr i8, ptr %61, i32 -2
  %62 = ptrtoint ptr %add.ptr.i245 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %add.ptr.i245, align 1
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #19
  %conv.i.i = zext i16 %64 to i32
  %65 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 15, i32 0, i32 5
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv.i.i, ptr %65, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 15
  %67 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 1024
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %sub.i = add i32 %59, -2
  tail call void @skb_trim(ptr noundef %36, i32 noundef %sub.i) #19
  br label %if.end78

if.end78:                                         ; preds = %if.end.i, %if.then77.if.end78_crit_edge, %if.end71.if.end78_crit_edge
  %call80 = tail call i32 @napi_gro_receive(ptr noundef %arrayidx79, ptr noundef %36) #19
  %68 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx10, align 4
  %inc81 = add i32 %69, 1
  store i32 %inc81, ptr %arrayidx10, align 4
  br label %if.end84.sink.split

if.end84.sink.split:                              ; preds = %if.end78, %if.end48.if.end84.sink.split_crit_edge
  %rx_missed_errors.sink272 = phi ptr [ %rx_bytes, %if.end78 ], [ %rx_missed_errors, %if.end48.if.end84.sink.split_crit_edge ]
  %.sink271 = phi i32 [ %conv72, %if.end78 ], [ 1, %if.end48.if.end84.sink.split_crit_edge ]
  %70 = ptrtoint ptr %rx_missed_errors.sink272 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_missed_errors.sink272, align 4
  %inc53 = add i32 %71, %.sink271
  store i32 %inc53, ptr %rx_missed_errors.sink272, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end84.sink.split, %if.end48.if.end84_crit_edge
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx, align 4
  %inc87 = add i32 %73, 1
  store i32 %inc87, ptr %arrayidx, align 4
  %74 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx3, align 4
  %rem90 = urem i32 %inc87, %75
  %76 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx11, align 4
  %arrayidx93 = getelementptr %struct.ravb_ex_rx_desc, ptr %77, i32 %rem90
  br label %while.cond.outer

while.end.split.loop.exit:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  %78 = add i32 %boguscnt.0.ph, -1
  %smin.le = call i32 @llvm.smin.i32(i32 %78, i32 -1)
  br label %while.end

while.end:                                        ; preds = %while.end.split.loop.exit, %while.cond.while.end_crit_edge
  %boguscnt.1 = phi i32 [ %smin.le, %while.end.split.loop.exit ], [ %boguscnt.0, %while.cond.while.end_crit_edge ]
  %max_rx_len = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 13
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx, align 4
  %81 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp99.not266 = icmp eq i32 %80, %82
  br i1 %cmp99.not266, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %if.end135.for.body_crit_edge, %while.end.for.body_crit_edge
  %83 = phi i32 [ %inc139, %if.end135.for.body_crit_edge ], [ %82, %while.end.for.body_crit_edge ]
  %84 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx3, align 4
  %rem105 = urem i32 %83, %85
  %86 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx11, align 4
  %arrayidx108 = getelementptr %struct.ravb_ex_rx_desc, ptr %87, i32 %rem105
  %88 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -505, ptr %arrayidx108, align 4
  %89 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx56, align 4
  %arrayidx112 = getelementptr ptr, ptr %90, i32 %rem105
  %91 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx112, align 4
  %tobool113.not = icmp eq ptr %92, null
  br i1 %tobool113.not, label %if.then114, label %for.body.if.end135_crit_edge

for.body.if.end135_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end135

if.then114:                                       ; preds = %for.body
  %93 = ptrtoint ptr %max_rx_len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_rx_len, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef %94, i32 noundef 2592) #19
  %tobool116.not = icmp eq ptr %call.i, null
  br i1 %tobool116.not, label %if.then114.for.end_crit_edge, label %if.end118

if.then114.for.end_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end118:                                        ; preds = %if.then114
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %95 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i, align 4
  %97 = ptrtoint ptr %96 to i32
  %and.i = and i32 %97, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end118.ravb_set_buffer_align.exit_crit_edge, label %if.then.i

if.end118.ravb_set_buffer_align.exit_crit_edge:   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_set_buffer_align.exit

if.then.i:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i246 = sub nuw nsw i32 128, %and.i
  %add.ptr.i.i = getelementptr i8, ptr %96, i32 %sub.i246
  %98 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %tail.i.i247 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %99 = ptrtoint ptr %tail.i.i247 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tail.i.i247, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %100, i32 %sub.i246
  store ptr %add.ptr1.i.i, ptr %tail.i.i247, align 8
  br label %ravb_set_buffer_align.exit

ravb_set_buffer_align.exit:                       ; preds = %if.then.i, %if.end118.ravb_set_buffer_align.exit_crit_edge
  %101 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %parent, align 8
  %103 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data.i, align 4
  %105 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx108, align 4
  %call.i249 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %104) #19
  br i1 %call.i249, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %ravb_set_buffer_align.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i250, !prof !181

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dma_map_single_attrs.exit.thread

if.then.i250:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %102) #19
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 3
  %107 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %108, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i250.dev_name.exit.i_crit_edge

if.then.i250.dev_name.exit.i_crit_edge:           ; preds = %if.then.i250
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i250
  call void @__sanitizer_cov_trace_pc() #21
  %109 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %102, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i250.dev_name.exit.i_crit_edge
  %retval.0.i.i251 = phi ptr [ %110, %if.end.i.i ], [ %108, %if.then.i250.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16.i, ptr noundef %retval.0.i.i251) #19
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %111 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %112, i32 noundef -1) #19
  br label %if.then128

dma_map_single_attrs.exit:                        ; preds = %ravb_set_buffer_align.exit
  %113 = tail call i16 @llvm.bswap.i16(i16 %106)
  %conv122 = zext i16 %113 to i32
  tail call void @debug_dma_map_single(ptr noundef %102, ptr noundef %104, i32 noundef %conv122) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %114 = load ptr, ptr @mem_map, align 4
  %115 = ptrtoint ptr %104 to i32
  %sub.i252 = add i32 %115, 1073741824
  %shr.i = lshr i32 %sub.i252, 12
  %add.ptr.i253 = getelementptr %struct.page, ptr %114, i32 %shr.i
  %and.i254 = and i32 %115, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %102, ptr noundef %add.ptr.i253, i32 noundef %and.i254, i32 noundef %conv122, i32 noundef 2, i32 noundef 0) #19
  %116 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %117, i32 noundef %call41.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i255 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i255, label %dma_map_single_attrs.exit.if.then128_crit_edge, label %dma_map_single_attrs.exit.if.end130_crit_edge

dma_map_single_attrs.exit.if.end130_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end130

dma_map_single_attrs.exit.if.then128_crit_edge:   ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then128

if.then128:                                       ; preds = %dma_map_single_attrs.exit.if.then128_crit_edge, %dma_map_single_attrs.exit.thread
  %118 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %arrayidx108, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %dma_map_single_attrs.exit.if.end130_crit_edge
  %retval.0.i258262 = phi i32 [ -1, %if.then128 ], [ %call41.i, %dma_map_single_attrs.exit.if.end130_crit_edge ]
  %119 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i258262)
  %dptr131 = getelementptr %struct.ravb_ex_rx_desc, ptr %87, i32 %rem105, i32 3
  %120 = ptrtoint ptr %dptr131 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %dptr131, align 4
  %121 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx56, align 4
  %arrayidx134 = getelementptr ptr, ptr %122, i32 %rem105
  %123 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i, ptr %arrayidx134, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.end130, %for.body.if.end135_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !191
  %die_dt136 = getelementptr %struct.ravb_ex_rx_desc, ptr %87, i32 %rem105, i32 2
  %124 = ptrtoint ptr %die_dt136 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -64, ptr %die_dt136, align 1
  %125 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx4, align 4
  %inc139 = add i32 %126, 1
  store i32 %inc139, ptr %arrayidx4, align 4
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx, align 4
  %cmp99.not = icmp eq i32 %128, %inc139
  br i1 %cmp99.not, label %if.end135.for.end_crit_edge, label %if.end135.for.body_crit_edge

if.end135.for.body_crit_edge:                     ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.end135.for.end_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %if.end135.for.end_crit_edge, %if.then114.for.end_crit_edge, %while.end.for.end_crit_edge
  %129 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %quota, align 4
  %inc140 = sub i32 1, %10
  %sub141.neg = add i32 %inc140, %boguscnt.1
  %sub142 = add i32 %sub141.neg, %130
  store i32 %sub142, ptr %quota, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %boguscnt.1)
  %cmp143 = icmp ugt i32 %boguscnt.1, 2147483646
  ret i1 %cmp143
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_set_rate_rcar(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr i8, ptr %ndev, i32 3356
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 100, label %sw.bb
    i32 1000, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %4, i32 1456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 0) #19, !srcloc !176
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i5 = getelementptr i8, ptr %ndev, i32 2312
  %5 = ptrtoint ptr %addr.i5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr.i5, align 8
  %add.ptr.i6 = getelementptr i8, ptr %6, i32 1456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 16777216) #19, !srcloc !176
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_set_features_rcar(ptr noundef %ndev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %lock.i = getelementptr i8, ptr %ndev, i32 2772
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #19
  %addr.i.i.i.i = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 1280
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %5 = and i32 %4, -1610612737
  %6 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i.i.i.i, align 8
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %7, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %5) #19, !srcloc !176
  %and2 = lshr i64 %features, 17
  %8 = trunc i64 %and2 to i32
  %9 = and i32 %8, 8388608
  %10 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 1280
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %13 = and i32 %12, -32769
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #19
  %or.i.i = or i32 %14, %9
  %15 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr.i.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %16, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %17) #19, !srcloc !176
  %18 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr.i.i.i.i, align 8
  %add.ptr.i.i.i13.i = getelementptr i8, ptr %19, i32 1280
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i13.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %21 = or i32 %20, 1610612736
  %22 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr.i.i.i.i, align 8
  %add.ptr.i4.i.i14.i = getelementptr i8, ptr %23, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i14.i, i32 %21) #19, !srcloc !176
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %features1 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %features, ptr %features1, align 16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_dmac_init_rcar(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %call2 = tail call fastcc i32 @ravb_ring_init(ptr noundef %ndev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @ravb_ring_init(ptr noundef %ndev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @ravb_ring_free(ptr noundef %ndev, i32 noundef 0)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 8
  %num_tx_desc2.i = getelementptr i8, ptr %ndev, i32 3384
  %4 = ptrtoint ptr %num_tx_desc2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_desc2.i, align 8
  %arrayidx.i = getelementptr i8, ptr %ndev, i32 2344
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl i32 %5, 3
  %mul3.i = mul i32 %mul.i, %7
  %arrayidx4.i = getelementptr i8, ptr %ndev, i32 2816
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %ndev, i32 2832
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %ndev, i32 2824
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr i8, ptr %ndev, i32 2840
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx7.i, align 4
  %rx_ring_format.i = getelementptr inbounds %struct.ravb_hw_info, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %rx_ring_format.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ring_format.i, align 4
  tail call void %13(ptr noundef %ndev, i32 noundef 0) #19
  %arrayidx8.i = getelementptr i8, ptr %ndev, i32 2392
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8.i, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 %mul3.i)
  %17 = load ptr, ptr %arrayidx8.i, align 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp66.not.i = icmp eq i32 %19, 0
  br i1 %cmp66.not.i, label %if.end6.ravb_ring_format.exit_crit_edge, label %for.body.lr.ph.i

if.end6.ravb_ring_format.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_ring_format.exit

for.body.lr.ph.i:                                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp13.i = icmp ugt i32 %5, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.068.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %tx_desc.067.i = phi ptr [ %17, %for.body.lr.ph.i ], [ %incdec.ptr15.i, %for.inc.i.for.body.i_crit_edge ]
  %die_dt.i = getelementptr inbounds %struct.ravb_tx_desc, ptr %tx_desc.067.i, i32 0, i32 2
  %20 = ptrtoint ptr %die_dt.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 48, ptr %die_dt.i, align 1
  br i1 %cmp13.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr.i = getelementptr %struct.ravb_tx_desc, ptr %tx_desc.067.i, i32 1
  %die_dt14.i = getelementptr %struct.ravb_tx_desc, ptr %tx_desc.067.i, i32 1, i32 2
  %21 = ptrtoint ptr %die_dt14.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 48, ptr %die_dt14.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %tx_desc.1.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %tx_desc.067.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.068.i, 1
  %incdec.ptr15.i = getelementptr %struct.ravb_tx_desc, ptr %tx_desc.1.i, i32 1
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ravb_ring_format.exit_crit_edge

for.inc.i.ravb_ring_format.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_ring_format.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

ravb_ring_format.exit:                            ; preds = %for.inc.i.ravb_ring_format.exit_crit_edge, %if.end6.ravb_ring_format.exit_crit_edge
  %tx_desc.0.lcssa.i = phi ptr [ %17, %if.end6.ravb_ring_format.exit_crit_edge ], [ %incdec.ptr15.i, %for.inc.i.ravb_ring_format.exit_crit_edge ]
  %arrayidx16.i = getelementptr i8, ptr %ndev, i32 2372
  %24 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #19
  %dptr.i = getelementptr inbounds %struct.ravb_tx_desc, ptr %tx_desc.0.lcssa.i, i32 0, i32 3
  %27 = ptrtoint ptr %dptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dptr.i, align 4
  %die_dt17.i = getelementptr inbounds %struct.ravb_tx_desc, ptr %tx_desc.0.lcssa.i, i32 0, i32 2
  %28 = ptrtoint ptr %die_dt17.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -112, ptr %die_dt17.i, align 1
  %desc_bat.i = getelementptr i8, ptr %ndev, i32 2360
  %29 = ptrtoint ptr %desc_bat.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc_bat.i, align 8
  %die_dt19.i = getelementptr %struct.ravb_desc, ptr %30, i32 4, i32 2
  %31 = ptrtoint ptr %die_dt19.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -112, ptr %die_dt19.i, align 1
  %arrayidx20.i = getelementptr i8, ptr %ndev, i32 2364
  %32 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx20.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #19
  %dptr21.i = getelementptr %struct.ravb_desc, ptr %30, i32 4, i32 3
  %35 = ptrtoint ptr %dptr21.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %dptr21.i, align 4
  %36 = ptrtoint ptr %desc_bat.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc_bat.i, align 8
  %die_dt24.i = getelementptr %struct.ravb_desc, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %die_dt24.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -112, ptr %die_dt24.i, align 1
  %39 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx16.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #19
  %dptr27.i = getelementptr %struct.ravb_desc, ptr %37, i32 0, i32 3
  %42 = ptrtoint ptr %dptr27.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dptr27.i, align 4
  %43 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %info1, align 8
  %45 = ptrtoint ptr %num_tx_desc2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_tx_desc2.i, align 8
  %arrayidx.i32 = getelementptr i8, ptr %ndev, i32 2348
  %47 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i32, align 4
  %mul.i33 = shl i32 %46, 3
  %mul3.i34 = mul i32 %mul.i33, %48
  %arrayidx4.i35 = getelementptr i8, ptr %ndev, i32 2820
  %49 = ptrtoint ptr %arrayidx4.i35 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx4.i35, align 4
  %arrayidx5.i36 = getelementptr i8, ptr %ndev, i32 2836
  %50 = ptrtoint ptr %arrayidx5.i36 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx5.i36, align 4
  %arrayidx6.i37 = getelementptr i8, ptr %ndev, i32 2828
  %51 = ptrtoint ptr %arrayidx6.i37 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx6.i37, align 4
  %arrayidx7.i38 = getelementptr i8, ptr %ndev, i32 2844
  %52 = ptrtoint ptr %arrayidx7.i38 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx7.i38, align 4
  %rx_ring_format.i39 = getelementptr inbounds %struct.ravb_hw_info, ptr %44, i32 0, i32 1
  %53 = ptrtoint ptr %rx_ring_format.i39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_ring_format.i39, align 4
  tail call void %54(ptr noundef %ndev, i32 noundef 1) #19
  %arrayidx8.i40 = getelementptr i8, ptr %ndev, i32 2396
  %55 = ptrtoint ptr %arrayidx8.i40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx8.i40, align 4
  %57 = call ptr @memset(ptr %56, i32 0, i32 %mul3.i34)
  %58 = load ptr, ptr %arrayidx8.i40, align 4
  %59 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp66.not.i41 = icmp eq i32 %60, 0
  br i1 %cmp66.not.i41, label %ravb_ring_format.exit.ravb_ring_format.exit66_crit_edge, label %for.body.lr.ph.i43

ravb_ring_format.exit.ravb_ring_format.exit66_crit_edge: ; preds = %ravb_ring_format.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_ring_format.exit66

for.body.lr.ph.i43:                               ; preds = %ravb_ring_format.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp13.i42 = icmp ugt i32 %46, 1
  br label %for.body.i47

for.body.i47:                                     ; preds = %for.inc.i55.for.body.i47_crit_edge, %for.body.lr.ph.i43
  %i.068.i44 = phi i32 [ 0, %for.body.lr.ph.i43 ], [ %inc.i52, %for.inc.i55.for.body.i47_crit_edge ]
  %tx_desc.067.i45 = phi ptr [ %58, %for.body.lr.ph.i43 ], [ %incdec.ptr15.i53, %for.inc.i55.for.body.i47_crit_edge ]
  %die_dt.i46 = getelementptr inbounds %struct.ravb_tx_desc, ptr %tx_desc.067.i45, i32 0, i32 2
  %61 = ptrtoint ptr %die_dt.i46 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 48, ptr %die_dt.i46, align 1
  br i1 %cmp13.i42, label %if.then.i50, label %for.body.i47.for.inc.i55_crit_edge

for.body.i47.for.inc.i55_crit_edge:               ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i55

if.then.i50:                                      ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr.i48 = getelementptr %struct.ravb_tx_desc, ptr %tx_desc.067.i45, i32 1
  %die_dt14.i49 = getelementptr %struct.ravb_tx_desc, ptr %tx_desc.067.i45, i32 1, i32 2
  %62 = ptrtoint ptr %die_dt14.i49 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 48, ptr %die_dt14.i49, align 1
  br label %for.inc.i55

for.inc.i55:                                      ; preds = %if.then.i50, %for.body.i47.for.inc.i55_crit_edge
  %tx_desc.1.i51 = phi ptr [ %incdec.ptr.i48, %if.then.i50 ], [ %tx_desc.067.i45, %for.body.i47.for.inc.i55_crit_edge ]
  %inc.i52 = add nuw i32 %i.068.i44, 1
  %incdec.ptr15.i53 = getelementptr %struct.ravb_tx_desc, ptr %tx_desc.1.i51, i32 1
  %63 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i32, align 4
  %cmp.i54 = icmp ult i32 %inc.i52, %64
  br i1 %cmp.i54, label %for.inc.i55.for.body.i47_crit_edge, label %for.inc.i55.ravb_ring_format.exit66_crit_edge

for.inc.i55.ravb_ring_format.exit66_crit_edge:    ; preds = %for.inc.i55
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_ring_format.exit66

for.inc.i55.for.body.i47_crit_edge:               ; preds = %for.inc.i55
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i47

ravb_ring_format.exit66:                          ; preds = %for.inc.i55.ravb_ring_format.exit66_crit_edge, %ravb_ring_format.exit.ravb_ring_format.exit66_crit_edge
  %tx_desc.0.lcssa.i56 = phi ptr [ %58, %ravb_ring_format.exit.ravb_ring_format.exit66_crit_edge ], [ %incdec.ptr15.i53, %for.inc.i55.ravb_ring_format.exit66_crit_edge ]
  %arrayidx16.i57 = getelementptr i8, ptr %ndev, i32 2376
  %65 = ptrtoint ptr %arrayidx16.i57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx16.i57, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #19
  %dptr.i58 = getelementptr inbounds %struct.ravb_tx_desc, ptr %tx_desc.0.lcssa.i56, i32 0, i32 3
  %68 = ptrtoint ptr %dptr.i58 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %dptr.i58, align 4
  %die_dt17.i59 = getelementptr inbounds %struct.ravb_tx_desc, ptr %tx_desc.0.lcssa.i56, i32 0, i32 2
  %69 = ptrtoint ptr %die_dt17.i59 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -112, ptr %die_dt17.i59, align 1
  %70 = ptrtoint ptr %desc_bat.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %desc_bat.i, align 8
  %die_dt19.i61 = getelementptr %struct.ravb_desc, ptr %71, i32 5, i32 2
  %72 = ptrtoint ptr %die_dt19.i61 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -112, ptr %die_dt19.i61, align 1
  %arrayidx20.i62 = getelementptr i8, ptr %ndev, i32 2368
  %73 = ptrtoint ptr %arrayidx20.i62 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx20.i62, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #19
  %dptr21.i63 = getelementptr %struct.ravb_desc, ptr %71, i32 5, i32 3
  %76 = ptrtoint ptr %dptr21.i63 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %dptr21.i63, align 4
  %77 = ptrtoint ptr %desc_bat.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %desc_bat.i, align 8
  %die_dt24.i64 = getelementptr %struct.ravb_desc, ptr %78, i32 1, i32 2
  %79 = ptrtoint ptr %die_dt24.i64 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -112, ptr %die_dt24.i64, align 1
  %80 = ptrtoint ptr %arrayidx16.i57 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx16.i57, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #19
  %dptr27.i65 = getelementptr %struct.ravb_desc, ptr %78, i32 1, i32 3
  %83 = ptrtoint ptr %dptr27.i65 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %dptr27.i65, align 4
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %84 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %addr.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %85, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 520093720) #19, !srcloc !176
  %86 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %addr.i, align 8
  %add.ptr.i69 = getelementptr i8, ptr %87, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 270668032) #19, !srcloc !176
  %88 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %addr.i, align 8
  %add.ptr.i71 = getelementptr i8, ptr %89, i32 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 65536) #19, !srcloc !176
  %multi_irqs = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 16
  %90 = ptrtoint ptr %multi_irqs to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load = load i16, ptr %multi_irqs, align 8
  %91 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool7.not = icmp eq i16 %91, 0
  br i1 %tobool7.not, label %ravb_ring_format.exit66.if.end9_crit_edge, label %if.then8

ravb_ring_format.exit66.if.end9_crit_edge:        ; preds = %ravb_ring_format.exit66
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

if.then8:                                         ; preds = %ravb_ring_format.exit66
  call void @__sanitizer_cov_trace_pc() #21
  %92 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %addr.i, align 8
  %add.ptr.i73 = getelementptr i8, ptr %93, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 0) #19, !srcloc !176
  %94 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %addr.i, align 8
  %add.ptr.i75 = getelementptr i8, ptr %95, i32 900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 16843264) #19, !srcloc !176
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %ravb_ring_format.exit66.if.end9_crit_edge
  %96 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %addr.i, align 8
  %add.ptr.i77 = getelementptr i8, ptr %97, i32 864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 50331648) #19, !srcloc !176
  %98 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %addr.i, align 8
  %add.ptr.i79 = getelementptr i8, ptr %99, i32 872
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 0) #19, !srcloc !176
  %100 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %addr.i, align 8
  %add.ptr.i81 = getelementptr i8, ptr %101, i32 880
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 50331776) #19, !srcloc !176
  %102 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %addr.i, align 8
  %add.ptr.i83 = getelementptr i8, ptr %103, i32 888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 50397184) #19, !srcloc !176
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ 0, %if.end9 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_emac_init_rcar(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  %add2 = add i32 %1, 22
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %4 = tail call i32 @llvm.bswap.i32(i32 %add2) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #19, !srcloc !176
  %features = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %5 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features, align 16
  %and = lshr i64 %6, 17
  %7 = trunc i64 %and to i32
  %8 = and i32 %7, 8388608
  %or4 = or i32 %8, 524386
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr.i, align 8
  %add.ptr.i42 = getelementptr i8, ptr %10, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %11 = tail call i32 @llvm.bswap.i32(i32 %or4) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %11) #19, !srcloc !176
  %speed.i = getelementptr i8, ptr %ndev, i32 3356
  %12 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %13, label %entry.ravb_set_rate_rcar.exit_crit_edge [
    i32 100, label %sw.bb.i
    i32 1000, label %sw.bb1.i
  ]

entry.ravb_set_rate_rcar.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_set_rate_rcar.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %16, i32 1456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #19, !srcloc !176
  br label %ravb_set_rate_rcar.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %18, i32 1456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 16777216) #19, !srcloc !176
  br label %ravb_set_rate_rcar.exit

ravb_set_rate_rcar.exit:                          ; preds = %sw.bb1.i, %sw.bb.i, %entry.ravb_set_rate_rcar.exit_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv = zext i8 %22 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx6 = getelementptr i8, ptr %20, i32 1
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %24 to i32
  %shl8 = shl nuw nsw i32 %conv7, 16
  %or9 = or i32 %shl8, %shl
  %arrayidx11 = getelementptr i8, ptr %20, i32 2
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %26 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or14 = or i32 %or9, %shl13
  %arrayidx16 = getelementptr i8, ptr %20, i32 3
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %28 to i32
  %or18 = or i32 %or14, %conv17
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr.i, align 8
  %add.ptr.i44 = getelementptr i8, ptr %30, i32 1472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %31 = tail call i32 @llvm.bswap.i32(i32 %or18) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %31) #19, !srcloc !176
  %32 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_addr, align 64
  %arrayidx20 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %35 to i32
  %shl22 = shl nuw nsw i32 %conv21, 8
  %arrayidx24 = getelementptr i8, ptr %33, i32 5
  %36 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %37 to i32
  %or26 = or i32 %shl22, %conv25
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr.i, align 8
  %add.ptr.i46 = getelementptr i8, ptr %39, i32 1480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %40 = tail call i32 @llvm.bswap.i32(i32 %or26) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %40) #19, !srcloc !176
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %42, i32 1296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 50331648) #19, !srcloc !176
  %43 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %addr.i, align 8
  %add.ptr.i50 = getelementptr i8, ptr %44, i32 1304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 117440512) #19, !srcloc !176
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ravb_ring_init(ptr noundef %ndev, i32 noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %num_tx_desc2 = getelementptr i8, ptr %ndev, i32 3384
  %2 = ptrtoint ptr %num_tx_desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_desc2, align 8
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 6, i32 %q
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #19
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %entry.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !180

entry.kcalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #25
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %entry.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %entry.kcalloc.exit_crit_edge ]
  %arrayidx4 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 18, i32 %q
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i.i, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 7, i32 %q
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #19
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %kcalloc.exit133.thread, label %if.end7.i.i131, !prof !180

kcalloc.exit133.thread:                           ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx7138 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 19, i32 %q
  %14 = ptrtoint ptr %arrayidx7138 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx7138, align 4
  br label %error

if.end7.i.i131:                                   ; preds = %kcalloc.exit
  %15 = extractvalue { i32, i1 } %12, 0
  %call8.i.i130 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #25
  %arrayidx7 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 19, i32 %q
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i130, ptr %arrayidx7, align 4
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %18, null
  %tobool12.not = icmp eq ptr %call8.i.i130, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %if.end7.i.i131.error_crit_edge, label %for.cond.preheader

if.end7.i.i131.error_crit_edge:                   ; preds = %if.end7.i.i131
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

for.cond.preheader:                               ; preds = %if.end7.i.i131
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp142.not = icmp eq i32 %20, 0
  br i1 %cmp142.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %max_rx_len = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %ravb_set_buffer_align.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ravb_set_buffer_align.exit.for.body_crit_edge ]
  %21 = ptrtoint ptr %max_rx_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_rx_len, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef %22, i32 noundef 2592) #19
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %for.body.error_crit_edge, label %if.end18

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

if.end18:                                         ; preds = %for.body
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i = and i32 %25, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end18.ravb_set_buffer_align.exit_crit_edge, label %if.then.i134

if.end18.ravb_set_buffer_align.exit_crit_edge:    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_set_buffer_align.exit

if.then.i134:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i = sub nuw nsw i32 128, %and.i
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %sub.i
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %28, i32 %sub.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %ravb_set_buffer_align.exit

ravb_set_buffer_align.exit:                       ; preds = %if.then.i134, %if.end18.ravb_set_buffer_align.exit_crit_edge
  %29 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx4, align 4
  %arrayidx21 = getelementptr ptr, ptr %30, i32 %i.0143
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %arrayidx21, align 4
  %inc = add nuw i32 %i.0143, 1
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %ravb_set_buffer_align.exit.for.body_crit_edge, label %ravb_set_buffer_align.exit.for.end_crit_edge

ravb_set_buffer_align.exit.for.end_crit_edge:     ; preds = %ravb_set_buffer_align.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

ravb_set_buffer_align.exit.for.body_crit_edge:    ; preds = %ravb_set_buffer_align.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %ravb_set_buffer_align.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp22 = icmp ugt i32 %3, 1
  br i1 %cmp22, label %if.end8.i, label %for.end.if.end33_crit_edge

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33

if.end8.i:                                        ; preds = %for.end
  %34 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx5, align 4
  %mul = shl i32 %35, 2
  %sub = or i32 %mul, 3
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3264) #25
  %arrayidx27 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 16, i32 %q
  %36 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call9.i, ptr %arrayidx27, align 4
  %tobool30.not = icmp eq ptr %call9.i, null
  br i1 %tobool30.not, label %if.end8.i.error_crit_edge, label %if.end8.i.if.end33_crit_edge

if.end8.i.if.end33_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33

if.end8.i.error_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

if.end33:                                         ; preds = %if.end8.i.if.end33_crit_edge, %for.end.if.end33_crit_edge
  %alloc_rx_desc = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %alloc_rx_desc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %alloc_rx_desc, align 8
  %call34 = tail call ptr %38(ptr noundef %ndev, i32 noundef %q) #19
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.error_crit_edge, label %if.end37

if.end33.error_crit_edge:                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

if.end37:                                         ; preds = %if.end33
  %arrayidx38 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 30, i32 %q
  %39 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx38, align 4
  %40 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx5, align 4
  %mul41 = shl i32 %3, 3
  %add42 = mul i32 %mul41, %41
  %mul43 = add i32 %add42, 8
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %42 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent, align 8
  %arrayidx44 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 12, i32 %q
  %call.i136 = tail call ptr @dma_alloc_attrs(ptr noundef %43, i32 noundef %mul43, ptr noundef %arrayidx44, i32 noundef 3264, i32 noundef 0) #19
  %arrayidx46 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 15, i32 %q
  %44 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i136, ptr %arrayidx46, align 4
  %tobool49.not = icmp eq ptr %call.i136, null
  br i1 %tobool49.not, label %if.end37.error_crit_edge, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end37.error_crit_edge:                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

error:                                            ; preds = %if.end37.error_crit_edge, %if.end33.error_crit_edge, %if.end8.i.error_crit_edge, %for.body.error_crit_edge, %if.end7.i.i131.error_crit_edge, %kcalloc.exit133.thread
  tail call fastcc void @ravb_ring_free(ptr noundef %ndev, i32 noundef %q)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end37.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %error ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_rx_ring_free_gbeth(ptr nocapture noundef %ndev, i32 noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %gbeth_rx_ring = getelementptr i8, ptr %ndev, i32 2380
  %0 = ptrtoint ptr %gbeth_rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbeth_rx_ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 6, i32 %q
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp33.not = icmp eq i32 %3, 0
  br i1 %cmp33.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end9.for.body_crit_edge ]
  %4 = ptrtoint ptr %gbeth_rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gbeth_rx_ring, align 4
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %dptr = getelementptr %struct.ravb_rx_desc, ptr %5, i32 %i.034, i32 3
  %8 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dptr, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef %10) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not = icmp eq i32 %9, -1
  br i1 %cmp.i.not, label %for.body.if.end9_crit_edge, label %if.then5

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %13 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dptr, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %15, i32 noundef 8192, i32 noundef 2, i32 noundef 0) #19
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %for.body.if.end9_crit_edge
  %inc = add nuw i32 %i.034, 1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %for.end.loopexit

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  %phi.bo = shl i32 %17, 3
  %phi.bo36 = add i32 %phi.bo, 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 8, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo36, %for.end.loopexit ]
  %parent13 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %18 = ptrtoint ptr %parent13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent13, align 8
  %20 = ptrtoint ptr %gbeth_rx_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gbeth_rx_ring, align 4
  %arrayidx15 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 11, i32 %q
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15, align 4
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef %.lcssa, ptr noundef %21, i32 noundef %23, i32 noundef 0) #19
  %24 = ptrtoint ptr %gbeth_rx_ring to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %gbeth_rx_ring, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_rx_ring_format_gbeth(ptr nocapture noundef readonly %ndev, i32 noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 6, i32 %q
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %1, 3
  %gbeth_rx_ring = getelementptr i8, ptr %ndev, i32 2380
  %2 = ptrtoint ptr %gbeth_rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gbeth_rx_ring, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 %mul)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp46.not = icmp eq i32 %5, 0
  br i1 %cmp46.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %arrayidx5 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 18, i32 %q
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %gbeth_rx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gbeth_rx_ring, align 4
  %arrayidx4 = getelementptr %struct.ravb_rx_desc, ptr %7, i32 %i.047
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -4081, ptr %arrayidx4, align 4
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr ptr, ptr %12, i32 %i.047
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %16) #19
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %for.body
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !181

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %10) #19
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %10, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #19
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %22, i32 noundef -1) #19
  br label %if.then

dma_map_single_attrs.exit:                        ; preds = %for.body
  tail call void @debug_dma_map_single(ptr noundef %10, ptr noundef %16, i32 noundef 8192) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %16 to i32
  %sub.i = add i32 %24, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i38 = getelementptr %struct.page, ptr %23, i32 %shr.i
  %and.i = and i32 %24, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %10, ptr noundef %add.ptr.i38, i32 noundef %and.i, i32 noundef 8192, i32 noundef 2, i32 noundef 0) #19
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %26, i32 noundef %call41.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then_crit_edge, label %dma_map_single_attrs.exit.if.end_crit_edge

dma_map_single_attrs.exit.if.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

dma_map_single_attrs.exit.if.then_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

if.then:                                          ; preds = %dma_map_single_attrs.exit.if.then_crit_edge, %dma_map_single_attrs.exit.thread
  %27 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %arrayidx4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %dma_map_single_attrs.exit.if.end_crit_edge
  %retval.0.i4145 = phi i32 [ -1, %if.then ], [ %call41.i, %dma_map_single_attrs.exit.if.end_crit_edge ]
  %28 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i4145)
  %dptr = getelementptr %struct.ravb_rx_desc, ptr %7, i32 %i.047, i32 3
  %29 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dptr, align 4
  %die_dt = getelementptr %struct.ravb_rx_desc, ptr %7, i32 %i.047, i32 2
  %30 = ptrtoint ptr %die_dt to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -64, ptr %die_dt, align 1
  %inc = add nuw i32 %i.047, 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %if.end.for.end_crit_edge ]
  %33 = ptrtoint ptr %gbeth_rx_ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gbeth_rx_ring, align 4
  %arrayidx14 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 11, i32 %q
  %35 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx14, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %dptr15 = getelementptr %struct.ravb_rx_desc, ptr %34, i32 %i.0.lcssa, i32 3
  %38 = ptrtoint ptr %dptr15 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dptr15, align 4
  %die_dt16 = getelementptr %struct.ravb_rx_desc, ptr %34, i32 %i.0.lcssa, i32 2
  %39 = ptrtoint ptr %die_dt16 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -112, ptr %die_dt16, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ravb_alloc_rx_desc_gbeth(ptr noundef %ndev, i32 noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 6, i32 %q
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = shl i32 %1, 3
  %mul = add i32 %add, 8
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %arrayidx1 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 11, i32 %q
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %arrayidx1, i32 noundef 3264, i32 noundef 0) #19
  %gbeth_rx_ring = getelementptr i8, ptr %ndev, i32 2380
  %4 = ptrtoint ptr %gbeth_rx_ring to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %gbeth_rx_ring, align 4
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ravb_rx_gbeth(ptr noundef %ndev, ptr nocapture noundef %quota, i32 noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %info1 = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %arrayidx = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 29, i32 %q
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 6, i32 %q
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %rem = urem i32 %3, %5
  %arrayidx4 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 30, i32 %q
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %add = sub i32 %5, %3
  %sub = add i32 %add, %7
  %arrayidx10 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q
  %8 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quota, align 4
  %10 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %9)
  %gbeth_rx_ring = getelementptr i8, ptr %ndev, i32 2380
  %11 = ptrtoint ptr %gbeth_rx_ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gbeth_rx_ring, align 4
  %arrayidx11 = getelementptr %struct.ravb_rx_desc, ptr %12, i32 %rem
  %multicast = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 8
  %rx_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 4
  %rx_crc_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 12
  %rx_frame_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 13
  %rx_length_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 10
  %rx_missed_errors = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 15
  %rx_skb.i286 = getelementptr i8, ptr %ndev, i32 2412
  %parent.i288 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %rx_1st_skb84 = getelementptr i8, ptr %ndev, i32 2408
  %arrayidx97 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 33, i32 %q
  %rx_bytes104 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 22, i32 %q, i32 2
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end106, %entry
  %desc.0.ph = phi ptr [ %arrayidx114, %if.end106 ], [ %arrayidx11, %entry ]
  %boguscnt.0.ph = phi i32 [ %dec, %if.end106 ], [ %10, %entry ]
  %entry2.0.ph = phi i32 [ %rem112, %if.end106 ], [ %rem, %entry ]
  %die_dt12 = getelementptr inbounds %struct.ravb_rx_desc, ptr %desc.0.ph, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %while.cond.outer
  %boguscnt.0 = phi i32 [ %dec, %if.end.while.cond_crit_edge ], [ %boguscnt.0.ph, %while.cond.outer ]
  %13 = ptrtoint ptr %die_dt12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %die_dt12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %14)
  %cmp13.not = icmp eq i8 %14, -64
  br i1 %cmp13.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %while.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !192
  %dec = add i32 %boguscnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp17 = icmp slt i32 %dec, 0
  br i1 %cmp17, label %while.end.split.loop.exit, label %if.end

if.end:                                           ; preds = %while.body
  %15 = ptrtoint ptr %desc.0.ph to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %desc.0.ph, align 4
  %17 = and i16 %16, -241
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %if.end.while.cond_crit_edge, label %if.end20

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond

if.end20:                                         ; preds = %if.end
  %msc.le = getelementptr inbounds %struct.ravb_rx_desc, ptr %desc.0.ph, i32 0, i32 1
  %18 = ptrtoint ptr %msc.le to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msc.le, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv21 = zext i8 %19 to i32
  %and22 = and i32 %conv21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  %21 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %multicast, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %multicast, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge
  %and27 = and i32 %conv21, 79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end25
  %23 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_errors, align 4
  %inc30 = add i32 %24, 1
  store i32 %inc30, ptr %rx_errors, align 4
  %and32 = and i32 %conv21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then29.if.end36_crit_edge, label %if.then34

if.then29.if.end36_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end36

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #21
  %25 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_crc_errors, align 4
  %inc35 = add i32 %26, 1
  store i32 %inc35, ptr %rx_crc_errors, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then29.if.end36_crit_edge
  %and38 = and i32 %conv21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.if.end42_crit_edge, label %if.then40

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #21
  %27 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_frame_errors, align 4
  %inc41 = add i32 %28, 1
  store i32 %inc41, ptr %rx_frame_errors, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end36.if.end42_crit_edge
  %and44 = and i32 %conv21, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.if.end48_crit_edge, label %if.then46

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_length_errors, align 4
  %inc47 = add i32 %30, 1
  store i32 %inc47, ptr %rx_length_errors, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end42.if.end48_crit_edge
  %and50 = and i32 %conv21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end48.if.end106_crit_edge, label %if.then52

if.end48.if.end106_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end106

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #21
  %31 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_missed_errors, align 4
  %inc53 = add i32 %32, 1
  store i32 %inc53, ptr %rx_missed_errors, align 4
  br label %if.end106

if.else:                                          ; preds = %if.end25
  %33 = ptrtoint ptr %die_dt12 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %die_dt12, align 1
  %35 = and i8 %34, -16
  %conv59 = zext i8 %35 to i32
  %36 = add nsw i32 %conv59, -64
  %37 = lshr exact i32 %36, 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %37, label %if.else.if.end106_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb69
    i32 0, label %sw.bb74
    i32 2, label %sw.bb82
  ]

if.else.if.end106_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end106

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %39 = ptrtoint ptr %rx_skb.i286 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_skb.i286, align 4
  %arrayidx2.i = getelementptr ptr, ptr %40, i32 %entry2.0.ph
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx2.i, align 4
  store ptr null, ptr %arrayidx2.i, align 4
  %43 = ptrtoint ptr %parent.i288 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent.i288, align 8
  %dptr.i = getelementptr inbounds %struct.ravb_rx_desc, ptr %desc.0.ph, i32 0, i32 3
  %45 = ptrtoint ptr %dptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dptr.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #19
  tail call void @dma_unmap_page_attrs(ptr noundef %44, i32 noundef %47, i32 noundef 8192, i32 noundef 2, i32 noundef 0) #19
  %conv61 = zext i16 %20 to i32
  %call62 = tail call ptr @skb_put(ptr noundef %42, i32 noundef %conv61) #19
  %call63 = tail call zeroext i16 @eth_type_trans(ptr noundef %42, ptr noundef %ndev) #19
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 15, i32 0, i32 18
  %48 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %call63, ptr %protocol, align 8
  %call65 = tail call i32 @napi_gro_receive(ptr noundef %arrayidx97, ptr noundef %42) #19
  %49 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx10, align 4
  %inc66 = add i32 %50, 1
  store i32 %inc66, ptr %arrayidx10, align 4
  %51 = ptrtoint ptr %rx_bytes104 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_bytes104, align 4
  %add68 = add i32 %52, %conv61
  store i32 %add68, ptr %rx_bytes104, align 4
  br label %if.end106

sw.bb69:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %53 = ptrtoint ptr %rx_skb.i286 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_skb.i286, align 4
  %arrayidx2.i278 = getelementptr ptr, ptr %54, i32 %entry2.0.ph
  %55 = ptrtoint ptr %arrayidx2.i278 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx2.i278, align 4
  store ptr null, ptr %arrayidx2.i278, align 4
  %57 = ptrtoint ptr %parent.i288 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %parent.i288, align 8
  %dptr.i280 = getelementptr inbounds %struct.ravb_rx_desc, ptr %desc.0.ph, i32 0, i32 3
  %59 = ptrtoint ptr %dptr.i280 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dptr.i280, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #19
  tail call void @dma_unmap_page_attrs(ptr noundef %58, i32 noundef %61, i32 noundef 8192, i32 noundef 2, i32 noundef 0) #19
  %62 = ptrtoint ptr %rx_1st_skb84 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %56, ptr %rx_1st_skb84, align 8
  %conv72 = zext i16 %20 to i32
  %call73 = tail call ptr @skb_put(ptr noundef %56, i32 noundef %conv72) #19
  br label %if.end106

sw.bb74:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %63 = ptrtoint ptr %rx_skb.i286 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rx_skb.i286, align 4
  %arrayidx2.i282 = getelementptr ptr, ptr %64, i32 %entry2.0.ph
  %65 = ptrtoint ptr %arrayidx2.i282 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx2.i282, align 4
  store ptr null, ptr %arrayidx2.i282, align 4
  %67 = ptrtoint ptr %parent.i288 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parent.i288, align 8
  %dptr.i284 = getelementptr inbounds %struct.ravb_rx_desc, ptr %desc.0.ph, i32 0, i32 3
  %69 = ptrtoint ptr %dptr.i284 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dptr.i284, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #19
  tail call void @dma_unmap_page_attrs(ptr noundef %68, i32 noundef %71, i32 noundef 8192, i32 noundef 2, i32 noundef 0) #19
  %72 = ptrtoint ptr %rx_1st_skb84 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_1st_skb84, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 19
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data, align 4
  %conv78 = zext i16 %20 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %73, i32 0, i32 19
  %78 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i, align 4
  %add.ptr.i285 = getelementptr i8, ptr %79, i32 %75
  %80 = call ptr @memcpy(ptr %add.ptr.i285, ptr %77, i32 %conv78)
  %81 = load ptr, ptr %rx_1st_skb84, align 8
  %call81 = tail call ptr @skb_put(ptr noundef %81, i32 noundef %conv78) #19
  tail call void @consume_skb(ptr noundef %66) #19
  br label %if.end106

sw.bb82:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %82 = ptrtoint ptr %rx_skb.i286 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rx_skb.i286, align 4
  %arrayidx2.i287 = getelementptr ptr, ptr %83, i32 %entry2.0.ph
  %84 = ptrtoint ptr %arrayidx2.i287 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx2.i287, align 4
  store ptr null, ptr %arrayidx2.i287, align 4
  %86 = ptrtoint ptr %parent.i288 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %parent.i288, align 8
  %dptr.i289 = getelementptr inbounds %struct.ravb_rx_desc, ptr %desc.0.ph, i32 0, i32 3
  %88 = ptrtoint ptr %dptr.i289 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dptr.i289, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #19
  tail call void @dma_unmap_page_attrs(ptr noundef %87, i32 noundef %90, i32 noundef 8192, i32 noundef 2, i32 noundef 0) #19
  %91 = ptrtoint ptr %rx_1st_skb84 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rx_1st_skb84, align 8
  %len86 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %len86 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len86, align 4
  %data87 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 19
  %95 = ptrtoint ptr %data87 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data87, align 4
  %conv88 = zext i16 %20 to i32
  %data.i290 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 19
  %97 = ptrtoint ptr %data.i290 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i290, align 4
  %add.ptr.i291 = getelementptr i8, ptr %98, i32 %94
  %99 = call ptr @memcpy(ptr %add.ptr.i291, ptr %96, i32 %conv88)
  %100 = load ptr, ptr %rx_1st_skb84, align 8
  %call91 = tail call ptr @skb_put(ptr noundef %100, i32 noundef %conv88) #19
  tail call void @consume_skb(ptr noundef %85) #19
  %101 = ptrtoint ptr %rx_1st_skb84 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rx_1st_skb84, align 8
  %call93 = tail call zeroext i16 @eth_type_trans(ptr noundef %102, ptr noundef %ndev) #19
  %103 = ptrtoint ptr %rx_1st_skb84 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rx_1st_skb84, align 8
  %protocol95 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 15, i32 0, i32 18
  %105 = ptrtoint ptr %protocol95 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %call93, ptr %protocol95, align 8
  %106 = load ptr, ptr %rx_1st_skb84, align 8
  %call99 = tail call i32 @napi_gro_receive(ptr noundef %arrayidx97, ptr noundef %106) #19
  %107 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx10, align 4
  %inc101 = add i32 %108, 1
  store i32 %inc101, ptr %arrayidx10, align 4
  %109 = ptrtoint ptr %rx_1st_skb84 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rx_1st_skb84, align 8
  %len103 = getelementptr inbounds %struct.sk_buff, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %len103 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len103, align 4
  %113 = ptrtoint ptr %rx_bytes104 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_bytes104, align 4
  %add105 = add i32 %114, %112
  store i32 %add105, ptr %rx_bytes104, align 4
  br label %if.end106

if.end106:                                        ; preds = %sw.bb82, %sw.bb74, %sw.bb69, %sw.bb, %if.else.if.end106_crit_edge, %if.then52, %if.end48.if.end106_crit_edge
  %115 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx, align 4
  %inc109 = add i32 %116, 1
  store i32 %inc109, ptr %arrayidx, align 4
  %117 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx3, align 4
  %rem112 = urem i32 %inc109, %118
  %119 = ptrtoint ptr %gbeth_rx_ring to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %gbeth_rx_ring, align 4
  %arrayidx114 = getelementptr %struct.ravb_rx_desc, ptr %120, i32 %rem112
  br label %while.cond.outer

while.end.split.loop.exit:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  %121 = add i32 %boguscnt.0.ph, -1
  %smin.le = call i32 @llvm.smin.i32(i32 %121, i32 -1)
  br label %while.end

while.end:                                        ; preds = %while.end.split.loop.exit, %while.cond.while.end_crit_edge
  %boguscnt.1 = phi i32 [ %smin.le, %while.end.split.loop.exit ], [ %boguscnt.0, %while.cond.while.end_crit_edge ]
  %max_rx_len = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 13
  %122 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx, align 4
  %124 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %125)
  %cmp120.not309 = icmp eq i32 %123, %125
  br i1 %cmp120.not309, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %arrayidx130 = getelementptr %struct.ravb_private, ptr %add.ptr.i, i32 0, i32 18, i32 %q
  br label %for.body

for.body:                                         ; preds = %if.end150.for.body_crit_edge, %for.body.lr.ph
  %126 = phi i32 [ %125, %for.body.lr.ph ], [ %inc154, %if.end150.for.body_crit_edge ]
  %127 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx3, align 4
  %rem126 = urem i32 %126, %128
  %129 = ptrtoint ptr %gbeth_rx_ring to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %gbeth_rx_ring, align 4
  %arrayidx128 = getelementptr %struct.ravb_rx_desc, ptr %130, i32 %rem126
  %131 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 -4081, ptr %arrayidx128, align 4
  %132 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx130, align 4
  %arrayidx131 = getelementptr ptr, ptr %133, i32 %rem126
  %134 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx131, align 4
  %tobool132.not = icmp eq ptr %135, null
  br i1 %tobool132.not, label %if.then133, label %for.body.if.end150_crit_edge

for.body.if.end150_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end150

if.then133:                                       ; preds = %for.body
  %136 = ptrtoint ptr %max_rx_len to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %max_rx_len, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef %137, i32 noundef 2592) #19
  %tobool135.not = icmp eq ptr %call.i, null
  br i1 %tobool135.not, label %if.then133.for.end_crit_edge, label %if.end137

if.then133.for.end_crit_edge:                     ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end137:                                        ; preds = %if.then133
  %data.i292 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %138 = ptrtoint ptr %data.i292 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data.i292, align 4
  %140 = ptrtoint ptr %139 to i32
  %and.i = and i32 %140, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end137.ravb_set_buffer_align.exit_crit_edge, label %if.then.i

if.end137.ravb_set_buffer_align.exit_crit_edge:   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_set_buffer_align.exit

if.then.i:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i = sub nuw nsw i32 128, %and.i
  %add.ptr.i.i = getelementptr i8, ptr %139, i32 %sub.i
  %141 = ptrtoint ptr %data.i292 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %add.ptr.i.i, ptr %data.i292, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %142 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %143, i32 %sub.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %ravb_set_buffer_align.exit

ravb_set_buffer_align.exit:                       ; preds = %if.then.i, %if.end137.ravb_set_buffer_align.exit_crit_edge
  %144 = ptrtoint ptr %parent.i288 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %parent.i288, align 8
  %146 = ptrtoint ptr %data.i292 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %data.i292, align 4
  %call.i293 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %147) #19
  br i1 %call.i293, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %ravb_set_buffer_align.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i294, !prof !181

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dma_map_single_attrs.exit.thread

if.then.i294:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %145) #19
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %145, i32 0, i32 3
  %148 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %149, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i294.dev_name.exit.i_crit_edge

if.then.i294.dev_name.exit.i_crit_edge:           ; preds = %if.then.i294
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i294
  call void @__sanitizer_cov_trace_pc() #21
  %150 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %145, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i294.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %151, %if.end.i.i ], [ %149, %if.then.i294.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #19
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %152 = ptrtoint ptr %parent.i288 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %parent.i288, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %153, i32 noundef -1) #19
  br label %if.then144

dma_map_single_attrs.exit:                        ; preds = %ravb_set_buffer_align.exit
  tail call void @debug_dma_map_single(ptr noundef %145, ptr noundef %147, i32 noundef 8192) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %154 = load ptr, ptr @mem_map, align 4
  %155 = ptrtoint ptr %147 to i32
  %sub.i295 = add i32 %155, 1073741824
  %shr.i = lshr i32 %sub.i295, 12
  %add.ptr.i296 = getelementptr %struct.page, ptr %154, i32 %shr.i
  %and.i297 = and i32 %155, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %145, ptr noundef %add.ptr.i296, i32 noundef %and.i297, i32 noundef 8192, i32 noundef 2, i32 noundef 0) #19
  %156 = ptrtoint ptr %parent.i288 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %parent.i288, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %157, i32 noundef %call41.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then144_crit_edge, label %dma_map_single_attrs.exit.if.end146_crit_edge

dma_map_single_attrs.exit.if.end146_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end146

dma_map_single_attrs.exit.if.then144_crit_edge:   ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then144

if.then144:                                       ; preds = %dma_map_single_attrs.exit.if.then144_crit_edge, %dma_map_single_attrs.exit.thread
  %158 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %arrayidx128, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %dma_map_single_attrs.exit.if.end146_crit_edge
  %retval.0.i300304 = phi i32 [ -1, %if.then144 ], [ %call41.i, %dma_map_single_attrs.exit.if.end146_crit_edge ]
  %159 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i300304)
  %dptr = getelementptr %struct.ravb_rx_desc, ptr %130, i32 %rem126, i32 3
  %160 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %dptr, align 4
  %161 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx130, align 4
  %arrayidx149 = getelementptr ptr, ptr %162, i32 %rem126
  %163 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call.i, ptr %arrayidx149, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.end146, %for.body.if.end150_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !193
  %die_dt151 = getelementptr %struct.ravb_rx_desc, ptr %130, i32 %rem126, i32 2
  %164 = ptrtoint ptr %die_dt151 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 -64, ptr %die_dt151, align 1
  %165 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx4, align 4
  %inc154 = add i32 %166, 1
  store i32 %inc154, ptr %arrayidx4, align 4
  %167 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx, align 4
  %cmp120.not = icmp eq i32 %168, %inc154
  br i1 %cmp120.not, label %if.end150.for.end_crit_edge, label %if.end150.for.body_crit_edge

if.end150.for.body_crit_edge:                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.end150.for.end_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %if.end150.for.end_crit_edge, %if.then133.for.end_crit_edge, %while.end.for.end_crit_edge
  %169 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %quota, align 4
  %inc155 = sub i32 1, %10
  %sub156.neg = add i32 %inc155, %boguscnt.1
  %sub157 = add i32 %sub156.neg, %170
  store i32 %sub157, ptr %quota, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %boguscnt.1)
  %cmp158 = icmp ugt i32 %boguscnt.1, 2147483646
  ret i1 %cmp158
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_set_rate_gbeth(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr i8, ptr %ndev, i32 3356
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 10, label %sw.bb
    i32 100, label %sw.bb1
    i32 1000, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %4, i32 1456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 0) #19, !srcloc !176
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i7 = getelementptr i8, ptr %ndev, i32 2312
  %5 = ptrtoint ptr %addr.i7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr.i7, align 8
  %add.ptr.i8 = getelementptr i8, ptr %6, i32 1456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 268435456) #19, !srcloc !176
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i9 = getelementptr i8, ptr %ndev, i32 2312
  %7 = ptrtoint ptr %addr.i9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr.i9, align 8
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 1456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 536870912) #19, !srcloc !176
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ravb_set_features_gbeth(ptr nocapture noundef readnone %ndev, i64 noundef %features) #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_dmac_init_gbeth(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ravb_ring_init(ptr noundef %ndev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %info1.i = getelementptr i8, ptr %ndev, i32 3392
  %0 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1.i, align 8
  %num_tx_desc2.i = getelementptr i8, ptr %ndev, i32 3384
  %2 = ptrtoint ptr %num_tx_desc2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_desc2.i, align 8
  %arrayidx.i = getelementptr i8, ptr %ndev, i32 2344
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl i32 %3, 3
  %mul3.i = mul i32 %mul.i, %5
  %arrayidx4.i = getelementptr i8, ptr %ndev, i32 2816
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %ndev, i32 2832
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %ndev, i32 2824
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr i8, ptr %ndev, i32 2840
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx7.i, align 4
  %rx_ring_format.i = getelementptr inbounds %struct.ravb_hw_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %rx_ring_format.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_ring_format.i, align 4
  tail call void %11(ptr noundef %ndev, i32 noundef 0) #19
  %arrayidx8.i = getelementptr i8, ptr %ndev, i32 2392
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8.i, align 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 %mul3.i)
  %15 = load ptr, ptr %arrayidx8.i, align 4
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp66.not.i = icmp eq i32 %17, 0
  br i1 %cmp66.not.i, label %if.end.ravb_ring_format.exit_crit_edge, label %for.body.lr.ph.i

if.end.ravb_ring_format.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_ring_format.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp13.i = icmp ugt i32 %3, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.068.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %tx_desc.067.i = phi ptr [ %15, %for.body.lr.ph.i ], [ %incdec.ptr15.i, %for.inc.i.for.body.i_crit_edge ]
  %die_dt.i = getelementptr inbounds %struct.ravb_tx_desc, ptr %tx_desc.067.i, i32 0, i32 2
  %18 = ptrtoint ptr %die_dt.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 48, ptr %die_dt.i, align 1
  br i1 %cmp13.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr.i = getelementptr %struct.ravb_tx_desc, ptr %tx_desc.067.i, i32 1
  %die_dt14.i = getelementptr %struct.ravb_tx_desc, ptr %tx_desc.067.i, i32 1, i32 2
  %19 = ptrtoint ptr %die_dt14.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 48, ptr %die_dt14.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %tx_desc.1.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %tx_desc.067.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.068.i, 1
  %incdec.ptr15.i = getelementptr %struct.ravb_tx_desc, ptr %tx_desc.1.i, i32 1
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ravb_ring_format.exit_crit_edge

for.inc.i.ravb_ring_format.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_ring_format.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

ravb_ring_format.exit:                            ; preds = %for.inc.i.ravb_ring_format.exit_crit_edge, %if.end.ravb_ring_format.exit_crit_edge
  %tx_desc.0.lcssa.i = phi ptr [ %15, %if.end.ravb_ring_format.exit_crit_edge ], [ %incdec.ptr15.i, %for.inc.i.ravb_ring_format.exit_crit_edge ]
  %arrayidx16.i = getelementptr i8, ptr %ndev, i32 2372
  %22 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx16.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #19
  %dptr.i = getelementptr inbounds %struct.ravb_tx_desc, ptr %tx_desc.0.lcssa.i, i32 0, i32 3
  %25 = ptrtoint ptr %dptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dptr.i, align 4
  %die_dt17.i = getelementptr inbounds %struct.ravb_tx_desc, ptr %tx_desc.0.lcssa.i, i32 0, i32 2
  %26 = ptrtoint ptr %die_dt17.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -112, ptr %die_dt17.i, align 1
  %desc_bat.i = getelementptr i8, ptr %ndev, i32 2360
  %27 = ptrtoint ptr %desc_bat.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc_bat.i, align 8
  %die_dt19.i = getelementptr %struct.ravb_desc, ptr %28, i32 4, i32 2
  %29 = ptrtoint ptr %die_dt19.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -112, ptr %die_dt19.i, align 1
  %arrayidx20.i = getelementptr i8, ptr %ndev, i32 2364
  %30 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx20.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #19
  %dptr21.i = getelementptr %struct.ravb_desc, ptr %28, i32 4, i32 3
  %33 = ptrtoint ptr %dptr21.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dptr21.i, align 4
  %34 = ptrtoint ptr %desc_bat.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc_bat.i, align 8
  %die_dt24.i = getelementptr %struct.ravb_desc, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %die_dt24.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -112, ptr %die_dt24.i, align 1
  %37 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx16.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #19
  %dptr27.i = getelementptr %struct.ravb_desc, ptr %35, i32 0, i32 3
  %40 = ptrtoint ptr %dptr27.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dptr27.i, align 4
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %42, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 96) #19, !srcloc !176
  %43 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %addr.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %44, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 2161791) #19, !srcloc !176
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %addr.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %46, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 2236928) #19, !srcloc !176
  %47 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %addr.i, align 8
  %add.ptr.i16 = getelementptr i8, ptr %48, i32 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #19, !srcloc !176
  %49 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %addr.i, align 8
  %add.ptr.i18 = getelementptr i8, ptr %50, i32 864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 16777216) #19, !srcloc !176
  %51 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %addr.i, align 8
  %add.ptr.i20 = getelementptr i8, ptr %52, i32 872
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 0) #19, !srcloc !176
  %53 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %addr.i, align 8
  %add.ptr.i22 = getelementptr i8, ptr %54, i32 880
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 16777344) #19, !srcloc !176
  %55 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %addr.i, align 8
  %add.ptr.i24 = getelementptr i8, ptr %56, i32 888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 16777216) #19, !srcloc !176
  br label %cleanup

cleanup:                                          ; preds = %ravb_ring_format.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ravb_ring_format.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ravb_emac_init_gbeth(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 8
  %add.ptr.i43 = getelementptr i8, ptr %1, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 69206016) #19, !srcloc !176
  %duplex = getelementptr i8, ptr %ndev, i32 3388
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  %or5 = select i1 %cmp, i32 34275426, i32 34275424
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr.i, align 8
  %add.ptr.i45 = getelementptr i8, ptr %5, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %6 = tail call i32 @llvm.bswap.i32(i32 %or5) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %6) #19, !srcloc !176
  %speed.i = getelementptr i8, ptr %ndev, i32 3356
  %7 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %8, label %entry.ravb_set_rate_gbeth.exit_crit_edge [
    i32 10, label %sw.bb.i
    i32 100, label %sw.bb1.i
    i32 1000, label %sw.bb2.i
  ]

entry.ravb_set_rate_gbeth.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_set_rate_gbeth.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %11, i32 1456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 0) #19, !srcloc !176
  br label %ravb_set_rate_gbeth.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 1456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 268435456) #19, !srcloc !176
  br label %ravb_set_rate_gbeth.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %15, i32 1456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 536870912) #19, !srcloc !176
  br label %ravb_set_rate_gbeth.exit

ravb_set_rate_gbeth.exit:                         ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %entry.ravb_set_rate_gbeth.exit_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %conv = zext i8 %19 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx7 = getelementptr i8, ptr %17, i32 1
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %21 to i32
  %shl9 = shl nuw nsw i32 %conv8, 16
  %or10 = or i32 %shl9, %shl
  %arrayidx12 = getelementptr i8, ptr %17, i32 2
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %23 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %or15 = or i32 %or10, %shl14
  %arrayidx17 = getelementptr i8, ptr %17, i32 3
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %25 to i32
  %or19 = or i32 %or15, %conv18
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr.i, align 8
  %add.ptr.i47 = getelementptr i8, ptr %27, i32 1472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %28 = tail call i32 @llvm.bswap.i32(i32 %or19) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %28) #19, !srcloc !176
  %29 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_addr, align 64
  %arrayidx21 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %32 to i32
  %shl23 = shl nuw nsw i32 %conv22, 8
  %arrayidx25 = getelementptr i8, ptr %30, i32 5
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %34 to i32
  %or27 = or i32 %shl23, %conv26
  %35 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %addr.i, align 8
  %add.ptr.i49 = getelementptr i8, ptr %36, i32 1480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %37 = tail call i32 @llvm.bswap.i32(i32 %or27) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %37) #19, !srcloc !176
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr.i, align 8
  %add.ptr.i51 = getelementptr i8, ptr %39, i32 1296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 352321536) #19, !srcloc !176
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %addr.i, align 8
  %add.ptr.i53 = getelementptr i8, ptr %41, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 805306368) #19, !srcloc !176
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr.i, align 8
  %add.ptr.i55 = getelementptr i8, ptr %43, i32 1304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 16777216) #19, !srcloc !176
  %44 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %addr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 1328
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %47 = and i32 %46, -150994945
  %48 = or i32 %47, 16777216
  %49 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %addr.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %50, i32 1328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %48) #19, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netif_device_detach(ptr noundef %1) #19
  %wol_enabled = getelementptr i8, ptr %1, i32 3380
  %4 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %wol_enabled, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %info1.i = getelementptr i8, ptr %1, i32 3392
  %6 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info1.i, align 8
  %addr.i.i = getelementptr i8, ptr %1, i32 2312
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %9, i32 864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 0) #19, !srcloc !176
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %11, i32 880
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 0) #19, !srcloc !176
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %13, i32 888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 0) #19, !srcloc !176
  %emac_irq.i = getelementptr i8, ptr %1, i32 3360
  %14 = ptrtoint ptr %emac_irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %emac_irq.i, align 8
  tail call void @synchronize_irq(i32 noundef %15) #19
  %nc_queues.i = getelementptr inbounds %struct.ravb_hw_info, ptr %7, i32 0, i32 16
  %16 = ptrtoint ptr %nc_queues.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %nc_queues.i, align 8
  %17 = and i16 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %if.then3.ravb_wol_setup.exit_crit_edge, label %if.then.i

if.then3.ravb_wol_setup.exit_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_wol_setup.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx.i = getelementptr i8, ptr %1, i32 3072
  tail call void @napi_disable(ptr noundef %arrayidx.i) #19
  br label %ravb_wol_setup.exit

ravb_wol_setup.exit:                              ; preds = %if.then.i, %if.then3.ravb_wol_setup.exit_crit_edge
  %napi2.i = getelementptr i8, ptr %1, i32 2848
  tail call void @napi_disable(ptr noundef %napi2.i) #19
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %19, i32 1304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 33554432) #19, !srcloc !176
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 1280
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %23 = or i32 %22, 131072
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %25, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %23) #19, !srcloc !176
  %26 = ptrtoint ptr %emac_irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %emac_irq.i, align 8
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %27, i32 noundef 1) #19
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call5 = tail call i32 @ravb_close(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %ravb_wol_setup.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %ravb_wol_setup.exit ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info2 = getelementptr i8, ptr %1, i32 3392
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 8
  %wol_enabled = getelementptr i8, ptr %1, i32 3380
  %4 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %wol_enabled, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %addr.i = getelementptr i8, ptr %1, i32 2312
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #19, !srcloc !176
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @ravb_set_config_mode(ptr noundef %1)
  %gptp = getelementptr inbounds %struct.ravb_hw_info, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load3 = load i16, ptr %gptp, align 8
  %9 = and i16 %bf.load3, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %if.end.if.end18_crit_edge, label %if.then13

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

if.then13:                                        ; preds = %if.end
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %clk.i = getelementptr i8, ptr %1, i32 2316
  %13 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk.i, align 4
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %14) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then13.cleanup_crit_edge, label %if.else174.i.i.i

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.else174.i.i.i:                                 ; preds = %if.then13
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call2.i, i64 1048576000000000) #23, !srcloc !178
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %15, 1
  %16 = add i64 %asmresult1.i.i.i.i, -268435456
  call void @__sanitizer_cov_trace_const_cmp8(i64 -268435424, i64 %16)
  %17 = icmp ult i64 %16, -268435424
  br i1 %17, label %do.end.i, label %if.end17

do.end.i:                                         ; preds = %if.else174.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.58, i64 noundef %asmresult1.i.i.i.i, i32 noundef 32, i32 noundef 268435455) #22
  br label %cleanup

if.end17:                                         ; preds = %if.else174.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i = trunc i64 %asmresult1.i.i.i.i to i32
  %addr.i.i = getelementptr i8, ptr %1, i32 2312
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i16.i = getelementptr i8, ptr %19, i32 924
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %20) #19, !srcloc !176
  %21 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 912
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %24 = or i32 %23, 134217728
  %25 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %26, i32 912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %24) #19, !srcloc !176
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end.if.end18_crit_edge
  %27 = ptrtoint ptr %gptp to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load19 = load i16, ptr %gptp, align 8
  %28 = and i16 %bf.load19, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool23.not = icmp eq i16 %28, 0
  br i1 %tobool23.not, label %if.end18.if.end25_crit_edge, label %if.then24

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end25

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %wol_enabled, align 4
  %30 = and i8 %bf.load.i, 16
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 9
  %33 = and i8 %bf.load.i, 8
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 11
  %36 = or i32 %35, %32
  %addr.i.i.i = getelementptr i8, ptr %1, i32 2312
  %37 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 140
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %40 = and i32 %39, -6291457
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #19
  %or.i.i = or i32 %41, %36
  %42 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %43, i32 140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %44) #19, !srcloc !176
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end18.if.end25_crit_edge
  %desc_bat_dma = getelementptr i8, ptr %1, i32 2356
  %45 = ptrtoint ptr %desc_bat_dma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %desc_bat_dma, align 4
  %addr.i69 = getelementptr i8, ptr %1, i32 2312
  %47 = ptrtoint ptr %addr.i69 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %addr.i69, align 8
  %add.ptr.i70 = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %49) #19, !srcloc !176
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  %52 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load29 = load i8, ptr %wol_enabled, align 4
  %53 = and i8 %bf.load29, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool33.not = icmp eq i8 %53, 0
  br i1 %tobool33.not, label %if.then27.if.end39_crit_edge, label %if.then34

if.then27.if.end39_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end39

if.then34:                                        ; preds = %if.then27
  %54 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info2, align 8
  %nc_queues.i = getelementptr inbounds %struct.ravb_hw_info, ptr %55, i32 0, i32 16
  %56 = ptrtoint ptr %nc_queues.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load.i71 = load i16, ptr %nc_queues.i, align 8
  %57 = and i16 %bf.load.i71, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i72 = icmp eq i16 %57, 0
  br i1 %tobool.not.i72, label %if.then34.ravb_wol_restore.exit_crit_edge, label %if.then.i

if.then34.ravb_wol_restore.exit_crit_edge:        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #21
  br label %ravb_wol_restore.exit

if.then.i:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx.i = getelementptr i8, ptr %1, i32 3072
  tail call void @napi_enable(ptr noundef %arrayidx.i) #19
  br label %ravb_wol_restore.exit

ravb_wol_restore.exit:                            ; preds = %if.then.i, %if.then34.ravb_wol_restore.exit_crit_edge
  %napi2.i = getelementptr i8, ptr %1, i32 2848
  tail call void @napi_enable(ptr noundef %napi2.i) #19
  %58 = ptrtoint ptr %addr.i69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %addr.i69, align 8
  %add.ptr.i.i.i74 = getelementptr i8, ptr %59, i32 1280
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i74) #19, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !174
  %61 = and i32 %60, -131073
  %62 = ptrtoint ptr %addr.i69 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %addr.i69, align 8
  %add.ptr.i4.i.i75 = getelementptr i8, ptr %63, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !175
  tail call void @arm_heavy_mb() #19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i75, i32 %61) #19, !srcloc !176
  %call4.i = tail call i32 @ravb_close(ptr noundef %1) #19
  %emac_irq.i = getelementptr i8, ptr %1, i32 3360
  %64 = ptrtoint ptr %emac_irq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %emac_irq.i, align 8
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %65, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool36.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool36.not, label %ravb_wol_restore.exit.if.end39_crit_edge, label %ravb_wol_restore.exit.cleanup_crit_edge

ravb_wol_restore.exit.cleanup_crit_edge:          ; preds = %ravb_wol_restore.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

ravb_wol_restore.exit.if.end39_crit_edge:         ; preds = %ravb_wol_restore.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end39

if.end39:                                         ; preds = %ravb_wol_restore.exit.if.end39_crit_edge, %if.then27.if.end39_crit_edge
  %call40 = tail call i32 @ravb_open(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp = icmp slt i32 %call40, 0
  br i1 %cmp, label %if.end39.cleanup_crit_edge, label %if.end42

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end42:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @netif_device_attach(ptr noundef %1) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end39.cleanup_crit_edge, %ravb_wol_restore.exit.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end.i, %if.then13.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %ravb_wol_restore.exit.cleanup_crit_edge ], [ %call40, %if.end39.cleanup_crit_edge ], [ %call40, %if.end42 ], [ 0, %if.end25.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ravb_runtime_nop(ptr nocapture noundef readnone %dev) #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

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
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind readnone }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119, !121, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161}
!llvm.named.register.sp = !{!163}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @__initcall__kmod_ravb__356_2969_ravb_driver_init6, !1, !"__initcall__kmod_ravb__356_2969_ravb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2969, i32 1}
!2 = !{ptr @__exitcall_ravb_driver_exit, !1, !"__exitcall_ravb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author357, !4, !"__UNIQUE_ID_author357", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2971, i32 1}
!5 = !{ptr @__UNIQUE_ID_description358, !6, !"__UNIQUE_ID_description358", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2972, i32 1}
!7 = !{ptr @__UNIQUE_ID_file359, !8, !"__UNIQUE_ID_file359", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2973, i32 1}
!9 = !{ptr @__UNIQUE_ID_license360, !8, !"__UNIQUE_ID_license360", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2963, i32 11}
!12 = !{ptr @ravb_driver, !13, !"ravb_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2959, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2579, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ravb_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ravb_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2587, i32 10}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2604, i32 39}
!26 = !{ptr @ravb_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2636, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ravb_probe.__key.9, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2637, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2643, i32 48}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2645, i32 29}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2648, i32 39}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2678, i32 51}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2722, i32 3}
!42 = !{ptr @ravb_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ravb_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2745, i32 3}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ravb_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ravb_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2753, i32 3}
!51 = !{ptr @ravb_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ravb_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2769, i32 20}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1907, i32 20}
!57 = !{ptr @__func__.ravb_tx_timeout_work, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1908, i32 7}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 80, i32 20}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 44, i32 2}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 45, i32 2}
!65 = distinct !{null, !66, !"ravb_rx_irqs", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 43, i32 20}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 49, i32 2}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 50, i32 2}
!71 = distinct !{null, !72, !"ravb_tx_irqs", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 48, i32 20}
!73 = !{ptr @ravb_netdev_ops, !74, !"ravb_netdev_ops", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2339, i32 36}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1779, i32 21}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1784, i32 16}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1788, i32 16}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1792, i32 22}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1796, i32 22}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1800, i32 22}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1804, i32 22}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1137, i32 9}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1140, i32 9}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1752, i32 41}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1757, i32 20}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1408, i32 28}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1426, i32 20}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1437, i32 21}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1441, i32 21}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1388, i32 37}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1388, i32 14}
!109 = !{ptr @r8a7795es10, !110, !"r8a7795es10", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1387, i32 42}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2150, i32 7}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1939, i32 3}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!117 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!121 = distinct !{null, !120, !"<string literal>", i1 false, i1 false}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1858, i32 2}
!128 = !{ptr @ravb_ethtool_ops, !129, !"ravb_ethtool_ops", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1728, i32 33}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1645, i32 8}
!132 = !{ptr @__func__.ravb_set_ringparam, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1665, i32 8}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2493, i32 3}
!136 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ravb_set_gti._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @ravb_set_gti._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2527, i32 32}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2532, i32 32}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2370, i32 24}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2372, i32 47}
!147 = !{ptr @bb_ops, !148, !"bb_ops", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 186, i32 32}
!149 = !{ptr @ravb_match_table, !150, !"ravb_match_table", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2468, i32 34}
!151 = !{ptr @ravb_gen2_hw_info, !152, !"ravb_gen2_hw_info", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2424, i32 34}
!153 = !{ptr @ravb_gstrings_stats, !154, !"ravb_gstrings_stats", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1515, i32 19}
!155 = !{ptr @ravb_gen3_hw_info, !156, !"ravb_gen3_hw_info", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2399, i32 34}
!157 = !{ptr @gbeth_hw_info, !158, !"gbeth_hw_info", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2447, i32 34}
!159 = !{ptr @ravb_gstrings_stats_gbeth, !160, !"ravb_gstrings_stats_gbeth", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 1497, i32 19}
!161 = !{ptr @ravb_dev_pm_ops, !162, !"ravb_dev_pm_ops", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/renesas/ravb_main.c", i32 2954, i32 32}
!163 = !{!"sp"}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{i64 6332960}
!174 = !{i64 2153873309}
!175 = !{i64 2153874664}
!176 = !{i64 6332542}
!177 = !{!"auto-init"}
!178 = !{i64 2148709730, i64 2148710010, i64 2148710344, i64 2148710678}
!179 = !{i64 2156927889}
!180 = !{!"branch_weights", i32 1, i32 2000}
!181 = !{!"branch_weights", i32 2000, i32 1}
!182 = !{i64 2154696403, i64 2154696891, i64 2154696440, i64 2154696496, i64 2154696530, i64 2154696554, i64 2154696595, i64 2154696616, i64 2154696644, i64 2154696678}
!183 = !{i64 2156950229}
!184 = !{i64 2153329099, i64 2153329124}
!185 = !{i64 2153328418, i64 2153328443}
!186 = !{i64 5823973}
!187 = !{i64 5824170}
!188 = !{i64 2153309403}
!189 = !{i64 2148320726, i64 2148320758, i64 2148320787, i64 2148320821, i64 2148320852, i64 2148320875}
!190 = !{i64 2156941520}
!191 = !{i64 2156943375}
!192 = !{i64 2156939408}
!193 = !{i64 2156940068}
