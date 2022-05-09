; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dpaa2_phc_index\22, \22a\22\09"
module asm "\09.weak\09__crc_dpaa2_phc_index\09\09\09\09"
module asm "\09.long\09__crc_dpaa2_phc_index\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dpaa2_phc_index:\09\09\09\09\09"
module asm "\09.asciz \09\22dpaa2_phc_index\22\09\09\09\09\09"
module asm "__kstrtabns_dpaa2_phc_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dpaa2_mac = type { ptr, %struct.dpmac_link_state, ptr, ptr, %struct.dpmac_attr, %struct.phylink_config, ptr, i32, i32, ptr, ptr }
%struct.dpmac_link_state = type { i32, i64, i32, i32, i64, i64 }
%struct.dpmac_attr = type { i16, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.dpaa2_eth_channel = type { %struct.dpaa2_io_notification_ctx, ptr, i32, i32, %struct.napi_struct, ptr, ptr, ptr, i32, %struct.dpaa2_eth_ch_stats, %struct.dpaa2_eth_ch_xdp, [120 x i8], %struct.xdp_rxq_info, ptr, [7 x i64], i32, [60 x i8] }
%struct.dpaa2_io_notification_ctx = type { ptr, i32, i32, i32, i32, i64, %struct.list_head, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.dpaa2_eth_ch_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dpaa2_eth_ch_xdp = type { ptr, i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpaa2_eth_priv = type { ptr, i8, [145 x %struct.dpaa2_eth_fq], ptr, i8, [16 x ptr], ptr, %struct.dpni_attr, i16, i16, i16, ptr, i16, i16, ptr, i32, i8, i16, ptr, %struct.cpumask, ptr, ptr, i16, i8, i8, %struct.dpni_link_state, i8, ptr, i64, i64, ptr, i8, i8, i8, i8, %struct.ieee_pfc, ptr, %struct.dpaa2_debugfs, ptr, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.mutex, ptr, ptr, %struct.devlink_port, i32 }
%struct.dpaa2_eth_fq = type { i32, i32, [8 x i32], i16, i8, i32, i32, i32, ptr, i32, ptr, %struct.dpaa2_eth_fq_stats, %struct.dpaa2_eth_xdp_fds, %struct.dpaa2_eth_xdp_fds }
%struct.dpaa2_eth_fq_stats = type { i64 }
%struct.dpaa2_eth_xdp_fds = type { [16 x %struct.dpaa2_fd], i32 }
%struct.dpaa2_fd = type { %union.anon.125 }
%union.anon.125 = type { %struct.dpaa2_fd_simple }
%struct.dpaa2_fd_simple = type { i64, i32, i16, i16, i32, i32, i64 }
%struct.dpni_attr = type { i32, i8, i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.dpni_link_state = type { i32, i64, i32 }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }
%struct.dpaa2_debugfs = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.108 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.108 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.dpni_link_cfg = type { i32, i64 }
%union.dpni_statistics = type { %struct.anon.133 }
%struct.anon.133 = type { [7 x i64] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.118, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.118 = type { i32 }
%struct.dpaa2_eth_cls_rule = type { %struct.ethtool_rx_flow_spec, i8 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.dpni_rule_cfg = type { i64, i64, i8 }
%struct.dpni_fs_action_cfg = type { i64, i16, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.page = type { i32, %union.anon.26, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }

@dpaa2_phc_index = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__kstrtab_dpaa2_phc_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_dpaa2_phc_index = external dso_local constant [0 x i8], align 1
@__ksymtab_dpaa2_phc_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dpaa2_phc_index to i32), ptr @__kstrtab_dpaa2_phc_index, ptr @__kstrtabns_dpaa2_phc_index }, section "___ksymtab+dpaa2_phc_index", align 4
@dpaa2_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 513, i32 0, ptr @dpaa2_eth_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_eth_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_eth_get_coalesce, ptr @dpaa2_eth_set_coalesce, ptr null, ptr null, ptr null, ptr @dpaa2_eth_get_pauseparam, ptr @dpaa2_eth_set_pauseparam, ptr null, ptr @dpaa2_eth_get_strings, ptr null, ptr @dpaa2_eth_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_eth_get_sset_count, ptr @dpaa2_eth_get_rxnfc, ptr @dpaa2_eth_set_rxnfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_eth_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_eth_get_tunable, ptr @dpaa2_eth_set_tunable, ptr null, ptr null, ptr @dpaa2_eth_get_link_ksettings, ptr @dpaa2_eth_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl_dpaa2_eth\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u.%u\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"No pause frame support for DPNI version < %d.%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dpni_set_link_state failed\0A\00", [36 x i8] zeroinitializer }, align 32
@dpaa2_ethtool_stats = internal global { [22 x [32 x i8]], [160 x i8] } { [22 x [32 x i8]] [[32 x i8] c"[hw] rx frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] rx bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] rx mcast frames\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] rx mcast bytes\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] rx bcast frames\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] rx bcast bytes\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] tx frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] tx bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] tx mcast frames\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] tx mcast bytes\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] tx bcast frames\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] tx bcast bytes\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] rx filtered frames\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] rx discarded frames\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] rx nobuffer discards\00\00\00\00\00\00\00", [32 x i8] c"[hw] tx discarded frames\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] tx confirmed frames\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] tx dequeued bytes\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] tx dequeued frames\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] tx rejected bytes\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] tx rejected frames\00\00\00\00\00\00\00\00\00", [32 x i8] c"[hw] tx pending frames\00\00\00\00\00\00\00\00\00\00"], [160 x i8] zeroinitializer }, align 32
@dpaa2_ethtool_extras = internal global { [21 x [32 x i8]], [160 x i8] } { [21 x [32 x i8]] [[32 x i8] c"[drv] tx conf frames\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[drv] tx conf bytes\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[drv] tx sg frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[drv] tx sg bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[drv] rx sg frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[drv] rx sg bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[drv] tx converted sg frames\00\00\00\00", [32 x i8] c"[drv] tx converted sg bytes\00\00\00\00\00", [32 x i8] c"[drv] enqueue portal busy\00\00\00\00\00\00\00", [32 x i8] c"[drv] dequeue portal busy\00\00\00\00\00\00\00", [32 x i8] c"[drv] channel pull errors\00\00\00\00\00\00\00", [32 x i8] c"[drv] cdan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[drv] xdp drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[drv] xdp tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[drv] xdp tx errors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[drv] xdp redirect\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[qbman] rx pending frames\00\00\00\00\00\00\00", [32 x i8] c"[qbman] rx pending bytes\00\00\00\00\00\00\00\00", [32 x i8] c"[qbman] tx conf pending frames\00\00", [32 x i8] c"[qbman] tx conf pending bytes\00\00\00", [32 x i8] c"[qbman] buffer count\00\00\00\00\00\00\00\00\00\00\00\00"], [160 x i8] zeroinitializer }, align 32
@__const.dpaa2_eth_get_ethtool_stats.dpni_stats_page_size = private unnamed_addr constant [7 x i32] [i32 48, i32 48, i32 40, i32 32, i32 16, i32 40, i32 8], align 4
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dpni_get_stats(%d) failed\0A\00", [37 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FQ query error %d\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Buffer count query error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"No support for multiple FS keys, need to delete existing rules\0A\00", [32 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@dpaa2_ptp = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.10 = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 42, i64 49, i64 50]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 13, i64 18]
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"dpaa2_phc_index\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 761, i32 5 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"dpaa2_ethtool_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 877, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 75, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 78, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 148, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 175, i32 23 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"dpaa2_ethtool_stats\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 14, i32 13 }
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"dpaa2_ethtool_extras\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 41, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 263, i32 25 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 291, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 311, i32 24 }
@___asan_gen_.47 = private constant [56 x i8] c"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 586, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 326, i32 6 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_dpaa2_phc_index, ptr @dpaa2_phc_index, ptr @dpaa2_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dpaa2_ethtool_stats, ptr @dpaa2_ethtool_extras, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_phc_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ethtool_stats to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ethtool_extras to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_eth_get_drvinfo(ptr nocapture noundef readonly %net_dev, ptr noundef %drvinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #9
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %dpni_ver_major = getelementptr i8, ptr %net_dev, i32 164804
  %0 = ptrtoint ptr %dpni_ver_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dpni_ver_major, align 4
  %conv = zext i16 %1 to i32
  %dpni_ver_minor = getelementptr i8, ptr %net_dev, i32 164806
  %2 = ptrtoint ptr %dpni_ver_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dpni_ver_minor, align 2
  %conv3 = zext i16 %3 to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv3)
  %parent = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %parent6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent6, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call8 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_eth_nway_reset(ptr nocapture noundef readonly %net_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mac.i = getelementptr i8, ptr %net_dev, i32 165056
  %0 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %link_type.i = getelementptr inbounds %struct.dpaa2_mac, ptr %1, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %link_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_type.i, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch.i = icmp eq i32 %4, 2
  br i1 %switch.i, label %if.then, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %phylink = getelementptr inbounds %struct.dpaa2_mac, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phylink, align 8
  %call2 = tail call i32 @phylink_ethtool_nway_reset(ptr noundef %6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ -95, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_eth_get_coalesce(ptr nocapture noundef readonly %dev, ptr noundef %ic, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr i8, ptr %dev, i32 164720
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %dpio1 = getelementptr inbounds %struct.dpaa2_eth_channel, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpio1, align 32
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 1
  tail call void @dpaa2_io_get_irq_coalescing(ptr noundef %3, ptr noundef %rx_coalesce_usecs) #9
  %call2 = tail call i32 @dpaa2_io_get_adaptive_coalescing(ptr noundef %3) #9
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 10
  %4 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %use_adaptive_rx_coalesce, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_eth_set_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ic, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %prev_rx_usecs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_rx_usecs) #9
  %0 = ptrtoint ptr %prev_rx_usecs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %prev_rx_usecs, align 4, !annotation !39
  %channel = getelementptr i8, ptr %dev, i32 164720
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %channel, align 8
  %dpio1 = getelementptr inbounds %struct.dpaa2_eth_channel, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %dpio1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dpio1, align 32
  call void @dpaa2_io_get_irq_coalescing(ptr noundef %4, ptr noundef nonnull %prev_rx_usecs) #9
  %call2 = call i32 @dpaa2_io_get_adaptive_coalescing(ptr noundef %4) #9
  %num_channels = getelementptr i8, ptr %dev, i32 164716
  %5 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp43.not = icmp eq i8 %6, 0
  br i1 %cmp43.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 10
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx5 = getelementptr %struct.dpaa2_eth_priv, ptr %add.ptr.i, i32 0, i32 5, i32 %i.044
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5, align 4
  %dpio6 = getelementptr inbounds %struct.dpaa2_eth_channel, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %dpio6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dpio6, align 32
  %11 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @dpaa2_io_set_adaptive_coalescing(ptr noundef %10, i32 noundef %12) #9
  %13 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_coalesce_usecs, align 4
  %call7 = call i32 @dpaa2_io_set_irq_coalescing(ptr noundef %10, i32 noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %for.inc, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.044)
  %cmp945.not = icmp eq i32 %i.044, 0
  br i1 %cmp945.not, label %for.cond8.preheader.cleanup_crit_edge, label %for.cond8.preheader.for.body11_crit_edge

for.cond8.preheader.for.body11_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body11

for.cond8.preheader.cleanup_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.044, 1
  %15 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_channels, align 4
  %conv = zext i8 %16 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.cond8.preheader.for.body11_crit_edge
  %j.046 = phi i32 [ %inc17, %for.body11.for.body11_crit_edge ], [ 0, %for.cond8.preheader.for.body11_crit_edge ]
  %arrayidx13 = getelementptr %struct.dpaa2_eth_priv, ptr %add.ptr.i, i32 0, i32 5, i32 %j.046
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx13, align 4
  %dpio14 = getelementptr inbounds %struct.dpaa2_eth_channel, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %dpio14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dpio14, align 32
  %21 = ptrtoint ptr %prev_rx_usecs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prev_rx_usecs, align 4
  %call15 = call i32 @dpaa2_io_set_irq_coalescing(ptr noundef %20, i32 noundef %22) #9
  call void @dpaa2_io_set_adaptive_coalescing(ptr noundef %20, i32 noundef %call2) #9
  %inc17 = add nuw nsw i32 %j.046, 1
  %exitcond.not = icmp eq i32 %inc17, %i.044
  br i1 %exitcond.not, label %for.body11.cleanup_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11

for.body11.cleanup_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body11.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond8.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %for.cond8.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call7, %for.body11.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_rx_usecs) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_eth_get_pauseparam(ptr nocapture noundef readonly %net_dev, ptr noundef %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr i8, ptr %net_dev, i32 164864
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %options, align 8
  %mac.i = getelementptr i8, ptr %net_dev, i32 165056
  %2 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %link_type.i = getelementptr inbounds %struct.dpaa2_mac, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %link_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_type.i, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch.i = icmp eq i32 %6, 2
  br i1 %switch.i, label %if.then, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %phylink = getelementptr inbounds %struct.dpaa2_mac, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phylink, align 8
  tail call void @phylink_ethtool_get_pauseparam(ptr noundef %8, ptr noundef %pause) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = trunc i64 %1 to i32
  %10 = lshr i32 %9, 2
  %11 = and i32 %10, 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %12 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rx_pause, align 4
  %13 = lshr i32 %9, 3
  %14 = xor i32 %10, %13
  %xor.i = and i32 %14, 1
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %15 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %xor.i, ptr %tx_pause, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %16 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %autoneg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_eth_set_pauseparam(ptr noundef %net_dev, ptr noundef %pause) #0 align 64 {
entry:
  %cfg = alloca %struct.dpni_link_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfg) #9
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %cfg, align 8
  %dpni_ver_major.i = getelementptr i8, ptr %net_dev, i32 164804
  %1 = ptrtoint ptr %dpni_ver_major.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %dpni_ver_major.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %2)
  %cmp.i = icmp eq i16 %2, 7
  br i1 %cmp.i, label %if.then.i, label %entry.dpaa2_eth_cmp_dpni_ver.exit_crit_edge

entry.dpaa2_eth_cmp_dpni_ver.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpaa2_eth_cmp_dpni_ver.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dpni_ver_minor.i = getelementptr i8, ptr %net_dev, i32 164806
  %3 = ptrtoint ptr %dpni_ver_minor.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dpni_ver_minor.i, align 2
  br label %dpaa2_eth_cmp_dpni_ver.exit

dpaa2_eth_cmp_dpni_ver.exit:                      ; preds = %if.then.i, %entry.dpaa2_eth_cmp_dpni_ver.exit_crit_edge
  %.sink1.i = phi i16 [ %4, %if.then.i ], [ %2, %entry.dpaa2_eth_cmp_dpni_ver.exit_crit_edge ]
  %.sink.i = phi i32 [ -13, %if.then.i ], [ -7, %entry.dpaa2_eth_cmp_dpni_ver.exit_crit_edge ]
  %conv.i = zext i16 %.sink1.i to i32
  %sub8.i = add nsw i32 %.sink.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub8.i)
  %cmp = icmp sgt i32 %sub8.i, -1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %dpaa2_eth_cmp_dpni_ver.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %net_dev, ptr noundef nonnull @.str.2, i32 noundef 7, i32 noundef 13) #12
  br label %cleanup

