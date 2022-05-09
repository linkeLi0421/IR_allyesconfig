; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/gianfar_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/gianfar_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.gfar_priv_rx_q = type { ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, ptr, %struct.rx_q_stats, ptr, i8, i32, i32, [48 x i8] }
%struct.rx_q_stats = type { i64, i64, i64 }
%struct.gfar_priv_tx_q = type { %struct.spinlock, ptr, ptr, i32, i16, i16, %struct.tx_q_stats, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, [16 x i8] }
%struct.tx_q_stats = type { i64, i64 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gfar_private = type { ptr, ptr, i32, i16, i16, i32, i32, i32, [8 x ptr], [8 x ptr], [36 x i8], [2 x %struct.gfar_priv_grp], i32, i16, i32, i32, i32, i32, %struct.gfar_extra_stats, %struct.rmon_overflow, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.work_struct, ptr, i8, i32, i32, i32, i32, i32, i32, i32, %struct.ethtool_rx_list, %struct.mutex, [16 x ptr], i32, i16, i16, [256 x i32], [256 x i32], [40 x i8] }
%struct.gfar_priv_grp = type { %struct.spinlock, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, [3 x ptr], [92 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.gfar_extra_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.rmon_overflow = type { %struct.spinlock, i32, i64 }
%struct.ethtool_rx_list = type { %struct.list_head, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.gfar = type { i32, i32, [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [28 x i8], i32, i32, i32, i32, [44 x i8], i32, [8 x i8], i32, i32, [96 x i8], i32, i32, i32, i32, i32, i32, [40 x i8], i32, i32, [52 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [64 x i8], i32, i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [192 x i8], i32, i32, [8 x i8], i32, i32, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, [56 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [64 x i8], i32, i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [192 x i8], i32, i32, i32, i32, i32, [12 x i8], [24 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [192 x i8], %struct.rmon_mib, i32, [188 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [96 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [352 x i8], i32, [252 x i8], [248 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [36 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], [556 x i8], i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [208 x i8] }
%struct.rmon_mib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.114, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.114 = type { i32 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ethtool_flow_spec_container = type { %struct.ethtool_rx_flow_spec, %struct.list_head }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ptp_qoriq = type { ptr, %struct.ptp_qoriq_registers, %struct.spinlock, ptr, %struct.ptp_clock_info, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.ptp_qoriq_registers = type { ptr, ptr, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.filer_table = type { i32, [530 x %struct.gfar_filer_entry] }
%struct.gfar_filer_entry = type { i32, i32 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }

@gfar_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @gfar_gdrvinfo, ptr @gfar_reglen, ptr @gfar_get_regs, ptr @gfar_get_wol, ptr @gfar_set_wol, ptr @gfar_get_msglevel, ptr @gfar_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @gfar_gcoalesce, ptr @gfar_scoalesce, ptr @gfar_gringparam, ptr @gfar_sringparam, ptr null, ptr @gfar_gpauseparam, ptr @gfar_spauseparam, ptr null, ptr @gfar_gstrings, ptr null, ptr @gfar_fill_stats, ptr null, ptr null, ptr null, ptr null, ptr @gfar_sset_count, ptr @gfar_get_nfc, ptr @gfar_set_nfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfar_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfar-enet\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Coalescing is limited to %d microseconds\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Coalescing is limited to %d frames\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Ring sizes must be a power of 2\0A\00", [63 x i8] zeroinitializer }, align 32
@stat_gstrings = internal constant { [57 x [32 x i8]], [448 x i8] } { [57 x [32 x i8]] [[32 x i8] c"rx-allocation-errors\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-large-frame-errors\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-short-frame-errors\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-non-octet-errors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-crc-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-overrun-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-busy-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-babbling-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-truncated-frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ethernet-bus-error\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-babbling-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-underrun-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-timeout-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-64-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-65-127-frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-128-255-frames\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-256-511-frames\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-512-1023-frames\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-1024-1518-frames\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-rx-1519-1522-good-vlan\00\00\00\00\00\00\00", [32 x i8] c"rx-bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-fcs-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"receive-multicast-packet\00\00\00\00\00\00\00\00", [32 x i8] c"receive-broadcast-packet\00\00\00\00\00\00\00\00", [32 x i8] c"rx-control-frame-packets\00\00\00\00\00\00\00\00", [32 x i8] c"rx-pause-frame-packets\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-unknown-op-code\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-alignment-error\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-frame-length-error\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-code-error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-carrier-sense-error\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-undersize-packets\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-oversize-packets\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-fragmented-frames\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-jabber-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-dropped-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-byte-counter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-multicast-packets\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-broadcast-packets\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-pause-control-frames\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-deferral-packets\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-excessive-deferral-packets\00\00\00", [32 x i8] c"tx-single-collision-packets\00\00\00\00\00", [32 x i8] c"tx-multiple-collision-packets\00\00\00", [32 x i8] c"tx-late-collision-packets\00\00\00\00\00\00\00", [32 x i8] c"tx-excessive-collision-packets\00\00", [32 x i8] c"tx-total-collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"reserved\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-dropped-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-jabber-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-fcs-errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-control-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-oversize-frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-undersize-frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-fragmented-frames\00\00\00\00\00\00\00\00\00\00\00\00"], [448 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Right now this class is not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"No parse rule found, can't create hash rules\0A\00", [50 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Rule not added: ID %d not free!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"User-specific data not supported!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VLAN-etype not supported!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"IP-Version differing from IPv4 not supported!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Interface in FIFO mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Receive Queue Filtering enabled\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Receive Queue Filtering disabled\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Rule not added: No free space!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Rule not added: Unsupported Flow-type!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,etsec-ptp\00", [18 x i8] zeroinitializer }, align 32
@switch.table.gfar_set_nfc = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 544, i32 528, i32 544, i32 544, i32 288, i32 272], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 42, i64 49, i64 50]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 512]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 13, i64 18]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"gfar_ethtool_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1485, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 166, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 300, i32 20 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 306, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 415, i32 19 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"stat_gstrings\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 49, i32 19 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 712, i32 7 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 729, i32 7 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1304, i32 9 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1208, i32 9 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1211, i32 9 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1216, i32 9 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 799, i32 29 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 804, i32 9 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 807, i32 9 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1239, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1244, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [52 x i8] c"../drivers/net/ethernet/freescale/gianfar_ethtool.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1464, i32 49 }
@___asan_gen_.79 = private unnamed_addr constant [26 x i8] c"switch.table.gfar_set_nfc\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @gfar_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @stat_gstrings, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @switch.table.gfar_set_nfc], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfar_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stat_gstrings to i32), i32 1824, i32 2272, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfar_set_nfc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfar_set_features(ptr noundef %dev, i64 noundef %features) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %and = and i64 %xor, 1099511628160
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %state = getelementptr i8, ptr %dev, i32 3712
  br label %while.cond

while.cond:                                       ; preds = %do.end, %while.cond.preheader
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %while.cond.do.end_crit_edge

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

test_and_set_bit_lock.exit:                       ; preds = %while.cond
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 4, ptr elementtype(i32) %state) #15, !srcloc !45
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !46
  %5 = and i32 %asmresult.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp.i.not = icmp eq i32 %5, 0
  br i1 %phi.cmp.i.not, label %while.end, label %test_and_set_bit_lock.exit.do.end_crit_edge

test_and_set_bit_lock.exit.do.end_crit_edge:      ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %test_and_set_bit_lock.exit.do.end_crit_edge, %while.cond.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !47
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !48
  br label %while.cond

while.end:                                        ; preds = %test_and_set_bit_lock.exit
  %6 = ptrtoint ptr %features1 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %features, ptr %features1, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and10 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @stop_gfar(ptr noundef %dev) #15
  %call13 = tail call i32 @startup_gfar(ptr noundef %dev) #15
  br label %if.end14

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @gfar_mac_reset(ptr noundef %add.ptr.i) #15
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %err.0 = phi i32 [ %call13, %if.then12 ], [ 0, %if.else ]
  %call.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 4, ptr elementtype(i32) %state) #15, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end14 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_gfar(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @startup_gfar(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfar_mac_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfar_gdrvinfo(ptr nocapture noundef readnone %dev, ptr noundef %drvinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfar_reglen(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4096
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfar_get_regs(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %regs, ptr nocapture noundef writeonly %regbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2928
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx2 = getelementptr i32, ptr %1, i32 %i.08
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx2) #15, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !52
  %arrayidx4 = getelementptr i32, ptr %regbuf, i32 %i.08
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gfar_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef %wol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %wol_supported = getelementptr i8, ptr %dev, i32 4182
  %2 = ptrtoint ptr %wol_supported to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wol_supported, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %supported, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %wol_supported to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wol_supported, align 2
  %8 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool5.not = icmp eq i16 %8, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %supported, align 4
  %or8 = or i32 %10, 2
  store i32 %or8, ptr %supported, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %wol_opts = getelementptr i8, ptr %dev, i32 4180
  %11 = ptrtoint ptr %wol_opts to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %wol_opts, align 4
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool12.not = icmp eq i16 %13, 0
  br i1 %tobool12.not, label %if.end9.if.end16_crit_edge, label %if.then13

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32, ptr %wolopts, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9.if.end16_crit_edge
  %15 = ptrtoint ptr %wol_opts to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %wol_opts, align 4
  %17 = and i16 %16, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool20.not = icmp eq i16 %17, 0
  br i1 %tobool20.not, label %if.end16.if.end24_crit_edge, label %if.then21

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wolopts, align 4
  %or23 = or i32 %19, 2
  store i32 %or23, ptr %wolopts, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end16.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_set_wol(ptr nocapture noundef %dev, ptr nocapture noundef readonly %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %wol_supported = getelementptr i8, ptr %dev, i32 4182
  %0 = ptrtoint ptr %wol_supported to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wol_supported, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %wolopts2 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts2, align 4
  %and = and i32 %5, -35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and7 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %6 = trunc i32 %5 to i16
  %7 = and i16 %6, 2
  %wol_opts.0 = select i1 %tobool8.not, i16 %7, i16 1
  %and23 = and i16 %wol_opts.0, %1
  %wol_opts25 = getelementptr i8, ptr %dev, i32 4180
  %8 = ptrtoint ptr %wol_opts25 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %wol_opts25, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and23)
  %tobool27 = icmp ne i16 %and23, 0
  %call28 = tail call i32 @device_set_wakeup_enable(ptr noundef %10, i1 noundef zeroext %tobool27) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end31:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %wol_opts25 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %and23, ptr %wol_opts25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call28, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfar_get_msglevel(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3924
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @gfar_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3924
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfar_gcoalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %cvals, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device_flags = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_flags, align 16
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %rx_queue4 = getelementptr i8, ptr %dev, i32 2364
  %4 = ptrtoint ptr %rx_queue4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_queue4, align 4
  %tx_queue5 = getelementptr i8, ptr %dev, i32 2332
  %6 = ptrtoint ptr %tx_queue5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_queue5, align 4
  %rxic = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %rxic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxic, align 8
  %and7 = and i32 %9, 65535
  %and9 = lshr i32 %9, 21
  %shr = and i32 %and9, 255
  %txic = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %7, i32 0, i32 14
  %10 = ptrtoint ptr %txic to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %txic, align 8
  %and10 = and i32 %11, 65535
  %and12 = lshr i32 %11, 21
  %shr13 = and i32 %and12, 255
  %ndev1.i = getelementptr i8, ptr %dev, i32 2308
  %12 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev1.i, align 4
  %phydev2.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 145
  %14 = ptrtoint ptr %phydev2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phydev2.i, align 16
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %17)
  %switch.selectcmp.i = icmp eq i32 %17, 100
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2560, i32 25600
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %17)
  %switch.selectcmp5.i = icmp eq i32 %17, 1000
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 512, i32 %switch.select.i
  %mul.i = mul nuw nsw i32 %switch.select6.i, %and7
  %div.i = udiv i32 %mul.i, 1000
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %cvals, i32 0, i32 1
  %18 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.i, ptr %rx_coalesce_usecs, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %cvals, i32 0, i32 2
  %19 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %rx_max_coalesced_frames, align 4
  %20 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev1.i, align 4
  %phydev2.i33 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 145
  %22 = ptrtoint ptr %phydev2.i33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phydev2.i33, align 16
  %speed.i34 = getelementptr inbounds %struct.phy_device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %speed.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed.i34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %25)
  %switch.selectcmp.i35 = icmp eq i32 %25, 100
  %switch.select.i36 = select i1 %switch.selectcmp.i35, i32 2560, i32 25600
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %25)
  %switch.selectcmp5.i37 = icmp eq i32 %25, 1000
  %switch.select6.i38 = select i1 %switch.selectcmp5.i37, i32 512, i32 %switch.select.i36
  %mul.i39 = mul nuw nsw i32 %switch.select6.i38, %and10
  %div.i40 = udiv i32 %mul.i39, 1000
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %cvals, i32 0, i32 5
  %26 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div.i40, ptr %tx_coalesce_usecs, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %cvals, i32 0, i32 6
  %27 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr13, ptr %tx_max_coalesced_frames, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -95, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_scoalesce(ptr noundef %dev, ptr nocapture noundef readonly %cvals, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %device_flags = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_flags, align 16
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %cvals, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp = icmp ugt i32 %5, 65535
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 65535) #18
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %cvals, i32 0, i32 2
  %6 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp6 = icmp ugt i32 %7, 255
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 255) #18
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %cvals, i32 0, i32 5
  %8 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %9)
  %cmp9 = icmp ugt i32 %9, 65535
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 65535) #18
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %cvals, i32 0, i32 6
  %10 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %11)
  %cmp12 = icmp ugt i32 %11, 255
  br i1 %cmp12, label %if.then13, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end11
  %state = getelementptr i8, ptr %dev, i32 3712
  br label %while.cond

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 255) #18
  br label %cleanup

while.cond:                                       ; preds = %do.end, %while.cond.preheader
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state, align 4
  %and.i.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %while.cond.do.end_crit_edge

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

test_and_set_bit_lock.exit:                       ; preds = %while.cond
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 4, ptr elementtype(i32) %state) #15, !srcloc !45
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !46
  %15 = and i32 %asmresult.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %phi.cmp.i.not = icmp eq i32 %15, 0
  br i1 %phi.cmp.i.not, label %while.end, label %test_and_set_bit_lock.exit.do.end_crit_edge

test_and_set_bit_lock.exit.do.end_crit_edge:      ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %test_and_set_bit_lock.exit.do.end_crit_edge, %while.cond.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !53
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !54
  br label %while.cond

while.end:                                        ; preds = %test_and_set_bit_lock.exit
  %16 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp23 = icmp eq i32 %17, 0
  br i1 %cmp23, label %while.end.if.then26_crit_edge, label %lor.lhs.false

while.end.if.then26_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

lor.lhs.false:                                    ; preds = %while.end
  %18 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp25 = icmp eq i32 %19, 0
  br i1 %cmp25, label %lor.lhs.false.if.then26_crit_edge, label %for.cond28.preheader

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

for.cond28.preheader:                             ; preds = %lor.lhs.false
  %num_rx_queues29 = getelementptr i8, ptr %dev, i32 3724
  %20 = ptrtoint ptr %num_rx_queues29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_rx_queues29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp30173.not = icmp eq i32 %21, 0
  br i1 %cmp30173.not, label %for.cond28.preheader.if.end38_crit_edge, label %for.cond28.preheader.for.body31_crit_edge

for.cond28.preheader.for.body31_crit_edge:        ; preds = %for.cond28.preheader
  br label %for.body31

for.cond28.preheader.if.end38_crit_edge:          ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %while.end.if.then26_crit_edge
  %num_rx_queues = getelementptr i8, ptr %dev, i32 3724
  %22 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp27175.not = icmp eq i32 %23, 0
  br i1 %cmp27175.not, label %if.then26.if.end38_crit_edge, label %if.then26.for.body_crit_edge

if.then26.for.body_crit_edge:                     ; preds = %if.then26
  br label %for.body

if.then26.if.end38_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then26.for.body_crit_edge
  %i.0176 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then26.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.0176
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %rxcoalescing = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %rxcoalescing to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %rxcoalescing, align 4
  %inc = add nuw i32 %i.0176, 1
  %27 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_rx_queues, align 4
  %cmp27 = icmp ult i32 %inc, %28
  br i1 %cmp27, label %for.body.for.body_crit_edge, label %for.body.if.end38_crit_edge

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.cond28.preheader.for.body31_crit_edge
  %i.1174 = phi i32 [ %inc36, %for.body31.for.body31_crit_edge ], [ 0, %for.cond28.preheader.for.body31_crit_edge ]
  %arrayidx33 = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.1174
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx33, align 4
  %rxcoalescing34 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %rxcoalescing34 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %rxcoalescing34, align 4
  %inc36 = add nuw i32 %i.1174, 1
  %32 = ptrtoint ptr %num_rx_queues29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_rx_queues29, align 4
  %cmp30 = icmp ult i32 %inc36, %33
  br i1 %cmp30, label %for.body31.for.body31_crit_edge, label %for.body31.if.end38_crit_edge

for.body31.if.end38_crit_edge:                    ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body31

if.end38:                                         ; preds = %for.body31.if.end38_crit_edge, %for.body.if.end38_crit_edge, %if.then26.if.end38_crit_edge, %for.cond28.preheader.if.end38_crit_edge
  %num_rx_queues40 = getelementptr i8, ptr %dev, i32 3724
  %34 = ptrtoint ptr %num_rx_queues40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_rx_queues40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp41177.not = icmp eq i32 %35, 0
  br i1 %cmp41177.not, label %if.end38.for.end53_crit_edge, label %for.body42.lr.ph

if.end38.for.end53_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end53

for.body42.lr.ph:                                 ; preds = %if.end38
  %ndev1.i = getelementptr i8, ptr %dev, i32 2308
  br label %for.body42

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.body42.lr.ph
  %i.2178 = phi i32 [ 0, %for.body42.lr.ph ], [ %inc52, %for.body42.for.body42_crit_edge ]
  %36 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_max_coalesced_frames, align 4
  %shl = shl i32 %37, 21
  %and44 = and i32 %shl, 534773760
  %38 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_coalesce_usecs, align 4
  %40 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ndev1.i, align 4
  %phydev2.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 145
  %42 = ptrtoint ptr %phydev2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phydev2.i, align 16
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %45)
  %switch.selectcmp.i = icmp eq i32 %45, 100
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2560, i32 25600
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %45)
  %switch.selectcmp6.i = icmp eq i32 %45, 1000
  %switch.select7.i = select i1 %switch.selectcmp6.i, i32 512, i32 %switch.select.i
  %mul.i = mul i32 %39, 1000
  %add.i = add i32 %mul.i, -1
  %sub.i = add i32 %add.i, %switch.select7.i
  %div.i = udiv i32 %sub.i, %switch.select7.i
  %and47 = and i32 %div.i, 65535
  %or = or i32 %and44, %and47
  %or48 = or i32 %or, -2147483648
  %arrayidx50 = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.2178
  %46 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx50, align 4
  %rxic = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %rxic to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or48, ptr %rxic, align 8
  %inc52 = add nuw i32 %i.2178, 1
  %49 = ptrtoint ptr %num_rx_queues40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_rx_queues40, align 4
  %cmp41 = icmp ult i32 %inc52, %50
  br i1 %cmp41, label %for.body42.for.body42_crit_edge, label %for.body42.for.end53_crit_edge

for.body42.for.end53_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end53

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body42

for.end53:                                        ; preds = %for.body42.for.end53_crit_edge, %if.end38.for.end53_crit_edge
  %51 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp55 = icmp eq i32 %52, 0
  br i1 %cmp55, label %for.end53.if.then59_crit_edge, label %lor.lhs.false56

for.end53.if.then59_crit_edge:                    ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then59

lor.lhs.false56:                                  ; preds = %for.end53
  %53 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp58 = icmp eq i32 %54, 0
  br i1 %cmp58, label %lor.lhs.false56.if.then59_crit_edge, label %for.cond68.preheader

lor.lhs.false56.if.then59_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then59

for.cond68.preheader:                             ; preds = %lor.lhs.false56
  %num_tx_queues69 = getelementptr i8, ptr %dev, i32 3720
  %55 = ptrtoint ptr %num_tx_queues69 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_tx_queues69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp70179.not = icmp eq i32 %56, 0
  br i1 %cmp70179.not, label %for.cond68.preheader.if.end78_crit_edge, label %for.cond68.preheader.for.body71_crit_edge

for.cond68.preheader.for.body71_crit_edge:        ; preds = %for.cond68.preheader
  br label %for.body71

