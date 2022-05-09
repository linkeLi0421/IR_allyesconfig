; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/silan/sc92031.c_pt.bc'
source_filename = "../drivers/net/ethernet/silan/sc92031.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__param_str_multicast_filter_limit = internal constant [31 x i8] c"sc92031.multicast_filter_limit\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@multicast_filter_limit = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_multicast_filter_limit = internal constant %struct.kernel_param { ptr @__param_str_multicast_filter_limit, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @multicast_filter_limit } }, section "__param", align 4
@__UNIQUE_ID_multicast_filter_limittype341 = internal constant [44 x i8] c"sc92031.parmtype=multicast_filter_limit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_multicast_filter_limit342 = internal constant [83 x i8] c"sc92031.parm=multicast_filter_limit:Maximum number of filtered multicast addresses\00", section ".modinfo", align 1
@__param_str_media = internal constant [14 x i8] c"sc92031.media\00", align 1
@media = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_media = internal constant %struct.kernel_param { ptr @__param_str_media, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @media } }, section "__param", align 4
@__UNIQUE_ID_mediatype343 = internal constant [27 x i8] c"sc92031.parmtype=media:int\00", section ".modinfo", align 1
@__UNIQUE_ID_media344 = internal constant [120 x i8] c"sc92031.parm=media:Media type (0x00 = autodetect, 0x01 = 10M half, 0x02 = 10M full, 0x04 = 100M half, 0x08 = 100M full)\00", section ".modinfo", align 1
@__initcall__kmod_sc92031__345_1573_sc92031_pci_driver_init6 = internal global ptr @sc92031_pci_driver_init, section ".initcall6.init", align 4
@sc92031_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @sc92031_pci_device_id_table, ptr @sc92031_probe, ptr @sc92031_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sc92031_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sc92031_pci_driver_exit = internal global ptr @sc92031_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file346 = internal constant [48 x i8] c"sc92031.file=drivers/net/ethernet/silan/sc92031\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [20 x i8] c"sc92031.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author348 = internal constant [56 x i8] c"sc92031.author=Cesar Eduardo Barros <cesarb@cesarb.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description349 = internal constant [67 x i8] c"sc92031.description=Silan SC92031 PCI Fast Ethernet Adapter driver\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sc92031\00", [24 x i8] zeroinitializer }, align 32
@sc92031_pci_device_id_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 6404, i32 8241, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6404, i32 33081, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4232, i32 8241, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sc92031_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sc92031_suspend, ptr @sc92031_resume, ptr @sc92031_suspend, ptr @sc92031_resume, ptr @sc92031_suspend, ptr @sc92031_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sc92031_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @sc92031_open, ptr @sc92031_stop, ptr @sc92031_start_xmit, ptr null, ptr null, ptr null, ptr @sc92031_set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sc92031_tx_timeout, ptr null, ptr null, ptr null, ptr @sc92031_get_stats, ptr null, ptr null, ptr @sc92031_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@sc92031_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @sc92031_ethtool_get_wol, ptr @sc92031_ethtool_set_wol, ptr null, ptr null, ptr @sc92031_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sc92031_ethtool_get_strings, ptr null, ptr @sc92031_ethtool_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @sc92031_ethtool_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sc92031_ethtool_get_link_ksettings, ptr @sc92031_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@sc92031_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@sc92031_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: SC92031 at 0x%lx, %pM, IRQ %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sc92031_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/silan/sc92031.c\00", [59 x i8] zeroinitializer }, align 32
@sc92031_probe._entry_ptr = internal global ptr @sc92031_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__._sc92031_check_media = private unnamed_addr constant [21 x i8] c"_sc92031_check_media\00", align 1
@_sc92031_check_media._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__._sc92031_check_media, ptr @.str.4, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: link up, %sMbps, %s-duplex\0A\00", [62 x i8] zeroinitializer }, align 32
@_sc92031_check_media._entry_ptr = internal global ptr @_sc92031_check_media._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"100\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@_sc92031_check_media._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__._sc92031_check_media, ptr @.str.4, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: link down\0A\00", [47 x i8] zeroinitializer }, align 32
@_sc92031_check_media._entry_ptr.12 = internal global ptr @_sc92031_check_media._entry.10, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@sc92031_ethtool_stats_strings = internal constant { [2 x [32 x i8]], [32 x i8] } { [2 x [32 x i8]] [[32 x i8] c"tx_timeout\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_loss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@__func__._sc92031_rx_tasklet = private unnamed_addr constant [20 x i8] c"_sc92031_rx_tasklet\00", align 1
@_sc92031_rx_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__._sc92031_rx_tasklet, ptr @.str.4, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: rx packets length > rx buffer\0A\00", [59 x i8] zeroinitializer }, align 32
@_sc92031_rx_tasklet._entry_ptr = internal global ptr @_sc92031_rx_tasklet._entry, section ".printk_index", align 4
@_sc92031_rx_tasklet._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__._sc92031_rx_tasklet, ptr @.str.4, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: rx_len is too small\0A\00", [37 x i8] zeroinitializer }, align 32
@_sc92031_rx_tasklet._entry_ptr.16 = internal global ptr @_sc92031_rx_tasklet._entry.14, section ".printk_index", align 4
@_sc92031_rx_tasklet._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__._sc92031_rx_tasklet, ptr @.str.4, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: Couldn't allocate a skb_buff for a packet of size %u\0A\00", [36 x i8] zeroinitializer }, align 32
@_sc92031_rx_tasklet._entry_ptr.19 = internal global ptr @_sc92031_rx_tasklet._entry.17, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"multicast_filter_limit\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 46, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 51, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"sc92031_pci_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1565, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1573, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"sc92031_pci_device_id_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1555, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"sc92031_pm_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1563, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"sc92031_netdev_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1383, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"sc92031_ethtool_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1370, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1449, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1474, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 532, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 545, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [30 x i8] c"sc92031_ethtool_stats_strings\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1336, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 751, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 782, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [40 x i8] c"../drivers/net/ethernet/silan/sc92031.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 791, i32 5 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__UNIQUE_ID_media344, ptr @__UNIQUE_ID_mediatype343, ptr @__UNIQUE_ID_multicast_filter_limit342, ptr @__UNIQUE_ID_multicast_filter_limittype341, ptr @__exitcall_sc92031_pci_driver_exit, ptr @__initcall__kmod_sc92031__345_1573_sc92031_pci_driver_init6, ptr @__param_media, ptr @__param_multicast_filter_limit, ptr @_sc92031_check_media._entry, ptr @_sc92031_check_media._entry.10, ptr @_sc92031_check_media._entry_ptr, ptr @_sc92031_check_media._entry_ptr.12, ptr @_sc92031_rx_tasklet._entry, ptr @_sc92031_rx_tasklet._entry.14, ptr @_sc92031_rx_tasklet._entry.17, ptr @_sc92031_rx_tasklet._entry_ptr, ptr @_sc92031_rx_tasklet._entry_ptr.16, ptr @_sc92031_rx_tasklet._entry_ptr.19, ptr @sc92031_pci_driver_exit, ptr @sc92031_probe._entry, ptr @sc92031_probe._entry_ptr, ptr @multicast_filter_limit, ptr @media, ptr @sc92031_pci_driver, ptr @.str, ptr @sc92031_pci_device_id_table, ptr @sc92031_pm_ops, ptr @sc92031_netdev_ops, ptr @sc92031_ethtool_ops, ptr @sc92031_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @sc92031_ethtool_stats_strings, ptr @.str.13, ptr @.str.15, ptr @.str.18], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multicast_filter_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc92031_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc92031_pci_device_id_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc92031_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc92031_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc92031_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc92031_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc92031_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sc92031_check_media._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sc92031_check_media._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc92031_ethtool_stats_strings to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sc92031_rx_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sc92031_rx_tasklet._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sc92031_rx_tasklet._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc92031_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sc92031_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc92031_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @sc92031_pci_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc92031_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %5 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !86

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call3 = tail call i32 @dma_set_mask(ptr noundef %dev2, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.out_set_dma_mask_crit_edge, label %if.end12, !prof !86

if.end.out_set_dma_mask_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_set_dma_mask

if.end12:                                         ; preds = %if.end
  %call14 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev2, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.out_set_dma_mask_crit_edge, label %if.end23, !prof !86

if.end12.out_set_dma_mask_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_set_dma_mask

if.end23:                                         ; preds = %if.end12
  %call24 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.out_set_dma_mask_crit_edge, label %if.end33, !prof !86

if.end23.out_set_dma_mask_crit_edge:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_set_dma_mask

if.end33:                                         ; preds = %if.end23
  %call34 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #12
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.out_iomap_crit_edge, label %if.end45, !prof !86

if.end33.out_iomap_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_iomap

if.end45:                                         ; preds = %if.end33
  %call46 = tail call ptr @alloc_etherdev_mqs(i32 noundef 152, i32 noundef 1, i32 noundef 1) #12
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end45.out_alloc_etherdev_crit_edge, label %if.end57, !prof !86

if.end45.out_alloc_etherdev_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_alloc_etherdev

if.end57:                                         ; preds = %if.end45
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call46, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call46, i32 0, i32 133, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev2, ptr %parent, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call46, i32 0, i32 23
  %8 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 51, ptr %features, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call46, i32 0, i32 16
  %9 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sc92031_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call46, i32 0, i32 115
  %10 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 400, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call46, i32 0, i32 44
  %11 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sc92031_ethtool_ops, ptr %ethtool_ops, align 16
  %add.ptr.i = getelementptr i8, ptr %call46, i32 2304
  %ndev = getelementptr i8, ptr %call46, i32 2452
  %12 = ptrtoint ptr %ndev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call46, ptr %ndev, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @sc92031_probe.__key, i16 noundef signext 3) #12
  %port_base62 = getelementptr i8, ptr %call46, i32 2348
  %13 = ptrtoint ptr %port_base62 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call34, ptr %port_base62, align 4
  %pdev63 = getelementptr i8, ptr %call46, i32 2352
  %14 = ptrtoint ptr %pdev63 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pdev, ptr %pdev63, align 8
  %tasklet = getelementptr i8, ptr %call46, i32 2356
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @sc92031_tasklet) #12
  %count.i = getelementptr i8, ptr %call46, i32 2364
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  %add.ptr = getelementptr i8, ptr %call34, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -77) #12, !srcloc !90
  %add.ptr65 = getelementptr i8, ptr %call34, i32 68
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #12, !srcloc !91
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %add.ptr68 = getelementptr i8, ptr %call34, i32 72
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #12, !srcloc !91
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %shr = lshr i32 %17, 24
  %conv = trunc i32 %shr to i8
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %addr, align 1
  %shr70 = lshr i32 %17, 16
  %conv71 = trunc i32 %shr70 to i8
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv71, ptr %0, align 1
  %shr73 = lshr i32 %17, 8
  %conv74 = trunc i32 %shr73 to i8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv74, ptr %1, align 1
  %conv76 = trunc i32 %17 to i8
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv76, ptr %2, align 1
  %shr78 = lshr i32 %19, 8
  %conv79 = trunc i32 %shr78 to i8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv79, ptr %3, align 1
  %conv81 = trunc i32 %19 to i8
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv81, ptr %4, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call46, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  %call83 = call i32 @register_netdev(ptr noundef nonnull %call46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %out_register_netdev, label %do.end90

do.end90:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %26 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resource, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call46, i32 0, i32 86
  %28 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr, align 64
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %call46, i32 noundef %27, ptr noundef %29, i32 noundef %31) #15
  br label %cleanup