if.end:                                           ; preds = %dpaa2_eth_cmp_dpni_ver.exit
  %mac.i = getelementptr i8, ptr %net_dev, i32 165056
  %5 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mac.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %land.lhs.true.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.i:                                  ; preds = %if.end
  %link_type.i = getelementptr inbounds %struct.dpaa2_mac, ptr %6, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %link_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link_type.i, align 4
  %9 = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch.i = icmp eq i32 %9, 2
  br i1 %switch.i, label %if.then3, label %land.lhs.true.i.if.end5_crit_edge

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %phylink = getelementptr inbounds %struct.dpaa2_mac, ptr %6, i32 0, i32 6
  %10 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phylink, align 8
  %call4 = tail call i32 @phylink_ethtool_set_pauseparam(ptr noundef %11, ptr noundef %pause) #9
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %12 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %link_state = getelementptr i8, ptr %net_dev, i32 164856
  %14 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %link_state, align 8
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %cfg, align 8
  %options = getelementptr i8, ptr %net_dev, i32 164864
  %17 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %options, align 8
  %options10 = getelementptr inbounds %struct.dpni_link_cfg, ptr %cfg, i32 0, i32 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %19 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not = icmp eq i32 %20, 0
  %and = and i64 %18, -13
  %masksel = select i1 %tobool11.not, i64 0, i64 4
  %storemerge = or i64 %masksel, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17 = icmp ne i32 %20, 0
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %21 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19 = icmp ne i32 %22, 0
  %xor62 = xor i1 %tobool17, %tobool19
  %masksel65 = select i1 %xor62, i64 8, i64 0
  %storemerge63 = or i64 %masksel65, %storemerge
  %23 = ptrtoint ptr %options10 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %storemerge63, ptr %options10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %storemerge63, i64 %18)
  %cmp35 = icmp eq i64 %storemerge63, %18
  br i1 %cmp35, label %if.end7.cleanup_crit_edge, label %if.end37

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end7
  %mc_io = getelementptr i8, ptr %net_dev, i32 164832
  %24 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mc_io, align 8
  %mc_token = getelementptr i8, ptr %net_dev, i32 164848
  %26 = ptrtoint ptr %mc_token to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mc_token, align 8
  %call38 = call i32 @dpni_set_link_cfg(ptr noundef %25, i32 noundef 0, i16 noundef zeroext %27, ptr noundef nonnull %cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %net_dev, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %options10 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %options10, align 8
  %30 = ptrtoint ptr %options to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %options, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then40, %if.end7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %call38, %if.then40 ], [ 0, %if.end41 ], [ -95, %if.then ], [ -95, %if.end5.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_eth_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %for.body.preheader, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  %call1 = tail call i32 @strscpy(ptr noundef %data, ptr noundef nonnull @dpaa2_ethtool_stats, i32 noundef 32) #9
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %call1.1 = tail call i32 @strscpy(ptr noundef %add.ptr, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 1), i32 noundef 32) #9
  %add.ptr.1 = getelementptr i8, ptr %data, i32 64
  %call1.2 = tail call i32 @strscpy(ptr noundef %add.ptr.1, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 2), i32 noundef 32) #9
  %add.ptr.2 = getelementptr i8, ptr %data, i32 96
  %call1.3 = tail call i32 @strscpy(ptr noundef %add.ptr.2, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 3), i32 noundef 32) #9
  %add.ptr.3 = getelementptr i8, ptr %data, i32 128
  %call1.4 = tail call i32 @strscpy(ptr noundef %add.ptr.3, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 4), i32 noundef 32) #9
  %add.ptr.4 = getelementptr i8, ptr %data, i32 160
  %call1.5 = tail call i32 @strscpy(ptr noundef %add.ptr.4, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 5), i32 noundef 32) #9
  %add.ptr.5 = getelementptr i8, ptr %data, i32 192
  %call1.6 = tail call i32 @strscpy(ptr noundef %add.ptr.5, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 6), i32 noundef 32) #9
  %add.ptr.6 = getelementptr i8, ptr %data, i32 224
  %call1.7 = tail call i32 @strscpy(ptr noundef %add.ptr.6, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 7), i32 noundef 32) #9
  %add.ptr.7 = getelementptr i8, ptr %data, i32 256
  %call1.8 = tail call i32 @strscpy(ptr noundef %add.ptr.7, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 8), i32 noundef 32) #9
  %add.ptr.8 = getelementptr i8, ptr %data, i32 288
  %call1.9 = tail call i32 @strscpy(ptr noundef %add.ptr.8, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 9), i32 noundef 32) #9
  %add.ptr.9 = getelementptr i8, ptr %data, i32 320
  %call1.10 = tail call i32 @strscpy(ptr noundef %add.ptr.9, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 10), i32 noundef 32) #9
  %add.ptr.10 = getelementptr i8, ptr %data, i32 352
  %call1.11 = tail call i32 @strscpy(ptr noundef %add.ptr.10, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 11), i32 noundef 32) #9
  %add.ptr.11 = getelementptr i8, ptr %data, i32 384
  %call1.12 = tail call i32 @strscpy(ptr noundef %add.ptr.11, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 12), i32 noundef 32) #9
  %add.ptr.12 = getelementptr i8, ptr %data, i32 416
  %call1.13 = tail call i32 @strscpy(ptr noundef %add.ptr.12, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 13), i32 noundef 32) #9
  %add.ptr.13 = getelementptr i8, ptr %data, i32 448
  %call1.14 = tail call i32 @strscpy(ptr noundef %add.ptr.13, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 14), i32 noundef 32) #9
  %add.ptr.14 = getelementptr i8, ptr %data, i32 480
  %call1.15 = tail call i32 @strscpy(ptr noundef %add.ptr.14, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 15), i32 noundef 32) #9
  %add.ptr.15 = getelementptr i8, ptr %data, i32 512
  %call1.16 = tail call i32 @strscpy(ptr noundef %add.ptr.15, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 16), i32 noundef 32) #9
  %add.ptr.16 = getelementptr i8, ptr %data, i32 544
  %call1.17 = tail call i32 @strscpy(ptr noundef %add.ptr.16, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 17), i32 noundef 32) #9
  %add.ptr.17 = getelementptr i8, ptr %data, i32 576
  %call1.18 = tail call i32 @strscpy(ptr noundef %add.ptr.17, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 18), i32 noundef 32) #9
  %add.ptr.18 = getelementptr i8, ptr %data, i32 608
  %call1.19 = tail call i32 @strscpy(ptr noundef %add.ptr.18, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 19), i32 noundef 32) #9
  %add.ptr.19 = getelementptr i8, ptr %data, i32 640
  %call1.20 = tail call i32 @strscpy(ptr noundef %add.ptr.19, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 20), i32 noundef 32) #9
  %add.ptr.20 = getelementptr i8, ptr %data, i32 672
  %call1.21 = tail call i32 @strscpy(ptr noundef %add.ptr.20, ptr noundef getelementptr inbounds ([22 x [32 x i8]], ptr @dpaa2_ethtool_stats, i32 0, i32 21), i32 noundef 32) #9
  %add.ptr.21 = getelementptr i8, ptr %data, i32 704
  %call7 = tail call i32 @strscpy(ptr noundef %add.ptr.21, ptr noundef nonnull @dpaa2_ethtool_extras, i32 noundef 32) #9
  %add.ptr8 = getelementptr i8, ptr %data, i32 736
  %call7.1 = tail call i32 @strscpy(ptr noundef %add.ptr8, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 1), i32 noundef 32) #9
  %add.ptr8.1 = getelementptr i8, ptr %data, i32 768
  %call7.2 = tail call i32 @strscpy(ptr noundef %add.ptr8.1, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 2), i32 noundef 32) #9
  %add.ptr8.2 = getelementptr i8, ptr %data, i32 800
  %call7.3 = tail call i32 @strscpy(ptr noundef %add.ptr8.2, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 3), i32 noundef 32) #9
  %add.ptr8.3 = getelementptr i8, ptr %data, i32 832
  %call7.4 = tail call i32 @strscpy(ptr noundef %add.ptr8.3, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 4), i32 noundef 32) #9
  %add.ptr8.4 = getelementptr i8, ptr %data, i32 864
  %call7.5 = tail call i32 @strscpy(ptr noundef %add.ptr8.4, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 5), i32 noundef 32) #9
  %add.ptr8.5 = getelementptr i8, ptr %data, i32 896
  %call7.6 = tail call i32 @strscpy(ptr noundef %add.ptr8.5, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 6), i32 noundef 32) #9
  %add.ptr8.6 = getelementptr i8, ptr %data, i32 928
  %call7.7 = tail call i32 @strscpy(ptr noundef %add.ptr8.6, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 7), i32 noundef 32) #9
  %add.ptr8.7 = getelementptr i8, ptr %data, i32 960
  %call7.8 = tail call i32 @strscpy(ptr noundef %add.ptr8.7, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 8), i32 noundef 32) #9
  %add.ptr8.8 = getelementptr i8, ptr %data, i32 992
  %call7.9 = tail call i32 @strscpy(ptr noundef %add.ptr8.8, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 9), i32 noundef 32) #9
  %add.ptr8.9 = getelementptr i8, ptr %data, i32 1024
  %call7.10 = tail call i32 @strscpy(ptr noundef %add.ptr8.9, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 10), i32 noundef 32) #9
  %add.ptr8.10 = getelementptr i8, ptr %data, i32 1056
  %call7.11 = tail call i32 @strscpy(ptr noundef %add.ptr8.10, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 11), i32 noundef 32) #9
  %add.ptr8.11 = getelementptr i8, ptr %data, i32 1088
  %call7.12 = tail call i32 @strscpy(ptr noundef %add.ptr8.11, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 12), i32 noundef 32) #9
  %add.ptr8.12 = getelementptr i8, ptr %data, i32 1120
  %call7.13 = tail call i32 @strscpy(ptr noundef %add.ptr8.12, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 13), i32 noundef 32) #9
  %add.ptr8.13 = getelementptr i8, ptr %data, i32 1152
  %call7.14 = tail call i32 @strscpy(ptr noundef %add.ptr8.13, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 14), i32 noundef 32) #9
  %add.ptr8.14 = getelementptr i8, ptr %data, i32 1184
  %call7.15 = tail call i32 @strscpy(ptr noundef %add.ptr8.14, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 15), i32 noundef 32) #9
  %add.ptr8.15 = getelementptr i8, ptr %data, i32 1216
  %call7.16 = tail call i32 @strscpy(ptr noundef %add.ptr8.15, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 16), i32 noundef 32) #9
  %add.ptr8.16 = getelementptr i8, ptr %data, i32 1248
  %call7.17 = tail call i32 @strscpy(ptr noundef %add.ptr8.16, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 17), i32 noundef 32) #9
  %add.ptr8.17 = getelementptr i8, ptr %data, i32 1280
  %call7.18 = tail call i32 @strscpy(ptr noundef %add.ptr8.17, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 18), i32 noundef 32) #9
  %add.ptr8.18 = getelementptr i8, ptr %data, i32 1312
  %call7.19 = tail call i32 @strscpy(ptr noundef %add.ptr8.18, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 19), i32 noundef 32) #9
  %add.ptr8.19 = getelementptr i8, ptr %data, i32 1344
  %call7.20 = tail call i32 @strscpy(ptr noundef %add.ptr8.19, ptr noundef getelementptr inbounds ([21 x [32 x i8]], ptr @dpaa2_ethtool_extras, i32 0, i32 20), i32 noundef 32) #9
  %mac.i = getelementptr i8, ptr %netdev, i32 165056
  %0 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac.i, align 8
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %for.body.preheader.sw.epilog_crit_edge, label %if.then

