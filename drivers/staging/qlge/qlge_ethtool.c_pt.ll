; ModuleID = '/llk/IR_all_yes/drivers/staging/qlge/qlge_ethtool.c_pt.bc'
source_filename = "../drivers/staging/qlge/qlge_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qlge_stats = type { [32 x i8], i32, i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qlge_adapter = type { %struct.ricb, i32, i32, %struct.nic_stats, [128 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32, %struct.mbox_params, %struct.mutex, i32, i32, i32, ptr, [17 x %struct.intr_context], i32, i32, i32, i32, ptr, [17 x %struct.rx_ring], [8 x %struct.tx_ring], i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, ptr, i32, i32, i32, %union.flash_params, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.completion, ptr, i16, %struct.timer_list, %struct.atomic_t, [6 x i8] }
%struct.ricb = type { i8, i8, i16, [1024 x i8], [10 x i32], [4 x i32] }
%struct.nic_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mbox_params = type { [16 x i32], [16 x i32], i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.intr_context = type { ptr, i32, i32, i32, i32, i32, i32, [32 x i8], ptr }
%struct.rx_ring = type { %struct.cqicb, ptr, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, %struct.qlge_bq, %struct.qlge_page_chunk, i32, %struct.qlge_bq, i32, i32, %struct.delayed_work, [21 x i8], %struct.napi_struct, i8, ptr, i64, i64, i64, i64, i64 }
%struct.cqicb = type <{ i8, i8, i8, i8, i16, i16, i64, i64, i16, i16, i64, i16, i16, i64, i16, i16 }>
%struct.qlge_page_chunk = type { ptr, ptr, i32 }
%struct.qlge_bq = type { ptr, i32, ptr, i32, ptr, ptr, i16, i16, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.tx_ring = type { %struct.wqicb, ptr, i32, ptr, i32, i32, i32, ptr, ptr, i16, i16, i8, [3 x i8], ptr, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, i64, i64, i64 }
%struct.wqicb = type { i16, i16, i16, i16, i64, i64 }
%union.flash_params = type { %struct.flash_params_8000 }
%struct.flash_params_8000 = type { [4 x i8], i16, i16, i16, i16, i16, i16, i8, i8, [6 x i8], i8, i8, [6 x i8], i8, i8, i16, i8, i8, i16, [464 x i8], i16, i16, [4 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.127, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.127 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.143, i32 }
%struct.anon.143 = type { [3 x i32], [3 x i32], [3 x i32] }

@qlge_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @qlge_get_drvinfo, ptr @qlge_get_regs_len, ptr @qlge_get_regs, ptr @qlge_get_wol, ptr @qlge_set_wol, ptr @qlge_get_msglevel, ptr @qlge_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @qlge_get_coalesce, ptr @qlge_set_coalesce, ptr null, ptr null, ptr null, ptr @qlge_get_pauseparam, ptr @qlge_set_pauseparam, ptr @qlge_self_test, ptr @qlge_get_strings, ptr @qlge_set_phys_id, ptr @qlge_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @qlge_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qlge_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@qlge_driver_name = external dso_local global [0 x i8], align 1
@qlge_driver_version = external dso_local constant [0 x i8], align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"v%d.%d.%d\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"WOL is only supported for mezz card\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Set wol option 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to load CQICB.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"is down, Loopback test will fail.\0A\00", [61 x i8] zeroinitializer }, align 32
@qlge_gstrings_test = internal constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"Loopback test  (offline)\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@qlge_gstrings_stats = internal constant { [66 x %struct.qlge_stats], [656 x i8] } { [66 x %struct.qlge_stats] [%struct.qlge_stats { [32 x i8] c"tx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1096 }, %struct.qlge_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1104 }, %struct.qlge_stats { [32 x i8] c"tx_mcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1112 }, %struct.qlge_stats { [32 x i8] c"tx_bcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1120 }, %struct.qlge_stats { [32 x i8] c"tx_ucast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1128 }, %struct.qlge_stats { [32 x i8] c"tx_ctl_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1136 }, %struct.qlge_stats { [32 x i8] c"tx_pause_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1144 }, %struct.qlge_stats { [32 x i8] c"tx_64_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1152 }, %struct.qlge_stats { [32 x i8] c"tx_65_to_127_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1160 }, %struct.qlge_stats { [32 x i8] c"tx_128_to_255_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1168 }, %struct.qlge_stats { [32 x i8] c"tx_256_511_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1176 }, %struct.qlge_stats { [32 x i8] c"tx_512_to_1023_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1184 }, %struct.qlge_stats { [32 x i8] c"tx_1024_to_1518_pkts\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1192 }, %struct.qlge_stats { [32 x i8] c"tx_1519_to_max_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1200 }, %struct.qlge_stats { [32 x i8] c"tx_undersize_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1208 }, %struct.qlge_stats { [32 x i8] c"tx_oversize_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1216 }, %struct.qlge_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1224 }, %struct.qlge_stats { [32 x i8] c"rx_bytes_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1232 }, %struct.qlge_stats { [32 x i8] c"rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1240 }, %struct.qlge_stats { [32 x i8] c"rx_pkts_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1248 }, %struct.qlge_stats { [32 x i8] c"rx_bcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1256 }, %struct.qlge_stats { [32 x i8] c"rx_mcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1264 }, %struct.qlge_stats { [32 x i8] c"rx_ucast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1272 }, %struct.qlge_stats { [32 x i8] c"rx_undersize_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1280 }, %struct.qlge_stats { [32 x i8] c"rx_oversize_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1288 }, %struct.qlge_stats { [32 x i8] c"rx_jabber_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1296 }, %struct.qlge_stats { [32 x i8] c"rx_undersize_fcerr_pkts\00\00\00\00\00\00\00\00\00", i32 8, i32 1304 }, %struct.qlge_stats { [32 x i8] c"rx_drop_events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1312 }, %struct.qlge_stats { [32 x i8] c"rx_fcerr_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1320 }, %struct.qlge_stats { [32 x i8] c"rx_align_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1328 }, %struct.qlge_stats { [32 x i8] c"rx_symbol_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1336 }, %struct.qlge_stats { [32 x i8] c"rx_mac_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1344 }, %struct.qlge_stats { [32 x i8] c"rx_ctl_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1352 }, %struct.qlge_stats { [32 x i8] c"rx_pause_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1360 }, %struct.qlge_stats { [32 x i8] c"rx_64_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1368 }, %struct.qlge_stats { [32 x i8] c"rx_65_to_127_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1376 }, %struct.qlge_stats { [32 x i8] c"rx_128_255_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1384 }, %struct.qlge_stats { [32 x i8] c"rx_256_511_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1392 }, %struct.qlge_stats { [32 x i8] c"rx_512_to_1023_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1400 }, %struct.qlge_stats { [32 x i8] c"rx_1024_to_1518_pkts\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1408 }, %struct.qlge_stats { [32 x i8] c"rx_1519_to_max_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1416 }, %struct.qlge_stats { [32 x i8] c"rx_len_err_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1424 }, %struct.qlge_stats { [32 x i8] c"rx_code_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1432 }, %struct.qlge_stats { [32 x i8] c"rx_oversize_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1440 }, %struct.qlge_stats { [32 x i8] c"rx_undersize_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1448 }, %struct.qlge_stats { [32 x i8] c"rx_preamble_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1456 }, %struct.qlge_stats { [32 x i8] c"rx_frame_len_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1464 }, %struct.qlge_stats { [32 x i8] c"rx_crc_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1472 }, %struct.qlge_stats { [32 x i8] c"rx_err_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1480 }, %struct.qlge_stats { [32 x i8] c"tx_cbfc_pause_frames0\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1488 }, %struct.qlge_stats { [32 x i8] c"tx_cbfc_pause_frames1\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1496 }, %struct.qlge_stats { [32 x i8] c"tx_cbfc_pause_frames2\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1504 }, %struct.qlge_stats { [32 x i8] c"tx_cbfc_pause_frames3\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1512 }, %struct.qlge_stats { [32 x i8] c"tx_cbfc_pause_frames4\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1520 }, %struct.qlge_stats { [32 x i8] c"tx_cbfc_pause_frames5\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1528 }, %struct.qlge_stats { [32 x i8] c"tx_cbfc_pause_frames6\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1536 }, %struct.qlge_stats { [32 x i8] c"tx_cbfc_pause_frames7\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1544 }, %struct.qlge_stats { [32 x i8] c"rx_cbfc_pause_frames0\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1552 }, %struct.qlge_stats { [32 x i8] c"rx_cbfc_pause_frames1\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1560 }, %struct.qlge_stats { [32 x i8] c"rx_cbfc_pause_frames2\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1568 }, %struct.qlge_stats { [32 x i8] c"rx_cbfc_pause_frames3\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1576 }, %struct.qlge_stats { [32 x i8] c"rx_cbfc_pause_frames4\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1584 }, %struct.qlge_stats { [32 x i8] c"rx_cbfc_pause_frames5\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1592 }, %struct.qlge_stats { [32 x i8] c"rx_cbfc_pause_frames6\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1600 }, %struct.qlge_stats { [32 x i8] c"rx_cbfc_pause_frames7\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1608 }, %struct.qlge_stats { [32 x i8] c"rx_nic_fifo_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1616 }], [656 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Couldn't get xgmac sem.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error reading status register 0x%.04x.\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 104, i64 384]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 104, i64 384]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"qlge_ethtool_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 724, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 422, i32 4 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 451, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 459, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 211, i32 5 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 596, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"qlge_gstrings_test\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 178, i32 19 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"qlge_gstrings_stats\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 46, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 250, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [39 x i8] c"../drivers/staging/qlge/qlge_ethtool.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 259, i32 4 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @qlge_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @qlge_gstrings_test, ptr @qlge_gstrings_stats, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlge_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlge_gstrings_test to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlge_gstrings_stats to i32), i32 2640, i32 3296, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlge_check_lb_frame(ptr noundef %qdev, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %div20 = lshr i32 %5, 1
  %add.ptr3 = getelementptr i8, ptr %1, i32 %div20
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i32 10
  %6 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %7)
  %cmp6 = icmp eq i8 %7, -66
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true8:                                   ; preds = %land.lhs.true
  %add.ptr12 = getelementptr i8, ptr %add.ptr3, i32 12
  %8 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %9)
  %cmp14 = icmp eq i8 %9, -81
  br i1 %cmp14, label %if.then, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  %lb_count = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 66
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lb_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %lb_count, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lb_count, ptr %lb_count, i32 1, ptr elementtype(i32) %lb_count) #12, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlge_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %drvinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @qlge_driver_name, i32 noundef 32) #12
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call3 = tail call i32 @strscpy(ptr noundef %version, ptr noundef nonnull @qlge_driver_version, i32 noundef 32) #12
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %fw_rev_id = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %fw_rev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_rev_id, align 8
  %and = lshr i32 %3, 16
  %shr = and i32 %and, 255
  %and6 = lshr i32 %3, 8
  %shr7 = and i32 %and6, 255
  %and9 = and i32 %3, 255
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %shr, i32 noundef %shr7, i32 noundef %and9)
  %pdev = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call13 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qlge_get_regs_len(ptr nocapture noundef readonly %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %flags = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %. = select i1 %tobool.not, i32 176196, i32 1432
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlge_get_regs(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %regs, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @qlge_get_dump(ptr noundef %1, ptr noundef %p) #12
  %flags = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %spec.select = select i1 %tobool.not, i32 176196, i32 1432
  %5 = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qlge_get_wol(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %wol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %pdev = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_device, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %entry.if.end_crit_edge [
    i16 104, label %entry.if.then_crit_edge
    i16 384, label %entry.if.then_crit_edge9
  ]

entry.if.then_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge9
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %7 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %supported, align 4
  %wol5 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %wol5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wol5, align 8
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %10 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %wolopts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlge_set_wol(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %pdev = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_device, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %5, label %do.body [
    i16 104, label %entry.if.end7_crit_edge
    i16 384, label %entry.if.end7_crit_edge33
  ]

entry.if.end7_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %ndev6 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %ndev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev6, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %10, ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %entry.if.end7_crit_edge33
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %11 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wolopts, align 4
  %and8 = and i32 %12, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %wol13 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %wol13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %wol13, align 8
  %msg_enable15 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %msg_enable15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable15, align 4
  %and16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end11.cleanup_crit_edge, label %if.then18

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %ndev19 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %ndev19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev19, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %17, ptr noundef nonnull @.str.2, i32 noundef %12) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then5 ], [ -95, %do.body.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qlge_get_msglevel(ptr nocapture noundef readonly %ndev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qlge_set_msglevel(ptr nocapture noundef readonly %ndev, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qlge_get_coalesce(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %c, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_coalesce_usecs, align 8
  %conv = zext i16 %3 to i32
  %rx_coalesce_usecs1 = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %rx_coalesce_usecs1, align 4
  %tx_coalesce_usecs = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 45
  %5 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tx_coalesce_usecs, align 4
  %conv2 = zext i16 %6 to i32
  %tx_coalesce_usecs3 = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 5
  %7 = ptrtoint ptr %tx_coalesce_usecs3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv2, ptr %tx_coalesce_usecs3, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 44
  %8 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_max_coalesced_frames, align 2
  %conv4 = zext i16 %9 to i32
  %rx_max_coalesced_frames5 = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 2
  %10 = ptrtoint ptr %rx_max_coalesced_frames5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv4, ptr %rx_max_coalesced_frames5, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 46
  %11 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tx_max_coalesced_frames, align 2
  %conv6 = zext i16 %12 to i32
  %tx_max_coalesced_frames7 = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 6
  %13 = ptrtoint ptr %tx_max_coalesced_frames7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv6, ptr %tx_max_coalesced_frames7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlge_set_coalesce(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %c, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_coalesce_usecs, align 4
  %rx_ring_size = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_size, align 8
  %div = sdiv i32 %5, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div)
  %cmp = icmp ugt i32 %3, %div
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 2
  %6 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp1 = icmp ugt i32 %7, 10
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 5
  %8 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_coalesce_usecs, align 4
  %tx_ring_size = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_ring_size, align 4
  %div4 = sdiv i32 %11, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %div4)
  %cmp5 = icmp ugt i32 %9, %div4
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 6
  %12 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %13)
  %cmp8 = icmp ugt i32 %13, 10
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %rx_coalesce_usecs11 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 43
  %14 = ptrtoint ptr %rx_coalesce_usecs11 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rx_coalesce_usecs11, align 8
  %conv = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp13 = icmp eq i32 %3, %conv
  br i1 %cmp13, label %land.lhs.true, label %if.end10.if.end33_crit_edge

if.end10.if.end33_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end10
  %tx_coalesce_usecs15 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 45
  %16 = ptrtoint ptr %tx_coalesce_usecs15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tx_coalesce_usecs15, align 4
  %conv16 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv16)
  %cmp18 = icmp eq i32 %9, %conv16
  br i1 %cmp18, label %land.lhs.true20, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true20:                                  ; preds = %land.lhs.true
  %rx_max_coalesced_frames21 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 44
  %18 = ptrtoint ptr %rx_max_coalesced_frames21 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rx_max_coalesced_frames21, align 2
  %conv22 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv22)
  %cmp24 = icmp eq i32 %7, %conv22
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true20.if.end33_crit_edge

land.lhs.true20.if.end33_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true26:                                  ; preds = %land.lhs.true20
  %tx_max_coalesced_frames27 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 46
  %20 = ptrtoint ptr %tx_max_coalesced_frames27 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tx_max_coalesced_frames27, align 2
  %conv28 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv28)
  %cmp30 = icmp eq i32 %13, %conv28
  br i1 %cmp30, label %land.lhs.true26.cleanup_crit_edge, label %land.lhs.true26.if.end33_crit_edge

land.lhs.true26.if.end33_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true26.if.end33_crit_edge, %land.lhs.true20.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %if.end10.if.end33_crit_edge
  %conv35 = trunc i32 %3 to i16
  %22 = ptrtoint ptr %rx_coalesce_usecs11 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv35, ptr %rx_coalesce_usecs11, align 8
  %23 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_coalesce_usecs, align 4
  %conv38 = trunc i32 %24 to i16
  %tx_coalesce_usecs39 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 45
  %25 = ptrtoint ptr %tx_coalesce_usecs39 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv38, ptr %tx_coalesce_usecs39, align 4
  %26 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_max_coalesced_frames, align 4
  %conv41 = trunc i32 %27 to i16
  %rx_max_coalesced_frames42 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 44
  %28 = ptrtoint ptr %rx_max_coalesced_frames42 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv41, ptr %rx_max_coalesced_frames42, align 2
  %29 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_max_coalesced_frames, align 4
  %conv44 = trunc i32 %30 to i16
  %tx_max_coalesced_frames45 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 46
  %31 = ptrtoint ptr %tx_max_coalesced_frames45 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv44, ptr %tx_max_coalesced_frames45, align 2
  %ndev.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end33.cleanup_crit_edge, label %if.end.i

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end33
  %rss_ring_count.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 33
  %36 = ptrtoint ptr %rss_ring_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rss_ring_count.i, align 8
  %arrayidx.i = getelementptr %struct.qlge_adapter, ptr %1, i32 0, i32 37, i32 %37
  %irq_delay.i = getelementptr inbounds %struct.cqicb, ptr %arrayidx.i, i32 0, i32 9
  %38 = ptrtoint ptr %irq_delay.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %irq_delay.i, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #12
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %conv38)
  %cmp.not.i = icmp eq i16 %40, %conv38
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.if.then8.i_crit_edge

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %pkt_delay.i = getelementptr inbounds %struct.cqicb, ptr %arrayidx.i, i32 0, i32 8
  %41 = ptrtoint ptr %pkt_delay.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %pkt_delay.i, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #12
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %conv44)
  %cmp6.not.i = icmp eq i16 %43, %conv44
  br i1 %cmp6.not.i, label %lor.lhs.false.i.if.end25.i_crit_edge, label %lor.lhs.false.i.if.then8.i_crit_edge