out_register_netdev:                              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  call void @free_netdev(ptr noundef nonnull %call46) #12
  br label %out_alloc_etherdev

out_alloc_etherdev:                               ; preds = %out_register_netdev, %if.end45.out_alloc_etherdev_crit_edge
  %err.0 = phi i32 [ %call83, %out_register_netdev ], [ -12, %if.end45.out_alloc_etherdev_crit_edge ]
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call34) #12
  br label %out_iomap

out_iomap:                                        ; preds = %out_alloc_etherdev, %if.end33.out_iomap_crit_edge
  %err.1 = phi i32 [ %err.0, %out_alloc_etherdev ], [ -5, %if.end33.out_iomap_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #12
  br label %out_set_dma_mask

out_set_dma_mask:                                 ; preds = %out_iomap, %if.end23.out_set_dma_mask_crit_edge, %if.end12.out_set_dma_mask_crit_edge, %if.end.out_set_dma_mask_crit_edge
  %err.2 = phi i32 [ %call3, %if.end.out_set_dma_mask_crit_edge ], [ %call14, %if.end12.out_set_dma_mask_crit_edge ], [ %call24, %if.end23.out_set_dma_mask_crit_edge ], [ %err.1, %out_iomap ]
  call void @pci_disable_device(ptr noundef %pdev) #12
  br label %cleanup

cleanup:                                          ; preds = %out_set_dma_mask, %do.end90, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end90 ], [ %call, %entry.cleanup_crit_edge ], [ %err.2, %out_set_dma_mask ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc92031_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %port_base2 = getelementptr i8, ptr %1, i32 2348
  %2 = ptrtoint ptr %port_base2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_base2, align 4
  tail call void @unregister_netdev(ptr noundef %1) #12
  tail call void @free_netdev(ptr noundef %1) #12
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #12
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc92031_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -52
  %ndev = getelementptr i8, ptr %t, i32 96
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %port_base1 = getelementptr i8, ptr %t, i32 -8
  %2 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_base1, align 4
  %intr_status2 = getelementptr i8, ptr %t, i32 52
  %4 = ptrtoint ptr %intr_status2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intr_status2, align 8
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #12
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.out_crit_edge, label %if.end, !prof !86

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %port_base1.i = getelementptr i8, ptr %1, i32 2348
  %8 = ptrtoint ptr %port_base1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_base1.i, align 4
  %tx_tail.i = getelementptr i8, ptr %1, i32 2396
  %10 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_tail.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 32
  %tx_head.i = getelementptr i8, ptr %1, i32 2392
  %12 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_head.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.not80.i = icmp eq i32 %13, %11
  br i1 %cmp.not80.i, label %if.then6.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then6.while.end.i_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then6
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 16
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %tx_window_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 20
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  br label %while.body.i

while.body.i:                                     ; preds = %if.end47.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %14 = phi i32 [ %11, %while.body.lr.ph.i ], [ %38, %if.end47.i.while.body.i_crit_edge ]
  %rem.i = shl i32 %14, 2
  %mul.i = and i32 %rem.i, 12
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !91
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %and.i = and i32 %16, 268484608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %if.end.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %17 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_tail.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %tx_tail.i, align 4
  %and8.i = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then10.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %and11.i = and i32 %16, 8191
  %19 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %20, %and11.i
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %21 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_packets.i, align 4
  %inc13.i = add i32 %22, 1
  store i32 %inc13.i, ptr %tx_packets.i, align 4
  %shr.i = lshr i32 %16, 22
  %and14.i = and i32 %shr.i, 15
  %23 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %collisions.i, align 4
  %add16.i = add i32 %24, %and14.i
  store i32 %add16.i, ptr %collisions.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then10.i, %if.end.i.if.end17.i_crit_edge
  %and18.i = and i32 %16, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end41.i_crit_edge, label %if.then20.i

if.end17.i.if.end41.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then20.i:                                      ; preds = %if.end17.i
  %25 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_errors.i, align 4
  %inc22.i = add i32 %26, 1
  store i32 %inc22.i, ptr %tx_errors.i, align 4
  %and23.i = and i32 %16, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.then20.i.if.end28.i_crit_edge, label %if.then25.i

if.then20.i.if.end28.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_aborted_errors.i, align 8
  %inc27.i = add i32 %28, 1
  store i32 %inc27.i, ptr %tx_aborted_errors.i, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.then20.i.if.end28.i_crit_edge
  %and29.i = and i32 %16, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end34.i_crit_edge, label %if.then31.i

if.end28.i.if.end34.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc33.i = add i32 %30, 1
  store i32 %inc33.i, ptr %tx_carrier_errors.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end34.i_crit_edge
  %and35.i = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end41.i_crit_edge, label %if.then37.i

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_window_errors.i, align 8
  %inc39.i = add i32 %32, 1
  store i32 %inc39.i, ptr %tx_window_errors.i, align 8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then37.i, %if.end34.i.if.end41.i_crit_edge, %if.end17.i.if.end41.i_crit_edge
  %and42.i = and i32 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end41.i.if.end47.i_crit_edge, label %if.then44.i

if.end41.i.if.end47.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc46.i = add i32 %34, 1
  store i32 %inc46.i, ptr %tx_fifo_errors.i, align 8
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then44.i, %if.end41.i.if.end47.i_crit_edge
  %35 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_head.i, align 8
  %37 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_tail.i, align 4
  %cmp.not.i = icmp eq i32 %36, %38
  br i1 %cmp.not.i, label %if.end47.i.while.end.i_crit_edge, label %if.end47.i.while.body.i_crit_edge

if.end47.i.while.body.i_crit_edge:                ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end47.i.while.end.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %if.end47.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %if.then6.while.end.i_crit_edge
  %39 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %11)
  %cmp49.not.i = icmp eq i32 %40, %11
  br i1 %cmp49.not.i, label %while.end.i.if.end7_crit_edge, label %if.then50.i

while.end.i.if.end7_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then50.i:                                      ; preds = %while.end.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %41 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %42, i32 0, i32 13
  %43 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.then50.i.if.end7_crit_edge, label %if.then52.i

if.then50.i.if.end7_crit_edge:                    ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then52.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_tx_wake_queue(ptr noundef %42) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then52.i, %if.then50.i.if.end7_crit_edge, %while.end.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %and8 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  %port_base1.i48 = getelementptr i8, ptr %1, i32 2348
  %45 = ptrtoint ptr %port_base1.i48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port_base1.i48, align 4
  %rx_ring2.i = getelementptr i8, ptr %1, i32 2380
  %47 = ptrtoint ptr %rx_ring2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_ring2.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %46, i32 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !93
  %50 = and i32 %49, -65536
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #12
  %rx_ring_dma_addr.i = getelementptr i8, ptr %1, i32 2384
  %52 = ptrtoint ptr %rx_ring_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_ring_dma_addr.i, align 8
  %and4.i = and i32 %53, -65536
  %or.i = or i32 %and4.i, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %53)
  %cmp.i = icmp ult i32 %or.i, %53
  %add.i50 = add i32 %or.i, 65536
  %spec.select.i = select i1 %cmp.i, i32 %add.i50, i32 %or.i
  %rx_ring_tail.i = getelementptr i8, ptr %1, i32 2388
  %54 = ptrtoint ptr %rx_ring_tail.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_ring_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %55)
  %cmp6.not.i = icmp ult i32 %spec.select.i, %55
  %sub.i = sub i32 %spec.select.i, %55
  %sub11.i = add i32 %sub.i, 65536
  %rx_len.0.i = select i1 %cmp6.not.i, i32 %sub11.i, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_len.0.i)
  %tobool.not.i51 = icmp eq i32 %rx_len.0.i, 0
  br i1 %tobool.not.i51, label %if.then10.if.end11_crit_edge, label %if.end14.i

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end14.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %rx_len.0.i)
  %cmp15.i = icmp ugt i32 %rx_len.0.i, 65536
  br i1 %cmp15.i, label %if.then18.i, label %while.body.lr.ph.i52, !prof !86

if.then18.i:                                      ; preds = %if.end14.i
  %call19.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__._sc92031_rx_tasklet) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then18.i.if.end11_crit_edge, label %do.end.i

if.then18.i.if.end11_crit_edge:                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

do.end.i:                                         ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %1) #15
  br label %if.end11

while.body.lr.ph.i52:                             ; preds = %if.end14.i
  %sub27.i = sub i32 %55, %53
  %stats.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %multicast.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 8
  br label %while.body.i54

while.body.i54:                                   ; preds = %cleanup.i.while.body.i54_crit_edge, %while.body.lr.ph.i52
  %rx_ring_offset.0.in215.i = phi i32 [ %sub27.i, %while.body.lr.ph.i52 ], [ %add121.i, %cleanup.i.while.body.i54_crit_edge ]
  %rx_len.1214.i = phi i32 [ %rx_len.0.i, %while.body.lr.ph.i52 ], [ %sub74.i, %cleanup.i.while.body.i54_crit_edge ]
  %rx_ring_offset.0.i = and i32 %rx_ring_offset.0.in215.i, 65535
  %add.ptr29.i = getelementptr i8, ptr %48, i32 %rx_ring_offset.0.i
  %56 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr29.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  %shr.i53 = lshr i32 %58, 20
  %add31.i = add nuw nsw i32 %shr.i53, 3
  %and32.i = and i32 %add31.i, 8188
  %sub33.i = add nsw i32 %shr.i53, -4
  %add34.i = add nuw nsw i32 %rx_ring_offset.0.i, 4
  %rem35.i = and i32 %add34.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp36.i = icmp eq i32 %57, 0
  %59 = add i32 %58, -1615855616
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1599078400, i32 %59)
  %60 = icmp ult i32 %59, -1599078400
  %61 = or i1 %cmp36.i, %60
  %and40.i = and i32 %58, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  %or.cond204.i = or i1 %tobool41.not.i, %61
  br i1 %or.cond204.i, label %if.then50.i55, label %if.end51.i, !prof !95

if.then50.i55:                                    ; preds = %while.body.i54
  %62 = add nsw i32 %shr.i53, -1541
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1525, i32 %62)
  %63 = icmp ult i32 %62, -1525
  br i1 %63, label %if.then.i64, label %if.then50.i55.if.end.i67_crit_edge

if.then50.i55.if.end.i67_crit_edge:               ; preds = %if.then50.i55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i67

if.then.i64:                                      ; preds = %if.then50.i55
  call void @__sanitizer_cov_trace_pc() #14
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %64 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_errors.i, align 8
  %inc.i63 = add i32 %65, 1
  store i32 %inc.i63, ptr %rx_errors.i, align 8
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %66 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_length_errors.i, align 8
  %inc3.i = add i32 %67, 1
  store i32 %inc3.i, ptr %rx_length_errors.i, align 8
  br label %if.end.i67

if.end.i67:                                       ; preds = %if.then.i64, %if.then50.i55.if.end.i67_crit_edge
  br i1 %tobool41.not.i, label %if.then4.i, label %if.else.i74