for.body.preheader.sw.epilog_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr8.20 = getelementptr i8, ptr %data, i32 1376
  tail call void @dpaa2_mac_get_strings(ptr noundef %add.ptr8.20) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %for.body.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_eth_get_ethtool_stats(ptr noundef %net_dev, ptr nocapture noundef readnone %stats, ptr noundef %data) #0 align 64 {
entry:
  %dpni_stats = alloca %union.dpni_statistics, align 8
  %fcnt = alloca i32, align 4
  %bcnt = alloca i32, align 4
  %buf_cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dpni_stats) #9
  %0 = call ptr @memset(ptr %dpni_stats, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fcnt) #9
  %1 = ptrtoint ptr %fcnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %fcnt, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcnt) #9
  %2 = ptrtoint ptr %bcnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bcnt, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_cnt) #9
  %3 = ptrtoint ptr %buf_cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %buf_cnt, align 4, !annotation !39
  %4 = call ptr @memset(ptr %data, i32 0, i32 344)
  %mc_io = getelementptr i8, ptr %net_dev, i32 164832
  %mc_token = getelementptr i8, ptr %net_dev, i32 164848
  br label %for.body

for.cond19.preheader:                             ; preds = %for.inc16
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call20205 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call20205, i32 %5)
  %cmp21206 = icmp ult i32 %call20205, %5
  br i1 %cmp21206, label %do.body.lr.ph, label %for.cond19.preheader.for.end37_crit_edge

for.cond19.preheader.for.end37_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37

do.body.lr.ph:                                    ; preds = %for.cond19.preheader
  %percpu_extras = getelementptr i8, ptr %net_dev, i32 164844
  %add.ptr31 = getelementptr i64, ptr %data, i32 %i.2
  %add.ptr32.1 = getelementptr i64, ptr %add.ptr31, i32 1
  %add.ptr32.2 = getelementptr i64, ptr %add.ptr31, i32 2
  %add.ptr32.3 = getelementptr i64, ptr %add.ptr31, i32 3
  %add.ptr32.4 = getelementptr i64, ptr %add.ptr31, i32 4
  %add.ptr32.5 = getelementptr i64, ptr %add.ptr31, i32 5
  %add.ptr32.6 = getelementptr i64, ptr %add.ptr31, i32 6
  %add.ptr32.7 = getelementptr i64, ptr %add.ptr31, i32 7
  %add.ptr32.8 = getelementptr i64, ptr %add.ptr31, i32 8
  br label %do.body

for.body:                                         ; preds = %for.inc16.for.body_crit_edge, %entry
  %i.0203 = phi i32 [ 0, %entry ], [ %i.2, %for.inc16.for.body_crit_edge ]
  %j.0201 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16.for.body_crit_edge ]
  %6 = and i32 %j.0201, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %switch = icmp eq i32 %6, 4
  br i1 %switch, label %for.body.for.inc16_crit_edge, label %if.end

for.body.for.inc16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc16

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mc_io, align 8
  %9 = ptrtoint ptr %mc_token to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mc_token, align 8
  %conv = trunc i32 %j.0201 to i8
  %call3 = call i32 @dpni_get_statistics(ptr noundef %8, i32 noundef 0, i16 noundef zeroext %10, i8 noundef zeroext %conv, ptr noundef nonnull %dpni_stats) #9
  %11 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %if.then7 [
    i32 -22, label %if.then6
    i32 0, label %if.end.for.body13.preheader_crit_edge
  ]

if.end.for.body13.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13.preheader

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call ptr @memset(ptr %dpni_stats, i32 0, i32 56)
  br label %for.body13.preheader

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %net_dev, ptr noundef nonnull @.str.4, i32 noundef %j.0201) #12
  br label %for.body13.preheader

for.body13.preheader:                             ; preds = %if.then7, %if.then6, %if.end.for.body13.preheader_crit_edge
  %arrayidx = getelementptr [7 x i32], ptr @__const.dpaa2_eth_get_ethtool_stats.dpni_stats_page_size, i32 0, i32 %j.0201
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %div193 = lshr i32 %14, 3
  %15 = shl i32 %i.0203, 3
  %uglygep = getelementptr i8, ptr %data, i32 %15
  %umax = call i32 @llvm.umax.i32(i32 %div193, i32 1)
  %16 = shl nuw i32 %umax, 3
  %17 = call ptr @memcpy(ptr %uglygep, ptr %dpni_stats, i32 %16)
  %18 = add i32 %i.0203, %umax
  br label %for.inc16

for.inc16:                                        ; preds = %for.body13.preheader, %for.body.for.inc16_crit_edge
  %i.2 = phi i32 [ %i.0203, %for.body.for.inc16_crit_edge ], [ %18, %for.body13.preheader ]
  %inc17 = add nuw nsw i32 %j.0201, 1
  %exitcond.not = icmp eq i32 %inc17, 7
  br i1 %exitcond.not, label %for.cond19.preheader, label %for.inc16.for.body_crit_edge

for.inc16.for.body_crit_edge:                     ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %call20207 = phi i32 [ %call20205, %do.body.lr.ph ], [ %call20, %do.body.do.body_crit_edge ]
  %19 = ptrtoint ptr %percpu_extras to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %percpu_extras, align 4
  %21 = ptrtoint ptr %20 to i32
  %arrayidx25 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call20207
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx25, align 4
  %add = add i32 %23, %21
  %24 = inttoptr i32 %add to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %24, align 8
  %27 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr31, align 8
  %add33 = add i64 %28, %26
  store i64 %add33, ptr %add.ptr31, align 8
  %add.ptr30.1 = getelementptr i64, ptr %24, i32 1
  %29 = ptrtoint ptr %add.ptr30.1 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr30.1, align 8
  %31 = ptrtoint ptr %add.ptr32.1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr32.1, align 8
  %add33.1 = add i64 %32, %30
  store i64 %add33.1, ptr %add.ptr32.1, align 8
  %add.ptr30.2 = getelementptr i64, ptr %24, i32 2
  %33 = ptrtoint ptr %add.ptr30.2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr30.2, align 8
  %35 = ptrtoint ptr %add.ptr32.2 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr32.2, align 8
  %add33.2 = add i64 %36, %34
  store i64 %add33.2, ptr %add.ptr32.2, align 8
  %add.ptr30.3 = getelementptr i64, ptr %24, i32 3
  %37 = ptrtoint ptr %add.ptr30.3 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %add.ptr30.3, align 8
  %39 = ptrtoint ptr %add.ptr32.3 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr32.3, align 8
  %add33.3 = add i64 %40, %38
  store i64 %add33.3, ptr %add.ptr32.3, align 8
  %add.ptr30.4 = getelementptr i64, ptr %24, i32 4
  %41 = ptrtoint ptr %add.ptr30.4 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %add.ptr30.4, align 8
  %43 = ptrtoint ptr %add.ptr32.4 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %add.ptr32.4, align 8
  %add33.4 = add i64 %44, %42
  store i64 %add33.4, ptr %add.ptr32.4, align 8
  %add.ptr30.5 = getelementptr i64, ptr %24, i32 5
  %45 = ptrtoint ptr %add.ptr30.5 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr30.5, align 8
  %47 = ptrtoint ptr %add.ptr32.5 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr32.5, align 8
  %add33.5 = add i64 %48, %46
  store i64 %add33.5, ptr %add.ptr32.5, align 8
  %add.ptr30.6 = getelementptr i64, ptr %24, i32 6
  %49 = ptrtoint ptr %add.ptr30.6 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %add.ptr30.6, align 8
  %51 = ptrtoint ptr %add.ptr32.6 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %add.ptr32.6, align 8
  %add33.6 = add i64 %52, %50
  store i64 %add33.6, ptr %add.ptr32.6, align 8
  %add.ptr30.7 = getelementptr i64, ptr %24, i32 7
  %53 = ptrtoint ptr %add.ptr30.7 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %add.ptr30.7, align 8
  %55 = ptrtoint ptr %add.ptr32.7 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %add.ptr32.7, align 8
  %add33.7 = add i64 %56, %54
  store i64 %add33.7, ptr %add.ptr32.7, align 8
  %add.ptr30.8 = getelementptr i64, ptr %24, i32 8
  %57 = ptrtoint ptr %add.ptr30.8 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %add.ptr30.8, align 8
  %59 = ptrtoint ptr %add.ptr32.8 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %add.ptr32.8, align 8
  %add33.8 = add i64 %60, %58
  store i64 %add33.8, ptr %add.ptr32.8, align 8
  %call20 = call i32 @cpumask_next(i32 noundef %call20207, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %61 = load i32, ptr @nr_cpu_ids, align 4
  %cmp21 = icmp ult i32 %call20, %61
  br i1 %cmp21, label %do.body.do.body_crit_edge, label %do.body.for.end37_crit_edge

do.body.for.end37_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end37:                                        ; preds = %do.body.for.end37_crit_edge, %for.cond19.preheader.for.end37_crit_edge
  %j.1.lcssa = phi i32 [ 7, %for.cond19.preheader.for.end37_crit_edge ], [ 9, %do.body.for.end37_crit_edge ]
  %add38 = add i32 %j.1.lcssa, %i.2
  %num_channels = getelementptr i8, ptr %net_dev, i32 164716
  %62 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp41211.not = icmp eq i8 %63, 0
  br i1 %cmp41211.not, label %for.end37.for.end59_crit_edge, label %for.body43.lr.ph

for.end37.for.end59_crit_edge:                    ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end59

for.body43.lr.ph:                                 ; preds = %for.end37
  %add.ptr51 = getelementptr i64, ptr %data, i32 %add38
  %add.ptr52.1 = getelementptr i64, ptr %add.ptr51, i32 1
  %add.ptr52.2 = getelementptr i64, ptr %add.ptr51, i32 2
  %add.ptr52.3 = getelementptr i64, ptr %add.ptr51, i32 3
  %add.ptr52.4 = getelementptr i64, ptr %add.ptr51, i32 4
  %add.ptr52.5 = getelementptr i64, ptr %add.ptr51, i32 5
  %add.ptr52.6 = getelementptr i64, ptr %add.ptr51, i32 6
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.body43.lr.ph
  %k.2212 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc58, %for.body43.for.body43_crit_edge ]
  %arrayidx44 = getelementptr %struct.dpaa2_eth_priv, ptr %add.ptr.i, i32 0, i32 5, i32 %k.2212
  %64 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx44, align 4
  %stats45 = getelementptr inbounds %struct.dpaa2_eth_channel, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %stats45 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %stats45, align 8
  %68 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %add.ptr51, align 8
  %add53 = add i64 %69, %67
  store i64 %add53, ptr %add.ptr51, align 8
  %add.ptr50.1 = getelementptr %struct.dpaa2_eth_channel, ptr %65, i32 0, i32 9, i32 1
  %70 = ptrtoint ptr %add.ptr50.1 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %add.ptr50.1, align 8
  %72 = ptrtoint ptr %add.ptr52.1 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %add.ptr52.1, align 8
  %add53.1 = add i64 %73, %71
  store i64 %add53.1, ptr %add.ptr52.1, align 8
  %add.ptr50.2 = getelementptr %struct.dpaa2_eth_channel, ptr %65, i32 0, i32 9, i32 2
  %74 = ptrtoint ptr %add.ptr50.2 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %add.ptr50.2, align 8
  %76 = ptrtoint ptr %add.ptr52.2 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %add.ptr52.2, align 8
  %add53.2 = add i64 %77, %75
  store i64 %add53.2, ptr %add.ptr52.2, align 8
  %add.ptr50.3 = getelementptr %struct.dpaa2_eth_channel, ptr %65, i32 0, i32 9, i32 3
  %78 = ptrtoint ptr %add.ptr50.3 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %add.ptr50.3, align 8
  %80 = ptrtoint ptr %add.ptr52.3 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %add.ptr52.3, align 8
  %add53.3 = add i64 %81, %79
  store i64 %add53.3, ptr %add.ptr52.3, align 8
  %add.ptr50.4 = getelementptr %struct.dpaa2_eth_channel, ptr %65, i32 0, i32 9, i32 4
  %82 = ptrtoint ptr %add.ptr50.4 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %add.ptr50.4, align 8
  %84 = ptrtoint ptr %add.ptr52.4 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %add.ptr52.4, align 8
  %add53.4 = add i64 %85, %83
  store i64 %add53.4, ptr %add.ptr52.4, align 8
  %add.ptr50.5 = getelementptr %struct.dpaa2_eth_channel, ptr %65, i32 0, i32 9, i32 5
  %86 = ptrtoint ptr %add.ptr50.5 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %add.ptr50.5, align 8
  %88 = ptrtoint ptr %add.ptr52.5 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %add.ptr52.5, align 8
  %add53.5 = add i64 %89, %87
  store i64 %add53.5, ptr %add.ptr52.5, align 8
  %add.ptr50.6 = getelementptr %struct.dpaa2_eth_channel, ptr %65, i32 0, i32 9, i32 6
  %90 = ptrtoint ptr %add.ptr50.6 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %add.ptr50.6, align 8
  %92 = ptrtoint ptr %add.ptr52.6 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %add.ptr52.6, align 8
  %add53.6 = add i64 %93, %91
  store i64 %add53.6, ptr %add.ptr52.6, align 8
  %inc58 = add nuw nsw i32 %k.2212, 1
  %94 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %num_channels, align 4
  %conv40 = zext i8 %95 to i32
  %cmp41 = icmp ult i32 %inc58, %conv40
  br i1 %cmp41, label %for.body43.for.body43_crit_edge, label %for.body43.for.end59_crit_edge