lor.lhs.false.i.if.then8.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i

lor.lhs.false.i.if.end25.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then8.i:                                       ; preds = %lor.lhs.false.i.if.then8.i_crit_edge, %if.end.i.if.then8.i_crit_edge
  %rx_ring_count.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 34
  %44 = ptrtoint ptr %rx_ring_count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_ring_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %45)
  %cmp10118.i = icmp slt i32 %37, %45
  br i1 %cmp10118.i, label %if.then8.i.for.body.i_crit_edge, label %if.then8.i.if.end25.i_crit_edge

if.then8.i.if.end25.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then8.i.for.body.i_crit_edge:                  ; preds = %if.then8.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nsw i32 %i.0119.i, 1
  %46 = ptrtoint ptr %rx_ring_count.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_ring_count.i, align 4
  %cmp10.i = icmp slt i32 %inc.i, %47
  br i1 %cmp10.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end25.i_crit_edge

for.cond.i.if.end25.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then8.i.for.body.i_crit_edge
  %i.0119.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ %37, %if.then8.i.for.body.i_crit_edge ]
  %arrayidx13.i = getelementptr %struct.qlge_adapter, ptr %1, i32 0, i32 37, i32 %i.0119.i
  %48 = ptrtoint ptr %tx_coalesce_usecs39 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tx_coalesce_usecs39, align 4
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #12
  %irq_delay15.i = getelementptr inbounds %struct.cqicb, ptr %arrayidx13.i, i32 0, i32 9
  %51 = ptrtoint ptr %irq_delay15.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %50, ptr %irq_delay15.i, align 1
  %52 = ptrtoint ptr %tx_max_coalesced_frames45 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %tx_max_coalesced_frames45, align 2
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #12
  %pkt_delay17.i = getelementptr inbounds %struct.cqicb, ptr %arrayidx13.i, i32 0, i32 8
  %55 = ptrtoint ptr %pkt_delay17.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %pkt_delay17.i, align 1
  %flags.i = getelementptr inbounds %struct.cqicb, ptr %arrayidx13.i, i32 0, i32 3
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 64, ptr %flags.i, align 1
  %cq_id.i = getelementptr %struct.qlge_adapter, ptr %1, i32 0, i32 37, i32 %i.0119.i, i32 5
  %57 = ptrtoint ptr %cq_id.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %cq_id.i, align 4
  %call18.i = tail call i32 @qlge_write_cfg(ptr noundef %1, ptr noundef %arrayidx13.i, i32 noundef 52, i32 noundef 64, i16 noundef zeroext %58) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %do.body.i