for.cond68.preheader.if.end78_crit_edge:          ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

if.then59:                                        ; preds = %lor.lhs.false56.if.then59_crit_edge, %for.end53.if.then59_crit_edge
  %num_tx_queues = getelementptr i8, ptr %dev, i32 3720
  %57 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp61181.not = icmp eq i32 %58, 0
  br i1 %cmp61181.not, label %if.then59.if.end78_crit_edge, label %if.then59.for.body62_crit_edge

if.then59.for.body62_crit_edge:                   ; preds = %if.then59
  br label %for.body62

if.then59.if.end78_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %if.then59.for.body62_crit_edge
  %i.3182 = phi i32 [ %inc65, %for.body62.for.body62_crit_edge ], [ 0, %if.then59.for.body62_crit_edge ]
  %arrayidx63 = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.3182
  %59 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx63, align 4
  %txcoalescing = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %60, i32 0, i32 13
  %61 = ptrtoint ptr %txcoalescing to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %txcoalescing, align 4
  %inc65 = add nuw i32 %i.3182, 1
  %62 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_tx_queues, align 8
  %cmp61 = icmp ult i32 %inc65, %63
  br i1 %cmp61, label %for.body62.for.body62_crit_edge, label %for.body62.if.end78_crit_edge

for.body62.if.end78_crit_edge:                    ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body62

for.body71:                                       ; preds = %for.body71.for.body71_crit_edge, %for.cond68.preheader.for.body71_crit_edge
  %i.4180 = phi i32 [ %inc76, %for.body71.for.body71_crit_edge ], [ 0, %for.cond68.preheader.for.body71_crit_edge ]
  %arrayidx73 = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.4180
  %64 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx73, align 4
  %txcoalescing74 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %65, i32 0, i32 13
  %66 = ptrtoint ptr %txcoalescing74 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %txcoalescing74, align 4
  %inc76 = add nuw i32 %i.4180, 1
  %67 = ptrtoint ptr %num_tx_queues69 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_tx_queues69, align 8
  %cmp70 = icmp ult i32 %inc76, %68
  br i1 %cmp70, label %for.body71.for.body71_crit_edge, label %for.body71.if.end78_crit_edge

for.body71.if.end78_crit_edge:                    ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

for.body71.for.body71_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body71

if.end78:                                         ; preds = %for.body71.if.end78_crit_edge, %for.body62.if.end78_crit_edge, %if.then59.if.end78_crit_edge, %for.cond68.preheader.if.end78_crit_edge
  %num_tx_queues80 = getelementptr i8, ptr %dev, i32 3720
  %69 = ptrtoint ptr %num_tx_queues80 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_tx_queues80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp81183.not = icmp eq i32 %70, 0
  br i1 %cmp81183.not, label %if.end78.for.end95_crit_edge, label %for.body82.lr.ph

if.end78.for.end95_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end95

for.body82.lr.ph:                                 ; preds = %if.end78
  %ndev1.i158 = getelementptr i8, ptr %dev, i32 2308
  br label %for.body82

for.body82:                                       ; preds = %for.body82.for.body82_crit_edge, %for.body82.lr.ph
  %i.5184 = phi i32 [ 0, %for.body82.lr.ph ], [ %inc94, %for.body82.for.body82_crit_edge ]
  %71 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_max_coalesced_frames, align 4
  %shl84 = shl i32 %72, 21
  %and85 = and i32 %shl84, 534773760
  %73 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_coalesce_usecs, align 4
  %75 = ptrtoint ptr %ndev1.i158 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ndev1.i158, align 4
  %phydev2.i159 = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 145
  %77 = ptrtoint ptr %phydev2.i159 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %phydev2.i159, align 16
  %speed.i160 = getelementptr inbounds %struct.phy_device, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %speed.i160 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %speed.i160, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %80)
  %switch.selectcmp.i161 = icmp eq i32 %80, 100
  %switch.select.i162 = select i1 %switch.selectcmp.i161, i32 2560, i32 25600
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %80)
  %switch.selectcmp6.i163 = icmp eq i32 %80, 1000
  %switch.select7.i164 = select i1 %switch.selectcmp6.i163, i32 512, i32 %switch.select.i162
  %mul.i165 = mul i32 %74, 1000
  %add.i166 = add i32 %mul.i165, -1
  %sub.i167 = add i32 %add.i166, %switch.select7.i164
  %div.i168 = udiv i32 %sub.i167, %switch.select7.i164
  %and89 = and i32 %div.i168, 65535
  %or86 = or i32 %and85, %and89
  %or90 = or i32 %or86, -2147483648
  %arrayidx92 = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.5184
  %81 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx92, align 4
  %txic = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %82, i32 0, i32 14
  %83 = ptrtoint ptr %txic to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or90, ptr %txic, align 8
  %inc94 = add nuw i32 %i.5184, 1
  %84 = ptrtoint ptr %num_tx_queues80 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_tx_queues80, align 8
  %cmp81 = icmp ult i32 %inc94, %85
  br i1 %cmp81, label %for.body82.for.body82_crit_edge, label %for.body82.for.end95_crit_edge

for.body82.for.end95_crit_edge:                   ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end95

for.body82.for.body82_crit_edge:                  ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body82

for.end95:                                        ; preds = %for.body82.for.end95_crit_edge, %if.end78.for.end95_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags, align 8
  %and96 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.else100, label %if.then98

if.then98:                                        ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @stop_gfar(ptr noundef %dev) #15
  %call99 = tail call i32 @startup_gfar(ptr noundef %dev) #15
  br label %if.end101

if.else100:                                       ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @gfar_mac_reset(ptr noundef %add.ptr.i) #15
  br label %if.end101

if.end101:                                        ; preds = %if.else100, %if.then98
  %err.0 = phi i32 [ %call99, %if.then98 ], [ 0, %if.else100 ]
  %call.i.i169 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 4, ptr elementtype(i32) %state) #15, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.then13, %if.then10, %if.then7, %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -22, %if.then7 ], [ -22, %if.then10 ], [ -22, %if.then13 ], [ %err.0, %if.end101 ], [ -95, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gfar_gringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %rvals, ptr nocapture noundef readnone %kernel_rvals, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_queue1 = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %tx_queue1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue1, align 4
  %rx_queue2 = getelementptr i8, ptr %dev, i32 2364
  %2 = ptrtoint ptr %rx_queue2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_queue2, align 4
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rvals, i32 0, i32 1
  %4 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 256, ptr %rx_max_pending, align 4
  %rx_mini_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rvals, i32 0, i32 2
  %5 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %rx_mini_max_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rvals, i32 0, i32 3
  %6 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 256, ptr %rx_jumbo_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rvals, i32 0, i32 4
  %7 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 256, ptr %tx_max_pending, align 4
  %rx_ring_size = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_ring_size, align 16
  %conv = zext i16 %9 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rvals, i32 0, i32 5
  %10 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %rx_pending, align 4
  %11 = load i16, ptr %rx_ring_size, align 16
  %conv5 = zext i16 %11 to i32
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rvals, i32 0, i32 6
  %12 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv5, ptr %rx_mini_pending, align 4
  %13 = load i16, ptr %rx_ring_size, align 16
  %conv7 = zext i16 %13 to i32
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rvals, i32 0, i32 7
  %14 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv7, ptr %rx_jumbo_pending, align 4
  %tx_ring_size = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tx_ring_size, align 2
  %conv8 = zext i16 %16 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rvals, i32 0, i32 8
  %17 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv8, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_sringparam(ptr noundef %dev, ptr nocapture noundef readonly %rvals, ptr nocapture noundef readnone %kernel_rvals, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rvals, i32 0, i32 5
  %0 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp = icmp ugt i32 %1, 256
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.ctpop.i32(i32 %1) #15, !range !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rvals, i32 0, i32 8
  %4 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp5 = icmp ugt i32 %5, 256
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #15, !range !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %while.cond.preheader, label %if.then10

while.cond.preheader:                             ; preds = %if.end7
  %state = getelementptr i8, ptr %dev, i32 3712
  br label %while.cond

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #18
  br label %cleanup

while.cond:                                       ; preds = %do.end, %while.cond.preheader
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %and.i.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %while.cond.do.end_crit_edge

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

test_and_set_bit_lock.exit:                       ; preds = %while.cond
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 4, ptr elementtype(i32) %state) #15, !srcloc !45
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !46
  %11 = and i32 %asmresult.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %phi.cmp.i.not = icmp eq i32 %11, 0
  br i1 %phi.cmp.i.not, label %while.end, label %test_and_set_bit_lock.exit.do.end_crit_edge

test_and_set_bit_lock.exit.do.end_crit_edge:      ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %test_and_set_bit_lock.exit.do.end_crit_edge, %while.cond.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !56
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !57
  br label %while.cond

while.end:                                        ; preds = %test_and_set_bit_lock.exit
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end.if.end20_crit_edge, label %if.then19

while.end.if.end20_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then19:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @stop_gfar(ptr noundef %dev) #15
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %while.end.if.end20_crit_edge
  %num_rx_queues = getelementptr i8, ptr %dev, i32 3724
  %14 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2171.not = icmp eq i32 %15, 0
  br i1 %cmp2171.not, label %if.end20.for.cond23.preheader_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

if.end20.for.cond23.preheader_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.body.for.cond23.preheader_crit_edge, %if.end20.for.cond23.preheader_crit_edge
  %num_tx_queues = getelementptr i8, ptr %dev, i32 3720
  %16 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2473.not = icmp eq i32 %17, 0
  br i1 %cmp2473.not, label %for.cond23.preheader.for.end32_crit_edge, label %for.cond23.preheader.for.body26_crit_edge

for.cond23.preheader.for.body26_crit_edge:        ; preds = %for.cond23.preheader
  br label %for.body26

for.cond23.preheader.for.end32_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end32

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end20.for.body_crit_edge
  %i.072 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end20.for.body_crit_edge ]
  %18 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_pending, align 4
  %conv = trunc i32 %19 to i16
  %arrayidx = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.072
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %rx_ring_size = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %rx_ring_size, align 16
  %inc = add nuw i32 %i.072, 1
  %23 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_rx_queues, align 4
  %cmp21 = icmp ult i32 %inc, %24
  br i1 %cmp21, label %for.body.for.body_crit_edge, label %for.body.for.cond23.preheader_crit_edge

for.body.for.cond23.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond23.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.cond23.preheader.for.body26_crit_edge
  %i.174 = phi i32 [ %inc31, %for.body26.for.body26_crit_edge ], [ 0, %for.cond23.preheader.for.body26_crit_edge ]
  %25 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_pending, align 4
  %conv28 = trunc i32 %26 to i16
  %arrayidx29 = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.174
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx29, align 4
  %tx_ring_size = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv28, ptr %tx_ring_size, align 2
  %inc31 = add nuw i32 %i.174, 1
  %30 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_tx_queues, align 8
  %cmp24 = icmp ult i32 %inc31, %31
  br i1 %cmp24, label %for.body26.for.body26_crit_edge, label %for.body26.for.end32_crit_edge

for.body26.for.end32_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end32

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body26

for.end32:                                        ; preds = %for.body26.for.end32_crit_edge, %for.cond23.preheader.for.end32_crit_edge
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 8
  %and34 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %for.end32.if.end38_crit_edge, label %if.then36

for.end32.if.end38_crit_edge:                     ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then36:                                        ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #17
  %call37 = tail call i32 @startup_gfar(ptr noundef %dev) #15
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %for.end32.if.end38_crit_edge
  %err.0 = phi i32 [ %call37, %if.then36 ], [ 0, %for.end32.if.end38_crit_edge ]
  %call.i.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 4, ptr elementtype(i32) %state) #15, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then10, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end38 ], [ -22, %if.then10 ], [ -22, %if.then3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gfar_gpauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %epause) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pause_aneg_en = getelementptr i8, ptr %dev, i32 3976
  %0 = ptrtoint ptr %pause_aneg_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %pause_aneg_en, align 8
  %1 = lshr i8 %bf.load, 3
  %.lobit = and i8 %1, 1
  %2 = zext i8 %.lobit to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %3 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %autoneg, align 4
  %bf.load2 = load i8, ptr %pause_aneg_en, align 8
  %4 = lshr i8 %bf.load2, 1
  %.lobit22 = and i8 %4, 1
  %5 = zext i8 %.lobit22 to i32
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %6 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rx_pause, align 4
  %bf.load10 = load i8, ptr %pause_aneg_en, align 8
  %7 = lshr i8 %bf.load10, 2
  %.lobit23 = and i8 %7, 1
  %8 = zext i8 %.lobit23 to i32
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %9 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_spauseparam(ptr nocapture noundef %dev, ptr noundef %epause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %regs2 = getelementptr i8, ptr %dev, i32 2928
  %2 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs2, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call zeroext i1 @phy_validate_pause(ptr noundef nonnull %1, ptr noundef %epause) #15
  br i1 %call3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tx_pause_en = getelementptr i8, ptr %dev, i32 3976
  %4 = ptrtoint ptr %tx_pause_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %tx_pause_en, align 8
  %bf.clear7 = and i8 %bf.load, -7
  store i8 %bf.clear7, ptr %tx_pause_en, align 8
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %5 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9 = icmp ne i32 %6, 0
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %7 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10 = icmp ne i32 %8, 0
  tail call void @phy_set_asym_pause(ptr noundef nonnull %1, i1 noundef zeroext %tobool9, i1 noundef zeroext %tobool10) #15
  %9 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end5
  %11 = ptrtoint ptr %tx_pause_en to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load15 = load i8, ptr %tx_pause_en, align 8
  %bf.set17 = or i8 %bf.load15, 2
  store i8 %bf.set17, ptr %tx_pause_en, align 8
  %12 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool19.not = icmp eq i32 %13, 0
  br i1 %tobool19.not, label %if.then13.if.end34_crit_edge, label %if.then20

if.then13.if.end34_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then20:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set24 = or i8 %bf.load15, 6
  br label %if.end34.sink.split

if.else:                                          ; preds = %if.end5
  %14 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool27.not = icmp eq i32 %15, 0
  br i1 %tobool27.not, label %if.else.if.end34_crit_edge, label %if.then28

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %tx_pause_en to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load30 = load i8, ptr %tx_pause_en, align 8
  %bf.set32 = or i8 %bf.load30, 4
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.then28, %if.then20
  %bf.set32.sink = phi i8 [ %bf.set32, %if.then28 ], [ %bf.set24, %if.then20 ]
  %17 = ptrtoint ptr %tx_pause_en to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.set32.sink, ptr %tx_pause_en, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else.if.end34_crit_edge, %if.then13.if.end34_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %18 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool35.not = icmp eq i32 %19, 0
  %20 = ptrtoint ptr %tx_pause_en to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load42 = load i8, ptr %tx_pause_en, align 8
  %bf.clear43 = and i8 %bf.load42, -9
  %masksel = select i1 %tobool35.not, i8 0, i8 8
  %storemerge = or i8 %bf.clear43, %masksel
  store i8 %storemerge, ptr %tx_pause_en, align 8
  %21 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool47.not = icmp eq i32 %22, 0
  br i1 %tobool47.not, label %if.then48, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then48:                                        ; preds = %if.end34
  %maccfg1 = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 119
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg1) #15, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !52
  %and = and i32 %23, -49
  %tx_actual_en = getelementptr i8, ptr %dev, i32 3732
  %24 = ptrtoint ptr %tx_actual_en to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tx_actual_en, align 4
  %25 = ptrtoint ptr %tx_pause_en to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load51 = load i8, ptr %tx_pause_en, align 8
  %26 = and i8 %bf.load51, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool53.not = icmp eq i8 %26, 0
  br i1 %tobool53.not, label %if.then48.if.end56_crit_edge, label %if.then54

if.then48.if.end56_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then54:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %tx_actual_en to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %tx_actual_en, align 4
  %or = or i32 %and, 16
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.then48.if.end56_crit_edge
  %tempval.0 = phi i32 [ %or, %if.then54 ], [ %and, %if.then48.if.end56_crit_edge ]
  %28 = ptrtoint ptr %tx_pause_en to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load58 = load i8, ptr %tx_pause_en, align 8
  %29 = shl i8 %bf.load58, 4
  %30 = and i8 %29, 32
  %31 = zext i8 %30 to i32
  %32 = or i32 %tempval.0, %31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1, i32 %32) #15, !srcloc !59
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end34.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end56 ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gfar_gstrings(ptr nocapture noundef readonly %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device_flags = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_flags, align 16
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = call ptr @memcpy(ptr %buf, ptr @stat_gstrings, i32 1824)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = call ptr @memcpy(ptr %buf, ptr @stat_gstrings, i32 416)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfar_fill_stats(ptr noundef %dev, ptr nocapture noundef readnone %dummy, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2928
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 16
  %extra_stats = getelementptr i8, ptr %dev, i32 3736
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %extra_stats, i32 noundef 8) #15
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %extra_stats) #15
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i, ptr %buf, align 8
  %arrayidx2.1 = getelementptr i8, ptr %dev, i32 3744
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.1, i32 noundef 8) #15
  %call.i.1 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx2.1) #15
  %arrayidx4.1 = getelementptr i64, ptr %buf, i32 1
  %3 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call.i.1, ptr %arrayidx4.1, align 8
  %arrayidx2.2 = getelementptr i8, ptr %dev, i32 3752
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.2, i32 noundef 8) #15
  %call.i.2 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx2.2) #15
  %arrayidx4.2 = getelementptr i64, ptr %buf, i32 2
  %4 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i.2, ptr %arrayidx4.2, align 8
  %arrayidx2.3 = getelementptr i8, ptr %dev, i32 3760
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.3, i32 noundef 8) #15
  %call.i.3 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx2.3) #15
  %arrayidx4.3 = getelementptr i64, ptr %buf, i32 3
  %5 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i.3, ptr %arrayidx4.3, align 8
  %arrayidx2.4 = getelementptr i8, ptr %dev, i32 3768
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.4, i32 noundef 8) #15
  %call.i.4 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx2.4) #15
  %arrayidx4.4 = getelementptr i64, ptr %buf, i32 4
  %6 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i.4, ptr %arrayidx4.4, align 8
  %arrayidx2.5 = getelementptr i8, ptr %dev, i32 3776
  %call.i.i.5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.5, i32 noundef 8) #15
  %call.i.5 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx2.5) #15
  %arrayidx4.5 = getelementptr i64, ptr %buf, i32 5
  %7 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call.i.5, ptr %arrayidx4.5, align 8
  %arrayidx2.6 = getelementptr i8, ptr %dev, i32 3784
  %call.i.i.6 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.6, i32 noundef 8) #15
  %call.i.6 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx2.6) #15
  %arrayidx4.6 = getelementptr i64, ptr %buf, i32 6
  %8 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i.6, ptr %arrayidx4.6, align 8
  %arrayidx2.7 = getelementptr i8, ptr %dev, i32 3792
  %call.i.i.7 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.7, i32 noundef 8) #15
  %call.i.7 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx2.7) #15
  %arrayidx4.7 = getelementptr i64, ptr %buf, i32 7
  %9 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call.i.7, ptr %arrayidx4.7, align 8
  %arrayidx2.8 = getelementptr i8, ptr %dev, i32 3800
  %call.i.i.8 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.8, i32 noundef 8) #15
  %call.i.8 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx2.8) #15
  %arrayidx4.8 = getelementptr i64, ptr %buf, i32 8
  %10 = ptrtoint ptr %arrayidx4.8 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call.i.8, ptr %arrayidx4.8, align 8
  %arrayidx2.9 = getelementptr i8, ptr %dev, i32 3808
  %call.i.i.9 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.9, i32 noundef 8) #15
  %call.i.9 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx2.9) #15
  %arrayidx4.9 = getelementptr i64, ptr %buf, i32 9
  %11 = ptrtoint ptr %arrayidx4.9 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call.i.9, ptr %arrayidx4.9, align 8
  %arrayidx2.10 = getelementptr i8, ptr %dev, i32 3816
  %call.i.i.10 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.10, i32 noundef 8) #15
  %call.i.10 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx2.10) #15
  %arrayidx4.10 = getelementptr i64, ptr %buf, i32 10
  %12 = ptrtoint ptr %arrayidx4.10 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call.i.10, ptr %arrayidx4.10, align 8
  %arrayidx2.11 = getelementptr i8, ptr %dev, i32 3824
  %call.i.i.11 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.11, i32 noundef 8) #15
  %call.i.11 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx2.11) #15
  %arrayidx4.11 = getelementptr i64, ptr %buf, i32 11
  %13 = ptrtoint ptr %arrayidx4.11 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i.11, ptr %arrayidx4.11, align 8
  %arrayidx2.12 = getelementptr i8, ptr %dev, i32 3832
  %call.i.i.12 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.12, i32 noundef 8) #15
  %call.i.12 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx2.12) #15
  %arrayidx4.12 = getelementptr i64, ptr %buf, i32 12
  %14 = ptrtoint ptr %arrayidx4.12 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call.i.12, ptr %arrayidx4.12, align 8
  %device_flags = getelementptr i8, ptr %dev, i32 2320
  %15 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_flags, align 16
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.not = icmp eq i32 %and, 0
  br i1 %tobool.not.not, label %entry.if.end_crit_edge, label %for.body8.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body8.preheader:                              ; preds = %entry
  %rmon5 = getelementptr inbounds %struct.gfar, ptr %1, i32 0, i32 161
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body8.preheader
  %rmon.027 = phi ptr [ %incdec.ptr, %for.body8.for.body8_crit_edge ], [ %rmon5, %for.body8.preheader ]
  %i.126 = phi i32 [ %inc12, %for.body8.for.body8_crit_edge ], [ 13, %for.body8.preheader ]
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rmon.027) #15, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !52
  %conv = zext i32 %17 to i64
  %arrayidx10 = getelementptr i64, ptr %buf, i32 %i.126
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %arrayidx10, align 8
  %inc12 = add nuw nsw i32 %i.126, 1
  %incdec.ptr = getelementptr i32, ptr %rmon.027, i32 1
  %exitcond.not = icmp eq i32 %inc12, 57
  br i1 %exitcond.not, label %for.body8.if.end_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body8