for.body43.for.end59_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end59

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body43

for.end59:                                        ; preds = %for.body43.for.end59_crit_edge, %for.end37.for.end59_crit_edge
  %j.3.lcssa = phi i32 [ %j.1.lcssa, %for.end37.for.end59_crit_edge ], [ 7, %for.body43.for.end59_crit_edge ]
  %add60 = add i32 %j.3.lcssa, %add38
  %num_fqs = getelementptr i8, ptr %net_dev, i32 2308
  %96 = ptrtoint ptr %num_fqs to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %num_fqs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp63215.not = icmp eq i8 %97, 0
  br i1 %cmp63215.not, label %for.end59.for.end84_crit_edge, label %for.end59.for.body65_crit_edge

for.end59.for.body65_crit_edge:                   ; preds = %for.end59
  br label %for.body65

for.end59.for.end84_crit_edge:                    ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end84

for.body65:                                       ; preds = %for.inc82.for.body65_crit_edge, %for.end59.for.body65_crit_edge
  %j.5220 = phi i32 [ %inc83, %for.inc82.for.body65_crit_edge ], [ 0, %for.end59.for.body65_crit_edge ]
  %bcnt_tx_total.0219 = phi i32 [ %bcnt_tx_total.1, %for.inc82.for.body65_crit_edge ], [ 0, %for.end59.for.body65_crit_edge ]
  %bcnt_rx_total.0218 = phi i32 [ %bcnt_rx_total.1, %for.inc82.for.body65_crit_edge ], [ 0, %for.end59.for.body65_crit_edge ]
  %fcnt_tx_total.0217 = phi i32 [ %fcnt_tx_total.1, %for.inc82.for.body65_crit_edge ], [ 0, %for.end59.for.body65_crit_edge ]
  %fcnt_rx_total.0216 = phi i32 [ %fcnt_rx_total.1, %for.inc82.for.body65_crit_edge ], [ 0, %for.end59.for.body65_crit_edge ]
  %arrayidx66 = getelementptr %struct.dpaa2_eth_priv, ptr %add.ptr.i, i32 0, i32 2, i32 %j.5220
  %98 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx66, align 8
  %call67 = call i32 @dpaa2_io_query_fq_count(ptr noundef null, i32 noundef %99, ptr noundef nonnull %fcnt, ptr noundef nonnull %bcnt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.then69

if.then69:                                        ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %net_dev, ptr noundef nonnull @.str.5, i32 noundef %call67) #12
  br label %cleanup

if.end70:                                         ; preds = %for.body65
  %type = getelementptr %struct.dpaa2_eth_priv, ptr %add.ptr.i, i32 0, i32 2, i32 %j.5220, i32 9
  %100 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp73 = icmp eq i32 %101, 1
  %102 = ptrtoint ptr %fcnt to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %fcnt, align 4
  br i1 %cmp73, label %if.then75, label %if.else78

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %add76 = add i32 %103, %fcnt_tx_total.0217
  %104 = ptrtoint ptr %bcnt to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bcnt, align 4
  %add77 = add i32 %105, %bcnt_tx_total.0219
  br label %for.inc82

if.else78:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %add79 = add i32 %103, %fcnt_rx_total.0216
  %106 = ptrtoint ptr %bcnt to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bcnt, align 4
  %add80 = add i32 %107, %bcnt_rx_total.0218
  br label %for.inc82

for.inc82:                                        ; preds = %if.else78, %if.then75
  %fcnt_rx_total.1 = phi i32 [ %fcnt_rx_total.0216, %if.then75 ], [ %add79, %if.else78 ]
  %fcnt_tx_total.1 = phi i32 [ %add76, %if.then75 ], [ %fcnt_tx_total.0217, %if.else78 ]
  %bcnt_rx_total.1 = phi i32 [ %bcnt_rx_total.0218, %if.then75 ], [ %add80, %if.else78 ]
  %bcnt_tx_total.1 = phi i32 [ %add77, %if.then75 ], [ %bcnt_tx_total.0219, %if.else78 ]
  %inc83 = add nuw nsw i32 %j.5220, 1
  %108 = ptrtoint ptr %num_fqs to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %num_fqs, align 4
  %conv62 = zext i8 %109 to i32
  %cmp63 = icmp ult i32 %inc83, %conv62
  br i1 %cmp63, label %for.inc82.for.body65_crit_edge, label %for.inc82.for.end84_crit_edge

for.inc82.for.end84_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end84

for.inc82.for.body65_crit_edge:                   ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65

for.end84:                                        ; preds = %for.inc82.for.end84_crit_edge, %for.end59.for.end84_crit_edge
  %fcnt_rx_total.0.lcssa = phi i32 [ 0, %for.end59.for.end84_crit_edge ], [ %fcnt_rx_total.1, %for.inc82.for.end84_crit_edge ]
  %fcnt_tx_total.0.lcssa = phi i32 [ 0, %for.end59.for.end84_crit_edge ], [ %fcnt_tx_total.1, %for.inc82.for.end84_crit_edge ]
  %bcnt_rx_total.0.lcssa = phi i32 [ 0, %for.end59.for.end84_crit_edge ], [ %bcnt_rx_total.1, %for.inc82.for.end84_crit_edge ]
  %bcnt_tx_total.0.lcssa = phi i32 [ 0, %for.end59.for.end84_crit_edge ], [ %bcnt_tx_total.1, %for.inc82.for.end84_crit_edge ]
  %conv85 = zext i32 %fcnt_rx_total.0.lcssa to i64
  %inc86 = add i32 %add60, 1
  %add.ptr87 = getelementptr i64, ptr %data, i32 %add60
  %110 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %conv85, ptr %add.ptr87, align 8
  %conv88 = zext i32 %bcnt_rx_total.0.lcssa to i64
  %inc89 = add i32 %add60, 2
  %add.ptr90 = getelementptr i64, ptr %data, i32 %inc86
  %111 = ptrtoint ptr %add.ptr90 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %conv88, ptr %add.ptr90, align 8
  %conv91 = zext i32 %fcnt_tx_total.0.lcssa to i64
  %inc92 = add i32 %add60, 3
  %add.ptr93 = getelementptr i64, ptr %data, i32 %inc89
  %112 = ptrtoint ptr %add.ptr93 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %conv91, ptr %add.ptr93, align 8
  %conv94 = zext i32 %bcnt_tx_total.0.lcssa to i64
  %add.ptr96 = getelementptr i64, ptr %data, i32 %inc92
  %113 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv94, ptr %add.ptr96, align 8
  %bpid = getelementptr i8, ptr %net_dev, i32 164818
  %114 = ptrtoint ptr %bpid to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %bpid, align 2
  %call97 = call i32 @dpaa2_io_query_bp_count(ptr noundef null, i16 noundef zeroext %115, ptr noundef nonnull %buf_cnt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.then99

if.then99:                                        ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %net_dev, ptr noundef nonnull @.str.6, i32 noundef %call97) #12
  br label %cleanup

