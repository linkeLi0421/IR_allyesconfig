; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/socionext/sni_ave.c_pt.bc'
source_filename = "../drivers/net/ethernet/socionext/sni_ave.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ave_soc_data = type { i8, [4 x ptr], [2 x ptr], ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ave_desc = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ave_private = type { ptr, i32, i32, i32, i32, i32, [4 x ptr], i32, [2 x ptr], i32, ptr, ptr, ptr, i32, i32, i32, %struct.ave_stats, %struct.ave_stats, ptr, %struct.napi_struct, %struct.napi_struct, %struct.ave_desc_info, %struct.ave_desc_info, i32, i32, i32, ptr }
%struct.ave_stats = type { %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64 }
%struct.ave_desc_info = type { i32, i32, i32, i32, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }

@__initcall__kmod_sni_ave__349_1987_ave_driver_init6 = internal global ptr @ave_driver_init, section ".initcall6.init", align 4
@ave_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ave_probe, ptr @ave_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_ave_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ave_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ave_driver_exit = internal global ptr @ave_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author350 = internal constant [65 x i8] c"sni_ave.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description351 = internal constant [59 x i8] c"sni_ave.description=Socionext UniPhier AVE ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [52 x i8] c"sni_ave.file=drivers/net/ethernet/socionext/sni_ave\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [23 x i8] c"sni_ave.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ave\00", [28 x i8] zeroinitializer }, align 32
@of_ave_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-ave4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ave_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-ave4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ave_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-ave4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ave_ld11_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-ave4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ave_ld20_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-ave4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ave_pxs3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-ave4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ave_nx1_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@ave_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ave_suspend, ptr @ave_resume, ptr @ave_suspend, ptr @ave_resume, ptr @ave_suspend, ptr @ave_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/socionext/sni_ave.c\00", [55 x i8] zeroinitializer }, align 32
@ave_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 1575, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phy-mode not found\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ave_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ave_probe._entry_ptr = internal global ptr @ave_probe._entry, section ".printk_index", align 4
@ave_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.1, i32 1589, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't allocate ethernet device\0A\00", [32 x i8] zeroinitializer }, align 32
@ave_probe._entry_ptr.8 = internal global ptr @ave_probe._entry.6, section ".printk_index", align 4
@ave_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @ave_init, ptr @ave_uninit, ptr @ave_open, ptr @ave_stop, ptr @ave_start_xmit, ptr null, ptr null, ptr null, ptr @ave_set_rx_mode, ptr @ave_set_mac_address, ptr null, ptr null, ptr @ave_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ave_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ave_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ave_ethtool_get_drvinfo, ptr null, ptr null, ptr @ave_ethtool_get_wol, ptr @ave_ethtool_set_wol, ptr @ave_ethtool_get_msglevel, ptr @ave_ethtool_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ave_ethtool_get_pauseparam, ptr @ave_ethtool_set_pauseparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ave_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.1, i32 1607, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using random MAC address: %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ave_probe._entry_ptr.12 = internal global ptr @ave_probe._entry.9, section ".printk_index", align 4
@ave_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&priv->stats_tx.syncp)->seq\00", [34 x i8] zeroinitializer }, align 32
@ave_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&priv->stats_rx.syncp)->seq\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"socionext,syscon-phy-mode\00", [38 x i8] zeroinitializer }, align 32
@ave_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.1, i32 1663, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't get syscon-phy-mode property\0A\00", [60 x i8] zeroinitializer }, align 32
@ave_probe._entry_ptr.19 = internal global ptr @ave_probe._entry.17, section ".printk_index", align 4
@ave_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.1, i32 1669, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't map syscon-phy-mode\0A\00", [37 x i8] zeroinitializer }, align 32
@ave_probe._entry_ptr.22 = internal global ptr @ave_probe._entry.20, section ".printk_index", align 4
@ave_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.1, i32 1674, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid phy-mode setting\0A\00", [38 x i8] zeroinitializer }, align 32
@ave_probe._entry_ptr.25 = internal global ptr @ave_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uniphier-mdio\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%x\00", [26 x i8] zeroinitializer }, align 32
@ave_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.1, i32 1699, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register netdevice\0A\00", [34 x i8] zeroinitializer }, align 32
@ave_probe._entry_ptr.30 = internal global ptr @ave_probe._entry.28, section ".printk_index", align 4
@ave_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.1, i32 1710, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Socionext %c%c%c%c Ethernet IP %s (irq=%d, phy=%s)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ave_probe._entry_ptr.34 = internal global ptr @ave_probe._entry.31, section ".printk_index", align 4
@ave_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.1, i32 1178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"can't enable clock\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ave_init\00", [23 x i8] zeroinitializer }, align 32
@ave_init._entry_ptr = internal global ptr @ave_init._entry, section ".printk_index", align 4
@ave_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.1, i32 1186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't deassert reset\0A\00", [42 x i8] zeroinitializer }, align 32
@ave_init._entry_ptr.39 = internal global ptr @ave_init._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@ave_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.1, i32 1200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mdio node not found\0A\00", [43 x i8] zeroinitializer }, align 32
@ave_init._entry_ptr.43 = internal global ptr @ave_init._entry.41, section ".printk_index", align 4
@ave_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.36, ptr @.str.1, i32 1207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register mdiobus\0A\00", [36 x i8] zeroinitializer }, align 32
@ave_init._entry_ptr.46 = internal global ptr @ave_init._entry.44, section ".printk_index", align 4
@ave_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.36, ptr @.str.1, i32 1213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@ave_init._entry_ptr.49 = internal global ptr @ave_init._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"receive a packet exceeding frame buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't allocate skb for Rx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't map skb for Rx\0A\00", [42 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't stop descriptor\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't suspend descriptor\0A\00", [38 x i8] zeroinitializer }, align 32
@v4multi_macadr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\00\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@v6multi_macadr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3\00\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read (phy:%d reg:%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to write (phy:%d reg:%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"v%u.%u\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@ave_pro4_data = internal constant { %struct.ave_soc_data, [32 x i8] } { %struct.ave_soc_data { i8 0, [4 x ptr] [ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], [2 x ptr] [ptr @.str.92, ptr @.str.93], ptr @ave_pro4_get_pinmode }, [32 x i8] zeroinitializer }, align 32
@ave_pxs2_data = internal constant { %struct.ave_soc_data, [32 x i8] } { %struct.ave_soc_data { i8 0, [4 x ptr] [ptr @.str.93, ptr null, ptr null, ptr null], [2 x ptr] [ptr @.str.93, ptr null], ptr @ave_pro4_get_pinmode }, [32 x i8] zeroinitializer }, align 32
@ave_ld11_data = internal constant { %struct.ave_soc_data, [32 x i8] } { %struct.ave_soc_data { i8 0, [4 x ptr] [ptr @.str.93, ptr null, ptr null, ptr null], [2 x ptr] [ptr @.str.93, ptr null], ptr @ave_ld11_get_pinmode }, [32 x i8] zeroinitializer }, align 32
@ave_ld20_data = internal constant { %struct.ave_soc_data, [32 x i8] } { %struct.ave_soc_data { i8 1, [4 x ptr] [ptr @.str.93, ptr null, ptr null, ptr null], [2 x ptr] [ptr @.str.93, ptr null], ptr @ave_ld20_get_pinmode }, [32 x i8] zeroinitializer }, align 32
@ave_pxs3_data = internal constant { %struct.ave_soc_data, [32 x i8] } { %struct.ave_soc_data { i8 0, [4 x ptr] [ptr @.str.93, ptr null, ptr null, ptr null], [2 x ptr] [ptr @.str.93, ptr null], ptr @ave_pxs3_get_pinmode }, [32 x i8] zeroinitializer }, align 32
@ave_nx1_data = internal constant { %struct.ave_soc_data, [32 x i8] } { %struct.ave_soc_data { i8 1, [4 x ptr] [ptr @.str.93, ptr null, ptr null, ptr null], [2 x ptr] [ptr @.str.93, ptr null], ptr @ave_pxs3_get_pinmode }, [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gio\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ether\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ether-gb\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ether-phy\00", [22 x i8] zeroinitializer }, align 32
@__const.ave_resume.wol = private unnamed_addr constant { i32, i32, i32, [6 x i8], [2 x i8] } { i32 5, i32 0, i32 0, [6 x i8] zeroinitializer, [2 x i8] zeroinitializer }, align 4
@switch.table.phy_modes = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.90, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89], [40 x i8] zeroinitializer }, align 32
@switch.table.ave_pro4_get_pinmode = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@switch.table.ave_ld20_get_pinmode = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.97 = internal global [7 x i64] [i64 5, i64 32, i64 7, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.98 = private unnamed_addr constant [11 x i8] c"ave_driver\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1978, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1982, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"of_ave_match\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1949, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"ave_pm_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1779, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1569, i32 6 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1575, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1589, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"ave_netdev_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1540, i32 36 }
@___asan_gen_.137 = private unnamed_addr constant [16 x i8] c"ave_ethtool_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 477, i32 33 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1606, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1636, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1637, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1660, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1663, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1669, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1674, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1685, i32 21 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1686, i32 44 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1699, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1707, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1178, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1186, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1198, i32 37 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1200, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1207, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1213, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 941, i32 20 }
@___asan_gen_.243 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 271, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 589, i32 21 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 614, i32 20 }
@___asan_gen_.255 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 326, i32 6 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 646, i32 21 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 659, i32 21 }
@___asan_gen_.263 = private unnamed_addr constant [15 x i8] c"v4multi_macadr\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1460, i32 17 }
@___asan_gen_.266 = private unnamed_addr constant [15 x i8] c"v6multi_macadr\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1461, i32 17 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 511, i32 20 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 543, i32 20 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 390, i32 21 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 211, i32 10 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 213, i32 10 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 215, i32 10 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 217, i32 10 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 219, i32 10 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 221, i32 10 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 223, i32 10 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 225, i32 10 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 227, i32 10 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 229, i32 10 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 231, i32 10 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 233, i32 10 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 235, i32 10 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 237, i32 10 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 239, i32 10 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 241, i32 10 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 243, i32 10 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 245, i32 10 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 247, i32 10 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 249, i32 10 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 251, i32 10 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 253, i32 10 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 255, i32 10 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 257, i32 10 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 259, i32 10 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 261, i32 10 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 263, i32 10 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 265, i32 10 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 267, i32 10 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 269, i32 10 }
@___asan_gen_.369 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 271, i32 10 }
@___asan_gen_.371 = private unnamed_addr constant [14 x i8] c"ave_pro4_data\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1883, i32 34 }
@___asan_gen_.374 = private unnamed_addr constant [14 x i8] c"ave_pxs2_data\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1894, i32 34 }
@___asan_gen_.377 = private unnamed_addr constant [14 x i8] c"ave_ld11_data\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1905, i32 34 }
@___asan_gen_.380 = private unnamed_addr constant [14 x i8] c"ave_ld20_data\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1916, i32 34 }
@___asan_gen_.383 = private unnamed_addr constant [14 x i8] c"ave_pxs3_data\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1927, i32 34 }
@___asan_gen_.386 = private unnamed_addr constant [13 x i8] c"ave_nx1_data\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1938, i32 34 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1886, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1886, i32 10 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1886, i32 19 }
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.399 = private constant [44 x i8] c"../drivers/net/ethernet/socionext/sni_ave.c\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1886, i32 31 }
@___asan_gen_.401 = private unnamed_addr constant [23 x i8] c"switch.table.phy_modes\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [34 x i8] c"switch.table.ave_pro4_get_pinmode\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [34 x i8] c"switch.table.ave_ld20_get_pinmode\00", align 1
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__exitcall_ave_driver_exit, ptr @__initcall__kmod_sni_ave__349_1987_ave_driver_init6, ptr @ave_driver_exit, ptr @ave_init._entry, ptr @ave_init._entry.37, ptr @ave_init._entry.41, ptr @ave_init._entry.44, ptr @ave_init._entry.47, ptr @ave_init._entry_ptr, ptr @ave_init._entry_ptr.39, ptr @ave_init._entry_ptr.43, ptr @ave_init._entry_ptr.46, ptr @ave_init._entry_ptr.49, ptr @ave_probe._entry, ptr @ave_probe._entry.17, ptr @ave_probe._entry.20, ptr @ave_probe._entry.23, ptr @ave_probe._entry.28, ptr @ave_probe._entry.31, ptr @ave_probe._entry.6, ptr @ave_probe._entry.9, ptr @ave_probe._entry_ptr, ptr @ave_probe._entry_ptr.12, ptr @ave_probe._entry_ptr.19, ptr @ave_probe._entry_ptr.22, ptr @ave_probe._entry_ptr.25, ptr @ave_probe._entry_ptr.30, ptr @ave_probe._entry_ptr.34, ptr @ave_probe._entry_ptr.8, ptr @ave_driver, ptr @.str, ptr @of_ave_match, ptr @ave_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ave_netdev_ops, ptr @ave_ethtool_ops, ptr @.str.10, ptr @.str.11, ptr @ave_probe.__key, ptr @.str.13, ptr @ave_probe.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @v4multi_macadr, ptr @v6multi_macadr, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @ave_pro4_data, ptr @ave_pxs2_data, ptr @ave_ld11_data, ptr @ave_ld20_data, ptr @ave_pxs3_data, ptr @ave_nx1_data, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @switch.table.phy_modes, ptr @switch.table.ave_pro4_get_pinmode, ptr @switch.table.ave_ld20_get_pinmode], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ave_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4multi_macadr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v6multi_macadr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_pro4_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_pxs2_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_ld11_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_ld20_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_pxs3_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ave_nx1_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_modes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ave_pro4_get_pinmode to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ave_ld20_get_pinmode to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ave_driver, ptr noundef null) #16
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ave_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @platform_driver_unregister(ptr noundef nonnull @ave_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %args = alloca %struct.of_phandle_args, align 4
  %phy_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #16
  %1 = call ptr @memset(ptr %args, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_mode) #16
  %2 = ptrtoint ptr %phy_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %phy_mode, align 4, !annotation !215
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !216

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1569, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end24:                                         ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call25 = call i32 @of_get_phy_mode(ptr noundef %4, ptr noundef nonnull %phy_mode) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end31, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #19
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %call32 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %if.end31.cleanup_crit_edge, label %if.end34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %call35 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #16
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %call40 = call ptr @devm_alloc_etherdev_mqs(ptr noundef %dev1, i32 noundef 752, i32 noundef 1, i32 noundef 1) #16
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %do.end45, label %if.end46

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #19
  br label %cleanup

if.end46:                                         ; preds = %if.end39
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call40, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ave_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call40, i32 0, i32 44
  %7 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ave_ethtool_ops, ptr %ethtool_ops, align 16
  %parent = getelementptr inbounds %struct.net_device, ptr %call40, i32 0, i32 133, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %parent, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call40, i32 0, i32 23
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features, align 16
  %or = or i64 %10, 1099511627778
  store i64 %or, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call40, i32 0, i32 24
  %11 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hw_features, align 8
  %or48 = or i64 %12, 1099511627778
  store i64 %or48, ptr %hw_features, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call40, i32 0, i32 31
  %13 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1500, ptr %max_mtu, align 4
  %call49 = call i32 @of_get_ethdev_address(ptr noundef %4, ptr noundef nonnull %call40) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end46.if.end55_crit_edge, label %if.then51

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call40)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call40, i32 0, i32 86
  %14 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef %15) #19
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end46.if.end55_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call40, i32 2304
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call35, ptr %add.ptr.i, align 8
  %irq58 = getelementptr i8, ptr %call40, i32 2308
  %17 = ptrtoint ptr %irq58 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call32, ptr %irq58, align 4
  %ndev59 = getelementptr i8, ptr %call40, i32 2544
  %18 = ptrtoint ptr %ndev59 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call40, ptr %ndev59, align 8
  %msg_enable = getelementptr i8, ptr %call40, i32 2320
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 255, ptr %msg_enable, align 8
  %20 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy_mode, align 4
  %phy_mode61 = getelementptr i8, ptr %call40, i32 2356
  %22 = ptrtoint ptr %phy_mode61 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %phy_mode61, align 4
  %data62 = getelementptr i8, ptr %call40, i32 3052
  %23 = ptrtoint ptr %data62 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call, ptr %data62, align 4
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool64.not = icmp eq i8 %25, 0
  %.sink339 = select i1 %tobool64.not, i32 8, i32 12
  %.sink = select i1 %tobool64.not, i32 6144, i32 7168
  %dma_mask.0 = select i1 %tobool64.not, i64 4294967295, i64 -1
  %26 = getelementptr i8, ptr %call40, i32 2316
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink339, ptr %26, align 4
  %28 = getelementptr i8, ptr %call40, i32 3024
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4096, ptr %28, align 4
  %30 = getelementptr i8, ptr %call40, i32 3004
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %30, align 4
  %call73 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %dma_mask.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end76:                                         ; preds = %if.end55
  %tx77 = getelementptr i8, ptr %call40, i32 3020
  %32 = ptrtoint ptr %tx77 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 64, ptr %tx77, align 4
  %rx78 = getelementptr i8, ptr %call40, i32 3000
  %33 = ptrtoint ptr %rx78 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 256, ptr %rx78, align 8
  %stats_tx = getelementptr i8, ptr %call40, i32 2464
  %dep_map.i = getelementptr i8, ptr %call40, i32 2468
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @ave_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %34 = ptrtoint ptr %stats_tx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %stats_tx, align 4
  %stats_rx = getelementptr i8, ptr %call40, i32 2384
  %dep_map.i331 = getelementptr i8, ptr %call40, i32 2388
  call void @lockdep_init_map_type(ptr noundef %dep_map.i331, ptr noundef nonnull @.str.15, ptr noundef nonnull @ave_probe.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %35 = ptrtoint ptr %stats_rx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %stats_rx, align 4
  %nclks = getelementptr i8, ptr %call40, i32 2324
  %36 = ptrtoint ptr %data62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data62, align 4
  %arrayidx = getelementptr %struct.ave_soc_data, ptr %37, i32 0, i32 1, i32 0
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %tobool90.not = icmp eq ptr %39, null
  br i1 %tobool90.not, label %if.end76.for.end_crit_edge, label %if.end92

if.end76.for.end_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end92:                                         ; preds = %if.end76
  %call93 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %39) #16
  %arrayidx94 = getelementptr i8, ptr %call40, i32 2328
  %40 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call93, ptr %arrayidx94, align 4
  %cmp.i332 = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i332, label %if.end92.if.then98_crit_edge, label %if.end102

if.end92.if.then98_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then98

if.then98:                                        ; preds = %if.end92.3.if.then98_crit_edge, %if.end92.2.if.then98_crit_edge, %if.end92.1.if.then98_crit_edge, %if.end92.if.then98_crit_edge
  %call93.lcssa = phi ptr [ %call93, %if.end92.if.then98_crit_edge ], [ %call93.1, %if.end92.1.if.then98_crit_edge ], [ %call93.2, %if.end92.2.if.then98_crit_edge ], [ %call93.3, %if.end92.3.if.then98_crit_edge ]
  %41 = ptrtoint ptr %call93.lcssa to i32
  br label %cleanup