for.body8.if.end_crit_edge:                       ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %for.body8.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfar_sset_count(ptr nocapture noundef readonly %dev, i32 noundef %sset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device_flags = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_flags, align 16
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 13, i32 57
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_get_nfc(ptr noundef readonly %dev, ptr nocapture noundef %cmd, ptr nocapture noundef writeonly %rule_locs) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 46, label %sw.bb2
    i32 47, label %sw.bb3
    i32 48, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %num_rx_queues = getelementptr i8, ptr %dev, i32 3724
  %3 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_rx_queues, align 4
  %conv = zext i32 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %count = getelementptr i8, ptr %dev, i32 4016
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 8
  %8 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %rx_list.i = getelementptr i8, ptr %dev, i32 4008
  %location5.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %sw.bb3
  %.pn.in.i = phi ptr [ %rx_list.i, %sw.bb3 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %rx_list.i
  br i1 %cmp.not.i, label %for.cond.i.sw.epilog_crit_edge, label %for.body.i

for.cond.i.sw.epilog_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body.i:                                       ; preds = %for.cond.i
  %location.i = getelementptr i8, ptr %.pn.i, i32 -8
  %11 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %location.i, align 8
  %13 = ptrtoint ptr %location5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %location5.i, align 8
  %cmp6.i = icmp eq i32 %12, %14
  br i1 %cmp6.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %comp.0.le.i = getelementptr i8, ptr %.pn.i, i32 -168
  %fs4.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %fs4.i, ptr %comp.0.le.i, i32 168)
  %m_u.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i
  %i.022.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [52 x i8], ptr %m_u.i.i, i32 0, i32 %i.022.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  %18 = xor i8 %17, -1
  store i8 %18, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 52
  br i1 %exitcond.not.i.i, label %gfar_invert_masks.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

gfar_invert_masks.exit.i:                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_etype.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 2
  %19 = ptrtoint ptr %vlan_etype.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vlan_etype.i.i, align 8
  %21 = xor i16 %20, -1
  store i16 %21, ptr %vlan_etype.i.i, align 8
  %vlan_tci.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %22 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vlan_tci.i.i, align 2
  %24 = xor i16 %23, -1
  store i16 %24, ptr %vlan_tci.i.i, align 2
  %data.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data.i.i, align 4
  %xor11.i.i = xor i32 %26, -1
  store i32 %xor11.i.i, ptr %data.i.i, align 4
  %arrayidx14.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4, i32 1
  %27 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx14.i.i, align 4
  %xor15.i.i = xor i32 %28, -1
  store i32 %xor15.i.i, ptr %arrayidx14.i.i, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %rx_list.i14 = getelementptr i8, ptr %dev, i32 4008
  %29 = ptrtoint ptr %rx_list.i14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn20.i = load ptr, ptr %rx_list.i14, align 8
  %cmp.not21.i = icmp eq ptr %.pn20.i, %rx_list.i14
  br i1 %cmp.not21.i, label %sw.bb5.for.end.i_crit_edge, label %for.body.lr.ph.i

sw.bb5.for.end.i_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.bb5
  %30 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  br label %for.body.i15

for.body.i15:                                     ; preds = %if.end.i.for.body.i15_crit_edge, %for.body.lr.ph.i
  %.pn23.i = phi ptr [ %.pn20.i, %for.body.lr.ph.i ], [ %.pn.i17, %if.end.i.for.body.i15_crit_edge ]
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i15_crit_edge ]
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.022.i, i32 %32)
  %cmp4.i = icmp eq i32 %i.022.i, %32
  br i1 %cmp4.i, label %for.body.i15.sw.epilog_crit_edge, label %if.end.i

for.body.i15.sw.epilog_crit_edge:                 ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.i:                                         ; preds = %for.body.i15
  %location.i16 = getelementptr i8, ptr %.pn23.i, i32 -8
  %33 = ptrtoint ptr %location.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %location.i16, align 8
  %arrayidx.i = getelementptr i32, ptr %rule_locs, i32 %i.022.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx.i, align 4
  %inc.i = add i32 %i.022.i, 1
  %36 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i17 = load ptr, ptr %.pn23.i, align 8
  %cmp.not.i18 = icmp eq ptr %.pn.i17, %rx_list.i14
  br i1 %cmp.not.i18, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i15_crit_edge

if.end.i.for.body.i15_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i15

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %sw.bb5.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %sw.bb5.for.end.i_crit_edge ], [ %inc.i, %if.end.i.for.end.i_crit_edge ]
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 255, ptr %data.i, align 8
  %38 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %i.0.lcssa.i, ptr %38, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.i, %for.body.i15.sw.epilog_crit_edge, %gfar_invert_masks.exit.i, %for.cond.i.sw.epilog_crit_edge, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %gfar_invert_masks.exit.i ], [ 0, %for.end.i ], [ -22, %for.cond.i.sw.epilog_crit_edge ], [ -90, %for.body.i15.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_set_nfc(ptr noundef %dev, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state = getelementptr i8, ptr %dev, i32 3712
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_queue_access = getelementptr i8, ptr %dev, i32 4020
  tail call void @mutex_lock_nested(ptr noundef %rx_queue_access, i32 noundef 0) #15
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %4, label %if.end.sw.epilog_crit_edge [
    i32 42, label %sw.bb
    i32 50, label %sw.bb4
    i32 49, label %sw.bb16
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data.i, align 8
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flow_type.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 1024) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i158.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 1024) #19
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  %tobool2.not.i.i = icmp eq ptr %call7.i.i158.i.i, null
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool2.not.i.i
  br i1 %or.cond.i.i, label %sw.bb.gfar_set_hash_opts.exit_crit_edge, label %if.end.i.i

sw.bb.gfar_set_hash_opts.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_hash_opts.exit

if.end.i.i:                                       ; preds = %sw.bb
  %switch.tableidx = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 6
  br i1 %12, label %switch.hole_check, label %if.end.i.i.err.sink.split.i.i_crit_edge

if.end.i.i.err.sink.split.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err.sink.split.i.i

switch.hole_check:                                ; preds = %if.end.i.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.err.sink.split.i.i_crit_edge, label %switch.lookup

switch.hole_check.err.sink.split.i.i_crit_edge:   ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %err.sink.split.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.gfar_set_nfc, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %switch.lookup
  %j.0170.i.i = phi i32 [ 255, %switch.lookup ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.0169.i.i = phi i32 [ 0, %switch.lookup ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 44, i32 %i.0169.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx6.i.i = getelementptr i32, ptr %call7.i.i.i.i, i32 %j.0170.i.i
  %17 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx6.i.i, align 4
  %arrayidx7.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 45, i32 %i.0169.i.i
  %18 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7.i.i, align 4
  %arrayidx8.i.i = getelementptr i32, ptr %call7.i.i158.i.i, i32 %j.0170.i.i
  %20 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx8.i.i, align 4
  %dec.i.i = add nsw i32 %j.0170.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 641, i32 %19)
  %cmp11.i.i = icmp eq i32 %19, 641
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %switch.load)
  %cmp14.i.i = icmp eq i32 %16, %switch.load
  %or.cond163.i.i = select i1 %cmp11.i.i, i1 %cmp14.i.i, i1 false
  br i1 %or.cond163.i.i, label %for.end.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0169.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %for.inc.i.i.err.sink.split.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.err.sink.split.i.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err.sink.split.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.0169.i.i)
  %cmp17.i.i = icmp eq i32 %i.0169.i.i, 256
  br i1 %cmp17.i.i, label %for.end.i.i.err.sink.split.i.i_crit_edge, label %for.cond21.preheader.i.i

for.end.i.i.err.sink.split.i.i_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err.sink.split.i.i

for.cond21.preheader.i.i:                         ; preds = %for.end.i.i
  %l.0171.i.i = add nuw i32 %i.0169.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %l.0171.i.i)
  %cmp22172.i.i = icmp slt i32 %l.0171.i.i, 255
  br i1 %cmp22172.i.i, label %for.cond21.preheader.i.i.for.body23.i.i_crit_edge, label %for.cond21.preheader.i.i.for.end62.i.i_crit_edge

for.cond21.preheader.i.i.for.end62.i.i_crit_edge: ; preds = %for.cond21.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end62.i.i

for.cond21.preheader.i.i.for.body23.i.i_crit_edge: ; preds = %for.cond21.preheader.i.i
  br label %for.body23.i.i

for.body23.i.i:                                   ; preds = %for.inc60.i.i.for.body23.i.i_crit_edge, %for.cond21.preheader.i.i.for.body23.i.i_crit_edge
  %l.0175.i.i = phi i32 [ %l.0.i.i, %for.inc60.i.i.for.body23.i.i_crit_edge ], [ %l.0171.i.i, %for.cond21.preheader.i.i.for.body23.i.i_crit_edge ]
  %l.0.in174.i.i = phi i32 [ %l.0175.i.i, %for.inc60.i.i.for.body23.i.i_crit_edge ], [ %i.0169.i.i, %for.cond21.preheader.i.i.for.body23.i.i_crit_edge ]
  %j.2173.i.i = phi i32 [ %j.3.i.i, %for.inc60.i.i.for.body23.i.i_crit_edge ], [ %dec.i.i, %for.cond21.preheader.i.i.for.body23.i.i_crit_edge ]
  %arrayidx25.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 45, i32 %l.0175.i.i
  %21 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx25.i.i, align 4
  %23 = and i32 %22, 640
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %23, label %if.else.i.i [
    i32 512, label %if.then32.i.i
    i32 128, label %for.body23.i.i.for.inc60.i.i_crit_edge
  ]

for.body23.i.i.for.inc60.i.i_crit_edge:           ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc60.i.i

if.then32.i.i:                                    ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 131584, ptr %arrayidx25.i.i, align 4
  %arrayidx36.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 44, i32 %l.0175.i.i
  %26 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %arrayidx36.i.i, align 4
  %regs1.i.i.i = getelementptr i8, ptr %dev, i32 2928
  %27 = ptrtoint ptr %regs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs1.i.i.i, align 16
  %rqfar.i.i.i = getelementptr inbounds %struct.gfar, ptr %28, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i.i.i, i32 %l.0175.i.i) #15, !srcloc !59
  %rqfcr.i.i.i = getelementptr inbounds %struct.gfar, ptr %28, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i.i.i, i32 131584) #15, !srcloc !59
  %rqfpr.i.i.i = getelementptr inbounds %struct.gfar, ptr %28, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i.i.i, i32 -1) #15, !srcloc !59
  br label %for.end62.i.i

if.else.i.i:                                      ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx53.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 44, i32 %l.0175.i.i
  %29 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx53.i.i, align 4
  %arrayidx54.i.i = getelementptr i32, ptr %call7.i.i.i.i, i32 %j.2173.i.i
  %31 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx54.i.i, align 4
  %arrayidx57.i.i = getelementptr i32, ptr %call7.i.i158.i.i, i32 %j.2173.i.i
  %32 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %22, ptr %arrayidx57.i.i, align 4
  %dec58.i.i = add i32 %j.2173.i.i, -1
  br label %for.inc60.i.i

for.inc60.i.i:                                    ; preds = %if.else.i.i, %for.body23.i.i.for.inc60.i.i_crit_edge
  %j.3.i.i = phi i32 [ %dec58.i.i, %if.else.i.i ], [ %j.2173.i.i, %for.body23.i.i.for.inc60.i.i_crit_edge ]
  %l.0.i.i = add nuw nsw i32 %l.0175.i.i, 1
  %exitcond184.not.i.i = icmp eq i32 %l.0.i.i, 255
  br i1 %exitcond184.not.i.i, label %for.inc60.i.i.for.end62.i.i_crit_edge, label %for.inc60.i.i.for.body23.i.i_crit_edge

for.inc60.i.i.for.body23.i.i_crit_edge:           ; preds = %for.inc60.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body23.i.i

for.inc60.i.i.for.end62.i.i_crit_edge:            ; preds = %for.inc60.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end62.i.i

for.end62.i.i:                                    ; preds = %for.inc60.i.i.for.end62.i.i_crit_edge, %if.then32.i.i, %for.cond21.preheader.i.i.for.end62.i.i_crit_edge
  %j.2168.i.i = phi i32 [ %j.2173.i.i, %if.then32.i.i ], [ %dec.i.i, %for.cond21.preheader.i.i.for.end62.i.i_crit_edge ], [ %j.3.i.i, %for.inc60.i.i.for.end62.i.i_crit_edge ]
  %l.0.in166.i.i = phi i32 [ %l.0.in174.i.i, %if.then32.i.i ], [ %i.0169.i.i, %for.cond21.preheader.i.i.for.end62.i.i_crit_edge ], [ 254, %for.inc60.i.i.for.end62.i.i_crit_edge ]
  %cur_filer_idx.i.i = getelementptr i8, ptr %dev, i32 4004
  %33 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %l.0.in166.i.i, ptr %cur_filer_idx.i.i, align 4
  %and.i.i.i = and i64 %7, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.end62.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

for.end62.i.i.if.end.i.i.i_crit_edge:             ; preds = %for.end62.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.end62.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 44, i32 %l.0.in166.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %arrayidx.i.i.i, align 4
  %35 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 45, i32 %36
  %37 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 196835, ptr %arrayidx2.i.i.i, align 4
  %38 = load i32, ptr %cur_filer_idx.i.i, align 4
  %regs1.i.i.i.i = getelementptr i8, ptr %dev, i32 2928
  %39 = ptrtoint ptr %regs1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs1.i.i.i.i, align 16
  %rqfar.i.i.i.i = getelementptr inbounds %struct.gfar, ptr %40, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i.i.i.i, i32 %38) #15, !srcloc !59
  %rqfcr.i.i.i.i = getelementptr inbounds %struct.gfar, ptr %40, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i.i.i.i, i32 196835) #15, !srcloc !59
  %rqfpr.i.i.i.i = getelementptr inbounds %struct.gfar, ptr %40, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i.i.i.i, i32 -1) #15, !srcloc !59
  %41 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur_filer_idx.i.i, align 4
  %sub.i.i.i = add i32 %42, -1
  store i32 %sub.i.i.i, ptr %cur_filer_idx.i.i, align 4
  %arrayidx8.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 44, i32 %sub.i.i.i
  %43 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %arrayidx8.i.i.i, align 4
  %44 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx11.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 45, i32 %44
  %45 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 196836, ptr %arrayidx11.i.i.i, align 4
  %46 = load i32, ptr %cur_filer_idx.i.i, align 4
  %47 = ptrtoint ptr %regs1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs1.i.i.i.i, align 16
  %rqfar.i200.i.i.i = getelementptr inbounds %struct.gfar, ptr %48, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i200.i.i.i, i32 %46) #15, !srcloc !59
  %rqfcr.i201.i.i.i = getelementptr inbounds %struct.gfar, ptr %48, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i201.i.i.i, i32 196836) #15, !srcloc !59
  %rqfpr.i202.i.i.i = getelementptr inbounds %struct.gfar, ptr %48, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i202.i.i.i, i32 -1) #15, !srcloc !59
  %49 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cur_filer_idx.i.i, align 4
  %sub14.i.i.i = add i32 %50, -1
  store i32 %sub14.i.i.i, ptr %cur_filer_idx.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %for.end62.i.i.if.end.i.i.i_crit_edge
  %and16.i.i.i = and i64 %7, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16.i.i.i)
  %tobool17.not.i.i.i = icmp eq i64 %and16.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.end.i.i.i.if.end29.i.i.i_crit_edge, label %if.then18.i.i.i

if.end.i.i.i.if.end29.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i.i.i

if.then18.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cur_filer_idx.i.i, align 4
  %regs1.i203.i.i.i = getelementptr i8, ptr %dev, i32 2928
  %53 = ptrtoint ptr %regs1.i203.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs1.i203.i.i.i, align 16
  %rqfar.i204.i.i.i = getelementptr inbounds %struct.gfar, ptr %54, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i204.i.i.i, i32 %52) #15, !srcloc !59
  %rqfcr.i205.i.i.i = getelementptr inbounds %struct.gfar, ptr %54, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i205.i.i.i, i32 196840) #15, !srcloc !59
  %rqfpr.i206.i.i.i = getelementptr inbounds %struct.gfar, ptr %54, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i206.i.i.i, i32 -1) #15, !srcloc !59
  %55 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx22.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 44, i32 %56
  %57 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %arrayidx22.i.i.i, align 4
  %58 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx25.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 45, i32 %58
  %59 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 196840, ptr %arrayidx25.i.i.i, align 4
  %60 = load i32, ptr %cur_filer_idx.i.i, align 4
  %sub27.i.i.i = add i32 %60, -1
  store i32 %sub27.i.i.i, ptr %cur_filer_idx.i.i, align 4
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.then18.i.i.i, %if.end.i.i.i.if.end29.i.i.i_crit_edge
  %and30.i.i.i = and i64 %7, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30.i.i.i)
  %tobool31.not.i.i.i = icmp eq i64 %and30.i.i.i, 0
  br i1 %tobool31.not.i.i.i, label %if.end29.i.i.i.if.end43.i.i.i_crit_edge, label %if.then32.i.i.i

if.end29.i.i.i.if.end43.i.i.i_crit_edge:          ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43.i.i.i

if.then32.i.i.i:                                  ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx35.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 44, i32 %62
  %63 = ptrtoint ptr %arrayidx35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %arrayidx35.i.i.i, align 4
  %64 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx38.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 45, i32 %64
  %65 = ptrtoint ptr %arrayidx38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 196845, ptr %arrayidx38.i.i.i, align 4
  %66 = load i32, ptr %cur_filer_idx.i.i, align 4
  %regs1.i207.i.i.i = getelementptr i8, ptr %dev, i32 2928
  %67 = ptrtoint ptr %regs1.i207.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs1.i207.i.i.i, align 16
  %rqfar.i208.i.i.i = getelementptr inbounds %struct.gfar, ptr %68, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i208.i.i.i, i32 %66) #15, !srcloc !59
  %rqfcr.i209.i.i.i = getelementptr inbounds %struct.gfar, ptr %68, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i209.i.i.i, i32 196845) #15, !srcloc !59
  %rqfpr.i210.i.i.i = getelementptr inbounds %struct.gfar, ptr %68, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i210.i.i.i, i32 -1) #15, !srcloc !59
  %69 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cur_filer_idx.i.i, align 4
  %sub41.i.i.i = add i32 %70, -1
  store i32 %sub41.i.i.i, ptr %cur_filer_idx.i.i, align 4
  br label %if.end43.i.i.i

if.end43.i.i.i:                                   ; preds = %if.then32.i.i.i, %if.end29.i.i.i.if.end43.i.i.i_crit_edge
  %and44.i.i.i = and i64 %7, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and44.i.i.i)
  %tobool45.not.i.i.i = icmp eq i64 %and44.i.i.i, 0
  br i1 %tobool45.not.i.i.i, label %if.end43.i.i.i.if.end57.i.i.i_crit_edge, label %if.then46.i.i.i

if.end43.i.i.i.if.end57.i.i.i_crit_edge:          ; preds = %if.end43.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57.i.i.i