if.then4.i:                                       ; preds = %if.end.i67
  %rx_errors6.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %68 = ptrtoint ptr %rx_errors6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_errors6.i, align 8
  %inc7.i = add i32 %69, 1
  store i32 %inc7.i, ptr %rx_errors6.i, align 8
  %and8.i68 = and i32 %58, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i68)
  %tobool9.not.i69 = icmp eq i32 %and8.i68, 0
  br i1 %tobool9.not.i69, label %if.then4.i.if.end14.i72_crit_edge, label %if.then10.i71

if.then4.i.if.end14.i72_crit_edge:                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i72

if.then10.i71:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_length_errors12.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %70 = ptrtoint ptr %rx_length_errors12.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_length_errors12.i, align 8
  %inc13.i70 = add i32 %71, 1
  store i32 %inc13.i70, ptr %rx_length_errors12.i, align 8
  br label %if.end14.i72

if.end14.i72:                                     ; preds = %if.then10.i71, %if.then4.i.if.end14.i72_crit_edge
  %and15.i = and i32 %58, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i72.if.end20.i_crit_edge, label %if.then17.i

if.end14.i72.if.end20.i_crit_edge:                ; preds = %if.end14.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end14.i72
  call void @__sanitizer_cov_trace_pc() #14
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %72 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_frame_errors.i, align 4
  %inc19.i = add i32 %73, 1
  store i32 %inc19.i, ptr %rx_frame_errors.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end14.i72.if.end20.i_crit_edge
  %and21.i = and i32 %58, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end20.i.do.body127.i_crit_edge

if.end20.i.do.body127.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body127.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %74 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_crc_errors.i, align 8
  %inc25.i = add i32 %75, 1
  store i32 %inc25.i, ptr %rx_crc_errors.i, align 8
  br label %do.body127.i

if.else.i74:                                      ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #14
  %rx_loss.i = getelementptr i8, ptr %1, i32 2440
  %76 = ptrtoint ptr %rx_loss.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %rx_loss.i, align 8
  %inc27.i73 = add i64 %77, 1
  store i64 %inc27.i73, ptr %rx_loss.i, align 8
  br label %do.body127.i

if.end51.i:                                       ; preds = %while.body.i54
  %add52.i = add nuw nsw i32 %and32.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_len.1214.i, i32 %add52.i)
  %cmp53.i = icmp ult i32 %rx_len.1214.i, %add52.i
  br i1 %cmp53.i, label %if.then60.i, label %if.end72.i, !prof !86

if.then60.i:                                      ; preds = %if.end51.i
  %call61.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__._sc92031_rx_tasklet) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.then60.i.do.body127.i_crit_edge, label %do.end66.i

if.then60.i.do.body127.i_crit_edge:               ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body127.i

do.end66.i:                                       ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #14
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %1) #15
  br label %do.body127.i

if.end72.i:                                       ; preds = %if.end51.i
  %sub74.i = sub i32 %rx_len.1214.i, %add52.i
  %add.i.i.i = add nsw i32 %shr.i53, -2
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i.i, i32 noundef 2592) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then85.i, label %if.end97.i

if.then85.i:                                      ; preds = %if.end72.i
  %call86.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__._sc92031_rx_tasklet) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %if.then85.i.cleanup.i_crit_edge, label %do.end91.i

if.then85.i.cleanup.i_crit_edge:                  ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

do.end91.i:                                       ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #14
  %call95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %1, i32 noundef %sub33.i) #15
  br label %cleanup.i

if.end97.i:                                       ; preds = %if.end72.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %78 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %79, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %80 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %81, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %add98.i = add nsw i32 %sub33.i, %rem35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add98.i)
  %cmp99.i = icmp ugt i32 %add98.i, 65536
  %add.ptr101.i = getelementptr i8, ptr %48, i32 %rem35.i
  br i1 %cmp99.i, label %if.then100.i, label %if.else107.i

if.then100.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub102.i = sub nuw nsw i32 65536, %rem35.i
  %call.i.i56 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %sub102.i) #12
  %82 = call ptr @memcpy(ptr %call.i.i56, ptr %add.ptr101.i, i32 %sub102.i)
  %sub105.i = sub nsw i32 %sub33.i, %sub102.i
  %call.i205.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %sub105.i) #12
  %83 = call ptr @memcpy(ptr %call.i205.i, ptr %48, i32 %sub105.i)
  br label %if.end110.i

if.else107.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i206.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %sub33.i) #12
  %84 = call ptr @memcpy(ptr %call.i206.i, ptr %add.ptr101.i, i32 %sub33.i)
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.else107.i, %if.then100.i
  %call111.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i.i, ptr noundef %1) #12
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %85 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %call111.i, ptr %protocol.i, align 8
  %call112.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i.i) #12
  %86 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_bytes.i, align 8
  %add113.i = add i32 %87, %sub33.i
  store i32 %add113.i, ptr %rx_bytes.i, align 8
  %88 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %stats.i, align 8
  %inc.i57 = add i32 %89, 1
  store i32 %inc.i57, ptr %stats.i, align 8
  %and115.i = and i32 %58, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i)
  %tobool116.not.i = icmp eq i32 %and115.i, 0
  br i1 %tobool116.not.i, label %if.end110.i.cleanup.i_crit_edge, label %if.then117.i

if.end110.i.cleanup.i_crit_edge:                  ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.then117.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %multicast.i, align 8
  %inc119.i = add i32 %91, 1
  store i32 %inc119.i, ptr %multicast.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then117.i, %if.end110.i.cleanup.i_crit_edge, %do.end91.i, %if.then85.i.cleanup.i_crit_edge
  %add121.i = add nuw nsw i32 %and32.i, %add34.i
  %tobool28.not.i = icmp eq i32 %sub74.i, 0
  br i1 %tobool28.not.i, label %cleanup.i.do.body127.i_crit_edge, label %cleanup.i.while.body.i54_crit_edge

cleanup.i.while.body.i54_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i54

cleanup.i.do.body127.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body127.i

do.body127.i:                                     ; preds = %cleanup.i.do.body127.i_crit_edge, %do.end66.i, %if.then60.i.do.body127.i_crit_edge, %if.else.i74, %if.then23.i, %if.end20.i.do.body127.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !96
  tail call void @arm_heavy_mb() #12
  %92 = ptrtoint ptr %rx_ring_tail.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %spec.select.i, ptr %rx_ring_tail.i, align 4
  %add.ptr132.i = getelementptr i8, ptr %46, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %93 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132.i, i32 %93) #12, !srcloc !90
  br label %if.end11

if.end11:                                         ; preds = %do.body127.i, %do.end.i, %if.then18.i.if.end11_crit_edge, %if.then10.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %and12 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %94 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %95, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  %and16 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end24_crit_edge, label %if.then18

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %rx_errors20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %96 = ptrtoint ptr %rx_errors20 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_errors20, align 8
  %inc21 = add i32 %97, 1
  store i32 %inc21, ptr %rx_errors20, align 8
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %98 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_length_errors, align 8
  %inc23 = add i32 %99, 1
  store i32 %inc23, ptr %rx_length_errors, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end15.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %5)
  %tobool26.not = icmp ult i32 %5, 1073741824
  br i1 %tobool26.not, label %if.end24.out_crit_edge, label %if.then27

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then27:                                        ; preds = %if.end24
  %call.i = tail call fastcc zeroext i1 @_sc92031_check_media(ptr noundef %1) #12
  %_tx.i.i.i58 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %100 = ptrtoint ptr %_tx.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %_tx.i.i.i58, align 128
  br i1 %call.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_tx_wake_queue(ptr noundef %101) #12
  br label %out

if.else.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %state.i.i.i59 = getelementptr inbounds %struct.netdev_queue, ptr %101, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i59) #12
  %tx_carrier_errors.i60 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %102 = ptrtoint ptr %tx_carrier_errors.i60 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_carrier_errors.i60, align 4
  %inc.i61 = add i32 %103, 1
  store i32 %inc.i61, ptr %tx_carrier_errors.i60, align 4
  br label %out

out:                                              ; preds = %if.else.i, %if.then.i, %if.end24.out_crit_edge, %entry.out_crit_edge
  %intr_mask29 = getelementptr i8, ptr %t, i32 56
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %intr_mask29, i32 noundef 4) #12
  %104 = ptrtoint ptr %intr_mask29 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %intr_mask29, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !97
  %add.ptr31 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %106) #12, !srcloc !90
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc92031_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev1 = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %rx_ring_dma_addr = getelementptr i8, ptr %dev, i32 2384
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev2, i32 noundef 65536, ptr noundef %rx_ring_dma_addr, i32 noundef 3264, i32 noundef 0) #12
  %rx_ring = getelementptr i8, ptr %dev, i32 2380
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %rx_ring, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !86

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_bufs_dma_addr = getelementptr i8, ptr %dev, i32 2404
  %call.i70 = tail call ptr @dma_alloc_attrs(ptr noundef %dev2, i32 noundef 6144, ptr noundef %tx_bufs_dma_addr, i32 noundef 3264, i32 noundef 0) #12
  %tx_bufs = getelementptr i8, ptr %dev, i32 2400
  %3 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i70, ptr %tx_bufs, align 8
  %tobool11.not = icmp eq ptr %call.i70, null
  br i1 %tobool11.not, label %if.end.out_alloc_tx_bufs_crit_edge, label %if.end21, !prof !86

if.end.out_alloc_tx_bufs_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_alloc_tx_bufs

if.end21:                                         ; preds = %if.end
  %tx_tail = getelementptr i8, ptr %dev, i32 2396
  %4 = ptrtoint ptr %tx_tail to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tx_tail, align 4
  %tx_head = getelementptr i8, ptr %dev, i32 2392
  %5 = ptrtoint ptr %tx_head to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tx_head, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call.i71 = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @sc92031_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp = icmp slt i32 %call.i71, 0
  br i1 %cmp, label %out_request_irq, label %if.end30, !prof !86

if.end30:                                         ; preds = %if.end21
  %pm_config = getelementptr i8, ptr %dev, i32 2424
  %8 = ptrtoint ptr %pm_config to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pm_config, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #12
  tail call fastcc void @_sc92031_reset(ptr noundef %dev)
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #12
  %port_base1.i = getelementptr i8, ptr %dev, i32 2348
  %9 = ptrtoint ptr %port_base1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_base1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !98
  %count.i.i = getelementptr i8, ptr %dev, i32 2364
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #12, !srcloc !99
  %intr_mask.i = getelementptr i8, ptr %dev, i32 2412
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %intr_mask.i, i32 noundef 4) #12
  %12 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 -536870815, ptr %intr_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  tail call void @arm_heavy_mb() #12
  %add.ptr.i72 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 1627390176) #12, !srcloc !90
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end30
  tail call fastcc void @local_bh_disable() #12
  %18 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #12
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %22 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp13.not.i = icmp eq i32 %23, 0
  br i1 %cmp13.not.i, label %if.else.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.else.netif_tx_disable.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.else
  %_tx.i.i73 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %_tx.i.i73 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i73, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %25, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #12
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %25, i32 %i.014.i, i32 11
  %26 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %21, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i74 = getelementptr %struct.netdev_queue, ptr %25, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i74) #12
  %27 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #12
  %inc.i = add nuw i32 %i.014.i, 1
  %28 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %29
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.else.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #12
  tail call fastcc void @local_bh_enable() #12
  br label %cleanup

out_request_irq:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_bufs, align 8
  %32 = ptrtoint ptr %tx_bufs_dma_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_bufs_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 6144, ptr noundef %31, i32 noundef %33, i32 noundef 0) #12
  br label %out_alloc_tx_bufs