if.end102:                                        ; preds = %if.end92
  %42 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nclks, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %nclks, align 4
  %44 = ptrtoint ptr %data62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data62, align 4
  %arrayidx.1 = getelementptr %struct.ave_soc_data, ptr %45, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.1, align 4
  %tobool90.not.1 = icmp eq ptr %47, null
  br i1 %tobool90.not.1, label %if.end102.for.end_crit_edge, label %if.end92.1

if.end102.for.end_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end92.1:                                       ; preds = %if.end102
  %call93.1 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %47) #16
  %arrayidx94.1 = getelementptr i8, ptr %call40, i32 2332
  %48 = ptrtoint ptr %arrayidx94.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call93.1, ptr %arrayidx94.1, align 4
  %cmp.i332.1 = icmp ugt ptr %call93.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i332.1, label %if.end92.1.if.then98_crit_edge, label %if.end102.1

if.end92.1.if.then98_crit_edge:                   ; preds = %if.end92.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then98

if.end102.1:                                      ; preds = %if.end92.1
  %49 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nclks, align 4
  %inc.1 = add i32 %50, 1
  store i32 %inc.1, ptr %nclks, align 4
  %51 = ptrtoint ptr %data62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data62, align 4
  %arrayidx.2 = getelementptr %struct.ave_soc_data, ptr %52, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.2, align 4
  %tobool90.not.2 = icmp eq ptr %54, null
  br i1 %tobool90.not.2, label %if.end102.1.for.end_crit_edge, label %if.end92.2

if.end102.1.for.end_crit_edge:                    ; preds = %if.end102.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end92.2:                                       ; preds = %if.end102.1
  %call93.2 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %54) #16
  %arrayidx94.2 = getelementptr i8, ptr %call40, i32 2336
  %55 = ptrtoint ptr %arrayidx94.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call93.2, ptr %arrayidx94.2, align 4
  %cmp.i332.2 = icmp ugt ptr %call93.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i332.2, label %if.end92.2.if.then98_crit_edge, label %if.end102.2

if.end92.2.if.then98_crit_edge:                   ; preds = %if.end92.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then98

if.end102.2:                                      ; preds = %if.end92.2
  %56 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nclks, align 4
  %inc.2 = add i32 %57, 1
  store i32 %inc.2, ptr %nclks, align 4
  %58 = ptrtoint ptr %data62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data62, align 4
  %arrayidx.3 = getelementptr %struct.ave_soc_data, ptr %59, i32 0, i32 1, i32 3
  %60 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.3, align 4
  %tobool90.not.3 = icmp eq ptr %61, null
  br i1 %tobool90.not.3, label %if.end102.2.for.end_crit_edge, label %if.end92.3

if.end102.2.for.end_crit_edge:                    ; preds = %if.end102.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end92.3:                                       ; preds = %if.end102.2
  %call93.3 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %61) #16
  %arrayidx94.3 = getelementptr i8, ptr %call40, i32 2340
  %62 = ptrtoint ptr %arrayidx94.3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call93.3, ptr %arrayidx94.3, align 4
  %cmp.i332.3 = icmp ugt ptr %call93.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i332.3, label %if.end92.3.if.then98_crit_edge, label %if.end102.3

if.end92.3.if.then98_crit_edge:                   ; preds = %if.end92.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then98

if.end102.3:                                      ; preds = %if.end92.3
  call void @__sanitizer_cov_trace_pc() #18
  %63 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nclks, align 4
  %inc.3 = add i32 %64, 1
  store i32 %inc.3, ptr %nclks, align 4
  br label %for.end

for.end:                                          ; preds = %if.end102.3, %if.end102.2.for.end_crit_edge, %if.end102.1.for.end_crit_edge, %if.end102.for.end_crit_edge, %if.end76.for.end_crit_edge
  %nrsts = getelementptr i8, ptr %call40, i32 2344
  %65 = ptrtoint ptr %data62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data62, align 4
  %arrayidx108 = getelementptr %struct.ave_soc_data, ptr %66, i32 0, i32 2, i32 0
  %67 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx108, align 4
  %tobool109.not = icmp eq ptr %68, null
  br i1 %tobool109.not, label %for.end.for.end125_crit_edge, label %if.end111

for.end.for.end125_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end125

if.end111:                                        ; preds = %for.end
  %call.i = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull %68, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #16
  %arrayidx113 = getelementptr i8, ptr %call40, i32 2348
  %69 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i, ptr %arrayidx113, align 4
  %cmp.i333 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i333, label %if.end111.if.then117_crit_edge, label %if.end121

if.end111.if.then117_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then117

if.then117:                                       ; preds = %if.end111.1.if.then117_crit_edge, %if.end111.if.then117_crit_edge
  %call.i.lcssa = phi ptr [ %call.i, %if.end111.if.then117_crit_edge ], [ %call.i.1, %if.end111.1.if.then117_crit_edge ]
  %70 = ptrtoint ptr %call.i.lcssa to i32
  br label %cleanup

if.end121:                                        ; preds = %if.end111
  %71 = ptrtoint ptr %nrsts to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nrsts, align 8
  %inc122 = add i32 %72, 1
  store i32 %inc122, ptr %nrsts, align 8
  %73 = ptrtoint ptr %data62 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data62, align 4
  %arrayidx108.1 = getelementptr %struct.ave_soc_data, ptr %74, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %arrayidx108.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx108.1, align 4
  %tobool109.not.1 = icmp eq ptr %76, null
  br i1 %tobool109.not.1, label %if.end121.for.end125_crit_edge, label %if.end111.1

if.end121.for.end125_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end125

if.end111.1:                                      ; preds = %if.end121
  %call.i.1 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull %76, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #16
  %arrayidx113.1 = getelementptr i8, ptr %call40, i32 2352
  %77 = ptrtoint ptr %arrayidx113.1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i.1, ptr %arrayidx113.1, align 4
  %cmp.i333.1 = icmp ugt ptr %call.i.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i333.1, label %if.end111.1.if.then117_crit_edge, label %if.end121.1

if.end111.1.if.then117_crit_edge:                 ; preds = %if.end111.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then117

if.end121.1:                                      ; preds = %if.end111.1
  call void @__sanitizer_cov_trace_pc() #18
  %78 = ptrtoint ptr %nrsts to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nrsts, align 8
  %inc122.1 = add i32 %79, 1
  store i32 %inc122.1, ptr %nrsts, align 8
  br label %for.end125

for.end125:                                       ; preds = %if.end121.1, %if.end121.for.end125_crit_edge, %for.end.for.end125_crit_edge
  %call.i334 = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.16, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i334)
  %tobool127.not = icmp eq i32 %call.i334, 0
  br i1 %tobool127.not, label %if.end132, label %do.end131

do.end131:                                        ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #19
  br label %cleanup

if.end132:                                        ; preds = %for.end125
  %80 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %args, align 4
  %call134 = call ptr @syscon_node_to_regmap(ptr noundef %81) #16
  %regmap = getelementptr i8, ptr %call40, i32 2368
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call134, ptr %regmap, align 8
  %83 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %84) #16
  %85 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap, align 8
  %cmp.i335 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i335, label %do.end141, label %if.end144

do.end141:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #19
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 8
  %89 = ptrtoint ptr %88 to i32
  br label %cleanup

if.end144:                                        ; preds = %if.end132
  %90 = ptrtoint ptr %data62 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data62, align 4
  %get_pinmode = getelementptr inbounds %struct.ave_soc_data, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %get_pinmode to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %get_pinmode, align 4
  %94 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %phy_mode, align 4
  %args146 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %96 = ptrtoint ptr %args146 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %args146, align 4
  %call148 = call i32 %93(ptr noundef %add.ptr.i, i32 noundef %95, i32 noundef %97) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end154, label %do.end153

do.end153:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #19
  br label %cleanup

if.end154:                                        ; preds = %if.end144
  %call.i336 = call ptr @devm_mdiobus_alloc_size(ptr noundef %dev1, i32 noundef 0) #16
  %mdio = getelementptr i8, ptr %call40, i32 2364
  %98 = ptrtoint ptr %mdio to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call.i336, ptr %mdio, align 4
  %tobool157.not = icmp eq ptr %call.i336, null
  br i1 %tobool157.not, label %if.end154.cleanup_crit_edge, label %if.end159

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end159:                                        ; preds = %if.end154
  %priv161 = getelementptr inbounds %struct.mii_bus, ptr %call.i336, i32 0, i32 3
  %99 = ptrtoint ptr %priv161 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call40, ptr %priv161, align 8
  %100 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mdio, align 4
  %parent163 = getelementptr inbounds %struct.mii_bus, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %parent163 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %dev1, ptr %parent163, align 4
  %103 = load ptr, ptr %mdio, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @ave_mdiobus_read, ptr %read, align 4
  %105 = load ptr, ptr %mdio, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @ave_mdiobus_write, ptr %write, align 8
  %107 = load ptr, ptr %mdio, align 4
  %name167 = getelementptr inbounds %struct.mii_bus, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %name167 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.26, ptr %name167, align 4
  %109 = load ptr, ptr %mdio, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev, align 8
  %id170 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %112 = ptrtoint ptr %id170 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %id170, align 4
  %call171 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.27, ptr noundef %111, i32 noundef %113)
  %napi_rx = getelementptr i8, ptr %call40, i32 2552
  call void @netif_napi_add(ptr noundef nonnull %call40, ptr noundef %napi_rx, ptr noundef nonnull @ave_napi_poll_rx, i32 noundef 64) #16
  %napi_tx = getelementptr i8, ptr %call40, i32 2776
  call fastcc void @netif_tx_napi_add(ptr noundef nonnull %call40, ptr noundef %napi_tx)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %114 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call40, ptr %driver_data.i.i, align 4
  %call172 = call i32 @register_netdev(ptr noundef nonnull %call40) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end178, label %do.end177

do.end177:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #19
  call void @__netif_napi_del(ptr noundef %napi_rx) #16
  call void @synchronize_net() #16
  call void @__netif_napi_del(ptr noundef %napi_tx) #16
  call void @synchronize_net() #16
  br label %cleanup

if.end178:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #18
  %115 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr.i, align 8
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #16, !srcloc !218
  %118 = call i32 @llvm.bswap.i32(i32 %117)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  call fastcc void @ave_hw_read_version(ptr noundef nonnull %call40, ptr noundef nonnull %buf)
  %shr = lshr i32 %118, 24
  %shr187 = lshr i32 %118, 16
  %and188 = and i32 %shr187, 255
  %shr189 = lshr i32 %118, 8
  %and190 = and i32 %shr189, 255
  %and192 = and i32 %118, 255
  %119 = ptrtoint ptr %irq58 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %irq58, align 4
  %121 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %phy_mode, align 4
  %call195 = call fastcc ptr @phy_modes(i32 noundef %122)
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %shr, i32 noundef %and188, i32 noundef %and190, i32 noundef %and192, ptr noundef nonnull %buf, i32 noundef %120, ptr noundef nonnull %call195) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end178, %do.end177, %if.end154.cleanup_crit_edge, %do.end153, %do.end141, %do.end131, %if.then117, %if.then98, %if.end55.cleanup_crit_edge, %do.end45, %if.then37, %if.end31.cleanup_crit_edge, %do.end30, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call25, %do.end30 ], [ %5, %if.then37 ], [ %41, %if.then98 ], [ %70, %if.then117 ], [ %call.i334, %do.end131 ], [ %89, %do.end141 ], [ %call148, %do.end153 ], [ %call172, %do.end177 ], [ 0, %if.end178 ], [ -12, %do.end45 ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call73, %if.end55.cleanup_crit_edge ], [ -12, %if.end154.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #16
  %napi_rx = getelementptr i8, ptr %1, i32 2552
  tail call void @__netif_napi_del(ptr noundef %napi_rx) #16
  tail call void @synchronize_net() #16
  %napi_tx = getelementptr i8, ptr %1, i32 2776
  tail call void @__netif_napi_del(ptr noundef %napi_tx) #16
  tail call void @synchronize_net() #16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #16
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #16
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #16
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_mdiobus_read(ptr nocapture noundef readonly %bus, i32 noundef %phyid, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !220
  tail call void @arm_heavy_mb() #16
  %shl = shl i32 %phyid, 8
  %or = or i32 %shl, %regnum
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #16, !srcloc !221
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3 = getelementptr i8, ptr %6, i32 532
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !223
  tail call void @arm_heavy_mb() #16
  %8 = and i32 %7, -201326593
  %9 = or i32 %8, 134217728
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr11 = getelementptr i8, ptr %11, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %9) #16, !srcloc !221
  %call12 = tail call i64 @ktime_get() #16
  %add.i = add i64 %call12, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 509) #16
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr2682 = getelementptr i8, ptr %13, i32 544
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2682) #16, !srcloc !218
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !224
  %and3083 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3083)
  %tobool.not84 = icmp eq i32 %and3083, 0
  br i1 %tobool.not84, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

land.lhs.true:                                    ; preds = %if.then47.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call34 = tail call i64 @ktime_get() #16
  call void @__sanitizer_cov_trace_cmp8(i64 %call34, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call34, %add.i
  br i1 %cmp3.i, label %if.then37, label %if.then47

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr41 = getelementptr i8, ptr %17, i32 544
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #16, !srcloc !218
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !225
  br label %for.end

if.then47:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #16
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr26 = getelementptr i8, ptr %21, i32 544
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #16, !srcloc !218
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !224
  %and30 = and i32 %23, 1
  %tobool.not = icmp eq i32 %and30, 0
  br i1 %tobool.not, label %if.then47.for.end_crit_edge, label %if.then47.land.lhs.true_crit_edge

if.then47.land.lhs.true_crit_edge:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.then47.for.end_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %if.then47.for.end_crit_edge, %if.then37, %entry.for.end_crit_edge
  %mdiosr.0 = phi i32 [ %19, %if.then37 ], [ %15, %entry.for.end_crit_edge ], [ %23, %if.then47.for.end_crit_edge ]
  %and50 = and i32 %mdiosr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef %phyid, i32 noundef %regnum) #19
  br label %cleanup

if.end54:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr58 = getelementptr i8, ptr %25, i32 548
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !226
  %27 = and i32 %26, -65536
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then53
  %retval.0 = phi i32 [ -110, %if.then53 ], [ %28, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_mdiobus_write(ptr nocapture noundef readonly %bus, i32 noundef %phyid, i32 noundef %regnum, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !227
  tail call void @arm_heavy_mb() #16
  %shl = shl i32 %phyid, 8
  %or = or i32 %shl, %regnum
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !228
  tail call void @arm_heavy_mb() #16
  %conv = zext i16 %val to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6 = getelementptr i8, ptr %7, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %5) #16, !srcloc !221
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr8 = getelementptr i8, ptr %9, i32 532
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !230
  tail call void @arm_heavy_mb() #16
  %11 = and i32 %10, -201326593
  %12 = or i32 %11, 67108864
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr16 = getelementptr i8, ptr %14, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %12) #16, !srcloc !221
  %call17 = tail call i64 @ktime_get() #16
  %add.i = add i64 %call17, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 541) #16
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3277 = getelementptr i8, ptr %16, i32 544
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3277) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !231
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not79 = icmp eq i32 %18, 0
  br i1 %tobool.not79, label %entry.if.end61_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

land.lhs.true:                                    ; preds = %if.then54.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call40 = tail call i64 @ktime_get() #16
  call void @__sanitizer_cov_trace_cmp8(i64 %call40, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call40, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then54

if.then54:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #16
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr32 = getelementptr i8, ptr %20, i32 544
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !231
  %22 = and i32 %21, 16777216
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.then54.if.end61_crit_edge, label %if.then54.land.lhs.true_crit_edge

if.then54.land.lhs.true_crit_edge:                ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.then54.if.end61_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

for.end:                                          ; preds = %land.lhs.true
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr48 = getelementptr i8, ptr %24, i32 544
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !232
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool58.not = icmp eq i32 %26, 0
  br i1 %tobool58.not, label %for.end.if.end61_crit_edge, label %if.then60

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.then60:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef %phyid, i32 noundef %regnum) #19
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %for.end.if.end61_crit_edge, %if.then54.if.end61_crit_edge, %entry.if.end61_crit_edge
  %cond = phi i32 [ -110, %if.then60 ], [ 0, %for.end.if.end61_crit_edge ], [ 0, %entry.if.end61_crit_edge ], [ 0, %if.then54.if.end61_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_napi_poll_rx(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 8
  %call = tail call fastcc i32 @ave_rx_receive(ptr noundef %1, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !233
  tail call void @arm_heavy_mb() #16
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !234
  %5 = or i32 %4, 536870912
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %7, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %5) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !235
  tail call void @arm_heavy_mb() #16
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %9, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 536870912) #16, !srcloc !221
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_tx_napi_add(ptr noundef %dev, ptr noundef %napi) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %state = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #16
  tail call void @netif_napi_add(ptr noundef %dev, ptr noundef %napi, ptr noundef nonnull @ave_napi_poll_tx, i32 noundef 64) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_napi_poll_tx(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr i8, ptr %napi, i32 -232
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %tx.i = getelementptr i8, ptr %1, i32 3020
  %proc_idx1.i = getelementptr i8, ptr %1, i32 3028
  %2 = ptrtoint ptr %proc_idx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %proc_idx1.i, align 4
  %done_idx3.i = getelementptr i8, ptr %1, i32 3032
  %4 = ptrtoint ptr %done_idx3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %done_idx3.i, align 4
  %6 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx.i, align 4
  %cond.in.i.i.i = getelementptr i8, ptr %1, i32 3024
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not94.i = icmp eq i32 %3, %5
  br i1 %cmp.not94.i, label %entry.while.end.i_crit_edge, label %while.body.lr.ph.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %entry
  %desc_size.i.i.i = getelementptr i8, ptr %1, i32 2316
  %errors.i = getelementptr i8, ptr %1, i32 2512
  %collisions.i = getelementptr i8, ptr %1, i32 2528
  %desc.i = getelementptr i8, ptr %1, i32 3036
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end42.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %tx_bytes.0100.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %tx_bytes.1.i, %if.end42.i.while.body.i_crit_edge ]
  %tx_packets.099.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %tx_packets.1.i, %if.end42.i.while.body.i_crit_edge ]
  %nr_freebuf.098.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %nr_freebuf.1.i, %if.end42.i.while.body.i_crit_edge ]
  %done_idx.095.i = phi i32 [ %5, %while.body.lr.ph.i ], [ %rem.i, %if.end42.i.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %cond.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond.i.i.i = load i32, ptr %cond.in.i.i.i, align 4
  %9 = ptrtoint ptr %desc_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc_size.i.i.i, align 4
  %mul.i.i.i = mul i32 %10, %done_idx.095.i
  %add.i.i.i = add i32 %mul.i.i.i, %cond.i.i.i
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %add.i.i.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #16, !srcloc !218
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !236
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool.not.i = icmp sgt i32 %14, -1
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %and7.i = and i32 %14, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %and10.i = and i32 %14, 65535
  %add.i = add i32 %and10.i, %tx_bytes.0100.i
  %and11.i = lshr i32 %14, 25
  %and11.lobit.i = and i32 %and11.i, 1
  %spec.select.i = add i32 %and11.lobit.i, %tx_packets.099.i
  br label %if.end26.i

if.else.i:                                        ; preds = %if.end.i
  %and15.i = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else.i.if.end26.i_crit_edge, label %if.then17.i

if.else.i.if.end26.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i

if.then17.i:                                      ; preds = %if.else.i
  %15 = ptrtoint ptr %errors.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %errors.i, align 8
  %inc18.i = add i64 %16, 1
  store i64 %inc18.i, ptr %errors.i, align 8
  %and19.i = and i32 %14, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then17.i.if.end26.i_crit_edge, label %if.then21.i

if.then17.i.if.end26.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %collisions.i, align 8
  %inc23.i = add i64 %18, 1
  store i64 %inc23.i, ptr %collisions.i, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.then17.i.if.end26.i_crit_edge, %if.else.i.if.end26.i_crit_edge, %if.then9.i
  %tx_packets.1.i = phi i32 [ %tx_packets.099.i, %if.then21.i ], [ %tx_packets.099.i, %if.then17.i.if.end26.i_crit_edge ], [ %tx_packets.099.i, %if.else.i.if.end26.i_crit_edge ], [ %spec.select.i, %if.then9.i ]
  %tx_bytes.1.i = phi i32 [ %tx_bytes.0100.i, %if.then21.i ], [ %tx_bytes.0100.i, %if.then17.i.if.end26.i_crit_edge ], [ %tx_bytes.0100.i, %if.else.i.if.end26.i_crit_edge ], [ %add.i, %if.then9.i ]
  %19 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc.i, align 4
  %arrayidx.i = getelementptr %struct.ave_desc, ptr %20, i32 %done_idx.095.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool28.not.i = icmp eq ptr %22, null
  br i1 %tobool28.not.i, label %if.end26.i.if.end42.i_crit_edge, label %if.then29.i

if.end26.i.if.end42.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i

if.then29.i:                                      ; preds = %if.end26.i
  %skbs_dma.i.i = getelementptr %struct.ave_desc, ptr %20, i32 %done_idx.095.i, i32 1
  %23 = ptrtoint ptr %skbs_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %skbs_dma.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %if.then29.i.ave_dma_unmap.exit.i_crit_edge, label %if.end.i.i

if.then29.i.ave_dma_unmap.exit.i_crit_edge:       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ave_dma_unmap.exit.i

if.end.i.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i.i, align 8
  %skbs_dmalen.i.i = getelementptr %struct.ave_desc, ptr %20, i32 %done_idx.095.i, i32 2
  %27 = ptrtoint ptr %skbs_dmalen.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %skbs_dmalen.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %24, i32 noundef %28, i32 noundef 1, i32 noundef 0) #16
  %29 = ptrtoint ptr %skbs_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %skbs_dma.i.i, align 4
  br label %ave_dma_unmap.exit.i