if.then46.i.i.i:                                  ; preds = %if.end43.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx49.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 44, i32 %72
  %73 = ptrtoint ptr %arrayidx49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %arrayidx49.i.i.i, align 4
  %74 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx52.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 45, i32 %74
  %75 = ptrtoint ptr %arrayidx52.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 196844, ptr %arrayidx52.i.i.i, align 4
  %76 = load i32, ptr %cur_filer_idx.i.i, align 4
  %regs1.i211.i.i.i = getelementptr i8, ptr %dev, i32 2928
  %77 = ptrtoint ptr %regs1.i211.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs1.i211.i.i.i, align 16
  %rqfar.i212.i.i.i = getelementptr inbounds %struct.gfar, ptr %78, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i212.i.i.i, i32 %76) #15, !srcloc !59
  %rqfcr.i213.i.i.i = getelementptr inbounds %struct.gfar, ptr %78, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i213.i.i.i, i32 196844) #15, !srcloc !59
  %rqfpr.i214.i.i.i = getelementptr inbounds %struct.gfar, ptr %78, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i214.i.i.i, i32 -1) #15, !srcloc !59
  %79 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cur_filer_idx.i.i, align 4
  %sub55.i.i.i = add i32 %80, -1
  store i32 %sub55.i.i.i, ptr %cur_filer_idx.i.i, align 4
  br label %if.end57.i.i.i

if.end57.i.i.i:                                   ; preds = %if.then46.i.i.i, %if.end43.i.i.i.if.end57.i.i.i_crit_edge
  %and58.i.i.i = and i64 %7, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i64 %and58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %if.end57.i.i.i.if.end71.i.i.i_crit_edge, label %if.then60.i.i.i

if.end57.i.i.i.if.end71.i.i.i_crit_edge:          ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71.i.i.i

if.then60.i.i.i:                                  ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %81 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx63.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 44, i32 %82
  %83 = ptrtoint ptr %arrayidx63.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %arrayidx63.i.i.i, align 4
  %84 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx66.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 45, i32 %84
  %85 = ptrtoint ptr %arrayidx66.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 196843, ptr %arrayidx66.i.i.i, align 4
  %86 = load i32, ptr %cur_filer_idx.i.i, align 4
  %regs1.i215.i.i.i = getelementptr i8, ptr %dev, i32 2928
  %87 = ptrtoint ptr %regs1.i215.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs1.i215.i.i.i, align 16
  %rqfar.i216.i.i.i = getelementptr inbounds %struct.gfar, ptr %88, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i216.i.i.i, i32 %86) #15, !srcloc !59
  %rqfcr.i217.i.i.i = getelementptr inbounds %struct.gfar, ptr %88, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i217.i.i.i, i32 196843) #15, !srcloc !59
  %rqfpr.i218.i.i.i = getelementptr inbounds %struct.gfar, ptr %88, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i218.i.i.i, i32 -1) #15, !srcloc !59
  %89 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cur_filer_idx.i.i, align 4
  %sub69.i.i.i = add i32 %90, -1
  store i32 %sub69.i.i.i, ptr %cur_filer_idx.i.i, align 4
  br label %if.end71.i.i.i

if.end71.i.i.i:                                   ; preds = %if.then60.i.i.i, %if.end57.i.i.i.if.end71.i.i.i_crit_edge
  %and72.i.i.i = and i64 %7, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and72.i.i.i)
  %tobool73.not.i.i.i = icmp eq i64 %and72.i.i.i, 0
  br i1 %tobool73.not.i.i.i, label %if.end71.i.i.i.if.end85.i.i.i_crit_edge, label %if.then74.i.i.i

if.end71.i.i.i.if.end85.i.i.i_crit_edge:          ; preds = %if.end71.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85.i.i.i

if.then74.i.i.i:                                  ; preds = %if.end71.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx77.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 44, i32 %92
  %93 = ptrtoint ptr %arrayidx77.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %arrayidx77.i.i.i, align 4
  %94 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx80.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 45, i32 %94
  %95 = ptrtoint ptr %arrayidx80.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 196847, ptr %arrayidx80.i.i.i, align 4
  %96 = load i32, ptr %cur_filer_idx.i.i, align 4
  %regs1.i219.i.i.i = getelementptr i8, ptr %dev, i32 2928
  %97 = ptrtoint ptr %regs1.i219.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs1.i219.i.i.i, align 16
  %rqfar.i220.i.i.i = getelementptr inbounds %struct.gfar, ptr %98, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i220.i.i.i, i32 %96) #15, !srcloc !59
  %rqfcr.i221.i.i.i = getelementptr inbounds %struct.gfar, ptr %98, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i221.i.i.i, i32 196847) #15, !srcloc !59
  %rqfpr.i222.i.i.i = getelementptr inbounds %struct.gfar, ptr %98, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i222.i.i.i, i32 -1) #15, !srcloc !59
  %99 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cur_filer_idx.i.i, align 4
  %sub83.i.i.i = add i32 %100, -1
  store i32 %sub83.i.i.i, ptr %cur_filer_idx.i.i, align 4
  br label %if.end85.i.i.i

if.end85.i.i.i:                                   ; preds = %if.then74.i.i.i, %if.end71.i.i.i.if.end85.i.i.i_crit_edge
  %and86.i.i.i = and i64 %7, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and86.i.i.i)
  %tobool87.not.i.i.i = icmp eq i64 %and86.i.i.i, 0
  br i1 %tobool87.not.i.i.i, label %if.end85.i.i.i.ethflow_to_filer_rules.exit.i.i_crit_edge, label %if.then88.i.i.i

if.end85.i.i.i.ethflow_to_filer_rules.exit.i.i_crit_edge: ; preds = %if.end85.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ethflow_to_filer_rules.exit.i.i

if.then88.i.i.i:                                  ; preds = %if.end85.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %101 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx91.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 44, i32 %102
  %103 = ptrtoint ptr %arrayidx91.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %arrayidx91.i.i.i, align 4
  %104 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx94.i.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 45, i32 %104
  %105 = ptrtoint ptr %arrayidx94.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 196846, ptr %arrayidx94.i.i.i, align 4
  %106 = load i32, ptr %cur_filer_idx.i.i, align 4
  %regs1.i223.i.i.i = getelementptr i8, ptr %dev, i32 2928
  %107 = ptrtoint ptr %regs1.i223.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs1.i223.i.i.i, align 16
  %rqfar.i224.i.i.i = getelementptr inbounds %struct.gfar, ptr %108, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i224.i.i.i, i32 %106) #15, !srcloc !59
  %rqfcr.i225.i.i.i = getelementptr inbounds %struct.gfar, ptr %108, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i225.i.i.i, i32 196846) #15, !srcloc !59
  %rqfpr.i226.i.i.i = getelementptr inbounds %struct.gfar, ptr %108, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i226.i.i.i, i32 -1) #15, !srcloc !59
  %109 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cur_filer_idx.i.i, align 4
  %sub97.i.i.i = add i32 %110, -1
  store i32 %sub97.i.i.i, ptr %cur_filer_idx.i.i, align 4
  br label %ethflow_to_filer_rules.exit.i.i

ethflow_to_filer_rules.exit.i.i:                  ; preds = %if.then88.i.i.i, %if.end85.i.i.i.ethflow_to_filer_rules.exit.i.i_crit_edge
  %k.0177.i.i = add i32 %j.2168.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %k.0177.i.i)
  %cmp65178.i.i = icmp slt i32 %k.0177.i.i, 255
  br i1 %cmp65178.i.i, label %for.body66.lr.ph.i.i, label %ethflow_to_filer_rules.exit.i.i.gfar_set_hash_opts.exit_crit_edge

ethflow_to_filer_rules.exit.i.i.gfar_set_hash_opts.exit_crit_edge: ; preds = %ethflow_to_filer_rules.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_hash_opts.exit

for.body66.lr.ph.i.i:                             ; preds = %ethflow_to_filer_rules.exit.i.i
  %regs1.i159.i.i = getelementptr i8, ptr %dev, i32 2928
  br label %for.body66.i.i

for.body66.i.i:                                   ; preds = %if.end81.i.i.for.body66.i.i_crit_edge, %for.body66.lr.ph.i.i
  %k.0179.i.i = phi i32 [ %k.0177.i.i, %for.body66.lr.ph.i.i ], [ %k.0.i.i, %if.end81.i.i.for.body66.i.i_crit_edge ]
  %arrayidx67.i.i = getelementptr i32, ptr %call7.i.i.i.i, i32 %k.0179.i.i
  %111 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx67.i.i, align 4
  %113 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx70.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 44, i32 %114
  %115 = ptrtoint ptr %arrayidx70.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %112, ptr %arrayidx70.i.i, align 4
  %arrayidx71.i.i = getelementptr i32, ptr %call7.i.i158.i.i, i32 %k.0179.i.i
  %116 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx71.i.i, align 4
  %118 = load i32, ptr %cur_filer_idx.i.i, align 4
  %arrayidx74.i.i = getelementptr %struct.gfar_private, ptr %add.ptr.i, i32 0, i32 45, i32 %118
  %119 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %117, ptr %arrayidx74.i.i, align 4
  %120 = load i32, ptr %cur_filer_idx.i.i, align 4
  %121 = ptrtoint ptr %regs1.i159.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs1.i159.i.i, align 16
  %rqfar.i160.i.i = getelementptr inbounds %struct.gfar, ptr %122, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i160.i.i, i32 %120) #15, !srcloc !59
  %rqfcr.i161.i.i = getelementptr inbounds %struct.gfar, ptr %122, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i161.i.i, i32 %117) #15, !srcloc !59
  %rqfpr.i162.i.i = getelementptr inbounds %struct.gfar, ptr %122, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i162.i.i, i32 %112) #15, !srcloc !59
  %123 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cur_filer_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool79.not.i.i = icmp eq i32 %124, 0
  br i1 %tobool79.not.i.i, label %for.body66.i.i.gfar_set_hash_opts.exit_crit_edge, label %if.end81.i.i

for.body66.i.i.gfar_set_hash_opts.exit_crit_edge: ; preds = %for.body66.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_hash_opts.exit

if.end81.i.i:                                     ; preds = %for.body66.i.i
  %sub83.i.i = add i32 %124, -1
  %125 = ptrtoint ptr %cur_filer_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %sub83.i.i, ptr %cur_filer_idx.i.i, align 4
  %k.0.i.i = add i32 %k.0179.i.i, 1
  %exitcond185.not.i.i = icmp eq i32 %k.0.i.i, 255
  br i1 %exitcond185.not.i.i, label %if.end81.i.i.gfar_set_hash_opts.exit_crit_edge, label %if.end81.i.i.for.body66.i.i_crit_edge

if.end81.i.i.for.body66.i.i_crit_edge:            ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body66.i.i

if.end81.i.i.gfar_set_hash_opts.exit_crit_edge:   ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_hash_opts.exit

err.sink.split.i.i:                               ; preds = %for.end.i.i.err.sink.split.i.i_crit_edge, %for.inc.i.i.err.sink.split.i.i_crit_edge, %switch.hole_check.err.sink.split.i.i_crit_edge, %if.end.i.i.err.sink.split.i.i_crit_edge
  %.str.5.sink.i.i = phi ptr [ @.str.4, %if.end.i.i.err.sink.split.i.i_crit_edge ], [ @.str.5, %for.end.i.i.err.sink.split.i.i_crit_edge ], [ @.str.4, %switch.hole_check.err.sink.split.i.i_crit_edge ], [ @.str.5, %for.inc.i.i.err.sink.split.i.i_crit_edge ]
  %ndev19.i.i = getelementptr i8, ptr %dev, i32 2308
  %126 = ptrtoint ptr %ndev19.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ndev19.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %127, ptr noundef nonnull %.str.5.sink.i.i) #18
  br label %gfar_set_hash_opts.exit

gfar_set_hash_opts.exit:                          ; preds = %err.sink.split.i.i, %if.end81.i.i.gfar_set_hash_opts.exit_crit_edge, %for.body66.i.i.gfar_set_hash_opts.exit_crit_edge, %ethflow_to_filer_rules.exit.i.i.gfar_set_hash_opts.exit_crit_edge, %sw.bb.gfar_set_hash_opts.exit_crit_edge
  %tobool.not.i = phi i32 [ -22, %sw.bb.gfar_set_hash_opts.exit_crit_edge ], [ 0, %ethflow_to_filer_rules.exit.i.i.gfar_set_hash_opts.exit_crit_edge ], [ -22, %err.sink.split.i.i ], [ 0, %if.end81.i.i.gfar_set_hash_opts.exit_crit_edge ], [ 0, %for.body66.i.i.gfar_set_hash_opts.exit_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i158.i.i) #15
  tail call void @kfree(ptr noundef %call7.i.i.i.i) #15
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %ring_cookie = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %128 = ptrtoint ptr %ring_cookie to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %ring_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %129)
  %cmp.not = icmp eq i64 %129, -1
  br i1 %cmp.not, label %sw.bb4.lor.lhs.false_crit_edge, label %land.lhs.true

sw.bb4.lor.lhs.false_crit_edge:                   ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %sw.bb4
  %num_rx_queues = getelementptr i8, ptr %dev, i32 3724
  %130 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %num_rx_queues, align 4
  %conv = zext i32 %131 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %129, i64 %conv)
  %cmp7.not = icmp ult i64 %129, %conv
  br i1 %cmp7.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %sw.bb4.lor.lhs.false_crit_edge
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %132 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %location, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %133)
  %cmp10 = icmp ugt i32 %133, 254
  br i1 %cmp10, label %lor.lhs.false.sw.epilog_crit_edge, label %if.end13

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end13:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %134 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %134, i32 noundef 3264, i32 noundef 176) #19
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %if.end13.sw.epilog_crit_edge, label %if.end.i

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end13
  %135 = call ptr @memcpy(ptr %call7.i.i, ptr %fs, i32 168)
  %m_u.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %call7.i.i, i32 0, i32 3
  br label %for.body.i.i37

for.body.i.i37:                                   ; preds = %for.body.i.i37.for.body.i.i37_crit_edge, %if.end.i
  %i.022.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i35, %for.body.i.i37.for.body.i.i37_crit_edge ]
  %arrayidx.i.i34 = getelementptr [52 x i8], ptr %m_u.i.i, i32 0, i32 %i.022.i.i
  %136 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.i.i34, align 1
  %138 = xor i8 %137, -1
  store i8 %138, ptr %arrayidx.i.i34, align 1
  %inc.i.i35 = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i36 = icmp eq i32 %inc.i.i35, 52
  br i1 %exitcond.not.i.i36, label %gfar_invert_masks.exit.i, label %for.body.i.i37.for.body.i.i37_crit_edge

for.body.i.i37.for.body.i.i37_crit_edge:          ; preds = %for.body.i.i37
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i37

gfar_invert_masks.exit.i:                         ; preds = %for.body.i.i37
  %vlan_etype.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %call7.i.i, i32 0, i32 4, i32 2
  %139 = ptrtoint ptr %vlan_etype.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %vlan_etype.i.i, align 8
  %141 = xor i16 %140, -1
  store i16 %141, ptr %vlan_etype.i.i, align 8
  %vlan_tci.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %call7.i.i, i32 0, i32 4, i32 3
  %142 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %vlan_tci.i.i, align 2
  %144 = xor i16 %143, -1
  store i16 %144, ptr %vlan_tci.i.i, align 2
  %data.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %call7.i.i, i32 0, i32 4, i32 4
  %145 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %data.i.i, align 4
  %xor11.i.i = xor i32 %146, -1
  store i32 %xor11.i.i, ptr %data.i.i, align 4
  %arrayidx14.i.i = getelementptr %struct.ethtool_rx_flow_spec, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 1
  %147 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx14.i.i, align 8
  %xor15.i.i = xor i32 %148, -1
  store i32 %xor15.i.i, ptr %arrayidx14.i.i, align 8
  %149 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %150)
  %tobool.not.i.i38 = icmp sgt i32 %150, -1
  br i1 %tobool.not.i.i38, label %gfar_invert_masks.exit.i.if.end14.i.i_crit_edge, label %if.then.i.i

gfar_invert_masks.exit.i.if.end14.i.i_crit_edge:  ; preds = %gfar_invert_masks.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i.i

if.then.i.i:                                      ; preds = %gfar_invert_masks.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool1.not.i.i = icmp eq i32 %146, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool6.not.i.i = icmp eq i32 %148, 0
  %or.cond.i = select i1 %tobool1.not.i.i, i1 %tobool6.not.i.i, i1 false
  br i1 %or.cond.i, label %if.then.i.i.if.then11.i.i_crit_edge, label %if.then7.i.i

if.then.i.i.if.then11.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.then7.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ndev.i.i = getelementptr i8, ptr %dev, i32 2308
  %151 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ndev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %152, ptr noundef nonnull @.str.7) #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.then7.i.i, %if.then.i.i.if.then11.i.i_crit_edge
  %ndev12.i.i = getelementptr i8, ptr %dev, i32 2308
  %153 = ptrtoint ptr %ndev12.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ndev12.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %154, ptr noundef nonnull @.str.8) #18
  %155 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %.pr.i.i = load i32, ptr %call7.i.i, align 8
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then11.i.i, %gfar_invert_masks.exit.i.if.end14.i.i_crit_edge
  %156 = phi i32 [ %.pr.i.i, %if.then11.i.i ], [ %150, %gfar_invert_masks.exit.i.if.end14.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %156)
  %cmp.i.i = icmp eq i32 %156, 13
  br i1 %cmp.i.i, label %if.then17.i.i, label %if.end14.i.i.gfar_check_capability.exit.i_crit_edge

if.end14.i.i.gfar_check_capability.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_check_capability.exit.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  %h_u.i.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %call7.i.i, i32 0, i32 1
  %ip_ver.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i.i, i32 0, i32 4
  %157 = ptrtoint ptr %ip_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %ip_ver.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %158)
  %cmp19.not.i.i = icmp eq i8 %158, 1
  br i1 %cmp19.not.i.i, label %if.then17.i.i.gfar_check_capability.exit.i_crit_edge, label %if.then21.i.i

if.then17.i.i.gfar_check_capability.exit.i_crit_edge: ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_check_capability.exit.i

if.then21.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ndev22.i.i = getelementptr i8, ptr %dev, i32 2308
  %159 = ptrtoint ptr %ndev22.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ndev22.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %160, ptr noundef nonnull @.str.9) #18
  br label %gfar_check_capability.exit.i

gfar_check_capability.exit.i:                     ; preds = %if.then21.i.i, %if.then17.i.i.gfar_check_capability.exit.i_crit_edge, %if.end14.i.i.gfar_check_capability.exit.i_crit_edge
  %rx_list.i = getelementptr i8, ptr %dev, i32 4008
  %161 = ptrtoint ptr %rx_list.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile ptr, ptr %rx_list.i, align 4
  %cmp.i86.not.i = icmp eq ptr %162, %rx_list.i
  br i1 %cmp.i86.not.i, label %if.then8.i, label %gfar_check_capability.exit.i.for.cond.i_crit_edge

gfar_check_capability.exit.i.for.cond.i_crit_edge: ; preds = %gfar_check_capability.exit.i
  br label %for.cond.i

if.then8.i:                                       ; preds = %gfar_check_capability.exit.i
  %regs1.i.i = getelementptr i8, ptr %dev, i32 2928
  %163 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs1.i.i, align 16
  %ecntrl.i.i = getelementptr inbounds %struct.gfar, ptr %164, i32 0, i32 7
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ecntrl.i.i) #15, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !52
  %and.i.i = and i32 %165, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %if.else8.i.i, label %if.then.i88.i

if.then.i88.i:                                    ; preds = %if.then8.i
  %ndev.i87.i = getelementptr i8, ptr %dev, i32 2308
  %166 = ptrtoint ptr %ndev.i87.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ndev.i87.i, align 4
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %167, ptr noundef nonnull @.str.10) #18
  %rctrl.i.i = getelementptr inbounds %struct.gfar, ptr %164, i32 0, i32 68
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl.i.i) #15, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !52
  %and3.i.i = and i32 %168, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %and3.i.i)
  %cmp4.i.i = icmp eq i32 %and3.i.i, 224
  %169 = ptrtoint ptr %ndev.i87.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ndev.i87.i, align 4
  br i1 %cmp4.i.i, label %if.then.i88.i.if.end12.i_crit_edge, label %if.else.i.i39

if.then.i88.i.if.end12.i_crit_edge:               ; preds = %if.then.i88.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.else.i.i39:                                    ; preds = %if.then.i88.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %170, ptr noundef nonnull @.str.12) #18
  br label %clean_mem.i