if.end100:                                        ; preds = %for.end84
  %inc95 = add i32 %add60, 4
  %116 = ptrtoint ptr %buf_cnt to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %buf_cnt, align 4
  %conv101 = zext i32 %117 to i64
  %add.ptr103 = getelementptr i64, ptr %data, i32 %inc95
  %118 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %conv101, ptr %add.ptr103, align 8
  %mac.i = getelementptr i8, ptr %net_dev, i32 165056
  %119 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mac.i, align 8
  %tobool.i.not = icmp eq ptr %120, null
  br i1 %tobool.i.not, label %if.end100.cleanup_crit_edge, label %if.then105

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %inc102 = add i32 %add60, 5
  %add.ptr106 = getelementptr i64, ptr %data, i32 %inc102
  call void @dpaa2_mac_get_ethtool_stats(ptr noundef nonnull %120, ptr noundef %add.ptr106) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %if.end100.cleanup_crit_edge, %if.then99, %if.then69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_cnt) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcnt) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fcnt) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dpni_stats) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_eth_get_sset_count(ptr nocapture noundef readonly %net_dev, i32 noundef %sset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mac.i = getelementptr i8, ptr %net_dev, i32 165056
  %0 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac.i, align 8
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @dpaa2_mac_get_sset_count() #9
  %add = add i32 %call2, 43
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.then ], [ 43, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_eth_get_rxnfc(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef %rxnfc, ptr nocapture noundef writeonly %rule_locs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_entries = getelementptr i8, ptr %net_dev, i32 164798
  %0 = ptrtoint ptr %fs_entries to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fs_entries, align 2
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %rxnfc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxnfc, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 41, label %sw.bb
    i32 45, label %sw.bb1
    i32 46, label %sw.bb4
    i32 47, label %sw.bb8
    i32 48, label %for.cond.preheader
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp2979.not = icmp eq i16 %1, 0
  br i1 %cmp2979.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cls_rules31 = getelementptr i8, ptr %net_dev, i32 164904
  %5 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 4
  br label %for.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_hash_fields = getelementptr i8, ptr %net_dev, i32 164888
  %6 = ptrtoint ptr %rx_hash_fields to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rx_hash_fields, align 8
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 2
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %data, align 8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %num_channels = getelementptr i8, ptr %net_dev, i32 164716
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_channels, align 4
  %conv2 = zext i8 %10 to i64
  %data3 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 2
  %11 = ptrtoint ptr %data3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv2, ptr %data3, align 8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 8
  %14 = ptrtoint ptr %fs_entries to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fs_entries, align 2
  %conv.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp7.not.i = icmp eq i16 %15, 0
  br i1 %cmp7.not.i, label %sw.bb4.dpaa2_eth_num_cls_rules.exit_crit_edge, label %for.body.lr.ph.i

sw.bb4.dpaa2_eth_num_cls_rules.exit_crit_edge:    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpaa2_eth_num_cls_rules.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb4
  %cls_rules.i = getelementptr i8, ptr %net_dev, i32 164904
  %16 = ptrtoint ptr %cls_rules.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cls_rules.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rules.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc2.i, %for.body.i.for.body.i_crit_edge ]
  %in_use.i = getelementptr %struct.dpaa2_eth_cls_rule, ptr %17, i32 %i.08.i, i32 1
  %18 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %in_use.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp ne i8 %19, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %rules.09.i, %inc.i
  %inc2.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc2.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.dpaa2_eth_num_cls_rules.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.dpaa2_eth_num_cls_rules.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpaa2_eth_num_cls_rules.exit

dpaa2_eth_num_cls_rules.exit:                     ; preds = %for.body.i.dpaa2_eth_num_cls_rules.exit_crit_edge, %sw.bb4.dpaa2_eth_num_cls_rules.exit_crit_edge
  %rules.0.lcssa.i = phi i32 [ 0, %sw.bb4.dpaa2_eth_num_cls_rules.exit_crit_edge ], [ %spec.select.i, %for.body.i.dpaa2_eth_num_cls_rules.exit_crit_edge ]
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rules.0.lcssa.i, ptr %12, align 8
  %21 = zext i16 %1 to i64
  %data7 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 2
  %22 = ptrtoint ptr %data7 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %data7, align 8
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 3
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 3, i32 6
  %23 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %location, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv)
  %cmp.not = icmp ult i32 %24, %conv
  br i1 %cmp.not, label %if.end, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb8
  %25 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %24, i32 %conv) #9, !srcloc !40
  %and = and i32 %25, %24
  %26 = ptrtoint ptr %location to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and, ptr %location, align 8
  %cls_rules = getelementptr i8, ptr %net_dev, i32 164904
  %27 = ptrtoint ptr %cls_rules to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cls_rules, align 8
  %in_use = getelementptr %struct.dpaa2_eth_cls_rule, ptr %28, i32 %and, i32 1
  %29 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %in_use, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.dpaa2_eth_cls_rule, ptr %28, i32 %and
  %31 = call ptr @memcpy(ptr %fs, ptr %arrayidx, i32 168)
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc42, %for.inc.for.body_crit_edge ]
  %j.080 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %32 = ptrtoint ptr %cls_rules31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cls_rules31, align 8
  %in_use33 = getelementptr %struct.dpaa2_eth_cls_rule, ptr %33, i32 %i.081, i32 1
  %34 = ptrtoint ptr %in_use33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %in_use33, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool34.not = icmp eq i8 %35, 0
  br i1 %tobool34.not, label %for.body.for.inc_crit_edge, label %if.end36

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end36:                                         ; preds = %for.body
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %j.080, i32 %37)
  %cmp37 = icmp eq i32 %j.080, %37
  br i1 %cmp37, label %if.end36.cleanup_crit_edge, label %if.end40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %j.080, 1
  %arrayidx41 = getelementptr i32, ptr %rule_locs, i32 %j.080
  %38 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %i.081, ptr %arrayidx41, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end40, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.end40 ], [ %j.080, %for.body.for.inc_crit_edge ]
  %inc42 = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc42, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %j.1, %for.inc.for.end_crit_edge ]
  %39 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %j.0.lcssa, ptr %39, align 8
  %conv43 = zext i16 %1 to i64
  %data44 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 2
  %41 = ptrtoint ptr %data44 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv43, ptr %data44, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end36.cleanup_crit_edge, %if.end21, %if.end.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %dpaa2_eth_num_cls_rules.exit, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %for.end ], [ 0, %if.end21 ], [ 0, %dpaa2_eth_num_cls_rules.exit ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -90, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_eth_set_rxnfc(ptr noundef %net_dev, ptr noundef %rxnfc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxnfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxnfc, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 42, label %sw.bb
    i32 50, label %sw.bb3
    i32 49, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %data, align 8
  %and = and i64 %4, 254
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %4)
  %cmp.not = icmp eq i64 %and, %4
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @dpaa2_eth_set_hash(ptr noundef %net_dev, i64 noundef %4) #9
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 3
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 3, i32 6
  %5 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %location, align 8
  %call5 = tail call fastcc i32 @dpaa2_eth_update_cls_rule(ptr noundef %net_dev, ptr noundef %fs, i32 noundef %6)
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %location8 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 3, i32 6
  %7 = ptrtoint ptr %location8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %location8, align 8
  %rx_cls_enabled.i = getelementptr i8, ptr %net_dev, i32 164908
  %9 = ptrtoint ptr %rx_cls_enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rx_cls_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %sw.bb6.cleanup_crit_edge, label %if.end.i

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb6
  %dpni_attrs.i = getelementptr i8, ptr %net_dev, i32 164788
  %fs_entries.i = getelementptr i8, ptr %net_dev, i32 164798
  %11 = ptrtoint ptr %fs_entries.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fs_entries.i, align 2
  %conv.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %8, %conv.i
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %cls_rules.i = getelementptr i8, ptr %net_dev, i32 164904
  %13 = ptrtoint ptr %cls_rules.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cls_rules.i, align 8
  %in_use.i = getelementptr %struct.dpaa2_eth_cls_rule, ptr %14, i32 %8, i32 1
  %15 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %in_use.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not.i = icmp eq i8 %16, 0
  br i1 %tobool4.not.i, label %if.end3.i.cleanup_crit_edge, label %if.then5.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5.i:                                       ; preds = %if.end3.i
  %arrayidx.i = getelementptr %struct.dpaa2_eth_cls_rule, ptr %14, i32 %8
  %call6.i = tail call fastcc i32 @dpaa2_eth_do_cls_rule(ptr noundef %net_dev, ptr noundef %arrayidx.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then5.i.cleanup_crit_edge

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.then5.i
  %17 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %in_use.i, align 8
  %18 = ptrtoint ptr %dpni_attrs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dpni_attrs.i, align 4
  %and.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end9.i
  %20 = ptrtoint ptr %fs_entries.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fs_entries.i, align 2
  %conv.i.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp7.not.i.i = icmp eq i16 %21, 0
  br i1 %cmp7.not.i.i, label %land.lhs.true.i.if.then15.i_crit_edge, label %for.body.lr.ph.i.i

land.lhs.true.i.if.then15.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

for.body.lr.ph.i.i:                               ; preds = %land.lhs.true.i
  %22 = ptrtoint ptr %cls_rules.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cls_rules.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %rules.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc2.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %in_use.i.i = getelementptr %struct.dpaa2_eth_cls_rule, ptr %23, i32 %i.08.i.i, i32 1
  %24 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %in_use.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp ne i8 %25, 0
  %inc.i.i = zext i1 %tobool.not.i.i to i32
  %spec.select.i.i = add i32 %rules.09.i.i, %inc.i.i
  %inc2.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc2.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %dpaa2_eth_num_cls_rules.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dpaa2_eth_num_cls_rules.exit.i:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %tobool14.not.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool14.not.i, label %dpaa2_eth_num_cls_rules.exit.i.if.then15.i_crit_edge, label %dpaa2_eth_num_cls_rules.exit.i.cleanup_crit_edge

dpaa2_eth_num_cls_rules.exit.i.cleanup_crit_edge: ; preds = %dpaa2_eth_num_cls_rules.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dpaa2_eth_num_cls_rules.exit.i.if.then15.i_crit_edge: ; preds = %dpaa2_eth_num_cls_rules.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.then15.i:                                      ; preds = %dpaa2_eth_num_cls_rules.exit.i.if.then15.i_crit_edge, %land.lhs.true.i.if.then15.i_crit_edge
  %rx_cls_fields.i = getelementptr i8, ptr %net_dev, i32 164896
  %26 = ptrtoint ptr %rx_cls_fields.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %rx_cls_fields.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then15.i, %dpaa2_eth_num_cls_rules.exit.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb3, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.bb.cleanup_crit_edge ], [ %call5, %sw.bb3 ], [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.bb6.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %call6.i, %if.then5.i.cleanup_crit_edge ], [ 0, %if.end9.i.cleanup_crit_edge ], [ 0, %dpaa2_eth_num_cls_rules.exit.i.cleanup_crit_edge ], [ 0, %if.then15.i ], [ -22, %if.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_eth_get_ts_info(ptr noundef %dev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dpaa2_ptp to i32))
  %0 = load ptr, ptr @dpaa2_ptp, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @ethtool_op_get_ts_info(ptr noundef %dev, ptr noundef %info) #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 69, ptr %so_timestamping, align 4
  %2 = load i32, ptr @dpaa2_phc_index, align 4
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %phc_index, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %4 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %rx_filters, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dpaa2_eth_get_tunable(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_copybreak = getelementptr i8, ptr %net_dev, i32 165620
  %2 = ptrtoint ptr %rx_copybreak to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_copybreak, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dpaa2_eth_set_tunable(ptr nocapture noundef writeonly %net_dev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %rx_copybreak = getelementptr i8, ptr %net_dev, i32 165620
  %4 = ptrtoint ptr %rx_copybreak to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_copybreak, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_eth_get_link_ksettings(ptr nocapture noundef readonly %net_dev, ptr noundef %link_settings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mac.i = getelementptr i8, ptr %net_dev, i32 165056
  %0 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %link_type.i = getelementptr inbounds %struct.dpaa2_mac, ptr %1, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %link_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_type.i, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch.i = icmp eq i32 %4, 2
  br i1 %switch.i, label %if.then, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %phylink = getelementptr inbounds %struct.dpaa2_mac, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phylink, align 8
  %call2 = tail call i32 @phylink_ethtool_ksettings_get(ptr noundef %6, ptr noundef %link_settings) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_settings, i32 0, i32 5
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %autoneg, align 1
  %link_state = getelementptr i8, ptr %net_dev, i32 164856
  %options = getelementptr i8, ptr %net_dev, i32 164864
  %8 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %options, align 8
  %and = and i64 %9, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_settings, i32 0, i32 2
  %10 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %duplex, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %11 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %link_state, align 8
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_settings, i32 0, i32 1
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_eth_set_link_ksettings(ptr nocapture noundef readonly %net_dev, ptr noundef %link_settings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mac.i = getelementptr i8, ptr %net_dev, i32 165056
  %0 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %link_type.i = getelementptr inbounds %struct.dpaa2_mac, ptr %1, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %link_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_type.i, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch.i = icmp eq i32 %4, 2
  br i1 %switch.i, label %if.end, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %phylink = getelementptr inbounds %struct.dpaa2_mac, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phylink, align 8
  %call2 = tail call i32 @phylink_ethtool_ksettings_set(ptr noundef %6, ptr noundef %link_settings) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -524, %entry.cleanup_crit_edge ], [ -524, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_nway_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpaa2_io_get_irq_coalescing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_io_get_adaptive_coalescing(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpaa2_io_set_adaptive_coalescing(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_io_set_irq_coalescing(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpni_set_link_cfg(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpaa2_mac_get_strings(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpni_get_statistics(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_io_query_fq_count(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_io_query_bp_count(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpaa2_mac_get_ethtool_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_mac_get_sset_count() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_eth_set_hash(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_eth_update_cls_rule(ptr noundef %net_dev, ptr noundef %new_fs, i32 noundef %location) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_cls_enabled = getelementptr i8, ptr %net_dev, i32 164908
  %0 = ptrtoint ptr %rx_cls_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_cls_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpni_attrs = getelementptr i8, ptr %net_dev, i32 164788
  %fs_entries = getelementptr i8, ptr %net_dev, i32 164798
  %2 = ptrtoint ptr %fs_entries to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fs_entries, align 2
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %location)
  %cmp.not = icmp ugt i32 %conv, %location
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cls_rules = getelementptr i8, ptr %net_dev, i32 164904
  %4 = ptrtoint ptr %cls_rules to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cls_rules, align 8
  %arrayidx = getelementptr %struct.dpaa2_eth_cls_rule, ptr %5, i32 %location
  %in_use = getelementptr %struct.dpaa2_eth_cls_rule, ptr %5, i32 %location, i32 1
  %6 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_use, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end3.if.end17_crit_edge, label %if.then5

if.end3.if.end17_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then5:                                         ; preds = %if.end3
  %call6 = tail call fastcc i32 @dpaa2_eth_do_cls_rule(ptr noundef %net_dev, ptr noundef %arrayidx, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %8 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %in_use, align 8
  %9 = ptrtoint ptr %dpni_attrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dpni_attrs, align 4
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end9
  %11 = ptrtoint ptr %fs_entries to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fs_entries, align 2
  %conv.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp7.not.i = icmp eq i16 %12, 0
  br i1 %cmp7.not.i, label %land.lhs.true.if.then15_crit_edge, label %for.body.lr.ph.i

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

for.body.lr.ph.i:                                 ; preds = %land.lhs.true
  %13 = ptrtoint ptr %cls_rules to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cls_rules, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rules.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc2.i, %for.body.i.for.body.i_crit_edge ]
  %in_use.i = getelementptr %struct.dpaa2_eth_cls_rule, ptr %14, i32 %i.08.i, i32 1
  %15 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %in_use.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp ne i8 %16, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %rules.09.i, %inc.i
  %inc2.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc2.i, %conv.i
  br i1 %exitcond.not.i, label %dpaa2_eth_num_cls_rules.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

dpaa2_eth_num_cls_rules.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool14.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool14.not, label %dpaa2_eth_num_cls_rules.exit.if.then15_crit_edge, label %dpaa2_eth_num_cls_rules.exit.if.end17_crit_edge

dpaa2_eth_num_cls_rules.exit.if.end17_crit_edge:  ; preds = %dpaa2_eth_num_cls_rules.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

dpaa2_eth_num_cls_rules.exit.if.then15_crit_edge: ; preds = %dpaa2_eth_num_cls_rules.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then15:                                        ; preds = %dpaa2_eth_num_cls_rules.exit.if.then15_crit_edge, %land.lhs.true.if.then15_crit_edge
  %rx_cls_fields = getelementptr i8, ptr %net_dev, i32 164896
  %17 = ptrtoint ptr %rx_cls_fields to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %rx_cls_fields, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %dpaa2_eth_num_cls_rules.exit.if.end17_crit_edge, %if.end9.if.end17_crit_edge, %if.end3.if.end17_crit_edge
  %err.0 = phi i32 [ 0, %if.end9.if.end17_crit_edge ], [ 0, %dpaa2_eth_num_cls_rules.exit.if.end17_crit_edge ], [ 0, %if.then15 ], [ -22, %if.end3.if.end17_crit_edge ]
  %tobool18.not = icmp eq ptr %new_fs, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %call21 = tail call fastcc i32 @dpaa2_eth_do_cls_rule(ptr noundef %net_dev, ptr noundef nonnull %new_fs, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %in_use, align 8
  %19 = call ptr @memcpy(ptr %arrayidx, ptr %new_fs, i32 168)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end20.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ %err.0, %if.end17.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_eth_do_cls_rule(ptr noundef %net_dev, ptr noundef readonly %fs, i1 noundef zeroext %add) unnamed_addr #0 align 64 {
entry:
  %rule_cfg = alloca %struct.dpni_rule_cfg, align 8
  %fs_act = alloca %struct.dpni_fs_action_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rule_cfg) #9
  %2 = call ptr @memset(ptr %rule_cfg, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fs_act) #9
  %3 = call ptr @memset(ptr %fs_act, i32 0, i32 16)
  %ring_cookie = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 5
  %4 = ptrtoint ptr %ring_cookie to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ring_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp.not = icmp eq i64 %5, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %num_channels = getelementptr i8, ptr %net_dev, i32 164716
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_channels, align 4
  %conv = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp3.not = icmp ult i64 %5, %conv
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = tail call i32 @dpaa2_eth_cls_key_size(i64 noundef -1) #9
  %conv6 = trunc i32 %call5 to i8
  %key_size = getelementptr inbounds %struct.dpni_rule_cfg, ptr %rule_cfg, i32 0, i32 2
  %8 = ptrtoint ptr %key_size to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv6, ptr %key_size, align 8
  %conv8 = shl i32 %call5, 1
  %mul = and i32 %conv8, 510
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %9 = ptrtoint ptr %key_size to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %key_size, align 8
  %conv13 = zext i8 %10 to i32
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %conv13
  %11 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fs, align 8
  %trunc.i = trunc i32 %12 to i8
  %13 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %trunc.i, label %if.end11.free_mem_crit_edge [
    i8 18, label %sw.bb.i
    i8 13, label %sw.bb1.i
    i8 1, label %if.end11.sw.epilog.i_crit_edge
    i8 2, label %sw.bb9.i
    i8 3, label %sw.bb13.i
  ]

if.end11.sw.epilog.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end11.free_mem_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_mem

sw.bb.i:                                          ; preds = %if.end11
  %h_u.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1
  %m_u.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3
  %h_proto.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %h_proto.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.if.end.i.i143_crit_edge, label %if.then.i.i

sw.bb.i.if.end.i.i143_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i143

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 2, i32 noundef 8) #9
  %h_proto1.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %h_proto1.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %h_proto1.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %call.i.i
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %add.ptr.i.i, align 2
  %19 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %h_proto.i.i, align 1
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr, i32 %call.i.i
  %21 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr3.i.i, align 2
  br label %if.end.i.i143

if.end.i.i143:                                    ; preds = %if.then.i.i, %sw.bb.i.if.end.i.i143_crit_edge
  %fields.0 = phi i64 [ 0, %sw.bb.i.if.end.i.i143_crit_edge ], [ 4, %if.then.i.i ]
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %m_u.i, i32 0, i32 1
  %22 = ptrtoint ptr %h_source.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %h_source.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.ethhdr, ptr %m_u.i, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %25 to i32
  %or.i.i.i = or i32 %23, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i142 = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i142, label %if.end.i.i143.if.end14.i.i_crit_edge, label %if.then5.i.i

if.end.i.i143.if.end14.i.i_crit_edge:             ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 2, i32 noundef 2) #9
  %add.ptr7.i.i = getelementptr i8, ptr %call9.i.i, i32 %call6.i.i
  %h_source8.i.i = getelementptr inbounds %struct.ethhdr, ptr %h_u.i, i32 0, i32 1
  %26 = ptrtoint ptr %h_source8.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %h_source8.i.i, align 4
  %28 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr7.i.i, align 4
  %add.ptr.i1.i.i = getelementptr %struct.ethhdr, ptr %h_u.i, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i1.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr7.i.i, i32 4
  %31 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %add.ptr1.i.i.i, align 2
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr, i32 %call6.i.i
  %32 = ptrtoint ptr %h_source.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %h_source.i.i, align 4
  %34 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %add.ptr10.i.i, align 4
  %35 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i3.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 4
  %37 = ptrtoint ptr %add.ptr1.i3.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %add.ptr1.i3.i.i, align 2
  %or13.i.i = or i64 %fields.0, 2
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then5.i.i, %if.end.i.i143.if.end14.i.i_crit_edge
  %fields.1 = phi i64 [ %fields.0, %if.end.i.i143.if.end14.i.i_crit_edge ], [ %or13.i.i, %if.then5.i.i ]
  %38 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %m_u.i, align 4
  %add.ptr.i4.i.i = getelementptr %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %add.ptr.i4.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i4.i.i, align 2
  %conv.i5.i.i = zext i16 %41 to i32
  %or.i6.i.i = or i32 %39, %conv.i5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i6.i.i)
  %cmp.i7.i.i = icmp eq i32 %or.i6.i.i, 0
  br i1 %cmp.i7.i.i, label %if.end14.i.i.if.end.i_crit_edge, label %if.then17.i.i

if.end14.i.i.if.end.i_crit_edge:                  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 2, i32 noundef 1) #9
  %add.ptr19.i.i = getelementptr i8, ptr %call9.i.i, i32 %call18.i.i
  %42 = ptrtoint ptr %h_u.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %h_u.i, align 4
  %44 = ptrtoint ptr %add.ptr19.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %add.ptr19.i.i, align 4
  %add.ptr.i8.i.i = getelementptr %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %add.ptr.i8.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i8.i.i, align 2
  %add.ptr1.i9.i.i = getelementptr i8, ptr %add.ptr19.i.i, i32 4
  %47 = ptrtoint ptr %add.ptr1.i9.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %add.ptr1.i9.i.i, align 2
  %add.ptr22.i.i = getelementptr i8, ptr %add.ptr, i32 %call18.i.i
  %48 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %m_u.i, align 4
  %50 = ptrtoint ptr %add.ptr22.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %add.ptr22.i.i, align 4
  %51 = ptrtoint ptr %add.ptr.i4.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr.i4.i.i, align 2
  %add.ptr1.i11.i.i = getelementptr i8, ptr %add.ptr22.i.i, i32 4
  %53 = ptrtoint ptr %add.ptr1.i11.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %add.ptr1.i11.i.i, align 2
  br label %if.end.sink.split.i

sw.bb1.i:                                         ; preds = %if.end11
  %h_u2.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1
  %m_u3.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3
  %tos.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 3
  %54 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tos.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i76.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i76.i, label %lor.lhs.false.i.i, label %sw.bb1.i.free_mem_crit_edge

sw.bb1.i.free_mem_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_mem

lor.lhs.false.i.i:                                ; preds = %sw.bb1.i
  %ip_ver.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u3.i, i32 0, i32 4
  %56 = ptrtoint ptr %ip_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ip_ver.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool2.not.i.i = icmp eq i8 %57, 0
  br i1 %tobool2.not.i.i, label %if.end.i77.i, label %lor.lhs.false.i.i.free_mem_crit_edge

lor.lhs.false.i.i.free_mem_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_mem

if.end.i77.i:                                     ; preds = %lor.lhs.false.i.i
  %58 = ptrtoint ptr %m_u3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %m_u3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool3.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool3.not.i.i, label %if.end.i77.i.if.end8.i.i144_crit_edge, label %if.then4.i.i

if.end.i77.i.if.end8.i.i144_crit_edge:            ; preds = %if.end.i77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i144

if.then4.i.i:                                     ; preds = %if.end.i77.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i78.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 6, i32 noundef 32) #9
  %60 = ptrtoint ptr %h_u2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %h_u2.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %call9.i.i, i32 %call.i78.i
  %62 = ptrtoint ptr %add.ptr.i79.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %add.ptr.i79.i, align 4
  %63 = ptrtoint ptr %m_u3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %m_u3.i, align 4
  %add.ptr7.i80.i = getelementptr i8, ptr %add.ptr, i32 %call.i78.i
  %65 = ptrtoint ptr %add.ptr7.i80.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %add.ptr7.i80.i, align 4
  br label %if.end8.i.i144

if.end8.i.i144:                                   ; preds = %if.then4.i.i, %if.end.i77.i.if.end8.i.i144_crit_edge
  %fields.2 = phi i64 [ 0, %if.end.i77.i.if.end8.i.i144_crit_edge ], [ 16, %if.then4.i.i ]
  %ip4dst.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 1
  %66 = ptrtoint ptr %ip4dst.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ip4dst.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool9.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool9.not.i.i, label %if.end8.i.i144.if.end17.i.i_crit_edge, label %if.then10.i.i

if.end8.i.i144.if.end17.i.i_crit_edge:            ; preds = %if.end8.i.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

if.then10.i.i:                                    ; preds = %if.end8.i.i144
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 6, i32 noundef 64) #9
  %ip4dst12.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1, i32 0, i32 0, i32 1
  %68 = ptrtoint ptr %ip4dst12.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ip4dst12.i.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %call9.i.i, i32 %call11.i.i
  %70 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %add.ptr13.i.i, align 4
  %71 = ptrtoint ptr %ip4dst.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ip4dst.i.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %add.ptr, i32 %call11.i.i
  %73 = ptrtoint ptr %add.ptr15.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %add.ptr15.i.i, align 4
  %or16.i.i = or i64 %fields.2, 32
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then10.i.i, %if.end8.i.i144.if.end17.i.i_crit_edge
  %fields.3 = phi i64 [ %fields.2, %if.end8.i.i144.if.end17.i.i_crit_edge ], [ %or16.i.i, %if.then10.i.i ]
  %proto.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u3.i, i32 0, i32 5
  %74 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %proto.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool18.not.i.i = icmp eq i8 %75, 0
  br i1 %tobool18.not.i.i, label %if.end17.i.i.if.end26.i.i_crit_edge, label %if.then19.i.i

if.end17.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 6, i32 noundef 16) #9
  %proto21.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u2.i, i32 0, i32 5
  %76 = ptrtoint ptr %proto21.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %proto21.i.i, align 2
  %add.ptr22.i82.i = getelementptr i8, ptr %call9.i.i, i32 %call20.i.i
  %78 = ptrtoint ptr %add.ptr22.i82.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %add.ptr22.i82.i, align 1
  %79 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %proto.i.i, align 2
  %add.ptr24.i.i = getelementptr i8, ptr %add.ptr, i32 %call20.i.i
  %81 = ptrtoint ptr %add.ptr24.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %add.ptr24.i.i, align 1
  %or25.i83.i = or i64 %fields.3, 64
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then19.i.i, %if.end17.i.i.if.end26.i.i_crit_edge
  %fields.4 = phi i64 [ %fields.3, %if.end17.i.i.if.end26.i.i_crit_edge ], [ %or25.i83.i, %if.then19.i.i ]
  %l4_4_bytes.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 2
  %82 = ptrtoint ptr %l4_4_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %l4_4_bytes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool27.not.i.i = icmp eq i32 %83, 0
  br i1 %tobool27.not.i.i, label %if.end26.i.i.if.end45.i.i_crit_edge, label %if.then28.i.i

if.end26.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i.i

if.then28.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %l4_4_bytes29.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1, i32 0, i32 0, i32 2
  %84 = ptrtoint ptr %l4_4_bytes29.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %l4_4_bytes29.i.i, align 4
  %call31.i.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 8, i32 noundef 1) #9
  %shr.i.i = lshr i32 %85, 16
  %conv32.i.i = trunc i32 %shr.i.i to i16
  %add.ptr33.i.i = getelementptr i8, ptr %call9.i.i, i32 %call31.i.i
  %86 = ptrtoint ptr %add.ptr33.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv32.i.i, ptr %add.ptr33.i.i, align 2
  %shr34.i.i = lshr i32 %83, 16
  %conv35.i.i = trunc i32 %shr34.i.i to i16
  %add.ptr36.i.i = getelementptr i8, ptr %add.ptr, i32 %call31.i.i
  %87 = ptrtoint ptr %add.ptr36.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv35.i.i, ptr %add.ptr36.i.i, align 2
  %call38.i.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 8, i32 noundef 2) #9
  %conv39.i.i = trunc i32 %85 to i16
  %add.ptr40.i.i = getelementptr i8, ptr %call9.i.i, i32 %call38.i.i
  %88 = ptrtoint ptr %add.ptr40.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv39.i.i, ptr %add.ptr40.i.i, align 2
  %conv42.i.i = trunc i32 %83 to i16
  %add.ptr43.i.i = getelementptr i8, ptr %add.ptr, i32 %call38.i.i
  %89 = ptrtoint ptr %add.ptr43.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv42.i.i, ptr %add.ptr43.i.i, align 2
  %or44.i.i = or i64 %fields.4, 384
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then28.i.i, %if.end26.i.i.if.end45.i.i_crit_edge
  %fields.5 = phi i64 [ %fields.4, %if.end26.i.i.if.end45.i.i_crit_edge ], [ %or44.i.i, %if.then28.i.i ]
  %call46.i.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 2, i32 noundef 8) #9
  %add.ptr47.i.i = getelementptr i8, ptr %call9.i.i, i32 %call46.i.i
  %90 = ptrtoint ptr %add.ptr47.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 2048, ptr %add.ptr47.i.i, align 2
  %add.ptr48.i.i = getelementptr i8, ptr %add.ptr, i32 %call46.i.i
  %91 = ptrtoint ptr %add.ptr48.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 -1, ptr %add.ptr48.i.i, align 2
  br label %if.end.sink.split.i

sw.bb9.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb13.i, %sw.bb9.i, %if.end11.sw.epilog.i_crit_edge
  %.sink.i = phi i8 [ -124, %sw.bb13.i ], [ 17, %sw.bb9.i ], [ 6, %if.end11.sw.epilog.i_crit_edge ]
  %h_u14.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1
  %m_u15.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3
  %tos.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 3
  %92 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %tos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i150 = icmp eq i8 %93, 0
  br i1 %tobool.not.i150, label %if.end.i151, label %sw.epilog.i.free_mem_crit_edge

sw.epilog.i.free_mem_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_mem

if.end.i151:                                      ; preds = %sw.epilog.i
  %94 = ptrtoint ptr %m_u15.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %m_u15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool1.not.i = icmp eq i32 %95, 0
  br i1 %tobool1.not.i, label %if.end.i151.if.end6.i_crit_edge, label %if.then2.i

if.end.i151.if.end6.i_crit_edge:                  ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #11
  %call.i152 = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 6, i32 noundef 32) #9
  %96 = ptrtoint ptr %h_u14.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %h_u14.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %call9.i.i, i32 %call.i152
  %98 = ptrtoint ptr %add.ptr.i153 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %add.ptr.i153, align 4
  %99 = ptrtoint ptr %m_u15.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %m_u15.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr, i32 %call.i152
  %101 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %add.ptr5.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i151.if.end6.i_crit_edge
  %fields.6 = phi i64 [ 0, %if.end.i151.if.end6.i_crit_edge ], [ 16, %if.then2.i ]
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 1
  %102 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ip4dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool7.not.i = icmp eq i32 %103, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end15.i_crit_edge, label %if.then8.i

if.end6.i.if.end15.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 6, i32 noundef 64) #9
  %ip4dst10.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1, i32 0, i32 0, i32 1
  %104 = ptrtoint ptr %ip4dst10.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ip4dst10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %call9.i.i, i32 %call9.i
  %106 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %add.ptr11.i, align 4
  %107 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ip4dst.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %add.ptr, i32 %call9.i
  %109 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %add.ptr13.i, align 4
  %or14.i = or i64 %fields.6, 32
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end15.i_crit_edge
  %fields.7 = phi i64 [ %fields.6, %if.end6.i.if.end15.i_crit_edge ], [ %or14.i, %if.then8.i ]
  %psrc.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 2
  %110 = ptrtoint ptr %psrc.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %psrc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool16.not.i = icmp eq i16 %111, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end24.i_crit_edge, label %if.then17.i

if.end15.i.if.end24.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 8, i32 noundef 1) #9
  %psrc19.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1, i32 0, i32 0, i32 2
  %112 = ptrtoint ptr %psrc19.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %psrc19.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %call9.i.i, i32 %call18.i
  %114 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %add.ptr20.i, align 2
  %115 = ptrtoint ptr %psrc.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %psrc.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %add.ptr, i32 %call18.i
  %117 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %add.ptr22.i, align 2
  %or23.i = or i64 %fields.7, 128
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end24.i_crit_edge
  %fields.8 = phi i64 [ %fields.7, %if.end15.i.if.end24.i_crit_edge ], [ %or23.i, %if.then17.i ]
  %pdst.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u15.i, i32 0, i32 3
  %118 = ptrtoint ptr %pdst.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %pdst.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool25.not.i = icmp eq i16 %119, 0
  br i1 %tobool25.not.i, label %if.end24.i.dpaa2_eth_prep_l4_rule.exit.thread_crit_edge, label %if.then26.i

