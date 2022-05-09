; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/en_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/en_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx4_interface = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.__va_list = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.mlx4_en_priv = type { ptr, ptr, ptr, [128 x i32], %struct.mlx4_en_port_state, %struct.spinlock, [256 x %struct.ethtool_flow_id], %struct.list_head, [128 x i32], i32, [128 x i32], i32, [128 x i32], i16, i16, i16, i16, i32, i16, i32, i16, i32, i32, i32, i32, i32, %struct.mlx4_hwq_resources, i32, i8, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, %struct.mlx4_en_rss_map, i32, i32, i8, i32, [2 x i32], i32, i32, [4 x %struct.mlx4_en_frag_info], i8, i8, i8, i16, [2 x ptr], [128 x ptr], [2 x ptr], [128 x ptr], %struct.mlx4_qp, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.mlx4_en_pkt_stats, %struct.mlx4_en_counter_stats, [8 x %struct.mlx4_en_flow_stats_rx], [8 x %struct.mlx4_en_flow_stats_tx], %struct.mlx4_en_flow_stats_rx, %struct.mlx4_en_flow_stats_tx, %struct.mlx4_en_port_stats, %struct.mlx4_en_xdp_stats, %struct.mlx4_en_phy_stats, %struct.mlx4_en_stats_bitmap, %struct.list_head, %struct.list_head, i64, %struct.mlx4_en_stat_out_mbox, [128 x i32], i8, ptr, [256 x %struct.hlist_head], %struct.hwtstamp_config, i32, %struct.ieee_ets, [8 x i16], [8 x i32], %struct.mlx4_en_cee_config, i8, %struct.spinlock, i32, %struct.list_head, [16 x %struct.hlist_head], i64, i16, i32, [40 x i8], i8, i32 }
%struct.mlx4_en_port_state = type { i32, i32, i32, i32 }
%struct.ethtool_flow_id = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i64 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.mlx4_hwq_resources = type { %struct.mlx4_db, %struct.mlx4_mtt, %struct.mlx4_buf }
%struct.mlx4_db = type { ptr, %union.anon.129, i32, i32, i32 }
%union.anon.129 = type { ptr }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }
%struct.mlx4_en_rss_map = type { i32, [128 x %struct.mlx4_qp], [128 x i32], ptr, i32 }
%struct.mlx4_en_frag_info = type { i16, i32 }
%struct.mlx4_qp = type { ptr, i32, %struct.refcount_struct, %struct.completion, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mlx4_en_pkt_stats = type { i32, i32, i32, i32, i32, i32, i32, [9 x [2 x i32]], [9 x [2 x i32]] }
%struct.mlx4_en_counter_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_flow_stats_rx = type { i64, i64, i64 }
%struct.mlx4_en_flow_stats_tx = type { i64, i64, i64 }
%struct.mlx4_en_port_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_xdp_stats = type { i32, i32, i32, i32, i32 }
%struct.mlx4_en_phy_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_stats_bitmap = type { [5 x i32], %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx4_en_stat_out_mbox = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.mlx4_en_cee_config = type { i8, [8 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mlx4_en_dev = type { ptr, ptr, %struct.mutex, [3 x ptr], [3 x ptr], i32, i8, %struct.mlx4_en_profile, i32, ptr, ptr, ptr, %struct.mlx4_uar, %struct.mlx4_mr, i32, %struct.spinlock, [3 x i8], i32, %struct.cyclecounter, %struct.seqlock_t, %struct.timecounter, i32, ptr, %struct.ptp_clock_info, %struct.notifier_block }
%struct.mlx4_en_profile = type { i32, i8, i32, i32, i8, i8, [3 x %struct.mlx4_en_port_profile] }
%struct.mlx4_en_port_profile = type { i32, [2 x i32], i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hwtstamp_config }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.mlx4_mr = type { %struct.mlx4_mtt, i64, i64, i32, i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.125, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.125 = type { ptr }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__UNIQUE_ID_author349 = internal constant [44 x i8] c"mlx4_en.author=Liran Liss, Yevgeny Petrilin\00", section ".modinfo", align 1
@__UNIQUE_ID_description350 = internal constant [58 x i8] c"mlx4_en.description=Mellanox ConnectX HCA Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file351 = internal constant [56 x i8] c"mlx4_en.file=drivers/net/ethernet/mellanox/mlx4/mlx4_en\00", section ".modinfo", align 1
@__UNIQUE_ID_license352 = internal constant [29 x i8] c"mlx4_en.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version353 = internal constant [22 x i8] c"mlx4_en.version=4.0-0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx4_en\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4.0-0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_udp_rss = internal constant [16 x i8] c"mlx4_en.udp_rss\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@udp_rss = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_udp_rss = internal constant %struct.kernel_param { ptr @__param_str_udp_rss, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @udp_rss } }, section "__param", align 4
@__UNIQUE_ID_udp_rsstype354 = internal constant [30 x i8] c"mlx4_en.parmtype=udp_rss:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_udp_rss355 = internal constant [73 x i8] c"mlx4_en.parm=udp_rss:Enable RSS for incoming UDP traffic or disabled (0)\00", section ".modinfo", align 1
@__param_str_pfctx = internal constant [14 x i8] c"mlx4_en.pfctx\00", align 1
@pfctx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pfctx = internal constant %struct.kernel_param { ptr @__param_str_pfctx, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @pfctx } }, section "__param", align 4
@__UNIQUE_ID_pfctxtype356 = internal constant [28 x i8] c"mlx4_en.parmtype=pfctx:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pfctx357 = internal constant [88 x i8] c"mlx4_en.parm=pfctx:Priority based Flow Control policy on TX[7:0]. Per priority bit mask\00", section ".modinfo", align 1
@__param_str_pfcrx = internal constant [14 x i8] c"mlx4_en.pfcrx\00", align 1
@pfcrx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pfcrx = internal constant %struct.kernel_param { ptr @__param_str_pfcrx, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @pfcrx } }, section "__param", align 4
@__UNIQUE_ID_pfcrxtype358 = internal constant [28 x i8] c"mlx4_en.parmtype=pfcrx:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pfcrx359 = internal constant [88 x i8] c"mlx4_en.parm=pfcrx:Priority based Flow Control policy on RX[7:0]. Per priority bit mask\00", section ".modinfo", align 1
@__param_str_inline_thold = internal constant [21 x i8] c"mlx4_en.inline_thold\00", align 1
@inline_thold = internal global { i32, [28 x i8] } { i32 104, [28 x i8] zeroinitializer }, align 32
@__param_inline_thold = internal constant %struct.kernel_param { ptr @__param_str_inline_thold, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @inline_thold } }, section "__param", align 4
@__UNIQUE_ID_inline_tholdtype360 = internal constant [35 x i8] c"mlx4_en.parmtype=inline_thold:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_inline_thold361 = internal constant [88 x i8] c"mlx4_en.parm=inline_thold:Threshold for using inline data (range: 17-104, default: 104)\00", section ".modinfo", align 1
@en_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s%s: %s: %pV\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"en_print\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/mellanox/mlx4/en_main.c\00", [51 x i8] zeroinitializer }, align 32
@en_print._entry_ptr = internal global ptr @en_print._entry, section ".printk_index", align 4
@en_print._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s%s: %s: Port %d: %pV\00", [41 x i8] zeroinitializer }, align 32
@en_print._entry_ptr.8 = internal global ptr @en_print._entry.6, section ".printk_index", align 4
@mlx4_en_update_loopback_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014mlx4_en %s: failed to change mcast loopback\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx4_en_update_loopback_state\00", [34 x i8] zeroinitializer }, align 32
@mlx4_en_update_loopback_state._entry_ptr = internal global ptr @mlx4_en_update_loopback_state._entry, section ".printk_index", align 4
@mlx4_en_interface = internal global { %struct.mlx4_interface, [60 x i8] } { %struct.mlx4_interface { ptr @mlx4_en_add, ptr @mlx4_en_remove, ptr @mlx4_en_event, ptr @mlx4_en_get_netdev, ptr @mlx4_en_activate, %struct.list_head zeroinitializer, i32 1, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_mlx4_en__364_396_mlx4_en_init6 = internal global ptr @mlx4_en_init, section ".initcall6.init", align 4
@__exitcall_mlx4_en_cleanup = internal global ptr @mlx4_en_cleanup, section ".exitcall.exit", align 4
@mlx4_en_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlx4_en_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlx4_en_add\00", [20 x i8] zeroinitializer }, align 32
@mlx4_en_add._entry_ptr = internal global ptr @mlx4_en_add._entry, section ".printk_index", align 4
@mlx4_en_version = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlx4_en: Mellanox ConnectX HCA Ethernet driver v4.0-0\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx4_en_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mdev->uar_lock\00", [16 x i8] zeroinitializer }, align 32
@mlx4_en_add._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.5, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014mlx4_en %s: LSO not supported, please upgrade to later FW version to enable LSO\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx4_en_add._entry_ptr.16 = internal global ptr @mlx4_en_add._entry.14, section ".printk_index", align 4
@mlx4_en_add._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.5, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013mlx4_en %s: Failed allocating memory region\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx4_en_add._entry_ptr.19 = internal global ptr @mlx4_en_add._entry.17, section ".printk_index", align 4
@mlx4_en_add._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.5, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013mlx4_en %s: Failed enabling memory region\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx4_en_add._entry_ptr.22 = internal global ptr @mlx4_en_add._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@mlx4_en_add.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mdev->state_lock\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx4_en_get_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014mlx4_en %s: UDP RSS is not supported on this device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx4_en_get_profile\00", [44 x i8] zeroinitializer }, align 32
@mlx4_en_get_profile._entry_ptr = internal global ptr @mlx4_en_get_profile._entry, section ".printk_index", align 4
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@mlx4_en_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013mlx4_en %s: Internal error detected, restarting device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlx4_en_event\00", [18 x i8] zeroinitializer }, align 32
@mlx4_en_event._entry_ptr = internal global ptr @mlx4_en_event._entry, section ".printk_index", align 4
@mlx4_en_event._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.5, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014mlx4_en %s: Unhandled event %d for port %d\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx4_en_event._entry_ptr.32 = internal global ptr @mlx4_en_event._entry.30, section ".printk_index", align 4
@mlx4_en_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016mlx4_en %s: Activating port:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlx4_en_activate\00", [47 x i8] zeroinitializer }, align 32
@mlx4_en_activate._entry_ptr = internal global ptr @mlx4_en_activate._entry, section ".printk_index", align 4
@mlx4_en_activate._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.5, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013mlx4_en %s: Failed to create notifier\0A\00", [55 x i8] zeroinitializer }, align 32
@mlx4_en_activate._entry_ptr.37 = internal global ptr @mlx4_en_activate._entry.35, section ".printk_index", align 4
@mlx4_en_verify_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"\014mlx4_en: WARNING: illegal module parameter pfctx 0x%x - should be in range 0-0x%x, will be changed to default (0)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx4_en_verify_params\00", [42 x i8] zeroinitializer }, align 32
@mlx4_en_verify_params._entry_ptr = internal global ptr @mlx4_en_verify_params._entry, section ".printk_index", align 4
@mlx4_en_verify_params._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.5, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"\014mlx4_en: WARNING: illegal module parameter pfcrx 0x%x - should be in range 0-0x%x, will be changed to default (0)\0A\00", [43 x i8] zeroinitializer }, align 32
@mlx4_en_verify_params._entry_ptr.42 = internal global ptr @mlx4_en_verify_params._entry.40, section ".printk_index", align 4
@mlx4_en_verify_params._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.5, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"\014mlx4_en: WARNING: illegal module parameter inline_thold %d - should be in range %d-%d, will be changed to default (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx4_en_verify_params._entry_ptr.45 = internal global ptr @mlx4_en_verify_params._entry.43, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 5, i64 6]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 49, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [8 x i8] c"udp_rss\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 66, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"pfctx\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 70, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"pfcrx\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 72, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"inline_thold\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 75, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 92, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 95, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 145, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"mlx4_en_interface\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 353, i32 30 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 275, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"mlx4_en_version\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 51, i32 19 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 291, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 300, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 305, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 309, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 327, i32 20 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 333, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 162, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 212, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 222, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 257, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 266, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 365, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 371, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [48 x i8] c"../drivers/net/ethernet/mellanox/mlx4/en_main.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 377, i32 3 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author349, ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file351, ptr @__UNIQUE_ID_inline_thold361, ptr @__UNIQUE_ID_inline_tholdtype360, ptr @__UNIQUE_ID_license352, ptr @__UNIQUE_ID_pfcrx359, ptr @__UNIQUE_ID_pfcrxtype358, ptr @__UNIQUE_ID_pfctx357, ptr @__UNIQUE_ID_pfctxtype356, ptr @__UNIQUE_ID_udp_rss355, ptr @__UNIQUE_ID_udp_rsstype354, ptr @__UNIQUE_ID_version353, ptr @__exitcall_mlx4_en_cleanup, ptr @__initcall__kmod_mlx4_en__364_396_mlx4_en_init6, ptr @__modver_attr, ptr @__param_inline_thold, ptr @__param_pfcrx, ptr @__param_pfctx, ptr @__param_udp_rss, ptr @en_print._entry, ptr @en_print._entry.6, ptr @en_print._entry_ptr, ptr @en_print._entry_ptr.8, ptr @mlx4_en_activate._entry, ptr @mlx4_en_activate._entry.35, ptr @mlx4_en_activate._entry_ptr, ptr @mlx4_en_activate._entry_ptr.37, ptr @mlx4_en_add._entry, ptr @mlx4_en_add._entry.14, ptr @mlx4_en_add._entry.17, ptr @mlx4_en_add._entry.20, ptr @mlx4_en_add._entry_ptr, ptr @mlx4_en_add._entry_ptr.16, ptr @mlx4_en_add._entry_ptr.19, ptr @mlx4_en_add._entry_ptr.22, ptr @mlx4_en_cleanup, ptr @mlx4_en_event._entry, ptr @mlx4_en_event._entry.30, ptr @mlx4_en_event._entry_ptr, ptr @mlx4_en_event._entry_ptr.32, ptr @mlx4_en_get_profile._entry, ptr @mlx4_en_get_profile._entry_ptr, ptr @mlx4_en_update_loopback_state._entry, ptr @mlx4_en_update_loopback_state._entry_ptr, ptr @mlx4_en_verify_params._entry, ptr @mlx4_en_verify_params._entry.40, ptr @mlx4_en_verify_params._entry.43, ptr @mlx4_en_verify_params._entry_ptr, ptr @mlx4_en_verify_params._entry_ptr.42, ptr @mlx4_en_verify_params._entry_ptr.45, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @udp_rss, ptr @pfctx, ptr @pfcrx, ptr @inline_thold, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @mlx4_en_interface, ptr @.str.11, ptr @.str.12, ptr @mlx4_en_version, ptr @mlx4_en_add.__key, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @mlx4_en_add.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_rss to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfctx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfcrx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inline_thold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @en_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @en_print._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_update_loopback_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_interface to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_version to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_add._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_add._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_add._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_add.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_get_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_event._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_activate._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_verify_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_verify_params._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_verify_params._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @en_print(ptr noundef %level, ptr nocapture noundef readonly %priv, ptr noundef %format, ...) local_unnamed_addr #1 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %vaf = alloca %struct.va_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #9
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #9
  %1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %format, ptr %vaf, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %1, align 4
  %registered = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 30
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %registered, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %level, ptr noundef nonnull @.str.1, ptr noundef %7, ptr noundef nonnull %vaf) #12
  br label %if.end