ave_dma_unmap.exit.i:                             ; preds = %if.end.i.i, %if.then29.i.ave_dma_unmap.exit.i_crit_edge
  %30 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc.i, align 4
  %arrayidx35.i = getelementptr %struct.ave_desc, ptr %31, i32 %done_idx.095.i
  %32 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx35.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %33, i32 noundef 0) #16
  %34 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc.i, align 4
  %arrayidx39.i = getelementptr %struct.ave_desc, ptr %35, i32 %done_idx.095.i
  %36 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx39.i, align 4
  %inc41.i = add i32 %nr_freebuf.098.i, 1
  br label %if.end42.i

if.end42.i:                                       ; preds = %ave_dma_unmap.exit.i, %if.end26.i.if.end42.i_crit_edge
  %nr_freebuf.1.i = phi i32 [ %inc41.i, %ave_dma_unmap.exit.i ], [ %nr_freebuf.098.i, %if.end26.i.if.end42.i_crit_edge ]
  %add43.i = add i32 %done_idx.095.i, 1
  %rem.i = urem i32 %add43.i, %7
  %cmp.not.i = icmp eq i32 %3, %rem.i
  br i1 %cmp.not.i, label %if.end42.i.while.end.i_crit_edge, label %if.end42.i.while.body.i_crit_edge

if.end42.i.while.body.i_crit_edge:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end42.i.while.end.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %if.end42.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %done_idx.0.lcssa.i = phi i32 [ %3, %entry.while.end.i_crit_edge ], [ %3, %if.end42.i.while.end.i_crit_edge ], [ %done_idx.095.i, %while.body.i.while.end.i_crit_edge ]
  %nr_freebuf.0.lcssa.i = phi i32 [ 0, %entry.while.end.i_crit_edge ], [ %nr_freebuf.1.i, %if.end42.i.while.end.i_crit_edge ], [ %nr_freebuf.098.i, %while.body.i.while.end.i_crit_edge ]
  %tx_packets.0.lcssa.i = phi i32 [ 0, %entry.while.end.i_crit_edge ], [ %tx_packets.1.i, %if.end42.i.while.end.i_crit_edge ], [ %tx_packets.099.i, %while.body.i.while.end.i_crit_edge ]
  %tx_bytes.0.lcssa.i = phi i32 [ 0, %entry.while.end.i_crit_edge ], [ %tx_bytes.1.i, %if.end42.i.while.end.i_crit_edge ], [ %tx_bytes.0100.i, %while.body.i.while.end.i_crit_edge ]
  %37 = ptrtoint ptr %done_idx3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %done_idx.0.lcssa.i, ptr %done_idx3.i, align 4
  %stats_tx46.i = getelementptr i8, ptr %1, i32 2464
  tail call fastcc void @u64_stats_update_begin(ptr noundef %stats_tx46.i) #16
  %conv.i = zext i32 %tx_packets.0.lcssa.i to i64
  %packets.i = getelementptr i8, ptr %1, i32 2496
  %38 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %packets.i, align 8
  %add48.i = add i64 %39, %conv.i
  store i64 %add48.i, ptr %packets.i, align 8
  %conv49.i = zext i32 %tx_bytes.0.lcssa.i to i64
  %bytes.i = getelementptr i8, ptr %1, i32 2504
  %40 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %bytes.i, align 8
  %add51.i = add i64 %41, %conv49.i
  store i64 %add51.i, ptr %bytes.i, align 8
  %dep_map.i.i.i = getelementptr i8, ptr %1, i32 2468
  %42 = tail call ptr @llvm.returnaddress(i32 0) #16
  %43 = ptrtoint ptr %42 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %43) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !237
  %44 = ptrtoint ptr %stats_tx46.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stats_tx46.i, align 4
  %inc.i.i.i.i = add i32 %45, 1
  store i32 %inc.i.i.i.i, ptr %stats_tx46.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %46 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %while.end.i.ave_tx_complete.exit_crit_edge, label %land.lhs.true.i, !prof !238

while.end.i.ave_tx_complete.exit_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ave_tx_complete.exit

land.lhs.true.i:                                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_freebuf.0.lcssa.i)
  %tobool57.not.i = icmp eq i32 %nr_freebuf.0.lcssa.i, 0
  br i1 %tobool57.not.i, label %land.lhs.true.i.ave_tx_complete.exit_crit_edge, label %if.then58.i

land.lhs.true.i.ave_tx_complete.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ave_tx_complete.exit

if.then58.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @netif_tx_wake_queue(ptr noundef %47) #16
  br label %ave_tx_complete.exit

ave_tx_complete.exit:                             ; preds = %if.then58.i, %land.lhs.true.i.ave_tx_complete.exit_crit_edge, %while.end.i.ave_tx_complete.exit_crit_edge
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !233
  tail call void @arm_heavy_mb() #16
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %51, i32 256
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !234
  %53 = or i32 %52, 256
  %54 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %55, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %53) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !235
  tail call void @arm_heavy_mb() #16
  %56 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %57, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 256) #16, !srcloc !221
  ret i32 %nr_freebuf.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ave_hw_read_version(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !218
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !239
  %and = lshr i32 %3, 8
  %shr = and i32 %and, 255
  %and3 = and i32 %3, 255
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.60, i32 noundef %shr, i32 noundef %and3)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @phy_modes(i32 noundef %interface) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %interface)
  %0 = icmp ult i32 %interface, 30
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_modes, i32 0, i32 %interface
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.91, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_init(ptr noundef %ndev) #2 align 64 {
entry:
  %wol = alloca %struct.ethtool_wolinfo, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wol) #16
  %0 = call ptr @memcpy(ptr %wol, ptr @__const.ave_resume.wol, i32 20)
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %dev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %nclks = getelementptr i8, ptr %ndev, i32 2324
  %5 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nclks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp133 = icmp sgt i32 %6, 0
  br i1 %cmp133, label %entry.for.body_crit_edge, label %entry.for.cond3.preheader_crit_edge

entry.for.cond3.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond3.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond3.preheader:                              ; preds = %for.inc.for.cond3.preheader_crit_edge, %entry.for.cond3.preheader_crit_edge
  %nc.0.lcssa = phi i32 [ 0, %entry.for.cond3.preheader_crit_edge ], [ %inc, %for.inc.for.cond3.preheader_crit_edge ]
  %nrsts = getelementptr i8, ptr %ndev, i32 2344
  %7 = ptrtoint ptr %nrsts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nrsts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4135 = icmp sgt i32 %8, 0
  br i1 %cmp4135, label %for.cond3.preheader.for.body5_crit_edge, label %for.cond3.preheader.for.end16_crit_edge

for.cond3.preheader.for.end16_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end16

for.cond3.preheader.for.body5_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body5

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %nc.0134 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ave_private, ptr %add.ptr.i, i32 0, i32 6, i32 %nc.0134
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @clk_unprepare(ptr noundef %10) #16
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %for.body.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.body.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.35) #19
  br label %out_clk_disable

for.inc:                                          ; preds = %if.end.i
  %inc = add nuw nsw i32 %nc.0134, 1
  %11 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nclks, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond3.preheader_crit_edge

for.inc.for.cond3.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond3.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body5:                                        ; preds = %for.inc14.for.body5_crit_edge, %for.cond3.preheader.for.body5_crit_edge
  %nr.0136 = phi i32 [ %inc15, %for.inc14.for.body5_crit_edge ], [ 0, %for.cond3.preheader.for.body5_crit_edge ]
  %arrayidx6 = getelementptr %struct.ave_private, ptr %add.ptr.i, i32 0, i32 8, i32 %nr.0136
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6, align 4
  %call7 = tail call i32 @reset_control_deassert(ptr noundef %14) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.inc14, label %do.end12

do.end12:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.38) #19
  br label %out_reset_assert

for.inc14:                                        ; preds = %for.body5
  %inc15 = add nuw nsw i32 %nr.0136, 1
  %15 = ptrtoint ptr %nrsts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nrsts, align 8
  %cmp4 = icmp slt i32 %inc15, %16
  br i1 %cmp4, label %for.inc14.for.body5_crit_edge, label %for.inc14.for.end16_crit_edge

for.inc14.for.end16_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end16

for.inc14.for.body5_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body5

for.end16:                                        ; preds = %for.inc14.for.end16_crit_edge, %for.cond3.preheader.for.end16_crit_edge
  %nr.0.lcssa = phi i32 [ 0, %for.cond3.preheader.for.end16_crit_edge ], [ %inc15, %for.inc14.for.end16_crit_edge ]
  %regmap = getelementptr i8, ptr %ndev, i32 2368
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 8
  %pinmode_mask = getelementptr i8, ptr %ndev, i32 2372
  %19 = ptrtoint ptr %pinmode_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pinmode_mask, align 4
  %pinmode_val = getelementptr i8, ptr %ndev, i32 2376
  %21 = ptrtoint ptr %pinmode_val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pinmode_val, align 8
  %call.i113 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 1344, i32 noundef %20, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool18.not = icmp eq i32 %call.i113, 0
  br i1 %tobool18.not, label %if.end20, label %for.end16.out_reset_assert_crit_edge

for.end16.out_reset_assert_crit_edge:             ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_reset_assert

if.end20:                                         ; preds = %for.end16
  tail call fastcc void @ave_global_reset(ptr noundef %ndev)
  %call21 = tail call ptr @of_get_child_by_name(ptr noundef %4, ptr noundef nonnull @.str.40) #16
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %do.end26, label %if.end27

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.42) #19
  br label %out_reset_assert

if.end27:                                         ; preds = %if.end20
  %mdio = getelementptr i8, ptr %ndev, i32 2364
  %23 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mdio, align 4
  %call28 = tail call i32 @of_mdiobus_register(ptr noundef %24, ptr noundef nonnull %call21) #16
  tail call void @of_node_put(ptr noundef nonnull %call21) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.45) #19
  br label %out_reset_assert

if.end34:                                         ; preds = %if.end27
  %call35 = tail call ptr @of_phy_get_and_connect(ptr noundef %ndev, ptr noundef %4, ptr noundef nonnull @ave_phy_adjust_link) #16
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.end40, label %if.end41

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.48) #19
  %25 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdio, align 4
  tail call void @mdiobus_unregister(ptr noundef %26) #16
  br label %out_reset_assert

if.end41:                                         ; preds = %if.end34
  %phydev42 = getelementptr i8, ptr %ndev, i32 2360
  %27 = ptrtoint ptr %phydev42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call35, ptr %phydev42, align 8
  %supported.i = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %28 = ptrtoint ptr %supported.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %supported.i, align 4
  %wolopts.i = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %29 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %wolopts.i, align 4
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %30 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i114 = icmp eq ptr %31, null
  br i1 %tobool.not.i114, label %if.end41.ave_ethtool_get_wol.exit_crit_edge, label %if.then.i

if.end41.ave_ethtool_get_wol.exit_crit_edge:      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %ave_ethtool_get_wol.exit

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  call void @phy_ethtool_get_wol(ptr noundef nonnull %31, ptr noundef nonnull %wol) #16
  br label %ave_ethtool_get_wol.exit

ave_ethtool_get_wol.exit:                         ; preds = %if.then.i, %if.end41.ave_ethtool_get_wol.exit_crit_edge
  %32 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %supported.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool44 = icmp ne i32 %33, 0
  call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext %tobool44) #16
  %34 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %wolopts.i, align 4
  %35 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i117 = icmp eq ptr %36, null
  br i1 %tobool.not.i117, label %ave_ethtool_get_wol.exit.__ave_ethtool_set_wol.exit_crit_edge, label %if.end.i120

ave_ethtool_get_wol.exit.__ave_ethtool_set_wol.exit_crit_edge: ; preds = %ave_ethtool_get_wol.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ave_ethtool_set_wol.exit

if.end.i120:                                      ; preds = %ave_ethtool_get_wol.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call.i119 = call i32 @phy_ethtool_set_wol(ptr noundef nonnull %36, ptr noundef nonnull %wol) #16
  br label %__ave_ethtool_set_wol.exit

__ave_ethtool_set_wol.exit:                       ; preds = %if.end.i120, %ave_ethtool_get_wol.exit.__ave_ethtool_set_wol.exit_crit_edge
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %call35, i32 0, i32 7
  %37 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %interface.i, align 4
  %39 = add i32 %38, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %__ave_ethtool_set_wol.exit.if.end50_crit_edge, label %if.then48

__ave_ethtool_set_wol.exit.if.end50_crit_edge:    ; preds = %__ave_ethtool_set_wol.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

if.then48:                                        ; preds = %__ave_ethtool_set_wol.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call49 = call i32 @phy_set_max_speed(ptr noundef nonnull %call35, i32 noundef 100) #16
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %__ave_ethtool_set_wol.exit.if.end50_crit_edge
  call void @phy_support_asym_pause(ptr noundef nonnull %call35) #16
  call void @phy_attached_info(ptr noundef nonnull %call35) #16
  br label %cleanup

out_reset_assert:                                 ; preds = %do.end40, %do.end33, %do.end26, %for.end16.out_reset_assert_crit_edge, %do.end12
  %nr.0126 = phi i32 [ %nr.0136, %do.end12 ], [ %nr.0.lcssa, %for.end16.out_reset_assert_crit_edge ], [ %nr.0.lcssa, %do.end33 ], [ %nr.0.lcssa, %do.end40 ], [ %nr.0.lcssa, %do.end26 ]
  %ret.0 = phi i32 [ %call7, %do.end12 ], [ %call.i113, %for.end16.out_reset_assert_crit_edge ], [ %call28, %do.end33 ], [ -19, %do.end40 ], [ -22, %do.end26 ]
  %dec138 = add i32 %nr.0126, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec138)
  %cmp52139 = icmp sgt i32 %dec138, -1
  br i1 %cmp52139, label %out_reset_assert.while.body_crit_edge, label %out_reset_assert.out_clk_disable_crit_edge

out_reset_assert.out_clk_disable_crit_edge:       ; preds = %out_reset_assert
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_clk_disable

out_reset_assert.while.body_crit_edge:            ; preds = %out_reset_assert
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %out_reset_assert.while.body_crit_edge
  %dec140 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec138, %out_reset_assert.while.body_crit_edge ]
  %arrayidx54 = getelementptr %struct.ave_private, ptr %add.ptr.i, i32 0, i32 8, i32 %dec140
  %41 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx54, align 4
  %call55 = tail call i32 @reset_control_assert(ptr noundef %42) #16
  %dec = add nsw i32 %dec140, -1
  %cmp52.not = icmp eq i32 %dec140, 0
  br i1 %cmp52.not, label %while.body.out_clk_disable_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.out_clk_disable_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_clk_disable

out_clk_disable:                                  ; preds = %while.body.out_clk_disable_crit_edge, %out_reset_assert.out_clk_disable_crit_edge, %do.end
  %nc.0129 = phi i32 [ %nc.0134, %do.end ], [ %nc.0.lcssa, %out_reset_assert.out_clk_disable_crit_edge ], [ %nc.0.lcssa, %while.body.out_clk_disable_crit_edge ]
  %ret.1 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.0, %out_reset_assert.out_clk_disable_crit_edge ], [ %ret.0, %while.body.out_clk_disable_crit_edge ]
  %dec57141 = add i32 %nc.0129, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec57141)
  %cmp58142 = icmp sgt i32 %dec57141, -1
  br i1 %cmp58142, label %out_clk_disable.while.body59_crit_edge, label %out_clk_disable.cleanup_crit_edge

out_clk_disable.cleanup_crit_edge:                ; preds = %out_clk_disable
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

out_clk_disable.while.body59_crit_edge:           ; preds = %out_clk_disable
  br label %while.body59