out_alloc_tx_bufs:                                ; preds = %out_request_irq, %if.end.out_alloc_tx_bufs_crit_edge
  %err.0 = phi i32 [ %call.i71, %out_request_irq ], [ -12, %if.end.out_alloc_tx_bufs_crit_edge ]
  %34 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_ring, align 4
  %36 = ptrtoint ptr %rx_ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_ring_dma_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 65536, ptr noundef %35, i32 noundef %37, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %out_alloc_tx_bufs, %netif_tx_disable.exit, %if.then33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %netif_tx_disable.exit ], [ 0, %if.then33 ], [ %err.0, %out_alloc_tx_bufs ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc92031_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev1 = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  tail call fastcc void @local_bh_disable() #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #12
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not.i = icmp eq i32 %7, 0
  br i1 %cmp13.not.i, label %entry.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #12
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 11
  %10 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %5, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %11 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #12
  %inc.i = add nuw i32 %i.014.i, 1
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %entry.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #12
  tail call fastcc void @local_bh_enable() #12
  %port_base1.i = getelementptr i8, ptr %dev, i32 2348
  %14 = ptrtoint ptr %port_base1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_base1.i, align 4
  %intr_mask.i = getelementptr i8, ptr %dev, i32 2412
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %intr_mask.i, i32 noundef 4) #12
  %16 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %intr_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i19 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #12, !srcloc !90
  %add.ptr.i6.i = getelementptr i8, ptr %15, i32 68
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %18 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev1, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %21) #12
  %tasklet.i = getelementptr i8, ptr %dev, i32 2356
  %count.i.i.i = getelementptr i8, ptr %dev, i32 2364
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #12, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !102
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #12
  %23 = ptrtoint ptr %port_base1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port_base1.i, align 4
  %rx_config.i = getelementptr i8, ptr %dev, i32 2416
  %25 = ptrtoint ptr %rx_config.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_config.i, align 8
  %and.i = and i32 %26, -1073741825
  store i32 %and.i, ptr %rx_config.i, align 8
  %tx_config.i = getelementptr i8, ptr %dev, i32 2420
  %27 = ptrtoint ptr %tx_config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_config.i, align 4
  %and2.i = and i32 %28, -1073741825
  store i32 %and2.i, ptr %tx_config.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %29) #12, !srcloc !90
  %30 = ptrtoint ptr %tx_config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_config.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %24, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %32) #12, !srcloc !90
  %tx_head.i = getelementptr i8, ptr %dev, i32 2392
  %33 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_head.i, align 8
  %tx_tail.i = getelementptr i8, ptr %dev, i32 2396
  %35 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %tx_tail.promoted.i = load i32, ptr %tx_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %tx_tail.promoted.i)
  %cmp.not10.i = icmp eq i32 %34, %tx_tail.promoted.i
  br i1 %cmp.not10.i, label %netif_tx_disable.exit._sc92031_tx_clear.exit_crit_edge, label %while.body.lr.ph.i

netif_tx_disable.exit._sc92031_tx_clear.exit_crit_edge: ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %_sc92031_tx_clear.exit

while.body.lr.ph.i:                               ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %36 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %tx_dropped.promoted.i = load i32, ptr %tx_dropped.i, align 4
  %37 = sub i32 %34, %tx_tail.promoted.i
  %38 = add i32 %37, %tx_dropped.promoted.i
  store i32 %38, ptr %tx_dropped.i, align 4
  br label %_sc92031_tx_clear.exit

_sc92031_tx_clear.exit:                           ; preds = %while.body.lr.ph.i, %netif_tx_disable.exit._sc92031_tx_clear.exit_crit_edge
  %39 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %tx_tail.i, align 4
  %40 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %tx_head.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #12
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %42, ptr noundef %dev) #12
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %tx_bufs = getelementptr i8, ptr %dev, i32 2400
  %43 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_bufs, align 8
  %tx_bufs_dma_addr = getelementptr i8, ptr %dev, i32 2404
  %45 = ptrtoint ptr %tx_bufs_dma_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_bufs_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4, i32 noundef 6144, ptr noundef %44, i32 noundef %46, i32 noundef 0) #12
  %rx_ring = getelementptr i8, ptr %dev, i32 2380
  %47 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_ring, align 4
  %rx_ring_dma_addr = getelementptr i8, ptr %dev, i32 2384
  %49 = ptrtoint ptr %rx_ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_ring_dma_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev4, i32 noundef 65536, ptr noundef %48, i32 noundef %50, i32 noundef 0) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc92031_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port_base1 = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base1, align 4
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %3)
  %cmp = icmp ugt i32 %3, 1536
  br i1 %cmp, label %if.then, label %if.end, !prof !86

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %4 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %out

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #12
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %do.body, label %if.then14, !prof !103

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_dropped16 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %9 = ptrtoint ptr %tx_dropped16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_dropped16, align 4
  %inc17 = add i32 %10, 1
  store i32 %inc17, ptr %tx_dropped16, align 4
  br label %out_unlock

do.body:                                          ; preds = %if.end
  %tx_head = getelementptr i8, ptr %dev, i32 2392
  %11 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_head, align 8
  %tx_tail = getelementptr i8, ptr %dev, i32 2396
  %13 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_tail, align 4
  %sub = sub i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp19 = icmp ugt i32 %sub, 3
  br i1 %cmp19, label %do.body27, label %do.end33, !prof !86

do.body27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/silan/sc92031.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 953, 0\0A.popsection", ""() #12, !srcloc !104
  unreachable

do.end33:                                         ; preds = %do.body
  %inc35 = add i32 %12, 1
  %15 = ptrtoint ptr %tx_head to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc35, ptr %tx_head, align 8
  %rem = and i32 %12, 3
  %tx_bufs = getelementptr i8, ptr %dev, i32 2400
  %16 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_bufs, align 8
  %mul = mul nuw nsw i32 %rem, 1536
  %add.ptr = getelementptr i8, ptr %17, i32 %mul
  tail call void @skb_copy_and_csum_dev(ptr noundef %skb, ptr noundef %add.ptr) #12
  %18 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %19)
  %cmp37 = icmp ult i32 %19, 60
  br i1 %cmp37, label %if.then38, label %do.end33.do.body45_crit_edge

do.end33.do.body45_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body45

if.then38:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_bufs, align 8
  %add.ptr41 = getelementptr i8, ptr %21, i32 %mul
  %add.ptr42 = getelementptr i8, ptr %add.ptr41, i32 %19
  %sub43 = sub nuw nsw i32 60, %19
  %22 = call ptr @memset(ptr %add.ptr42, i32 0, i32 %sub43)
  br label %do.body45

do.body45:                                        ; preds = %if.then38, %do.end33.do.body45_crit_edge
  %len.0 = phi i32 [ 60, %if.then38 ], [ %19, %do.end33.do.body45_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !105
  tail call void @arm_heavy_mb() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %len.0)
  %cmp48 = icmp ult i32 %len.0, 100
  br i1 %cmp48, label %do.body45.if.end55_crit_edge, label %if.else

do.body45.if.end55_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.else:                                          ; preds = %do.body45
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %len.0)
  %cmp50 = icmp ult i32 %len.0, 300
  br i1 %cmp50, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %len.0, 196608
  br label %if.end55

if.else52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or53 = or i32 %len.0, 327680
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %if.then51, %do.body45.if.end55_crit_edge
  %tx_status.0 = phi i32 [ %or, %if.then51 ], [ %or53, %if.else52 ], [ %len.0, %do.body45.if.end55_crit_edge ]
  %tx_bufs_dma_addr = getelementptr i8, ptr %dev, i32 2404
  %23 = ptrtoint ptr %tx_bufs_dma_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_bufs_dma_addr, align 4
  %add = add i32 %24, %mul
  %add.ptr57 = getelementptr i8, ptr %1, i32 48
  %mul58 = shl nuw nsw i32 %rem, 2
  %add.ptr59 = getelementptr i8, ptr %add.ptr57, i32 %mul58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %25 = tail call i32 @llvm.bswap.i32(i32 %add) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %25) #12, !srcloc !90
  %add.ptr60 = getelementptr i8, ptr %1, i32 32
  %add.ptr62 = getelementptr i8, ptr %add.ptr60, i32 %mul58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %26 = tail call i32 @llvm.bswap.i32(i32 %tx_status.0) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %26) #12, !srcloc !90
  %27 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_head, align 8
  %29 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_tail, align 4
  %sub65 = sub i32 %28, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub65)
  %cmp66 = icmp ugt i32 %sub65, 3
  br i1 %cmp66, label %if.then67, label %if.end55.out_unlock_crit_edge

if.end55.out_unlock_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then67:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.then67, %if.end55.out_unlock_crit_edge, %if.then14
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #12
  br label %out

out:                                              ; preds = %out_unlock, %if.then
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc92031_set_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #12
  tail call fastcc void @_sc92031_set_mar(ptr noundef %dev)
  %port_base1.i = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %port_base1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base1.i, align 4
  %mc_flags.i = getelementptr i8, ptr %dev, i32 2428
  %2 = ptrtoint ptr %mc_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mc_flags.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 1056964608
  %and3.i = and i32 %5, 4608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or6.i = or i32 %spec.select.i, 33554432
  %rx_config_bits.1.i = select i1 %tobool4.not.i, i32 %spec.select.i, i32 %or6.i
  %and9.i = shl i32 %5, 23
  %6 = and i32 %and9.i, 16777216
  %rx_config.i = getelementptr i8, ptr %dev, i32 2416
  %7 = ptrtoint ptr %rx_config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_config.i, align 8
  %and14.i = and i32 %8, -1056964609
  %9 = or i32 %and14.i, %6
  %or16.i = or i32 %9, %rx_config_bits.1.i
  store i32 %or16.i, ptr %rx_config.i, align 8
  %and18.i = and i32 %5, 4866
  %10 = ptrtoint ptr %mc_flags.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and18.i, ptr %mc_flags.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %11 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and18.i, i32 %3)
  %cmp.not.i = icmp eq i32 %and18.i, %3
  %or.cond.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %entry._sc92031_set_rx_config.exit_crit_edge, label %if.then22.i

entry._sc92031_set_rx_config.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %_sc92031_set_rx_config.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i5 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %14) #12, !srcloc !90
  br label %_sc92031_set_rx_config.exit