do.end3:                                          ; preds = %entry
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %pdev = getelementptr inbounds %struct.mlx4_en_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end3.dev_name.exit_crit_edge

do.end3.dev_name.exit_crit_edge:                  ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %14 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end3.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %do.end3.dev_name.exit_crit_edge ]
  %port = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %level, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i, i32 noundef %17, ptr noundef nonnull %vaf) #12
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %do.end
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_update_loopback_state(ptr noundef %dev, i64 noundef %features) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %and = and i64 %features, 4398046511104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %ctrl_flags1 = getelementptr i8, ptr %dev, i32 61436
  %0 = ptrtoint ptr %ctrl_flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl_flags1, align 4
  %and2 = and i32 %1, -2
  %not.tobool.not = xor i1 %tobool.not, true
  %masksel = zext i1 %not.tobool.not to i32
  %and2.sink = or i32 %and2, %masksel
  store i32 %and2.sink, ptr %ctrl_flags1, align 4
  %flags = getelementptr i8, ptr %dev, i32 61440
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and3 = and i32 %3, -13
  store i32 %and3, ptr %flags, align 8
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not = icmp ne i32 %and.i, 0
  %10 = and i1 %tobool.not, %tobool6.not
  br i1 %10, label %land.lhs.true9, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true9:                                   ; preds = %entry
  %validate_loopback = getelementptr i8, ptr %dev, i32 51584
  %11 = ptrtoint ptr %validate_loopback to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %validate_loopback, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true9.if.end14_crit_edge