do.body.i:                                        ; preds = %for.body.i
  %msg_enable.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 18
  %59 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25.i:                                       ; preds = %for.cond.i.if.end25.i_crit_edge, %if.then8.i.if.end25.i_crit_edge, %lor.lhs.false.i.if.end25.i_crit_edge
  %irq_delay28.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 37, i32 0, i32 0, i32 9
  %61 = ptrtoint ptr %irq_delay28.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %irq_delay28.i, align 1
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #12
  %64 = ptrtoint ptr %rx_coalesce_usecs11 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %rx_coalesce_usecs11, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %65)
  %cmp31.not.i = icmp eq i16 %63, %65
  br i1 %cmp31.not.i, label %lor.lhs.false33.i, label %if.end25.i.if.then39.i_crit_edge

if.end25.i.if.then39.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39.i

lor.lhs.false33.i:                                ; preds = %if.end25.i
  %pkt_delay34.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 37, i32 0, i32 0, i32 8
  %66 = ptrtoint ptr %pkt_delay34.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %pkt_delay34.i, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #12
  %69 = ptrtoint ptr %rx_max_coalesced_frames42 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %rx_max_coalesced_frames42, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %70)
  %cmp37.not.i = icmp eq i16 %68, %70
  br i1 %cmp37.not.i, label %lor.lhs.false33.i.cleanup_crit_edge, label %lor.lhs.false33.i.if.then39.i_crit_edge