while.body59:                                     ; preds = %while.body59.while.body59_crit_edge, %out_clk_disable.while.body59_crit_edge
  %dec57143 = phi i32 [ %dec57, %while.body59.while.body59_crit_edge ], [ %dec57141, %out_clk_disable.while.body59_crit_edge ]
  %arrayidx61 = getelementptr %struct.ave_private, ptr %add.ptr.i, i32 0, i32 6, i32 %dec57143
  %43 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx61, align 4
  tail call void @clk_disable(ptr noundef %44) #16
  tail call void @clk_unprepare(ptr noundef %44) #16
  %dec57 = add nsw i32 %dec57143, -1
  %cmp58.not = icmp eq i32 %dec57143, 0
  br i1 %cmp58.not, label %while.body59.cleanup_crit_edge, label %while.body59.while.body59_crit_edge

while.body59.while.body59_crit_edge:              ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body59

while.body59.cleanup_crit_edge:                   ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %while.body59.cleanup_crit_edge, %out_clk_disable.cleanup_crit_edge, %if.end50
  %retval.0 = phi i32 [ 0, %if.end50 ], [ %ret.1, %out_clk_disable.cleanup_crit_edge ], [ %ret.1, %while.body59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wol) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ave_uninit(ptr nocapture noundef readonly %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phydev = getelementptr i8, ptr %ndev, i32 2360
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 8
  tail call void @phy_disconnect(ptr noundef %1) #16
  %mdio = getelementptr i8, ptr %ndev, i32 2364
  %2 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio, align 4
  tail call void @mdiobus_unregister(ptr noundef %3) #16
  %nrsts = getelementptr i8, ptr %ndev, i32 2344
  %4 = ptrtoint ptr %nrsts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nrsts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp19 = icmp sgt i32 %5, 0
  br i1 %cmp19, label %entry.for.body_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond2.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %nclks = getelementptr i8, ptr %ndev, i32 2324
  %6 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nclks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp321 = icmp sgt i32 %7, 0
  br i1 %cmp321, label %for.cond2.preheader.for.body4_crit_edge, label %for.cond2.preheader.for.end8_crit_edge

for.cond2.preheader.for.end8_crit_edge:           ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end8

for.cond2.preheader.for.body4_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ave_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.020
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %9) #16
  %inc = add nuw nsw i32 %i.020, 1
  %10 = ptrtoint ptr %nrsts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nrsts, align 8
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond2.preheader_crit_edge

for.body.for.cond2.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond2.preheader.for.body4_crit_edge
  %i.122 = phi i32 [ %inc7, %for.body4.for.body4_crit_edge ], [ 0, %for.cond2.preheader.for.body4_crit_edge ]
  %arrayidx5 = getelementptr %struct.ave_private, ptr %add.ptr.i, i32 0, i32 6, i32 %i.122
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5, align 4
  tail call void @clk_disable(ptr noundef %13) #16
  tail call void @clk_unprepare(ptr noundef %13) #16
  %inc7 = add nuw nsw i32 %i.122, 1
  %14 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nclks, align 4
  %cmp3 = icmp slt i32 %inc7, %15
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.end8_crit_edge

for.body4.for.end8_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end8

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body4

for.end8:                                         ; preds = %for.body4.for.end8_crit_edge, %for.cond2.preheader.for.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_open(ptr noundef %ndev) #2 align 64 {
entry:
  %bcast_mac.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %irq = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @ave_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %ndev, ptr noundef %ndev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx = getelementptr i8, ptr %ndev, i32 3020
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 12) #16
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !216

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %desc186 = getelementptr i8, ptr %ndev, i32 3036
  %6 = ptrtoint ptr %desc186 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %desc186, align 4
  br label %out_free_irq

if.end7.i.i:                                      ; preds = %if.end
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #20
  %desc = getelementptr i8, ptr %ndev, i32 3036
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %desc, align 4
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.out_free_irq_crit_edge, label %if.end9

if.end7.i.i.out_free_irq_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_irq

if.end9:                                          ; preds = %if.end7.i.i
  %rx = getelementptr i8, ptr %ndev, i32 3000
  %9 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx, align 8
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 12) #16
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %kcalloc.exit168.thread, label %if.end7.i.i166, !prof !216

kcalloc.exit168.thread:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %desc13194 = getelementptr i8, ptr %ndev, i32 3016
  %13 = ptrtoint ptr %desc13194 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %desc13194, align 8
  br label %if.then17

if.end7.i.i166:                                   ; preds = %if.end9
  %14 = extractvalue { i32, i1 } %11, 0
  %call8.i.i165 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #20
  %desc13 = getelementptr i8, ptr %ndev, i32 3016
  %15 = ptrtoint ptr %desc13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i165, ptr %desc13, align 8
  %tobool16.not = icmp eq ptr %call8.i.i165, null
  br i1 %tobool16.not, label %if.end7.i.i166.if.then17_crit_edge, label %if.end20

if.end7.i.i166.if.then17_crit_edge:               ; preds = %if.end7.i.i166
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

if.then17:                                        ; preds = %if.end7.i.i166.if.then17_crit_edge, %kcalloc.exit168.thread
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc, align 4
  tail call void @kfree(ptr noundef %17) #16
  br label %out_free_irq

if.end20:                                         ; preds = %if.end7.i.i166
  %proc_idx = getelementptr i8, ptr %ndev, i32 3028
  %18 = ptrtoint ptr %proc_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %proc_idx, align 4
  %done_idx = getelementptr i8, ptr %ndev, i32 3032
  %19 = ptrtoint ptr %done_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %done_idx, align 4
  %20 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp200.not = icmp eq i32 %21, 0
  br i1 %cmp200.not, label %if.end20.do.body_crit_edge, label %for.body.lr.ph

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

for.body.lr.ph:                                   ; preds = %if.end20
  %cond.in.i.i = getelementptr i8, ptr %ndev, i32 3024
  %desc_size.i.i = getelementptr i8, ptr %ndev, i32 2316
  %data.i = getelementptr i8, ptr %ndev, i32 3052
  br label %for.body

for.body:                                         ; preds = %ave_desc_write_addr.exit.for.body_crit_edge, %for.body.lr.ph
  %entry1.0201 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ave_desc_write_addr.exit.for.body_crit_edge ]
  %22 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  %23 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %desc_size.i.i, align 4
  %mul.i.i = mul i32 %24, %entry1.0201
  %add3.i.i = add i32 %mul.i.i, %cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !240
  tail call void @arm_heavy_mb() #16
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #16, !srcloc !221
  %27 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %cond.i.i171 = load i32, ptr %cond.in.i.i, align 4
  %28 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %desc_size.i.i, align 4
  %mul.i.i173 = mul i32 %29, %entry1.0201
  %add.i.i = add i32 %cond.i.i171, 4
  %add3.i.i174 = add i32 %add.i.i, %mul.i.i173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !240
  tail call void @arm_heavy_mb() #16
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %31, i32 %add3.i.i174
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #16, !srcloc !221
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i, label %for.body.ave_desc_write_addr.exit_crit_edge, label %if.then.i

for.body.ave_desc_write_addr.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %ave_desc_write_addr.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %cond.i13.i = load i32, ptr %cond.in.i.i, align 4
  %37 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %desc_size.i.i, align 4
  %mul.i15.i = mul i32 %38, %entry1.0201
  %add.i16.i = add i32 %cond.i13.i, 8
  %add3.i17.i = add i32 %add.i16.i, %mul.i15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !240
  tail call void @arm_heavy_mb() #16
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i18.i = getelementptr i8, ptr %40, i32 %add3.i17.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 0) #16, !srcloc !221
  br label %ave_desc_write_addr.exit

ave_desc_write_addr.exit:                         ; preds = %if.then.i, %for.body.ave_desc_write_addr.exit_crit_edge
  %inc = add nuw i32 %entry1.0201, 1
  %41 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx, align 4
  %cmp = icmp ult i32 %inc, %42
  br i1 %cmp, label %ave_desc_write_addr.exit.for.body_crit_edge, label %ave_desc_write_addr.exit.do.body_crit_edge

ave_desc_write_addr.exit.do.body_crit_edge:       ; preds = %ave_desc_write_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

ave_desc_write_addr.exit.for.body_crit_edge:      ; preds = %ave_desc_write_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.body:                                          ; preds = %ave_desc_write_addr.exit.do.body_crit_edge, %if.end20.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !241
  tail call void @arm_heavy_mb() #16
  %43 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx, align 4
  %desc_size = getelementptr i8, ptr %ndev, i32 2316
  %45 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %desc_size, align 4
  %mul = shl i32 %44, 16
  %shl = mul i32 %mul, %46
  %and = and i32 %shl, 268369920
  %47 = tail call i32 @llvm.bswap.i32(i32 %and)
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %49, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %47) #16, !srcloc !221
  %proc_idx28 = getelementptr i8, ptr %ndev, i32 3008
  %50 = ptrtoint ptr %proc_idx28 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %proc_idx28, align 8
  %done_idx30 = getelementptr i8, ptr %ndev, i32 3012
  %51 = ptrtoint ptr %done_idx30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %done_idx30, align 4
  %52 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp34203.not = icmp eq i32 %53, 0
  br i1 %cmp34203.not, label %do.body.do.body43_crit_edge, label %do.body.for.body35_crit_edge

do.body.for.body35_crit_edge:                     ; preds = %do.body
  br label %for.body35

do.body.do.body43_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body43

for.cond31:                                       ; preds = %for.body35
  %inc41 = add nuw i32 %entry1.1204, 1
  %54 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx, align 8
  %cmp34 = icmp ult i32 %inc41, %55
  br i1 %cmp34, label %for.cond31.for.body35_crit_edge, label %for.cond31.do.body43_crit_edge

for.cond31.do.body43_crit_edge:                   ; preds = %for.cond31
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body43

for.cond31.for.body35_crit_edge:                  ; preds = %for.cond31
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body35

for.body35:                                       ; preds = %for.cond31.for.body35_crit_edge, %do.body.for.body35_crit_edge
  %entry1.1204 = phi i32 [ %inc41, %for.cond31.for.body35_crit_edge ], [ 0, %do.body.for.body35_crit_edge ]
  %call36 = tail call fastcc i32 @ave_rxdesc_prepare(ptr noundef %ndev, i32 noundef %entry1.1204)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.cond31, label %for.body35.do.body43_crit_edge

for.body35.do.body43_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body43

do.body43:                                        ; preds = %for.body35.do.body43_crit_edge, %for.cond31.do.body43_crit_edge, %do.body.do.body43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !242
  tail call void @arm_heavy_mb() #16
  %56 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx, align 8
  %58 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %desc_size, align 4
  %mul49 = shl i32 %57, 16
  %shl50 = mul i32 %mul49, %59
  %and51 = and i32 %shl50, 2147418112
  %60 = tail call i32 @llvm.bswap.i32(i32 %and51)
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr54 = getelementptr i8, ptr %62, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %60) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !243
  tail call void @arm_heavy_mb() #16
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i176 = getelementptr i8, ptr %64, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 16842752) #16, !srcloc !221
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bcast_mac.i) #16
  %65 = call ptr @memset(ptr %bcast_mac.i, i32 255, i32 6)
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.end22.i.i.if.end22.i.i_crit_edge, %do.body43
  %i.012.i = phi i32 [ 0, %do.body43 ], [ %inc.i, %if.end22.i.i.if.end22.i.i_crit_edge ]
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i178 = getelementptr i8, ptr %67, i32 4092
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i178) #16, !srcloc !218
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !245
  tail call void @arm_heavy_mb() #16
  %shl.i.i = shl nuw nsw i32 1, %i.012.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %69, %neg.i.i
  %70 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #16
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr30.i.i = getelementptr i8, ptr %72, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %70) #16, !srcloc !221
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %ave_pfsel_init.exit, label %if.end22.i.i.if.end22.i.i_crit_edge

if.end22.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i.i

ave_pfsel_init.exit:                              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i1.i.i = getelementptr i8, ptr %74, i32 4092
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i.i) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !245
  tail call void @arm_heavy_mb() #16
  %76 = and i32 %75, -16777217
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr30.i.i.i = getelementptr i8, ptr %78, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i.i, i32 %76) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !246
  tail call void @arm_heavy_mb() #16
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %80, i32 3328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 1073741823) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !247
  tail call void @arm_heavy_mb() #16
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr34.i.i = getelementptr i8, ptr %82, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i.i, i32 -253) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !248
  tail call void @arm_heavy_mb() #16
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr41.i.i = getelementptr i8, ptr %84, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i.i, i32 -65536) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !249
  tail call void @arm_heavy_mb() #16
  %85 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr48.i.i = getelementptr i8, ptr %86, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i.i, i32 0) #16, !srcloc !221
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i3.i.i = getelementptr i8, ptr %88, i32 4092
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !251
  tail call void @arm_heavy_mb() #16
  %90 = or i32 %89, 16777216
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr30.i4.i.i = getelementptr i8, ptr %92, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i4.i.i, i32 %90) #16, !srcloc !221
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %93 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_addr.i, align 64
  tail call fastcc void @ave_pfsel_set_macaddr(ptr noundef %ndev, i32 noundef 1, ptr noundef %94, i32 noundef 6) #16
  call fastcc void @ave_pfsel_set_macaddr(ptr noundef %ndev, i32 noundef 2, ptr noundef nonnull %bcast_mac.i, i32 noundef 6) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bcast_mac.i) #16
  %95 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev_addr.i, align 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !252
  tail call void @arm_heavy_mb() #16
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 1
  %conv.i.i = zext i8 %98 to i32
  %arrayidx1.i.i = getelementptr i8, ptr %96, i32 1
  %99 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %100 to i32
  %shl.i.i181 = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl.i.i181, %conv.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %96, i32 2
  %101 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %102 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 16
  %or6.i.i = or i32 %or.i.i, %shl5.i.i
  %arrayidx7.i.i = getelementptr i8, ptr %96, i32 3
  %103 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %104 to i32
  %shl9.i.i = shl nuw i32 %conv8.i.i, 24
  %or10.i.i = or i32 %or6.i.i, %shl9.i.i
  %105 = tail call i32 @llvm.bswap.i32(i32 %or10.i.i) #16
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i182 = getelementptr i8, ptr %107, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i182, i32 %105) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !253
  tail call void @arm_heavy_mb() #16
  %arrayidx14.i.i = getelementptr i8, ptr %96, i32 4
  %108 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %109 to i32
  %arrayidx16.i.i = getelementptr i8, ptr %96, i32 5
  %110 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx16.i.i, align 1
  %conv17.i.i = zext i8 %111 to i32
  %shl18.i.i = shl nuw nsw i32 %conv17.i.i, 8
  %or19.i.i = or i32 %shl18.i.i, %conv15.i.i
  %112 = tail call i32 @llvm.bswap.i32(i32 %or19.i.i) #16
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr21.i.i = getelementptr i8, ptr %114, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %112) #16, !srcloc !221
  %115 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev_addr.i, align 64
  tail call fastcc void @ave_pfsel_set_macaddr(ptr noundef %ndev, i32 noundef 1, ptr noundef %116, i32 noundef 6) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !254
  tail call void @arm_heavy_mb() #16
  %117 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr60 = getelementptr i8, ptr %118, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 -301636544) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !255
  tail call void @arm_heavy_mb() #16
  %119 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr65 = getelementptr i8, ptr %120, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 1024) #16, !srcloc !221
  %121 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr67 = getelementptr i8, ptr %122, i32 844
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !256
  %124 = and i32 %123, -65536
  %125 = or i32 %124, 5128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !257
  tail call void @arm_heavy_mb() #16
  %126 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr76 = getelementptr i8, ptr %127, i32 844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %125) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !258
  tail call void @arm_heavy_mb() #16
  %128 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i184 = getelementptr i8, ptr %129, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 -536870656) #16, !srcloc !221
  %napi_rx = getelementptr i8, ptr %ndev, i32 2552
  tail call void @napi_enable(ptr noundef %napi_rx) #16
  %napi_tx = getelementptr i8, ptr %ndev, i32 2776
  tail call void @napi_enable(ptr noundef %napi_tx) #16
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %130 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %131) #16
  %132 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %phydev, align 16
  %call78 = tail call i32 @phy_start_aneg(ptr noundef %133) #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %134 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %135, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  br label %cleanup

out_free_irq:                                     ; preds = %if.then17, %if.end7.i.i.out_free_irq_crit_edge, %kcalloc.exit.thread
  %136 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %137) #16
  %138 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %irq, align 4
  %call81 = tail call ptr @free_irq(i32 noundef %139, ptr noundef %ndev) #16
  br label %cleanup

cleanup:                                          ; preds = %out_free_irq, %ave_pfsel_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ave_pfsel_init.exit ], [ -12, %out_free_irq ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i90 = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !260
  tail call void @arm_heavy_mb() #16
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %4, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #16, !srcloc !221
  %irq = getelementptr i8, ptr %ndev, i32 2308
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %6) #16
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call4 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %ndev) #16
  tail call fastcc void @local_bh_disable() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !205) #16
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #16
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %13 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13.not.i = icmp eq i32 %14, 0
  br i1 %cmp13.not.i, label %entry.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %16, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #16
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %16, i32 %i.014.i, i32 11
  %17 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %12, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %16, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %18 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #16
  %inc.i = add nuw i32 %i.014.i, 1
  %19 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %entry.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #16
  tail call fastcc void @local_bh_enable() #16
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %21 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %22) #16
  %napi_tx = getelementptr i8, ptr %ndev, i32 2776
  tail call void @napi_disable(ptr noundef %napi_tx) #16
  %napi_rx = getelementptr i8, ptr %ndev, i32 2552
  tail call void @napi_disable(ptr noundef %napi_rx) #16
  tail call fastcc void @ave_desc_switch(ptr noundef %ndev, i32 noundef 3)
  %tx = getelementptr i8, ptr %ndev, i32 3020
  %23 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp97.not = icmp eq i32 %24, 0
  br i1 %cmp97.not, label %netif_tx_disable.exit.for.end_crit_edge, label %for.body.lr.ph

netif_tx_disable.exit.for.end_crit_edge:          ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %netif_tx_disable.exit
  %desc = getelementptr i8, ptr %ndev, i32 3036
  %parent.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.098 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc, align 4
  %arrayidx = getelementptr %struct.ave_desc, ptr %26, i32 %entry1.098
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %skbs_dma.i = getelementptr %struct.ave_desc, ptr %26, i32 %entry1.098, i32 1
  %29 = ptrtoint ptr %skbs_dma.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %skbs_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %if.end.ave_dma_unmap.exit_crit_edge, label %if.end.i

if.end.ave_dma_unmap.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ave_dma_unmap.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i, align 8
  %skbs_dmalen.i = getelementptr %struct.ave_desc, ptr %26, i32 %entry1.098, i32 2
  %33 = ptrtoint ptr %skbs_dmalen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %skbs_dmalen.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %30, i32 noundef %34, i32 noundef 1, i32 noundef 0) #16
  %35 = ptrtoint ptr %skbs_dma.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %skbs_dma.i, align 4
  br label %ave_dma_unmap.exit