land.lhs.true9.if.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  %or13 = or i32 %and3, 8
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or13, ptr %flags, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true9.if.end14_crit_edge, %entry.if.end14_crit_edge
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %flags.i77 = getelementptr inbounds %struct.mlx4_dev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i77 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i77, align 4
  %and.i78 = and i32 %17, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool18.not = icmp eq i32 %and.i78, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end14.if.then21_crit_edge

if.end14.if.then21_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end14
  %validate_loopback19 = getelementptr i8, ptr %dev, i32 51584
  %18 = ptrtoint ptr %validate_loopback19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %validate_loopback19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp eq i32 %19, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.end14.if.then21_crit_edge
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %or23 = or i32 %21, 4
  store i32 %or23, ptr %flags, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %lor.lhs.false.if.end24_crit_edge
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #9
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %25, i32 0, i32 3, i32 61
  %26 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %flags2, align 8
  %and28 = and i64 %27, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28)
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.end24.if.end52_crit_edge, label %land.lhs.true30

if.end24.if.end52_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true30:                                  ; preds = %if.end24
  %indir_qp = getelementptr i8, ptr %dev, i32 61428
  %28 = ptrtoint ptr %indir_qp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %indir_qp, align 4
  %tobool31.not = icmp eq ptr %29, null
  br i1 %tobool31.not, label %land.lhs.true30.if.end52_crit_edge, label %land.lhs.true32