if.else8.i.i:                                     ; preds = %if.then8.i
  %rctrl9.i.i = getelementptr inbounds %struct.gfar, ptr %164, i32 0, i32 68
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl9.i.i) #15, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !52
  %and11.i.i = and i32 %171, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and11.i.i)
  %cmp12.i.i = icmp eq i32 %and11.i.i, 192
  %ndev14.i.i = getelementptr i8, ptr %dev, i32 2308
  %172 = ptrtoint ptr %ndev14.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ndev14.i.i, align 4
  br i1 %cmp12.i.i, label %if.else8.i.i.if.end12.i_crit_edge, label %if.else15.i.i

if.else8.i.i.if.end12.i_crit_edge:                ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.else15.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %173, ptr noundef nonnull @.str.12) #18
  br label %clean_mem.i

if.end12.i:                                       ; preds = %if.else8.i.i.if.end12.i_crit_edge, %if.then.i88.i.if.end12.i_crit_edge
  %.sink.i.i = phi ptr [ %170, %if.then.i88.i.if.end12.i_crit_edge ], [ %173, %if.else8.i.i.if.end12.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %.sink.i.i, ptr noundef nonnull @.str.11) #18
  %rbifx.i.i = getelementptr inbounds %struct.gfar, ptr %164, i32 0, i32 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rbifx.i.i, i32 -1061043517) #15, !srcloc !59
  %list13.i = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %call7.i.i, i32 0, i32 1
  %174 = ptrtoint ptr %rx_list.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rx_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list13.i, ptr noundef %rx_list.i, ptr noundef %175) #15
  br i1 %call.i.i.i, label %if.end.i.i.i40, label %if.end12.i.process.i_crit_edge

if.end12.i.process.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %process.i

if.end.i.i.i40:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %list13.i, ptr %prev1.i.i.i, align 4
  %177 = ptrtoint ptr %list13.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %175, ptr %list13.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %call7.i.i, i32 0, i32 1, i32 1
  %178 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %rx_list.i, ptr %prev3.i.i.i, align 4
  %179 = ptrtoint ptr %rx_list.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %list13.i, ptr %rx_list.i, align 4
  br label %process.i

for.cond.i:                                       ; preds = %if.end28.i.for.cond.i_crit_edge, %gfar_check_capability.exit.i.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %if.end28.i.for.cond.i_crit_edge ], [ %rx_list.i, %gfar_check_capability.exit.i.for.cond.i_crit_edge ]
  %180 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp21.not.i = icmp eq ptr %.pn.i, %rx_list.i
  br i1 %cmp21.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %location.i = getelementptr i8, ptr %.pn.i, i32 -8
  %181 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %location.i, align 8
  %183 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %location, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %184)
  %cmp24.i = icmp ugt i32 %182, %184
  br i1 %cmp24.i, label %if.then25.i, label %if.end28.i

if.then25.i:                                      ; preds = %for.body.i
  %list26.i = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %call7.i.i, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %185 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %prev.i.i, align 4
  %call.i.i89.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list26.i, ptr noundef %186, ptr noundef %.pn.i) #15
  br i1 %call.i.i89.i, label %if.end.i.i91.i, label %if.then25.i.process.i_crit_edge

if.then25.i.process.i_crit_edge:                  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %process.i

if.end.i.i91.i:                                   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #17
  %187 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %list26.i, ptr %prev.i.i, align 4
  %188 = ptrtoint ptr %list26.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %.pn.i, ptr %list26.i, align 8
  %prev3.i.i90.i = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %call7.i.i, i32 0, i32 1, i32 1
  %189 = ptrtoint ptr %prev3.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %186, ptr %prev3.i.i90.i, align 4
  %190 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %list26.i, ptr %186, align 4
  br label %process.i

if.end28.i:                                       ; preds = %for.body.i
  %cmp32.i = icmp eq i32 %182, %184
  br i1 %cmp32.i, label %if.then33.i, label %if.end28.i.for.cond.i_crit_edge

if.end28.i.for.cond.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

if.then33.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  %ndev.i = getelementptr i8, ptr %dev, i32 2308
  %191 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %192, ptr noundef nonnull @.str.6, i32 noundef %182) #18
  br label %clean_mem.i

for.end.i:                                        ; preds = %for.cond.i
  %list41.i = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %call7.i.i, i32 0, i32 1
  %prev.i92.i = getelementptr i8, ptr %dev, i32 4012
  %193 = ptrtoint ptr %prev.i92.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %prev.i92.i, align 4
  %call.i.i93.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list41.i, ptr noundef %194, ptr noundef %rx_list.i) #15
  br i1 %call.i.i93.i, label %if.end.i.i95.i, label %for.end.i.process.i_crit_edge

for.end.i.process.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %process.i

if.end.i.i95.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %195 = ptrtoint ptr %prev.i92.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %list41.i, ptr %prev.i92.i, align 4
  %196 = ptrtoint ptr %list41.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %rx_list.i, ptr %list41.i, align 8
  %prev3.i.i94.i = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %call7.i.i, i32 0, i32 1, i32 1
  %197 = ptrtoint ptr %prev3.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %194, ptr %prev3.i.i94.i, align 4
  %198 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile ptr %list41.i, ptr %194, align 4
  br label %process.i

process.i:                                        ; preds = %if.end.i.i95.i, %for.end.i.process.i_crit_edge, %if.end.i.i91.i, %if.then25.i.process.i_crit_edge, %if.end.i.i.i40, %if.end12.i.process.i_crit_edge
  %count.i = getelementptr i8, ptr %dev, i32 4016
  %199 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %count.i, align 8
  %inc.i = add i32 %200, 1
  store i32 %inc.i, ptr %count.i, align 8
  %call46.i = tail call fastcc i32 @gfar_process_filer_changes(ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %process.i.sw.epilog_crit_edge, label %clean_list.i

process.i.sw.epilog_crit_edge:                    ; preds = %process.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

clean_list.i:                                     ; preds = %process.i
  %201 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %count.i, align 8
  %dec.i = add i32 %202, -1
  store i32 %dec.i, ptr %count.i, align 8
  %list52.i = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %call7.i.i, i32 0, i32 1
  %call.i.i97.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list52.i) #15
  br i1 %call.i.i97.i, label %if.end.i.i98.i, label %clean_list.i.list_del.exit.i_crit_edge

clean_list.i.list_del.exit.i_crit_edge:           ; preds = %clean_list.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i98.i:                                   ; preds = %clean_list.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %call7.i.i, i32 0, i32 1, i32 1
  %203 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %prev.i.i.i, align 4
  %205 = ptrtoint ptr %list52.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %list52.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %204, ptr %prev1.i.i.i.i, align 4
  %208 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile ptr %206, ptr %204, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i98.i, %clean_list.i.list_del.exit.i_crit_edge
  %209 = ptrtoint ptr %list52.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr inttoptr (i32 256 to ptr), ptr %list52.i, align 8
  %prev.i99.i = getelementptr inbounds %struct.ethtool_flow_spec_container, ptr %call7.i.i, i32 0, i32 1, i32 1
  %210 = ptrtoint ptr %prev.i99.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i99.i, align 4
  br label %clean_mem.i

clean_mem.i:                                      ; preds = %list_del.exit.i, %if.then33.i, %if.else15.i.i, %if.else.i.i39
  %ret.0.i = phi i32 [ %call46.i, %list_del.exit.i ], [ -16, %if.then33.i ], [ -95, %if.else.i.i39 ], [ -95, %if.else15.i.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %location18 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %211 = ptrtoint ptr %location18 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %location18, align 8
  %rx_list.i41 = getelementptr i8, ptr %dev, i32 4008
  %213 = ptrtoint ptr %rx_list.i41 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load volatile ptr, ptr %rx_list.i41, align 4
  %cmp.i.not.i = icmp eq ptr %214, %rx_list.i41
  br i1 %cmp.i.not.i, label %sw.bb16.sw.epilog_crit_edge, label %sw.bb16.for.cond.i44_crit_edge

sw.bb16.for.cond.i44_crit_edge:                   ; preds = %sw.bb16
  br label %for.cond.i44

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.cond.i44:                                     ; preds = %for.body.i46.for.cond.i44_crit_edge, %sw.bb16.for.cond.i44_crit_edge
  %.pn.in.i42 = phi ptr [ %.pn.i43, %for.body.i46.for.cond.i44_crit_edge ], [ %rx_list.i41, %sw.bb16.for.cond.i44_crit_edge ]
  %215 = ptrtoint ptr %.pn.in.i42 to i32
  call void @__asan_load4_noabort(i32 %215)
  %.pn.i43 = load ptr, ptr %.pn.in.i42, align 8
  %cmp.not.i = icmp eq ptr %.pn.i43, %rx_list.i41
  br i1 %cmp.not.i, label %for.cond.i44.sw.epilog_crit_edge, label %for.body.i46

for.cond.i44.sw.epilog_crit_edge:                 ; preds = %for.cond.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body.i46:                                     ; preds = %for.cond.i44
  %location.i45 = getelementptr i8, ptr %.pn.i43, i32 -8
  %216 = ptrtoint ptr %location.i45 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %location.i45, align 8
  %cmp6.i = icmp eq i32 %217, %212
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i46.for.cond.i44_crit_edge

for.body.i46.for.cond.i44_crit_edge:              ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i44

if.then7.i:                                       ; preds = %for.body.i46
  %comp.0.le.i = getelementptr i8, ptr %.pn.i43, i32 -168
  %call.i.i.i47 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i43) #15
  br i1 %call.i.i.i47, label %if.end.i.i.i50, label %if.then7.i.list_del.exit.i54_crit_edge

if.then7.i.list_del.exit.i54_crit_edge:           ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i54

if.end.i.i.i50:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i48 = getelementptr inbounds %struct.list_head, ptr %.pn.i43, i32 0, i32 1
  %218 = ptrtoint ptr %prev.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %prev.i.i.i48, align 4
  %220 = ptrtoint ptr %.pn.i43 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %.pn.i43, align 4
  %prev1.i.i.i.i49 = getelementptr inbounds %struct.list_head, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %prev1.i.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %219, ptr %prev1.i.i.i.i49, align 4
  %223 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile ptr %221, ptr %219, align 4
  br label %list_del.exit.i54

list_del.exit.i54:                                ; preds = %if.end.i.i.i50, %if.then7.i.list_del.exit.i54_crit_edge
  %224 = ptrtoint ptr %.pn.i43 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i43, align 4
  %prev.i.i51 = getelementptr inbounds %struct.list_head, ptr %.pn.i43, i32 0, i32 1
  %225 = ptrtoint ptr %prev.i.i51 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i51, align 4
  tail call void @kfree(ptr noundef %comp.0.le.i) #15
  %count.i52 = getelementptr i8, ptr %dev, i32 4016
  %226 = ptrtoint ptr %count.i52 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %count.i52, align 8
  %dec.i53 = add i32 %227, -1
  store i32 %dec.i53, ptr %count.i52, align 8
  %call10.i = tail call fastcc i32 @gfar_process_filer_changes(ptr noundef %add.ptr.i) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %list_del.exit.i54, %for.cond.i44.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %clean_mem.i, %process.i.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %gfar_set_hash_opts.exit, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %tobool.not.i, %gfar_set_hash_opts.exit ], [ -22, %lor.lhs.false.sw.epilog_crit_edge ], [ -22, %land.lhs.true.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ], [ %ret.0.i, %clean_mem.i ], [ -12, %if.end13.sw.epilog_crit_edge ], [ 0, %process.i.sw.epilog_crit_edge ], [ -22, %sw.bb16.sw.epilog_crit_edge ], [ 0, %list_del.exit.i54 ], [ -22, %for.cond.i44.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rx_queue_access) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfar_get_ts_info(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phc_index, align 4
  %device_flags = getelementptr i8, ptr %dev, i32 2320
  %1 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %device_flags, align 16
  %and = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 24, ptr %so_timestamping, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15) #15
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end14_crit_edge, label %if.then3

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call1) #15
  tail call void @of_node_put(ptr noundef nonnull %call1) #15
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then3.if.end14_crit_edge, label %if.end9

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.end9:                                          ; preds = %if.then3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call4, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %phc_index12 = getelementptr inbounds %struct.ptp_qoriq, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %phc_index12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phc_index12, align 4
  %8 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %phc_index, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge, %if.then3.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %so_timestamping15 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %so_timestamping15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 69, ptr %so_timestamping15, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %10 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %11 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %rx_filters, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @phy_validate_pause(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_asym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfar_process_filer_changes(ptr noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4244) #19
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_list = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 38
  br label %for.cond

for.cond:                                         ; preds = %if.end98.i.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %rx_list, %if.end ], [ %.pn, %if.end98.i.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp4.not = icmp eq ptr %.pn, %rx_list
  br i1 %cmp4.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %j.0 = getelementptr i8, ptr %.pn, i32 -168
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call7.i.i, align 8
  %4 = ptrtoint ptr %j.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %j.0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not.i = icmp sgt i32 %5, -1
  br i1 %tobool.not.i, label %for.body.if.end20.i_crit_edge, label %land.lhs.true.i

for.body.if.end20.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %for.body
  %vlan_tci.i = getelementptr i8, ptr %.pn, i32 -30
  %6 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vlan_tci.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %7, label %land.lhs.true.i.if.end.i_crit_edge [
    i16 -1, label %land.lhs.true.i.if.end20.i_crit_edge
    i16 0, label %if.then5.i
  ]

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %vlan_tci.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %land.lhs.true.i.if.end.i_crit_edge
  %vlan_tci.i.i = getelementptr i8, ptr %.pn, i32 -102
  %10 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vlan_tci.i.i, align 2
  %12 = and i16 %11, 4095
  %13 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vlan_tci.i, align 2
  %15 = and i16 %14, 4095
  %16 = and i16 %14, 4096
  %17 = lshr i16 %11, 13
  %18 = lshr i16 %14, 13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool13.not.i = icmp eq i16 %16, 0
  br i1 %tobool13.not.i, label %if.end.i.if.end20.i_crit_edge, label %if.then14.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = and i16 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool15.not.i = icmp eq i16 %19, 0
  %spec.select.i = select i1 %tobool15.not.i, i32 16384, i32 24576
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i, %if.end.i.if.end20.i_crit_edge, %land.lhs.true.i.if.end20.i_crit_edge, %for.body.if.end20.i_crit_edge
  %vlan.1.i = phi i32 [ %spec.select.i, %if.then14.i ], [ 16384, %if.end.i.if.end20.i_crit_edge ], [ 0, %land.lhs.true.i.if.end20.i_crit_edge ], [ 0, %for.body.if.end20.i_crit_edge ]
  %vlan_mask.0.i = phi i32 [ 24576, %if.then14.i ], [ 16384, %if.end.i.if.end20.i_crit_edge ], [ 0, %land.lhs.true.i.if.end20.i_crit_edge ], [ 0, %for.body.if.end20.i_crit_edge ]
  %id.0.shrunk.i = phi i16 [ %12, %if.then14.i ], [ %12, %if.end.i.if.end20.i_crit_edge ], [ 0, %land.lhs.true.i.if.end20.i_crit_edge ], [ 0, %for.body.if.end20.i_crit_edge ]
  %id_mask.0.shrunk.i = phi i16 [ %15, %if.then14.i ], [ %15, %if.end.i.if.end20.i_crit_edge ], [ 0, %land.lhs.true.i.if.end20.i_crit_edge ], [ 0, %for.body.if.end20.i_crit_edge ]
  %prio.0.shrunk.i = phi i16 [ %17, %if.then14.i ], [ %17, %if.end.i.if.end20.i_crit_edge ], [ 0, %land.lhs.true.i.if.end20.i_crit_edge ], [ 0, %for.body.if.end20.i_crit_edge ]
  %prio_mask.0.shrunk.i = phi i16 [ %18, %if.then14.i ], [ %18, %if.end.i.if.end20.i_crit_edge ], [ 0, %land.lhs.true.i.if.end20.i_crit_edge ], [ 0, %for.body.if.end20.i_crit_edge ]
  %prio_mask.0.i = zext i16 %prio_mask.0.shrunk.i to i32
  %prio.0.i = zext i16 %prio.0.shrunk.i to i32
  %id_mask.0.i = zext i16 %id_mask.0.shrunk.i to i32
  %id.0.i = zext i16 %id.0.shrunk.i to i32
  %and22.i = and i32 %5, 2147483647
  %20 = zext i32 %and22.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and22.i, label %if.then10 [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb25.i
    i32 3, label %sw.bb30.i
    i32 13, label %sw.bb35.i
    i32 18, label %sw.bb40.i
  ]

sw.bb.i:                                          ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  %or23.i = or i32 %vlan.1.i, 544
  %or24.i = or i32 %vlan_mask.0.i, 544
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 128, ptr %arrayidx.i.i.i, align 4
  %prop.i.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %22, i32 1
  %24 = ptrtoint ptr %prop.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or24.i, ptr %prop.i.i.i, align 8
  %25 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i, ptr %call7.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 129, ptr %arrayidx.i.i, align 4
  %prop.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i, i32 1
  %27 = ptrtoint ptr %prop.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or23.i, ptr %prop.i.i, align 8
  %28 = load i32, ptr %call7.i.i, align 8
  %inc.i.i = add i32 %28, 1
  store i32 %inc.i.i, ptr %call7.i.i, align 8
  %h_u.i = getelementptr i8, ptr %.pn, i32 -164
  %m_u.i = getelementptr i8, ptr %.pn, i32 -92
  tail call fastcc void @gfar_set_basic_ip(ptr noundef %h_u.i, ptr noundef %m_u.i, ptr noundef %call7.i.i) #15
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  %or26.i = or i32 %vlan.1.i, 528
  %or27.i = or i32 %vlan_mask.0.i, 528
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i187.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i187.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 128, ptr %arrayidx.i.i187.i, align 4
  %prop.i.i188.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %30, i32 1
  %32 = ptrtoint ptr %prop.i.i188.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or27.i, ptr %prop.i.i188.i, align 8
  %33 = load i32, ptr %call7.i.i, align 8
  %inc.i.i189.i = add i32 %33, 1
  store i32 %inc.i.i189.i, ptr %call7.i.i, align 8
  %arrayidx.i190.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i189.i
  %34 = ptrtoint ptr %arrayidx.i190.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 129, ptr %arrayidx.i190.i, align 4
  %prop.i191.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i189.i, i32 1
  %35 = ptrtoint ptr %prop.i191.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or26.i, ptr %prop.i191.i, align 8
  %36 = load i32, ptr %call7.i.i, align 8
  %inc.i192.i = add i32 %36, 1
  store i32 %inc.i192.i, ptr %call7.i.i, align 8
  %h_u28.i = getelementptr i8, ptr %.pn, i32 -164
  %m_u29.i = getelementptr i8, ptr %.pn, i32 -92
  tail call fastcc void @gfar_set_basic_ip(ptr noundef %h_u28.i, ptr noundef %m_u29.i, ptr noundef %call7.i.i) #15
  br label %sw.epilog.i

sw.bb30.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  %or31.i = or i32 %vlan.1.i, 512
  %or32.i = or i32 %vlan_mask.0.i, 512
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i193.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.i193.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 128, ptr %arrayidx.i.i193.i, align 4
  %prop.i.i194.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %38, i32 1
  %40 = ptrtoint ptr %prop.i.i194.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or32.i, ptr %prop.i.i194.i, align 8
  %41 = load i32, ptr %call7.i.i, align 8
  %inc.i.i195.i = add i32 %41, 1
  store i32 %inc.i.i195.i, ptr %call7.i.i, align 8
  %arrayidx.i196.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i195.i
  %42 = ptrtoint ptr %arrayidx.i196.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 129, ptr %arrayidx.i196.i, align 4
  %prop.i197.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i195.i, i32 1
  %43 = ptrtoint ptr %prop.i197.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or31.i, ptr %prop.i197.i, align 8
  %44 = load i32, ptr %call7.i.i, align 8
  %inc.i198.i = add i32 %44, 1
  store i32 %inc.i198.i, ptr %call7.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i198.i
  %45 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 128, ptr %arrayidx.i.i.i.i, align 4
  %prop.i.i.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i198.i, i32 1
  %46 = ptrtoint ptr %prop.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %prop.i.i.i.i, align 8
  %47 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i.i = add i32 %47, 1
  store i32 %inc.i.i.i.i, ptr %call7.i.i, align 8
  %arrayidx.i.i199.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i.i
  %48 = ptrtoint ptr %arrayidx.i.i199.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 139, ptr %arrayidx.i.i199.i, align 4
  %prop.i.i200.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i.i, i32 1
  %49 = ptrtoint ptr %prop.i.i200.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 132, ptr %prop.i.i200.i, align 8
  %50 = load i32, ptr %call7.i.i, align 8
  %inc.i.i201.i = add i32 %50, 1
  store i32 %inc.i.i201.i, ptr %call7.i.i, align 8
  %h_u33.i = getelementptr i8, ptr %.pn, i32 -164
  %m_u34.i = getelementptr i8, ptr %.pn, i32 -92
  tail call fastcc void @gfar_set_basic_ip(ptr noundef %h_u33.i, ptr noundef %m_u34.i, ptr noundef %call7.i.i) #15
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %if.end20.i
  %or36.i = or i32 %vlan.1.i, 512
  %or37.i = or i32 %vlan_mask.0.i, 512
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i202.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %52
  %53 = ptrtoint ptr %arrayidx.i.i202.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 128, ptr %arrayidx.i.i202.i, align 4
  %prop.i.i203.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %52, i32 1
  %54 = ptrtoint ptr %prop.i.i203.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or37.i, ptr %prop.i.i203.i, align 8
  %55 = load i32, ptr %call7.i.i, align 8
  %inc.i.i204.i = add i32 %55, 1
  store i32 %inc.i.i204.i, ptr %call7.i.i, align 8
  %arrayidx.i205.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i204.i
  %56 = ptrtoint ptr %arrayidx.i205.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 129, ptr %arrayidx.i205.i, align 4
  %prop.i206.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i204.i, i32 1
  %57 = ptrtoint ptr %prop.i206.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or36.i, ptr %prop.i206.i, align 8
  %58 = load i32, ptr %call7.i.i, align 8
  %inc.i207.i = add i32 %58, 1
  store i32 %inc.i207.i, ptr %call7.i.i, align 8
  %h_u38.i = getelementptr i8, ptr %.pn, i32 -164
  %m_u39.i = getelementptr i8, ptr %.pn, i32 -92
  %59 = ptrtoint ptr %h_u38.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %h_u38.i, align 4
  %61 = ptrtoint ptr %m_u39.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %m_u39.i, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %62, label %sw.bb35.i.sw.epilog.i.i.i_crit_edge [
    i32 -1, label %sw.bb35.i.gfar_set_attribute.exit.i.i_crit_edge
    i32 0, label %if.then39.i.i.i
  ]

sw.bb35.i.gfar_set_attribute.exit.i.i_crit_edge:  ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_attribute.exit.i.i

sw.bb35.i.sw.epilog.i.i.i_crit_edge:              ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i.i

if.then39.i.i.i:                                  ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %if.then39.i.i.i, %sw.bb35.i.sw.epilog.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ -1, %if.then39.i.i.i ], [ %62, %sw.bb35.i.sw.epilog.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i207.i
  %64 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 128, ptr %arrayidx.i.i.i.i.i, align 4
  %prop.i.i.i.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i207.i, i32 1
  %65 = ptrtoint ptr %prop.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mask.addr.0.i.i.i, ptr %prop.i.i.i.i.i, align 8
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i.i.i = add i32 %67, 1
  store i32 %inc.i.i.i.i.i, ptr %call7.i.i, align 8
  %arrayidx.i.i.i208.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i.i.i
  %68 = ptrtoint ptr %arrayidx.i.i.i208.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 141, ptr %arrayidx.i.i.i208.i, align 4
  %prop.i.i.i209.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i.i.i, i32 1
  %69 = ptrtoint ptr %prop.i.i.i209.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %60, ptr %prop.i.i.i209.i, align 8
  %70 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i210.i = add i32 %70, 1
  store i32 %inc.i.i.i210.i, ptr %call7.i.i, align 8
  br label %gfar_set_attribute.exit.i.i

gfar_set_attribute.exit.i.i:                      ; preds = %sw.epilog.i.i.i, %sw.bb35.i.gfar_set_attribute.exit.i.i_crit_edge
  %ip4dst.i.i = getelementptr i8, ptr %.pn, i32 -160
  %71 = ptrtoint ptr %ip4dst.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ip4dst.i.i, align 4
  %ip4dst2.i.i = getelementptr i8, ptr %.pn, i32 -88
  %73 = ptrtoint ptr %ip4dst2.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ip4dst2.i.i, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %74, label %gfar_set_attribute.exit.i.i.sw.epilog.i29.i.i_crit_edge [
    i32 -1, label %gfar_set_attribute.exit.i.i.gfar_set_attribute.exit30.i.i_crit_edge
    i32 0, label %if.then39.i21.i.i
  ]

gfar_set_attribute.exit.i.i.gfar_set_attribute.exit30.i.i_crit_edge: ; preds = %gfar_set_attribute.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_attribute.exit30.i.i

gfar_set_attribute.exit.i.i.sw.epilog.i29.i.i_crit_edge: ; preds = %gfar_set_attribute.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i29.i.i

if.then39.i21.i.i:                                ; preds = %gfar_set_attribute.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i29.i.i

sw.epilog.i29.i.i:                                ; preds = %if.then39.i21.i.i, %gfar_set_attribute.exit.i.i.sw.epilog.i29.i.i_crit_edge
  %mask.addr.0.i22.i.i = phi i32 [ -1, %if.then39.i21.i.i ], [ %74, %gfar_set_attribute.exit.i.i.sw.epilog.i29.i.i_crit_edge ]
  %76 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i.i23.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %77
  %78 = ptrtoint ptr %arrayidx.i.i.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 128, ptr %arrayidx.i.i.i23.i.i, align 4
  %prop.i.i.i24.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %77, i32 1
  %79 = ptrtoint ptr %prop.i.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %mask.addr.0.i22.i.i, ptr %prop.i.i.i24.i.i, align 8
  %80 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i25.i.i = add i32 %80, 1
  store i32 %inc.i.i.i25.i.i, ptr %call7.i.i, align 8
  %arrayidx.i.i26.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i25.i.i
  %81 = ptrtoint ptr %arrayidx.i.i26.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 140, ptr %arrayidx.i.i26.i.i, align 4
  %prop.i.i27.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i25.i.i, i32 1
  %82 = ptrtoint ptr %prop.i.i27.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %72, ptr %prop.i.i27.i.i, align 8
  %83 = load i32, ptr %call7.i.i, align 8
  %inc.i.i28.i.i = add i32 %83, 1
  store i32 %inc.i.i28.i.i, ptr %call7.i.i, align 8
  br label %gfar_set_attribute.exit30.i.i

gfar_set_attribute.exit30.i.i:                    ; preds = %sw.epilog.i29.i.i, %gfar_set_attribute.exit.i.i.gfar_set_attribute.exit30.i.i_crit_edge
  %tos3.i.i = getelementptr i8, ptr %.pn, i32 -80
  %84 = ptrtoint ptr %tos3.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tos3.i.i, align 4
  %conv4.i.i = zext i8 %85 to i32
  %or3.i.i.i = or i32 %conv4.i.i, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %or3.i.i.i, -1
  br i1 %tobool4.not.i.i.i, label %gfar_set_attribute.exit30.i.i.gfar_set_attribute.exit39.i.i_crit_edge, label %if.end6.i.i.i

gfar_set_attribute.exit30.i.i.gfar_set_attribute.exit39.i.i_crit_edge: ; preds = %gfar_set_attribute.exit30.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_attribute.exit39.i.i

if.end6.i.i.i:                                    ; preds = %gfar_set_attribute.exit30.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %tos.i.i = getelementptr i8, ptr %.pn, i32 -152
  %86 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %tos.i.i, align 4
  %conv.i.i = zext i8 %87 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool7.not.i.i.i = icmp eq i8 %85, 0
  %.or3.i.i.i = select i1 %tobool7.not.i.i.i, i32 -1, i32 %or3.i.i.i
  %88 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i.i32.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %89
  %90 = ptrtoint ptr %arrayidx.i.i.i32.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 128, ptr %arrayidx.i.i.i32.i.i, align 4
  %prop.i.i.i33.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %89, i32 1
  %91 = ptrtoint ptr %prop.i.i.i33.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %.or3.i.i.i, ptr %prop.i.i.i33.i.i, align 8
  %92 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i34.i.i = add i32 %92, 1
  store i32 %inc.i.i.i34.i.i, ptr %call7.i.i, align 8
  %arrayidx.i.i35.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i34.i.i
  %93 = ptrtoint ptr %arrayidx.i.i35.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 138, ptr %arrayidx.i.i35.i.i, align 4
  %prop.i.i36.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i34.i.i, i32 1
  %94 = ptrtoint ptr %prop.i.i36.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv.i.i, ptr %prop.i.i36.i.i, align 8
  %95 = load i32, ptr %call7.i.i, align 8
  %inc.i.i37.i.i = add i32 %95, 1
  store i32 %inc.i.i37.i.i, ptr %call7.i.i, align 8
  br label %gfar_set_attribute.exit39.i.i

gfar_set_attribute.exit39.i.i:                    ; preds = %if.end6.i.i.i, %gfar_set_attribute.exit30.i.i.gfar_set_attribute.exit39.i.i_crit_edge
  %proto6.i.i = getelementptr i8, ptr %.pn, i32 -78
  %96 = ptrtoint ptr %proto6.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %proto6.i.i, align 2
  %conv7.i.i = zext i8 %97 to i32
  %or3.i40.i.i = or i32 %conv7.i.i, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or3.i40.i.i)
  %tobool4.not.i41.i.i = icmp eq i32 %or3.i40.i.i, -1
  br i1 %tobool4.not.i41.i.i, label %gfar_set_attribute.exit39.i.i.gfar_set_attribute.exit53.i.i_crit_edge, label %if.end6.i44.i.i