_sc92031_set_rx_config.exit:                      ; preds = %if.then22.i, %entry._sc92031_set_rx_config.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc92031_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port_base1.i = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %port_base1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base1.i, align 4
  %intr_mask.i = getelementptr i8, ptr %dev, i32 2412
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %intr_mask.i, i32 noundef 4) #12
  %2 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %intr_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i10 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 0) #12, !srcloc !90
  %add.ptr.i6.i = getelementptr i8, ptr %1, i32 68
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %pdev.i = getelementptr i8, ptr %dev, i32 2352
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %7) #12
  %tasklet.i = getelementptr i8, ptr %dev, i32 2356
  %count.i.i.i = getelementptr i8, ptr %dev, i32 2364
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #12, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !102
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #12
  %tx_timeouts = getelementptr i8, ptr %dev, i32 2432
  %9 = ptrtoint ptr %tx_timeouts to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tx_timeouts, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %tx_timeouts, align 8
  tail call fastcc void @_sc92031_reset(ptr noundef %dev)
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #12
  %11 = ptrtoint ptr %port_base1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_base1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !98
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #12, !srcloc !99
  %call.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %intr_mask.i, i32 noundef 4) #12
  %14 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 -536870815, ptr %intr_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  tail call void @arm_heavy_mb() #12
  %add.ptr.i14 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 1627390176) #12, !srcloc !90
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %19) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sc92031_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port_base1 = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #12
  %add.ptr = getelementptr i8, ptr %1, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !91
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %shr = lshr i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shr)
  %cmp = icmp eq i32 %shr, 65535
  %rx_value = getelementptr i8, ptr %dev, i32 2448
  %6 = ptrtoint ptr %rx_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_value, align 8
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %7, 65535
  %8 = ptrtoint ptr %rx_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %rx_value, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add7 = add i32 %7, %shr
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %add7.sink = phi i32 [ %add, %if.then4 ], [ %add7, %if.else ]
  %9 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add7.sink, ptr %9, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #12
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  %stats12 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc92031_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void @disable_irq(i32 noundef %3) #12
  %call2 = tail call i32 @sc92031_interrupt(i32 noundef %3, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tasklet = getelementptr i8, ptr %dev, i32 2356
  tail call void @sc92031_tasklet(ptr noundef %tasklet)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @enable_irq(i32 noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc92031_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port_base1 = getelementptr i8, ptr %dev_id, i32 2348
  %0 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !90
  %add.ptr.i25 = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %add.ptr2 = getelementptr i8, ptr %1, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !86

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i32 %3, 1627390176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %out_none, label %if.end7

if.end7:                                          ; preds = %if.end
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %intr_status8 = getelementptr i8, ptr %dev_id, i32 2408
  %6 = ptrtoint ptr %intr_status8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %intr_status8, align 8
  %state.i = getelementptr i8, ptr %dev_id, i32 2360
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %tasklet = getelementptr i8, ptr %dev_id, i32 2356
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #12
  br label %cleanup

out_none:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %intr_mask9 = getelementptr i8, ptr %dev_id, i32 2412
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %intr_mask9, i32 noundef 4) #12
  %7 = ptrtoint ptr %intr_mask9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %intr_mask9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #12, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %out_none, %if.then.i, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out_none ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_sc92031_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port_base1 = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 128) #12, !srcloc !90
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.044 = phi i32 [ 200, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.044, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #12
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #12, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #12
  %add.ptr10 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #12, !srcloc !90
  %add.ptr11 = getelementptr i8, ptr %1, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #12, !srcloc !90
  %add.ptr13 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #12, !srcloc !90
  %rx_ring_dma_addr = getelementptr i8, ptr %dev, i32 2384
  %13 = ptrtoint ptr %rx_ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_ring_dma_addr, align 8
  %add.ptr14 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %15) #12, !srcloc !90
  %16 = ptrtoint ptr %rx_ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_ring_dma_addr, align 8
  %rx_ring_tail = getelementptr i8, ptr %dev, i32 2388
  %18 = ptrtoint ptr %rx_ring_tail to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rx_ring_tail, align 4
  %tx_head.i = getelementptr i8, ptr %dev, i32 2392
  %19 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_head.i, align 8
  %tx_tail.i = getelementptr i8, ptr %dev, i32 2396
  %21 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %tx_tail.promoted.i = load i32, ptr %tx_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %tx_tail.promoted.i)
  %cmp.not10.i = icmp eq i32 %20, %tx_tail.promoted.i
  br i1 %cmp.not10.i, label %while.end._sc92031_tx_clear.exit_crit_edge, label %while.body.lr.ph.i

while.end._sc92031_tx_clear.exit_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %_sc92031_tx_clear.exit

while.body.lr.ph.i:                               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %22 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %tx_dropped.promoted.i = load i32, ptr %tx_dropped.i, align 4
  %23 = sub i32 %20, %tx_tail.promoted.i
  %24 = add i32 %23, %tx_dropped.promoted.i
  store i32 %24, ptr %tx_dropped.i, align 4
  br label %_sc92031_tx_clear.exit

_sc92031_tx_clear.exit:                           ; preds = %while.body.lr.ph.i, %while.end._sc92031_tx_clear.exit_crit_edge
  %25 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tx_tail.i, align 4
  %26 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %tx_head.i, align 8
  %intr_status = getelementptr i8, ptr %dev, i32 2408
  %27 = ptrtoint ptr %intr_status to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %intr_status, align 8
  %intr_mask = getelementptr i8, ptr %dev, i32 2412
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %intr_mask, i32 noundef 4) #12
  %28 = ptrtoint ptr %intr_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %intr_mask, align 4
  %rx_config = getelementptr i8, ptr %dev, i32 2416
  %29 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %rx_config, align 8
  %tx_config = getelementptr i8, ptr %dev, i32 2420
  %30 = ptrtoint ptr %tx_config to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %tx_config, align 4
  %mc_flags = getelementptr i8, ptr %dev, i32 2428
  %31 = ptrtoint ptr %mc_flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %mc_flags, align 4
  %add.ptr16 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 117440512) #12, !srcloc !90
  %32 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port_base1, align 4
  %add.ptr.i43 = getelementptr i8, ptr %33, i32 96
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #12, !srcloc !91
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %and.i = and i32 %35, 524287999
  %36 = load i32, ptr @media, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %sw.bb.i [
    i32 8, label %sw.bb10.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb6.i
    i32 4, label %sw.bb8.i
  ]

sw.bb.i:                                          ; preds = %_sc92031_tx_clear.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or3.i = or i32 %35, -524288000
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %_sc92031_tx_clear.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or5.i = or i32 %and.i, -1606418432
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %_sc92031_tx_clear.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or7.i = or i32 %and.i, -1598029824
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %_sc92031_tx_clear.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or9.i = or i32 %and.i, -1069547520
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %_sc92031_tx_clear.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or11.i = or i32 %and.i, -1061158912
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb10.i, %sw.bb8.i, %sw.bb6.i, %sw.bb4.i, %sw.bb.i
  %phy_ctrl.0.i = phi i32 [ %or3.i, %sw.bb.i ], [ %or9.i, %sw.bb8.i ], [ %or7.i, %sw.bb6.i ], [ %or5.i, %sw.bb4.i ], [ %or11.i, %sw.bb10.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %38 = tail call i32 @llvm.bswap.i32(i32 %phy_ctrl.0.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %38) #12, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #12
  %and13.i = and i32 %phy_ctrl.0.i, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %49 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %49) #12, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #12
  %add.ptr.i30.i = getelementptr i8, ptr %33, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 32) #12, !srcloc !90
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 112
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #12
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %.mask.i.i = and i32 %52, 128
  %tobool.not.i.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i.i, label %_sc92031_mii_wait.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

_sc92031_mii_wait.exit.i.i:                       ; preds = %do.body.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %33, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 819200) #12, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 16416) #12, !srcloc !90
  br label %do.body.i10.i.i

do.body.i10.i.i:                                  ; preds = %do.body.i10.i.i.do.body.i10.i.i_crit_edge, %_sc92031_mii_wait.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 2147480) #12
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %.mask.i = and i32 %54, 128
  %tobool.not.i9.i.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i9.i.i, label %_sc92031_phy_reset.exit, label %do.body.i10.i.i.do.body.i10.i.i_crit_edge

do.body.i10.i.i.do.body.i10.i.i_crit_edge:        ; preds = %do.body.i10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i10.i.i

_sc92031_phy_reset.exit:                          ; preds = %do.body.i10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @_sc92031_mii_scan(ptr noundef %33) #12
  tail call void @netif_carrier_off(ptr noundef %dev) #12
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %55 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %56, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #12
  %call17 = tail call fastcc zeroext i1 @_sc92031_check_media(ptr noundef %dev)
  %rx_value = getelementptr i8, ptr %dev, i32 2448
  %57 = ptrtoint ptr %rx_value to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %rx_value, align 8
  %pm_config = getelementptr i8, ptr %dev, i32 2424
  %58 = ptrtoint ptr %pm_config to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pm_config, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %60) #12, !srcloc !90
  %add.ptr19 = getelementptr i8, ptr %1, i32 12
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_sc92031_check_media(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port_base1 = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base1, align 4
  %add.ptr.i108 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 32) #12, !srcloc !90
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 112
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %.mask.i = and i32 %3, 128
  %tobool.not.i.i109 = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i.i109, label %_sc92031_mii_wait.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

_sc92031_mii_wait.exit.i:                         ; preds = %do.body.i.i
  %add.ptr1.i = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 1073741824) #12, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 8224) #12, !srcloc !90
  br label %do.body.i10.i

do.body.i10.i:                                    ; preds = %do.body.i10.i.do.body.i10.i_crit_edge, %_sc92031_mii_wait.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !91
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %tobool.not.i9.i = icmp sgt i32 %6, -1
  br i1 %tobool.not.i9.i, label %_sc92031_mii_cmd.exit, label %do.body.i10.i.do.body.i10.i_crit_edge

do.body.i10.i.do.body.i10.i_crit_edge:            ; preds = %do.body.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i10.i

_sc92031_mii_cmd.exit:                            ; preds = %do.body.i10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !107
  %7 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else35, label %if.then

if.then:                                          ; preds = %_sc92031_mii_cmd.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 32) #12, !srcloc !90
  br label %do.body.i.i114

do.body.i.i114:                                   ; preds = %do.body.i.i114.do.body.i.i114_crit_edge, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %.mask.i112 = and i32 %9, 128
  %tobool.not.i.i113 = icmp eq i32 %.mask.i112, 0
  br i1 %tobool.not.i.i113, label %_sc92031_mii_wait.exit.i116, label %do.body.i.i114.do.body.i.i114_crit_edge

do.body.i.i114.do.body.i.i114_crit_edge:          ; preds = %do.body.i.i114
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i114

_sc92031_mii_wait.exit.i116:                      ; preds = %do.body.i.i114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 393216) #12, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 8224) #12, !srcloc !90
  br label %do.body.i10.i118

do.body.i10.i118:                                 ; preds = %do.body.i10.i118.do.body.i10.i118_crit_edge, %_sc92031_mii_wait.exit.i116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !91
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %tobool.not.i9.i117 = icmp sgt i32 %12, -1
  br i1 %tobool.not.i9.i117, label %_sc92031_mii_cmd.exit119, label %do.body.i10.i118.do.body.i10.i118_crit_edge

do.body.i10.i118.do.body.i10.i118_crit_edge:      ; preds = %do.body.i10.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i10.i118

_sc92031_mii_cmd.exit119:                         ; preds = %do.body.i10.i118
  tail call fastcc void @_sc92031_mii_scan(ptr noundef %1)
  %13 = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  %14 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  %rx_config = getelementptr i8, ptr %dev, i32 2416
  %tx_config = getelementptr i8, ptr %dev, i32 2420
  %spec.select = select i1 %tobool6.not, i32 1216872448, i32 1216348160
  %15 = ptrtoint ptr %tx_config to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select, ptr %tx_config, align 4
  %16 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port_base1, align 4
  %mc_flags.i = getelementptr i8, ptr %dev, i32 2428
  %18 = ptrtoint ptr %mc_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mc_flags.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 1056964608
  %and3.i = and i32 %21, 4608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or6.i = or i32 %spec.select.i, 33554432
  %rx_config_bits.1.i = select i1 %tobool4.not.i, i32 %spec.select.i, i32 %or6.i
  %and9.i = shl i32 %21, 23
  %22 = and i32 %and9.i, 16777216
  %23 = or i32 %22, %rx_config_bits.1.i
  %or16.i = or i32 %23, 263936
  %24 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or16.i, ptr %rx_config, align 8
  %and18.i = and i32 %21, 4866
  %25 = ptrtoint ptr %mc_flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and18.i, ptr %mc_flags.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp ne i32 %28, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and18.i, i32 %19)
  %cmp.not.i = icmp eq i32 %and18.i, %19
  %or.cond.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %_sc92031_mii_cmd.exit119._sc92031_set_rx_config.exit_crit_edge, label %if.then22.i