land.lhs.true30.if.end52_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true32:                                  ; preds = %land.lhs.true30
  %qpn = getelementptr inbounds %struct.mlx4_qp, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qpn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool35.not = icmp eq i32 %31, 0
  br i1 %tobool35.not, label %land.lhs.true32.if.end52_crit_edge, label %if.then36

land.lhs.true32.if.end52_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then36:                                        ; preds = %land.lhs.true32
  %and.lobit = lshr exact i64 %and, 42
  %32 = trunc i64 %and.lobit to i32
  %rx_ring_num = getelementptr i8, ptr %dev, i32 61460
  %33 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp79.not = icmp eq i32 %34, 0
  br i1 %cmp79.not, label %if.then36.if.end52_crit_edge, label %if.then36.for.body_crit_edge

if.then36.for.body_crit_edge:                     ; preds = %if.then36
  br label %for.body

if.then36.if.end52_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then36.for.body_crit_edge
  %err.081 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.then36.for.body_crit_edge ]
  %i.080 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then36.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 39, i32 1, i32 %i.080
  %call41 = tail call i32 @mlx4_en_change_mcast_lb(ptr noundef %add.ptr.i, ptr noundef %arrayidx, i32 noundef %32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.081)
  %tobool42.not = icmp eq i32 %err.081, 0
  %spec.select = select i1 %tobool42.not, i32 %call41, i32 %err.081
  %inc = add nuw i32 %i.080, 1
  %35 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_ring_num, align 4
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %phi.cmp = icmp eq i32 %spec.select, 0
  br i1 %phi.cmp, label %for.end.if.end52_crit_edge, label %do.end

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.end:                                           ; preds = %for.end
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %pdev = getelementptr inbounds %struct.mlx4_en_dev, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44, i32 3
  %41 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %43 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev48, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %44, %if.end.i ], [ %42, %do.end.dev_name.exit_crit_edge ]
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %retval.0.i) #12
  br label %if.end52

if.end52:                                         ; preds = %dev_name.exit, %for.end.if.end52_crit_edge, %if.then36.if.end52_crit_edge, %land.lhs.true32.if.end52_crit_edge, %land.lhs.true30.if.end52_crit_edge, %if.end24.if.end52_crit_edge
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 8
  %state_lock54 = getelementptr inbounds %struct.mlx4_en_dev, ptr %46, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %state_lock54) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_change_mcast_lb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_cleanup() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mlx4_unregister_interface(ptr noundef nonnull @mlx4_en_interface) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_unregister_interface(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pfctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %0)
  %cmp.i = icmp ugt i32 %0, 255
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %0, i32 noundef 255) #12
  store i32 0, ptr @pfctx, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %1 = load i32, ptr @pfcrx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp1.i = icmp ugt i32 %1, 255
  br i1 %cmp1.i, label %do.end4.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

do.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %1, i32 noundef 255) #12
  store i32 0, ptr @pfcrx, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end4.i, %if.end.i.if.end7.i_crit_edge
  %2 = load i32, ptr @inline_thold, align 4
  %3 = add i32 %2, -105
  call void @__sanitizer_cov_trace_const_cmp4(i32 -88, i32 %3)
  %4 = icmp ult i32 %3, -88
  br i1 %4, label %do.end12.i, label %if.end7.i.mlx4_en_verify_params.exit_crit_edge

if.end7.i.mlx4_en_verify_params.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx4_en_verify_params.exit

do.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %2, i32 noundef 17, i32 noundef 104, i32 noundef 104) #12
  store i32 104, ptr @inline_thold, align 4
  br label %mlx4_en_verify_params.exit

mlx4_en_verify_params.exit:                       ; preds = %do.end12.i, %if.end7.i.mlx4_en_verify_params.exit_crit_edge
  tail call void @mlx4_en_init_ptys2ethtool_map() #9
  %call = tail call i32 @mlx4_register_interface(ptr noundef nonnull @mlx4_en_interface) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx4_en_add(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b158 = load i1, ptr @mlx4_en_add.__already_done, align 1
  br i1 %.b158, label %entry.if.end_crit_edge, label %if.then, !prof !132

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mlx4_en_add.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @mlx4_en_version) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 728) #13
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %priv_pdn = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 14
  %call16 = tail call i32 @mlx4_pd_alloc(ptr noundef %dev, ptr noundef %priv_pdn) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_free_dev_crit_edge

if.end15.err_free_dev_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_dev

if.end19:                                         ; preds = %if.end15
  %priv_uar = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 12
  %call20 = tail call i32 @mlx4_uar_alloc(ptr noundef %dev, ptr noundef %priv_uar) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.err_pd_crit_edge

if.end19.err_pd_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pd

if.end23:                                         ; preds = %if.end19
  %1 = ptrtoint ptr %priv_uar to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %priv_uar, align 4
  %shl = shl i32 %2, 12
  %call25 = tail call ptr @ioremap(i32 noundef %shl, i32 noundef 4096) #9
  %uar_map = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 11
  %3 = ptrtoint ptr %uar_map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call25, ptr %uar_map, align 8
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end23.err_uar_crit_edge, label %do.body30

if.end23.err_uar_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_uar

do.body30:                                        ; preds = %if.end23
  %uar_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %uar_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @mlx4_en_add.__key, i16 noundef signext 3) #9
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call7.i.i, align 8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %dma_device = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %dma_device to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev35, ptr %dma_device, align 4
  %10 = load ptr, ptr %6, align 4
  %pdev38 = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %pdev38 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %pdev38, align 4
  %device_up = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %device_up to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %device_up, align 8
  %flags = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 60
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %flags, align 8
  %and = and i64 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool39.not = icmp eq i64 %and, 0
  %and.lobit = lshr exact i64 %and, 15
  %15 = trunc i64 %and.lobit to i32
  %LSO_support = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %LSO_support to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %LSO_support, align 4
  br i1 %tobool39.not, label %do.end49, label %do.body30.if.end55_crit_edge

do.body30.if.end55_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.end49:                                         ; preds = %do.body30
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end49.dev_name.exit_crit_edge

do.end49.dev_name.exit_crit_edge:                 ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %19 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev52, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end49.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.end.i ], [ %18, %do.end49.dev_name.exit_crit_edge ]
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %retval.0.i) #12
  br label %if.end55