gfar_set_attribute.exit39.i.i.gfar_set_attribute.exit53.i.i_crit_edge: ; preds = %gfar_set_attribute.exit39.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_attribute.exit53.i.i

if.end6.i44.i.i:                                  ; preds = %gfar_set_attribute.exit39.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %proto.i.i = getelementptr i8, ptr %.pn, i32 -150
  %98 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %proto.i.i, align 2
  %conv5.i.i = zext i8 %99 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool7.not.i42.i.i = icmp eq i8 %97, 0
  %.or3.i43.i.i = select i1 %tobool7.not.i42.i.i, i32 -1, i32 %or3.i40.i.i
  %100 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i.i46.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %101
  %102 = ptrtoint ptr %arrayidx.i.i.i46.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 128, ptr %arrayidx.i.i.i46.i.i, align 4
  %prop.i.i.i47.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %101, i32 1
  %103 = ptrtoint ptr %prop.i.i.i47.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %.or3.i43.i.i, ptr %prop.i.i.i47.i.i, align 8
  %104 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i48.i.i = add i32 %104, 1
  store i32 %inc.i.i.i48.i.i, ptr %call7.i.i, align 8
  %arrayidx.i.i49.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i48.i.i
  %105 = ptrtoint ptr %arrayidx.i.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 139, ptr %arrayidx.i.i49.i.i, align 4
  %prop.i.i50.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i48.i.i, i32 1
  %106 = ptrtoint ptr %prop.i.i50.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv5.i.i, ptr %prop.i.i50.i.i, align 8
  %107 = load i32, ptr %call7.i.i, align 8
  %inc.i.i51.i.i = add i32 %107, 1
  store i32 %inc.i.i51.i.i, ptr %call7.i.i, align 8
  br label %gfar_set_attribute.exit53.i.i

gfar_set_attribute.exit53.i.i:                    ; preds = %if.end6.i44.i.i, %gfar_set_attribute.exit39.i.i.gfar_set_attribute.exit53.i.i_crit_edge
  %l4_4_bytes.i.i = getelementptr i8, ptr %.pn, i32 -156
  %108 = ptrtoint ptr %l4_4_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %l4_4_bytes.i.i, align 4
  %l4_4_bytes8.i.i = getelementptr i8, ptr %.pn, i32 -84
  %110 = ptrtoint ptr %l4_4_bytes8.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %l4_4_bytes8.i.i, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %111, label %gfar_set_attribute.exit53.i.i.sw.epilog.i62.i.i_crit_edge [
    i32 -1, label %gfar_set_attribute.exit53.i.i.sw.epilog.i_crit_edge
    i32 0, label %if.then39.i54.i.i
  ]

gfar_set_attribute.exit53.i.i.sw.epilog.i_crit_edge: ; preds = %gfar_set_attribute.exit53.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

gfar_set_attribute.exit53.i.i.sw.epilog.i62.i.i_crit_edge: ; preds = %gfar_set_attribute.exit53.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i62.i.i

if.then39.i54.i.i:                                ; preds = %gfar_set_attribute.exit53.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i62.i.i

sw.epilog.i62.i.i:                                ; preds = %if.then39.i54.i.i, %gfar_set_attribute.exit53.i.i.sw.epilog.i62.i.i_crit_edge
  %mask.addr.0.i55.i.i = phi i32 [ -1, %if.then39.i54.i.i ], [ %111, %gfar_set_attribute.exit53.i.i.sw.epilog.i62.i.i_crit_edge ]
  %113 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i.i56.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %114
  %115 = ptrtoint ptr %arrayidx.i.i.i56.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 128, ptr %arrayidx.i.i.i56.i.i, align 4
  %prop.i.i.i57.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %114, i32 1
  %116 = ptrtoint ptr %prop.i.i.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %mask.addr.0.i55.i.i, ptr %prop.i.i.i57.i.i, align 8
  %117 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i58.i.i = add i32 %117, 1
  store i32 %inc.i.i.i58.i.i, ptr %call7.i.i, align 8
  %arrayidx.i.i59.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i58.i.i
  %118 = ptrtoint ptr %arrayidx.i.i59.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 130, ptr %arrayidx.i.i59.i.i, align 4
  %prop.i.i60.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i58.i.i, i32 1
  %119 = ptrtoint ptr %prop.i.i60.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %109, ptr %prop.i.i60.i.i, align 8
  %120 = load i32, ptr %call7.i.i, align 8
  %inc.i.i61.i.i = add i32 %120, 1
  store i32 %inc.i.i61.i.i, ptr %call7.i.i, align 8
  br label %sw.epilog.i

sw.bb40.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlan.1.i)
  %tobool41.not.i = icmp eq i32 %vlan.1.i, 0
  br i1 %tobool41.not.i, label %sw.bb40.i.if.end43.i_crit_edge, label %if.then42.i

sw.bb40.i.if.end43.i_crit_edge:                   ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43.i

if.then42.i:                                      ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #17
  %121 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i211.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %122
  %123 = ptrtoint ptr %arrayidx.i.i211.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 128, ptr %arrayidx.i.i211.i, align 4
  %prop.i.i212.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %122, i32 1
  %124 = ptrtoint ptr %prop.i.i212.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %vlan_mask.0.i, ptr %prop.i.i212.i, align 8
  %125 = load i32, ptr %call7.i.i, align 8
  %inc.i.i213.i = add i32 %125, 1
  store i32 %inc.i.i213.i, ptr %call7.i.i, align 8
  %arrayidx.i214.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i213.i
  %126 = ptrtoint ptr %arrayidx.i214.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 129, ptr %arrayidx.i214.i, align 4
  %prop.i215.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i213.i, i32 1
  %127 = ptrtoint ptr %prop.i215.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %vlan.1.i, ptr %prop.i215.i, align 8
  %128 = load i32, ptr %call7.i.i, align 8
  %inc.i216.i = add i32 %128, 1
  store i32 %inc.i216.i, ptr %call7.i.i, align 8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %sw.bb40.i.if.end43.i_crit_edge
  %h_u44.i = getelementptr i8, ptr %.pn, i32 -164
  %m_u45.i = getelementptr i8, ptr %.pn, i32 -92
  %h_source.i.i = getelementptr i8, ptr %.pn, i32 -86
  %129 = ptrtoint ptr %h_source.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %h_source.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %.pn, i32 -84
  %131 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %add.ptr1.i.i.i, align 2
  %and9.i.i.i = and i16 %132, %130
  %add.ptr3.i.i.i = getelementptr i8, ptr %.pn, i32 -82
  %133 = ptrtoint ptr %add.ptr3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %add.ptr3.i.i.i, align 2
  %and510.i.i.i = and i16 %and9.i.i.i, %134
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i.i)
  %cmp.i.i.i = icmp eq i16 %and510.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.end43.i.if.end53.i.i_crit_edge, label %if.then.i.i

if.end43.i.if.end53.i.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.i.i

if.then.i.i:                                      ; preds = %if.end43.i
  %135 = ptrtoint ptr %h_source.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %h_source.i.i, align 4
  %conv.i.i.i = zext i16 %134 to i32
  %or.i.i.i = or i32 %136, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i167.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i167.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.else.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %137 = ptrtoint ptr %h_source.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %h_source.i.i, align 1
  %conv.i217.i = zext i8 %138 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i217.i, 16
  %arrayidx7.i.i = getelementptr i8, ptr %.pn, i32 -85
  %139 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %140 to i32
  %shl9.i.i = shl nuw nsw i32 %conv8.i.i, 8
  %or.i.i = or i32 %shl9.i.i, %shl.i.i
  %141 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %add.ptr1.i.i.i, align 1
  %conv12.i.i = zext i8 %142 to i32
  %or13.i.i = or i32 %or.i.i, %conv12.i.i
  %arrayidx15.i.i = getelementptr i8, ptr %.pn, i32 -83
  %143 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx15.i.i, align 1
  %conv16.i.i = zext i8 %144 to i32
  %shl17.i.i = shl nuw nsw i32 %conv16.i.i, 16
  %145 = ptrtoint ptr %add.ptr3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %add.ptr3.i.i.i, align 1
  %conv20.i.i = zext i8 %146 to i32
  %shl21.i.i = shl nuw nsw i32 %conv20.i.i, 8
  %or22.i.i = or i32 %shl21.i.i, %shl17.i.i
  %arrayidx24.i.i = getelementptr i8, ptr %.pn, i32 -81
  %147 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx24.i.i, align 1
  %conv25.i.i = zext i8 %148 to i32
  %or26.i.i = or i32 %or22.i.i, %conv25.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %upper_temp_mask.0.i.i = phi i32 [ %or13.i.i, %if.else.i.i ], [ -1, %if.then.i.i.if.end.i.i_crit_edge ]
  %lower_temp_mask.0.i.i = phi i32 [ %or26.i.i, %if.else.i.i ], [ -1, %if.then.i.i.if.end.i.i_crit_edge ]
  %h_source27.i.i = getelementptr i8, ptr %.pn, i32 -158
  %149 = ptrtoint ptr %h_source27.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %h_source27.i.i, align 1
  %conv29.i.i = zext i8 %150 to i32
  %shl30.i.i = shl nuw nsw i32 %conv29.i.i, 16
  %arrayidx32.i.i = getelementptr i8, ptr %.pn, i32 -157
  %151 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx32.i.i, align 1
  %conv33.i.i = zext i8 %152 to i32
  %shl34.i.i = shl nuw nsw i32 %conv33.i.i, 8
  %or35.i.i = or i32 %shl34.i.i, %shl30.i.i
  %arrayidx37.i.i = getelementptr i8, ptr %.pn, i32 -156
  %153 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx37.i.i, align 1
  %conv38.i.i = zext i8 %154 to i32
  %or39.i.i = or i32 %or35.i.i, %conv38.i.i
  %or29.i.i.i = or i32 %or39.i.i, %upper_temp_mask.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or29.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %or29.i.i.i, 0
  br i1 %tobool30.not.i.i.i, label %if.end.i.i.gfar_set_attribute.exit.i224.i_crit_edge, label %if.end32.i.i.i

if.end.i.i.gfar_set_attribute.exit.i224.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_attribute.exit.i224.i

if.end32.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %or33.i.i.i = or i32 %upper_temp_mask.0.i.i, -16777216
  %155 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i.i.i218.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %156
  %157 = ptrtoint ptr %arrayidx.i.i.i.i218.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 128, ptr %arrayidx.i.i.i.i218.i, align 4
  %prop.i.i.i.i219.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %156, i32 1
  %158 = ptrtoint ptr %prop.i.i.i.i219.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %or33.i.i.i, ptr %prop.i.i.i.i219.i, align 8
  %159 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i.i220.i = add i32 %159, 1
  store i32 %inc.i.i.i.i220.i, ptr %call7.i.i, align 8
  %arrayidx.i.i.i221.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i.i220.i
  %160 = ptrtoint ptr %arrayidx.i.i.i221.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 133, ptr %arrayidx.i.i.i221.i, align 4
  %prop.i.i.i222.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i.i220.i, i32 1
  %161 = ptrtoint ptr %prop.i.i.i222.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %or39.i.i, ptr %prop.i.i.i222.i, align 8
  %162 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i223.i = add i32 %162, 1
  store i32 %inc.i.i.i223.i, ptr %call7.i.i, align 8
  br label %gfar_set_attribute.exit.i224.i