_sc92031_mii_cmd.exit119._sc92031_set_rx_config.exit_crit_edge: ; preds = %_sc92031_mii_cmd.exit119
  call void @__sanitizer_cov_trace_pc() #14
  br label %_sc92031_set_rx_config.exit

if.then22.i:                                      ; preds = %_sc92031_mii_cmd.exit119
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i76 = getelementptr i8, ptr %17, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %29) #12, !srcloc !90
  br label %_sc92031_set_rx_config.exit

_sc92031_set_rx_config.exit:                      ; preds = %if.then22.i, %_sc92031_mii_cmd.exit119._sc92031_set_rx_config.exit_crit_edge
  %30 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_config, align 8
  br i1 %tobool9.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %_sc92031_set_rx_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or17 = or i32 %31, -2147483648
  %32 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or17, ptr %rx_config, align 8
  %33 = ptrtoint ptr %tx_config to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_config, align 4
  %or19 = or i32 %34, -2147483648
  br label %if.end24

if.else:                                          ; preds = %_sc92031_set_rx_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  %and21 = and i32 %31, 2147483647
  %35 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and21, ptr %rx_config, align 8
  %36 = ptrtoint ptr %tx_config to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_config, align 4
  %and23 = and i32 %37, 2147483647
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then15
  %storemerge72 = phi i32 [ %and23, %if.else ], [ %or19, %if.then15 ]
  %flow_ctrl_config.0 = phi i32 [ 0, %if.else ], [ 192, %if.then15 ]
  %38 = ptrtoint ptr %tx_config to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %storemerge72, ptr %tx_config, align 4
  tail call fastcc void @_sc92031_set_mar(ptr noundef %dev)
  %39 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port_base1, align 4
  %41 = ptrtoint ptr %mc_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mc_flags.i, align 4
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 8
  %and.i80 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool.not.i81 = icmp eq i32 %and.i80, 0
  %spec.select.i82 = select i1 %tobool.not.i81, i32 0, i32 1056964608
  %and3.i83 = and i32 %44, 4608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i83)
  %tobool4.not.i84 = icmp eq i32 %and3.i83, 0
  %or6.i85 = or i32 %spec.select.i82, 33554432
  %rx_config_bits.1.i86 = select i1 %tobool4.not.i84, i32 %spec.select.i82, i32 %or6.i85
  %and9.i87 = shl i32 %44, 23
  %45 = and i32 %and9.i87, 16777216
  %46 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_config, align 8
  %and14.i89 = and i32 %47, -1056964609
  %48 = or i32 %and14.i89, %45
  %or16.i90 = or i32 %48, %rx_config_bits.1.i86
  store i32 %or16.i90, ptr %rx_config, align 8
  %and18.i91 = and i32 %44, 4866
  %49 = ptrtoint ptr %mc_flags.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and18.i91, ptr %mc_flags.i, align 4
  %50 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %state.i.i, align 4
  %52 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i93 = icmp ne i32 %52, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and18.i91, i32 %42)
  %cmp.not.i94 = icmp eq i32 %and18.i91, %42
  %or.cond.i95 = select i1 %tobool.not.i.i93, i1 true, i1 %cmp.not.i94
  br i1 %or.cond.i95, label %if.end24._sc92031_set_rx_config.exit98_crit_edge, label %if.then22.i97

if.end24._sc92031_set_rx_config.exit98_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %_sc92031_set_rx_config.exit98

if.then22.i97:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i96 = getelementptr i8, ptr %40, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %53 = tail call i32 @llvm.bswap.i32(i32 %or16.i90) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %53) #12, !srcloc !90
  br label %_sc92031_set_rx_config.exit98

_sc92031_set_rx_config.exit98:                    ; preds = %if.then22.i97, %if.end24._sc92031_set_rx_config.exit98_crit_edge
  %54 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port_base1, align 4
  %56 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_config, align 8
  %or.i = or i32 %57, 1073741824
  store i32 %or.i, ptr %rx_config, align 8
  %58 = ptrtoint ptr %tx_config to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_config, align 4
  %or2.i = or i32 %59, 1073741824
  store i32 %or2.i, ptr %tx_config, align 4
  %add.ptr.i101 = getelementptr i8, ptr %55, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %60) #12, !srcloc !90
  %61 = ptrtoint ptr %tx_config to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_config, align 4
  %add.ptr5.i = getelementptr i8, ptr %55, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %63) #12, !srcloc !90
  %add.ptr = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %flow_ctrl_config.0) #12, !srcloc !90
  tail call void @netif_carrier_on(ptr noundef %dev) #12
  %call25 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__._sc92031_check_media) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %_sc92031_set_rx_config.exit98.cleanup_crit_edge, label %do.end

_sc92031_set_rx_config.exit98.cleanup_crit_edge:  ; preds = %_sc92031_set_rx_config.exit98
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %_sc92031_set_rx_config.exit98
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %tobool6.not, ptr @.str.7, ptr @.str.6
  %cond32 = select i1 %tobool9.not, ptr @.str.9, ptr @.str.8
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull %cond, ptr noundef nonnull %cond32) #15
  br label %cleanup

if.else35:                                        ; preds = %_sc92031_mii_cmd.exit
  tail call fastcc void @_sc92031_mii_scan(ptr noundef %1)
  tail call void @netif_carrier_off(ptr noundef %dev) #12
  %64 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port_base1, align 4
  %rx_config.i103 = getelementptr i8, ptr %dev, i32 2416
  %66 = ptrtoint ptr %rx_config.i103 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_config.i103, align 8
  %and.i104 = and i32 %67, -1073741825
  store i32 %and.i104, ptr %rx_config.i103, align 8
  %tx_config.i105 = getelementptr i8, ptr %dev, i32 2420
  %68 = ptrtoint ptr %tx_config.i105 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_config.i105, align 4
  %and2.i = and i32 %69, -1073741825
  store i32 %and2.i, ptr %tx_config.i105, align 4
  %add.ptr.i106 = getelementptr i8, ptr %65, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %70 = tail call i32 @llvm.bswap.i32(i32 %and.i104) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %70) #12, !srcloc !90
  %71 = ptrtoint ptr %tx_config.i105 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_config.i105, align 4
  %add.ptr5.i107 = getelementptr i8, ptr %65, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i107, i32 %73) #12, !srcloc !90
  %call36 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__._sc92031_check_media) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.else35.cleanup_crit_edge, label %do.end41

if.else35.cleanup_crit_edge:                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end41:                                         ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %dev) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.else35.cleanup_crit_edge, %do.end, %_sc92031_set_rx_config.exit98.cleanup_crit_edge
  %74 = xor i1 %tobool.not, true
  ret i1 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_sc92031_mii_scan(ptr noundef %port_base) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %port_base, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 32) #12, !srcloc !90
  %add.ptr.i.i = getelementptr i8, ptr %port_base, i32 112
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #12
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %.mask.i = and i32 %1, 128
  %tobool.not.i.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i.i, label %_sc92031_mii_wait.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

_sc92031_mii_wait.exit.i:                         ; preds = %do.body.i.i
  %add.ptr1.i = getelementptr i8, ptr %port_base, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 1073741824) #12, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 4128) #12, !srcloc !90
  br label %do.body.i10.i

do.body.i10.i:                                    ; preds = %do.body.i10.i.do.body.i10.i_crit_edge, %_sc92031_mii_wait.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %.mask = and i32 %3, 128
  %tobool.not.i9.i = icmp eq i32 %.mask, 0
  br i1 %tobool.not.i9.i, label %_sc92031_mii_cmd.exit, label %do.body.i10.i.do.body.i10.i_crit_edge

do.body.i10.i.do.body.i10.i_crit_edge:            ; preds = %do.body.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i10.i

_sc92031_mii_cmd.exit:                            ; preds = %do.body.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_sc92031_mii_cmd(ptr noundef %port_base, i32 noundef %cmd0, i32 noundef %cmd1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %port_base, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 32) #12, !srcloc !90
  %add.ptr.i = getelementptr i8, ptr %port_base, i32 112
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #12
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %.mask = and i32 %1, 128
  %tobool.not.i = icmp eq i32 %.mask, 0
  br i1 %tobool.not.i, label %_sc92031_mii_wait.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

_sc92031_mii_wait.exit:                           ; preds = %do.body.i
  %add.ptr1 = getelementptr i8, ptr %port_base, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %cmd1) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #12, !srcloc !90
  %or = or i32 %cmd0, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #12, !srcloc !90
  br label %do.body.i10

do.body.i10:                                      ; preds = %do.body.i10.do.body.i10_crit_edge, %_sc92031_mii_wait.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !91
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %tobool.not.i9 = icmp sgt i32 %6, -1
  br i1 %tobool.not.i9, label %_sc92031_mii_wait.exit11, label %do.body.i10.do.body.i10_crit_edge

do.body.i10.do.body.i10_crit_edge:                ; preds = %do.body.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i10