if.end55:                                         ; preds = %dev_name.exit, %do.body30.if.end55_crit_edge
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %23 = ptrtoint ptr %priv_pdn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %priv_pdn, align 8
  %mr = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 13
  %call58 = tail call i32 @mlx4_mr_alloc(ptr noundef %22, i32 noundef %24, i64 noundef 0, i64 noundef -1, i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef %mr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end69, label %do.end63

do.end63:                                         ; preds = %if.end55
  %25 = ptrtoint ptr %pdev38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev38, align 4
  %init_name.i159 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44, i32 3
  %27 = ptrtoint ptr %init_name.i159 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i159, align 8
  %tobool.not.i160 = icmp eq ptr %28, null
  br i1 %tobool.not.i160, label %if.end.i161, label %do.end63.dev_name.exit163_crit_edge

do.end63.dev_name.exit163_crit_edge:              ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit163

if.end.i161:                                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #11
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %29 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev66, align 4
  br label %dev_name.exit163

dev_name.exit163:                                 ; preds = %if.end.i161, %do.end63.dev_name.exit163_crit_edge
  %retval.0.i162 = phi ptr [ %30, %if.end.i161 ], [ %28, %do.end63.dev_name.exit163_crit_edge ]
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %retval.0.i162) #12
  br label %err_map

if.end69:                                         ; preds = %if.end55
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %call72 = tail call i32 @mlx4_mr_enable(ptr noundef %32, ptr noundef %mr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end83, label %do.end77

do.end77:                                         ; preds = %if.end69
  %33 = ptrtoint ptr %pdev38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev38, align 4
  %init_name.i164 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44, i32 3
  %35 = ptrtoint ptr %init_name.i164 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i164, align 8
  %tobool.not.i165 = icmp eq ptr %36, null
  br i1 %tobool.not.i165, label %if.end.i166, label %do.end77.dev_name.exit168_crit_edge

do.end77.dev_name.exit168_crit_edge:              ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit168

if.end.i166:                                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #11
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %37 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev80, align 4
  br label %dev_name.exit168

dev_name.exit168:                                 ; preds = %if.end.i166, %do.end77.dev_name.exit168_crit_edge
  %retval.0.i167 = phi ptr [ %38, %if.end.i166 ], [ %36, %do.end77.dev_name.exit168_crit_edge ]
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %retval.0.i167) #12
  br label %err_mr

if.end83:                                         ; preds = %if.end69
  %profile.i = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7
  %39 = load i32, ptr @udp_rss, align 4
  %40 = ptrtoint ptr %profile.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %profile.i, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %41 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %41)
  %cmp.i.i.not.i = icmp eq i64 %41, -1
  br i1 %cmp.i.i.not.i, label %cond.false.i, label %if.end83.cond.end4.i_crit_edge

if.end83.cond.end4.i_crit_edge:                   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end4.i

cond.false.i:                                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %42 = load volatile i32, ptr @__num_online_cpus, align 4
  %43 = tail call i32 @llvm.smin.i32(i32 %42, i32 32) #9
  %44 = ptrtoint ptr %profile.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr.i = load i32, ptr %profile.i, align 4
  %phi.cast.i = trunc i32 %43 to i8
  br label %cond.end4.i

cond.end4.i:                                      ; preds = %cond.false.i, %if.end83.cond.end4.i_crit_edge
  %45 = phi i32 [ %39, %if.end83.cond.end4.i_crit_edge ], [ %.pr.i, %cond.false.i ]
  %cond5.i = phi i8 [ 1, %if.end83.cond.end4.i_crit_edge ], [ %phi.cast.i, %cond.false.i ]
  %max_num_tx_rings_p_up.i = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 5
  %46 = ptrtoint ptr %max_num_tx_rings_p_up.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %cond5.i, ptr %max_num_tx_rings_p_up.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i169 = icmp eq i32 %45, 0
  br i1 %tobool.not.i169, label %cond.end4.i.if.end.i170_crit_edge, label %land.lhs.true.i

cond.end4.i.if.end.i170_crit_edge:                ; preds = %cond.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i170

land.lhs.true.i:                                  ; preds = %cond.end4.i
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7.i.i, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %48, i32 0, i32 3, i32 60
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %50, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool7.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool7.not.i, label %do.end.i, label %land.lhs.true.i.if.end.i170_crit_edge

land.lhs.true.i.if.end.i170_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i170

do.end.i:                                         ; preds = %land.lhs.true.i
  %51 = ptrtoint ptr %pdev38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev38, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44, i32 3
  %53 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %55 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev9.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %56, %if.end.i.i ], [ %54, %do.end.i.dev_name.exit.i_crit_edge ]
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %retval.0.i.i) #12
  %57 = ptrtoint ptr %profile.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %profile.i, align 4
  br label %if.end.i170

if.end.i170:                                      ; preds = %dev_name.exit.i, %land.lhs.true.i.if.end.i170_crit_edge, %cond.end4.i.if.end.i170_crit_edge
  %58 = load i32, ptr @pfcrx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool15.not.i = icmp eq i32 %58, 0
  br i1 %tobool15.not.i, label %lor.rhs22.i, label %lor.end.i

lor.end.i:                                        ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #11
  %conv18.i = trunc i32 %58 to i8
  br label %lor.end24.i

lor.rhs22.i:                                      ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #11
  %59 = load i32, ptr @pfctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool16.i = icmp eq i32 %59, 0
  %conv17.i171 = zext i1 %tobool16.i to i8
  br label %lor.end24.i