ave_dma_unmap.exit:                               ; preds = %if.end.i, %if.end.ave_dma_unmap.exit_crit_edge
  %36 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc, align 4
  %arrayidx12 = getelementptr %struct.ave_desc, ptr %37, i32 %entry1.098
  %38 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx12, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %39, i32 noundef 1) #16
  %40 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc, align 4
  %arrayidx16 = getelementptr %struct.ave_desc, ptr %41, i32 %entry1.098
  %42 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %ave_dma_unmap.exit, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %entry1.098, 1
  %43 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx, align 4
  %cmp = icmp ult i32 %inc, %44
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %netif_tx_disable.exit.for.end_crit_edge
  %proc_idx = getelementptr i8, ptr %ndev, i32 3028
  %45 = ptrtoint ptr %proc_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %proc_idx, align 4
  %done_idx = getelementptr i8, ptr %ndev, i32 3032
  %46 = ptrtoint ptr %done_idx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %done_idx, align 4
  %rx = getelementptr i8, ptr %ndev, i32 3000
  %47 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp22101.not = icmp eq i32 %48, 0
  br i1 %cmp22101.not, label %for.end.for.end44_crit_edge, label %for.body23.lr.ph

for.end.for.end44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end44

for.body23.lr.ph:                                 ; preds = %for.end
  %desc25 = getelementptr i8, ptr %ndev, i32 3016
  %parent.i93 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  br label %for.body23

for.body23:                                       ; preds = %for.inc42.for.body23_crit_edge, %for.body23.lr.ph
  %entry1.1102 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc43, %for.inc42.for.body23_crit_edge ]
  %49 = ptrtoint ptr %desc25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc25, align 8
  %arrayidx26 = getelementptr %struct.ave_desc, ptr %50, i32 %entry1.1102
  %51 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx26, align 4
  %tobool28.not = icmp eq ptr %52, null
  br i1 %tobool28.not, label %for.body23.for.inc42_crit_edge, label %if.end30

for.body23.for.inc42_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc42

if.end30:                                         ; preds = %for.body23
  %skbs_dma.i91 = getelementptr %struct.ave_desc, ptr %50, i32 %entry1.1102, i32 1
  %53 = ptrtoint ptr %skbs_dma.i91 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %skbs_dma.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i92 = icmp eq i32 %54, 0
  br i1 %tobool.not.i92, label %if.end30.ave_dma_unmap.exit96_crit_edge, label %if.end.i95

if.end30.ave_dma_unmap.exit96_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %ave_dma_unmap.exit96

if.end.i95:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %parent.i93 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parent.i93, align 8
  %skbs_dmalen.i94 = getelementptr %struct.ave_desc, ptr %50, i32 %entry1.1102, i32 2
  %57 = ptrtoint ptr %skbs_dmalen.i94 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %skbs_dmalen.i94, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %56, i32 noundef %54, i32 noundef %58, i32 noundef 2, i32 noundef 0) #16
  %59 = ptrtoint ptr %skbs_dma.i91 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %skbs_dma.i91, align 4
  br label %ave_dma_unmap.exit96

ave_dma_unmap.exit96:                             ; preds = %if.end.i95, %if.end30.ave_dma_unmap.exit96_crit_edge
  %60 = ptrtoint ptr %desc25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc25, align 8
  %arrayidx36 = getelementptr %struct.ave_desc, ptr %61, i32 %entry1.1102
  %62 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx36, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %63, i32 noundef 1) #16
  %64 = ptrtoint ptr %desc25 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %desc25, align 8
  %arrayidx40 = getelementptr %struct.ave_desc, ptr %65, i32 %entry1.1102
  %66 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx40, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %ave_dma_unmap.exit96, %for.body23.for.inc42_crit_edge
  %inc43 = add nuw i32 %entry1.1102, 1
  %67 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx, align 8
  %cmp22 = icmp ult i32 %inc43, %68
  br i1 %cmp22, label %for.inc42.for.body23_crit_edge, label %for.inc42.for.end44_crit_edge

for.inc42.for.end44_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end44

for.inc42.for.body23_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body23

for.end44:                                        ; preds = %for.inc42.for.end44_crit_edge, %for.end.for.end44_crit_edge
  %proc_idx46 = getelementptr i8, ptr %ndev, i32 3008
  %69 = ptrtoint ptr %proc_idx46 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %proc_idx46, align 8
  %done_idx48 = getelementptr i8, ptr %ndev, i32 3012
  %70 = ptrtoint ptr %done_idx48 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %done_idx48, align 4
  %desc50 = getelementptr i8, ptr %ndev, i32 3036
  %71 = ptrtoint ptr %desc50 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %desc50, align 4
  tail call void @kfree(ptr noundef %72) #16
  %desc52 = getelementptr i8, ptr %ndev, i32 3016
  %73 = ptrtoint ptr %desc52 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %desc52, align 8
  tail call void @kfree(ptr noundef %74) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_start_xmit(ptr noundef %skb, ptr nocapture noundef %ndev) #2 align 64 {
entry:
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #16
  %0 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %paddr, align 4, !annotation !215
  %tx = getelementptr i8, ptr %ndev, i32 3020
  %proc_idx1 = getelementptr i8, ptr %ndev, i32 3028
  %1 = ptrtoint ptr %proc_idx1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %proc_idx1, align 4
  %done_idx3 = getelementptr i8, ptr %ndev, i32 3032
  %3 = ptrtoint ptr %done_idx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %done_idx3, align 4
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx, align 4
  %7 = xor i32 %2, -1
  %add = add i32 %4, %7
  %sub6 = add i32 %add, %6
  %rem = urem i32 %sub6, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem)
  %cmp = icmp slt i32 %rem, 1
  br i1 %cmp, label %if.then, label %if.end, !prof !216

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %11)
  %cmp.i.i = icmp ult i32 %11, 60
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.if.end11_crit_edge, !prof !216

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then.i.i:                                      ; preds = %if.end
  %sub.i.i = sub nuw nsw i32 60, %11
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %if.then10

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !238

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #16, !srcloc !261
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  %16 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %17, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %if.end11

if.then10:                                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %dropped = getelementptr i8, ptr %ndev, i32 2520
  %18 = ptrtoint ptr %dropped to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dropped, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %dropped, align 8
  br label %cleanup

if.end11:                                         ; preds = %__skb_put.exit.i.i, %if.end.if.end11_crit_edge
  %desc = getelementptr i8, ptr %ndev, i32 3036
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc, align 4
  %arrayidx = getelementptr %struct.ave_desc, ptr %21, i32 %2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len1.i.i, align 4
  %call13 = call fastcc i32 @ave_dma_map(ptr noundef %ndev, ptr noundef %arrayidx, ptr noundef %23, i32 noundef %25, i32 noundef 1, ptr noundef nonnull %paddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end19, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  %dropped17 = getelementptr i8, ptr %ndev, i32 2520
  %26 = ptrtoint ptr %dropped17 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dropped17, align 8
  %inc18 = add i64 %27, 1
  store i64 %inc18, ptr %dropped17, align 8
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %28 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc, align 4
  %arrayidx22 = getelementptr %struct.ave_desc, ptr %29, i32 %2
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %skb, ptr %arrayidx22, align 4
  %31 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %paddr, align 4
  %cond.in.i.i = getelementptr i8, ptr %ndev, i32 3024
  %33 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  %desc_size.i.i = getelementptr i8, ptr %ndev, i32 2316
  %34 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %desc_size.i.i, align 4
  %mul.i.i = mul i32 %35, %2
  %add.i.i = add i32 %cond.i.i, 4
  %add3.i.i = add i32 %add.i.i, %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !240
  tail call void @arm_heavy_mb() #16
  %36 = tail call i32 @llvm.bswap.i32(i32 %32) #16
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %38, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %36) #16, !srcloc !221
  %data.i = getelementptr i8, ptr %ndev, i32 3052
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %if.end19.ave_desc_write_addr.exit_crit_edge, label %if.then.i

if.end19.ave_desc_write_addr.exit_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %ave_desc_write_addr.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %cond.i13.i = load i32, ptr %cond.in.i.i, align 4
  %44 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %desc_size.i.i, align 4
  %mul.i15.i = mul i32 %45, %2
  %add.i16.i = add i32 %cond.i13.i, 8
  %add3.i17.i = add i32 %add.i16.i, %mul.i15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !240
  tail call void @arm_heavy_mb() #16
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i18.i = getelementptr i8, ptr %47, i32 %add3.i17.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 0) #16, !srcloc !221
  br label %ave_desc_write_addr.exit

ave_desc_write_addr.exit:                         ; preds = %if.then.i, %if.end19.ave_desc_write_addr.exit_crit_edge
  %48 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len1.i.i, align 4
  %and = and i32 %49, 65535
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %50 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load = load i16, ptr %ip_summed, align 8
  %51 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %switch.not.not = icmp eq i16 %51, 0
  %spec.select.v = select i1 %switch.not.not, i32 -1241513984, i32 -1509949440
  %spec.select = or i32 %spec.select.v, %and
  %52 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %cond.i.i86 = load i32, ptr %cond.in.i.i, align 4
  %53 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %desc_size.i.i, align 4
  %mul.i.i88 = mul i32 %54, %2
  %add3.i.i89 = add i32 %mul.i.i88, %cond.i.i86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !240
  tail call void @arm_heavy_mb() #16
  %55 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #16
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i90 = getelementptr i8, ptr %57, i32 %add3.i.i89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i90, i32 %55) #16, !srcloc !221
  %add44 = add i32 %2, 1
  %rem45 = urem i32 %add44, %6
  %58 = ptrtoint ptr %proc_idx1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %rem45, ptr %proc_idx1, align 4
  br label %cleanup

cleanup:                                          ; preds = %ave_desc_write_addr.exit, %if.then15, %if.then10, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %if.then10 ], [ 0, %if.then15 ], [ 0, %ave_desc_write_addr.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ave_set_rx_mode(ptr noundef readonly %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %count1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66, i32 1
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count1, align 8
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 516
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !262
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  %7 = and i32 %4, -2049
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %masksel = select i1 %or.cond, i32 0, i32 524288
  %val.0 = or i32 %masksel, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !263
  tail call void @arm_heavy_mb() #16
  %9 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr7 = getelementptr i8, ptr %11, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %9) #16, !srcloc !221
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and9 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp ne i32 %and9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp sgt i32 %1, 7
  %or.cond62 = select i1 %tobool10.not, i1 true, i1 %cmp
  br i1 %or.cond62, label %if.then12, label %if.end22.i.preheader

if.end22.i.preheader:                             ; preds = %entry
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %15, i32 4092
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !245
  tail call void @arm_heavy_mb() #16
  %17 = and i32 %16, -524289
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr30.i = getelementptr i8, ptr %19, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %17) #16, !srcloc !221
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i64.1 = getelementptr i8, ptr %21, i32 4092
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.1) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !245
  tail call void @arm_heavy_mb() #16
  %23 = and i32 %22, -1048577
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr30.i.1 = getelementptr i8, ptr %25, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.1, i32 %23) #16, !srcloc !221
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i64.2 = getelementptr i8, ptr %27, i32 4092
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.2) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !245
  tail call void @arm_heavy_mb() #16
  %29 = and i32 %28, -2097153
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr30.i.2 = getelementptr i8, ptr %31, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.2, i32 %29) #16, !srcloc !221
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i64.3 = getelementptr i8, ptr %33, i32 4092
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.3) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !245
  tail call void @arm_heavy_mb() #16
  %35 = and i32 %34, -4194305
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr30.i.3 = getelementptr i8, ptr %37, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.3, i32 %35) #16, !srcloc !221
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i64.4 = getelementptr i8, ptr %39, i32 4092
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.4) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !245
  tail call void @arm_heavy_mb() #16
  %41 = and i32 %40, -8388609
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr30.i.4 = getelementptr i8, ptr %43, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.4, i32 %41) #16, !srcloc !221
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i64.5 = getelementptr i8, ptr %45, i32 4092
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.5) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !245
  tail call void @arm_heavy_mb() #16
  %47 = and i32 %46, -257
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr30.i.5 = getelementptr i8, ptr %49, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.5, i32 %47) #16, !srcloc !221
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i64.6 = getelementptr i8, ptr %51, i32 4092
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.6) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !245
  tail call void @arm_heavy_mb() #16
  %53 = and i32 %52, -513
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr30.i.6 = getelementptr i8, ptr %55, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.6, i32 %53) #16, !srcloc !221
  %56 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %56)
  %hw_adr.066 = load ptr, ptr %mc, align 4
  %cmp25.not67 = icmp eq ptr %hw_adr.066, %mc
  %or.cond6369 = select i1 %cmp25.not67, i1 true, i1 %tobool4.not
  br i1 %or.cond6369, label %if.end22.i.preheader.if.end40_crit_edge, label %if.end22.i.preheader.if.end29_crit_edge

if.end22.i.preheader.if.end29_crit_edge:          ; preds = %if.end22.i.preheader
  br label %if.end29

if.end22.i.preheader.if.end40_crit_edge:          ; preds = %if.end22.i.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ave_pfsel_set_macaddr(ptr noundef %ndev, i32 noundef 11, ptr noundef nonnull @v4multi_macadr, i32 noundef 1)
  tail call fastcc void @ave_pfsel_set_macaddr(ptr noundef %ndev, i32 noundef 12, ptr noundef nonnull @v6multi_macadr, i32 noundef 1)
  br label %if.end40

if.end29:                                         ; preds = %if.end29.if.end29_crit_edge, %if.end22.i.preheader.if.end29_crit_edge
  %hw_adr.071 = phi ptr [ %hw_adr.0, %if.end29.if.end29_crit_edge ], [ %hw_adr.066, %if.end22.i.preheader.if.end29_crit_edge ]
  %count.170 = phi i32 [ %inc32, %if.end29.if.end29_crit_edge ], [ 0, %if.end22.i.preheader.if.end29_crit_edge ]
  %add30 = add i32 %count.170, 11
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %hw_adr.071, i32 0, i32 2
  tail call fastcc void @ave_pfsel_set_macaddr(ptr noundef %ndev, i32 noundef %add30, ptr noundef %addr, i32 noundef 6)
  %inc32 = add nuw i32 %count.170, 1
  %57 = ptrtoint ptr %hw_adr.071 to i32
  call void @__asan_load4_noabort(i32 %57)
  %hw_adr.0 = load ptr, ptr %hw_adr.071, align 4
  %cmp25.not = icmp eq ptr %hw_adr.0, %mc
  call void @__sanitizer_cov_trace_cmp4(i32 %inc32, i32 %1)
  %cmp27 = icmp eq i32 %inc32, %1
  %or.cond63 = select i1 %cmp25.not, i1 true, i1 %cmp27
  br i1 %or.cond63, label %if.end29.if.end40_crit_edge, label %if.end29.if.end29_crit_edge

if.end29.if.end29_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.end29.if.end40_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.end40:                                         ; preds = %if.end29.if.end40_crit_edge, %if.then12, %if.end22.i.preheader.if.end40_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_set_mac_address(ptr noundef %ndev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @eth_mac_addr(ptr noundef %ndev, ptr noundef %p) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr.i, align 64
  %add.ptr.i.i.i = getelementptr i8, ptr %ndev, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !252
  tail call void @arm_heavy_mb() #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv.i.i = zext i8 %3 to i32
  %arrayidx1.i.i = getelementptr i8, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %5 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %1, i32 2
  %6 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %7 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 16
  %or6.i.i = or i32 %or.i.i, %shl5.i.i
  %arrayidx7.i.i = getelementptr i8, ptr %1, i32 3
  %8 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %9 to i32
  %shl9.i.i = shl nuw i32 %conv8.i.i, 24
  %or10.i.i = or i32 %or6.i.i, %shl9.i.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %or10.i.i) #16
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !253
  tail call void @arm_heavy_mb() #16
  %arrayidx14.i.i = getelementptr i8, ptr %1, i32 4
  %13 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %14 to i32
  %arrayidx16.i.i = getelementptr i8, ptr %1, i32 5
  %15 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16.i.i, align 1
  %conv17.i.i = zext i8 %16 to i32
  %shl18.i.i = shl nuw nsw i32 %conv17.i.i, 8
  %or19.i.i = or i32 %shl18.i.i, %conv15.i.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %or19.i.i) #16
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i.i, align 8
  %add.ptr21.i.i = getelementptr i8, ptr %19, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %17) #16, !srcloc !221
  %20 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr.i, align 64
  tail call fastcc void @ave_pfsel_set_macaddr(ptr noundef %ndev, i32 noundef 1, ptr noundef %21, i32 noundef 6) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_ioctl(ptr nocapture noundef readonly %ndev, ptr noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %call = tail call i32 @phy_mii_ioctl(ptr noundef %1, ptr noundef %ifr, i32 noundef %cmd) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ave_get_stats64(ptr noundef %ndev, ptr nocapture noundef writeonly %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_rx = getelementptr i8, ptr %ndev, i32 2384
  %packets = getelementptr i8, ptr %ndev, i32 2416
  %bytes = getelementptr i8, ptr %ndev, i32 2424
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call1 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %stats_rx)
  %0 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %packets, align 8
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %stats, align 8
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %bytes, align 8
  %5 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %rx_bytes, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !264
  %6 = ptrtoint ptr %stats_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %stats_rx, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %7, %call1
  br i1 %cmp.i.i.i.i.not, label %do.body7.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body7.preheader:                               ; preds = %do.body
  %stats_tx = getelementptr i8, ptr %ndev, i32 2464
  %packets11 = getelementptr i8, ptr %ndev, i32 2496
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %bytes13 = getelementptr i8, ptr %ndev, i32 2504
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  br label %do.body7

do.body7:                                         ; preds = %do.body7.do.body7_crit_edge, %do.body7.preheader
  %call9 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %stats_tx)
  %8 = ptrtoint ptr %packets11 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %packets11, align 8
  %10 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %tx_packets, align 8
  %11 = ptrtoint ptr %bytes13 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bytes13, align 8
  %13 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %tx_bytes, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !264
  %14 = ptrtoint ptr %stats_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %stats_tx, align 4
  %cmp.i.i.i.i51.not = icmp eq i32 %15, %call9
  br i1 %cmp.i.i.i.i51.not, label %do.end18, label %do.body7.do.body7_crit_edge

do.body7.do.body7_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body7