lor.lhs.false33.i.if.then39.i_crit_edge:          ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39.i

lor.lhs.false33.i.cleanup_crit_edge:              ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then39.i:                                      ; preds = %lor.lhs.false33.i.if.then39.i_crit_edge, %if.end25.i.if.then39.i_crit_edge
  %71 = ptrtoint ptr %rss_ring_count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rss_ring_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp42120.not.i = icmp eq i32 %72, 0
  br i1 %cmp42120.not.i, label %if.then39.i.cleanup_crit_edge, label %if.then39.i.for.body44.i_crit_edge

if.then39.i.for.body44.i_crit_edge:               ; preds = %if.then39.i
  br label %for.body44.i

if.then39.i.cleanup_crit_edge:                    ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond40.i:                                     ; preds = %for.body44.i
  %inc67.i = add nuw i32 %i.1121.i, 1
  %73 = ptrtoint ptr %rss_ring_count.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rss_ring_count.i, align 8
  %cmp42.i = icmp ult i32 %inc67.i, %74
  br i1 %cmp42.i, label %for.cond40.i.for.body44.i_crit_edge, label %for.cond40.i.cleanup_crit_edge

for.cond40.i.cleanup_crit_edge:                   ; preds = %for.cond40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond40.i.for.body44.i_crit_edge:              ; preds = %for.cond40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44.i

for.body44.i:                                     ; preds = %for.cond40.i.for.body44.i_crit_edge, %if.then39.i.for.body44.i_crit_edge
  %i.1121.i = phi i32 [ %inc67.i, %for.cond40.i.for.body44.i_crit_edge ], [ 0, %if.then39.i.for.body44.i_crit_edge ]
  %arrayidx46.i = getelementptr %struct.qlge_adapter, ptr %1, i32 0, i32 37, i32 %i.1121.i
  %75 = ptrtoint ptr %rx_coalesce_usecs11 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %rx_coalesce_usecs11, align 8
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #12
  %irq_delay48.i = getelementptr inbounds %struct.cqicb, ptr %arrayidx46.i, i32 0, i32 9
  %78 = ptrtoint ptr %irq_delay48.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 %77, ptr %irq_delay48.i, align 1
  %79 = ptrtoint ptr %rx_max_coalesced_frames42 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %rx_max_coalesced_frames42, align 2
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #12
  %pkt_delay50.i = getelementptr inbounds %struct.cqicb, ptr %arrayidx46.i, i32 0, i32 8
  %82 = ptrtoint ptr %pkt_delay50.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %pkt_delay50.i, align 1
  %flags51.i = getelementptr inbounds %struct.cqicb, ptr %arrayidx46.i, i32 0, i32 3
  %83 = ptrtoint ptr %flags51.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 64, ptr %flags51.i, align 1
  %cq_id52.i = getelementptr %struct.qlge_adapter, ptr %1, i32 0, i32 37, i32 %i.1121.i, i32 5
  %84 = ptrtoint ptr %cq_id52.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %cq_id52.i, align 4
  %call53.i = tail call i32 @qlge_write_cfg(ptr noundef %1, ptr noundef %arrayidx46.i, i32 noundef 52, i32 noundef 64, i16 noundef zeroext %85) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %for.cond40.i, label %do.body56.i

do.body56.i:                                      ; preds = %for.body44.i
  %msg_enable57.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 18
  %86 = ptrtoint ptr %msg_enable57.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %msg_enable57.i, align 4
  %and58.i = and i32 %87, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %do.body56.i.cleanup_crit_edge, label %do.body56.i.cleanup.sink.split.i_crit_edge

do.body56.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

do.body56.i.cleanup_crit_edge:                    ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %do.body56.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call18.i, %do.body.i.cleanup.sink.split.i_crit_edge ], [ %call53.i, %do.body56.i.cleanup.sink.split.i_crit_edge ]
  %88 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %89, ptr noundef nonnull @.str.3) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %do.body56.i.cleanup_crit_edge, %for.cond40.i.cleanup_crit_edge, %if.then39.i.cleanup_crit_edge, %lor.lhs.false33.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %land.lhs.true26.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %land.lhs.true26.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ %call18.i, %do.body.i.cleanup_crit_edge ], [ %call53.i, %do.body56.i.cleanup_crit_edge ], [ 0, %lor.lhs.false33.i.cleanup_crit_edge ], [ 0, %if.then39.i.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ 0, %for.cond40.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlge_get_pauseparam(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call i32 @qlge_mb_get_port_cfg(ptr noundef %1) #12
  %link_config = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_config, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %rx_pause, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %tx_pause, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlge_set_pauseparam(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %2 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %tx_pause5 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %4 = ptrtoint ptr %tx_pause5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pause5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %link_config = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 52
  %6 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_config, align 4
  %or = or i32 %7, 32
  store i32 %or, ptr %link_config, align 4
  br label %if.end10

land.lhs.true4:                                   ; preds = %entry
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true4.cleanup_crit_edge

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  %link_config8 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 52
  %8 = ptrtoint ptr %link_config8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_config8, align 4
  %and = and i32 %9, -33
  store i32 %and, ptr %link_config8, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then
  %call11 = tail call i32 @qlge_mb_set_port_cfg(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ -22, %land.lhs.true4.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlge_self_test(ptr noundef %ndev, ptr nocapture noundef %eth_test, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %data, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags) #12
  %flags2 = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %ndev.i.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev.i.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i.i.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #12
  %12 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev.i.i, align 4
  tail call void @netif_carrier_off(ptr noundef %13) #12
  br label %qlge_start_loopback.exit.i

if.else.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #12
  br label %qlge_start_loopback.exit.i

qlge_start_loopback.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %link_config.i.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 52
  %14 = ptrtoint ptr %link_config.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %link_config.i.i, align 4
  %or.i.i = or i32 %15, 2
  store i32 %or.i.i, ptr %link_config.i.i, align 4
  %call3.i.i = tail call i32 @qlge_mb_set_port_cfg(ptr noundef %1) #12
  %conv.i = sext i32 %call3.i.i to i64
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv.i, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %qlge_start_loopback.exit.i.out.i_crit_edge

qlge_start_loopback.exit.i.out.i_crit_edge:       ; preds = %qlge_start_loopback.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end.i:                                         ; preds = %qlge_start_loopback.exit.i
  %lb_count.i.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 66
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end6.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.026.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %if.end6.i.i.for.body.i.i_crit_edge ]
  %17 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev.i.i, align 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %18, i32 noundef 256, i32 noundef 2592) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.qlge_run_loopback_test.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.qlge_run_loopback_test.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlge_run_loopback_test.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %queue_mapping.i.i, align 8
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 256) #12
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i.i, align 4
  %22 = call ptr @memset(ptr %21, i32 255, i32 256)
  %23 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %23, i32 128
  %24 = call ptr @memset(ptr %arrayidx.i.i.i, i32 170, i32 127)
  %25 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr i8, ptr %25, i32 138
  %26 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -66, ptr %arrayidx5.i.i.i, align 1
  %27 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx9.i.i.i = getelementptr i8, ptr %27, i32 140
  %28 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -81, ptr %arrayidx9.i.i.i, align 1
  %29 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndev.i.i, align 4
  %call3.i10.i = tail call i32 @qlge_lb_send(ptr noundef nonnull %call.i.i.i, ptr noundef %30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i10.i)
  %cmp4.not.i.i = icmp eq i32 %call3.i10.i, 0
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %if.end.i.i.qlge_run_loopback_test.exit.i_crit_edge

if.end.i.i.qlge_run_loopback_test.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlge_run_loopback_test.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lb_count.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %lb_count.i.i, i32 1, i32 3, i32 1) #12
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lb_count.i.i, ptr %lb_count.i.i, i32 1, ptr elementtype(i32) %lb_count.i.i) #12, !srcloc !30
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end6.i.i.for.body.i.i_crit_edge