_sc92031_mii_wait.exit11:                         ; preds = %do.body.i10
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_sc92031_set_mar(ptr noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port_base1 = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base1, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end83_crit_edge

entry.if.end83_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

lor.lhs.false:                                    ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  %6 = load i32, ptr @multicast_filter_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp = icmp sle i32 %5, %6
  %and4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %cmp, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.else, label %lor.lhs.false.if.end83_crit_edge

lor.lhs.false.if.end83_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.else:                                          ; preds = %lor.lhs.false
  %and7 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else.if.end83_crit_edge, label %for.cond.preheader

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

for.cond.preheader:                               ; preds = %if.else
  %7 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.0124 = load ptr, ptr %mc, align 4
  %cmp14.not125 = icmp eq ptr %ha.0124, %mc
  br i1 %cmp14.not125, label %for.cond.preheader.if.end83_crit_edge, label %for.cond.preheader.cond.end_crit_edge

for.cond.preheader.cond.end_crit_edge:            ; preds = %for.cond.preheader
  br label %cond.end

for.cond.preheader.if.end83_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

cond.end:                                         ; preds = %if.end76.cond.end_crit_edge, %for.cond.preheader.cond.end_crit_edge
  %ha.0128 = phi ptr [ %ha.0, %if.end76.cond.end_crit_edge ], [ %ha.0124, %for.cond.preheader.cond.end_crit_edge ]
  %mar0.0127 = phi i32 [ %mar0.1, %if.end76.cond.end_crit_edge ], [ 0, %for.cond.preheader.cond.end_crit_edge ]
  %mar1.0126 = phi i32 [ %mar1.1, %if.end76.cond.end_crit_edge ], [ 0, %for.cond.preheader.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0128, i32 0, i32 2
  %call15 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #16
  %8 = lshr i32 %call15, 8
  %conv4.i.i = and i32 %8, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %9 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %10 to i32
  %11 = shl nuw nsw i32 %conv6.i.i, 16
  %12 = and i32 %call15, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %14 to i32
  %15 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %11, %15
  %sum.shift.i = lshr i32 %call15, 24
  %arrayidx.i10.i11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i
  %16 = ptrtoint ptr %arrayidx.i10.i11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i10.i11.i, align 1
  %conv6.i12.i = zext i8 %17 to i32
  %shl.i = or i32 %or.i13.i, %conv6.i12.i
  %shr.i = lshr i32 %call15, 16
  %18 = and i32 %shr.i, 255
  %arrayidx.i.i7.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i7.i, align 1
  %conv2.i8.i = zext i8 %20 to i32
  %shl.i9.i = shl nuw nsw i32 %conv2.i8.i, 8
  %or.i = or i32 %shl.i, %shl.i9.i
  %neg = xor i32 %or.i, -1
  %21 = lshr i32 %neg, 23
  %22 = and i32 %21, 2
  %23 = lshr i32 %neg, 25
  %24 = and i32 %23, 1
  %25 = or i32 %24, %22
  %26 = and i32 %21, 32
  %27 = or i32 %25, %26
  %28 = and i32 %23, 16
  %29 = or i32 %27, %28
  %30 = lshr i32 %neg, 27
  %31 = and i32 %30, 8
  %32 = or i32 %29, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool65.not = icmp slt i32 %or.i, 0
  %or67 = or i32 %32, 4
  %bit.5 = select i1 %tobool65.not, i32 %32, i32 %or67
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %bit.5)
  %cmp69 = icmp ugt i32 %bit.5, 31
  br i1 %cmp69, label %if.then70, label %if.else73

if.then70:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i32 %bit.5, -32
  %shl71 = shl nuw i32 1, %sub
  %or72 = or i32 %shl71, %mar0.0127
  br label %if.end76

if.else73:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %shl74 = shl nuw i32 1, %bit.5
  %or75 = or i32 %shl74, %mar1.0126
  br label %if.end76

if.end76:                                         ; preds = %if.else73, %if.then70
  %mar1.1 = phi i32 [ %mar1.0126, %if.then70 ], [ %or75, %if.else73 ]
  %mar0.1 = phi i32 [ %or72, %if.then70 ], [ %mar0.0127, %if.else73 ]
  %33 = ptrtoint ptr %ha.0128 to i32
  call void @__asan_load4_noabort(i32 %33)
  %ha.0 = load ptr, ptr %ha.0128, align 4
  %cmp14.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp14.not, label %if.end76.if.end83_crit_edge, label %if.end76.cond.end_crit_edge

if.end76.cond.end_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end76.if.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.end83:                                         ; preds = %if.end76.if.end83_crit_edge, %for.cond.preheader.if.end83_crit_edge, %if.else.if.end83_crit_edge, %lor.lhs.false.if.end83_crit_edge, %entry.if.end83_crit_edge
  %mar1.2 = phi i32 [ 0, %if.else.if.end83_crit_edge ], [ -1, %lor.lhs.false.if.end83_crit_edge ], [ -1, %entry.if.end83_crit_edge ], [ 0, %for.cond.preheader.if.end83_crit_edge ], [ %mar1.1, %if.end76.if.end83_crit_edge ]
  %mar0.2 = phi i32 [ 0, %if.else.if.end83_crit_edge ], [ -1, %lor.lhs.false.if.end83_crit_edge ], [ -1, %entry.if.end83_crit_edge ], [ 0, %for.cond.preheader.if.end83_crit_edge ], [ %mar0.1, %if.end76.if.end83_crit_edge ]
  %add.ptr84 = getelementptr i8, ptr %1, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %34 = tail call i32 @llvm.bswap.i32(i32 %mar0.2) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %34) #12, !srcloc !90
  %add.ptr86 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %35 = tail call i32 @llvm.bswap.i32(i32 %mar1.2) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %35) #12, !srcloc !90
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_copy_and_csum_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc92031_ethtool_get_wol(ptr noundef %dev, ptr nocapture noundef %wolinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port_base1 = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base1, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #12
  %add.ptr = getelementptr i8, ptr %1, i32 124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !91
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #12
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 1
  %4 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 47, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %and = lshr i32 %3, 25
  %and.lobit = and i32 %and, 1
  %and5 = lshr i32 %3, 24
  %5 = and i32 %and5, 32
  %6 = or i32 %5, %and.lobit
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %wolopts, align 4
  %and11 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %entry.if.end16_crit_edge, label %if.then13

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wolopts, align 4
  %or15 = or i32 %9, 14
  store i32 %or15, ptr %wolopts, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc92031_ethtool_set_wol(ptr noundef %dev, ptr nocapture noundef readonly %wolinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port_base1 = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base1, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #12
  %add.ptr = getelementptr i8, ptr %1, i32 124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %3 = and i32 %2, -36
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %5 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wolopts, align 4
  %and3 = shl i32 %6, 25
  %7 = and i32 %and3, 33554432
  %8 = or i32 %7, %4
  %and5 = shl i32 %6, 24
  %9 = and i32 %and5, 536870912
  %10 = or i32 %8, %9
  %and11 = and i32 %6, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or14 = or i32 %10, 16777216
  %pm_config.2 = select i1 %tobool12.not, i32 %10, i32 %or14
  %pm_config16 = getelementptr i8, ptr %dev, i32 2424
  %11 = ptrtoint ptr %pm_config16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %pm_config.2, ptr %pm_config16, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %pm_config.2) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #12, !srcloc !90
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc92031_ethtool_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port_base1 = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base1, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #12
  %add.ptr.i13 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 32) #12, !srcloc !90
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 112
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %.mask.i = and i32 %3, 128
  %tobool.not.i.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i.i, label %_sc92031_mii_wait.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

_sc92031_mii_wait.exit.i:                         ; preds = %do.body.i.i
  %add.ptr1.i = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #12, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 8224) #12, !srcloc !90
  br label %do.body.i10.i

do.body.i10.i:                                    ; preds = %do.body.i10.i.do.body.i10.i_crit_edge, %_sc92031_mii_wait.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !91
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %tobool.not.i9.i = icmp sgt i32 %6, -1
  br i1 %tobool.not.i9.i, label %_sc92031_mii_cmd.exit, label %do.body.i10.i.do.body.i10.i_crit_edge

do.body.i10.i.do.body.i10.i_crit_edge:            ; preds = %do.body.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i10.i

_sc92031_mii_cmd.exit:                            ; preds = %do.body.i10.i
  %7 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %_sc92031_mii_cmd.exit.out_crit_edge, label %if.end

_sc92031_mii_cmd.exit.out_crit_edge:              ; preds = %_sc92031_mii_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %_sc92031_mii_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = lshr i32 %6, 2
  %conv.i11 = and i32 %8, 133167104
  %shl1.i = or i32 %conv.i11, 1048576
  %call.i12 = tail call fastcc i32 @_sc92031_mii_cmd(ptr noundef %1, i32 noundef 4194304, i32 noundef %shl1.i) #12
  br label %out

out:                                              ; preds = %if.end, %_sc92031_mii_cmd.exit.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end ], [ -22, %_sc92031_mii_cmd.exit.out_crit_edge ]
  tail call fastcc void @_sc92031_mii_scan(ptr noundef %1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sc92031_ethtool_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memcpy(ptr %data, ptr @sc92031_ethtool_stats_strings, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc92031_ethtool_get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #12
  %tx_timeouts = getelementptr i8, ptr %dev, i32 2432
  %0 = ptrtoint ptr %tx_timeouts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tx_timeouts, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %data, align 8
  %rx_loss = getelementptr i8, ptr %dev, i32 2440
  %3 = ptrtoint ptr %rx_loss to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rx_loss, align 8
  %arrayidx1 = getelementptr i64, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx1, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sc92031_ethtool_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 2, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc92031_ethtool_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port_base1 = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base1, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #12
  %add.ptr = getelementptr i8, ptr %1, i32 108
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %add.ptr3 = getelementptr i8, ptr %1, i32 96
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %add.ptr.i81 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 32) #12, !srcloc !90
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 112
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %.mask.i = and i32 %5, 128
  %tobool.not.i.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i.i, label %_sc92031_mii_wait.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

_sc92031_mii_wait.exit.i:                         ; preds = %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 393216) #12, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 8224) #12, !srcloc !90
  br label %do.body.i10.i

do.body.i10.i:                                    ; preds = %do.body.i10.i.do.body.i10.i_crit_edge, %_sc92031_mii_wait.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !91
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %tobool.not.i9.i = icmp sgt i32 %8, -1
  br i1 %tobool.not.i9.i, label %_sc92031_mii_cmd.exit, label %do.body.i10.i.do.body.i10.i_crit_edge

do.body.i10.i.do.body.i10.i_crit_edge:            ; preds = %do.body.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i10.i

_sc92031_mii_cmd.exit:                            ; preds = %do.body.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  tail call fastcc void @_sc92031_mii_scan(ptr noundef %1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #12
  %and = and i32 %9, 1619001344
  call void @__sanitizer_cov_trace_const_cmp4(i32 1619001344, i32 %and)
  %cmp = icmp eq i32 %and, 1619001344
  %spec.select = select i1 %cmp, i32 704, i32 640
  %and8 = lshr i32 %9, 29
  %10 = and i32 %and8, 1
  %11 = or i32 %spec.select, %10
  %and14 = and i32 %9, 545259520
  call void @__sanitizer_cov_trace_const_cmp4(i32 545259520, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 545259520
  %or18 = or i32 %11, 2
  %advertising.2 = select i1 %cmp15, i32 %or18, i32 %11
  %and20 = lshr i32 %9, 28
  %12 = and i32 %and20, 4
  %13 = or i32 %advertising.2, %12
  %and26 = and i32 %9, 1082130432
  call void @__sanitizer_cov_trace_const_cmp4(i32 1082130432, i32 %and26)
  %cmp27 = icmp eq i32 %and26, 1082130432
  %or30 = or i32 %13, 8
  %advertising.4 = select i1 %cmp27, i32 %or30, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  %or34 = or i32 %advertising.4, 64
  %advertising.5 = select i1 %tobool.not, i32 %advertising.4, i32 %or34
  %14 = trunc i32 %2 to i8
  %15 = lshr i8 %14, 3
  %16 = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool38.not = icmp eq i32 %16, 0
  %cond = select i1 %tobool38.not, i32 10, i32 100
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %speed, align 4
  %sum.shift = lshr i32 %8, 15
  %18 = trunc i32 %sum.shift to i8
  %19 = and i8 %18, 1
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %20 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %duplex, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %21 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %port, align 1
  %phy_address47 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %22 = ptrtoint ptr %phy_address47 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %15, ptr %phy_address47, align 2
  %not.tobool.not = xor i1 %tobool.not, true
  %conv51 = zext i1 %not.tobool.not to i8
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %23 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv51, ptr %autoneg, align 1
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 719) #12
  %advertising55 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising55, i32 noundef %advertising.5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc92031_ethtool_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port_base1 = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %port_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base1, align 4
  %speed2 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %speed2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #12
  %4 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %advertising, align 4, !annotation !108
  %advertising3 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call4 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp eq i32 %3, 10
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 100, label %entry.if.end_crit_edge
    i32 10, label %entry.if.end_crit_edge131
  ]