do.end18:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  %errors = getelementptr i8, ptr %ndev, i32 2432
  %16 = ptrtoint ptr %errors to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %errors, align 8
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %18 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %rx_errors, align 8
  %errors21 = getelementptr i8, ptr %ndev, i32 2512
  %19 = ptrtoint ptr %errors21 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %errors21, align 8
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %21 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %tx_errors, align 8
  %dropped = getelementptr i8, ptr %ndev, i32 2440
  %22 = ptrtoint ptr %dropped to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dropped, align 8
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %24 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %rx_dropped, align 8
  %dropped24 = getelementptr i8, ptr %ndev, i32 2520
  %25 = ptrtoint ptr %dropped24 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dropped24, align 8
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %27 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %tx_dropped, align 8
  %fifo_errors = getelementptr i8, ptr %ndev, i32 2456
  %28 = ptrtoint ptr %fifo_errors to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %fifo_errors, align 8
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 14
  %30 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %rx_fifo_errors, align 8
  %collisions = getelementptr i8, ptr %ndev, i32 2528
  %31 = ptrtoint ptr %collisions to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %collisions, align 8
  %collisions27 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 9
  %33 = ptrtoint ptr %collisions27 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %collisions27, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ave_global_reset(ptr nocapture noundef readonly %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phy_mode = getelementptr i8, ptr %ndev, i32 2356
  %0 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_mode, align 4
  %2 = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp ult i32 %2, 4
  %spec.select = select i1 %3, i32 193, i32 201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  tail call void @arm_heavy_mb() #16
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %spec.select) #16, !srcloc !221
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 32808
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !266
  %9 = and i32 %8, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !267
  tail call void @arm_heavy_mb() #16
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr10 = getelementptr i8, ptr %11, i32 32808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %9) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !268
  tail call void @arm_heavy_mb() #16
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr15 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 285212672) #16, !srcloc !221
  tail call void @msleep(i32 noundef 20) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !269
  tail call void @arm_heavy_mb() #16
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr20 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16777216) #16, !srcloc !221
  tail call void @msleep(i32 noundef 40) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !270
  tail call void @arm_heavy_mb() #16
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr25 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #16, !srcloc !221
  tail call void @msleep(i32 noundef 40) #16
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr29 = getelementptr i8, ptr %19, i32 32808
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !271
  %21 = or i32 %20, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !272
  tail call void @arm_heavy_mb() #16
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr38 = getelementptr i8, ptr %23, i32 32808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %21) #16, !srcloc !221
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i54 = getelementptr i8, ptr %25, i32 256
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !260
  tail call void @arm_heavy_mb() #16
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %28, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #16, !srcloc !221
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_get_and_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ave_phy_adjust_link(ptr nocapture noundef readonly %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !273
  %5 = and i32 %4, -769
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interface.i, align 4
  %9 = add i32 %8, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %12)
  %cmp = icmp eq i32 %12, 1000
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %or = or i32 %6, 131072
  br label %do.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %speed5 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %speed5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %14)
  %cmp6 = icmp eq i32 %14, 100
  %or8 = or i32 %6, 65536
  %spec.select = select i1 %cmp6, i32 %or8, i32 %6
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %or, %if.then ], [ %spec.select, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !274
  tail call void @arm_heavy_mb() #16
  %15 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr11 = getelementptr i8, ptr %17, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %15) #16, !srcloc !221
  %18 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %interface.i, align 4
  %20 = add i32 %19, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %do.body.if.end33_crit_edge, label %if.then13

do.body.if.end33_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr17 = getelementptr i8, ptr %23, i32 32820
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !275
  %speed21 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %speed21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %26)
  %cmp22 = icmp ne i32 %26, 10
  %27 = and i32 %24, -16777217
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %masksel = zext i1 %cmp22 to i32
  %val.1 = or i32 %28, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !276
  tail call void @arm_heavy_mb() #16
  %29 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr32 = getelementptr i8, ptr %31, i32 32820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %29) #16, !srcloc !221
  br label %if.end33

if.end33:                                         ; preds = %if.then13, %do.body.if.end33_crit_edge
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr37 = getelementptr i8, ptr %33, i32 516
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #16, !srcloc !218
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !277
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr44 = getelementptr i8, ptr %37, i32 512
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #16, !srcloc !218
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !278
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %40 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not = icmp eq i32 %41, 0
  br i1 %tobool.not, label %if.else80, label %if.then48

if.then48:                                        ; preds = %if.end33
  %pause = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool50.not = icmp eq i32 %43, 0
  %spec.select143 = select i1 %tobool50.not, i16 0, i16 1024
  %asym_pause = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %asym_pause to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %asym_pause, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool55.not = icmp eq i32 %45, 0
  %46 = or i16 %spec.select143, 2048
  %rmt_adv.1 = select i1 %tobool55.not, i16 %spec.select143, i16 %46
  %advertising = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 17
  %47 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %advertising, align 4
  %49 = lshr i32 %48, 3
  %50 = and i32 %49, 1024
  %51 = load volatile i32, ptr %advertising, align 4
  %52 = lshr i32 %51, 3
  %53 = and i32 %52, 2048
  %54 = or i32 %53, %50
  %conv62 = trunc i32 %54 to i16
  %and25.i = and i16 %rmt_adv.1, %conv62
  %and.i = zext i16 %and25.i to i32
  %and2.i = and i32 %and.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then48.if.then75_crit_edge

if.then48.if.then75_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then75

if.else.i:                                        ; preds = %if.then48
  %and6.i = and i32 %and.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %mii_resolve_flowctrl_fdx.exit.thread153, label %if.then8.i

mii_resolve_flowctrl_fdx.exit.thread153:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %and70155 = and i32 %39, -262145
  br label %if.else77

if.then8.i:                                       ; preds = %if.else.i
  %55 = and i16 %conv62, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool11.not.i = icmp eq i16 %55, 0
  br i1 %tobool11.not.i, label %mii_resolve_flowctrl_fdx.exit, label %if.then8.i.if.then75_crit_edge

if.then8.i.if.then75_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then75

mii_resolve_flowctrl_fdx.exit:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  %56 = lshr exact i16 %rmt_adv.1, 10
  %57 = and i16 %56, 1
  %58 = zext i16 %57 to i32
  %and70 = and i32 %39, -262145
  %and65 = shl nuw nsw i32 %58, 18
  %txcr.0 = or i32 %and65, %and70
  br label %if.else77

if.then75:                                        ; preds = %if.then8.i.if.then75_crit_edge, %if.then48.if.then75_crit_edge
  %cap.0.i.ph = phi i32 [ 0, %if.then8.i.if.then75_crit_edge ], [ 262144, %if.then48.if.then75_crit_edge ]
  %and70147 = and i32 %39, -262145
  %txcr.0149 = or i32 %cap.0.i.ph, %and70147
  %or76 = or i32 %35, 6291456
  br label %if.end84

if.else77:                                        ; preds = %mii_resolve_flowctrl_fdx.exit, %mii_resolve_flowctrl_fdx.exit.thread153
  %txcr.0160 = phi i32 [ %and70155, %mii_resolve_flowctrl_fdx.exit.thread153 ], [ %txcr.0, %mii_resolve_flowctrl_fdx.exit ]
  %or49 = and i32 %35, -6291457
  %and78 = or i32 %or49, 4194304
  br label %if.end84

if.else80:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %and82 = and i32 %35, -6291457
  %and83 = and i32 %39, -262145
  br label %if.end84

if.end84:                                         ; preds = %if.else80, %if.else77, %if.then75
  %rxcr.0 = phi i32 [ %or76, %if.then75 ], [ %and78, %if.else77 ], [ %and82, %if.else80 ]
  %txcr.1 = phi i32 [ %txcr.0149, %if.then75 ], [ %txcr.0160, %if.else77 ], [ %and83, %if.else80 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %rxcr.0)
  %cmp85.not = icmp eq i32 %35, %rxcr.0
  br i1 %cmp85.not, label %if.end84.if.end104_crit_edge, label %do.body88

if.end84.if.end104_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end104

do.body88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !279
  tail call void @arm_heavy_mb() #16
  %and91 = and i32 %rxcr.0, -1073741825
  %59 = tail call i32 @llvm.bswap.i32(i32 %and91)
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr93 = getelementptr i8, ptr %61, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %59) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !280
  tail call void @arm_heavy_mb() #16
  %62 = tail call i32 @llvm.bswap.i32(i32 %txcr.1)
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr98 = getelementptr i8, ptr %64, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %62) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !281
  tail call void @arm_heavy_mb() #16
  %65 = tail call i32 @llvm.bswap.i32(i32 %rxcr.0)
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr103 = getelementptr i8, ptr %67, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %65) #16, !srcloc !221
  br label %if.end104

if.end104:                                        ; preds = %do.body88, %if.end84.if.end104_crit_edge
  tail call void @phy_print_status(ptr noundef %1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ave_ethtool_get_wol(ptr nocapture noundef readonly %ndev, ptr noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @phy_ethtool_get_wol(ptr noundef nonnull %3, ptr noundef %wol) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_irq_handler(i32 noundef %irq, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #16, !srcloc !218
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !260
  tail call void @arm_heavy_mb() #16
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %5, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #16, !srcloc !221
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 260
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !218
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !282
  %and = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !283
  tail call void @arm_heavy_mb() #16
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr5 = getelementptr i8, ptr %11, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 1) #16, !srcloc !221
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %and6 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %do.body9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !284
  tail call void @arm_heavy_mb() #16
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr13 = getelementptr i8, ptr %13, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 65536) #16, !srcloc !221
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.50) #19
  br label %if.end14

if.end14:                                         ; preds = %do.body9, %if.end.if.end14_crit_edge
  %and15 = and i32 %9, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.exit_isr_crit_edge, label %if.end18

if.end14.exit_isr_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit_isr

if.end18:                                         ; preds = %if.end14
  %and19 = and i32 %and15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %fifo_errors = getelementptr i8, ptr %netdev, i32 2456
  %14 = ptrtoint ptr %fifo_errors to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fifo_errors, align 8
  %inc = add i64 %15, 1
  store i64 %inc, ptr %fifo_errors, align 8
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %17, i32 516
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !286
  tail call void @arm_heavy_mb() #16
  %19 = and i32 %18, -65
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr4.i68 = getelementptr i8, ptr %21, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i68, i32 %19) #16, !srcloc !221
  tail call fastcc void @ave_desc_switch(ptr noundef %netdev, i32 noundef 1) #16
  %rx.i = getelementptr i8, ptr %netdev, i32 3000
  %22 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx.i, align 8
  %call6.i = tail call fastcc i32 @ave_rx_receive(ptr noundef %netdev, i32 noundef %23) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !287
  tail call void @arm_heavy_mb() #16
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 536870912) #16, !srcloc !221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 10737400) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !288
  tail call void @arm_heavy_mb() #16
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr16.i = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #16, !srcloc !221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 4294960) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !289
  tail call void @arm_heavy_mb() #16
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr21.i = getelementptr i8, ptr %31, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 -2147483648) #16, !srcloc !221
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr118.i.i = getelementptr i8, ptr %33, i32 768
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118.i.i) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !290
  %35 = and i32 %34, -268500992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr128.i.i = getelementptr i8, ptr %37, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128.i.i, i32 %35) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !292
  tail call void @arm_heavy_mb() #16
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr27.i = getelementptr i8, ptr %39, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %18) #16, !srcloc !221
  br label %exit_isr

if.end22:                                         ; preds = %if.end18
  %and23 = and i32 %and15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end33_crit_edge, label %if.then25

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %dropped = getelementptr i8, ptr %netdev, i32 2440
  %40 = ptrtoint ptr %dropped to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %dropped, align 8
  %inc27 = add i64 %41, 1
  store i64 %inc27, ptr %dropped, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !293
  tail call void @arm_heavy_mb() #16
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr32 = getelementptr i8, ptr %43, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 1073741824) #16, !srcloc !221
  br label %if.end33

if.end33:                                         ; preds = %if.then25, %if.end22.if.end33_crit_edge
  %and34 = and i32 %and15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end38_crit_edge, label %if.then36

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then36:                                        ; preds = %if.end33
  %napi_rx = getelementptr i8, ptr %netdev, i32 2552
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_rx) #16
  br i1 %call.i, label %if.then.i, label %if.then36.napi_schedule.exit_crit_edge

if.then36.napi_schedule.exit_crit_edge:           ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #18
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__napi_schedule(ptr noundef %napi_rx) #16
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %if.then36.napi_schedule.exit_crit_edge
  %and37 = and i32 %3, -33
  br label %if.end38

if.end38:                                         ; preds = %napi_schedule.exit, %if.end33.if.end38_crit_edge
  %gimr_val.0 = phi i32 [ %and37, %napi_schedule.exit ], [ %3, %if.end33.if.end38_crit_edge ]
  %and39 = and i32 %and15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.exit_isr_crit_edge, label %if.then41

if.end38.exit_isr_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit_isr

if.then41:                                        ; preds = %if.end38
  %napi_tx = getelementptr i8, ptr %netdev, i32 2776
  %call.i69 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_tx) #16
  br i1 %call.i69, label %if.then.i70, label %if.then41.napi_schedule.exit71_crit_edge

if.then41.napi_schedule.exit71_crit_edge:         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #18
  br label %napi_schedule.exit71

if.then.i70:                                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__napi_schedule(ptr noundef %napi_tx) #16
  br label %napi_schedule.exit71

napi_schedule.exit71:                             ; preds = %if.then.i70, %if.then41.napi_schedule.exit71_crit_edge
  %and42 = and i32 %gimr_val.0, -65537
  br label %exit_isr

exit_isr:                                         ; preds = %napi_schedule.exit71, %if.end38.exit_isr_crit_edge, %if.then21, %if.end14.exit_isr_crit_edge
  %gimr_val.1 = phi i32 [ %3, %if.then21 ], [ %and42, %napi_schedule.exit71 ], [ %gimr_val.0, %if.end38.exit_isr_crit_edge ], [ %3, %if.end14.exit_isr_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !258
  tail call void @arm_heavy_mb() #16
  %44 = tail call i32 @llvm.bswap.i32(i32 %gimr_val.1) #16
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i73 = getelementptr i8, ptr %46, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %44) #16, !srcloc !221
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ave_rxdesc_prepare(ptr noundef %ndev, i32 noundef %entry1) unnamed_addr #2 align 64 {
entry:
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #16
  %0 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %paddr, align 4, !annotation !215
  %desc = getelementptr i8, ptr %ndev, i32 3016
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 8
  %arrayidx = getelementptr %struct.ave_desc, ptr %2, i32 %entry1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef 1518, i32 noundef 2592) #16
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.52) #19
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 2
  store ptr %add.ptr, ptr %data, align 4
  %tail = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail, align 8
  %add.ptr5 = getelementptr i8, ptr %8, i32 2
  store ptr %add.ptr5, ptr %tail, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %skb.0 = phi ptr [ %4, %entry.if.end6_crit_edge ], [ %call.i, %if.end ]
  %cond.in.i.i = getelementptr i8, ptr %ndev, i32 3004
  %9 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  %desc_size.i.i = getelementptr i8, ptr %ndev, i32 2316
  %10 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desc_size.i.i, align 4
  %mul.i.i = mul i32 %11, %entry1
  %add3.i.i = add i32 %mul.i.i, %cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !240
  tail call void @arm_heavy_mb() #16
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 160) #16, !srcloc !221
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 8
  %arrayidx9 = getelementptr %struct.ave_desc, ptr %15, i32 %entry1
  %data10 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %16 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data10, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 -2
  %call12 = call fastcc i32 @ave_dma_map(ptr noundef %ndev, ptr noundef %arrayidx9, ptr noundef %add.ptr11, i32 noundef 1520, i32 noundef 2, ptr noundef nonnull %paddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.53) #19
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb.0, i32 noundef 1) #16
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc, align 8
  %arrayidx18 = getelementptr %struct.ave_desc, ptr %19, i32 %entry1
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %skb.0, ptr %arrayidx18, align 4
  %21 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %paddr, align 4
  %23 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %cond.i.i47 = load i32, ptr %cond.in.i.i, align 4
  %24 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %desc_size.i.i, align 4
  %mul.i.i49 = mul i32 %25, %entry1
  %add.i.i = add i32 %cond.i.i47, 4
  %add3.i.i50 = add i32 %add.i.i, %mul.i.i49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !240
  tail call void @arm_heavy_mb() #16
  %26 = tail call i32 @llvm.bswap.i32(i32 %22) #16
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %28, i32 %add3.i.i50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %26) #16, !srcloc !221
  %data.i = getelementptr i8, ptr %ndev, i32 3052
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %if.end15.ave_desc_write_addr.exit_crit_edge, label %if.then.i

if.end15.ave_desc_write_addr.exit_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %ave_desc_write_addr.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %cond.i13.i = load i32, ptr %cond.in.i.i, align 4
  %34 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %desc_size.i.i, align 4
  %mul.i15.i = mul i32 %35, %entry1
  %add.i16.i = add i32 %cond.i13.i, 8
  %add3.i17.i = add i32 %add.i16.i, %mul.i15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !240
  tail call void @arm_heavy_mb() #16
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i18.i = getelementptr i8, ptr %37, i32 %add3.i17.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 0) #16, !srcloc !221
  br label %ave_desc_write_addr.exit

ave_desc_write_addr.exit:                         ; preds = %if.then.i, %if.end15.ave_desc_write_addr.exit_crit_edge
  %38 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %cond.i.i53 = load i32, ptr %cond.in.i.i, align 4
  %39 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %desc_size.i.i, align 4
  %mul.i.i55 = mul i32 %40, %entry1
  %add3.i.i56 = add i32 %mul.i.i55, %cond.i.i53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !240
  tail call void @arm_heavy_mb() #16
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i57 = getelementptr i8, ptr %42, i32 %add3.i.i56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 -301662176) #16, !srcloc !221
  br label %cleanup

cleanup:                                          ; preds = %ave_desc_write_addr.exit, %if.then14, %if.then4
  %retval.0 = phi i32 [ %call12, %if.then14 ], [ 0, %ave_desc_write_addr.exit ], [ -12, %if.then4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ave_desc_switch(ptr noundef %ndev, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 1, label %sw.bb45
    i32 0, label %sw.bb114
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !243
  tail call void @arm_heavy_mb() #16
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16842752) #16, !srcloc !221
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  tail call void @arm_heavy_mb() #16
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6 = getelementptr i8, ptr %4, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #16, !srcloc !221
  %call7 = tail call i64 @ktime_get() #16
  %add.i = add i64 %call7, 15000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 645) #16
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1910 = getelementptr i8, ptr %6, i32 768
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1910) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !295
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not11 = icmp eq i32 %7, 0
  br i1 %tobool.not11, label %do.body2.sw.epilog_crit_edge, label %do.body2.land.lhs.true_crit_edge

do.body2.land.lhs.true_crit_edge:                 ; preds = %do.body2
  br label %land.lhs.true

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.then38.land.lhs.true_crit_edge, %do.body2.land.lhs.true_crit_edge
  %call25 = tail call i64 @ktime_get() #16
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call25, %add.i
  br i1 %cmp3.i, label %if.then28, label %if.then38