gfar_set_attribute.exit.i224.i:                   ; preds = %if.end32.i.i.i, %if.end.i.i.gfar_set_attribute.exit.i224.i_crit_edge
  %arrayidx41.i.i = getelementptr i8, ptr %.pn, i32 -155
  %163 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx41.i.i, align 1
  %conv42.i.i = zext i8 %164 to i32
  %shl43.i.i = shl nuw nsw i32 %conv42.i.i, 16
  %arrayidx45.i.i = getelementptr i8, ptr %.pn, i32 -154
  %165 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx45.i.i, align 1
  %conv46.i.i = zext i8 %166 to i32
  %shl47.i.i = shl nuw nsw i32 %conv46.i.i, 8
  %or48.i.i = or i32 %shl47.i.i, %shl43.i.i
  %arrayidx50.i.i = getelementptr i8, ptr %.pn, i32 -153
  %167 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx50.i.i, align 1
  %conv51.i.i = zext i8 %168 to i32
  %or52.i.i = or i32 %or48.i.i, %conv51.i.i
  %or29.i168.i.i = or i32 %or52.i.i, %lower_temp_mask.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or29.i168.i.i)
  %tobool30.not.i169.i.i = icmp eq i32 %or29.i168.i.i, 0
  br i1 %tobool30.not.i169.i.i, label %gfar_set_attribute.exit.i224.i.if.end53.i.i_crit_edge, label %if.end32.i171.i.i

gfar_set_attribute.exit.i224.i.if.end53.i.i_crit_edge: ; preds = %gfar_set_attribute.exit.i224.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.i.i

if.end32.i171.i.i:                                ; preds = %gfar_set_attribute.exit.i224.i
  call void @__sanitizer_cov_trace_pc() #17
  %or33.i170.i.i = or i32 %lower_temp_mask.0.i.i, -16777216
  %169 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i.i172.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %170
  %171 = ptrtoint ptr %arrayidx.i.i.i172.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 128, ptr %arrayidx.i.i.i172.i.i, align 4
  %prop.i.i.i173.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %170, i32 1
  %172 = ptrtoint ptr %prop.i.i.i173.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %or33.i170.i.i, ptr %prop.i.i.i173.i.i, align 8
  %173 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i174.i.i = add i32 %173, 1
  store i32 %inc.i.i.i174.i.i, ptr %call7.i.i, align 8
  %arrayidx.i.i175.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i174.i.i
  %174 = ptrtoint ptr %arrayidx.i.i175.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 134, ptr %arrayidx.i.i175.i.i, align 4
  %prop.i.i176.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i174.i.i, i32 1
  %175 = ptrtoint ptr %prop.i.i176.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %or52.i.i, ptr %prop.i.i176.i.i, align 8
  %176 = load i32, ptr %call7.i.i, align 8
  %inc.i.i177.i.i = add i32 %176, 1
  store i32 %inc.i.i177.i.i, ptr %call7.i.i, align 8
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.end32.i171.i.i, %gfar_set_attribute.exit.i224.i.if.end53.i.i_crit_edge, %if.end43.i.if.end53.i.i_crit_edge
  %177 = ptrtoint ptr %m_u45.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %m_u45.i, align 2
  %add.ptr1.i179.i.i = getelementptr i8, ptr %.pn, i32 -90
  %179 = ptrtoint ptr %add.ptr1.i179.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %add.ptr1.i179.i.i, align 2
  %and9.i180.i.i = and i16 %180, %178
  %add.ptr3.i181.i.i = getelementptr i8, ptr %.pn, i32 -88
  %181 = ptrtoint ptr %add.ptr3.i181.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %add.ptr3.i181.i.i, align 2
  %and510.i182.i.i = and i16 %and9.i180.i.i, %182
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i182.i.i)
  %cmp.i183.i.i = icmp eq i16 %and510.i182.i.i, -1
  br i1 %cmp.i183.i.i, label %if.end53.i.i.if.end126.i.i_crit_edge, label %if.then56.i.i

if.end53.i.i.if.end126.i.i_crit_edge:             ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end126.i.i

if.then56.i.i:                                    ; preds = %if.end53.i.i
  %183 = ptrtoint ptr %h_u44.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %h_u44.i, align 2
  %add.ptr1.i184.i.i = getelementptr i8, ptr %.pn, i32 -162
  %185 = ptrtoint ptr %add.ptr1.i184.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %add.ptr1.i184.i.i, align 2
  %and9.i185.i.i = and i16 %186, %184
  %add.ptr3.i186.i.i = getelementptr i8, ptr %.pn, i32 -160
  %187 = ptrtoint ptr %add.ptr3.i186.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %add.ptr3.i186.i.i, align 2
  %and510.i187.i.i = and i16 %and9.i185.i.i, %188
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i187.i.i)
  %cmp.i188.i.i = icmp eq i16 %and510.i187.i.i, -1
  br i1 %cmp.i188.i.i, label %land.lhs.true.i.i, label %if.then56.if.else66_crit_edge.i.i

if.then56.if.else66_crit_edge.i.i:                ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %.pre.i.i = zext i16 %182 to i32
  br label %if.else66.i.i

land.lhs.true.i.i:                                ; preds = %if.then56.i.i
  %189 = ptrtoint ptr %m_u45.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %m_u45.i, align 4
  %conv.i190.i.i = zext i16 %182 to i32
  %or.i191.i.i = or i32 %190, %conv.i190.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i191.i.i)
  %cmp.i192.i.i = icmp eq i32 %or.i191.i.i, 0
  br i1 %cmp.i192.i.i, label %land.lhs.true.i.i.if.end126.sink.split.i.i_crit_edge, label %land.lhs.true.i.i.if.else66.i.i_crit_edge

land.lhs.true.i.i.if.else66.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else66.i.i

land.lhs.true.i.i.if.end126.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end126.sink.split.i.i

if.else66.i.i:                                    ; preds = %land.lhs.true.i.i.if.else66.i.i_crit_edge, %if.then56.if.else66_crit_edge.i.i
  %conv.i197.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.then56.if.else66_crit_edge.i.i ], [ %conv.i190.i.i, %land.lhs.true.i.i.if.else66.i.i_crit_edge ]
  %191 = ptrtoint ptr %m_u45.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %m_u45.i, align 4
  %or.i198.i.i = or i32 %192, %conv.i197.pre-phi.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i198.i.i)
  %cmp.i199.i.i = icmp eq i32 %or.i198.i.i, 0
  br i1 %cmp.i199.i.i, label %if.else66.i.i.if.end98.i.i_crit_edge, label %if.else71.i.i

if.else66.i.i.if.end98.i.i_crit_edge:             ; preds = %if.else66.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end98.i.i

if.else71.i.i:                                    ; preds = %if.else66.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %193 = ptrtoint ptr %m_u45.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %m_u45.i, align 1
  %conv74.i.i = zext i8 %194 to i32
  %shl75.i.i = shl nuw nsw i32 %conv74.i.i, 16
  %arrayidx77.i.i = getelementptr i8, ptr %.pn, i32 -91
  %195 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %196 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %or80.i.i = or i32 %shl79.i.i, %shl75.i.i
  %197 = ptrtoint ptr %add.ptr1.i179.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %add.ptr1.i179.i.i, align 1
  %conv83.i.i = zext i8 %198 to i32
  %or84.i.i = or i32 %or80.i.i, %conv83.i.i
  %arrayidx86.i.i = getelementptr i8, ptr %.pn, i32 -89
  %199 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx86.i.i, align 1
  %conv87.i.i = zext i8 %200 to i32
  %shl88.i.i = shl nuw nsw i32 %conv87.i.i, 16
  %201 = ptrtoint ptr %add.ptr3.i181.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %add.ptr3.i181.i.i, align 1
  %conv91.i.i = zext i8 %202 to i32
  %shl92.i.i = shl nuw nsw i32 %conv91.i.i, 8
  %or93.i.i = or i32 %shl92.i.i, %shl88.i.i
  %arrayidx95.i.i = getelementptr i8, ptr %.pn, i32 -87
  %203 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx95.i.i, align 1
  %conv96.i.i = zext i8 %204 to i32
  %or97.i.i = or i32 %or93.i.i, %conv96.i.i
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %if.else71.i.i, %if.else66.i.i.if.end98.i.i_crit_edge
  %upper_temp_mask.1.i.i = phi i32 [ %or84.i.i, %if.else71.i.i ], [ -1, %if.else66.i.i.if.end98.i.i_crit_edge ]
  %lower_temp_mask.1.i.i = phi i32 [ %or97.i.i, %if.else71.i.i ], [ -1, %if.else66.i.i.if.end98.i.i_crit_edge ]
  %205 = ptrtoint ptr %h_u44.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %h_u44.i, align 1
  %conv101.i.i = zext i8 %206 to i32
  %shl102.i.i = shl nuw nsw i32 %conv101.i.i, 16
  %arrayidx104.i.i = getelementptr i8, ptr %.pn, i32 -163
  %207 = ptrtoint ptr %arrayidx104.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx104.i.i, align 1
  %conv105.i.i = zext i8 %208 to i32
  %shl106.i.i = shl nuw nsw i32 %conv105.i.i, 8
  %or107.i.i = or i32 %shl106.i.i, %shl102.i.i
  %209 = ptrtoint ptr %add.ptr1.i184.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %add.ptr1.i184.i.i, align 1
  %conv110.i.i = zext i8 %210 to i32
  %or111.i.i = or i32 %or107.i.i, %conv110.i.i
  %or29.i200.i.i = or i32 %or111.i.i, %upper_temp_mask.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or29.i200.i.i)
  %tobool30.not.i201.i.i = icmp eq i32 %or29.i200.i.i, 0
  br i1 %tobool30.not.i201.i.i, label %if.end98.i.i.gfar_set_attribute.exit210.i.i_crit_edge, label %if.end32.i203.i.i

if.end98.i.i.gfar_set_attribute.exit210.i.i_crit_edge: ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_attribute.exit210.i.i

if.end32.i203.i.i:                                ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %or33.i202.i.i = or i32 %upper_temp_mask.1.i.i, -16777216
  %211 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i.i204.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %212
  %213 = ptrtoint ptr %arrayidx.i.i.i204.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 128, ptr %arrayidx.i.i.i204.i.i, align 4
  %prop.i.i.i205.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %212, i32 1
  %214 = ptrtoint ptr %prop.i.i.i205.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %or33.i202.i.i, ptr %prop.i.i.i205.i.i, align 8
  %215 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i206.i.i = add i32 %215, 1
  store i32 %inc.i.i.i206.i.i, ptr %call7.i.i, align 8
  %arrayidx.i.i207.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i206.i.i
  %216 = ptrtoint ptr %arrayidx.i.i207.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 131, ptr %arrayidx.i.i207.i.i, align 4
  %prop.i.i208.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i206.i.i, i32 1
  %217 = ptrtoint ptr %prop.i.i208.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %or111.i.i, ptr %prop.i.i208.i.i, align 8
  %218 = load i32, ptr %call7.i.i, align 8
  %inc.i.i209.i.i = add i32 %218, 1
  store i32 %inc.i.i209.i.i, ptr %call7.i.i, align 8
  br label %gfar_set_attribute.exit210.i.i

gfar_set_attribute.exit210.i.i:                   ; preds = %if.end32.i203.i.i, %if.end98.i.i.gfar_set_attribute.exit210.i.i_crit_edge
  %arrayidx113.i.i = getelementptr i8, ptr %.pn, i32 -161
  %219 = ptrtoint ptr %arrayidx113.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx113.i.i, align 1
  %conv114.i.i = zext i8 %220 to i32
  %shl115.i.i = shl nuw nsw i32 %conv114.i.i, 16
  %221 = ptrtoint ptr %add.ptr3.i186.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %add.ptr3.i186.i.i, align 1
  %conv118.i.i = zext i8 %222 to i32
  %shl119.i.i = shl nuw nsw i32 %conv118.i.i, 8
  %or120.i.i = or i32 %shl119.i.i, %shl115.i.i
  %arrayidx122.i.i = getelementptr i8, ptr %.pn, i32 -159
  %223 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx122.i.i, align 1
  %conv123.i.i = zext i8 %224 to i32
  %or124.i.i = or i32 %or120.i.i, %conv123.i.i
  %or29.i211.i.i = or i32 %or124.i.i, %lower_temp_mask.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or29.i211.i.i)
  %tobool30.not.i212.i.i = icmp eq i32 %or29.i211.i.i, 0
  br i1 %tobool30.not.i212.i.i, label %gfar_set_attribute.exit210.i.i.if.end126.i.i_crit_edge, label %if.end32.i214.i.i

gfar_set_attribute.exit210.i.i.if.end126.i.i_crit_edge: ; preds = %gfar_set_attribute.exit210.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end126.i.i

if.end32.i214.i.i:                                ; preds = %gfar_set_attribute.exit210.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %or33.i213.i.i = or i32 %lower_temp_mask.1.i.i, -16777216
  br label %if.end126.sink.split.i.i

if.end126.sink.split.i.i:                         ; preds = %if.end32.i214.i.i, %land.lhs.true.i.i.if.end126.sink.split.i.i_crit_edge
  %.sink232.i.i = phi i32 [ %or33.i213.i.i, %if.end32.i214.i.i ], [ 32768, %land.lhs.true.i.i.if.end126.sink.split.i.i_crit_edge ]
  %.sink.i.i = phi i32 [ 132, %if.end32.i214.i.i ], [ 129, %land.lhs.true.i.i.if.end126.sink.split.i.i_crit_edge ]
  %or124.sink.i.i = phi i32 [ %or124.i.i, %if.end32.i214.i.i ], [ 32768, %land.lhs.true.i.i.if.end126.sink.split.i.i_crit_edge ]
  %225 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i193.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %226
  %227 = ptrtoint ptr %arrayidx.i.i193.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 128, ptr %arrayidx.i.i193.i.i, align 4
  %prop.i.i194.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %226, i32 1
  %228 = ptrtoint ptr %prop.i.i194.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %.sink232.i.i, ptr %prop.i.i194.i.i, align 8
  %229 = load i32, ptr %call7.i.i, align 8
  %inc.i.i195.i.i = add i32 %229, 1
  store i32 %inc.i.i195.i.i, ptr %call7.i.i, align 8
  %arrayidx.i.i218.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i195.i.i
  %230 = ptrtoint ptr %arrayidx.i.i218.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %.sink.i.i, ptr %arrayidx.i.i218.i.i, align 4
  %prop.i.i219.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i195.i.i, i32 1
  %231 = ptrtoint ptr %prop.i.i219.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %or124.sink.i.i, ptr %prop.i.i219.i.i, align 8
  %232 = load i32, ptr %call7.i.i, align 8
  %inc.i.i220.i.i = add i32 %232, 1
  store i32 %inc.i.i220.i.i, ptr %call7.i.i, align 8
  br label %if.end126.i.i

if.end126.i.i:                                    ; preds = %if.end126.sink.split.i.i, %gfar_set_attribute.exit210.i.i.if.end126.i.i_crit_edge, %if.end53.i.i.if.end126.i.i_crit_edge
  %h_proto128.i.i = getelementptr i8, ptr %.pn, i32 -80
  %233 = ptrtoint ptr %h_proto128.i.i to i32
  call void @__asan_loadN_noabort(i32 %233, i32 2)
  %234 = load i16, ptr %h_proto128.i.i, align 1
  %conv129.i.i = zext i16 %234 to i32
  %or18.i.i.i = or i32 %conv129.i.i, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or18.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %or18.i.i.i, -1
  br i1 %tobool20.not.i.i.i, label %if.end126.i.i.sw.epilog.i_crit_edge, label %if.end22.i.i.i

if.end126.i.i.sw.epilog.i_crit_edge:              ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

if.end22.i.i.i:                                   ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %h_proto.i.i = getelementptr i8, ptr %.pn, i32 -152
  %235 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_loadN_noabort(i32 %235, i32 2)
  %236 = load i16, ptr %h_proto.i.i, align 1
  %conv127.i.i = zext i16 %236 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %234)
  %tobool23.not.i.i.i = icmp eq i16 %234, 0
  %.or18.i.i.i = select i1 %tobool23.not.i.i.i, i32 -1, i32 %or18.i.i.i
  %237 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i.i222.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %238
  %239 = ptrtoint ptr %arrayidx.i.i.i222.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 128, ptr %arrayidx.i.i.i222.i.i, align 4
  %prop.i.i.i223.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %238, i32 1
  %240 = ptrtoint ptr %prop.i.i.i223.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %.or18.i.i.i, ptr %prop.i.i.i223.i.i, align 8
  %241 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i224.i.i = add i32 %241, 1
  store i32 %inc.i.i.i224.i.i, ptr %call7.i.i, align 8
  %arrayidx.i.i225.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i224.i.i
  %242 = ptrtoint ptr %arrayidx.i.i225.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 135, ptr %arrayidx.i.i225.i.i, align 4
  %prop.i.i226.i.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i224.i.i, i32 1
  %243 = ptrtoint ptr %prop.i.i226.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %conv127.i.i, ptr %prop.i.i226.i.i, align 8
  %244 = load i32, ptr %call7.i.i, align 8
  %inc.i.i227.i.i = add i32 %244, 1
  store i32 %inc.i.i227.i.i, ptr %call7.i.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end22.i.i.i, %if.end126.i.i.sw.epilog.i_crit_edge, %sw.epilog.i62.i.i, %gfar_set_attribute.exit53.i.i.sw.epilog.i_crit_edge, %sw.bb30.i, %sw.bb25.i, %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlan.1.i)
  %tobool46.not.i = icmp eq i32 %vlan.1.i, 0
  br i1 %tobool46.not.i, label %sw.epilog.i.if.end48.i_crit_edge, label %if.then47.i

sw.epilog.i.if.end48.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.i

if.then47.i:                                      ; preds = %sw.epilog.i
  %or12.i243.i = or i16 %id_mask.0.shrunk.i, %id.0.shrunk.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or12.i243.i)
  %tobool13.not.i.i = icmp eq i16 %or12.i243.i, 0
  br i1 %tobool13.not.i.i, label %if.then47.i.gfar_set_attribute.exit.i_crit_edge, label %if.end15.i.i

if.then47.i.gfar_set_attribute.exit.i_crit_edge:  ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_attribute.exit.i

if.end15.i.i:                                     ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #17
  %or16.i.i = or i32 %id_mask.0.i, -4096
  %245 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i.i225.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %246
  %247 = ptrtoint ptr %arrayidx.i.i.i225.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 128, ptr %arrayidx.i.i.i225.i, align 4
  %prop.i.i.i226.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %246, i32 1
  %248 = ptrtoint ptr %prop.i.i.i226.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %or16.i.i, ptr %prop.i.i.i226.i, align 8
  %249 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i227.i = add i32 %249, 1
  store i32 %inc.i.i.i227.i, ptr %call7.i.i, align 8
  %arrayidx.i.i228.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i227.i
  %250 = ptrtoint ptr %arrayidx.i.i228.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 136, ptr %arrayidx.i.i228.i, align 4
  %prop.i.i229.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i227.i, i32 1
  %251 = ptrtoint ptr %prop.i.i229.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %id.0.i, ptr %prop.i.i229.i, align 8
  %252 = load i32, ptr %call7.i.i, align 8
  %inc.i.i230.i = add i32 %252, 1
  store i32 %inc.i.i230.i, ptr %call7.i.i, align 8
  br label %gfar_set_attribute.exit.i

gfar_set_attribute.exit.i:                        ; preds = %if.end15.i.i, %if.then47.i.gfar_set_attribute.exit.i_crit_edge
  %or.i231244.i = or i16 %prio_mask.0.shrunk.i, %prio.0.shrunk.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i231244.i)
  %tobool.not.i.i = icmp eq i16 %or.i231244.i, 0
  br i1 %tobool.not.i.i, label %gfar_set_attribute.exit.i.if.end48.i_crit_edge, label %if.end.i232.i

gfar_set_attribute.exit.i.if.end48.i_crit_edge:   ; preds = %gfar_set_attribute.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.i