if.end6.i.i.for.body.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #12
  %rx_ring.i.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 37
  %call7.i.i = tail call i32 @qlge_clean_lb_rx_ring(ptr noundef %rx_ring.i.i, i32 noundef 128) #12
  %call.i.i25.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lb_count.i.i, i32 noundef 4) #12
  %32 = ptrtoint ptr %lb_count.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %lb_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool10.not.i.i = icmp eq i32 %33, 0
  %cond.i.i = select i1 %tobool10.not.i.i, i32 0, i32 -5
  br label %qlge_run_loopback_test.exit.i

qlge_run_loopback_test.exit.i:                    ; preds = %for.end.i.i, %if.end.i.i.qlge_run_loopback_test.exit.i_crit_edge, %for.body.i.i.qlge_run_loopback_test.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %cond.i.i, %for.end.i.i ], [ -32, %if.end.i.i.qlge_run_loopback_test.exit.i_crit_edge ], [ -12, %for.body.i.i.qlge_run_loopback_test.exit.i_crit_edge ]
  %conv2.i = sext i32 %retval.0.i.i to i64
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv2.i, ptr %data, align 8
  br label %out.i

out.i:                                            ; preds = %qlge_run_loopback_test.exit.i, %qlge_start_loopback.exit.i.out.i_crit_edge
  %35 = ptrtoint ptr %link_config.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %link_config.i.i, align 4
  %and.i.i = and i32 %36, -3
  store i32 %and.i.i, ptr %link_config.i.i, align 4
  %call.i.i = tail call i32 @qlge_mb_set_port_cfg(ptr noundef %1) #12
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags, align 4
  %39 = and i32 %38, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i13.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i13.i, label %out.i.qlge_loopback_test.exit_crit_edge, label %if.then.i15.i

out.i.qlge_loopback_test.exit_crit_edge:          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlge_loopback_test.exit

if.then.i15.i:                                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ndev.i.i, align 4
  tail call void @netif_carrier_on(ptr noundef %41) #12
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #12
  br label %qlge_loopback_test.exit

qlge_loopback_test.exit:                          ; preds = %if.then.i15.i, %out.i.qlge_loopback_test.exit_crit_edge
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %data, align 8
  %conv3.i = trunc i64 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %tobool.not = icmp eq i32 %conv3.i, 0
  br i1 %tobool.not, label %qlge_loopback_test.exit.if.end8_crit_edge, label %if.then5