if.then28:                                        ; preds = %land.lhs.true
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr32 = getelementptr i8, ptr %9, i32 768
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %phi.cmp = icmp eq i32 %10, 0
  br i1 %phi.cmp, label %if.then28.sw.epilog_crit_edge, label %if.then43

if.then28.sw.epilog_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then38:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 38, i32 noundef 150, i32 noundef 2) #16
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr19 = getelementptr i8, ptr %12, i32 768
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !295
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then38.sw.epilog_crit_edge, label %if.then38.land.lhs.true_crit_edge

if.then38.land.lhs.true_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.then38.sw.epilog_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then43:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.56) #19
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr49 = getelementptr i8, ptr %15, i32 768
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !297
  %17 = and i32 %16, -268500992
  %18 = or i32 %17, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !298
  tail call void @arm_heavy_mb() #16
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr57 = getelementptr i8, ptr %20, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %18) #16, !srcloc !221
  %call61 = tail call i64 @ktime_get() #16
  %add.i1 = add i64 %call61, 150000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 658) #16
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr797 = getelementptr i8, ptr %22, i32 768
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr797) #16, !srcloc !218
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  %and838 = and i32 %24, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and838)
  %tobool84.not9 = icmp eq i32 %and838, 0
  br i1 %tobool84.not9, label %sw.bb45.land.lhs.true88_crit_edge, label %sw.bb45.for.end106_crit_edge

sw.bb45.for.end106_crit_edge:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end106

sw.bb45.land.lhs.true88_crit_edge:                ; preds = %sw.bb45
  br label %land.lhs.true88

land.lhs.true88:                                  ; preds = %if.then102.land.lhs.true88_crit_edge, %sw.bb45.land.lhs.true88_crit_edge
  %call89 = tail call i64 @ktime_get() #16
  call void @__sanitizer_cov_trace_cmp8(i64 %call89, i64 %add.i1)
  %cmp3.i3 = icmp sgt i64 %call89, %add.i1
  br i1 %cmp3.i3, label %if.then92, label %if.then102

if.then92:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr96 = getelementptr i8, ptr %26, i32 768
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #16, !srcloc !218
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !300
  br label %for.end106

if.then102:                                       ; preds = %land.lhs.true88
  tail call void @usleep_range_state(i32 noundef 38, i32 noundef 150, i32 noundef 2) #16
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr79 = getelementptr i8, ptr %30, i32 768
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #16, !srcloc !218
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  %and83 = and i32 %32, 1048576
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.then102.land.lhs.true88_crit_edge, label %if.then102.for.end106_crit_edge

if.then102.for.end106_crit_edge:                  ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end106

if.then102.land.lhs.true88_crit_edge:             ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true88

for.end106:                                       ; preds = %if.then102.for.end106_crit_edge, %if.then92, %sw.bb45.for.end106_crit_edge
  %val.1 = phi i32 [ %28, %if.then92 ], [ %24, %sw.bb45.for.end106_crit_edge ], [ %32, %if.then102.for.end106_crit_edge ]
  %and108 = and i32 %val.1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.then112, label %for.end106.sw.epilog_crit_edge

for.end106.sw.epilog_crit_edge:                   ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then112:                                       ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.57) #19
  br label %sw.epilog

sw.bb114:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr118 = getelementptr i8, ptr %34, i32 768
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #16, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !290
  %36 = and i32 %35, -268500992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr128 = getelementptr i8, ptr %38, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %36) #16, !srcloc !221
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb114, %if.then112, %for.end106.sw.epilog_crit_edge, %if.then43, %if.then38.sw.epilog_crit_edge, %if.then28.sw.epilog_crit_edge, %do.body2.sw.epilog_crit_edge, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ave_rx_receive(ptr noundef %ndev, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %rx = getelementptr i8, ptr %ndev, i32 3000
  %proc_idx1 = getelementptr i8, ptr %ndev, i32 3008
  %0 = ptrtoint ptr %proc_idx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %proc_idx1, align 8
  %done_idx3 = getelementptr i8, ptr %ndev, i32 3012
  %2 = ptrtoint ptr %done_idx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %done_idx3, align 4
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx, align 8
  %cond.in.i.i = getelementptr i8, ptr %ndev, i32 3004
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp107 = icmp sgt i32 %num, 0
  br i1 %cmp107, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %6 = xor i32 %3, -1
  %add = add i32 %1, %6
  %sub6 = add i32 %add, %5
  %rem = urem i32 %sub6, %5
  %desc_size.i.i = getelementptr i8, ptr %ndev, i32 2316
  %desc = getelementptr i8, ptr %ndev, i32 3016
  %parent.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %errors = getelementptr i8, ptr %ndev, i32 2432
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %npkts.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %inc39, %for.inc.for.body_crit_edge ]
  %restpkt.0113 = phi i32 [ %rem, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %proc_idx.0110 = phi i32 [ %1, %for.body.lr.ph ], [ %proc_idx.1, %for.inc.for.body_crit_edge ]
  %rx_bytes.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %rx_bytes.1, %for.inc.for.body_crit_edge ]
  %rx_packets.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %rx_packets.1, %for.inc.for.body_crit_edge ]
  %dec = add i32 %restpkt.0113, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp7 = icmp slt i32 %dec, 0
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  %8 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_size.i.i, align 4
  %mul.i.i = mul i32 %9, %proc_idx.0110
  %add.i.i = add i32 %mul.i.i, %cond.i.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %add.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !218
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !236
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool.not = icmp sgt i32 %13, -1
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end10

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end10:                                         ; preds = %if.end
  %and11 = and i32 %13, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %errors to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %errors, align 8
  %inc = add i64 %15, 1
  store i64 %inc, ptr %errors, align 8
  br label %for.inc

if.end16:                                         ; preds = %if.end10
  %and17 = and i32 %13, 2047
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc, align 8
  %arrayidx = getelementptr %struct.ave_desc, ptr %17, i32 %proc_idx.0110
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %20 = load ptr, ptr %desc, align 8
  %skbs_dma.i = getelementptr %struct.ave_desc, ptr %20, i32 %proc_idx.0110, i32 1
  %21 = ptrtoint ptr %skbs_dma.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %skbs_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.end16.ave_dma_unmap.exit_crit_edge, label %if.end.i

if.end16.ave_dma_unmap.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %ave_dma_unmap.exit

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i, align 8
  %skbs_dmalen.i = getelementptr %struct.ave_desc, ptr %20, i32 %proc_idx.0110, i32 2
  %25 = ptrtoint ptr %skbs_dmalen.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %skbs_dmalen.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %24, i32 noundef %22, i32 noundef %26, i32 noundef 2, i32 noundef 0) #16
  %27 = ptrtoint ptr %skbs_dma.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %skbs_dma.i, align 4
  br label %ave_dma_unmap.exit

ave_dma_unmap.exit:                               ; preds = %if.end.i, %if.end16.ave_dma_unmap.exit_crit_edge
  %28 = getelementptr inbounds %struct.anon.44, ptr %19, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ndev, ptr %28, align 8
  %call26 = tail call ptr @skb_put(ptr noundef %19, i32 noundef %and17) #16
  %call27 = tail call zeroext i16 @eth_type_trans(ptr noundef %19, ptr noundef %ndev) #16
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 15, i32 0, i32 18
  %30 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %call27, ptr %protocol, align 8
  %31 = and i32 %13, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %31)
  %32 = icmp eq i32 %31, 2097152
  br i1 %32, label %if.then32, label %ave_dma_unmap.exit.if.end33_crit_edge

ave_dma_unmap.exit.if.end33_crit_edge:            ; preds = %ave_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then32:                                        ; preds = %ave_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #18
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 15
  %33 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %ave_dma_unmap.exit.if.end33_crit_edge
  %inc34 = add i32 %rx_packets.0108, 1
  %add35 = add i32 %and17, %rx_bytes.0109
  %call36 = tail call i32 @netif_receive_skb(ptr noundef %19) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %if.then13
  %rx_packets.1 = phi i32 [ %inc34, %if.end33 ], [ %rx_packets.0108, %if.then13 ]
  %rx_bytes.1 = phi i32 [ %add35, %if.end33 ], [ %rx_bytes.0109, %if.then13 ]
  %add37.pn = add i32 %proc_idx.0110, 1
  %proc_idx.1 = urem i32 %add37.pn, %5
  %inc39 = add nuw nsw i32 %npkts.0114, 1
  %exitcond.not = icmp eq i32 %inc39, %num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rx_packets.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %rx_packets.0108, %if.end.for.end_crit_edge ], [ %rx_packets.0108, %for.body.for.end_crit_edge ], [ %rx_packets.1, %for.inc.for.end_crit_edge ]
  %rx_bytes.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %rx_bytes.0109, %if.end.for.end_crit_edge ], [ %rx_bytes.0109, %for.body.for.end_crit_edge ], [ %rx_bytes.1, %for.inc.for.end_crit_edge ]
  %proc_idx.0.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %proc_idx.0110, %if.end.for.end_crit_edge ], [ %proc_idx.0110, %for.body.for.end_crit_edge ], [ %proc_idx.1, %for.inc.for.end_crit_edge ]
  %npkts.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %npkts.0114, %if.end.for.end_crit_edge ], [ %npkts.0114, %for.body.for.end_crit_edge ], [ %num, %for.inc.for.end_crit_edge ]
  %34 = ptrtoint ptr %proc_idx1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %proc_idx.0.lcssa, ptr %proc_idx1, align 8
  %stats_rx42 = getelementptr i8, ptr %ndev, i32 2384
  tail call fastcc void @u64_stats_update_begin(ptr noundef %stats_rx42)
  %conv = zext i32 %rx_packets.0.lcssa to i64
  %packets = getelementptr i8, ptr %ndev, i32 2416
  %35 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %packets, align 8
  %add44 = add i64 %36, %conv
  store i64 %add44, ptr %packets, align 8
  %conv45 = zext i32 %rx_bytes.0.lcssa to i64
  %bytes = getelementptr i8, ptr %ndev, i32 2424
  %37 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bytes, align 8
  %add47 = add i64 %38, %conv45
  store i64 %add47, ptr %bytes, align 8
  %dep_map.i.i = getelementptr i8, ptr %ndev, i32 2388
  %39 = tail call ptr @llvm.returnaddress(i32 0) #16
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %40) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !237
  %41 = ptrtoint ptr %stats_rx42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stats_rx42, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %stats_rx42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %proc_idx.0.lcssa, i32 %3)
  %cmp50.not126 = icmp eq i32 %proc_idx.0.lcssa, %3
  br i1 %cmp50.not126, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %if.end55.while.body_crit_edge, %for.end.while.body_crit_edge
  %done_idx.0127 = phi i32 [ %rem57, %if.end55.while.body_crit_edge ], [ %3, %for.end.while.body_crit_edge ]
  %call52 = tail call fastcc i32 @ave_rxdesc_prepare(ptr noundef %ndev, i32 noundef %done_idx.0127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end55:                                         ; preds = %while.body
  %add56 = add i32 %done_idx.0127, 1
  %rem57 = urem i32 %add56, %5
  %cmp50.not = icmp eq i32 %proc_idx.0.lcssa, %rem57
  br i1 %cmp50.not, label %if.end55.while.end_crit_edge, label %if.end55.while.body_crit_edge

if.end55.while.body_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end55.while.end_crit_edge, %while.body.while.end_crit_edge, %for.end.while.end_crit_edge
  %done_idx.0.lcssa = phi i32 [ %3, %for.end.while.end_crit_edge ], [ %done_idx.0127, %while.body.while.end_crit_edge ], [ %proc_idx.0.lcssa, %if.end55.while.end_crit_edge ]
  %43 = ptrtoint ptr %done_idx3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %done_idx.0.lcssa, ptr %done_idx3, align 4
  ret i32 %npkts.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !205) #16
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !301
  %5 = tail call i32 @llvm.read_register.i32(metadata !205) #16
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !302
  %14 = tail call i32 @llvm.read_register.i32(metadata !205) #16
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !205) #16
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !205) #16
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !303
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !304
  %33 = tail call i32 @llvm.read_register.i32(metadata !205) #16
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !238

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !305
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #16
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ave_dma_map(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %desc, ptr noundef %ptr, i32 noundef %len, i32 noundef %dir, ptr nocapture noundef writeonly %paddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %ptr) #16
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !238

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %1) #16
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #16
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef -1) #16
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %1, ptr noundef %ptr, i32 noundef %len) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %ptr to i32
  %sub.i = add i32 %9, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %8, i32 %shr.i
  %and.i = and i32 %9, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len, i32 noundef %dir, i32 noundef 0) #16
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %11, i32 noundef %call41.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #18
  %skbs_dma = getelementptr inbounds %struct.ave_desc, ptr %desc, i32 0, i32 1
  %12 = ptrtoint ptr %skbs_dma to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call41.i, ptr %skbs_dma, align 4
  %skbs_dmalen = getelementptr inbounds %struct.ave_desc, ptr %desc, i32 0, i32 2
  %13 = ptrtoint ptr %skbs_dmalen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %len, ptr %skbs_dmalen, align 4
  %14 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call41.i, ptr %paddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ave_pfsel_set_macaddr(ptr nocapture noundef readonly %ndev, i32 noundef %entry1, ptr nocapture noundef readonly %mac_addr, i32 noundef %set_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %entry1)
  %cmp = icmp ugt i32 %entry1, 17
  br i1 %cmp, label %do.end, label %ave_pfsel_stop.exit, !prof !216

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1016, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

ave_pfsel_stop.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i1 = getelementptr i8, ptr %1, i32 4092
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #16, !srcloc !218
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !245
  tail call void @arm_heavy_mb() #16
  %shl.i = shl nuw nsw i32 1, %entry1
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %3, %neg.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #16
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr30.i = getelementptr i8, ptr %6, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %4) #16, !srcloc !221
  %mul = shl nuw nsw i32 %entry1, 6
  %add = add nuw nsw i32 %mul, 2048
  %add60 = add nuw nsw i32 %mul, 2052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !252
  tail call void @arm_heavy_mb() #16
  %7 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mac_addr, align 1
  %conv.i = zext i8 %8 to i32
  %arrayidx1.i = getelementptr i8, ptr %mac_addr, i32 1
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %10 to i32
  %shl.i3 = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i3, %conv.i
  %arrayidx3.i = getelementptr i8, ptr %mac_addr, i32 2
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %12 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %or6.i = or i32 %or.i, %shl5.i
  %arrayidx7.i = getelementptr i8, ptr %mac_addr, i32 3
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %14 to i32
  %shl9.i = shl nuw i32 %conv8.i, 24
  %or10.i = or i32 %or6.i, %shl9.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #16
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %17, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %15) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !253
  tail call void @arm_heavy_mb() #16
  %arrayidx14.i = getelementptr i8, ptr %mac_addr, i32 4
  %18 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %19 to i32
  %arrayidx16.i = getelementptr i8, ptr %mac_addr, i32 5
  %20 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %21 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 8
  %or19.i = or i32 %shl18.i, %conv15.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #16
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr21.i = getelementptr i8, ptr %24, i32 %add60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %22) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !306
  tail call void @arm_heavy_mb() #16
  %shl.neg = shl nsw i32 -1, %set_size
  %and66 = and i32 %shl.neg, -193
  %25 = tail call i32 @llvm.bswap.i32(i32 %and66)
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %mul67 = shl nuw nsw i32 %entry1, 3
  %add68 = add nuw nsw i32 %mul67, 3328
  %add.ptr = getelementptr i8, ptr %27, i32 %add68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !307
  tail call void @arm_heavy_mb() #16
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr75 = getelementptr i8, ptr %29, i32 %add68
  %add.ptr76 = getelementptr i8, ptr %add.ptr75, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 -253) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !308
  tail call void @arm_heavy_mb() #16
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %mul81 = shl nuw nsw i32 %entry1, 2
  %add82 = add nuw nsw i32 %mul81, 3584
  %add.ptr83 = getelementptr i8, ptr %31, i32 %add82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 -65536) #16, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !309
  tail call void @arm_heavy_mb() #16
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %add89 = add nuw nsw i32 %mul81, 3840
  %add.ptr90 = getelementptr i8, ptr %33, i32 %add89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 0) #16, !srcloc !221
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %35, i32 4092
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #16, !srcloc !218
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !251
  tail call void @arm_heavy_mb() #16
  %or.i8 = or i32 %37, %shl.i
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i8) #16
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr30.i9 = getelementptr i8, ptr %40, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i9, i32 %38) #16, !srcloc !221
  br label %cleanup