if.end24.i.dpaa2_eth_prep_l4_rule.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpaa2_eth_prep_l4_rule.exit.thread

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %call27.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 8, i32 noundef 2) #9
  %pdst28.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u14.i, i32 0, i32 3
  %120 = ptrtoint ptr %pdst28.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %pdst28.i, align 2
  %add.ptr29.i = getelementptr i8, ptr %call9.i.i, i32 %call27.i
  %122 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %add.ptr29.i, align 2
  %123 = ptrtoint ptr %pdst.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %pdst.i, align 2
  %add.ptr31.i = getelementptr i8, ptr %add.ptr, i32 %call27.i
  %125 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %add.ptr31.i, align 2
  %or32.i = or i64 %fields.8, 256
  br label %dpaa2_eth_prep_l4_rule.exit.thread

dpaa2_eth_prep_l4_rule.exit.thread:               ; preds = %if.then26.i, %if.end24.i.dpaa2_eth_prep_l4_rule.exit.thread_crit_edge
  %fields.9 = phi i64 [ %fields.8, %if.end24.i.dpaa2_eth_prep_l4_rule.exit.thread_crit_edge ], [ %or32.i, %if.then26.i ]
  %call34.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 2, i32 noundef 8) #9
  %add.ptr35.i = getelementptr i8, ptr %call9.i.i, i32 %call34.i
  %126 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 2048, ptr %add.ptr35.i, align 2
  %add.ptr36.i = getelementptr i8, ptr %add.ptr, i32 %call34.i
  %127 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 -1, ptr %add.ptr36.i, align 2
  %call38.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 6, i32 noundef 16) #9
  %add.ptr39.i = getelementptr i8, ptr %call9.i.i, i32 %call38.i
  %128 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %.sink.i, ptr %add.ptr39.i, align 1
  %add.ptr40.i = getelementptr i8, ptr %add.ptr, i32 %call38.i
  %129 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -1, ptr %add.ptr40.i, align 1
  %or41.i = or i64 %fields.9, 68
  br label %if.end.i