qlge_loopback_test.exit.if.end8_crit_edge:        ; preds = %qlge_loopback_test.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %qlge_loopback_test.exit
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags2, align 4
  %or = or i32 %45, 2
  store i32 %or, ptr %flags2, align 4
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %data, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5, %qlge_loopback_test.exit.if.end8_crit_edge
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %flags) #12
  %call10 = tail call i32 @msleep_interruptible(i32 noundef 4000) #12
  br label %if.end18

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 18
  %47 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable, align 4
  %and = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body.do.end_crit_edge, label %if.then13

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %ndev14 = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %ndev14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ndev14, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.4) #15
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body.do.end_crit_edge
  %flags16 = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %51 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags16, align 4
  %or17 = or i32 %52, 2
  store i32 %or17, ptr %flags16, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end8
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlge_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.for.body_crit_edge
  ]

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = call ptr @memcpy(ptr %buf, ptr @qlge_gstrings_test, i32 32)
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %index.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %index.06, 5
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  %arrayidx = getelementptr [66 x %struct.qlge_stats], ptr @qlge_gstrings_stats, i32 0, i32 %index.06
  %2 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx, i32 32)
  %inc = add nuw nsw i32 %index.06, 1
  %exitcond.not = icmp eq i32 %inc, 66
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlge_set_phys_id(ptr nocapture noundef readonly %ndev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @qlge_mb_get_led_cfg(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @qlge_mb_set_led_cfg(ptr noundef %1, i32 noundef 65537000) #12
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %led_config = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 53
  %3 = ptrtoint ptr %led_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %led_config, align 8
  %call4 = tail call i32 @qlge_mb_set_led_cfg(ptr noundef %1, i32 noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %. = select i1 %tobool5.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %sw.bb.cleanup_crit_edge ], [ %., %sw.bb3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlge_get_ethtool_stats(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %data.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #12
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %data.i, align 8, !annotation !31
  %stats_lock.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %stats_lock.i) #12
  %xg_sem_mask.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 47
  %3 = ptrtoint ptr %xg_sem_mask.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xg_sem_mask.i, align 8
  %call.i = tail call i32 @qlge_sem_spinlock(ptr noundef %1, i32 noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.qlge_update_stats.exit_crit_edge, label %if.then2.i

do.body.i.qlge_update_stats.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlge_update_stats.exit

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %ndev.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.5) #15
  br label %qlge_update_stats.exit

if.end3.i:                                        ; preds = %entry
  %nic_stats.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.else.i.for.body.i_crit_edge, %if.end3.i
  %iter.0153.i = phi ptr [ %nic_stats.i, %if.end3.i ], [ %incdec.ptr.i, %if.else.i.for.body.i_crit_edge ]
  %i.0152.i = phi i32 [ 512, %if.end3.i ], [ %add.i, %if.else.i.for.body.i_crit_edge ]
  %call4.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef %i.0152.i, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %do.body7.i

do.body7.i:                                       ; preds = %for.body.i
  %msg_enable8.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %msg_enable8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable8.i, align 4
  %and9.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %do.body7.i.end.i_crit_edge, label %if.then11.i

do.body7.i.end.i_crit_edge:                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end.i

if.then11.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %ndev12.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %ndev12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev12.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %i.0152.i) #15
  br label %end.i

if.else.i:                                        ; preds = %for.body.i
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %data.i, align 8
  %15 = ptrtoint ptr %iter.0153.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %iter.0153.i, align 8
  %incdec.ptr.i = getelementptr i64, ptr %iter.0153.i, i32 1
  %add.i = add nuw nsw i32 %i.0152.i, 8
  %cmp.i = icmp ult i32 %i.0152.i, 632
  br i1 %cmp.i, label %if.else.i.for.body.i_crit_edge, label %if.else.i.for.body19.i_crit_edge

if.else.i.for.body19.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body19.i

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body19.i:                                     ; preds = %if.else32.i.for.body19.i_crit_edge, %if.else.i.for.body19.i_crit_edge
  %iter.1155.i = phi ptr [ %incdec.ptr34.i, %if.else32.i.for.body19.i_crit_edge ], [ %incdec.ptr.i, %if.else.i.for.body19.i_crit_edge ]
  %i.1154.i = phi i32 [ %add36.i, %if.else32.i.for.body19.i_crit_edge ], [ 768, %if.else.i.for.body19.i_crit_edge ]
  %call20.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef %i.1154.i, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.else32.i, label %do.body23.i

do.body23.i:                                      ; preds = %for.body19.i
  %msg_enable24.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %msg_enable24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable24.i, align 4
  %and25.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %do.body23.i.end.i_crit_edge, label %if.then27.i

do.body23.i.end.i_crit_edge:                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end.i

if.then27.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  %ndev28.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %ndev28.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev28.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.6, i32 noundef %i.1154.i) #15
  br label %end.i

if.else32.i:                                      ; preds = %for.body19.i
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data.i, align 8
  %22 = ptrtoint ptr %iter.1155.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %iter.1155.i, align 8
  %incdec.ptr34.i = getelementptr i64, ptr %iter.1155.i, i32 1
  %add36.i = add nuw nsw i32 %i.1154.i, 8
  %cmp18.i = icmp ult i32 %i.1154.i, 968
  br i1 %cmp18.i, label %if.else32.i.for.body19.i_crit_edge, label %for.end37.i

if.else32.i.for.body19.i_crit_edge:               ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body19.i

for.end37.i:                                      ; preds = %if.else32.i
  %call41.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1280, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.else53.i, label %for.end37.i.do.body44.i_crit_edge

for.end37.i.do.body44.i_crit_edge:                ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44.i

do.body44.i:                                      ; preds = %if.else53.6.i.do.body44.i_crit_edge, %if.else53.5.i.do.body44.i_crit_edge, %if.else53.4.i.do.body44.i_crit_edge, %if.else53.3.i.do.body44.i_crit_edge, %if.else53.2.i.do.body44.i_crit_edge, %if.else53.1.i.do.body44.i_crit_edge, %if.else53.i.do.body44.i_crit_edge, %for.end37.i.do.body44.i_crit_edge
  %i.2156.lcssa.i = phi i32 [ 1280, %for.end37.i.do.body44.i_crit_edge ], [ 1288, %if.else53.i.do.body44.i_crit_edge ], [ 1296, %if.else53.1.i.do.body44.i_crit_edge ], [ 1304, %if.else53.2.i.do.body44.i_crit_edge ], [ 1312, %if.else53.3.i.do.body44.i_crit_edge ], [ 1320, %if.else53.4.i.do.body44.i_crit_edge ], [ 1328, %if.else53.5.i.do.body44.i_crit_edge ], [ 1336, %if.else53.6.i.do.body44.i_crit_edge ]
  %msg_enable45.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %msg_enable45.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable45.i, align 4
  %and46.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %do.body44.i.end.i_crit_edge, label %if.then48.i

do.body44.i.end.i_crit_edge:                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end.i

if.then48.i:                                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  %ndev49.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %ndev49.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev49.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef %i.2156.lcssa.i) #15
  br label %end.i

if.else53.i:                                      ; preds = %for.end37.i
  %add.ptr.i = getelementptr i64, ptr %iter.1155.i, i32 8
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %data.i, align 8
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %add.ptr.i, align 8
  %call41.1.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1288, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.1.i)
  %tobool42.not.1.i = icmp eq i32 %call41.1.i, 0
  br i1 %tobool42.not.1.i, label %if.else53.1.i, label %if.else53.i.do.body44.i_crit_edge

if.else53.i.do.body44.i_crit_edge:                ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44.i

if.else53.1.i:                                    ; preds = %if.else53.i
  %incdec.ptr55.i = getelementptr i64, ptr %iter.1155.i, i32 9
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %data.i, align 8
  %32 = ptrtoint ptr %incdec.ptr55.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %incdec.ptr55.i, align 8
  %call41.2.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1296, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.2.i)
  %tobool42.not.2.i = icmp eq i32 %call41.2.i, 0
  br i1 %tobool42.not.2.i, label %if.else53.2.i, label %if.else53.1.i.do.body44.i_crit_edge

if.else53.1.i.do.body44.i_crit_edge:              ; preds = %if.else53.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44.i

if.else53.2.i:                                    ; preds = %if.else53.1.i
  %incdec.ptr55.1.i = getelementptr i64, ptr %iter.1155.i, i32 10
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %data.i, align 8
  %35 = ptrtoint ptr %incdec.ptr55.1.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %incdec.ptr55.1.i, align 8
  %call41.3.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1304, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.3.i)
  %tobool42.not.3.i = icmp eq i32 %call41.3.i, 0
  br i1 %tobool42.not.3.i, label %if.else53.3.i, label %if.else53.2.i.do.body44.i_crit_edge

if.else53.2.i.do.body44.i_crit_edge:              ; preds = %if.else53.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44.i

if.else53.3.i:                                    ; preds = %if.else53.2.i
  %incdec.ptr55.2.i = getelementptr i64, ptr %iter.1155.i, i32 11
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %data.i, align 8
  %38 = ptrtoint ptr %incdec.ptr55.2.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %incdec.ptr55.2.i, align 8
  %call41.4.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1312, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.4.i)
  %tobool42.not.4.i = icmp eq i32 %call41.4.i, 0
  br i1 %tobool42.not.4.i, label %if.else53.4.i, label %if.else53.3.i.do.body44.i_crit_edge

if.else53.3.i.do.body44.i_crit_edge:              ; preds = %if.else53.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44.i