cleanup:                                          ; preds = %ave_pfsel_stop.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !310
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #16
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #16
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #16
  tail call void @trace_hardirqs_on() #16
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #16
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #16
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #16
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !311
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !216

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #16, !srcloc !312
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !313
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !314
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !315
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ave_ethtool_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %driver2 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %driver2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef %5, i32 noundef 32) #16
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call5 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #16
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !218
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !239
  %and.i = lshr i32 %13, 8
  %shr.i = and i32 %and.i, 255
  %and3.i = and i32 %13, 255
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.60, i32 noundef %shr.i, i32 noundef %and3.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_ethtool_set_wol(ptr noundef %ndev, ptr noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %wolopts.i = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %2 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts.i, align 4
  %and.i = and i32 %3, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %__ave_ethtool_set_wol.exit, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

__ave_ethtool_set_wol.exit:                       ; preds = %lor.lhs.false.i
  %call.i = tail call i32 @phy_ethtool_set_wol(ptr noundef nonnull %1, ptr noundef %wol) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %__ave_ethtool_set_wol.exit.if.end_crit_edge

__ave_ethtool_set_wol.exit.if.end_crit_edge:      ; preds = %__ave_ethtool_set_wol.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %__ave_ethtool_set_wol.exit
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  %4 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1 = icmp ne i32 %5, 0
  %call3 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %__ave_ethtool_set_wol.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i9 = phi i32 [ 0, %if.then ], [ %call.i, %__ave_ethtool_set_wol.exit.if.end_crit_edge ], [ -95, %lor.lhs.false.i.if.end_crit_edge ], [ -95, %entry.if.end_crit_edge ]
  ret i32 %retval.0.i9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ave_ethtool_get_msglevel(ptr nocapture noundef readonly %ndev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2320
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ave_ethtool_set_msglevel(ptr nocapture noundef writeonly %ndev, i32 noundef %val) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2320
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ave_ethtool_get_pauseparam(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %pause) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pause_auto = getelementptr i8, ptr %ndev, i32 3040
  %0 = ptrtoint ptr %pause_auto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pause_auto, align 8
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %autoneg, align 4
  %pause_rx = getelementptr i8, ptr %ndev, i32 3044
  %3 = ptrtoint ptr %pause_rx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pause_rx, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %5 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_pause, align 4
  %pause_tx = getelementptr i8, ptr %ndev, i32 3048
  %6 = ptrtoint ptr %pause_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pause_tx, align 8
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %8 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_ethtool_set_pauseparam(ptr nocapture noundef %ndev, ptr nocapture noundef readonly %pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autoneg, align 4
  %pause_auto = getelementptr i8, ptr %ndev, i32 3040
  %4 = ptrtoint ptr %pause_auto to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pause_auto, align 8
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %5 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_pause, align 4
  %pause_rx = getelementptr i8, ptr %ndev, i32 3044
  %7 = ptrtoint ptr %pause_rx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pause_rx, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %8 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_pause, align 4
  %pause_tx = getelementptr i8, ptr %ndev, i32 3048
  %10 = ptrtoint ptr %pause_tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pause_tx, align 8
  %11 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3 = icmp ne i32 %11, 0
  %12 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5 = icmp ne i32 %13, 0
  tail call void @phy_set_asym_pause(ptr noundef nonnull %1, i1 noundef zeroext %tobool3, i1 noundef zeroext %tobool5) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_asym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ave_pro4_get_pinmode(ptr nocapture noundef writeonly %priv, i32 noundef %phy_mode, i32 noundef %arg) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp.not = icmp eq i32 %arg, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %pinmode_mask = getelementptr inbounds %struct.ave_private, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %pinmode_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %pinmode_mask, align 4
  %switch.tableidx = add i32 %phy_mode, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 11
  br i1 %1, label %switch.hole_check, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1953, %switch.maskindex
  %2 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.lobit.not = icmp eq i16 %2, 0
  br i1 %switch.lobit.not, label %switch.hole_check.return_crit_edge, label %switch.lookup

switch.hole_check.return_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.ave_pro4_get_pinmode, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %pinmode_val = getelementptr inbounds %struct.ave_private, ptr %priv, i32 0, i32 14
  %4 = ptrtoint ptr %pinmode_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.load, ptr %pinmode_val, align 8
  br label %return

return:                                           ; preds = %switch.lookup, %switch.hole_check.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %switch.lookup ], [ -22, %switch.hole_check.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ave_ld11_get_pinmode(ptr nocapture noundef writeonly %priv, i32 noundef %phy_mode, i32 noundef %arg) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp.not = icmp eq i32 %arg, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %pinmode_mask = getelementptr inbounds %struct.ave_private, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %pinmode_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %pinmode_mask, align 4
  %1 = zext i32 %phy_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %phy_mode, label %if.end.return_crit_edge [
    i32 1, label %if.end.return.sink.split_crit_edge
    i32 7, label %sw.bb1
  ]

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %if.end.return.sink.split_crit_edge
  %.sink = phi i32 [ 3, %sw.bb1 ], [ 0, %if.end.return.sink.split_crit_edge ]
  %pinmode_val = getelementptr inbounds %struct.ave_private, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %pinmode_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %pinmode_val, align 8
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ave_ld20_get_pinmode(ptr nocapture noundef writeonly %priv, i32 noundef %phy_mode, i32 noundef %arg) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp.not = icmp eq i32 %arg, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %pinmode_mask = getelementptr inbounds %struct.ave_private, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %pinmode_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %pinmode_mask, align 4
  %switch.tableidx = add i32 %phy_mode, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 6
  br i1 %1, label %switch.hole_check, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 61, %switch.maskindex
  %2 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %switch.lobit.not = icmp eq i8 %2, 0
  br i1 %switch.lobit.not, label %switch.hole_check.return_crit_edge, label %switch.lookup

switch.hole_check.return_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ave_ld20_get_pinmode, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %pinmode_val = getelementptr inbounds %struct.ave_private, ptr %priv, i32 0, i32 14
  %4 = ptrtoint ptr %pinmode_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.load, ptr %pinmode_val, align 8
  br label %return

return:                                           ; preds = %switch.lookup, %switch.hole_check.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %switch.lookup ], [ -22, %switch.hole_check.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ave_pxs3_get_pinmode(ptr nocapture noundef writeonly %priv, i32 noundef %phy_mode, i32 noundef %arg) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %arg)
  %cmp = icmp ugt i32 %arg, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %shl = shl nuw nsw i32 1, %arg
  %pinmode_mask = getelementptr inbounds %struct.ave_private, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %pinmode_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shl, ptr %pinmode_mask, align 4
  %1 = zext i32 %phy_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %phy_mode, label %if.end.return_crit_edge [
    i32 7, label %if.end.return.sink.split_crit_edge
    i32 9, label %if.end.sw.bb2_crit_edge
    i32 10, label %if.end.sw.bb2_crit_edge8
    i32 11, label %if.end.sw.bb2_crit_edge9
    i32 12, label %if.end.sw.bb2_crit_edge10
  ]

if.end.sw.bb2_crit_edge10:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2

if.end.sw.bb2_crit_edge9:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2

if.end.sw.bb2_crit_edge8:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge8, %if.end.sw.bb2_crit_edge9, %if.end.sw.bb2_crit_edge10
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb2, %if.end.return.sink.split_crit_edge
  %shl.sink = phi i32 [ 0, %sw.bb2 ], [ %shl, %if.end.return.sink.split_crit_edge ]
  %pinmode_val = getelementptr inbounds %struct.ave_private, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %pinmode_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl.sink, ptr %pinmode_val, align 8
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %wol = alloca %struct.ethtool_wolinfo, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wol) #16
  %0 = call ptr @memcpy(ptr %wol, ptr @__const.ave_resume.wol, i32 20)
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 @ave_stop(ptr noundef %2)
  tail call void @netif_device_detach(ptr noundef %2) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %supported.i = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %5 = ptrtoint ptr %supported.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %supported.i, align 4
  %wolopts.i = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %6 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wolopts.i, align 4
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 145
  %7 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.ave_ethtool_get_wol.exit_crit_edge, label %if.then.i

if.end.ave_ethtool_get_wol.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ave_ethtool_get_wol.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @phy_ethtool_get_wol(ptr noundef nonnull %8, ptr noundef nonnull %wol) #16
  br label %ave_ethtool_get_wol.exit

ave_ethtool_get_wol.exit:                         ; preds = %if.then.i, %if.end.ave_ethtool_get_wol.exit_crit_edge
  %9 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wolopts.i, align 4
  %wolopts4 = getelementptr i8, ptr %2, i32 2380
  %11 = ptrtoint ptr %wolopts4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %wolopts4, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wol) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ave_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %wol = alloca %struct.ethtool_wolinfo, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wol) #16
  %0 = call ptr @memcpy(ptr %wol, ptr @__const.ave_resume.wol, i32 20)
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @ave_global_reset(ptr noundef %2)
  %supported.i = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %3 = ptrtoint ptr %supported.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %supported.i, align 4
  %wolopts.i = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wolopts.i, align 4
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 145
  %5 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %ave_ethtool_get_wol.exit.thread, label %ave_ethtool_get_wol.exit

ave_ethtool_get_wol.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %wolopts29 = getelementptr i8, ptr %2, i32 2380
  %7 = ptrtoint ptr %wolopts29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wolopts29, align 4
  %9 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %wolopts.i, align 4
  br label %__ave_ethtool_set_wol.exit

ave_ethtool_get_wol.exit:                         ; preds = %entry
  call void @phy_ethtool_get_wol(ptr noundef nonnull %6, ptr noundef nonnull %wol) #16
  %10 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %phydev.i, align 16
  %wolopts = getelementptr i8, ptr %2, i32 2380
  %11 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wolopts, align 4
  %13 = ptrtoint ptr %wolopts.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %wolopts.i, align 4
  %tobool.not.i27 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i27, label %ave_ethtool_get_wol.exit.if.end8_crit_edge, label %lor.lhs.false.i

ave_ethtool_get_wol.exit.if.end8_crit_edge:       ; preds = %ave_ethtool_get_wol.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

lor.lhs.false.i:                                  ; preds = %ave_ethtool_get_wol.exit
  %and.i = and i32 %12, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.__ave_ethtool_set_wol.exit_crit_edge

lor.lhs.false.i.__ave_ethtool_set_wol.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ave_ethtool_set_wol.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = call i32 @phy_ethtool_set_wol(ptr noundef nonnull %.pr, ptr noundef nonnull %wol) #16
  br label %__ave_ethtool_set_wol.exit

__ave_ethtool_set_wol.exit:                       ; preds = %if.end.i, %lor.lhs.false.i.__ave_ethtool_set_wol.exit_crit_edge, %ave_ethtool_get_wol.exit.thread
  %14 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr31 = load ptr, ptr %phydev.i, align 16
  %tobool.not = icmp eq ptr %.pr31, null
  br i1 %tobool.not, label %__ave_ethtool_set_wol.exit.if.end8_crit_edge, label %if.then

__ave_ethtool_set_wol.exit.if.end8_crit_edge:     ; preds = %__ave_ethtool_set_wol.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then:                                          ; preds = %__ave_ethtool_set_wol.exit
  %call5 = call i32 @phy_resume(ptr noundef nonnull %.pr31) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %__ave_ethtool_set_wol.exit.if.end8_crit_edge, %ave_ethtool_get_wol.exit.if.end8_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = call i32 @ave_open(ptr noundef %2)
  call void @netif_device_attach(ptr noundef %2) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then.cleanup_crit_edge ], [ %call11, %if.then10 ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wol) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !95, !97, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203}
!llvm.named.register.sp = !{!205}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !{ptr @__initcall__kmod_sni_ave__349_1987_ave_driver_init6, !1, !"__initcall__kmod_sni_ave__349_1987_ave_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1987, i32 1}
!2 = !{ptr @__exitcall_ave_driver_exit, !1, !"__exitcall_ave_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author350, !4, !"__UNIQUE_ID_author350", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1989, i32 1}
!5 = !{ptr @__UNIQUE_ID_description351, !6, !"__UNIQUE_ID_description351", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1990, i32 1}
!7 = !{ptr @__UNIQUE_ID_file352, !8, !"__UNIQUE_ID_file352", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1991, i32 1}
!9 = !{ptr @__UNIQUE_ID_license353, !8, !"__UNIQUE_ID_license353", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1982, i32 11}
!12 = !{ptr @ave_driver, !13, !"ave_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1978, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1569, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1575, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ave_probe._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @ave_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1589, i32 3}
!25 = !{ptr @ave_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ave_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1606, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ave_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @ave_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @ave_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1636, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ave_probe.__key.14, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1637, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1660, i32 13}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1663, i32 3}
!42 = !{ptr @ave_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ave_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1669, i32 3}
!46 = !{ptr @ave_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ave_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1674, i32 3}
!50 = !{ptr @ave_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ave_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1685, i32 21}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1686, i32 44}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1699, i32 3}
!58 = !{ptr @ave_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ave_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1707, i32 2}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ave_probe._entry.31, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ave_probe._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @ave_netdev_ops, !66, !"ave_netdev_ops", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1540, i32 36}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1178, i32 4}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ave_init._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ave_init._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1186, i32 4}
!74 = !{ptr @ave_init._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ave_init._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1198, i32 37}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1200, i32 3}
!80 = !{ptr @ave_init._entry.41, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ave_init._entry_ptr.43, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1207, i32 3}
!84 = !{ptr @ave_init._entry.44, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ave_init._entry_ptr.46, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1213, i32 3}
!88 = !{ptr @ave_init._entry.47, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ave_init._entry_ptr.49, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 941, i32 20}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!94 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 589, i32 21}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 614, i32 20}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!101 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 646, i32 21}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 659, i32 21}
!107 = !{ptr @v4multi_macadr, !108, !"v4multi_macadr", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1460, i32 17}
!109 = !{ptr @v6multi_macadr, !110, !"v6multi_macadr", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1461, i32 17}
!111 = !{ptr @ave_ethtool_ops, !112, !"ave_ethtool_ops", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 477, i32 33}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 511, i32 20}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 543, i32 20}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 390, i32 21}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../include/linux/phy.h", i32 211, i32 10}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/phy.h", i32 213, i32 10}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/phy.h", i32 215, i32 10}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/phy.h", i32 217, i32 10}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/linux/phy.h", i32 219, i32 10}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/linux/phy.h", i32 221, i32 10}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/phy.h", i32 223, i32 10}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/phy.h", i32 225, i32 10}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/phy.h", i32 227, i32 10}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/linux/phy.h", i32 229, i32 10}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../include/linux/phy.h", i32 231, i32 10}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/linux/phy.h", i32 233, i32 10}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/phy.h", i32 235, i32 10}
!145 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/linux/phy.h", i32 237, i32 10}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/phy.h", i32 239, i32 10}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/phy.h", i32 241, i32 10}
!151 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/phy.h", i32 243, i32 10}
!153 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../include/linux/phy.h", i32 245, i32 10}
!155 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../include/linux/phy.h", i32 247, i32 10}
!157 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../include/linux/phy.h", i32 249, i32 10}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../include/linux/phy.h", i32 251, i32 10}
!161 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/phy.h", i32 253, i32 10}
!163 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/phy.h", i32 255, i32 10}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../include/linux/phy.h", i32 257, i32 10}
!167 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../include/linux/phy.h", i32 259, i32 10}
!169 = !{ptr @.str.86, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../include/linux/phy.h", i32 261, i32 10}
!171 = !{ptr @.str.87, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../include/linux/phy.h", i32 263, i32 10}
!173 = !{ptr @.str.88, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../include/linux/phy.h", i32 265, i32 10}
!175 = !{ptr @.str.89, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../include/linux/phy.h", i32 267, i32 10}
!177 = !{ptr @.str.90, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../include/linux/phy.h", i32 269, i32 10}
!179 = !{ptr @.str.91, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../include/linux/phy.h", i32 271, i32 10}
!181 = !{ptr @of_ave_match, !182, !"of_ave_match", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1949, i32 34}
!183 = !{ptr @.str.92, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1886, i32 3}
!185 = !{ptr @.str.93, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1886, i32 10}
!187 = !{ptr @.str.94, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1886, i32 19}
!189 = !{ptr @.str.95, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1886, i32 31}
!191 = !{ptr @ave_pro4_data, !192, !"ave_pro4_data", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1883, i32 34}
!193 = !{ptr @ave_pxs2_data, !194, !"ave_pxs2_data", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1894, i32 34}
!195 = !{ptr @ave_ld11_data, !196, !"ave_ld11_data", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1905, i32 34}
!197 = !{ptr @ave_ld20_data, !198, !"ave_ld20_data", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1916, i32 34}
!199 = !{ptr @ave_pxs3_data, !200, !"ave_pxs3_data", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1927, i32 34}
!201 = !{ptr @ave_nx1_data, !202, !"ave_nx1_data", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1938, i32 34}
!203 = !{ptr @ave_pm_ops, !204, !"ave_pm_ops", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/socionext/sni_ave.c", i32 1779, i32 8}
!205 = !{!"sp"}
!206 = !{i32 1, !"wchar_size", i32 2}
!207 = !{i32 1, !"min_enum_size", i32 4}
!208 = !{i32 8, !"branch-target-enforcement", i32 0}
!209 = !{i32 8, !"sign-return-address", i32 0}
!210 = !{i32 8, !"sign-return-address-all", i32 0}
!211 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!212 = !{i32 7, !"uwtable", i32 1}
!213 = !{i32 7, !"frame-pointer", i32 2}
!214 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!215 = !{!"auto-init"}
!216 = !{!"branch_weights", i32 1, i32 2000}
!217 = !{i8 0, i8 2}
!218 = !{i64 6122826}
!219 = !{i64 2156875309}
!220 = !{i64 2156771122}
!221 = !{i64 6122408}
!222 = !{i64 2156771848}
!223 = !{i64 2156772302}
!224 = !{i64 2156774475}
!225 = !{i64 2156774965}
!226 = !{i64 2156775465}
!227 = !{i64 2156776372}
!228 = !{i64 2156776823}
!229 = !{i64 2156777495}
!230 = !{i64 2156777949}
!231 = !{i64 2156780122}
!232 = !{i64 2156780612}
!233 = !{i64 2156766495}
!234 = !{i64 2156767414}
!235 = !{i64 2156767661}
!236 = !{i64 2156763747}
!237 = !{i64 2150515191}
!238 = !{!"branch_weights", i32 2000, i32 1}
!239 = !{i64 2156769531}
!240 = !{i64 2156763963}
!241 = !{i64 2156846633}
!242 = !{i64 2156849112}
!243 = !{i64 2156781566}
!244 = !{i64 2156808967}
!245 = !{i64 2156809303}
!246 = !{i64 2156824597}
!247 = !{i64 2156827765}
!248 = !{i64 2156830059}
!249 = !{i64 2156831384}
!250 = !{i64 2156807338}
!251 = !{i64 2156807672}
!252 = !{i64 2156768138}
!253 = !{i64 2156768779}
!254 = !{i64 2156851574}
!255 = !{i64 2156852080}
!256 = !{i64 2156852827}
!257 = !{i64 2156853818}
!258 = !{i64 2156765347}
!259 = !{i64 2156764737}
!260 = !{i64 2156764956}
!261 = !{i64 2154660015, i64 2154660503, i64 2154660052, i64 2154660108, i64 2154660142, i64 2154660166, i64 2154660207, i64 2154660228, i64 2154660256, i64 2154660290}
!262 = !{i64 2156856065}
!263 = !{i64 2156856466}
!264 = !{i64 2150514541}
!265 = !{i64 2156795365}
!266 = !{i64 2156796042}
!267 = !{i64 2156796349}
!268 = !{i64 2156796965}
!269 = !{i64 2156797630}
!270 = !{i64 2156798097}
!271 = !{i64 2156798768}
!272 = !{i64 2156799075}
!273 = !{i64 2156832095}
!274 = !{i64 2156832661}
!275 = !{i64 2156833338}
!276 = !{i64 2156833728}
!277 = !{i64 2156834401}
!278 = !{i64 2156834897}
!279 = !{i64 2156835932}
!280 = !{i64 2156836432}
!281 = !{i64 2156836833}
!282 = !{i64 2156803929}
!283 = !{i64 2156804343}
!284 = !{i64 2156805003}
!285 = !{i64 2156799748}
!286 = !{i64 2156800094}
!287 = !{i64 2156800720}
!288 = !{i64 2156801729}
!289 = !{i64 2156802768}
!290 = !{i64 2156788803}
!291 = !{i64 2156789798}
!292 = !{i64 2156803242}
!293 = !{i64 2156805742}
!294 = !{i64 2156782123}
!295 = !{i64 2156783851}
!296 = !{i64 2156784341}
!297 = !{i64 2156784844}
!298 = !{i64 2156785839}
!299 = !{i64 2156787810}
!300 = !{i64 2156788300}
!301 = !{i64 2150406793}
!302 = !{i64 2150411727}
!303 = !{i64 2150433445}
!304 = !{i64 2150438339}
!305 = !{i64 2150514866}
!306 = !{i64 2156813962}
!307 = !{i64 2156818063}
!308 = !{i64 2156820357}
!309 = !{i64 2156821677}
!310 = !{i64 602959, i64 603020}
!311 = !{i64 605691}
!312 = !{i64 605976}
!313 = !{i64 2154984014}
!314 = !{i64 2154983856}
!315 = !{i64 2154984184}