lor.end24.i:                                      ; preds = %lor.rhs22.i, %lor.end.i
  %.sink = phi i8 [ %conv17.i171, %lor.rhs22.i ], [ 0, %lor.end.i ]
  %conv18.i.sink = phi i8 [ 0, %lor.rhs22.i ], [ %conv18.i, %lor.end.i ]
  %60 = phi i1 [ %tobool16.i, %lor.rhs22.i ], [ false, %lor.end.i ]
  %61 = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 1, i32 6
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %.sink, ptr %61, align 1
  %63 = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 1, i32 7
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv18.i.sink, ptr %63, align 2
  %conv27.i = zext i1 %60 to i8
  %tx_pause.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 1, i32 8
  %65 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv27.i, ptr %tx_pause.i, align 1
  %66 = load i32, ptr @pfctx, align 4
  %conv30.i = trunc i32 %66 to i8
  %tx_ppp.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 1, i32 9
  %67 = ptrtoint ptr %tx_ppp.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv30.i, ptr %tx_ppp.i, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %68 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %68)
  %cmp.i.i102.not.i = icmp eq i64 %68, -1
  %spec.select.i = select i1 %cmp.i.i102.not.i, i32 1024, i32 64
  %spec.select108.i = select i1 %cmp.i.i102.not.i, i32 1024, i32 128
  %69 = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 1, i32 3
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %spec.select.i, ptr %69, align 4
  %71 = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 1, i32 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %spec.select108.i, ptr %71, align 8
  %num_up.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 1, i32 10
  %73 = ptrtoint ptr %num_up.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %num_up.i, align 1
  %74 = ptrtoint ptr %max_num_tx_rings_p_up.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %max_num_tx_rings_p_up.i, align 1
  %num_tx_rings_p_up.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 1, i32 5
  %76 = ptrtoint ptr %num_tx_rings_p_up.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %num_tx_rings_p_up.i, align 4
  %conv52.i = zext i8 %75 to i32
  %tx_ring_num.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 1, i32 1
  %77 = ptrtoint ptr %tx_ring_num.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv52.i, ptr %tx_ring_num.i, align 8
  %rss_rings.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 1, i32 11
  %78 = ptrtoint ptr %rss_rings.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %rss_rings.i, align 4
  %79 = load i32, ptr @inline_thold, align 4
  %inline_thold.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 1, i32 12
  %80 = ptrtoint ptr %inline_thold.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %inline_thold.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool16.1.i = icmp eq i32 %66, 0
  %narrow = select i1 %tobool15.not.i, i1 %tobool16.1.i, i1 false
  %.sink182 = zext i1 %narrow to i8
  %81 = select i1 %tobool15.not.i, i1 %tobool16.1.i, i1 false
  %82 = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 2, i32 6
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %.sink182, ptr %82, align 1
  %84 = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 2, i32 7
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv18.i.sink, ptr %84, align 2
  %conv27.1.i = zext i1 %81 to i8
  %tx_pause.1.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 2, i32 8
  %86 = ptrtoint ptr %tx_pause.1.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv27.1.i, ptr %tx_pause.1.i, align 1
  %tx_ppp.1.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 2, i32 9
  %87 = ptrtoint ptr %tx_ppp.1.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv30.i, ptr %tx_ppp.1.i, align 4
  %88 = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 2, i32 3
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %spec.select.i, ptr %88, align 8
  %90 = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 2, i32 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %spec.select108.i, ptr %90, align 4
  %num_up.1.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 2, i32 10
  %92 = ptrtoint ptr %num_up.1.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %num_up.1.i, align 1
  %num_tx_rings_p_up.1.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 2, i32 5
  %93 = ptrtoint ptr %num_tx_rings_p_up.1.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %75, ptr %num_tx_rings_p_up.1.i, align 8
  %tx_ring_num.1.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 2, i32 1
  %94 = ptrtoint ptr %tx_ring_num.1.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv52.i, ptr %tx_ring_num.1.i, align 4
  %rss_rings.1.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 2, i32 11
  %95 = ptrtoint ptr %rss_rings.1.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %rss_rings.1.i, align 8
  %inline_thold.1.i = getelementptr %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 7, i32 6, i32 2, i32 12
  %96 = ptrtoint ptr %inline_thold.1.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %79, ptr %inline_thold.1.i, align 4
  %port_cnt = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 5
  %97 = ptrtoint ptr %port_cnt to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %port_cnt, align 4
  %num_ports = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 2
  %98 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp.not180 = icmp slt i32 %99, 1
  br i1 %cmp.not180, label %lor.end24.i.for.end_crit_edge, label %lor.end24.i.for.body_crit_edge

lor.end24.i.for.body_crit_edge:                   ; preds = %lor.end24.i
  br label %for.body

lor.end24.i.for.end_crit_edge:                    ; preds = %lor.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %lor.end24.i.for.body_crit_edge
  %i.0181 = phi i32 [ %inc90, %for.inc.for.body_crit_edge ], [ 1, %lor.end24.i.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 77, i32 %i.0181
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp86 = icmp eq i32 %101, 2
  br i1 %cmp86, label %if.then87, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then87:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %port_cnt to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port_cnt, align 4
  %inc = add i32 %103, 1
  store i32 %inc, ptr %port_cnt, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then87, %for.body.for.inc_crit_edge
  %inc90 = add i32 %i.0181, 1
  %cmp.not = icmp sgt i32 %inc90, %99
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.end24.i.for.end_crit_edge
  tail call void @mlx4_en_set_num_rx_rings(ptr noundef nonnull %call7.i.i) #9
  %call91 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.23, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.1) #9
  %workqueue = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 9
  %104 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call91, ptr %workqueue, align 8
  %tobool93.not = icmp eq ptr %call91, null
  br i1 %tobool93.not, label %for.end.err_mr_crit_edge, label %do.body96

for.end.err_mr_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_mr

do.body96:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %state_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @mlx4_en_add.__key.24) #9
  %105 = ptrtoint ptr %device_up to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %device_up, align 8
  br label %cleanup

err_mr:                                           ; preds = %for.end.err_mr_crit_edge, %dev_name.exit168
  %call101 = tail call i32 @mlx4_mr_free(ptr noundef %dev, ptr noundef %mr) #9
  br label %err_map

err_map:                                          ; preds = %err_mr, %dev_name.exit163
  %106 = ptrtoint ptr %uar_map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %uar_map, align 8
  %tobool103.not = icmp eq ptr %107, null
  br i1 %tobool103.not, label %err_map.err_uar_crit_edge, label %if.then104

err_map.err_uar_crit_edge:                        ; preds = %err_map
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_uar

if.then104:                                       ; preds = %err_map
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %107) #9
  br label %err_uar

err_uar:                                          ; preds = %if.then104, %err_map.err_uar_crit_edge, %if.end23.err_uar_crit_edge
  tail call void @mlx4_uar_free(ptr noundef %dev, ptr noundef %priv_uar) #9
  br label %err_pd