if.else53.4.i:                                    ; preds = %if.else53.3.i
  %incdec.ptr55.3.i = getelementptr i64, ptr %iter.1155.i, i32 12
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %data.i, align 8
  %41 = ptrtoint ptr %incdec.ptr55.3.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %incdec.ptr55.3.i, align 8
  %call41.5.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1320, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.5.i)
  %tobool42.not.5.i = icmp eq i32 %call41.5.i, 0
  br i1 %tobool42.not.5.i, label %if.else53.5.i, label %if.else53.4.i.do.body44.i_crit_edge

if.else53.4.i.do.body44.i_crit_edge:              ; preds = %if.else53.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44.i

if.else53.5.i:                                    ; preds = %if.else53.4.i
  %incdec.ptr55.4.i = getelementptr i64, ptr %iter.1155.i, i32 13
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %data.i, align 8
  %44 = ptrtoint ptr %incdec.ptr55.4.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %incdec.ptr55.4.i, align 8
  %call41.6.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1328, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.6.i)
  %tobool42.not.6.i = icmp eq i32 %call41.6.i, 0
  br i1 %tobool42.not.6.i, label %if.else53.6.i, label %if.else53.5.i.do.body44.i_crit_edge

if.else53.5.i.do.body44.i_crit_edge:              ; preds = %if.else53.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44.i

if.else53.6.i:                                    ; preds = %if.else53.5.i
  %incdec.ptr55.5.i = getelementptr i64, ptr %iter.1155.i, i32 14
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %data.i, align 8
  %47 = ptrtoint ptr %incdec.ptr55.5.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %incdec.ptr55.5.i, align 8
  %call41.7.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1336, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.7.i)
  %tobool42.not.7.i = icmp eq i32 %call41.7.i, 0
  br i1 %tobool42.not.7.i, label %if.else53.7.i, label %if.else53.6.i.do.body44.i_crit_edge

if.else53.6.i.do.body44.i_crit_edge:              ; preds = %if.else53.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44.i

if.else53.7.i:                                    ; preds = %if.else53.6.i
  %incdec.ptr55.6.i = getelementptr i64, ptr %iter.1155.i, i32 15
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %data.i, align 8
  %50 = ptrtoint ptr %incdec.ptr55.6.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %incdec.ptr55.6.i, align 8
  %call62.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1384, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %if.else74.i, label %if.else53.7.i.do.body65.i_crit_edge

if.else53.7.i.do.body65.i_crit_edge:              ; preds = %if.else53.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65.i

do.body65.i:                                      ; preds = %if.else74.6.i.do.body65.i_crit_edge, %if.else74.5.i.do.body65.i_crit_edge, %if.else74.4.i.do.body65.i_crit_edge, %if.else74.3.i.do.body65.i_crit_edge, %if.else74.2.i.do.body65.i_crit_edge, %if.else74.1.i.do.body65.i_crit_edge, %if.else74.i.do.body65.i_crit_edge, %if.else53.7.i.do.body65.i_crit_edge
  %i.3158.lcssa.i = phi i32 [ 1384, %if.else53.7.i.do.body65.i_crit_edge ], [ 1392, %if.else74.i.do.body65.i_crit_edge ], [ 1400, %if.else74.1.i.do.body65.i_crit_edge ], [ 1408, %if.else74.2.i.do.body65.i_crit_edge ], [ 1416, %if.else74.3.i.do.body65.i_crit_edge ], [ 1424, %if.else74.4.i.do.body65.i_crit_edge ], [ 1432, %if.else74.5.i.do.body65.i_crit_edge ], [ 1440, %if.else74.6.i.do.body65.i_crit_edge ]
  %msg_enable66.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 18
  %51 = ptrtoint ptr %msg_enable66.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg_enable66.i, align 4
  %and67.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %do.body65.i.end.i_crit_edge, label %if.then69.i

do.body65.i.end.i_crit_edge:                      ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end.i

if.then69.i:                                      ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #14
  %ndev70.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 6
  %53 = ptrtoint ptr %ndev70.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ndev70.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %54, ptr noundef nonnull @.str.6, i32 noundef %i.3158.lcssa.i) #15
  br label %end.i

if.else74.i:                                      ; preds = %if.else53.7.i
  %incdec.ptr55.7.i = getelementptr i64, ptr %iter.1155.i, i32 16
  %55 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %data.i, align 8
  %57 = ptrtoint ptr %incdec.ptr55.7.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %incdec.ptr55.7.i, align 8
  %call62.1.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1392, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.1.i)
  %tobool63.not.1.i = icmp eq i32 %call62.1.i, 0
  br i1 %tobool63.not.1.i, label %if.else74.1.i, label %if.else74.i.do.body65.i_crit_edge

if.else74.i.do.body65.i_crit_edge:                ; preds = %if.else74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65.i

if.else74.1.i:                                    ; preds = %if.else74.i
  %incdec.ptr76.i = getelementptr i64, ptr %iter.1155.i, i32 17
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %data.i, align 8
  %60 = ptrtoint ptr %incdec.ptr76.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %incdec.ptr76.i, align 8
  %call62.2.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1400, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.2.i)
  %tobool63.not.2.i = icmp eq i32 %call62.2.i, 0
  br i1 %tobool63.not.2.i, label %if.else74.2.i, label %if.else74.1.i.do.body65.i_crit_edge

if.else74.1.i.do.body65.i_crit_edge:              ; preds = %if.else74.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65.i

if.else74.2.i:                                    ; preds = %if.else74.1.i
  %incdec.ptr76.1.i = getelementptr i64, ptr %iter.1155.i, i32 18
  %61 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %data.i, align 8
  %63 = ptrtoint ptr %incdec.ptr76.1.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %incdec.ptr76.1.i, align 8
  %call62.3.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1408, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.3.i)
  %tobool63.not.3.i = icmp eq i32 %call62.3.i, 0
  br i1 %tobool63.not.3.i, label %if.else74.3.i, label %if.else74.2.i.do.body65.i_crit_edge

if.else74.2.i.do.body65.i_crit_edge:              ; preds = %if.else74.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65.i

if.else74.3.i:                                    ; preds = %if.else74.2.i
  %incdec.ptr76.2.i = getelementptr i64, ptr %iter.1155.i, i32 19
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %data.i, align 8
  %66 = ptrtoint ptr %incdec.ptr76.2.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %incdec.ptr76.2.i, align 8
  %call62.4.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1416, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.4.i)
  %tobool63.not.4.i = icmp eq i32 %call62.4.i, 0
  br i1 %tobool63.not.4.i, label %if.else74.4.i, label %if.else74.3.i.do.body65.i_crit_edge

if.else74.3.i.do.body65.i_crit_edge:              ; preds = %if.else74.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65.i

if.else74.4.i:                                    ; preds = %if.else74.3.i
  %incdec.ptr76.3.i = getelementptr i64, ptr %iter.1155.i, i32 20
  %67 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %data.i, align 8
  %69 = ptrtoint ptr %incdec.ptr76.3.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %incdec.ptr76.3.i, align 8
  %call62.5.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1424, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.5.i)
  %tobool63.not.5.i = icmp eq i32 %call62.5.i, 0
  br i1 %tobool63.not.5.i, label %if.else74.5.i, label %if.else74.4.i.do.body65.i_crit_edge