if.end.sink.split.i:                              ; preds = %if.end45.i.i, %if.then17.i.i
  %fields.11 = phi i64 [ %fields.5, %if.end45.i.i ], [ %fields.1, %if.then17.i.i ]
  %.sink110.i = phi i64 [ 4, %if.end45.i.i ], [ 1, %if.then17.i.i ]
  %or49.i.i = or i64 %.sink110.i, %fields.11
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %dpaa2_eth_prep_l4_rule.exit.thread, %if.end14.i.i.if.end.i_crit_edge
  %fields.12 = phi i64 [ %or49.i.i, %if.end.sink.split.i ], [ %fields.1, %if.end14.i.i.if.end.i_crit_edge ], [ %or41.i, %dpaa2_eth_prep_l4_rule.exit.thread ]
  %130 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %fs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %131)
  %tobool19.not.i = icmp sgt i32 %131, -1
  br i1 %tobool19.not.i, label %if.end.i.if.end25.i_crit_edge, label %if.then20.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then20.i:                                      ; preds = %if.end.i
  %vlan_etype.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 4, i32 2
  %132 = ptrtoint ptr %vlan_etype.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %vlan_etype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool.not.i84.i = icmp eq i16 %133, 0
  br i1 %tobool.not.i84.i, label %if.end.i85.i, label %if.then20.i.free_mem_crit_edge

if.then20.i.free_mem_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_mem

if.end.i85.i:                                     ; preds = %if.then20.i
  %vlan_tci.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 4, i32 3
  %134 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %vlan_tci.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool1.not.i.i = icmp eq i16 %135, 0
  br i1 %tobool1.not.i.i, label %if.end.i85.i.if.end25.i_crit_edge, label %if.then2.i.i

if.end.i85.i.if.end25.i_crit_edge:                ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then2.i.i:                                     ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i86.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 3, i32 noundef 7) #9
  %vlan_tci3.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 2, i32 3
  %136 = ptrtoint ptr %vlan_tci3.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %vlan_tci3.i.i, align 2
  %add.ptr.i87.i = getelementptr i8, ptr %call9.i.i, i32 %call.i86.i
  %138 = ptrtoint ptr %add.ptr.i87.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %add.ptr.i87.i, align 2
  %139 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %vlan_tci.i.i, align 2
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr, i32 %call.i86.i
  %141 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %add.ptr5.i.i, align 2
  %or.i88.i = or i64 %fields.12, 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then2.i.i, %if.end.i85.i.if.end25.i_crit_edge, %if.end.i.if.end25.i_crit_edge
  %fields.13 = phi i64 [ %fields.12, %if.end.i.if.end25.i_crit_edge ], [ %fields.12, %if.end.i85.i.if.end25.i_crit_edge ], [ %or.i88.i, %if.then2.i.i ]
  %142 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %fs, align 8
  %and27.i = and i32 %143, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.if.end17_crit_edge, label %if.then29.i