entry.if.end_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge131
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %switch = icmp ult i8 %7, 2
  br i1 %switch, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp19 = icmp eq i8 %9, 2
  br i1 %cmp19, label %if.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %10 = ptrtoint ptr %phy_address to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %phy_address, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %11)
  %cmp25 = icmp eq i8 %11, 31
  br i1 %cmp25, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %12 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %switch128 = icmp ult i8 %13, 2
  br i1 %switch128, label %if.end40, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp44 = icmp eq i8 %13, 1
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end40
  %14 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %advertising, align 4
  %and = and i32 %15, 79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then46.cleanup_crit_edge, label %if.end48

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %and49 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %spec.select = select i1 %tobool50.not, i32 -2147483648, i32 -528482304
  %and53 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %or56 = or i32 %spec.select, 1082130432
  %phy_ctrl.1 = select i1 %tobool54.not, i32 %spec.select, i32 %or56
  %and58 = shl i32 %15, 28
  %16 = and i32 %and58, 1073741824
  %17 = or i32 %phy_ctrl.1, %16
  %and63 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %or66 = or i32 %17, 545259520
  %phy_ctrl.3 = select i1 %tobool64.not, i32 %17, i32 %or66
  %and68 = shl i32 %15, 29
  %18 = and i32 %and68, 536870912
  %19 = or i32 %phy_ctrl.3, %18
  br label %if.end88

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %. = select i1 %cmp, i32 536870912, i32 1073741824
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp83 = icmp eq i8 %7, 1
  %or86 = or i32 %., 8388608
  %spec.select129 = select i1 %cmp83, i32 %or86, i32 %.
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.end48
  %phy_ctrl.5 = phi i32 [ %spec.select129, %if.else ], [ %19, %if.end48 ]
  call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #12
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !91
  %21 = call i32 @llvm.bswap.i32(i32 %20) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %and90 = and i32 %21, 528482303
  %or91 = or i32 %and90, %phy_ctrl.5
  call void @__sanitizer_cov_trace_cmp4(i32 %or91, i32 %21)
  %cmp92.not = icmp eq i32 %or91, %21
  br i1 %cmp92.not, label %if.end88.if.end96_crit_edge, label %if.then94

if.end88.if.end96_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then94:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  call void @arm_heavy_mb() #12
  %22 = call i32 @llvm.bswap.i32(i32 %or91) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #12, !srcloc !90
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end88.if.end96_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %if.then46.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end96 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ], [ -22, %if.then46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc92031_suspend(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netif_device_detach(ptr noundef %1) #12
  %port_base1.i = getelementptr i8, ptr %1, i32 2348
  %4 = ptrtoint ptr %port_base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_base1.i, align 4
  %intr_mask.i = getelementptr i8, ptr %1, i32 2412
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %intr_mask.i, i32 noundef 4) #12
  %6 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %intr_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i11 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #12, !srcloc !90
  %add.ptr.i6.i = getelementptr i8, ptr %5, i32 68
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %pdev.i = getelementptr i8, ptr %1, i32 2352
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %11) #12
  %tasklet.i = getelementptr i8, ptr %1, i32 2356
  %count.i.i.i = getelementptr i8, ptr %1, i32 2364
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #12, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !102
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #12
  %13 = ptrtoint ptr %port_base1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port_base1.i, align 4
  %rx_config.i = getelementptr i8, ptr %1, i32 2416
  %15 = ptrtoint ptr %rx_config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_config.i, align 8
  %and.i = and i32 %16, -1073741825
  store i32 %and.i, ptr %rx_config.i, align 8
  %tx_config.i = getelementptr i8, ptr %1, i32 2420
  %17 = ptrtoint ptr %tx_config.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_config.i, align 4
  %and2.i = and i32 %18, -1073741825
  store i32 %and2.i, ptr %tx_config.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %19) #12, !srcloc !90
  %20 = ptrtoint ptr %tx_config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_config.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %14, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %22) #12, !srcloc !90
  %tx_head.i = getelementptr i8, ptr %1, i32 2392
  %23 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_head.i, align 8
  %tx_tail.i = getelementptr i8, ptr %1, i32 2396
  %25 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %tx_tail.promoted.i = load i32, ptr %tx_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %tx_tail.promoted.i)
  %cmp.not10.i = icmp eq i32 %24, %tx_tail.promoted.i
  br i1 %cmp.not10.i, label %if.end._sc92031_tx_clear.exit_crit_edge, label %while.body.lr.ph.i

if.end._sc92031_tx_clear.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %_sc92031_tx_clear.exit

while.body.lr.ph.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %26 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %tx_dropped.promoted.i = load i32, ptr %tx_dropped.i, align 4
  %27 = sub i32 %24, %tx_tail.promoted.i
  %28 = add i32 %27, %tx_dropped.promoted.i
  store i32 %28, ptr %tx_dropped.i, align 4
  br label %_sc92031_tx_clear.exit

_sc92031_tx_clear.exit:                           ; preds = %while.body.lr.ph.i, %if.end._sc92031_tx_clear.exit_crit_edge
  %29 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %tx_tail.i, align 4
  %30 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %tx_head.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #12
  br label %cleanup

cleanup:                                          ; preds = %_sc92031_tx_clear.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc92031_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #12
  tail call fastcc void @_sc92031_reset(ptr noundef %1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #12
  %port_base1.i = getelementptr i8, ptr %1, i32 2348
  %4 = ptrtoint ptr %port_base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_base1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !98
  %count.i.i = getelementptr i8, ptr %1, i32 2364
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #12, !srcloc !99
  %intr_mask.i = getelementptr i8, ptr %1, i32 2412
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %intr_mask.i, i32 noundef 4) #12
  %7 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 -536870815, ptr %intr_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  tail call void @arm_heavy_mb() #12
  %add.ptr.i16 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 1627390176) #12, !srcloc !90
  tail call void @netif_device_attach(ptr noundef %1) #12
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %11 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %12) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  tail call fastcc void @local_bh_disable() #12
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #12
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %17 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp13.not.i = icmp eq i32 %18, 0
  br i1 %cmp13.not.i, label %if.else.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.else.netif_tx_disable.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.else
  %_tx.i.i18 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %_tx.i.i18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i18, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %20, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #12
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %20, i32 %i.014.i, i32 11
  %21 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %16, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %20, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %22 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #12
  %inc.i = add nuw i32 %i.014.i, 1
  %23 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.else.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #12
  tail call fastcc void @local_bh_enable() #12
  br label %cleanup

cleanup:                                          ; preds = %netif_tx_disable.exit, %if.then5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !25, !26, !27, !29, !31, !33, !34, !36, !37, !38, !39, !40, !42, !44, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__param_multicast_filter_limit, !1, !"__param_multicast_filter_limit", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_multicast_filter_limittype341, !1, !"__UNIQUE_ID_multicast_filter_limittype341", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_multicast_filter_limit342, !4, !"__UNIQUE_ID_multicast_filter_limit342", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 48, i32 1}
!5 = !{ptr @__param_media, !6, !"__param_media", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 52, i32 1}
!7 = !{ptr @__UNIQUE_ID_mediatype343, !6, !"__UNIQUE_ID_mediatype343", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_media344, !9, !"__UNIQUE_ID_media344", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 53, i32 1}
!10 = !{ptr @__initcall__kmod_sc92031__345_1573_sc92031_pci_driver_init6, !11, !"__initcall__kmod_sc92031__345_1573_sc92031_pci_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 1573, i32 1}
!12 = !{ptr @__exitcall_sc92031_pci_driver_exit, !11, !"__exitcall_sc92031_pci_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file346, !14, !"__UNIQUE_ID_file346", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 1574, i32 1}
!15 = !{ptr @__UNIQUE_ID_license347, !14, !"__UNIQUE_ID_license347", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author348, !17, !"__UNIQUE_ID_author348", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 1575, i32 1}
!18 = !{ptr @__UNIQUE_ID_description349, !19, !"__UNIQUE_ID_description349", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 1576, i32 1}
!20 = !{ptr @media, !21, !"media", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 51, i32 12}
!22 = !{ptr @__param_str_multicast_filter_limit, !1, !"__param_str_multicast_filter_limit", i1 false, i1 false}
!23 = !{ptr @multicast_filter_limit, !24, !"multicast_filter_limit", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 46, i32 12}
!25 = !{ptr @__param_str_media, !6, !"__param_str_media", i1 false, i1 false}
!26 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sc92031_pci_driver, !28, !"sc92031_pci_driver", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 1565, i32 26}
!29 = !{ptr @sc92031_pci_device_id_table, !30, !"sc92031_pci_device_id_table", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 1555, i32 35}
!31 = !{ptr @sc92031_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 1449, i32 2}
!33 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 1474, i32 2}
!36 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sc92031_probe._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @sc92031_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @sc92031_netdev_ops, !41, !"sc92031_netdev_ops", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 1383, i32 36}
!42 = !{ptr @__func__._sc92031_check_media, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 531, i32 7}
!44 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 532, i32 4}
!46 = !{ptr @_sc92031_check_media._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @_sc92031_check_media._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 545, i32 4}
!54 = !{ptr @_sc92031_check_media._entry.10, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @_sc92031_check_media._entry_ptr.12, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @sc92031_ethtool_ops, !57, !"sc92031_ethtool_ops", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 1370, i32 33}
!58 = !{ptr @sc92031_ethtool_stats_strings, !59, !"sc92031_ethtool_stats_strings", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 1336, i32 19}
!60 = !{ptr @__func__._sc92031_rx_tasklet, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 750, i32 7}
!62 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 751, i32 4}
!64 = !{ptr @_sc92031_rx_tasklet._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @_sc92031_rx_tasklet._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 782, i32 5}
!68 = !{ptr @_sc92031_rx_tasklet._entry.14, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @_sc92031_rx_tasklet._entry_ptr.16, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 791, i32 5}
!72 = !{ptr @_sc92031_rx_tasklet._entry.17, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @_sc92031_rx_tasklet._entry_ptr.19, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @sc92031_pm_ops, !75, !"sc92031_pm_ops", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/silan/sc92031.c", i32 1563, i32 8}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i64 2148273142, i64 2148273168, i64 2148273197, i64 2148273231, i64 2148273262, i64 2148273285}
!88 = !{i64 2152598288}
!89 = !{i64 2151777887}
!90 = !{i64 4235765}
!91 = !{i64 4236183}
!92 = !{i64 2151776532}
!93 = !{i64 2156553839}
!94 = !{i64 2156555692}
!95 = !{!"branch_weights", i32 7818360, i32 -388717296}
!96 = !{i64 2156559367}
!97 = !{i64 2156560722}
!98 = !{i64 2152599277}
!99 = !{i64 2148275607, i64 2148275633, i64 2148275662, i64 2148275696, i64 2148275727, i64 2148275750}
!100 = !{i64 2156540857}
!101 = !{i64 2156540699}
!102 = !{i64 2152598930}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i64 2156561447, i64 2156561948, i64 2156561484, i64 2156561540, i64 2156561574, i64 2156561598, i64 2156561639, i64 2156561660, i64 2156561688, i64 2156561722}
!105 = !{i64 2156562915}
!106 = !{i64 2156560895}
!107 = !{i64 2156545280}
!108 = !{!"auto-init"}