if.else74.4.i.do.body65.i_crit_edge:              ; preds = %if.else74.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65.i

if.else74.5.i:                                    ; preds = %if.else74.4.i
  %incdec.ptr76.4.i = getelementptr i64, ptr %iter.1155.i, i32 21
  %70 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %data.i, align 8
  %72 = ptrtoint ptr %incdec.ptr76.4.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %incdec.ptr76.4.i, align 8
  %call62.6.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1432, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.6.i)
  %tobool63.not.6.i = icmp eq i32 %call62.6.i, 0
  br i1 %tobool63.not.6.i, label %if.else74.6.i, label %if.else74.5.i.do.body65.i_crit_edge

if.else74.5.i.do.body65.i_crit_edge:              ; preds = %if.else74.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65.i

if.else74.6.i:                                    ; preds = %if.else74.5.i
  %incdec.ptr76.5.i = getelementptr i64, ptr %iter.1155.i, i32 22
  %73 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %data.i, align 8
  %75 = ptrtoint ptr %incdec.ptr76.5.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %incdec.ptr76.5.i, align 8
  %call62.7.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1440, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.7.i)
  %tobool63.not.7.i = icmp eq i32 %call62.7.i, 0
  br i1 %tobool63.not.7.i, label %if.else74.7.i, label %if.else74.6.i.do.body65.i_crit_edge

if.else74.6.i.do.body65.i_crit_edge:              ; preds = %if.else74.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65.i

if.else74.7.i:                                    ; preds = %if.else74.6.i
  %incdec.ptr76.6.i = getelementptr i64, ptr %iter.1155.i, i32 23
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %data.i, align 8
  %78 = ptrtoint ptr %incdec.ptr76.6.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %incdec.ptr76.6.i, align 8
  %call80.i = call i32 @qlge_read_xgmac_reg64(ptr noundef %1, i32 noundef 1464, ptr noundef nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.else92.i, label %do.body83.i

do.body83.i:                                      ; preds = %if.else74.7.i
  %msg_enable84.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 18
  %79 = ptrtoint ptr %msg_enable84.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %msg_enable84.i, align 4
  %and85.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %do.body83.i.end.i_crit_edge, label %if.then87.i

do.body83.i.end.i_crit_edge:                      ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end.i

if.then87.i:                                      ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #14
  %ndev88.i = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 6
  %81 = ptrtoint ptr %ndev88.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ndev88.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %82, ptr noundef nonnull @.str.6, i32 noundef 1448) #15
  br label %end.i

if.else92.i:                                      ; preds = %if.else74.7.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr76.7.i = getelementptr i64, ptr %iter.1155.i, i32 24
  %83 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %data.i, align 8
  %85 = ptrtoint ptr %incdec.ptr76.7.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %incdec.ptr76.7.i, align 8
  br label %end.i

end.i:                                            ; preds = %if.else92.i, %if.then87.i, %do.body83.i.end.i_crit_edge, %if.then69.i, %do.body65.i.end.i_crit_edge, %if.then48.i, %do.body44.i.end.i_crit_edge, %if.then27.i, %do.body23.i.end.i_crit_edge, %if.then11.i, %do.body7.i.end.i_crit_edge
  %86 = ptrtoint ptr %xg_sem_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %xg_sem_mask.i, align 8
  call void @qlge_sem_unlock(ptr noundef %1, i32 noundef %87) #12
  br label %qlge_update_stats.exit

qlge_update_stats.exit:                           ; preds = %end.i, %if.then2.i, %do.body.i.qlge_update_stats.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %stats_lock.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #12
  br label %cond.true

cond.true:                                        ; preds = %cond.true.cond.true_crit_edge, %qlge_update_stats.exit
  %index.012 = phi i32 [ 0, %qlge_update_stats.exit ], [ %inc, %cond.true.cond.true_crit_edge ]
  %data.addr.011 = phi ptr [ %data, %qlge_update_stats.exit ], [ %incdec.ptr, %cond.true.cond.true_crit_edge ]
  %stat_offset = getelementptr [66 x %struct.qlge_stats], ptr @qlge_gstrings_stats, i32 0, i32 %index.012, i32 2
  %88 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %89
  %90 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %add.ptr, align 8
  %incdec.ptr = getelementptr i64, ptr %data.addr.011, i32 1
  %92 = ptrtoint ptr %data.addr.011 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %data.addr.011, align 8
  %inc = add nuw nsw i32 %index.012, 1
  %exitcond.not = icmp eq i32 %inc, 66
  br i1 %exitcond.not, label %for.end, label %cond.true.cond.true_crit_edge

cond.true.cond.true_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true

for.end:                                          ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qlge_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %switch.selectcmp = icmp eq i32 %sset, 1
  %switch.select = select i1 %switch.selectcmp, i32 66, i32 -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sset)
  %switch.selectcmp2 = icmp eq i32 %sset, 0
  %switch.select3 = select i1 %switch.selectcmp2, i32 1, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlge_get_link_ksettings(ptr nocapture noundef readonly %ndev, ptr noundef %ecmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %link_status = getelementptr inbounds %struct.qlge_adapter, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_status, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp = icmp eq i32 %and, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %autoneg, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i8 [ 0, %if.then ], [ 3, %entry.if.end_crit_edge ]
  %advertising.0 = phi i32 [ 4288, %if.then ], [ 5120, %entry.if.end_crit_edge ]
  %5 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %5, align 1
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10000, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %8 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %duplex, align 4
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %advertising.0) #12
  %advertising11 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising11, i32 noundef %advertising.0) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlge_get_dump(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_write_cfg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_mb_get_port_cfg(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_mb_set_port_cfg(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_lb_send(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_clean_lb_rx_ring(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_mb_get_led_cfg(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_mb_set_led_cfg(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_sem_spinlock(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_read_xgmac_reg64(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlge_sem_unlock(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @qlge_ethtool_ops, !1, !"qlge_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/qlge/qlge_ethtool.c", i32 724, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/qlge/qlge_ethtool.c", i32 422, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/qlge/qlge_ethtool.c", i32 451, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/qlge/qlge_ethtool.c", i32 459, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/qlge/qlge_ethtool.c", i32 211, i32 5}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/qlge/qlge_ethtool.c", i32 596, i32 3}
!12 = !{ptr @qlge_gstrings_test, !13, !"qlge_gstrings_test", i1 false, i1 false}
!13 = !{!"../drivers/staging/qlge/qlge_ethtool.c", i32 178, i32 19}
!14 = !{ptr @qlge_gstrings_stats, !15, !"qlge_gstrings_stats", i1 false, i1 false}
!15 = !{!"../drivers/staging/qlge/qlge_ethtool.c", i32 46, i32 32}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/qlge/qlge_ethtool.c", i32 250, i32 3}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/qlge/qlge_ethtool.c", i32 259, i32 4}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2148233266, i64 2148233292, i64 2148233321, i64 2148233355, i64 2148233386, i64 2148233409}
!30 = !{i64 2148230801, i64 2148230827, i64 2148230856, i64 2148230890, i64 2148230921, i64 2148230944}
!31 = !{!"auto-init"}