if.end25.i.if.end17_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then29.i:                                      ; preds = %if.end25.i
  %h_dest.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 4, i32 1
  %144 = ptrtoint ptr %h_dest.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %h_dest.i.i, align 4
  %add.ptr.i.i90.i = getelementptr %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 4, i32 1, i32 4
  %146 = ptrtoint ptr %add.ptr.i.i90.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %add.ptr.i.i90.i, align 2
  %conv.i.i91.i = zext i16 %147 to i32
  %or.i.i92.i = or i32 %145, %conv.i.i91.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i92.i)
  %cmp.i.i93.i = icmp eq i32 %or.i.i92.i, 0
  br i1 %cmp.i.i93.i, label %if.then29.i.if.end17_crit_edge, label %if.then.i99.i

if.then29.i.if.end17_crit_edge:                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then.i99.i:                                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = tail call i32 @dpaa2_eth_cls_fld_off(i32 noundef 2, i32 noundef 1) #9
  %add.ptr.i94.i = getelementptr i8, ptr %call9.i.i, i32 %call1.i.i
  %h_dest2.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 2, i32 1
  %148 = ptrtoint ptr %h_dest2.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %h_dest2.i.i, align 4
  %150 = ptrtoint ptr %add.ptr.i94.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %add.ptr.i94.i, align 4
  %add.ptr.i1.i95.i = getelementptr %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 2, i32 1, i32 4
  %151 = ptrtoint ptr %add.ptr.i1.i95.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %add.ptr.i1.i95.i, align 2
  %add.ptr1.i.i96.i = getelementptr i8, ptr %add.ptr.i94.i, i32 4
  %153 = ptrtoint ptr %add.ptr1.i.i96.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %add.ptr1.i.i96.i, align 2
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr, i32 %call1.i.i
  %154 = ptrtoint ptr %h_dest.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %h_dest.i.i, align 4
  %156 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %add.ptr4.i.i, align 4
  %157 = ptrtoint ptr %add.ptr.i.i90.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %add.ptr.i.i90.i, align 2
  %add.ptr1.i3.i97.i = getelementptr i8, ptr %add.ptr4.i.i, i32 4
  %159 = ptrtoint ptr %add.ptr1.i3.i97.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %add.ptr1.i3.i97.i, align 2
  %or.i98.i = or i64 %fields.13, 1
  br label %if.end17

if.end17:                                         ; preds = %if.then.i99.i, %if.then29.i.if.end17_crit_edge, %if.end25.i.if.end17_crit_edge
  %fields.14 = phi i64 [ %fields.13, %if.end25.i.if.end17_crit_edge ], [ %fields.13, %if.then29.i.if.end17_crit_edge ], [ %or.i98.i, %if.then.i99.i ]
  %dpni_attrs = getelementptr i8, ptr %net_dev, i32 164788
  %160 = ptrtoint ptr %dpni_attrs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dpni_attrs, align 4
  %and = and i32 %161, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end36_crit_edge

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then19:                                        ; preds = %if.end17
  %rx_cls_fields = getelementptr i8, ptr %net_dev, i32 164896
  %162 = ptrtoint ptr %rx_cls_fields to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %rx_cls_fields, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %163)
  %tobool20.not = icmp eq i64 %163, 0
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then19
  %call22 = tail call i32 @dpaa2_eth_set_cls(ptr noundef %net_dev, i64 noundef %fields.14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then21.free_mem_crit_edge

if.then21.free_mem_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_mem

if.end25:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %164 = ptrtoint ptr %rx_cls_fields to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %fields.14, ptr %rx_cls_fields, align 8
  br label %if.end32

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_cmp8(i64 %163, i64 %fields.14)
  %cmp28.not = icmp eq i64 %163, %fields.14
  br i1 %cmp28.not, label %if.else.if.end32_crit_edge, label %if.then30

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %net_dev, ptr noundef nonnull @.str.7) #12
  br label %free_mem

if.end32:                                         ; preds = %if.else.if.end32_crit_edge, %if.end25
  tail call void @dpaa2_eth_cls_trim_rule(ptr noundef nonnull %call9.i.i, i64 noundef %fields.14) #9
  %call33 = tail call i32 @dpaa2_eth_cls_key_size(i64 noundef %fields.14) #9
  %conv34 = trunc i32 %call33 to i8
  %165 = ptrtoint ptr %key_size to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv34, ptr %key_size, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.end32, %if.end17.if.end36_crit_edge
  %166 = ptrtoint ptr %key_size to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %key_size, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end36
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !41

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i145 = tail call ptr @dev_driver_string(ptr noundef %1) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %168 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i146 = icmp eq ptr %169, null
  br i1 %tobool.not.i.i146, label %if.end.i.i147, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i147:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i147, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %171, %if.end.i.i147 ], [ %169, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %call16.i145, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef -1) #9
  br label %free_mem

dma_map_single_attrs.exit:                        ; preds = %if.end36
  %conv38 = zext i8 %167 to i32
  %mul39 = shl nuw nsw i32 %conv38, 1
  tail call void @debug_dma_map_single(ptr noundef %1, ptr noundef nonnull %call9.i.i, i32 noundef %mul39) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %172 = load ptr, ptr @mem_map, align 4
  %173 = ptrtoint ptr %call9.i.i to i32
  %sub.i = add i32 %173, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i148 = getelementptr %struct.page, ptr %172, i32 %shr.i
  %and.i = and i32 %173, 3968
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %add.ptr.i148, i32 noundef %and.i, i32 noundef %mul39, i32 noundef 1, i32 noundef 0) #9
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.free_mem_crit_edge, label %if.end44

dma_map_single_attrs.exit.free_mem_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_mem

if.end44:                                         ; preds = %dma_map_single_attrs.exit
  %conv45 = zext i32 %call41.i to i64
  %174 = ptrtoint ptr %rule_cfg to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %conv45, ptr %rule_cfg, align 8
  %175 = ptrtoint ptr %dpni_attrs to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %dpni_attrs, align 4
  %and49 = and i32 %176, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end44.if.end56_crit_edge, label %if.then51

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %key_size to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %key_size, align 8
  %conv53 = zext i8 %178 to i32
  %add54 = add i32 %call41.i, %conv53
  %conv55 = zext i32 %add54 to i64
  %mask_iova = getelementptr inbounds %struct.dpni_rule_cfg, ptr %rule_cfg, i32 0, i32 1
  %179 = ptrtoint ptr %mask_iova to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %conv55, ptr %mask_iova, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.end44.if.end56_crit_edge
  br i1 %add, label %if.then58, label %if.end56.if.end70_crit_edge

if.end56.if.end70_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then58:                                        ; preds = %if.end56
  %180 = ptrtoint ptr %ring_cookie to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %ring_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %181)
  %cmp60 = icmp eq i64 %181, -1
  br i1 %cmp60, label %if.then62, label %if.else66

if.then62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  %options63 = getelementptr inbounds %struct.dpni_fs_action_cfg, ptr %fs_act, i32 0, i32 2
  %182 = ptrtoint ptr %options63 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %options63, align 2
  %184 = or i16 %183, 1
  store i16 %184, ptr %options63, align 2
  br label %if.end70

if.else66:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  %conv68 = trunc i64 %181 to i16
  %flow_id = getelementptr inbounds %struct.dpni_fs_action_cfg, ptr %fs_act, i32 0, i32 1
  %185 = ptrtoint ptr %flow_id to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv68, ptr %flow_id, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.else66, %if.then62, %if.end56.if.end70_crit_edge
  %num_tcs = getelementptr i8, ptr %net_dev, i32 164793
  %186 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %num_tcs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %cmp73196.not = icmp eq i8 %187, 0
  br i1 %cmp73196.not, label %if.end70.for.end_crit_edge, label %for.body.lr.ph

if.end70.for.end_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end70
  %mc_io81 = getelementptr i8, ptr %net_dev, i32 164832
  %mc_token82 = getelementptr i8, ptr %net_dev, i32 164848
  %location = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false
  %inc = add nuw nsw i32 %i.0197, 1
  %188 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %num_tcs, align 1
  %conv72 = zext i8 %189 to i32
  %cmp73 = icmp ult i32 %inc, %conv72
  br i1 %cmp73, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0197 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %190 = ptrtoint ptr %mc_io81 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mc_io81, align 8
  %192 = ptrtoint ptr %mc_token82 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %mc_token82, align 8
  %conv77 = trunc i32 %i.0197 to i8
  br i1 %add, label %if.then76, label %if.else80

if.then76:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %194 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %location, align 8
  %conv78 = trunc i32 %195 to i16
  %call79 = call i32 @dpni_add_fs_entry(ptr noundef %191, i32 noundef 0, i16 noundef zeroext %193, i8 noundef zeroext %conv77, i16 noundef zeroext %conv78, ptr noundef nonnull %rule_cfg, ptr noundef nonnull %fs_act) #9
  br label %if.end85

if.else80:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call84 = call i32 @dpni_remove_fs_entry(ptr noundef %191, i32 noundef 0, i16 noundef zeroext %193, i8 noundef zeroext %conv77, ptr noundef nonnull %rule_cfg) #9
  br label %if.end85

if.end85:                                         ; preds = %if.else80, %if.then76
  %err.3 = phi i32 [ %call79, %if.then76 ], [ %call84, %if.else80 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool86.not = icmp eq i32 %err.3, 0
  br i1 %tobool86.not, label %lor.lhs.false, label %if.end85.for.end_crit_edge

if.end85.for.end_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end85
  %196 = ptrtoint ptr %dpni_attrs to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %dpni_attrs, align 4
  %and89 = and i32 %197, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %for.cond, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %lor.lhs.false.for.end_crit_edge, %if.end85.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end70.for.end_crit_edge
  %err.4 = phi i32 [ 0, %if.end70.for.end_crit_edge ], [ %err.3, %if.end85.for.end_crit_edge ], [ 0, %lor.lhs.false.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  %198 = ptrtoint ptr %key_size to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %key_size, align 8
  %conv94 = zext i8 %199 to i32
  %mul95 = shl nuw nsw i32 %conv94, 1
  call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %call41.i, i32 noundef %mul95, i32 noundef 1, i32 noundef 0) #9
  br label %free_mem

free_mem:                                         ; preds = %for.end, %dma_map_single_attrs.exit.free_mem_crit_edge, %dma_map_single_attrs.exit.thread, %if.then30, %if.then21.free_mem_crit_edge, %if.then20.i.free_mem_crit_edge, %sw.epilog.i.free_mem_crit_edge, %lor.lhs.false.i.i.free_mem_crit_edge, %sw.bb1.i.free_mem_crit_edge, %if.end11.free_mem_crit_edge
  %err.5 = phi i32 [ %err.4, %for.end ], [ -95, %if.then30 ], [ %call22, %if.then21.free_mem_crit_edge ], [ -12, %dma_map_single_attrs.exit.free_mem_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread ], [ -95, %if.end11.free_mem_crit_edge ], [ -95, %if.then20.i.free_mem_crit_edge ], [ -95, %lor.lhs.false.i.i.free_mem_crit_edge ], [ -95, %sw.bb1.i.free_mem_crit_edge ], [ -95, %sw.epilog.i.free_mem_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free_mem, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.5, %free_mem ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fs_act) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rule_cfg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_eth_cls_key_size(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_eth_set_cls(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpaa2_eth_cls_trim_rule(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpni_add_fs_entry(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpni_remove_fs_entry(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_eth_cls_fld_off(i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @dpaa2_phc_index, !1, !"dpaa2_phc_index", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c", i32 761, i32 5}
!2 = !{ptr @__ksymtab_dpaa2_phc_index, !3, !"__ksymtab_dpaa2_phc_index", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c", i32 762, i32 1}
!4 = !{ptr @dpaa2_ethtool_ops, !5, !"dpaa2_ethtool_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c", i32 877, i32 26}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c", i32 75, i32 27}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c", i32 78, i32 4}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c", i32 148, i32 24}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c", i32 175, i32 23}
!14 = !{ptr @dpaa2_ethtool_stats, !15, !"dpaa2_ethtool_stats", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c", i32 14, i32 13}
!16 = !{ptr @dpaa2_ethtool_extras, !17, !"dpaa2_ethtool_extras", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c", i32 41, i32 13}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c", i32 263, i32 25}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c", i32 291, i32 25}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c", i32 311, i32 24}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c", i32 586, i32 24}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
!40 = !{i64 721517, i64 721534}
!41 = !{!"branch_weights", i32 2000, i32 1}