if.end.i232.i:                                    ; preds = %gfar_set_attribute.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %or1.i.i = or i32 %prio_mask.0.i, -8
  %253 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %call7.i.i, align 8
  %arrayidx.i.i.i233.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %254
  %255 = ptrtoint ptr %arrayidx.i.i.i233.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 128, ptr %arrayidx.i.i.i233.i, align 4
  %prop.i.i.i234.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %254, i32 1
  %256 = ptrtoint ptr %prop.i.i.i234.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %or1.i.i, ptr %prop.i.i.i234.i, align 8
  %257 = load i32, ptr %call7.i.i, align 8
  %inc.i.i.i235.i = add i32 %257, 1
  store i32 %inc.i.i.i235.i, ptr %call7.i.i, align 8
  %arrayidx.i.i236.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i235.i
  %258 = ptrtoint ptr %arrayidx.i.i236.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 137, ptr %arrayidx.i.i236.i, align 4
  %prop.i.i237.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i.i.i235.i, i32 1
  %259 = ptrtoint ptr %prop.i.i237.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %prio.0.i, ptr %prop.i.i237.i, align 8
  %260 = load i32, ptr %call7.i.i, align 8
  %inc.i.i238.i = add i32 %260, 1
  store i32 %inc.i.i238.i, ptr %call7.i.i, align 8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end.i232.i, %gfar_set_attribute.exit.i.if.end48.i_crit_edge, %sw.epilog.i.if.end48.i_crit_edge
  %261 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %262, i32 %3)
  %cmp50.i = icmp eq i32 %262, %3
  br i1 %cmp50.i, label %if.then52.i, label %if.end48.i.if.end58.i_crit_edge

if.end48.i.if.end58.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58.i

if.then52.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i240.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %3
  %263 = ptrtoint ptr %arrayidx.i240.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 128, ptr %arrayidx.i240.i, align 4
  %prop.i241.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %3, i32 1
  %264 = ptrtoint ptr %prop.i241.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 -1, ptr %prop.i241.i, align 8
  %265 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %call7.i.i, align 8
  %inc.i242.i = add i32 %266, 1
  store i32 %inc.i242.i, ptr %call7.i.i, align 8
  %arrayidx.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i242.i
  %267 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 32, ptr %arrayidx.i, align 4
  %prop.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %inc.i242.i, i32 1
  %268 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 0, ptr %prop.i, align 8
  %269 = load i32, ptr %call7.i.i, align 8
  %inc.i = add i32 %269, 1
  store i32 %inc.i, ptr %call7.i.i, align 8
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then52.i, %if.end48.i.if.end58.i_crit_edge
  %270 = phi i32 [ %inc.i, %if.then52.i ], [ %262, %if.end48.i.if.end58.i_crit_edge ]
  %sub.i = add i32 %270, -1
  %arrayidx61.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %sub.i
  %271 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx61.i, align 4
  %and63.i = and i32 %272, -129
  store i32 %and63.i, ptr %arrayidx61.i, align 4
  %ring_cookie.i = getelementptr i8, ptr %.pn, i32 -16
  %273 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %ring_cookie.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %274)
  %cmp64.i = icmp eq i64 %274, -1
  %.tr.i = trunc i64 %274 to i32
  %275 = shl i32 %.tr.i, 10
  %storemerge.v.i = select i1 %cmp64.i, i32 256, i32 %275
  %storemerge.i = or i32 %storemerge.v.i, %and63.i
  %276 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %storemerge.i, ptr %arrayidx61.i, align 4
  %add.i = add i32 %3, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %add.i)
  %cmp84.i = icmp ugt i32 %270, %add.i
  br i1 %cmp84.i, label %if.then86.i, label %if.end58.i.if.end98.i_crit_edge

if.end58.i.if.end98.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end98.i

if.then86.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #17
  %add88.i = add i32 %3, 1
  %arrayidx89.i = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %add88.i
  %277 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %arrayidx89.i, align 4
  %or91.i = or i32 %278, 512
  store i32 %or91.i, ptr %arrayidx89.i, align 4
  %279 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %arrayidx61.i, align 4
  %or97.i = or i32 %280, 512
  store i32 %or97.i, ptr %arrayidx61.i, align 4
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then86.i, %if.end58.i.if.end98.i_crit_edge
  %cmp100.i = icmp ugt i32 %270, 509
  br i1 %cmp100.i, label %if.then7, label %if.end98.i.for.cond_crit_edge

if.end98.i.for.cond_crit_edge:                    ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then7:                                         ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #17
  %ndev = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 1
  %281 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %282, ptr noundef nonnull @.str.13) #18
  br label %end

if.then10:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  %ndev11 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 1
  %283 = ptrtoint ptr %ndev11 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %ndev11, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %284, ptr noundef nonnull @.str.14) #18
  br label %end

for.end:                                          ; preds = %for.cond
  %285 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %286)
  %cmp.i = icmp ugt i32 %286, 254
  br i1 %cmp.i, label %if.then20, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.end
  %regs1.i.i = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 11, i32 0, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %for.cond.preheader.i
  %i.040.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i41, %for.body.i.land.rhs.i_crit_edge ]
  %arrayidx.i38 = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %i.040.i
  %287 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx.i38, align 4
  %prop.i39 = getelementptr %struct.filer_table, ptr %call7.i.i, i32 0, i32 1, i32 %i.040.i, i32 1
  %289 = ptrtoint ptr %prop.i39 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %prop.i39, align 8
  %or.i = or i32 %290, %288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i40 = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i40, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i
  %291 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %regs1.i.i, align 16
  %rqfar.i.i = getelementptr inbounds %struct.gfar, ptr %292, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i.i, i32 %i.040.i) #15, !srcloc !59
  %rqfcr.i.i = getelementptr inbounds %struct.gfar, ptr %292, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i.i, i32 %288) #15, !srcloc !59
  %rqfpr.i.i = getelementptr inbounds %struct.gfar, ptr %292, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i.i, i32 %290) #15, !srcloc !59
  %inc.i41 = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i41, 255
  br i1 %exitcond.not.i, label %for.body.i.gfar_write_filer_table.exit_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

for.body.i.gfar_write_filer_table.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_write_filer_table.exit

for.end.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.040.i)
  %cmp1141.i = icmp ult i32 %i.040.i, 255
  br i1 %cmp1141.i, label %for.end.i.for.body12.i_crit_edge, label %for.end.i.gfar_write_filer_table.exit_crit_edge

for.end.i.gfar_write_filer_table.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_write_filer_table.exit

for.end.i.for.body12.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.end.i.for.body12.i_crit_edge
  %i.142.i = phi i32 [ %inc14.i, %for.body12.i.for.body12.i_crit_edge ], [ %i.040.i, %for.end.i.for.body12.i_crit_edge ]
  %293 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %regs1.i.i, align 16
  %rqfar.i33.i = getelementptr inbounds %struct.gfar, ptr %294, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i33.i, i32 %i.142.i) #15, !srcloc !59
  %rqfcr.i34.i = getelementptr inbounds %struct.gfar, ptr %294, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i34.i, i32 96) #15, !srcloc !59
  %rqfpr.i35.i = getelementptr inbounds %struct.gfar, ptr %294, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i35.i, i32 -1) #15, !srcloc !59
  %inc14.i = add nuw nsw i32 %i.142.i, 1
  %exitcond43.not.i = icmp eq i32 %inc14.i, 255
  br i1 %exitcond43.not.i, label %for.body12.i.gfar_write_filer_table.exit_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body12.i

for.body12.i.gfar_write_filer_table.exit_crit_edge: ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_write_filer_table.exit

gfar_write_filer_table.exit:                      ; preds = %for.body12.i.gfar_write_filer_table.exit_crit_edge, %for.end.i.gfar_write_filer_table.exit_crit_edge, %for.body.i.gfar_write_filer_table.exit_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.040.i, %for.end.i.gfar_write_filer_table.exit_crit_edge ], [ 255, %for.body12.i.gfar_write_filer_table.exit_crit_edge ], [ 255, %for.body.i.gfar_write_filer_table.exit_crit_edge ]
  %295 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %regs1.i.i, align 16
  %rqfar.i37.i = getelementptr inbounds %struct.gfar, ptr %296, i32 0, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfar.i37.i, i32 %i.1.lcssa.i) #15, !srcloc !59
  %rqfcr.i38.i = getelementptr inbounds %struct.gfar, ptr %296, i32 0, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfcr.i38.i, i32 32) #15, !srcloc !59
  %rqfpr.i39.i = getelementptr inbounds %struct.gfar, ptr %296, i32 0, i32 81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rqfpr.i39.i, i32 0) #15, !srcloc !59
  br label %end

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %ndev21 = getelementptr inbounds %struct.gfar_private, ptr %priv, i32 0, i32 1
  %297 = ptrtoint ptr %ndev21 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %ndev21, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %298, ptr noundef nonnull @.str.13) #18
  br label %end

end:                                              ; preds = %if.then20, %gfar_write_filer_table.exit, %if.then10, %if.then7
  %ret.0 = phi i32 [ -16, %if.then7 ], [ -1, %if.then10 ], [ -16, %if.then20 ], [ 0, %gfar_write_filer_table.exit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @gfar_set_basic_ip(ptr nocapture noundef readonly %value, ptr nocapture noundef readonly %mask, ptr noundef %tab) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %3, label %entry.sw.epilog.i_crit_edge [
    i32 -1, label %entry.gfar_set_attribute.exit_crit_edge
    i32 0, label %if.then39.i
  ]

entry.gfar_set_attribute.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_attribute.exit

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

if.then39.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then39.i, %entry.sw.epilog.i_crit_edge
  %mask.addr.0.i = phi i32 [ -1, %if.then39.i ], [ %3, %entry.sw.epilog.i_crit_edge ]
  %5 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tab, align 4
  %arrayidx.i.i.i = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 128, ptr %arrayidx.i.i.i, align 4
  %prop.i.i.i = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %6, i32 1
  %8 = ptrtoint ptr %prop.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mask.addr.0.i, ptr %prop.i.i.i, align 4
  %9 = load i32, ptr %tab, align 4
  %inc.i.i.i = add i32 %9, 1
  store i32 %inc.i.i.i, ptr %tab, align 4
  %arrayidx.i.i = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %inc.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 141, ptr %arrayidx.i.i, align 4
  %prop.i.i = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %inc.i.i.i, i32 1
  %11 = ptrtoint ptr %prop.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %1, ptr %prop.i.i, align 4
  %12 = load i32, ptr %tab, align 4
  %inc.i.i = add i32 %12, 1
  store i32 %inc.i.i, ptr %tab, align 4
  br label %gfar_set_attribute.exit

gfar_set_attribute.exit:                          ; preds = %sw.epilog.i, %entry.gfar_set_attribute.exit_crit_edge
  %ip4dst = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %ip4dst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ip4dst, align 4
  %ip4dst2 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %mask, i32 0, i32 1
  %15 = ptrtoint ptr %ip4dst2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ip4dst2, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %16, label %gfar_set_attribute.exit.sw.epilog.i31_crit_edge [
    i32 -1, label %gfar_set_attribute.exit.gfar_set_attribute.exit32_crit_edge
    i32 0, label %if.then39.i23
  ]

gfar_set_attribute.exit.gfar_set_attribute.exit32_crit_edge: ; preds = %gfar_set_attribute.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_attribute.exit32

gfar_set_attribute.exit.sw.epilog.i31_crit_edge:  ; preds = %gfar_set_attribute.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i31

if.then39.i23:                                    ; preds = %gfar_set_attribute.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i31

sw.epilog.i31:                                    ; preds = %if.then39.i23, %gfar_set_attribute.exit.sw.epilog.i31_crit_edge
  %mask.addr.0.i24 = phi i32 [ -1, %if.then39.i23 ], [ %16, %gfar_set_attribute.exit.sw.epilog.i31_crit_edge ]
  %18 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tab, align 4
  %arrayidx.i.i.i25 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 128, ptr %arrayidx.i.i.i25, align 4
  %prop.i.i.i26 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %19, i32 1
  %21 = ptrtoint ptr %prop.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mask.addr.0.i24, ptr %prop.i.i.i26, align 4
  %22 = load i32, ptr %tab, align 4
  %inc.i.i.i27 = add i32 %22, 1
  store i32 %inc.i.i.i27, ptr %tab, align 4
  %arrayidx.i.i28 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %inc.i.i.i27
  %23 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 140, ptr %arrayidx.i.i28, align 4
  %prop.i.i29 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %inc.i.i.i27, i32 1
  %24 = ptrtoint ptr %prop.i.i29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %14, ptr %prop.i.i29, align 4
  %25 = load i32, ptr %tab, align 4
  %inc.i.i30 = add i32 %25, 1
  store i32 %inc.i.i30, ptr %tab, align 4
  br label %gfar_set_attribute.exit32

gfar_set_attribute.exit32:                        ; preds = %sw.epilog.i31, %gfar_set_attribute.exit.gfar_set_attribute.exit32_crit_edge
  %pdst3 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %mask, i32 0, i32 3
  %26 = ptrtoint ptr %pdst3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pdst3, align 2
  %conv4 = zext i16 %27 to i32
  %or18.i = or i32 %conv4, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or18.i)
  %tobool20.not.i = icmp eq i32 %or18.i, -1
  br i1 %tobool20.not.i, label %gfar_set_attribute.exit32.gfar_set_attribute.exit41_crit_edge, label %if.end22.i

gfar_set_attribute.exit32.gfar_set_attribute.exit41_crit_edge: ; preds = %gfar_set_attribute.exit32
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_attribute.exit41

if.end22.i:                                       ; preds = %gfar_set_attribute.exit32
  call void @__sanitizer_cov_trace_pc() #17
  %pdst = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %value, i32 0, i32 3
  %28 = ptrtoint ptr %pdst to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pdst, align 2
  %conv = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool23.not.i = icmp eq i16 %27, 0
  %.or18.i = select i1 %tobool23.not.i, i32 -1, i32 %or18.i
  %30 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tab, align 4
  %arrayidx.i.i.i34 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 128, ptr %arrayidx.i.i.i34, align 4
  %prop.i.i.i35 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %31, i32 1
  %33 = ptrtoint ptr %prop.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.or18.i, ptr %prop.i.i.i35, align 4
  %34 = load i32, ptr %tab, align 4
  %inc.i.i.i36 = add i32 %34, 1
  store i32 %inc.i.i.i36, ptr %tab, align 4
  %arrayidx.i.i37 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %inc.i.i.i36
  %35 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 142, ptr %arrayidx.i.i37, align 4
  %prop.i.i38 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %inc.i.i.i36, i32 1
  %36 = ptrtoint ptr %prop.i.i38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv, ptr %prop.i.i38, align 4
  %37 = load i32, ptr %tab, align 4
  %inc.i.i39 = add i32 %37, 1
  store i32 %inc.i.i39, ptr %tab, align 4
  br label %gfar_set_attribute.exit41

gfar_set_attribute.exit41:                        ; preds = %if.end22.i, %gfar_set_attribute.exit32.gfar_set_attribute.exit41_crit_edge
  %psrc6 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %mask, i32 0, i32 2
  %38 = ptrtoint ptr %psrc6 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %psrc6, align 4
  %conv7 = zext i16 %39 to i32
  %or18.i42 = or i32 %conv7, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or18.i42)
  %tobool20.not.i43 = icmp eq i32 %or18.i42, -1
  br i1 %tobool20.not.i43, label %gfar_set_attribute.exit41.gfar_set_attribute.exit55_crit_edge, label %if.end22.i46

gfar_set_attribute.exit41.gfar_set_attribute.exit55_crit_edge: ; preds = %gfar_set_attribute.exit41
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_attribute.exit55

if.end22.i46:                                     ; preds = %gfar_set_attribute.exit41
  call void @__sanitizer_cov_trace_pc() #17
  %psrc = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %value, i32 0, i32 2
  %40 = ptrtoint ptr %psrc to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %psrc, align 4
  %conv5 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool23.not.i44 = icmp eq i16 %39, 0
  %.or18.i45 = select i1 %tobool23.not.i44, i32 -1, i32 %or18.i42
  %42 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tab, align 4
  %arrayidx.i.i.i48 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 128, ptr %arrayidx.i.i.i48, align 4
  %prop.i.i.i49 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %43, i32 1
  %45 = ptrtoint ptr %prop.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.or18.i45, ptr %prop.i.i.i49, align 4
  %46 = load i32, ptr %tab, align 4
  %inc.i.i.i50 = add i32 %46, 1
  store i32 %inc.i.i.i50, ptr %tab, align 4
  %arrayidx.i.i51 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %inc.i.i.i50
  %47 = ptrtoint ptr %arrayidx.i.i51 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 143, ptr %arrayidx.i.i51, align 4
  %prop.i.i52 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %inc.i.i.i50, i32 1
  %48 = ptrtoint ptr %prop.i.i52 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv5, ptr %prop.i.i52, align 4
  %49 = load i32, ptr %tab, align 4
  %inc.i.i53 = add i32 %49, 1
  store i32 %inc.i.i53, ptr %tab, align 4
  br label %gfar_set_attribute.exit55

gfar_set_attribute.exit55:                        ; preds = %if.end22.i46, %gfar_set_attribute.exit41.gfar_set_attribute.exit55_crit_edge
  %tos9 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %mask, i32 0, i32 4
  %50 = ptrtoint ptr %tos9 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tos9, align 4
  %conv10 = zext i8 %51 to i32
  %or3.i = or i32 %conv10, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or3.i)
  %tobool4.not.i = icmp eq i32 %or3.i, -1
  br i1 %tobool4.not.i, label %gfar_set_attribute.exit55.gfar_set_attribute.exit64_crit_edge, label %if.end6.i

gfar_set_attribute.exit55.gfar_set_attribute.exit64_crit_edge: ; preds = %gfar_set_attribute.exit55
  call void @__sanitizer_cov_trace_pc() #17
  br label %gfar_set_attribute.exit64

if.end6.i:                                        ; preds = %gfar_set_attribute.exit55
  call void @__sanitizer_cov_trace_pc() #17
  %tos = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %value, i32 0, i32 4
  %52 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tos, align 4
  %conv8 = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool7.not.i = icmp eq i8 %51, 0
  %.or3.i = select i1 %tobool7.not.i, i32 -1, i32 %or3.i
  %54 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tab, align 4
  %arrayidx.i.i.i57 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %55
  %56 = ptrtoint ptr %arrayidx.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 128, ptr %arrayidx.i.i.i57, align 4
  %prop.i.i.i58 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %55, i32 1
  %57 = ptrtoint ptr %prop.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.or3.i, ptr %prop.i.i.i58, align 4
  %58 = load i32, ptr %tab, align 4
  %inc.i.i.i59 = add i32 %58, 1
  store i32 %inc.i.i.i59, ptr %tab, align 4
  %arrayidx.i.i60 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %inc.i.i.i59
  %59 = ptrtoint ptr %arrayidx.i.i60 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 138, ptr %arrayidx.i.i60, align 4
  %prop.i.i61 = getelementptr %struct.filer_table, ptr %tab, i32 0, i32 1, i32 %inc.i.i.i59, i32 1
  %60 = ptrtoint ptr %prop.i.i61 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv8, ptr %prop.i.i61, align 4
  %61 = load i32, ptr %tab, align 4
  %inc.i.i62 = add i32 %61, 1
  store i32 %inc.i.i62, ptr %tab, align 4
  br label %gfar_set_attribute.exit64

gfar_set_attribute.exit64:                        ; preds = %if.end6.i, %gfar_set_attribute.exit55.gfar_set_attribute.exit64_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @gfar_ethtool_ops, !1, !"gfar_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 1485, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 166, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 300, i32 20}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 306, i32 20}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 415, i32 19}
!10 = !{ptr @stat_gstrings, !11, !"stat_gstrings", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 49, i32 19}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 712, i32 7}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 729, i32 7}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 1304, i32 9}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 1208, i32 9}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 1211, i32 9}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 1216, i32 9}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 799, i32 29}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 804, i32 9}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 807, i32 9}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 1239, i32 8}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 1244, i32 8}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/freescale/gianfar_ethtool.c", i32 1464, i32 49}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2148256159, i64 2148256191, i64 2148256220, i64 2148256254, i64 2148256285, i64 2148256308}
!46 = !{i64 2148345240}
!47 = !{i64 2156774575}
!48 = !{i64 2156774417}
!49 = !{i64 2148344127}
!50 = !{i64 2148254546, i64 2148254578, i64 2148254607, i64 2148254641, i64 2148254672, i64 2148254695}
!51 = !{i64 4236028}
!52 = !{i64 2156768135}
!53 = !{i64 2156772781}
!54 = !{i64 2156772623}
!55 = !{i32 0, i32 33}
!56 = !{i64 2156773771}
!57 = !{i64 2156773613}
!58 = !{i64 2156768532}
!59 = !{i64 4235610}