err_pd:                                           ; preds = %err_uar, %if.end19.err_pd_crit_edge
  %108 = ptrtoint ptr %priv_pdn to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %priv_pdn, align 8
  tail call void @mlx4_pd_free(ptr noundef %dev, i32 noundef %109) #9
  br label %err_free_dev

err_free_dev:                                     ; preds = %err_pd, %if.end15.err_free_dev_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_dev, %do.body96, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body96 ], [ null, %if.end.cleanup_crit_edge ], [ null, %err_free_dev ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_remove(ptr noundef %dev, ptr noundef %endev_ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #9
  %device_up = getelementptr inbounds %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 6
  %0 = ptrtoint ptr %device_up to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %device_up, align 8
  tail call void @mutex_unlock(ptr noundef %state_lock) #9
  %num_ports = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not34 = icmp slt i32 %2, 1
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 77, i32 %i.035
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp3 = icmp eq i32 %4, 2
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 3, i32 %i.035
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.then5

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mlx4_en_destroy_netdev(ptr noundef nonnull %6) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.035, 1
  %7 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports, align 4
  %cmp.not = icmp sgt i32 %inc, %8
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %workqueue = getelementptr inbounds %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 9
  %9 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %workqueue, align 8
  tail call void @destroy_workqueue(ptr noundef %10) #9
  %mr = getelementptr inbounds %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 13
  %call = tail call i32 @mlx4_mr_free(ptr noundef %dev, ptr noundef %mr) #9
  %uar_map = getelementptr inbounds %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 11
  %11 = ptrtoint ptr %uar_map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uar_map, align 8
  tail call void @iounmap(ptr noundef %12) #9
  %priv_uar = getelementptr inbounds %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 12
  tail call void @mlx4_uar_free(ptr noundef %dev, ptr noundef %priv_uar) #9
  %priv_pdn = getelementptr inbounds %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 14
  %13 = ptrtoint ptr %priv_pdn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %priv_pdn, align 8
  tail call void @mlx4_pd_free(ptr noundef %dev, i32 noundef %14) #9
  %nb = getelementptr inbounds %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 24
  %15 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nb, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %for.end.if.end13_crit_edge, label %if.then10

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @unregister_netdevice_notifier(ptr noundef %nb) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %for.end.if.end13_crit_edge
  tail call void @kfree(ptr noundef %endev_ptr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_event(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %endev_ptr, i32 noundef %event, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %sw.default [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge43
    i32 0, label %do.end
    i32 5, label %entry.cleanup_crit_edge
    i32 6, label %entry.cleanup_crit_edge44
  ]

entry.cleanup_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.sw.bb_crit_edge43:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge43
  %arrayidx = getelementptr %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 3, i32 %port
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %link_state = getelementptr i8, ptr %2, i32 51644
  %3 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %event, ptr %link_state, align 4
  %workqueue = getelementptr inbounds %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 9
  %4 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workqueue, align 8
  %linkstate_task = getelementptr i8, ptr %2, i32 62708
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %linkstate_task) #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %do.end.dev_name.exit_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %retval.0.i) #12
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp = icmp eq i32 %port, 0
  br i1 %cmp, label %sw.default.cleanup_crit_edge, label %lor.lhs.false

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.default
  %num_ports = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %port)
  %cmp9 = icmp ult i32 %13, %port
  br i1 %cmp9, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %arrayidx12 = getelementptr %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 3, i32 %port
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %lor.lhs.false10.cleanup_crit_edge, label %do.end18

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18:                                         ; preds = %lor.lhs.false10
  %pdev20 = getelementptr inbounds %struct.mlx4_en_dev, ptr %endev_ptr, i32 0, i32 1
  %16 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev20, align 4
  %init_name.i38 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44, i32 3
  %18 = ptrtoint ptr %init_name.i38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i38, align 8
  %tobool.not.i39 = icmp eq ptr %19, null
  br i1 %tobool.not.i39, label %if.end.i40, label %do.end18.dev_name.exit42_crit_edge

do.end18.dev_name.exit42_crit_edge:               ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit42

if.end.i40:                                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %20 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev21, align 4
  br label %dev_name.exit42

dev_name.exit42:                                  ; preds = %if.end.i40, %do.end18.dev_name.exit42_crit_edge
  %retval.0.i41 = phi ptr [ %21, %if.end.i40 ], [ %19, %do.end18.dev_name.exit42_crit_edge ]
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %retval.0.i41, i32 noundef %event, i32 noundef %port) #12
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit42, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %dev_name.exit, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge44
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mlx4_en_get_netdev(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %ctx, i8 noundef zeroext %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %port to i32
  %arrayidx = getelementptr %struct.mlx4_en_dev, ptr %ctx, i32 0, i32 3, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_activate(ptr nocapture noundef readonly %dev, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_ports = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not44 = icmp slt i32 %1, 1
  br i1 %cmp.not44, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr inbounds %struct.mlx4_en_dev, ptr %ctx, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 77, i32 %i.045
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %do.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %do.end.dev_name.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %retval.0.i, i32 noundef %i.045) #12
  %arrayidx5 = getelementptr %struct.mlx4_en_dev, ptr %ctx, i32 0, i32 7, i32 6, i32 %i.045
  %call6 = tail call i32 @mlx4_en_init_netdev(ptr noundef %ctx, i32 noundef %i.045, ptr noundef %arrayidx5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %dev_name.exit.for.inc_crit_edge, label %if.then7

dev_name.exit.for.inc_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then7:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx8 = getelementptr %struct.mlx4_en_dev, ptr %ctx, i32 0, i32 3, i32 %i.045
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %dev_name.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.045, 1
  %11 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_ports, align 4
  %cmp.not = icmp sgt i32 %inc, %12
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %nb = getelementptr inbounds %struct.mlx4_en_dev, ptr %ctx, i32 0, i32 24
  %13 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mlx4_en_netdev_event, ptr %nb, align 4
  %call11 = tail call i32 @register_netdevice_notifier(ptr noundef %nb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.end.if.end24_crit_edge, label %if.then13

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then13:                                        ; preds = %for.end
  %14 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %nb, align 4
  %pdev20 = getelementptr inbounds %struct.mlx4_en_dev, ptr %ctx, i32 0, i32 1
  %15 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev20, align 4
  %init_name.i39 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44, i32 3
  %17 = ptrtoint ptr %init_name.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i39, align 8
  %tobool.not.i40 = icmp eq ptr %18, null
  br i1 %tobool.not.i40, label %if.end.i41, label %if.then13.dev_name.exit43_crit_edge

if.then13.dev_name.exit43_crit_edge:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit43

if.end.i41:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %19 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev21, align 4
  br label %dev_name.exit43

dev_name.exit43:                                  ; preds = %if.end.i41, %if.then13.dev_name.exit43_crit_edge
  %retval.0.i42 = phi ptr [ %20, %if.end.i41 ], [ %18, %if.then13.dev_name.exit43_crit_edge ]
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %retval.0.i42) #12
  br label %if.end24

if.end24:                                         ; preds = %dev_name.exit43, %for.end.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_pd_alloc(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_uar_alloc(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mr_alloc(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mr_enable(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_set_num_rx_rings(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mr_free(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_uar_free(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_pd_free(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_destroy_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_init_netdev(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_netdev_event(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_init_ptys2ethtool_map() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_register_interface(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !58, !60, !61, !62, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__UNIQUE_ID_author349, !1, !"__UNIQUE_ID_author349", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 46, i32 1}
!2 = !{ptr @__UNIQUE_ID_description350, !3, !"__UNIQUE_ID_description350", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 47, i32 1}
!4 = !{ptr @__UNIQUE_ID_file351, !5, !"__UNIQUE_ID_file351", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 48, i32 1}
!6 = !{ptr @__UNIQUE_ID_license352, !5, !"__UNIQUE_ID_license352", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version353, !8, !"__UNIQUE_ID_version353", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 49, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_udp_rss, !14, !"__param_udp_rss", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 66, i32 1}
!15 = !{ptr @__UNIQUE_ID_udp_rsstype354, !14, !"__UNIQUE_ID_udp_rsstype354", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_udp_rss355, !14, !"__UNIQUE_ID_udp_rss355", i1 false, i1 false}
!17 = !{ptr @__param_pfctx, !18, !"__param_pfctx", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 70, i32 1}
!19 = !{ptr @__UNIQUE_ID_pfctxtype356, !18, !"__UNIQUE_ID_pfctxtype356", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_pfctx357, !18, !"__UNIQUE_ID_pfctx357", i1 false, i1 false}
!21 = !{ptr @__param_pfcrx, !22, !"__param_pfcrx", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 72, i32 1}
!23 = !{ptr @__UNIQUE_ID_pfcrxtype358, !22, !"__UNIQUE_ID_pfcrxtype358", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_pfcrx359, !22, !"__UNIQUE_ID_pfcrx359", i1 false, i1 false}
!25 = !{ptr @__param_inline_thold, !26, !"__param_inline_thold", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 75, i32 1}
!27 = !{ptr @__UNIQUE_ID_inline_tholdtype360, !26, !"__UNIQUE_ID_inline_tholdtype360", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_inline_thold361, !26, !"__UNIQUE_ID_inline_thold361", i1 false, i1 false}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 92, i32 3}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @en_print._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @en_print._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 95, i32 3}
!37 = !{ptr @en_print._entry.6, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @en_print._entry_ptr.8, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 145, i32 4}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mlx4_en_update_loopback_state._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mlx4_en_update_loopback_state._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__initcall__kmod_mlx4_en__364_396_mlx4_en_init6, !45, !"__initcall__kmod_mlx4_en__364_396_mlx4_en_init6", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 396, i32 1}
!46 = !{ptr @__exitcall_mlx4_en_cleanup, !47, !"__exitcall_mlx4_en_cleanup", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 397, i32 1}
!48 = !{ptr @__param_str_udp_rss, !14, !"__param_str_udp_rss", i1 false, i1 false}
!49 = !{ptr @udp_rss, !14, !"udp_rss", i1 false, i1 false}
!50 = !{ptr @__param_str_pfctx, !18, !"__param_str_pfctx", i1 false, i1 false}
!51 = !{ptr @pfctx, !18, !"pfctx", i1 false, i1 false}
!52 = !{ptr @__param_str_pfcrx, !22, !"__param_str_pfcrx", i1 false, i1 false}
!53 = !{ptr @pfcrx, !22, !"pfcrx", i1 false, i1 false}
!54 = !{ptr @__param_str_inline_thold, !26, !"__param_str_inline_thold", i1 false, i1 false}
!55 = !{ptr @inline_thold, !26, !"inline_thold", i1 false, i1 false}
!56 = !{ptr @mlx4_en_interface, !57, !"mlx4_en_interface", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 353, i32 30}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 275, i32 2}
!60 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mlx4_en_add._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @mlx4_en_add._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @mlx4_en_add.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 291, i32 2}
!66 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 300, i32 3}
!69 = !{ptr @mlx4_en_add._entry.14, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mlx4_en_add._entry_ptr.16, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 305, i32 3}
!73 = !{ptr @mlx4_en_add._entry.17, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @mlx4_en_add._entry_ptr.19, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 309, i32 3}
!77 = !{ptr @mlx4_en_add._entry.20, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @mlx4_en_add._entry_ptr.22, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 327, i32 20}
!81 = !{ptr @mlx4_en_add.__key.24, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 333, i32 2}
!83 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mlx4_en_version, !85, !"mlx4_en_version", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 51, i32 19}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 162, i32 3}
!88 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mlx4_en_get_profile._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @mlx4_en_get_profile._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.28, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 212, i32 3}
!93 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mlx4_en_event._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @mlx4_en_event._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 222, i32 3}
!98 = !{ptr @mlx4_en_event._entry.30, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mlx4_en_event._entry_ptr.32, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 257, i32 3}
!102 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mlx4_en_activate._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @mlx4_en_activate._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 266, i32 3}
!107 = !{ptr @mlx4_en_activate._entry.35, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @mlx4_en_activate._entry_ptr.37, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 365, i32 3}
!111 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mlx4_en_verify_params._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @mlx4_en_verify_params._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 371, i32 3}
!116 = !{ptr @mlx4_en_verify_params._entry.40, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @mlx4_en_verify_params._entry_ptr.42, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_main.c", i32 377, i32 3}
!120 = !{ptr @mlx4_en_verify_params._entry.43, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mlx4_en_verify_params._entry_ptr.45, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
!132 = !{!"branch_weights", i32 2000, i32 1}
