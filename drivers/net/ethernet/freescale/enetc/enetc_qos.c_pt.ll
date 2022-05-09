; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/enetc/enetc_qos.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/enetc/enetc_qos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.enetc_psfp = type { i32, ptr, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.spinlock }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.24 }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.actions_fwd = type { i64, i64, i32 }
%struct.enetc_cbd = type { %union.anon.147, i16, i16, i8, i8, i8, i8 }
%union.anon.147 = type { %struct.sfi_conf }
%struct.sfi_conf = type { i32, i8, [2 x i8], i8, i16, i16, i16, [2 x i8], i32, [3 x i8], i8 }
%struct.enetc_ndev_priv = type { ptr, ptr, ptr, i32, [2 x ptr], i16, i16, i16, i16, i16, i32, i32, ptr, [16 x ptr], [16 x ptr], ptr, %struct.psfp_cap, ptr, i32, i32, ptr, i32, %struct.work_struct, %struct.sk_buff_head }
%struct.psfp_cap = type { i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.enetc_si = type { ptr, %struct.enetc_hw, i32, ptr, %struct.enetc_cbdr, i32, i32, i32, i32, i16, i32 }
%struct.enetc_hw = type { ptr, ptr, ptr }
%struct.enetc_cbdr = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.enetc_bdr = type { ptr, ptr, ptr, %union.anon.126, i16, i32, i32, i32, %union.anon.127, %union.anon.129, ptr, i32, [80 x i8], %struct.enetc_xdp_data, %struct.enetc_ring_stats, i32, i8, i8, ptr, i32, [68 x i8] }
%union.anon.126 = type { ptr }
%union.anon.127 = type { ptr }
%union.anon.129 = type { ptr }
%struct.enetc_xdp_data = type { %struct.xdp_rxq_info, ptr, i32, [120 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.enetc_ring_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_taprio_qopt_offload = type { i8, i64, i64, i64, i32, [0 x %struct.tc_taprio_sched_entry] }
%struct.tc_taprio_sched_entry = type { i8, i32, i32 }
%struct.anon.148 = type { [2 x i32], %union.anon.149 }
%union.anon.149 = type { [4 x i32] }
%struct.tgs_gcl_data = type { i32, i32, i32, i32, [0 x %struct.gce] }
%struct.gce = type { i32, i8, [3 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.125, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.125 = type { ptr }
%struct.page = type { i32, %union.anon.28, %union.anon.104, %struct.atomic_t, i32 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.104 = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.tc_cbs_qopt_offload = type { i8, i32, i32, i32, i32, i32 }
%struct.tc_etf_qopt_offload = type { i8, i32 }
%struct.flow_match_eth_addrs = type { ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.134, ptr }
%union.anon.134 = type { %struct.anon.139 }
%struct.anon.139 = type { i32, i64, i64, i64, i32 }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.enetc_streamid = type { i32, %union.anon.153, i8, i16, i8, i32 }
%union.anon.153 = type { [6 x i8] }
%struct.enetc_psfp_gate = type { i32, i8, i64, i64, i64, i32, %struct.refcount_struct, %struct.hlist_node, [0 x %struct.action_gate_entry] }
%struct.action_gate_entry = type { i8, i32, i32, i32 }
%struct.anon.145 = type { i32, i64, i64, i64, i32, ptr }
%struct.enetc_stream_filter = type { %struct.enetc_streamid, i32, i32, i32, i32, %struct.flow_stats, %struct.hlist_node }
%struct.enetc_psfp_filter = type { i32, i32, i8, i32, i32, i32, %struct.refcount_struct, %struct.hlist_node }
%struct.enetc_psfp_meter = type { i32, i32, i32, %struct.refcount_struct, %struct.hlist_node }
%struct.sgi_table = type { [8 x i8], i8, [2 x i8], i8, [7 x i8], i8, i8, [2 x i8], i8 }
%struct.sgcl_data = type { i32, i32, i32, i32, [0 x %struct.sgce] }
%struct.sgce = type { i32, [3 x i8], i8 }
%struct.fmi_conf = type { i32, i32, i32, i32, i8, i8, i8, [4 x i8], i8 }
%struct.sfi_counter_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.streamid_data = type { %union.anon.156, i16 }
%union.anon.156 = type { [6 x i8] }
%struct.streamid_conf = type { i32, i32, i8, [3 x i8], [3 x i8], i8 }

@enetc_setup_tc_cbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 209, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Disable TC%d before disable TC%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enetc_setup_tc_cbs\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/freescale/enetc/enetc_qos.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@enetc_setup_tc_cbs._entry_ptr = internal global ptr @enetc_setup_tc_cbs._entry, section ".printk_index", align 4
@enetc_setup_tc_cbs._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Enable TC%d first before enable TC%d\0A\00", [58 x i8] zeroinitializer }, align 32
@enetc_setup_tc_cbs._entry_ptr.7 = internal global ptr @enetc_setup_tc_cbs._entry.5, section ".printk_index", align 4
@enetc_setup_tc_cbs._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"The sum of all CBS Bandwidth can't exceed 100\0A\00", [49 x i8] zeroinitializer }, align 32
@enetc_setup_tc_cbs._entry_ptr.10 = internal global ptr @enetc_setup_tc_cbs._entry.8, section ".printk_index", align 4
@epsfp = internal global { %struct.enetc_psfp, [60 x i8] } zeroinitializer, align 32
@enetc_psfp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&epsfp.psfp_lock\00", [47 x i8] zeroinitializer }, align 32
@enetc_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @enetc_block_cb_list, ptr @enetc_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@enetc_mdio_lock = external dso_local global %struct.rwlock_t, align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMA mapping failed!\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@enetc_config_clsflower.__msg = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"fsl_enetc:fsl_enetc_vf: At least one action is needed\00", [42 x i8] zeroinitializer }, align 32
@enetc_config_clsflower.__msg.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fsl_enetc:fsl_enetc_vf: Unsupported filter type!\00", [47 x i8] zeroinitializer }, align 32
@enetc_config_clsflower.__msg.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"fsl_enetc:fsl_enetc_vf: Invalid PSFP inputs\00", [52 x i8] zeroinitializer }, align 32
@enetc_config_clsflower.__msg.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"fsl_enetc:fsl_enetc_vf: Unsupported actions\00", [52 x i8] zeroinitializer }, align 32
@enetc_act_fwd = internal constant { [3 x %struct.actions_fwd], [56 x i8] } { [3 x %struct.actions_fwd] [%struct.actions_fwd { i64 268435456, i64 128, i32 1 }, %struct.actions_fwd { i64 272629760, i64 128, i32 1 }, %struct.actions_fwd { i64 2, i64 0, i32 2 }], [56 x i8] zeroinitializer }, align 32
@enetc_psfp_parse_clsflower.__msg = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"fsl_enetc:fsl_enetc_vf: No Stream identify resource!\00", [43 x i8] zeroinitializer }, align 32
@enetc_psfp_parse_clsflower.__msg.18 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"fsl_enetc:fsl_enetc_vf: Cannot match on both source and destination MAC\00", [56 x i8] zeroinitializer }, align 32
@enetc_psfp_parse_clsflower.__msg.19 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"fsl_enetc:fsl_enetc_vf: Masked matching on destination MAC not supported\00", [55 x i8] zeroinitializer }, align 32
@enetc_psfp_parse_clsflower.__msg.20 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"fsl_enetc:fsl_enetc_vf: Masked matching on source MAC not supported\00", [60 x i8] zeroinitializer }, align 32
@enetc_psfp_parse_clsflower.__msg.21 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"fsl_enetc:fsl_enetc_vf: Unsupported, must include ETH_ADDRS\00", [36 x i8] zeroinitializer }, align 32
@enetc_psfp_parse_clsflower.__msg.22 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"fsl_enetc:fsl_enetc_vf: Only full mask is supported for VLAN priority\00", [58 x i8] zeroinitializer }, align 32
@enetc_psfp_parse_clsflower.__msg.23 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"fsl_enetc:fsl_enetc_vf: Only full mask is supported for VLAN id\00", [32 x i8] zeroinitializer }, align 32
@enetc_psfp_parse_clsflower.__msg.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fsl_enetc:fsl_enetc_vf: No Stream Gate resource!\00", [47 x i8] zeroinitializer }, align 32
@enetc_psfp_parse_clsflower.__msg.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fsl_enetc:fsl_enetc_vf: No Stream Gate resource!\00", [47 x i8] zeroinitializer }, align 32
@enetc_psfp_parse_clsflower.__msg.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"fsl_enetc:fsl_enetc_vf: QoS offload not support packets per second\00", [61 x i8] zeroinitializer }, align 32
@enetc_psfp_parse_clsflower.__msg.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"fsl_enetc:fsl_enetc_vf: No Stream Filter resource!\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@enetc_psfp_destroy_clsflower.__msg = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"fsl_enetc:fsl_enetc_vf: No Stream identify resource!\00", [43 x i8] zeroinitializer }, align 32
@__const.enetc_streamcounter_hw_get.cbd = private unnamed_addr constant %struct.enetc_cbd { %union.anon.147 zeroinitializer, i16 0, i16 0, i8 2, i8 0, i8 0, i8 0 }, align 4
@switch.table.enetc_setup_tc_block_cb = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 3], [36 x i8] zeroinitializer }, align 32
@switch.table.enetc_setup_tc_psfp = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 3], [36 x i8] zeroinitializer }, align 32
@switch.table.enetc_setup_tc_psfp.29 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 3], [36 x i8] zeroinitializer }, align 32
@switch.table.enetc_streamid_hw_set = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 3], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 100, i64 1000, i64 2500]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 22, i64 28]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 6]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 207, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 232, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 241, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"epsfp\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 452, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1542, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"enetc_block_cb_list\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 456, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 116, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 326, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1359, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1368, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1375, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1379, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"enetc_act_fwd\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 432, i32 27 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1094, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1121, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1129, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1140, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1149, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1161, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1169, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1186, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1192, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1234, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1269, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.136 = private constant [52 x i8] c"../drivers/net/ethernet/freescale/enetc/enetc_qos.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1394, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [37 x i8] c"switch.table.enetc_setup_tc_block_cb\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [33 x i8] c"switch.table.enetc_setup_tc_psfp\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [36 x i8] c"switch.table.enetc_setup_tc_psfp.29\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [35 x i8] c"switch.table.enetc_streamid_hw_set\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @enetc_setup_tc_cbs._entry, ptr @enetc_setup_tc_cbs._entry.5, ptr @enetc_setup_tc_cbs._entry.8, ptr @enetc_setup_tc_cbs._entry_ptr, ptr @enetc_setup_tc_cbs._entry_ptr.10, ptr @enetc_setup_tc_cbs._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @epsfp, ptr @enetc_psfp_init.__key, ptr @.str.11, ptr @enetc_block_cb_list, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @enetc_config_clsflower.__msg, ptr @enetc_config_clsflower.__msg.15, ptr @enetc_config_clsflower.__msg.16, ptr @enetc_config_clsflower.__msg.17, ptr @enetc_act_fwd, ptr @enetc_psfp_parse_clsflower.__msg, ptr @enetc_psfp_parse_clsflower.__msg.18, ptr @enetc_psfp_parse_clsflower.__msg.19, ptr @enetc_psfp_parse_clsflower.__msg.20, ptr @enetc_psfp_parse_clsflower.__msg.21, ptr @enetc_psfp_parse_clsflower.__msg.22, ptr @enetc_psfp_parse_clsflower.__msg.23, ptr @enetc_psfp_parse_clsflower.__msg.24, ptr @enetc_psfp_parse_clsflower.__msg.25, ptr @enetc_psfp_parse_clsflower.__msg.26, ptr @enetc_psfp_parse_clsflower.__msg.27, ptr @enetc_psfp_destroy_clsflower.__msg, ptr @switch.table.enetc_setup_tc_block_cb, ptr @switch.table.enetc_setup_tc_psfp, ptr @switch.table.enetc_setup_tc_psfp.29, ptr @switch.table.enetc_streamid_hw_set], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_setup_tc_cbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_setup_tc_cbs._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_setup_tc_cbs._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epsfp to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_psfp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_config_clsflower.__msg to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_config_clsflower.__msg.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_config_clsflower.__msg.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_config_clsflower.__msg.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_act_fwd to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_psfp_parse_clsflower.__msg to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_psfp_parse_clsflower.__msg.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_psfp_parse_clsflower.__msg.19 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_psfp_parse_clsflower.__msg.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_psfp_parse_clsflower.__msg.21 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_psfp_parse_clsflower.__msg.22 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_psfp_parse_clsflower.__msg.23 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_psfp_parse_clsflower.__msg.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_psfp_parse_clsflower.__msg.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_psfp_parse_clsflower.__msg.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_psfp_parse_clsflower.__msg.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_psfp_destroy_clsflower.__msg to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.enetc_setup_tc_block_cb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.enetc_setup_tc_psfp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.enetc_setup_tc_psfp.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.enetc_streamid_hw_set to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enetc_sched_speed_set(ptr nocapture noundef %priv, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %speed1 = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %speed)
  %cmp = icmp eq i32 %1, %speed
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %speed, label %sw.default [
    i32 1000, label %if.end.sw.epilog_crit_edge
    i32 2500, label %sw.bb2
    i32 100, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %if.end.sw.epilog_crit_edge
  %pspeed.0 = phi i32 [ 0, %sw.default ], [ 256, %sw.bb3 ], [ 1024, %sw.bb2 ], [ 512, %if.end.sw.epilog_crit_edge ]
  %3 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %speed, ptr %speed1, align 4
  %si = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %si, align 4
  %port = getelementptr inbounds %struct.enetc_si, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %9 = and i32 %8, -983041
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %or = or i32 %10, %pspeed.0
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %11) #8, !srcloc !77
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_setup_tc_taprio(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %type_data) local_unnamed_addr #0 align 64 {
entry:
  %cbd.i = alloca %struct.enetc_cbd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %num_tx_rings = getelementptr i8, ptr %ndev, i32 2330
  %0 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tx_rings, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp80.not = icmp eq i16 %1, 0
  br i1 %cmp80.not, label %entry.for.end15_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond2.preheader, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond2.preheader:                              ; preds = %for.cond
  %2 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %2)
  %.pr = load i16, ptr %num_tx_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp583.not = icmp eq i16 %.pr, 0
  br i1 %cmp583.not, label %for.cond2.preheader.for.end15_crit_edge, label %for.body7.lr.ph

for.cond2.preheader.for.end15_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.body7.lr.ph:                                  ; preds = %for.cond2.preheader
  %si = getelementptr i8, ptr %ndev, i32 2312
  br label %for.body7

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.081 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.081
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tsd_enable = getelementptr inbounds %struct.enetc_bdr, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %tsd_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tsd_enable, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.lr.ph
  %i.184 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc14, %for.body7.for.body7_crit_edge ]
  %7 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %si, align 4
  %hw = getelementptr inbounds %struct.enetc_si, ptr %8, i32 0, i32 1
  %arrayidx9 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.184
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9, align 4
  %index = getelementptr inbounds %struct.enetc_bdr, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %index, align 16
  %conv10 = zext i16 %12 to i32
  %13 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type_data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %mul.i = shl nuw nsw i32 %conv10, 9
  %add.i = add nuw nsw i32 %mul.i, 32768
  %add.ptr.i67 = getelementptr i8, ptr %16, i32 %add.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %18 = and i32 %17, -117440513
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %i.1.op = and i32 %i.184, 7
  %and2.i = select i1 %tobool12.not, i32 0, i32 %i.1.op
  %or.i = or i32 %19, %and2.i
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr7.i = getelementptr i8, ptr %21, i32 %add.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %22) #8, !srcloc !77
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %inc14 = add nuw nsw i32 %i.184, 1
  %23 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_tx_rings, align 2
  %conv4 = zext i16 %24 to i32
  %cmp5 = icmp ult i32 %inc14, %conv4
  br i1 %cmp5, label %for.body7.for.body7_crit_edge, label %for.body7.for.end15_crit_edge

for.body7.for.end15_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

for.end15:                                        ; preds = %for.body7.for.end15_crit_edge, %for.cond2.preheader.for.end15_crit_edge, %entry.for.end15_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd.i) #8
  %25 = call ptr @memset(ptr %cbd.i, i32 0, i32 32)
  %num_entries.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 4
  %26 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_entries.i, align 8
  %si.i = getelementptr i8, ptr %ndev, i32 2312
  %28 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %si.i, align 4
  %hw.i = getelementptr inbounds %struct.enetc_si, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw.i, align 4
  %add.ptr.i133.i = getelementptr i8, ptr %31, i32 72200
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133.i) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %33 = and i32 %32, -65536
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %34)
  %cmp.i = icmp ugt i32 %27, %34
  br i1 %cmp.i, label %for.end15.enetc_setup_taprio.exit.thread90_crit_edge, label %if.end.i

for.end15.enetc_setup_taprio.exit.thread90_crit_edge: ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_setup_taprio.exit.thread90

if.end.i:                                         ; preds = %for.end15
  %35 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_entries.i, align 8
  %conv4.i = trunc i32 %36 to i16
  %37 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %si.i, align 4
  %hw6.i = getelementptr inbounds %struct.enetc_si, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %hw6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw6.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %40, i32 72192
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #8, !srcloc !74
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %43 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %type_data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i, label %enetc_setup_taprio.exit.thread, label %if.end13.i

enetc_setup_taprio.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %si.i, align 4
  %hw10.i = getelementptr inbounds %struct.enetc_si, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %hw10.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw10.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %48, i32 72192
  %and.i = and i32 %42, 2147483647
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %49 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %49) #8, !srcloc !77
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i) #8
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i
  %cycle_time.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 2
  %50 = ptrtoint ptr %cycle_time.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %cycle_time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %51)
  %cmp14.i = icmp ugt i64 %51, 4294967295
  br i1 %cmp14.i, label %if.end13.i.enetc_setup_taprio.exit.thread90_crit_edge, label %lor.lhs.false.i

if.end13.i.enetc_setup_taprio.exit.thread90_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_setup_taprio.exit.thread90

lor.lhs.false.i:                                  ; preds = %if.end13.i
  %cycle_time_extension.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 3
  %52 = ptrtoint ptr %cycle_time_extension.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %cycle_time_extension.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %53)
  %cmp16.i = icmp ugt i64 %53, 4294967295
  br i1 %cmp16.i, label %lor.lhs.false.i.enetc_setup_taprio.exit.thread90_crit_edge, label %if.end19.i

lor.lhs.false.i.enetc_setup_taprio.exit.thread90_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_setup_taprio.exit.thread90

if.end19.i:                                       ; preds = %lor.lhs.false.i
  %conv20.i = and i32 %36, 65535
  %54 = shl nuw nsw i32 %conv20.i, 3
  %spec.select.i141.i = add nuw nsw i32 %54, 16
  %conv22.i = trunc i32 %spec.select.i141.i to i16
  %conv23.i = and i32 %spec.select.i141.i, 65528
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv23.i, i32 noundef 3521) #11
  %tobool25.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool25.not.i, label %if.end19.i.enetc_setup_taprio.exit.thread90_crit_edge, label %if.end27.i

if.end19.i.enetc_setup_taprio.exit.thread90_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_setup_taprio.exit.thread90

if.end27.i:                                       ; preds = %if.end19.i
  %55 = getelementptr inbounds %struct.anon.148, ptr %cbd.i, i32 0, i32 1
  %add.ptr28.i = getelementptr %struct.tgs_gcl_data, ptr %call9.i.i.i, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %55, align 4
  %57 = tail call i16 @llvm.bswap.i16(i16 %conv4.i) #8
  %acl_len.i = getelementptr inbounds %struct.anon.148, ptr %cbd.i, i32 0, i32 1, i32 0, i32 3
  %58 = ptrtoint ptr %acl_len.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %acl_len.i, align 4
  %base_time.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 1
  %59 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %base_time.i, align 8
  %conv30.i = trunc i64 %60 to i32
  %61 = tail call i32 @llvm.bswap.i32(i32 %conv30.i) #8
  %62 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %call9.i.i.i, align 128
  %63 = lshr i64 %60, 32
  %conv33.i = trunc i64 %63 to i32
  %64 = tail call i32 @llvm.bswap.i32(i32 %conv33.i) #8
  %bth.i = getelementptr inbounds %struct.tgs_gcl_data, ptr %call9.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %bth.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %bth.i, align 4
  %66 = ptrtoint ptr %cycle_time.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %cycle_time.i, align 8
  %conv35.i = trunc i64 %67 to i32
  %68 = tail call i32 @llvm.bswap.i32(i32 %conv35.i) #8
  %ct.i = getelementptr inbounds %struct.tgs_gcl_data, ptr %call9.i.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %ct.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %ct.i, align 8
  %70 = ptrtoint ptr %cycle_time_extension.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %cycle_time_extension.i, align 8
  %conv37.i = trunc i64 %71 to i32
  %72 = tail call i32 @llvm.bswap.i32(i32 %conv37.i) #8
  %cte.i = getelementptr inbounds %struct.tgs_gcl_data, ptr %call9.i.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %cte.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %cte.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv20.i)
  %cmp39142.not.i = icmp eq i32 %conv20.i, 0
  br i1 %cmp39142.not.i, label %if.end27.i.for.end.i_crit_edge, label %if.end27.i.for.body.i_crit_edge

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  br label %for.body.i

if.end27.i.for.end.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end27.i.for.body.i_crit_edge
  %i.0143.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end27.i.for.body.i_crit_edge ]
  %add.ptr41.i = getelementptr %struct.gce, ptr %add.ptr28.i, i32 %i.0143.i
  %gate_mask.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 5, i32 %i.0143.i, i32 1
  %74 = ptrtoint ptr %gate_mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %gate_mask.i, align 4
  %conv42.i = trunc i32 %75 to i8
  %gate.i = getelementptr inbounds %struct.gce, ptr %add.ptr41.i, i32 0, i32 1
  %76 = ptrtoint ptr %gate.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv42.i, ptr %gate.i, align 4
  %interval.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 5, i32 %i.0143.i, i32 2
  %77 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %interval.i, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  %80 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %add.ptr41.i, align 8
  %inc.i = add nuw nsw i32 %i.0143.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv20.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end27.i.for.end.i_crit_edge
  %81 = tail call i16 @llvm.bswap.i16(i16 %conv22.i) #8
  %length.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i, i32 0, i32 2
  %82 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %length.i, align 2
  %status_flags.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i, i32 0, i32 6
  %83 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %si.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i.i) #8
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %for.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44, i32 3
  %87 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %88, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i134.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i134.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i134.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %90, %if.end.i.i134.i ], [ %88, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef nonnull %call9.i.i.i, i32 noundef %conv23.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %91 = load ptr, ptr @mem_map, align 4
  %92 = ptrtoint ptr %call9.i.i.i to i32
  %sub.i.i = add i32 %92, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i135.i = getelementptr %struct.page, ptr %91, i32 %shr.i.i
  %and.i.i = and i32 %92, 3968
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i135.i, i32 noundef %and.i.i, i32 noundef %conv23.i, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i136.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %93 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %si.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %dev48.i = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev48.i, i32 noundef %retval.0.i136.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i136.i)
  %cmp.i.i = icmp eq i32 %retval.0.i136.i, -1
  br i1 %cmp.i.i, label %if.then51.i, label %if.end54.i

if.then51.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %si.i, align 4
  %ndev53.i = getelementptr inbounds %struct.enetc_si, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %ndev53.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ndev53.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %100, ptr noundef nonnull @.str.12) #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #8
  br label %enetc_setup_taprio.exit.thread90

if.end54.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %101 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i136.i) #8
  %102 = ptrtoint ptr %cbd.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %cbd.i, align 4
  %arrayidx60.i = getelementptr inbounds [2 x i32], ptr %cbd.i, i32 0, i32 1
  %103 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %arrayidx60.i, align 4
  %cls.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i, i32 0, i32 4
  %104 = ptrtoint ptr %cls.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 5, ptr %cls.i, align 1
  %105 = ptrtoint ptr %status_flags.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %status_flags.i, align 1
  %106 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %si.i, align 4
  %hw63.i = getelementptr inbounds %struct.enetc_si, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %hw63.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw63.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %109, i32 72192
  %or.i69 = or i32 %42, -2147483648
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %110 = tail call i32 @llvm.bswap.i32(i32 %or.i69) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %110) #8, !srcloc !77
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %111 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %si.i, align 4
  %call67.i = call i32 @enetc_send_cmd(ptr noundef %112, ptr noundef nonnull %cbd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end54.i.enetc_setup_taprio.exit_crit_edge, label %if.then69.i

if.end54.i.enetc_setup_taprio.exit_crit_edge:     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_setup_taprio.exit

if.then69.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %si.i, align 4
  %hw71.i = getelementptr inbounds %struct.enetc_si, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %hw71.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw71.i, align 4
  %add.ptr73.i = getelementptr i8, ptr %116, i32 72192
  %and74.i = and i32 %42, 2147483647
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @arm_heavy_mb() #8
  %117 = call i32 @llvm.bswap.i32(i32 %and74.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 %117) #8, !srcloc !77
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  br label %enetc_setup_taprio.exit

enetc_setup_taprio.exit.thread90:                 ; preds = %if.then51.i, %if.end19.i.enetc_setup_taprio.exit.thread90_crit_edge, %lor.lhs.false.i.enetc_setup_taprio.exit.thread90_crit_edge, %if.end13.i.enetc_setup_taprio.exit.thread90_crit_edge, %for.end15.enetc_setup_taprio.exit.thread90_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end19.i.enetc_setup_taprio.exit.thread90_crit_edge ], [ -22, %if.end13.i.enetc_setup_taprio.exit.thread90_crit_edge ], [ -22, %lor.lhs.false.i.enetc_setup_taprio.exit.thread90_crit_edge ], [ -22, %for.end15.enetc_setup_taprio.exit.thread90_crit_edge ], [ -12, %if.then51.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i) #8
  br label %for.cond19.preheader

enetc_setup_taprio.exit:                          ; preds = %if.then69.i, %if.end54.i.enetc_setup_taprio.exit_crit_edge
  %118 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %si.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %dev78.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  call void @dma_unmap_page_attrs(ptr noundef %dev78.i, i32 noundef %retval.0.i136.i, i32 noundef %conv23.i, i32 noundef 1, i32 noundef 0) #8
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool17.not = icmp eq i32 %call67.i, 0
  br i1 %tobool17.not, label %enetc_setup_taprio.exit.cleanup_crit_edge, label %enetc_setup_taprio.exit.for.cond19.preheader_crit_edge

enetc_setup_taprio.exit.for.cond19.preheader_crit_edge: ; preds = %enetc_setup_taprio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond19.preheader

enetc_setup_taprio.exit.cleanup_crit_edge:        ; preds = %enetc_setup_taprio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond19.preheader:                             ; preds = %enetc_setup_taprio.exit.for.cond19.preheader_crit_edge, %enetc_setup_taprio.exit.thread90
  %retval.0.i93 = phi i32 [ %retval.0.i.ph, %enetc_setup_taprio.exit.thread90 ], [ %call67.i, %enetc_setup_taprio.exit.for.cond19.preheader_crit_edge ]
  %122 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %num_tx_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %cmp2286.not = icmp eq i16 %123, 0
  br i1 %cmp2286.not, label %for.cond19.preheader.cleanup_crit_edge, label %for.cond19.preheader.for.body24_crit_edge

for.cond19.preheader.for.body24_crit_edge:        ; preds = %for.cond19.preheader
  br label %for.body24

for.cond19.preheader.cleanup_crit_edge:           ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.cond19.preheader.for.body24_crit_edge
  %i.287 = phi i32 [ %inc39, %for.body24.for.body24_crit_edge ], [ 0, %for.cond19.preheader.for.body24_crit_edge ]
  %124 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %si.i, align 4
  %hw26 = getelementptr inbounds %struct.enetc_si, ptr %125, i32 0, i32 1
  %arrayidx28 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.287
  %126 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx28, align 4
  %index29 = getelementptr inbounds %struct.enetc_bdr, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %index29 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %index29, align 16
  %conv30 = zext i16 %129 to i32
  %130 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %type_data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool33.not = icmp eq i8 %131, 0
  %132 = ptrtoint ptr %hw26 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hw26, align 4
  %mul.i70 = shl nuw nsw i32 %conv30, 9
  %add.i71 = add nuw nsw i32 %mul.i70, 32768
  %add.ptr.i72 = getelementptr i8, ptr %133, i32 %add.i71
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #8, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %135 = and i32 %134, -117440513
  %136 = call i32 @llvm.bswap.i32(i32 %135) #8
  %i.2.op = and i32 %i.287, 7
  %and2.i73 = select i1 %tobool33.not, i32 %i.2.op, i32 0
  %or.i74 = or i32 %136, %and2.i73
  %137 = ptrtoint ptr %hw26 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw26, align 4
  %add.ptr7.i75 = getelementptr i8, ptr %138, i32 %add.i71
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @arm_heavy_mb() #8
  %139 = call i32 @llvm.bswap.i32(i32 %or.i74) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i75, i32 %139) #8, !srcloc !77
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %inc39 = add nuw nsw i32 %i.287, 1
  %140 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %num_tx_rings, align 2
  %conv21 = zext i16 %141 to i32
  %cmp22 = icmp ult i32 %inc39, %conv21
  br i1 %cmp22, label %for.body24.for.body24_crit_edge, label %for.body24.cleanup_crit_edge

for.body24.cleanup_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24

cleanup:                                          ; preds = %for.body24.cleanup_crit_edge, %for.cond19.preheader.cleanup_crit_edge, %enetc_setup_taprio.exit.cleanup_crit_edge, %enetc_setup_taprio.exit.thread, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %enetc_setup_taprio.exit.cleanup_crit_edge ], [ 0, %enetc_setup_taprio.exit.thread ], [ %retval.0.i93, %for.cond19.preheader.cleanup_crit_edge ], [ %retval.0.i93, %for.body24.cleanup_crit_edge ], [ -16, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_setup_tc_cbs(ptr noundef %ndev, ptr nocapture noundef readonly %type_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr i8, ptr %ndev, i32 2344
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 140
  %2 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_tc.i, align 4
  %si2 = getelementptr i8, ptr %ndev, i32 2312
  %4 = ptrtoint ptr %si2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %si2, align 4
  %queue = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 1
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue, align 4
  %8 = and i16 %3, 255
  %conv4 = zext i16 %8 to i32
  %sub = add nuw nsw i32 %conv4, 15
  %and.i = and i32 %sub, 15
  %arrayidx.i = getelementptr %struct.net_device, ptr %ndev, i32 0, i32 142, i32 %and.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i222 = zext i8 %10 to i32
  %sub8 = add nuw nsw i32 %conv4, 14
  %and.i223 = and i32 %sub8, 15
  %arrayidx.i224 = getelementptr %struct.net_device, ptr %ndev, i32 0, i32 142, i32 %and.i223
  %11 = ptrtoint ptr %arrayidx.i224 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i224, align 1
  %conv.i225 = zext i8 %12 to i32
  %conv11 = and i32 %7, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %conv.i222)
  %cmp.not = icmp eq i32 %conv11, %conv.i222
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %conv.i225)
  %cmp16.not = icmp eq i32 %conv11, %conv.i225
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp16.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.then18, label %if.end38

if.then18:                                        ; preds = %if.end
  br i1 %cmp.not, label %land.lhs.true23, label %if.then18.if.end29_crit_edge

if.then18.if.end29_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true23:                                  ; preds = %if.then18
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %5, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port.i, align 4
  %mul.i = shl nuw nsw i32 %conv.i225, 3
  %add.i = add nuw nsw i32 %mul.i, 4368
  %add.ptr.i227 = getelementptr i8, ptr %16, i32 %add.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %.mask368 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask368)
  %tobool25.not = icmp eq i32 %.mask368, 0
  br i1 %tobool25.not, label %land.lhs.true23.if.end29_crit_edge, label %do.end

land.lhs.true23.if.end29_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end:                                           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv.i225, i32 noundef %conv.i222) #12
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true23.if.end29_crit_edge, %if.then18.if.end29_crit_edge
  %port = getelementptr inbounds %struct.enetc_si, ptr %5, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port, align 4
  %mul = shl nuw nsw i32 %conv11, 3
  %add = add nuw nsw i32 %mul, 4372
  %add.ptr = getelementptr i8, ptr %19, i32 %add
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !77
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port, align 4
  %add36 = add nuw nsw i32 %mul, 4368
  %add.ptr37 = getelementptr i8, ptr %21, i32 %add36
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 0) #8, !srcloc !77
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end
  %idleslope = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 4
  %22 = ptrtoint ptr %idleslope to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idleslope, align 4
  %sendslope = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 5
  %24 = ptrtoint ptr %sendslope to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sendslope, align 4
  %sub39 = sub i32 %23, %25
  %mul40 = mul i32 %1, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub39, i32 %mul40)
  %cmp41.not = icmp ne i32 %sub39, %mul40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp44 = icmp slt i32 %23, 0
  %or.cond220 = or i1 %cmp44, %cmp41.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp48 = icmp sgt i32 %25, 0
  %or.cond221 = select i1 %or.cond220, i1 true, i1 %cmp48
  br i1 %or.cond221, label %if.end38.cleanup_crit_edge, label %if.end51

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.end38
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %26 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mtu, align 4
  %add53 = add i32 %27, 22
  %mul55 = mul i32 %1, 10
  %div = udiv i32 %23, %mul55
  br i1 %cmp16.not, label %if.then61, label %if.end51.if.end77_crit_edge

if.end51.if.end77_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then61:                                        ; preds = %if.end51
  %port.i229 = getelementptr inbounds %struct.enetc_si, ptr %5, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %port.i229 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port.i229, align 4
  %mul.i231 = shl nuw nsw i32 %conv.i222, 3
  %add.i232 = add nuw nsw i32 %mul.i231, 4368
  %add.ptr.i233 = getelementptr i8, ptr %29, i32 %add.i232
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %.mask = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool64.not = icmp eq i32 %.mask, 0
  br i1 %tobool64.not, label %do.end68, label %if.end72

do.end68:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  %dev69 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69, ptr noundef nonnull @.str.6, i32 noundef %conv.i222, i32 noundef %conv.i225) #12
  br label %cleanup

if.end72:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %port.i229 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port.i229, align 4
  %add.ptr.i239 = getelementptr i8, ptr %32, i32 %add.i232
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i239) #8, !srcloc !74
  %34 = lshr i32 %33, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %conv1.i = and i32 %34, 127
  br label %if.end77

if.end77:                                         ; preds = %if.end72, %if.end51.if.end77_crit_edge
  %bw_sum.0 = phi i32 [ %conv1.i, %if.end72 ], [ 0, %if.end51.if.end77_crit_edge ]
  %conv78 = and i32 %div, 255
  %add79 = add nuw nsw i32 %bw_sum.0, %conv78
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %add79)
  %cmp80 = icmp ugt i32 %add79, 99
  br i1 %cmp80, label %do.end85, label %if.end87

do.end85:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %dev86 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end87:                                         ; preds = %if.end77
  %port89 = getelementptr inbounds %struct.enetc_si, ptr %5, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %port89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port89, align 4
  %mul91 = shl nuw nsw i32 %conv11, 2
  %add92 = add nuw nsw i32 %mul91, 8224
  %add.ptr93 = getelementptr i8, ptr %36, i32 %add92
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %mul100 = shl i32 %add53, 3
  br i1 %cmp.not, label %if.then99, label %if.else

if.then99:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = mul i32 %1, 1000000
  br label %if.end128

if.else:                                          ; preds = %if.end87
  %38 = ptrtoint ptr %port89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port89, align 4
  %mul105 = shl nuw nsw i32 %conv.i222, 2
  %add106 = add nuw nsw i32 %mul105, 8224
  %add.ptr107 = getelementptr i8, ptr %39, i32 %add106
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #8, !srcloc !74
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %42 = ptrtoint ptr %port89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port89, align 4
  %mul.i242 = shl nuw nsw i32 %conv.i222, 3
  %add.i243 = add nuw nsw i32 %mul.i242, 4368
  %add.ptr.i244 = getelementptr i8, ptr %43, i32 %add.i243
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i244) #8, !srcloc !74
  %45 = lshr i32 %44, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %conv1.i245 = and i32 %45, 127
  %mul113 = mul i32 %1, 10000
  %mul115 = mul i32 %mul113, %conv1.i245
  %mul118 = mul i32 %1, 1000000
  %46 = add i32 %41, %add53
  %add120 = shl i32 %46, 3
  %conv121 = zext i32 %mul115 to i64
  %conv122 = zext i32 %mul100 to i64
  %mul123 = mul nuw i64 %conv121, %conv122
  %sub124 = sub i32 %mul118, %mul115
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul123)
  %cmp164.i.i = icmp ult i64 %mul123, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !78

if.then168.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %mul123 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %sub124
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %47 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub124, i64 %mul123) #13, !srcloc !79
  %asmresult1.i.i.i = extractvalue { i64, i64 } %47, 1
  %extract.t362 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t362, %if.else174.i.i ]
  %add127 = add i32 %dividend.addr.0.i.i.off0, %add120
  br label %if.end128

if.end128:                                        ; preds = %div_u64.exit, %if.then99
  %mul135.pre-phi = phi i32 [ %mul118, %div_u64.exit ], [ %.pre, %if.then99 ]
  %max_interference_size.0 = phi i32 [ %add127, %div_u64.exit ], [ %mul100, %if.then99 ]
  %mul130 = mul i32 %max_interference_size.0, %conv78
  %div131 = udiv i32 %mul130, 100
  %conv132 = zext i32 %div131 to i64
  %mul133 = mul nuw nsw i64 %conv132, 40000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul133)
  %cmp164.i.i350 = icmp ult i64 %mul133, 4294967296
  br i1 %cmp164.i.i350, label %if.then168.i.i355, label %if.else174.i.i357, !prof !78

if.then168.i.i355:                                ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i352 = trunc i64 %mul133 to i32
  %div172.i.i353 = udiv i32 %conv169.i.i352, %mul135.pre-phi
  br label %div_u64.exit359

if.else174.i.i357:                                ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul135.pre-phi, i64 %mul133) #13, !srcloc !79
  %asmresult1.i.i.i356 = extractvalue { i64, i64 } %48, 1
  %extract.t366 = trunc i64 %asmresult1.i.i.i356 to i32
  br label %div_u64.exit359

div_u64.exit359:                                  ; preds = %if.else174.i.i357, %if.then168.i.i355
  %dividend.addr.0.i.i358.off0 = phi i32 [ %div172.i.i353, %if.then168.i.i355 ], [ %extract.t366, %if.else174.i.i357 ]
  %49 = ptrtoint ptr %port89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port89, align 4
  %mul142 = shl nuw nsw i32 %conv11, 3
  %add143 = add nuw nsw i32 %mul142, 4372
  %add.ptr144 = getelementptr i8, ptr %50, i32 %add143
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %51 = tail call i32 @llvm.bswap.i32(i32 %dividend.addr.0.i.i358.off0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %51) #8, !srcloc !77
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %52 = ptrtoint ptr %port89 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port89, align 4
  %add149 = add nuw nsw i32 %mul142, 4368
  %add.ptr150 = getelementptr i8, ptr %53, i32 %add149
  %or = or i32 %conv78, -2147483648
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %54 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %54) #8, !srcloc !77
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %div_u64.exit359, %do.end85, %do.end68, %if.end38.cleanup_crit_edge, %if.end29, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end85 ], [ 0, %div_u64.exit359 ], [ -22, %do.end68 ], [ -22, %do.end ], [ 0, %if.end29 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_setup_tc_txtime(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %type_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 140
  %0 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tc.i, align 4
  %conv = trunc i16 %1 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.tc_etf_qopt_offload, ptr %type_data, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %num_tx_rings = getelementptr i8, ptr %ndev, i32 2330
  %4 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_tx_rings, align 2
  %conv3 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv3)
  %cmp4.not = icmp ult i32 %3, %conv3
  br i1 %cmp4.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %features = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features, align 16
  %and = and i64 %7, 26
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool8.not = icmp eq i64 %and, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %si = getelementptr i8, ptr %ndev, i32 2312
  %8 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %si, align 4
  %hw = getelementptr inbounds %struct.enetc_si, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 72192
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %.mask = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool13.not = icmp eq i32 %.mask, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type_data, align 4
  %arrayidx = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %3
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tsd_enable = getelementptr inbounds %struct.enetc_bdr, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %tsd_enable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %tsd_enable, align 16
  %18 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %si, align 4
  %port = getelementptr inbounds %struct.enetc_si, ptr %19, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port, align 4
  %mul = shl i32 %3, 2
  %add = add i32 %mul, 4624
  %add.ptr18 = getelementptr i8, ptr %21, i32 %add
  %22 = load i8, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21.not = icmp eq i8 %22, 0
  %cond = select i1 %tobool21.not, i32 0, i32 128
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %cond) #8, !srcloc !77
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.end7.cleanup_crit_edge ], [ -16, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_setup_tc_block_cb(i32 noundef %type, ptr nocapture noundef %type_data, ptr nocapture noundef readonly %cb_priv) #0 align 64 {
entry:
  %cbd.i90.i = alloca %struct.enetc_cbd, align 4
  %cbd.i.i = alloca %struct.enetc_cbd, align 4
  %cbd.i47.i.i = alloca %struct.enetc_cbd, align 4
  %cbd.i42.i.i = alloca %struct.enetc_cbd, align 4
  %cbd.i.i44.i = alloca %struct.enetc_cbd, align 4
  %cbd.i.i.i = alloca %struct.enetc_cbd, align 4
  %match.i.i.i = alloca %struct.flow_match_eth_addrs, align 4
  %match107.i.i.i = alloca %struct.flow_match_vlan, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %features.i = getelementptr inbounds %struct.net_device, ptr %cb_priv, i32 0, i32 23
  %0 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features.i, align 16
  %and.i = and i64 %1, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i = icmp ne i64 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cond = icmp eq i32 %type, 2
  %or.cond = and i1 %cond, %tobool.i
  br i1 %or.cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %cb_priv, i32 2304
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 1
  %2 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %command.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %3, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  %rule.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 3
  %5 = ptrtoint ptr %rule.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rule.i.i.i, align 8
  %extack1.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %7 = ptrtoint ptr %extack1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %extack1.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %action3.i.i = getelementptr inbounds %struct.flow_rule, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %action3.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %action3.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i, label %do.body.i.i, label %for.body.preheader.i.i

do.body.i.i:                                      ; preds = %sw.bb.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_config_clsflower.__msg) #8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then6.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @enetc_config_clsflower.__msg, ptr %8, align 4
  br label %cleanup

for.body.preheader.i.i:                           ; preds = %sw.bb.i
  %entries.i.i = getelementptr inbounds %struct.flow_rule, ptr %6, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.093.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %actions.092.i.i = phi i64 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %entry4.091.i.i = phi ptr [ %arrayidx9.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %entries.i.i, %for.body.preheader.i.i ]
  %14 = ptrtoint ptr %entry4.091.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %entry4.091.i.i, align 8
  %shl.i.i = shl nuw i32 1, %15
  %conv.i.i = zext i32 %shl.i.i to i64
  %or.i.i = or i64 %actions.092.i.i, %conv.i.i
  %inc.i.i = add nuw i32 %i.093.i.i, 1
  %arrayidx9.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i, i32 0, i32 %inc.i.i
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %12
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %10, align 4
  %conv.i.i.i = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %or.i.i)
  %cmp1.i.i.i = icmp ne i64 %or.i.i, 268435456
  %and.i.i.i = and i64 %conv.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  %or.cond33 = select i1 %cmp1.i.i.i, i1 true, i1 %tobool.not.i.i.i
  br i1 %or.cond33, label %for.inc.i.i.i, label %for.end.i.i.if.end21.i.i_crit_edge

for.end.i.i.if.end21.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

for.inc.i.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 272629760, i64 %or.i.i)
  %cmp1.1.i.i.i = icmp ne i64 %or.i.i, 272629760
  %and.1.i.i.i = and i64 %conv.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1.i.i.i)
  %tobool.not.1.i.i.i = icmp eq i64 %and.1.i.i.i, 0
  %or.cond34 = select i1 %cmp1.1.i.i.i, i1 true, i1 %tobool.not.1.i.i.i
  br i1 %or.cond34, label %for.inc.1.i.i.i, label %for.inc.i.i.i.if.end21.i.i_crit_edge

for.inc.i.i.i.if.end21.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_config_clsflower.__msg.15) #8
  %tobool15.not.i.i = icmp eq ptr %8, null
  br i1 %tobool15.not.i.i, label %for.inc.1.i.i.i.cleanup_crit_edge, label %if.then16.i.i

for.inc.1.i.i.i.cleanup_crit_edge:                ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16.i.i:                                    ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @enetc_config_clsflower.__msg.15, ptr %8, align 4
  br label %cleanup

if.end21.i.i:                                     ; preds = %for.inc.i.i.i.if.end21.i.i_crit_edge, %for.end.i.i.if.end21.i.i_crit_edge
  %retval.0.i.ph.i.i = phi ptr [ @enetc_act_fwd, %for.end.i.i.if.end21.i.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.actions_fwd], ptr @enetc_act_fwd, i32 0, i32 1), %for.inc.i.i.i.if.end21.i.i_crit_edge ]
  %output.i.i = getelementptr inbounds %struct.actions_fwd, ptr %retval.0.i.ph.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %output.i.i, align 8
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool22.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool22.not.i.i, label %do.body36.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end21.i.i
  %21 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type_data, align 8
  %psfp_cap.i.i.i = getelementptr i8, ptr %cb_priv, i32 2484
  %23 = ptrtoint ptr %psfp_cap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %psfp_cap.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.not.i.i.i = icmp ult i32 %22, %24
  br i1 %cmp.not.i.i.i, label %if.then23.i.i.for.body.i.i.i_crit_edge, label %do.body.i.i.i

if.then23.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.then23.i.i
  br label %for.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.then23.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_psfp_parse_clsflower.__msg) #8
  %tobool.not.i70.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i70.i.i, label %do.body27.thread.i.i, label %do.body27.thread83.i.i

do.body27.thread.i.i:                             ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_config_clsflower.__msg.16) #8
  br label %cleanup

do.body27.thread83.i.i:                           ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @enetc_psfp_parse_clsflower.__msg, ptr %8, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_config_clsflower.__msg.16) #8
  br label %if.then30.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i71.i.i.for.body.i.i.i_crit_edge, %if.then23.i.i.for.body.i.i.i_crit_edge
  %i.0666.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i71.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then23.i.i.for.body.i.i.i_crit_edge ]
  %entry2.0665.i.i.i = phi ptr [ %arrayidx17.i.i.i, %for.inc.i71.i.i.for.body.i.i.i_crit_edge ], [ %entries.i.i, %if.then23.i.i.for.body.i.i.i_crit_edge ]
  %entryp.0664.i.i.i = phi ptr [ %entryp.1.i.i.i, %for.inc.i71.i.i.for.body.i.i.i_crit_edge ], [ null, %if.then23.i.i.for.body.i.i.i_crit_edge ]
  %entryg.0663.i.i.i = phi ptr [ %entryg.1.i.i.i, %for.inc.i71.i.i.for.body.i.i.i_crit_edge ], [ null, %if.then23.i.i.for.body.i.i.i_crit_edge ]
  %26 = ptrtoint ptr %entry2.0665.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %entry2.0665.i.i.i, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %27, label %for.inc.fold.split.i.i.i [
    i32 28, label %for.body.i.i.i.for.inc.i71.i.i_crit_edge
    i32 22, label %if.then12.i.i.i
  ]

for.body.i.i.i.for.inc.i71.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i71.i.i

if.then12.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i71.i.i

for.inc.fold.split.i.i.i:                         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i71.i.i

for.inc.i71.i.i:                                  ; preds = %for.inc.fold.split.i.i.i, %if.then12.i.i.i, %for.body.i.i.i.for.inc.i71.i.i_crit_edge
  %entryg.1.i.i.i = phi ptr [ %entryg.0663.i.i.i, %if.then12.i.i.i ], [ %entry2.0665.i.i.i, %for.body.i.i.i.for.inc.i71.i.i_crit_edge ], [ %entryg.0663.i.i.i, %for.inc.fold.split.i.i.i ]
  %entryp.1.i.i.i = phi ptr [ %entry2.0665.i.i.i, %if.then12.i.i.i ], [ %entryp.0664.i.i.i, %for.body.i.i.i.for.inc.i71.i.i_crit_edge ], [ %entryp.0664.i.i.i, %for.inc.fold.split.i.i.i ]
  %inc.i.i.i = add nuw i32 %i.0666.i.i.i, 1
  %arrayidx17.i.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i, i32 0, i32 %inc.i.i.i
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %12
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.inc.i71.i.i.for.body.i.i.i_crit_edge

for.inc.i71.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc.i71.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i71.i.i
  %tobool18.not.i.i.i = icmp eq ptr %entryg.1.i.i.i, null
  br i1 %tobool18.not.i.i.i, label %for.end.i.i.i.do.body27.i.i_crit_edge, label %if.end20.i.i.i

for.end.i.i.i.do.body27.i.i_crit_edge:            ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.i.i

if.end20.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 88) #14
  %tobool22.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool22.not.i.i.i, label %if.end20.i.i.i.do.body27.i.i_crit_edge, label %if.end24.i.i.i

if.end20.i.i.i.do.body27.i.i_crit_edge:           ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.i.i

if.end24.i.i.i:                                   ; preds = %if.end20.i.i.i
  %30 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type_data, align 8
  %32 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %call7.i.i.i.i.i, align 8
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %6, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %and.i.i.i.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.i.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i.i, label %do.body96.i.i.i, label %if.then28.i.i.i

if.then28.i.i.i:                                  ; preds = %if.end24.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i.i.i) #8
  %37 = ptrtoint ptr %match.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i.i.i, align 4, !annotation !80
  %38 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %match.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %38, align 4, !annotation !80
  call void @flow_rule_match_eth_addrs(ptr noundef %6, ptr noundef nonnull %match.i.i.i) #8
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %38, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %41, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %45 to i32
  %or.i.i.i.i = or i32 %43, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then28.i.i.i.if.end67.i.i.i_crit_edge, label %land.lhs.true.i72.i.i

if.then28.i.i.i.if.end67.i.i.i_crit_edge:         ; preds = %if.then28.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i.i.i

land.lhs.true.i72.i.i:                            ; preds = %if.then28.i.i.i
  %src.i.i.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %src.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %src.i.i.i, align 4
  %add.ptr.i552.i.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %41, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %add.ptr.i552.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr.i552.i.i.i, align 2
  %conv.i553.i.i.i = zext i16 %49 to i32
  %or.i554.i.i.i = or i32 %47, %conv.i553.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i554.i.i.i)
  %cmp.i555.i.i.i = icmp eq i32 %or.i554.i.i.i, 0
  br i1 %cmp.i555.i.i.i, label %if.then47.i.i.i, label %do.body34.i.i.i

do.body34.i.i.i:                                  ; preds = %land.lhs.true.i72.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_psfp_parse_clsflower.__msg.18) #8
  %tobool36.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool36.not.i.i.i, label %do.body34.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.body34.i.i.i.cleanup.thread.sink.split.i.i.i_crit_edge

do.body34.i.i.i.cleanup.thread.sink.split.i.i.i_crit_edge: ; preds = %do.body34.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split.i.i.i

do.body34.i.i.i.cleanup.thread.i.i.i_crit_edge:   ; preds = %do.body34.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i

if.then47.i.i.i:                                  ; preds = %land.lhs.true.i72.i.i
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %41, align 2
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %41, i32 2
  %52 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %and9.i.i.i.i = and i16 %51, %45
  %and510.i.i.i.i = and i16 %and9.i.i.i.i, %53
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i.i.i)
  %cmp.i560.i.i.i = icmp eq i16 %and510.i.i.i.i, -1
  br i1 %cmp.i560.i.i.i, label %if.end61.i.i.i, label %do.body53.i.i.i

do.body53.i.i.i:                                  ; preds = %if.then47.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_psfp_parse_clsflower.__msg.19) #8
  %tobool55.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool55.not.i.i.i, label %do.body53.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.body53.i.i.i.cleanup.thread.sink.split.i.i.i_crit_edge

do.body53.i.i.i.cleanup.thread.sink.split.i.i.i_crit_edge: ; preds = %do.body53.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split.i.i.i

do.body53.i.i.i.cleanup.thread.i.i.i_crit_edge:   ; preds = %do.body53.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i

if.end61.i.i.i:                                   ; preds = %if.then47.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = getelementptr inbounds %struct.enetc_streamid, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %match.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %match.i.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %54, align 4
  %add.ptr.i561.i.i.i = getelementptr i8, ptr %56, i32 4
  %60 = ptrtoint ptr %add.ptr.i561.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr.i561.i.i.i, align 2
  %add.ptr1.i562.i.i.i = getelementptr %struct.enetc_streamid, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 0, i32 4
  %62 = ptrtoint ptr %add.ptr1.i562.i.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %add.ptr1.i562.i.i.i, align 8
  %filtertype.i.i.i = getelementptr inbounds %struct.enetc_streamid, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %filtertype.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %filtertype.i.i.i, align 2
  br label %if.end67.i.i.i

if.end67.i.i.i:                                   ; preds = %if.end61.i.i.i, %if.then28.i.i.i.if.end67.i.i.i_crit_edge
  %src69.i.i.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %41, i32 0, i32 1
  %64 = ptrtoint ptr %src69.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %src69.i.i.i, align 4
  %add.ptr.i563.i.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %41, i32 0, i32 1, i32 4
  %66 = ptrtoint ptr %add.ptr.i563.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr.i563.i.i.i, align 2
  %conv.i564.i.i.i = zext i16 %67 to i32
  %or.i565.i.i.i = or i32 %65, %conv.i564.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i565.i.i.i)
  %cmp.i566.i.i.i = icmp eq i32 %or.i565.i.i.i, 0
  br i1 %cmp.i566.i.i.i, label %if.end67.i.i.i.if.end104.i.i.i_crit_edge, label %if.then72.i.i.i

if.end67.i.i.i.if.end104.i.i.i_crit_edge:         ; preds = %if.end67.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i.i.i

if.then72.i.i.i:                                  ; preds = %if.end67.i.i.i
  %68 = ptrtoint ptr %src69.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %src69.i.i.i, align 2
  %add.ptr1.i567.i.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %41, i32 0, i32 1, i32 2
  %70 = ptrtoint ptr %add.ptr1.i567.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr1.i567.i.i.i, align 2
  %and9.i568.i.i.i = and i16 %69, %67
  %and510.i570.i.i.i = and i16 %and9.i568.i.i.i, %71
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i570.i.i.i)
  %cmp.i571.i.i.i = icmp eq i16 %and510.i570.i.i.i, -1
  br i1 %cmp.i571.i.i.i, label %if.end86.i.i.i, label %do.body78.i.i.i

do.body78.i.i.i:                                  ; preds = %if.then72.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_psfp_parse_clsflower.__msg.20) #8
  %tobool80.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool80.not.i.i.i, label %do.body78.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.body78.i.i.i.cleanup.thread.sink.split.i.i.i_crit_edge

do.body78.i.i.i.cleanup.thread.sink.split.i.i.i_crit_edge: ; preds = %do.body78.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split.i.i.i

do.body78.i.i.i.cleanup.thread.i.i.i_crit_edge:   ; preds = %do.body78.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i

if.end86.i.i.i:                                   ; preds = %if.then72.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = getelementptr inbounds %struct.enetc_streamid, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %match.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %match.i.i.i, align 4
  %src90.i.i.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %src90.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %src90.i.i.i, align 4
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %72, align 4
  %add.ptr.i572.i.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %74, i32 0, i32 1, i32 4
  %78 = ptrtoint ptr %add.ptr.i572.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr.i572.i.i.i, align 2
  %add.ptr1.i573.i.i.i = getelementptr %struct.enetc_streamid, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 0, i32 4
  %80 = ptrtoint ptr %add.ptr1.i573.i.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %add.ptr1.i573.i.i.i, align 8
  %filtertype93.i.i.i = getelementptr inbounds %struct.enetc_streamid, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %filtertype93.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 2, ptr %filtertype93.i.i.i, align 2
  br label %if.end104.i.i.i

cleanup.thread.sink.split.i.i.i:                  ; preds = %do.body78.i.i.i.cleanup.thread.sink.split.i.i.i_crit_edge, %do.body53.i.i.i.cleanup.thread.sink.split.i.i.i_crit_edge, %do.body34.i.i.i.cleanup.thread.sink.split.i.i.i_crit_edge
  %enetc_psfp_parse_clsflower.__msg.18.sink.i.i.i = phi ptr [ @enetc_psfp_parse_clsflower.__msg.18, %do.body34.i.i.i.cleanup.thread.sink.split.i.i.i_crit_edge ], [ @enetc_psfp_parse_clsflower.__msg.19, %do.body53.i.i.i.cleanup.thread.sink.split.i.i.i_crit_edge ], [ @enetc_psfp_parse_clsflower.__msg.20, %do.body78.i.i.i.cleanup.thread.sink.split.i.i.i_crit_edge ]
  %82 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %enetc_psfp_parse_clsflower.__msg.18.sink.i.i.i, ptr %8, align 4
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %cleanup.thread.sink.split.i.i.i, %do.body78.i.i.i.cleanup.thread.i.i.i_crit_edge, %do.body53.i.i.i.cleanup.thread.i.i.i_crit_edge, %do.body34.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i.i.i) #8
  br label %free_filter.i.i.i

do.body96.i.i.i:                                  ; preds = %if.end24.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_psfp_parse_clsflower.__msg.21) #8
  %tobool98.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool98.not.i.i.i, label %do.body96.i.i.i.free_filter.i.i.i_crit_edge, label %if.then99.i.i.i

do.body96.i.i.i.free_filter.i.i.i_crit_edge:      ; preds = %do.body96.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_filter.i.i.i

if.then99.i.i.i:                                  ; preds = %do.body96.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @enetc_psfp_parse_clsflower.__msg.21, ptr %8, align 4
  br label %free_filter.i.i.i

if.end104.i.i.i:                                  ; preds = %if.end86.i.i.i, %if.end67.i.i.i.if.end104.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i.i.i) #8
  %84 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %6, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %and.i.i574.i.i.i = and i32 %87, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i574.i.i.i)
  %tobool.i.i575.not.i.i.i = icmp eq i32 %and.i.i574.i.i.i, 0
  br i1 %tobool.i.i575.not.i.i.i, label %if.else164.i.i.i, label %if.then106.i.i.i

if.then106.i.i.i:                                 ; preds = %if.end104.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match107.i.i.i) #8
  %88 = ptrtoint ptr %match107.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 -1 to ptr), ptr %match107.i.i.i, align 4, !annotation !80
  %89 = getelementptr inbounds %struct.flow_match_vlan, ptr %match107.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 -1 to ptr), ptr %89, align 4, !annotation !80
  call void @flow_rule_match_vlan(ptr noundef %6, ptr noundef nonnull %match107.i.i.i) #8
  %91 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %89, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load.i.i.i = load i16, ptr %92, align 2
  %trunc.i.i.i = trunc i16 %bf.load.i.i.i to i3
  %94 = zext i3 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.32)
  switch i3 %trunc.i.i.i, label %do.body117.i.i.i [
    i3 0, label %if.then106.i.i.i.if.end126.i.i.i_crit_edge
    i3 -1, label %if.then106.i.i.i.if.end126.i.i.i_crit_edge48
  ]

if.then106.i.i.i.if.end126.i.i.i_crit_edge48:     ; preds = %if.then106.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126.i.i.i

if.then106.i.i.i.if.end126.i.i.i_crit_edge:       ; preds = %if.then106.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126.i.i.i

do.body117.i.i.i:                                 ; preds = %if.then106.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_psfp_parse_clsflower.__msg.22) #8
  %tobool119.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool119.not.i.i.i, label %do.body117.i.i.i.cleanup161.thread.i.i.i_crit_edge, label %do.body117.i.i.i.cleanup161.thread.sink.split.i.i.i_crit_edge

do.body117.i.i.i.cleanup161.thread.sink.split.i.i.i_crit_edge: ; preds = %do.body117.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup161.thread.sink.split.i.i.i

do.body117.i.i.i.cleanup161.thread.i.i.i_crit_edge: ; preds = %do.body117.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup161.thread.i.i.i

if.end126.i.i.i:                                  ; preds = %if.then106.i.i.i.if.end126.i.i.i_crit_edge, %if.then106.i.i.i.if.end126.i.i.i_crit_edge48
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %bf.load.i.i.i)
  %tobool129.not.i.i.i = icmp ult i16 %bf.load.i.i.i, 16
  br i1 %tobool129.not.i.i.i, label %if.end126.i.i.i.cleanup161.i.i.i_crit_edge, label %if.then130.i.i.i

if.end126.i.i.i.cleanup161.i.i.i_crit_edge:       ; preds = %if.end126.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup161.i.i.i

if.then130.i.i.i:                                 ; preds = %if.end126.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17, i16 %bf.load.i.i.i)
  %cmp135.not.i.i.i = icmp ugt i16 %bf.load.i.i.i, -17
  br i1 %cmp135.not.i.i.i, label %if.end146.i.i.i, label %do.body138.i.i.i

do.body138.i.i.i:                                 ; preds = %if.then130.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_psfp_parse_clsflower.__msg.23) #8
  %tobool140.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool140.not.i.i.i, label %do.body138.i.i.i.cleanup161.thread.i.i.i_crit_edge, label %do.body138.i.i.i.cleanup161.thread.sink.split.i.i.i_crit_edge

do.body138.i.i.i.cleanup161.thread.sink.split.i.i.i_crit_edge: ; preds = %do.body138.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup161.thread.sink.split.i.i.i

do.body138.i.i.i.cleanup161.thread.i.i.i_crit_edge: ; preds = %do.body138.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup161.thread.i.i.i

if.end146.i.i.i:                                  ; preds = %if.then130.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %match107.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %match107.i.i.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load2_noabort(i32 %97)
  %bf.load148.i.i.i = load i16, ptr %96, align 2
  %bf.lshr149.i.i.i = lshr i16 %bf.load148.i.i.i, 4
  %vid.i.i.i = getelementptr inbounds %struct.enetc_streamid, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %98 = ptrtoint ptr %vid.i.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %bf.lshr149.i.i.i, ptr %vid.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %bf.load148.i.i.i)
  %tobool153.not.i.i.i = icmp ult i16 %bf.load148.i.i.i, 16
  %tagged.i.i.i = getelementptr inbounds %struct.enetc_streamid, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %..i.i.i = select i1 %tobool153.not.i.i.i, i8 2, i8 1
  %99 = ptrtoint ptr %tagged.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %..i.i.i, ptr %tagged.i.i.i, align 2
  br label %cleanup161.i.i.i

cleanup161.thread.sink.split.i.i.i:               ; preds = %do.body138.i.i.i.cleanup161.thread.sink.split.i.i.i_crit_edge, %do.body117.i.i.i.cleanup161.thread.sink.split.i.i.i_crit_edge
  %enetc_psfp_parse_clsflower.__msg.22.sink.i.i.i = phi ptr [ @enetc_psfp_parse_clsflower.__msg.22, %do.body117.i.i.i.cleanup161.thread.sink.split.i.i.i_crit_edge ], [ @enetc_psfp_parse_clsflower.__msg.23, %do.body138.i.i.i.cleanup161.thread.sink.split.i.i.i_crit_edge ]
  %100 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %enetc_psfp_parse_clsflower.__msg.22.sink.i.i.i, ptr %8, align 4
  br label %cleanup161.thread.i.i.i

cleanup161.thread.i.i.i:                          ; preds = %cleanup161.thread.sink.split.i.i.i, %do.body138.i.i.i.cleanup161.thread.i.i.i_crit_edge, %do.body117.i.i.i.cleanup161.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match107.i.i.i) #8
  br label %free_filter.i.i.i

cleanup161.i.i.i:                                 ; preds = %if.end146.i.i.i, %if.end126.i.i.i.cleanup161.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match107.i.i.i) #8
  br label %if.end167.i.i.i

if.else164.i.i.i:                                 ; preds = %if.end104.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %tagged166.i.i.i = getelementptr inbounds %struct.enetc_streamid, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %101 = ptrtoint ptr %tagged166.i.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 3, ptr %tagged166.i.i.i, align 2
  br label %if.end167.i.i.i

if.end167.i.i.i:                                  ; preds = %if.else164.i.i.i, %cleanup161.i.i.i
  %hw_index.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %entryg.1.i.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %hw_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %hw_index.i.i.i, align 4
  %max_psfp_gate.i.i.i = getelementptr i8, ptr %cb_priv, i32 2492
  %104 = ptrtoint ptr %max_psfp_gate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %max_psfp_gate.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %105)
  %cmp169.not.i.i.i = icmp ult i32 %103, %105
  br i1 %cmp169.not.i.i.i, label %if.end180.i.i.i, label %do.body172.i.i.i

do.body172.i.i.i:                                 ; preds = %if.end167.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_psfp_parse_clsflower.__msg.24) #8
  %tobool174.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool174.not.i.i.i, label %do.body172.i.i.i.free_filter.i.i.i_crit_edge, label %if.then175.i.i.i

do.body172.i.i.i.free_filter.i.i.i_crit_edge:     ; preds = %do.body172.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_filter.i.i.i

if.then175.i.i.i:                                 ; preds = %do.body172.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @enetc_psfp_parse_clsflower.__msg.24, ptr %8, align 4
  br label %free_filter.i.i.i

if.end180.i.i.i:                                  ; preds = %if.end167.i.i.i
  %107 = getelementptr inbounds %struct.flow_action_entry, ptr %entryg.1.i.i.i, i32 0, i32 5
  %num_entries181.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %entryg.1.i.i.i, i32 0, i32 5, i32 0, i32 4
  %108 = ptrtoint ptr %num_entries181.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_entries181.i.i.i, align 8
  %max_psfp_gatelist.i.i.i = getelementptr i8, ptr %cb_priv, i32 2496
  %110 = ptrtoint ptr %max_psfp_gatelist.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %max_psfp_gatelist.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp183.not.i.i.i = icmp ult i32 %109, %111
  br i1 %cmp183.not.i.i.i, label %if.end8.i.i.i.i.i, label %do.body186.i.i.i

do.body186.i.i.i:                                 ; preds = %if.end180.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_psfp_parse_clsflower.__msg.25) #8
  %tobool188.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool188.not.i.i.i, label %do.body186.i.i.i.free_filter.i.i.i_crit_edge, label %if.then189.i.i.i

do.body186.i.i.i.free_filter.i.i.i_crit_edge:     ; preds = %do.body186.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_filter.i.i.i

if.then189.i.i.i:                                 ; preds = %do.body186.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @enetc_psfp_parse_clsflower.__msg.25, ptr %8, align 4
  br label %free_filter.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %if.end180.i.i.i
  %113 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %109, i32 16) #8
  %114 = extractvalue { i32, i1 } %113, 1
  %115 = extractvalue { i32, i1 } %113, 0
  %spec.select.i.i.i.i = call i32 @llvm.uadd.sat.i32(i32 %115, i32 48) #8
  %retval.0.i.i.i.i = select i1 %114, i32 -1, i32 %spec.select.i.i.i.i
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i.i.i, i32 noundef 3520) #11
  %tobool198.not.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool198.not.i.i.i, label %if.end8.i.i.i.i.i.free_filter.i.i.i_crit_edge, label %if.end200.i.i.i

if.end8.i.i.i.i.i.free_filter.i.i.i_crit_edge:    ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_filter.i.i.i

if.end200.i.i.i:                                  ; preds = %if.end8.i.i.i.i.i
  %refcount.i.i.i = getelementptr inbounds %struct.enetc_psfp_gate, ptr %call9.i.i.i.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #8
  %116 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile i32 1, ptr %refcount.i.i.i, align 4
  %117 = ptrtoint ptr %hw_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %hw_index.i.i.i, align 4
  %119 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %call9.i.i.i.i.i, align 128
  %120 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %107, align 8
  %conv203.i.i.i = trunc i32 %121 to i8
  %init_ipv.i.i.i = getelementptr inbounds %struct.enetc_psfp_gate, ptr %call9.i.i.i.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %init_ipv.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv203.i.i.i, ptr %init_ipv.i.i.i, align 4
  %basetime.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %entryg.1.i.i.i, i32 0, i32 5, i32 0, i32 1
  %123 = ptrtoint ptr %basetime.i.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %basetime.i.i.i, align 8
  %basetime204.i.i.i = getelementptr inbounds %struct.enetc_psfp_gate, ptr %call9.i.i.i.i.i, i32 0, i32 2
  %125 = ptrtoint ptr %basetime204.i.i.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %basetime204.i.i.i, align 8
  %cycletime.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %entryg.1.i.i.i, i32 0, i32 5, i32 0, i32 2
  %126 = ptrtoint ptr %cycletime.i.i.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %cycletime.i.i.i, align 8
  %cycletime205.i.i.i = getelementptr inbounds %struct.enetc_psfp_gate, ptr %call9.i.i.i.i.i, i32 0, i32 3
  %128 = ptrtoint ptr %cycletime205.i.i.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %127, ptr %cycletime205.i.i.i, align 16
  %129 = ptrtoint ptr %num_entries181.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_entries181.i.i.i, align 8
  %num_entries207.i.i.i = getelementptr inbounds %struct.enetc_psfp_gate, ptr %call9.i.i.i.i.i, i32 0, i32 5
  %131 = ptrtoint ptr %num_entries207.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %num_entries207.i.i.i, align 32
  %entries208.i.i.i = getelementptr inbounds %struct.enetc_psfp_gate, ptr %call9.i.i.i.i.i, i32 0, i32 8
  %132 = load i32, ptr %num_entries181.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp212668.not.i.i.i = icmp eq i32 %132, 0
  br i1 %cmp212668.not.i.i.i, label %if.end200.i.i.i.for.end233.i.i.i_crit_edge, label %for.body214.lr.ph.i.i.i

if.end200.i.i.i.for.end233.i.i.i_crit_edge:       ; preds = %if.end200.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end233.i.i.i

for.body214.lr.ph.i.i.i:                          ; preds = %if.end200.i.i.i
  %entries215.i.i.i = getelementptr inbounds %struct.anon.145, ptr %107, i32 0, i32 5
  br label %for.body214.i.i.i

for.body214.i.i.i:                                ; preds = %for.body214.i.i.i.for.body214.i.i.i_crit_edge, %for.body214.lr.ph.i.i.i
  %i.1669.i.i.i = phi i32 [ 0, %for.body214.lr.ph.i.i.i ], [ %inc232.i.i.i, %for.body214.i.i.i.for.body214.i.i.i_crit_edge ]
  %133 = ptrtoint ptr %entries215.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %entries215.i.i.i, align 4
  %arrayidx216.i.i.i = getelementptr %struct.action_gate_entry, ptr %134, i32 %i.1669.i.i.i
  %135 = ptrtoint ptr %arrayidx216.i.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx216.i.i.i, align 4
  %arrayidx217.i.i.i = getelementptr %struct.action_gate_entry, ptr %entries208.i.i.i, i32 %i.1669.i.i.i
  %137 = ptrtoint ptr %arrayidx217.i.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx217.i.i.i, align 16
  %138 = load ptr, ptr %entries215.i.i.i, align 4
  %interval.i.i.i = getelementptr %struct.action_gate_entry, ptr %138, i32 %i.1669.i.i.i, i32 1
  %139 = ptrtoint ptr %interval.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %interval.i.i.i, align 4
  %interval222.i.i.i = getelementptr %struct.action_gate_entry, ptr %entries208.i.i.i, i32 %i.1669.i.i.i, i32 1
  %141 = ptrtoint ptr %interval222.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %interval222.i.i.i, align 4
  %142 = load ptr, ptr %entries215.i.i.i, align 4
  %ipv.i.i.i = getelementptr %struct.action_gate_entry, ptr %142, i32 %i.1669.i.i.i, i32 2
  %143 = ptrtoint ptr %ipv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ipv.i.i.i, align 4
  %ipv226.i.i.i = getelementptr %struct.action_gate_entry, ptr %entries208.i.i.i, i32 %i.1669.i.i.i, i32 2
  %145 = ptrtoint ptr %ipv226.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %ipv226.i.i.i, align 8
  %146 = load ptr, ptr %entries215.i.i.i, align 4
  %maxoctets.i.i.i = getelementptr %struct.action_gate_entry, ptr %146, i32 %i.1669.i.i.i, i32 3
  %147 = ptrtoint ptr %maxoctets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %maxoctets.i.i.i, align 4
  %maxoctets230.i.i.i = getelementptr %struct.action_gate_entry, ptr %entries208.i.i.i, i32 %i.1669.i.i.i, i32 3
  %149 = ptrtoint ptr %maxoctets230.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %maxoctets230.i.i.i, align 4
  %inc232.i.i.i = add nuw i32 %i.1669.i.i.i, 1
  %150 = ptrtoint ptr %num_entries181.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %num_entries181.i.i.i, align 8
  %cmp212.i.i.i = icmp ult i32 %inc232.i.i.i, %151
  br i1 %cmp212.i.i.i, label %for.body214.i.i.i.for.body214.i.i.i_crit_edge, label %for.body214.i.i.i.for.end233.i.i.i_crit_edge

for.body214.i.i.i.for.end233.i.i.i_crit_edge:     ; preds = %for.body214.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end233.i.i.i

for.body214.i.i.i.for.body214.i.i.i_crit_edge:    ; preds = %for.body214.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body214.i.i.i

for.end233.i.i.i:                                 ; preds = %for.body214.i.i.i.for.end233.i.i.i_crit_edge, %if.end200.i.i.i.for.end233.i.i.i_crit_edge
  %152 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %call9.i.i.i.i.i, align 128
  %sgi_index.i.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %154 = ptrtoint ptr %sgi_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %sgi_index.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %155 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i582.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %155, i32 noundef 3520, i32 noundef 36) #14
  %tobool236.not.i.i.i = icmp eq ptr %call7.i.i582.i.i.i, null
  br i1 %tobool236.not.i.i.i, label %for.end233.i.i.i.free_gate.i.i.i_crit_edge, label %if.end238.i.i.i

for.end233.i.i.i.free_gate.i.i.i_crit_edge:       ; preds = %for.end233.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_gate.i.i.i

if.end238.i.i.i:                                  ; preds = %for.end233.i.i.i
  %refcount239.i.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %call7.i.i582.i.i.i, i32 0, i32 6
  %call.i.i.i584.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount239.i.i.i, i32 noundef 4) #8
  %156 = ptrtoint ptr %refcount239.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile i32 1, ptr %refcount239.i.i.i, align 8
  %157 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %call9.i.i.i.i.i, align 128
  %gate_id.i.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %call7.i.i582.i.i.i, i32 0, i32 4
  %159 = ptrtoint ptr %gate_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %gate_id.i.i.i, align 8
  %meter_id.i.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %call7.i.i582.i.i.i, i32 0, i32 5
  %160 = ptrtoint ptr %meter_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -1, ptr %meter_id.i.i.i, align 4
  %tobool241.not.i.i.i = icmp eq ptr %entryp.1.i.i.i, null
  br i1 %tobool241.not.i.i.i, label %if.end238.i.i.i.if.end273.i.i.i_crit_edge, label %if.then242.i.i.i

if.end238.i.i.i.if.end273.i.i.i_crit_edge:        ; preds = %if.end238.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273.i.i.i

if.then242.i.i.i:                                 ; preds = %if.end238.i.i.i
  %161 = getelementptr inbounds %struct.flow_action_entry, ptr %entryp.1.i.i.i, i32 0, i32 5
  %rate_pkt_ps.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %entryp.1.i.i.i, i32 0, i32 5, i32 0, i32 3
  %162 = ptrtoint ptr %rate_pkt_ps.i.i.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %rate_pkt_ps.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %163)
  %tobool243.not.i.i.i = icmp eq i64 %163, 0
  br i1 %tobool243.not.i.i.i, label %if.end253.i.i.i, label %do.body245.i.i.i

do.body245.i.i.i:                                 ; preds = %if.then242.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_psfp_parse_clsflower.__msg.26) #8
  %tobool247.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool247.not.i.i.i, label %do.body245.i.i.i.free_sfi.i.i.i_crit_edge, label %if.then248.i.i.i

do.body245.i.i.i.free_sfi.i.i.i_crit_edge:        ; preds = %do.body245.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_sfi.i.i.i

if.then248.i.i.i:                                 ; preds = %do.body245.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %164 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @enetc_psfp_parse_clsflower.__msg.26, ptr %8, align 4
  br label %free_sfi.i.i.i

if.end253.i.i.i:                                  ; preds = %if.then242.i.i.i
  %165 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %161, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool254.not.i.i.i = icmp eq i32 %166, 0
  br i1 %tobool254.not.i.i.i, label %if.end253.i.i.i.if.end268.i.i.i_crit_edge, label %if.then255.i.i.i

if.end253.i.i.i.if.end268.i.i.i_crit_edge:        ; preds = %if.end253.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end268.i.i.i

if.then255.i.i.i:                                 ; preds = %if.end253.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %167 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i590.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %167, i32 noundef 3520, i32 noundef 24) #14
  %tobool257.not.i.i.i = icmp eq ptr %call7.i.i590.i.i.i, null
  br i1 %tobool257.not.i.i.i, label %if.then255.i.i.i.free_sfi.i.i.i_crit_edge, label %if.end259.i.i.i

if.then255.i.i.i.free_sfi.i.i.i_crit_edge:        ; preds = %if.then255.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_sfi.i.i.i

if.end259.i.i.i:                                  ; preds = %if.then255.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %refcount260.i.i.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %call7.i.i590.i.i.i, i32 0, i32 3
  %call.i.i.i592.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount260.i.i.i, i32 noundef 4) #8
  %168 = ptrtoint ptr %refcount260.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile i32 1, ptr %refcount260.i.i.i, align 4
  %rate_bytes_ps.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %entryp.1.i.i.i, i32 0, i32 5, i32 0, i32 1
  %169 = ptrtoint ptr %rate_bytes_ps.i.i.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %rate_bytes_ps.i.i.i, align 8
  %conv261.i.i.i = trunc i64 %170 to i32
  %cir.i.i.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %call7.i.i590.i.i.i, i32 0, i32 1
  %171 = ptrtoint ptr %cir.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %conv261.i.i.i, ptr %cir.i.i.i, align 4
  %172 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %161, align 8
  %cbs.i.i.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %call7.i.i590.i.i.i, i32 0, i32 2
  %174 = ptrtoint ptr %cbs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %cbs.i.i.i, align 8
  %hw_index263.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %entryp.1.i.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %hw_index263.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %hw_index263.i.i.i, align 4
  %177 = ptrtoint ptr %call7.i.i590.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %call7.i.i590.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %178 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %flags.i.i.i, align 4
  %or.i.i.i = or i32 %179, 1
  store i32 %or.i.i.i, ptr %flags.i.i.i, align 4
  %fmi_index.i.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %180 = ptrtoint ptr %fmi_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %176, ptr %fmi_index.i.i.i, align 8
  %181 = ptrtoint ptr %meter_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %176, ptr %meter_id.i.i.i, align 4
  br label %if.end268.i.i.i

if.end268.i.i.i:                                  ; preds = %if.end259.i.i.i, %if.end253.i.i.i.if.end268.i.i.i_crit_edge
  %fmi.0.i.i.i = phi ptr [ %call7.i.i590.i.i.i, %if.end259.i.i.i ], [ null, %if.end253.i.i.i.if.end268.i.i.i_crit_edge ]
  %mtu.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %entryp.1.i.i.i, i32 0, i32 5, i32 0, i32 4
  %182 = ptrtoint ptr %mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %mtu.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool269.not.i.i.i = icmp eq i32 %183, 0
  br i1 %tobool269.not.i.i.i, label %if.end268.i.i.i.if.end273.i.i.i_crit_edge, label %if.then270.i.i.i

if.end268.i.i.i.if.end273.i.i.i_crit_edge:        ; preds = %if.end268.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273.i.i.i

if.then270.i.i.i:                                 ; preds = %if.end268.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %maxsdu.i.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %call7.i.i582.i.i.i, i32 0, i32 3
  %184 = ptrtoint ptr %maxsdu.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %maxsdu.i.i.i, align 4
  br label %if.end273.i.i.i

if.end273.i.i.i:                                  ; preds = %if.then270.i.i.i, %if.end268.i.i.i.if.end273.i.i.i_crit_edge, %if.end238.i.i.i.if.end273.i.i.i_crit_edge
  %fmi.1.i.i.i = phi ptr [ %fmi.0.i.i.i, %if.then270.i.i.i ], [ %fmi.0.i.i.i, %if.end268.i.i.i.if.end273.i.i.i_crit_edge ], [ null, %if.end238.i.i.i.if.end273.i.i.i_crit_edge ]
  %prio275.i.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 2
  %185 = ptrtoint ptr %prio275.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %prio275.i.i.i, align 8
  %187 = add i32 %186, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %187)
  %188 = icmp ult i32 %187, 8
  %189 = trunc i32 %186 to i8
  %conv285.i.i.i = add nsw i8 %189, -1
  %.sink.i.i.i = select i1 %188, i8 %conv285.i.i.i, i8 -1
  %190 = getelementptr inbounds %struct.enetc_psfp_filter, ptr %call7.i.i582.i.i.i, i32 0, i32 2
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %.sink.i.i.i, ptr %190, align 8
  %192 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 3), align 4
  %tobool.not.i60.i = icmp eq ptr %192, null
  %add.ptr.i.i = getelementptr i8, ptr %192, i32 -28
  %tobool2.not4145.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not41.i.i = or i1 %tobool.not.i60.i, %tobool2.not4145.i.i
  br i1 %tobool2.not41.i.i, label %if.end273.i.i.i.if.then292.i.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end273.i.i.i.if.then292.i.i.i_crit_edge:       ; preds = %if.end273.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then292.i.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end273.i.i.i
  %193 = ptrtoint ptr %gate_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %gate_id.i.i.i, align 8
  %maxsdu9.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %call7.i.i582.i.i.i, i32 0, i32 3
  br label %for.body.i61.i

for.body.i61.i:                                   ; preds = %for.inc.i.i.for.body.i61.i_crit_edge, %for.body.lr.ph.i.i
  %s.042.i.i = phi ptr [ %add.ptr.i.i, %for.body.lr.ph.i.i ], [ %add.ptr22.i.i, %for.inc.i.i.for.body.i61.i_crit_edge ]
  %gate_id.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %s.042.i.i, i32 0, i32 4
  %195 = ptrtoint ptr %gate_id.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %gate_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %194)
  %cmp.i.i = icmp eq i32 %196, %194
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.i61.i.for.inc.i.i_crit_edge

for.body.i61.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i61.i
  %prio.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %s.042.i.i, i32 0, i32 2
  %197 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %prio.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %198, i8 %.sink.i.i.i)
  %cmp6.i.i = icmp eq i8 %198, %.sink.i.i.i
  br i1 %cmp6.i.i, label %land.lhs.true8.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %maxsdu.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %s.042.i.i, i32 0, i32 3
  %199 = ptrtoint ptr %maxsdu.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %maxsdu.i.i, align 4
  %201 = ptrtoint ptr %maxsdu9.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %maxsdu9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %202)
  %cmp10.i.i = icmp eq i32 %200, %202
  br i1 %cmp10.i.i, label %land.lhs.true12.i.i, label %land.lhs.true8.i.i.for.inc.i.i_crit_edge

land.lhs.true8.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true12.i.i:                              ; preds = %land.lhs.true8.i.i
  %meter_id.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %s.042.i.i, i32 0, i32 5
  %203 = ptrtoint ptr %meter_id.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %meter_id.i.i, align 4
  %205 = ptrtoint ptr %meter_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %meter_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %204, i32 %206)
  %cmp14.i.i = icmp eq i32 %204, %206
  br i1 %cmp14.i.i, label %if.end322.i.i.thread.i, label %land.lhs.true12.i.i.for.inc.i.i_crit_edge

land.lhs.true12.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true12.i.i.for.inc.i.i_crit_edge, %land.lhs.true8.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i61.i.for.inc.i.i_crit_edge
  %node.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %s.042.i.i, i32 0, i32 7
  %207 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %node.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %208, null
  %add.ptr22.i.i = getelementptr i8, ptr %208, i32 -28
  %tobool2.not46.i.i = icmp eq ptr %add.ptr22.i.i, null
  %tobool2.not.i.i = or i1 %tobool18.not.i.i, %tobool2.not46.i.i
  br i1 %tobool2.not.i.i, label %for.inc.i.i.if.then292.i.i.i_crit_edge, label %for.inc.i.i.for.body.i61.i_crit_edge

for.inc.i.i.for.body.i61.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i61.i

for.inc.i.i.if.then292.i.i.i_crit_edge:           ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then292.i.i.i

if.then292.i.i.i:                                 ; preds = %for.inc.i.i.if.then292.i.i.i_crit_edge, %if.end273.i.i.i.if.then292.i.i.i_crit_edge
  %max_psfp_filter.i.i.i.i = getelementptr i8, ptr %cb_priv, i32 2488
  %209 = ptrtoint ptr %max_psfp_filter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %max_psfp_filter.i.i.i.i, align 4
  %211 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 1), align 4
  %call.i.i.i.i = call i32 @_find_first_zero_bit_be(ptr noundef %211, i32 noundef %210) #8
  %handle.i.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %call7.i.i582.i.i.i, i32 0, i32 1
  %212 = ptrtoint ptr %handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %handle.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp295.i.i.i = icmp slt i32 %213, 0
  br i1 %cmp295.i.i.i, label %do.body298.i.i.i, label %if.end322.i.i.i

do.body298.i.i.i:                                 ; preds = %if.then292.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_psfp_parse_clsflower.__msg.27) #8
  %tobool300.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool300.not.i.i.i, label %do.body298.i.i.i.free_fmi.i.i.i_crit_edge, label %if.then301.i.i.i

do.body298.i.i.i.free_fmi.i.i.i_crit_edge:        ; preds = %do.body298.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_fmi.i.i.i

if.then301.i.i.i:                                 ; preds = %do.body298.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %214 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @enetc_psfp_parse_clsflower.__msg.27, ptr %8, align 4
  br label %free_fmi.i.i.i

if.end322.i.i.i:                                  ; preds = %if.then292.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i.i, i32 %210)
  %cmp.i593.i.i.i = icmp eq i32 %call.i.i.i.i, %210
  %.call.i.i.i.i = select i1 %cmp.i593.i.i.i, i32 -1, i32 %call.i.i.i.i
  %215 = ptrtoint ptr %call7.i.i582.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %.call.i.i.i.i, ptr %call7.i.i582.i.i.i, align 8
  %add.i.i.i = add i32 %.call.i.i.i.i, 100
  %216 = ptrtoint ptr %handle.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %add.i.i.i, ptr %handle.i.i.i, align 4
  %handle311.i.i.i = getelementptr inbounds %struct.enetc_streamid, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %217 = ptrtoint ptr %handle311.i.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %add.i.i.i, ptr %handle311.i.i.i, align 8
  %sfi_index.i.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %218 = ptrtoint ptr %sfi_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %.call.i.i.i.i, ptr %sfi_index.i.i.i, align 4
  %call.i.i = call fastcc i32 @enetc_streamid_hw_set(ptr noundef %add.ptr.i, ptr noundef %call7.i.i.i.i.i, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i45.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i45.i, label %if.then2.i.i, label %if.end322.i.i.i.free_fmi.i.i.i_crit_edge

if.end322.i.i.i.free_fmi.i.i.i_crit_edge:         ; preds = %if.end322.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_fmi.i.i.i

if.end322.i.i.thread.i:                           ; preds = %land.lhs.true12.i.i
  %219 = ptrtoint ptr %s.042.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %s.042.i.i, align 4
  %sfi_index318.i.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %221 = ptrtoint ptr %sfi_index318.i.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %sfi_index318.i.i.i, align 4
  %handle319.i.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %s.042.i.i, i32 0, i32 1
  %222 = ptrtoint ptr %handle319.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %handle319.i.i.i, align 4
  %handle321.i.i.i = getelementptr inbounds %struct.enetc_streamid, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %224 = ptrtoint ptr %handle321.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %handle321.i.i.i, align 8
  %call.i117.i = call fastcc i32 @enetc_streamid_hw_set(ptr noundef %add.ptr.i, ptr noundef %call7.i.i.i.i.i, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117.i)
  %tobool.not.i45118.i = icmp eq i32 %call.i117.i, 0
  br i1 %tobool.not.i45118.i, label %if.end322.i.i.thread.i.if.end7.i.i_crit_edge, label %if.end322.i.i.thread.i.free_fmi.i.i.i_crit_edge

if.end322.i.i.thread.i.free_fmi.i.i.i_crit_edge:  ; preds = %if.end322.i.i.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_fmi.i.i.i

if.end322.i.i.thread.i.if.end7.i.i_crit_edge:     ; preds = %if.end322.i.i.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end322.i.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd.i90.i) #8
  %225 = call ptr @memset(ptr %cbd.i90.i, i32 0, i32 32)
  %si.i.i = getelementptr i8, ptr %cb_priv, i32 2312
  %226 = ptrtoint ptr %si.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %si.i.i, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 4
  %devfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %229, i32 0, i32 6
  %230 = ptrtoint ptr %devfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %devfn.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %231)
  %232 = icmp ult i32 %231, 7
  br i1 %232, label %switch.hole_check, label %if.then2.i.i.enetc_streamfilter_hw_set.exit.thread.i_crit_edge

if.then2.i.i.enetc_streamfilter_hw_set.exit.thread.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_streamfilter_hw_set.exit.thread.i

enetc_streamfilter_hw_set.exit.thread.i:          ; preds = %switch.hole_check.enetc_streamfilter_hw_set.exit.thread.i_crit_edge, %if.then2.i.i.enetc_streamfilter_hw_set.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i90.i) #8
  br label %revert_sid.i.i

switch.hole_check:                                ; preds = %if.then2.i.i
  %switch.maskindex = trunc i32 %231 to i8
  %switch.shifted = lshr i8 71, %switch.maskindex
  %233 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %switch.lobit.not = icmp eq i8 %233, 0
  br i1 %switch.lobit.not, label %switch.hole_check.enetc_streamfilter_hw_set.exit.thread.i_crit_edge, label %switch.lookup

switch.hole_check.enetc_streamfilter_hw_set.exit.thread.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_streamfilter_hw_set.exit.thread.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.enetc_setup_tc_block_cb, i32 0, i32 %231
  %234 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %234)
  %switch.load = load i32, ptr %switch.gep, align 4
  %235 = ptrtoint ptr %call7.i.i582.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %call7.i.i582.i.i.i, align 8
  %conv.i92.i = trunc i32 %236 to i16
  %237 = call i16 @llvm.bswap.i16(i16 %conv.i92.i) #8
  %index1.i93.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i90.i, i32 0, i32 1
  %238 = ptrtoint ptr %index1.i93.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %237, ptr %index1.i93.i, align 4
  %cls.i94.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i90.i, i32 0, i32 4
  %239 = ptrtoint ptr %cls.i94.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 8, ptr %cls.i94.i, align 1
  %status_flags.i95.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i90.i, i32 0, i32 6
  %240 = ptrtoint ptr %status_flags.i95.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 -128, ptr %status_flags.i95.i, align 1
  %length.i96.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i90.i, i32 0, i32 2
  %241 = ptrtoint ptr %length.i96.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 256, ptr %length.i96.i, align 2
  %en.i98.i = getelementptr inbounds %struct.sfi_conf, ptr %cbd.i90.i, i32 0, i32 10
  %242 = ptrtoint ptr %en.i98.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 -128, ptr %en.i98.i, align 1
  %243 = ptrtoint ptr %handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %handle.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %244)
  %cmp4.i.i = icmp sgt i32 %244, -1
  br i1 %cmp4.i.i, label %if.then6.i99.i, label %switch.lookup.if.end10.i.i_crit_edge

switch.lookup.if.end10.i.i_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then6.i99.i:                                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %245 = call i32 @llvm.bswap.i32(i32 %244) #8
  %246 = ptrtoint ptr %cbd.i90.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %cbd.i90.i, align 4
  %sthm.i.i = getelementptr inbounds %struct.sfi_conf, ptr %cbd.i90.i, i32 0, i32 3
  %247 = ptrtoint ptr %sthm.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %sthm.i.i, align 1
  %249 = or i8 %248, -128
  store i8 %249, ptr %sthm.i.i, align 1
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then6.i99.i, %switch.lookup.if.end10.i.i_crit_edge
  %250 = ptrtoint ptr %gate_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %gate_id.i.i.i, align 8
  %conv11.i.i = trunc i32 %251 to i16
  %252 = call i16 @llvm.bswap.i16(i16 %conv11.i.i) #8
  %sg_inst_table_index.i.i = getelementptr inbounds %struct.sfi_conf, ptr %cbd.i90.i, i32 0, i32 6
  %253 = ptrtoint ptr %sg_inst_table_index.i.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 %252, ptr %sg_inst_table_index.i.i, align 4
  %254 = shl nuw nsw i32 16777216, %switch.load
  %input_ports.i.i = getelementptr inbounds %struct.sfi_conf, ptr %cbd.i90.i, i32 0, i32 8
  %255 = ptrtoint ptr %input_ports.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %input_ports.i.i, align 4
  %256 = ptrtoint ptr %190 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %190, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %257)
  %cmp13.i.i = icmp sgt i8 %257, -1
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.end10.i.i.if.end22.i.i_crit_edge

if.end10.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

if.then15.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %258 = and i8 %257, 7
  %multi.i102.i = getelementptr inbounds %struct.sfi_conf, ptr %cbd.i90.i, i32 0, i32 1
  %259 = ptrtoint ptr %multi.i102.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %multi.i102.i, align 4
  %261 = or i8 %258, %260
  %or2069.i.i = or i8 %261, 8
  store i8 %or2069.i.i, ptr %multi.i102.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then15.i.i, %if.end10.i.i.if.end22.i.i_crit_edge
  %maxsdu.i103.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %call7.i.i582.i.i.i, i32 0, i32 3
  %262 = ptrtoint ptr %maxsdu.i103.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %maxsdu.i103.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool23.not.i.i = icmp eq i32 %263, 0
  br i1 %tobool23.not.i.i, label %if.end22.i.i.if.end31.i.i_crit_edge, label %if.then24.i.i

if.end22.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i

if.then24.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv26.i.i = trunc i32 %263 to i16
  %264 = call i16 @llvm.bswap.i16(i16 %conv26.i.i) #8
  %msdu.i104.i = getelementptr inbounds %struct.sfi_conf, ptr %cbd.i90.i, i32 0, i32 5
  %265 = ptrtoint ptr %msdu.i104.i to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 %264, ptr %msdu.i104.i, align 2
  %multi27.i.i = getelementptr inbounds %struct.sfi_conf, ptr %cbd.i90.i, i32 0, i32 1
  %266 = ptrtoint ptr %multi27.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %multi27.i.i, align 4
  %268 = or i8 %267, 64
  store i8 %268, ptr %multi27.i.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end22.i.i.if.end31.i.i_crit_edge
  %269 = ptrtoint ptr %meter_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %meter_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %270)
  %cmp32.i.i = icmp sgt i32 %270, -1
  br i1 %cmp32.i.i, label %if.then34.i.i, label %if.end31.i.i.enetc_streamfilter_hw_set.exit.i_crit_edge

if.end31.i.i.enetc_streamfilter_hw_set.exit.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_streamfilter_hw_set.exit.i

if.then34.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv36.i.i = trunc i32 %270 to i16
  %271 = call i16 @llvm.bswap.i16(i16 %conv36.i.i) #8
  %fm_inst_table_index.i.i = getelementptr inbounds %struct.sfi_conf, ptr %cbd.i90.i, i32 0, i32 4
  %272 = ptrtoint ptr %fm_inst_table_index.i.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %271, ptr %fm_inst_table_index.i.i, align 4
  %multi37.i.i = getelementptr inbounds %struct.sfi_conf, ptr %cbd.i90.i, i32 0, i32 1
  %273 = ptrtoint ptr %multi37.i.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %multi37.i.i, align 4
  %275 = or i8 %274, -128
  store i8 %275, ptr %multi37.i.i, align 4
  br label %enetc_streamfilter_hw_set.exit.i

enetc_streamfilter_hw_set.exit.i:                 ; preds = %if.then34.i.i, %if.end31.i.i.enetc_streamfilter_hw_set.exit.i_crit_edge
  %call43.i.i = call i32 @enetc_send_cmd(ptr noundef %227, ptr noundef nonnull %cbd.i90.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i90.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %tobool4.not.i.i = icmp eq i32 %call43.i.i, 0
  br i1 %tobool4.not.i.i, label %enetc_streamfilter_hw_set.exit.i.if.end7.i.i_crit_edge, label %enetc_streamfilter_hw_set.exit.i.revert_sid.i.i_crit_edge

enetc_streamfilter_hw_set.exit.i.revert_sid.i.i_crit_edge: ; preds = %enetc_streamfilter_hw_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert_sid.i.i

enetc_streamfilter_hw_set.exit.i.if.end7.i.i_crit_edge: ; preds = %enetc_streamfilter_hw_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %enetc_streamfilter_hw_set.exit.i.if.end7.i.i_crit_edge, %if.end322.i.i.thread.i.if.end7.i.i_crit_edge
  %tobool1.not.i133.i = phi i1 [ false, %enetc_streamfilter_hw_set.exit.i.if.end7.i.i_crit_edge ], [ true, %if.end322.i.i.thread.i.if.end7.i.i_crit_edge ]
  %tobool291.not.i.i112120132.i = phi i1 [ true, %enetc_streamfilter_hw_set.exit.i.if.end7.i.i_crit_edge ], [ false, %if.end322.i.i.thread.i.if.end7.i.i_crit_edge ]
  %s.0.lcssa.i110122130.i = phi ptr [ null, %enetc_streamfilter_hw_set.exit.i.if.end7.i.i_crit_edge ], [ %s.042.i.i, %if.end322.i.i.thread.i.if.end7.i.i_crit_edge ]
  %spec.select.i.i123128.i = phi ptr [ %call7.i.i582.i.i.i, %enetc_streamfilter_hw_set.exit.i.if.end7.i.i_crit_edge ], [ null, %if.end322.i.i.thread.i.if.end7.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd.i.i) #8
  %276 = call ptr @memset(ptr %cbd.i.i, i32 0, i32 32)
  %277 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %call9.i.i.i.i.i, align 128
  %conv.i62.i = trunc i32 %278 to i16
  %279 = call i16 @llvm.bswap.i16(i16 %conv.i62.i) #8
  %index1.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i, i32 0, i32 1
  %280 = ptrtoint ptr %index1.i.i to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 %279, ptr %index1.i.i, align 4
  %cmd.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i, i32 0, i32 3
  %cls.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i, i32 0, i32 4
  %281 = ptrtoint ptr %cls.i.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 9, ptr %cls.i.i, align 1
  %status_flags.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i, i32 0, i32 6
  %282 = ptrtoint ptr %status_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 -128, ptr %status_flags.i.i, align 1
  %283 = ptrtoint ptr %num_entries207.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %num_entries207.i.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool2.not.i63.i = icmp eq i32 %284, 0
  br i1 %tobool2.not.i63.i, label %enetc_streamgate_hw_set.exit.thread138.i, label %if.end4.i66.i

enetc_streamgate_hw_set.exit.thread138.i:         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i.i) #8
  br label %if.end11.i.i

if.end4.i66.i:                                    ; preds = %if.end7.i.i
  %285 = ptrtoint ptr %max_psfp_gatelist.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %max_psfp_gatelist.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %284, i32 %286)
  %cmp.i65.i = icmp ugt i32 %284, %286
  br i1 %cmp.i65.i, label %if.end4.i66.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end4.i66.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge: ; preds = %if.end4.i66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_streamgate_hw_set.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end4.i66.i
  %287 = ptrtoint ptr %cycletime205.i.i.i to i32
  call void @__asan_load8_noabort(i32 %287)
  %288 = load i64, ptr %cycletime205.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %288)
  %tobool7.not.i.i = icmp eq i64 %288, 0
  br i1 %tobool7.not.i.i, label %lor.lhs.false.i.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge, label %if.end9.i.i

lor.lhs.false.i.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_streamgate_hw_set.exit.thread.i

if.end9.i.i:                                      ; preds = %lor.lhs.false.i.i
  %ocgtst.i.i = getelementptr inbounds %struct.sgi_table, ptr %cbd.i.i, i32 0, i32 3
  %289 = ptrtoint ptr %ocgtst.i.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 -128, ptr %ocgtst.i.i, align 1
  %290 = ptrtoint ptr %init_ipv.i.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %init_ipv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %cmp11.i.i = icmp slt i8 %291, 0
  %292 = and i8 %291, 7
  %293 = or i8 %292, 8
  %cond.i.i = select i1 %cmp11.i.i, i8 0, i8 %293
  %oipv.i.i = getelementptr inbounds %struct.sgi_table, ptr %cbd.i.i, i32 0, i32 1
  %294 = ptrtoint ptr %oipv.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %cond.i.i, ptr %oipv.i.i, align 4
  %en.i.i = getelementptr inbounds %struct.sgi_table, ptr %cbd.i.i, i32 0, i32 8
  %295 = ptrtoint ptr %en.i.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 -128, ptr %en.i.i, align 1
  %si16.i.i = getelementptr i8, ptr %cb_priv, i32 2312
  %296 = ptrtoint ptr %si16.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %si16.i.i, align 4
  %call17.i.i = call i32 @enetc_send_cmd(ptr noundef %297, ptr noundef nonnull %cbd.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i67.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i67.i, label %if.end20.i.i, label %if.end9.i.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge

if.end9.i.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_streamgate_hw_set.exit.thread.i

if.end20.i.i:                                     ; preds = %if.end9.i.i
  %298 = call ptr @memset(ptr %cbd.i.i, i32 0, i32 32)
  %299 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %call9.i.i.i.i.i, align 128
  %conv22.i.i = trunc i32 %300 to i16
  %301 = call i16 @llvm.bswap.i16(i16 %conv22.i.i) #8
  %302 = ptrtoint ptr %index1.i.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %301, ptr %index1.i.i, align 4
  %303 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 1, ptr %cmd.i.i, align 4
  %304 = ptrtoint ptr %cls.i.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 9, ptr %cls.i.i, align 1
  %305 = ptrtoint ptr %num_entries207.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %num_entries207.i.i.i, align 32
  %307 = trunc i32 %306 to i8
  %308 = add i8 %307, 3
  %conv29.i.i = and i8 %308, 3
  %acl_len.i.i = getelementptr inbounds %struct.anon.148, ptr %cbd.i.i, i32 0, i32 1, i32 0, i32 3
  %309 = ptrtoint ptr %acl_len.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %conv29.i.i, ptr %acl_len.i.i, align 4
  %310 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %306, i32 8) #8
  %311 = extractvalue { i32, i1 } %310, 1
  %312 = extractvalue { i32, i1 } %310, 0
  %spec.select.i.i68.i = call i32 @llvm.uadd.sat.i32(i32 %312, i32 16) #8
  %retval.0.i.i69.i = select i1 %311, i32 -1, i32 %spec.select.i.i68.i
  %conv33.i.i = and i32 %retval.0.i.i69.i, 65535
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv33.i.i, i32 noundef 3521) #11
  %tobool35.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool35.not.i.i, label %if.end20.i.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge, label %if.end37.i.i

if.end20.i.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_streamgate_hw_set.exit.thread.i

if.end37.i.i:                                     ; preds = %if.end20.i.i
  %conv32.i.i = trunc i32 %retval.0.i.i69.i to i16
  %313 = call i16 @llvm.bswap.i16(i16 %conv32.i.i) #8
  %length.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i, i32 0, i32 2
  %314 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 %313, ptr %length.i.i, align 2
  %315 = ptrtoint ptr %si16.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %si16.i.i, align 4
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %316, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %318, i32 0, i32 44
  %call.i.i76.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i.i.i) #8
  br i1 %call.i.i76.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end37.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !78

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %dev.i.i) #8
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %318, i32 0, i32 44, i32 3
  %319 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i77.i = icmp eq ptr %320, null
  br i1 %tobool.not.i.i.i77.i, label %if.end.i.i218.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i.i

if.end.i.i218.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %321 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i218.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i78.i = phi ptr [ %322, %if.end.i.i218.i.i ], [ %320, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i78.i) #8
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef nonnull %call9.i.i.i.i, i32 noundef %conv33.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %323 = load ptr, ptr @mem_map, align 4
  %324 = ptrtoint ptr %call9.i.i.i.i to i32
  %sub.i.i.i = add i32 %324, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i79.i = getelementptr %struct.page, ptr %323, i32 %shr.i.i.i
  %and.i.i80.i = and i32 %324, 3968
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i.i79.i, i32 noundef %and.i.i80.i, i32 noundef %conv33.i.i, i32 noundef 2, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i219.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %325 = ptrtoint ptr %si16.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %si16.i.i, align 4
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %326, align 4
  %dev43.i.i = getelementptr inbounds %struct.pci_dev, ptr %328, i32 0, i32 44
  call void @debug_dma_mapping_error(ptr noundef %dev43.i.i, i32 noundef %retval.0.i219.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i219.i.i)
  %cmp.i.i81.i = icmp eq i32 %retval.0.i219.i.i, -1
  br i1 %cmp.i.i81.i, label %if.then46.i.i, label %if.end48.i.i

if.then46.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %329 = ptrtoint ptr %si16.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %si16.i.i, align 4
  %ndev.i.i = getelementptr inbounds %struct.enetc_si, ptr %330, i32 0, i32 3
  %331 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %ndev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %332, ptr noundef nonnull @.str.12) #12
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #8
  br label %enetc_streamgate_hw_set.exit.thread.i

if.end48.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i
  %333 = call i32 @llvm.bswap.i32(i32 %retval.0.i219.i.i) #8
  %334 = ptrtoint ptr %cbd.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %333, ptr %cbd.i.i, align 4
  %arrayidx52.i.i = getelementptr inbounds [2 x i32], ptr %cbd.i.i, i32 0, i32 1
  %335 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 0, ptr %arrayidx52.i.i, align 4
  %sgcl.i.i = getelementptr inbounds %struct.sgcl_data, ptr %call9.i.i.i.i, i32 0, i32 4
  %336 = ptrtoint ptr %ocgtst.i.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 -128, ptr %ocgtst.i.i, align 1
  %337 = ptrtoint ptr %cycletime205.i.i.i to i32
  call void @__asan_load8_noabort(i32 %337)
  %338 = load i64, ptr %cycletime205.i.i.i, align 16
  %conv55.i.i = trunc i64 %338 to i32
  %ct.i.i = getelementptr inbounds %struct.sgcl_data, ptr %call9.i.i.i.i, i32 0, i32 2
  %339 = ptrtoint ptr %ct.i.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %conv55.i.i, ptr %ct.i.i, align 8
  %cycletimext.i.i = getelementptr inbounds %struct.enetc_psfp_gate, ptr %call9.i.i.i.i.i, i32 0, i32 4
  %340 = ptrtoint ptr %cycletimext.i.i to i32
  call void @__asan_load8_noabort(i32 %340)
  %341 = load i64, ptr %cycletimext.i.i, align 8
  %conv56.i.i = trunc i64 %341 to i32
  %cte.i.i = getelementptr inbounds %struct.sgcl_data, ptr %call9.i.i.i.i, i32 0, i32 3
  %342 = ptrtoint ptr %cte.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %conv56.i.i, ptr %cte.i.i, align 4
  %343 = ptrtoint ptr %init_ipv.i.i.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %init_ipv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %344)
  %cmp59.i.i = icmp sgt i8 %344, -1
  br i1 %cmp59.i.i, label %if.then61.i.i, label %if.end48.i.i.if.end67.i.i_crit_edge

if.end48.i.i.if.end67.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i.i

if.then61.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %345 = and i8 %344, 7
  %346 = or i8 %345, 8
  %347 = ptrtoint ptr %oipv.i.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 %346, ptr %oipv.i.i, align 4
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.then61.i.i, %if.end48.i.i.if.end67.i.i_crit_edge
  %348 = ptrtoint ptr %num_entries207.i.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %num_entries207.i.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %cmp69239.not.i.i = icmp eq i32 %349, 0
  br i1 %cmp69239.not.i.i, label %if.end67.i.i.for.end.i84.i_crit_edge, label %for.body.i82.i.preheader

if.end67.i.i.for.end.i84.i_crit_edge:             ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i84.i

for.body.i82.i.preheader:                         ; preds = %if.end67.i.i
  %350 = ptrtoint ptr %num_entries207.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %num_entries207.i.i.i, align 32
  br label %for.body.i82.i

for.body.i82.i:                                   ; preds = %if.end113.i.i.for.body.i82.i_crit_edge, %for.body.i82.i.preheader
  %i.0240.i.i = phi i32 [ %inc.i83.i, %if.end113.i.i.for.body.i82.i_crit_edge ], [ 0, %for.body.i82.i.preheader ]
  %arrayidx71.i.i = getelementptr %struct.enetc_psfp_gate, ptr %call9.i.i.i.i.i, i32 0, i32 8, i32 %i.0240.i.i
  %arrayidx72.i.i = getelementptr %struct.sgce, ptr %sgcl.i.i, i32 %i.0240.i.i
  %352 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx71.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %353)
  %tobool73.not.i.i = icmp eq i8 %353, 0
  br i1 %tobool73.not.i.i, label %for.body.i82.i.if.end78.i.i_crit_edge, label %if.then74.i.i

for.body.i82.i.if.end78.i.i_crit_edge:            ; preds = %for.body.i82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.i.i

if.then74.i.i:                                    ; preds = %for.body.i82.i
  call void @__sanitizer_cov_trace_pc() #10
  %multi.i.i = getelementptr %struct.sgce, ptr %sgcl.i.i, i32 %i.0240.i.i, i32 2
  %354 = ptrtoint ptr %multi.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %multi.i.i, align 1
  %356 = or i8 %355, 16
  store i8 %356, ptr %multi.i.i, align 1
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.then74.i.i, %for.body.i82.i.if.end78.i.i_crit_edge
  %ipv.i.i = getelementptr %struct.enetc_psfp_gate, ptr %call9.i.i.i.i.i, i32 0, i32 8, i32 %i.0240.i.i, i32 2
  %357 = ptrtoint ptr %ipv.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %ipv.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %358)
  %cmp79.i.i = icmp sgt i32 %358, -1
  br i1 %cmp79.i.i, label %if.then81.i.i, label %if.end78.i.i.if.end89.i.i_crit_edge

if.end78.i.i.if.end89.i.i_crit_edge:              ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i.i

if.then81.i.i:                                    ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %multi85.i.i = getelementptr %struct.sgce, ptr %sgcl.i.i, i32 %i.0240.i.i, i32 2
  %359 = ptrtoint ptr %multi85.i.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %multi85.i.i, align 1
  %.tr.i.i = trunc i32 %358 to i8
  %361 = shl i8 %.tr.i.i, 5
  %362 = or i8 %361, %360
  %conv88.i.i = or i8 %362, 8
  store i8 %conv88.i.i, ptr %multi85.i.i, align 1
  br label %if.end89.i.i

if.end89.i.i:                                     ; preds = %if.then81.i.i, %if.end78.i.i.if.end89.i.i_crit_edge
  %maxoctets.i.i = getelementptr %struct.enetc_psfp_gate, ptr %call9.i.i.i.i.i, i32 0, i32 8, i32 %i.0240.i.i, i32 3
  %363 = ptrtoint ptr %maxoctets.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %maxoctets.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %364)
  %cmp90.i.i = icmp sgt i32 %364, -1
  br i1 %cmp90.i.i, label %if.then92.i.i, label %if.end89.i.i.if.end113.i.i_crit_edge

if.end89.i.i.if.end113.i.i_crit_edge:             ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113.i.i

if.then92.i.i:                                    ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %multi93.i.i = getelementptr %struct.sgce, ptr %sgcl.i.i, i32 %i.0240.i.i, i32 2
  %365 = ptrtoint ptr %multi93.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %multi93.i.i, align 1
  %367 = or i8 %366, 1
  store i8 %367, ptr %multi93.i.i, align 1
  %368 = ptrtoint ptr %maxoctets.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %maxoctets.i.i, align 4
  %conv99.i.i = trunc i32 %369 to i8
  %msdu.i.i = getelementptr %struct.sgce, ptr %sgcl.i.i, i32 %i.0240.i.i, i32 1
  %370 = ptrtoint ptr %msdu.i.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %conv99.i.i, ptr %msdu.i.i, align 4
  %371 = lshr i32 %369, 8
  %conv104.i.i = trunc i32 %371 to i8
  %arrayidx106.i.i = getelementptr %struct.sgce, ptr %sgcl.i.i, i32 %i.0240.i.i, i32 1, i32 1
  %372 = ptrtoint ptr %arrayidx106.i.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %conv104.i.i, ptr %arrayidx106.i.i, align 1
  %373 = load i32, ptr %maxoctets.i.i, align 4
  %374 = lshr i32 %373, 16
  %conv110.i.i = trunc i32 %374 to i8
  %arrayidx112.i.i = getelementptr %struct.sgce, ptr %sgcl.i.i, i32 %i.0240.i.i, i32 1, i32 2
  %375 = ptrtoint ptr %arrayidx112.i.i to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 %conv110.i.i, ptr %arrayidx112.i.i, align 2
  br label %if.end113.i.i

if.end113.i.i:                                    ; preds = %if.then92.i.i, %if.end89.i.i.if.end113.i.i_crit_edge
  %interval.i.i = getelementptr %struct.enetc_psfp_gate, ptr %call9.i.i.i.i.i, i32 0, i32 8, i32 %i.0240.i.i, i32 1
  %376 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %interval.i.i, align 4
  %378 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %377, ptr %arrayidx72.i.i, align 8
  %inc.i83.i = add nuw i32 %i.0240.i.i, 1
  %cmp69.i.i = icmp ult i32 %inc.i83.i, %351
  br i1 %cmp69.i.i, label %if.end113.i.i.for.body.i82.i_crit_edge, label %if.end113.i.i.for.end.i84.i_crit_edge

if.end113.i.i.for.end.i84.i_crit_edge:            ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i84.i

if.end113.i.i.for.body.i82.i_crit_edge:           ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i82.i

for.end.i84.i:                                    ; preds = %if.end113.i.i.for.end.i84.i_crit_edge, %if.end67.i.i.for.end.i84.i_crit_edge
  %379 = ptrtoint ptr %si16.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %si16.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.enetc_si, ptr %380, i32 0, i32 1
  %381 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %hw.i.i, align 4
  %add.ptr.i220.i.i = getelementptr i8, ptr %382, i32 24
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %383 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i220.i.i) #8, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %384 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %hw.i.i, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %385, i32 28
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %386 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #8, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %387 = zext i32 %386 to i64
  %388 = zext i32 %383 to i64
  %389 = shl nuw i64 %388, 32
  %390 = or i64 %389, %387
  %391 = call i64 @llvm.bswap.i64(i64 %390) #8
  %392 = ptrtoint ptr %basetime204.i.i.i to i32
  call void @__asan_load8_noabort(i32 %392)
  %393 = load i64, ptr %basetime204.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %393, i64 %391)
  %cmp117.i.i = icmp ult i64 %393, %391
  br i1 %cmp117.i.i, label %if.then119.i.i, label %if.else.i.i

if.then119.i.i:                                   ; preds = %for.end.i84.i
  %394 = ptrtoint ptr %cycletime205.i.i.i to i32
  call void @__asan_load8_noabort(i32 %394)
  %395 = load i64, ptr %cycletime205.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %395)
  %tobool.not.i.i85.i = icmp eq i64 %395, 0
  br i1 %tobool.not.i.i85.i, label %enetc_streamgate_hw_set.exit.thread141.i, label %cleanup.thread.i.i

enetc_streamgate_hw_set.exit.thread141.i:         ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i.i) #8
  br label %revert_sfi.i.i

cleanup.thread.i.i:                               ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i221.i.i = call i64 @div64_u64(i64 noundef %391, i64 noundef %395) #8
  %add.i.i86.i = add i64 %call.i221.i.i, 1
  %mul.i.i87.i = mul i64 %add.i.i86.i, %395
  %conv126.i.i = trunc i64 %mul.i.i87.i to i32
  %396 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %conv126.i.i, ptr %call9.i.i.i.i, align 128
  %shr127.i.i = lshr i64 %mul.i.i87.i, 32
  %conv129.i.i = trunc i64 %shr127.i.i to i32
  %bth.i.i = getelementptr inbounds %struct.sgcl_data, ptr %call9.i.i.i.i, i32 0, i32 1
  %397 = ptrtoint ptr %bth.i.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %conv129.i.i, ptr %bth.i.i, align 4
  br label %enetc_streamgate_hw_set.exit.i

if.else.i.i:                                      ; preds = %for.end.i84.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr131.i.i = lshr i64 %393, 32
  %conv133.i.i = trunc i64 %shr131.i.i to i32
  %conv136.i.i = trunc i64 %393 to i32
  %bth137.i.i = getelementptr inbounds %struct.sgcl_data, ptr %call9.i.i.i.i, i32 0, i32 1
  %398 = ptrtoint ptr %bth137.i.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %conv133.i.i, ptr %bth137.i.i, align 4
  %399 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %conv136.i.i, ptr %call9.i.i.i.i, align 128
  br label %enetc_streamgate_hw_set.exit.i

enetc_streamgate_hw_set.exit.thread.i:            ; preds = %if.then46.i.i, %if.end20.i.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge, %if.end9.i.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge, %lor.lhs.false.i.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge, %if.end4.i66.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge
  %retval.0.i89.ph.i = phi i32 [ -12, %if.end20.i.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge ], [ -22, %if.end9.i.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge ], [ -22, %if.end4.i66.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge ], [ -22, %lor.lhs.false.i.i.enetc_streamgate_hw_set.exit.thread.i_crit_edge ], [ -12, %if.then46.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i.i) #8
  br label %revert_sfi.i.i

enetc_streamgate_hw_set.exit.i:                   ; preds = %if.else.i.i, %cleanup.thread.i.i
  %400 = ptrtoint ptr %si16.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %si16.i.i, align 4
  %call141.i.i = call i32 @enetc_send_cmd(ptr noundef %401, ptr noundef nonnull %cbd.i.i) #8
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i.i)
  %tobool9.not.i.i = icmp eq i32 %call141.i.i, 0
  br i1 %tobool9.not.i.i, label %enetc_streamgate_hw_set.exit.i.if.end11.i.i_crit_edge, label %enetc_streamgate_hw_set.exit.i.revert_sfi.i.i_crit_edge

enetc_streamgate_hw_set.exit.i.revert_sfi.i.i_crit_edge: ; preds = %enetc_streamgate_hw_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert_sfi.i.i

enetc_streamgate_hw_set.exit.i.if.end11.i.i_crit_edge: ; preds = %enetc_streamgate_hw_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %enetc_streamgate_hw_set.exit.i.if.end11.i.i_crit_edge, %enetc_streamgate_hw_set.exit.thread138.i
  %tobool12.not.i.i = icmp eq ptr %fmi.1.i.i.i, null
  br i1 %tobool12.not.i.i, label %if.end11.i.i.if.end329.i.i.i_crit_edge, label %if.then13.i.i

if.end11.i.i.if.end329.i.i.i_crit_edge:           ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end329.i.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd.i.i44.i) #8
  %402 = getelementptr inbounds i8, ptr %cbd.i.i44.i, i32 16
  %403 = call ptr @memset(ptr %402, i32 0, i32 16)
  %404 = ptrtoint ptr %fmi.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %fmi.1.i.i.i, align 4
  %conv.i.i47.i = trunc i32 %405 to i16
  %406 = call i16 @llvm.bswap.i16(i16 %conv.i.i47.i) #8
  %index1.i.i48.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i44.i, i32 0, i32 1
  %407 = ptrtoint ptr %index1.i.i48.i to i32
  call void @__asan_store2_noabort(i32 %407)
  store i16 %406, ptr %index1.i.i48.i, align 4
  %cls.i.i49.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i44.i, i32 0, i32 4
  %408 = ptrtoint ptr %cls.i.i49.i to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 10, ptr %cls.i.i49.i, align 1
  %status_flags.i.i50.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i44.i, i32 0, i32 6
  %409 = ptrtoint ptr %status_flags.i.i50.i to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 -128, ptr %status_flags.i.i50.i, align 1
  %en.i.i.i = getelementptr inbounds %struct.fmi_conf, ptr %cbd.i.i44.i, i32 0, i32 8
  %410 = ptrtoint ptr %en.i.i.i to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 -128, ptr %en.i.i.i, align 1
  %cir.i.i51.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %fmi.1.i.i.i, i32 0, i32 1
  %411 = ptrtoint ptr %cir.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %cir.i.i51.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %412)
  %tobool2.not.i.i52.i = icmp eq i32 %412, 0
  br i1 %tobool2.not.i.i52.i, label %if.then13.i.i.enetc_flowmeter_hw_set.exit.i.i_crit_edge, label %if.then3.i.i54.i

if.then13.i.i.enetc_flowmeter_hw_set.exit.i.i_crit_edge: ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_flowmeter_hw_set.exit.i.i

if.then3.i.i54.i:                                 ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i.i.i = zext i32 %412 to i64
  %mul.i.i.i = mul nuw nsw i64 %conv5.i.i.i, 8000
  %413 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8304748942714340419, i64 %mul.i.i.i, i32 0) #13, !srcloc !81
  %asmresult.i.i.i.i.i53.i = extractvalue { i64, i32 } %413, 0
  %asmresult4.i.i.i.i.i.i = extractvalue { i64, i32 } %413, 1
  %414 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8304748942714340419, i64 %mul.i.i.i, i64 %asmresult.i.i.i.i.i53.i, i32 %asmresult4.i.i.i.i.i.i) #13, !srcloc !82
  %asmresult10.i.i.i.i.i.i = extractvalue { i64, i32 } %414, 0
  %div158.i.i25.i.i.i = lshr i64 %asmresult10.i.i.i.i.i.i, 11
  %extract.t.i.i.i = trunc i64 %div158.i.i25.i.i.i to i32
  br label %enetc_flowmeter_hw_set.exit.i.i

enetc_flowmeter_hw_set.exit.i.i:                  ; preds = %if.then3.i.i54.i, %if.then13.i.i.enetc_flowmeter_hw_set.exit.i.i_crit_edge
  %temp.0.off0.i.i.i = phi i32 [ %extract.t.i.i.i, %if.then3.i.i54.i ], [ 0, %if.then13.i.i.enetc_flowmeter_hw_set.exit.i.i_crit_edge ]
  %415 = call i32 @llvm.bswap.i32(i32 %temp.0.off0.i.i.i) #8
  %416 = ptrtoint ptr %cbd.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %415, ptr %cbd.i.i44.i, align 4
  %cbs.i.i55.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %fmi.1.i.i.i, i32 0, i32 2
  %417 = ptrtoint ptr %cbs.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %cbs.i.i55.i, align 4
  %419 = call i32 @llvm.bswap.i32(i32 %418) #8
  %cbs10.i.i.i = getelementptr inbounds %struct.fmi_conf, ptr %cbd.i.i44.i, i32 0, i32 1
  %420 = ptrtoint ptr %cbs10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 %419, ptr %cbs10.i.i.i, align 4
  %eir.i.i.i = getelementptr inbounds %struct.fmi_conf, ptr %cbd.i.i44.i, i32 0, i32 2
  %421 = ptrtoint ptr %eir.i.i.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 0, ptr %eir.i.i.i, align 4
  %ebs.i.i.i = getelementptr inbounds %struct.fmi_conf, ptr %cbd.i.i44.i, i32 0, i32 3
  %422 = ptrtoint ptr %ebs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 0, ptr %ebs.i.i.i, align 4
  %si11.i.i.i = getelementptr i8, ptr %cb_priv, i32 2312
  %423 = ptrtoint ptr %si11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %si11.i.i.i, align 4
  %call12.i.i.i = call i32 @enetc_send_cmd(ptr noundef %424, ptr noundef nonnull %cbd.i.i44.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i.i44.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %tobool15.not.i56.i = icmp eq i32 %call12.i.i.i, 0
  br i1 %tobool15.not.i56.i, label %enetc_flowmeter_hw_set.exit.i.i.if.end329.i.i.i_crit_edge, label %revert_sgi.i.i

enetc_flowmeter_hw_set.exit.i.i.if.end329.i.i.i_crit_edge: ; preds = %enetc_flowmeter_hw_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end329.i.i.i

revert_sgi.i.i:                                   ; preds = %enetc_flowmeter_hw_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd.i42.i.i) #8
  %425 = call ptr @memset(ptr %cbd.i42.i.i, i32 0, i32 32)
  %426 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %call9.i.i.i.i.i, align 128
  %conv.i43.i.i = trunc i32 %427 to i16
  %428 = call i16 @llvm.bswap.i16(i16 %conv.i43.i.i) #8
  %index1.i44.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i42.i.i, i32 0, i32 1
  %429 = ptrtoint ptr %index1.i44.i.i to i32
  call void @__asan_store2_noabort(i32 %429)
  store i16 %428, ptr %index1.i44.i.i, align 4
  %cls.i45.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i42.i.i, i32 0, i32 4
  %430 = ptrtoint ptr %cls.i45.i.i to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 9, ptr %cls.i45.i.i, align 1
  %status_flags.i46.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i42.i.i, i32 0, i32 6
  %431 = ptrtoint ptr %status_flags.i46.i.i to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 -128, ptr %status_flags.i46.i.i, align 1
  %432 = ptrtoint ptr %si11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %si11.i.i.i, align 4
  %call.i.i.i = call i32 @enetc_send_cmd(ptr noundef %433, ptr noundef nonnull %cbd.i42.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i42.i.i) #8
  br label %revert_sfi.i.i

revert_sfi.i.i:                                   ; preds = %revert_sgi.i.i, %enetc_streamgate_hw_set.exit.i.revert_sfi.i.i_crit_edge, %enetc_streamgate_hw_set.exit.thread.i, %enetc_streamgate_hw_set.exit.thread141.i
  %err.0.i.i = phi i32 [ %call141.i.i, %enetc_streamgate_hw_set.exit.i.revert_sfi.i.i_crit_edge ], [ %call12.i.i.i, %revert_sgi.i.i ], [ %retval.0.i89.ph.i, %enetc_streamgate_hw_set.exit.thread.i ], [ -14, %enetc_streamgate_hw_set.exit.thread141.i ]
  br i1 %tobool1.not.i133.i, label %revert_sfi.i.i.revert_sid.i.i_crit_edge, label %if.then21.i.i

revert_sfi.i.i.revert_sid.i.i_crit_edge:          ; preds = %revert_sfi.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert_sid.i.i

if.then21.i.i:                                    ; preds = %revert_sfi.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd.i47.i.i) #8
  %434 = call ptr @memset(ptr %cbd.i47.i.i, i32 0, i32 32)
  %si.i48.i.i = getelementptr i8, ptr %cb_priv, i32 2312
  %435 = ptrtoint ptr %si.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %si.i48.i.i, align 4
  %437 = ptrtoint ptr %436 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %436, align 4
  %devfn.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %438, i32 0, i32 6
  %439 = ptrtoint ptr %devfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %devfn.i.i.i.i, align 4
  %441 = zext i32 %440 to i64
  call void @__sanitizer_cov_trace_switch(i64 %441, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %440, label %if.then21.i.i.enetc_streamfilter_hw_set.exit.i.i_crit_edge [
    i32 0, label %if.then21.i.i.if.end.i.i58.i_crit_edge
    i32 1, label %if.then21.i.i.if.end.i.i58.i_crit_edge49
    i32 2, label %if.then21.i.i.if.end.i.i58.i_crit_edge50
    i32 6, label %if.then21.i.i.if.end.i.i58.i_crit_edge51
  ]

if.then21.i.i.if.end.i.i58.i_crit_edge51:         ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i58.i

if.then21.i.i.if.end.i.i58.i_crit_edge50:         ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i58.i

if.then21.i.i.if.end.i.i58.i_crit_edge49:         ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i58.i

if.then21.i.i.if.end.i.i58.i_crit_edge:           ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i58.i

if.then21.i.i.enetc_streamfilter_hw_set.exit.i.i_crit_edge: ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_streamfilter_hw_set.exit.i.i

if.end.i.i58.i:                                   ; preds = %if.then21.i.i.if.end.i.i58.i_crit_edge, %if.then21.i.i.if.end.i.i58.i_crit_edge49, %if.then21.i.i.if.end.i.i58.i_crit_edge50, %if.then21.i.i.if.end.i.i58.i_crit_edge51
  %442 = ptrtoint ptr %spec.select.i.i123128.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %spec.select.i.i123128.i, align 8
  %conv.i49.i.i = trunc i32 %443 to i16
  %444 = call i16 @llvm.bswap.i16(i16 %conv.i49.i.i) #8
  %index1.i50.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i47.i.i, i32 0, i32 1
  %445 = ptrtoint ptr %index1.i50.i.i to i32
  call void @__asan_store2_noabort(i32 %445)
  store i16 %444, ptr %index1.i50.i.i, align 4
  %cls.i51.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i47.i.i, i32 0, i32 4
  %446 = ptrtoint ptr %cls.i51.i.i to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 8, ptr %cls.i51.i.i, align 1
  %status_flags.i52.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i47.i.i, i32 0, i32 6
  %447 = ptrtoint ptr %status_flags.i52.i.i to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 -128, ptr %status_flags.i52.i.i, align 1
  %length.i.i57.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i47.i.i, i32 0, i32 2
  %448 = ptrtoint ptr %length.i.i57.i to i32
  call void @__asan_store2_noabort(i32 %448)
  store i16 256, ptr %length.i.i57.i, align 2
  %call43.i.i.i = call i32 @enetc_send_cmd(ptr noundef %436, ptr noundef nonnull %cbd.i47.i.i) #8
  br label %enetc_streamfilter_hw_set.exit.i.i

enetc_streamfilter_hw_set.exit.i.i:               ; preds = %if.end.i.i58.i, %if.then21.i.i.enetc_streamfilter_hw_set.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i47.i.i) #8
  br label %revert_sid.i.i

revert_sid.i.i:                                   ; preds = %enetc_streamfilter_hw_set.exit.i.i, %revert_sfi.i.i.revert_sid.i.i_crit_edge, %enetc_streamfilter_hw_set.exit.i.revert_sid.i.i_crit_edge, %enetc_streamfilter_hw_set.exit.thread.i
  %err.1.i.i = phi i32 [ %call43.i.i, %enetc_streamfilter_hw_set.exit.i.revert_sid.i.i_crit_edge ], [ %err.0.i.i, %enetc_streamfilter_hw_set.exit.i.i ], [ %err.0.i.i, %revert_sfi.i.i.revert_sid.i.i_crit_edge ], [ -22, %enetc_streamfilter_hw_set.exit.thread.i ]
  %call24.i.i = call fastcc i32 @enetc_streamid_hw_set(ptr noundef %add.ptr.i, ptr noundef %call7.i.i.i.i.i, i8 noundef zeroext 0) #8
  br label %free_fmi.i.i.i

if.end329.i.i.i:                                  ; preds = %enetc_flowmeter_hw_set.exit.i.i.if.end329.i.i.i_crit_edge, %if.end11.i.i.if.end329.i.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 6)) #8
  %flags330.i.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %449 = ptrtoint ptr %flags330.i.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %flags330.i.i.i, align 4
  %and.i73.i.i = and i32 %450, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i.i)
  %tobool331.not.i.i.i = icmp eq i32 %and.i73.i.i, 0
  br i1 %tobool331.not.i.i.i, label %if.end329.i.i.i.if.end345.i.i.i_crit_edge, label %if.then332.i.i.i

if.end329.i.i.i.if.end345.i.i.i_crit_edge:        ; preds = %if.end329.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end345.i.i.i

if.then332.i.i.i:                                 ; preds = %if.end329.i.i.i
  %fmi_index333.i.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %451 = ptrtoint ptr %fmi_index333.i.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %fmi_index333.i.i.i, align 8
  %453 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 5), align 4
  %tobool.not.i.i.i.i = icmp eq ptr %453, null
  %add.ptr.i594.i.i.i = getelementptr i8, ptr %453, i32 -16
  %tobool2.not2326.i.i.i.i = icmp eq ptr %add.ptr.i594.i.i.i, null
  %tobool2.not23.i.i.i.i = or i1 %tobool.not.i.i.i.i, %tobool2.not2326.i.i.i.i
  br i1 %tobool2.not23.i.i.i.i, label %if.then332.i.i.i.if.end343.i.i.i_crit_edge, label %if.then332.i.i.i.for.body.i.i.i.i_crit_edge

if.then332.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %if.then332.i.i.i
  br label %for.body.i.i.i.i

if.then332.i.i.i.if.end343.i.i.i_crit_edge:       ; preds = %if.then332.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end343.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then332.i.i.i.for.body.i.i.i.i_crit_edge
  %m.024.i.i.i.i = phi ptr [ %add.ptr10.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %add.ptr.i594.i.i.i, %if.then332.i.i.i.for.body.i.i.i.i_crit_edge ]
  %454 = ptrtoint ptr %m.024.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %m.024.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %455, i32 %452)
  %cmp.i595.i.i.i = icmp eq i32 %455, %452
  br i1 %cmp.i595.i.i.i, label %if.then336.i.i.i, label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %node.i.i.i.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %m.024.i.i.i.i, i32 0, i32 4
  %456 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %node.i.i.i.i, align 4
  %tobool6.not.i.i.i.i = icmp eq ptr %457, null
  %add.ptr10.i.i.i.i = getelementptr i8, ptr %457, i32 -16
  %tobool2.not27.i.i.i.i = icmp eq ptr %add.ptr10.i.i.i.i, null
  %tobool2.not.i.i.i.i = or i1 %tobool6.not.i.i.i.i, %tobool2.not27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i, label %for.inc.i.i.i.i.if.end343thread-pre-split.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.if.end343thread-pre-split.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end343thread-pre-split.i.i.i

if.then336.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %refcount337.i.i.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %fmi.1.i.i.i, i32 0, i32 3
  %refcount338.i.i.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %m.024.i.i.i.i, i32 0, i32 3
  %458 = ptrtoint ptr %refcount338.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %refcount338.i.i.i, align 4
  %460 = ptrtoint ptr %refcount337.i.i.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %459, ptr %refcount337.i.i.i, align 4
  %call.i.i.i596.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount338.i.i.i, i32 noundef 4) #8
  %461 = ptrtoint ptr %refcount338.i.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load volatile i32, ptr %refcount338.i.i.i, align 4
  %add342.i.i.i = add i32 %462, 1
  %call.i.i.i597.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount337.i.i.i, i32 noundef 4) #8
  %463 = ptrtoint ptr %refcount337.i.i.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store volatile i32 %add342.i.i.i, ptr %refcount337.i.i.i, align 4
  %node.i.i.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %m.024.i.i.i.i, i32 0, i32 4
  %464 = ptrtoint ptr %node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %node.i.i.i, align 4
  %pprev2.i.i.i.i.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %m.024.i.i.i.i, i32 0, i32 4, i32 1
  %466 = ptrtoint ptr %pprev2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %pprev2.i.i.i.i.i, align 4
  %468 = ptrtoint ptr %467 to i32
  call void @__asan_store4_noabort(i32 %468)
  store volatile ptr %465, ptr %467, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %465, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then336.i.i.i.hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then336.i.i.i.hlist_del.exit.i.i.i_crit_edge:  ; preds = %if.then336.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit.i.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then336.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %465, i32 0, i32 1
  %469 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store volatile ptr %467, ptr %pprev14.i.i.i.i.i, align 4
  br label %hlist_del.exit.i.i.i

hlist_del.exit.i.i.i:                             ; preds = %do.body13.i.i.i.i.i, %if.then336.i.i.i.hlist_del.exit.i.i.i_crit_edge
  %470 = ptrtoint ptr %node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i.i.i, align 4
  %471 = ptrtoint ptr %pprev2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %m.024.i.i.i.i) #8
  br label %if.end343thread-pre-split.i.i.i

if.end343thread-pre-split.i.i.i:                  ; preds = %hlist_del.exit.i.i.i, %for.inc.i.i.i.i.if.end343thread-pre-split.i.i.i_crit_edge
  %.pr.i.i.i = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 5), align 4
  br label %if.end343.i.i.i

if.end343.i.i.i:                                  ; preds = %if.end343thread-pre-split.i.i.i, %if.then332.i.i.i.if.end343.i.i.i_crit_edge
  %472 = phi ptr [ %.pr.i.i.i, %if.end343thread-pre-split.i.i.i ], [ %453, %if.then332.i.i.i.if.end343.i.i.i_crit_edge ]
  %node344.i.i.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %fmi.1.i.i.i, i32 0, i32 4
  %473 = ptrtoint ptr %node344.i.i.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store volatile ptr %472, ptr %node344.i.i.i, align 4
  %tobool.not.i598.i.i.i = icmp eq ptr %472, null
  br i1 %tobool.not.i598.i.i.i, label %if.end343.i.i.i.hlist_add_head.exit.i.i.i_crit_edge, label %do.body12.i.i.i.i

if.end343.i.i.i.hlist_add_head.exit.i.i.i_crit_edge: ; preds = %if.end343.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit.i.i.i

do.body12.i.i.i.i:                                ; preds = %if.end343.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %472, i32 0, i32 1
  %474 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store volatile ptr %node344.i.i.i, ptr %pprev.i.i.i.i, align 4
  br label %hlist_add_head.exit.i.i.i

hlist_add_head.exit.i.i.i:                        ; preds = %do.body12.i.i.i.i, %if.end343.i.i.i.hlist_add_head.exit.i.i.i_crit_edge
  store volatile ptr %node344.i.i.i, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 5), align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %fmi.1.i.i.i, i32 0, i32 4, i32 1
  %475 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %475)
  store volatile ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 5), ptr %pprev34.i.i.i.i, align 4
  br label %if.end345.i.i.i

if.end345.i.i.i:                                  ; preds = %hlist_add_head.exit.i.i.i, %if.end329.i.i.i.if.end345.i.i.i_crit_edge
  %476 = ptrtoint ptr %sgi_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %sgi_index.i.i.i, align 8
  %478 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 4), align 4
  %tobool.not.i599.i.i.i = icmp eq ptr %478, null
  %add.ptr.i600.i.i.i = getelementptr i8, ptr %478, i32 -40
  %tobool2.not2326.i601.i.i.i = icmp eq ptr %add.ptr.i600.i.i.i, null
  %tobool2.not23.i602.i.i.i = or i1 %tobool.not.i599.i.i.i, %tobool2.not2326.i601.i.i.i
  br i1 %tobool2.not23.i602.i.i.i, label %if.end345.i.i.i.if.end355.i.i.i_crit_edge, label %if.end345.i.i.i.for.body.i604.i.i.i_crit_edge

if.end345.i.i.i.for.body.i604.i.i.i_crit_edge:    ; preds = %if.end345.i.i.i
  br label %for.body.i604.i.i.i

if.end345.i.i.i.if.end355.i.i.i_crit_edge:        ; preds = %if.end345.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end355.i.i.i

for.body.i604.i.i.i:                              ; preds = %for.inc.i610.i.i.i.for.body.i604.i.i.i_crit_edge, %if.end345.i.i.i.for.body.i604.i.i.i_crit_edge
  %g.024.i.i.i.i = phi ptr [ %add.ptr10.i607.i.i.i, %for.inc.i610.i.i.i.for.body.i604.i.i.i_crit_edge ], [ %add.ptr.i600.i.i.i, %if.end345.i.i.i.for.body.i604.i.i.i_crit_edge ]
  %479 = ptrtoint ptr %g.024.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %g.024.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %480, i32 %477)
  %cmp.i603.i.i.i = icmp eq i32 %480, %477
  br i1 %cmp.i603.i.i.i, label %if.then349.i.i.i, label %for.inc.i610.i.i.i

for.inc.i610.i.i.i:                               ; preds = %for.body.i604.i.i.i
  %node.i605.i.i.i = getelementptr inbounds %struct.enetc_psfp_gate, ptr %g.024.i.i.i.i, i32 0, i32 7
  %481 = ptrtoint ptr %node.i605.i.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %node.i605.i.i.i, align 8
  %tobool6.not.i606.i.i.i = icmp eq ptr %482, null
  %add.ptr10.i607.i.i.i = getelementptr i8, ptr %482, i32 -40
  %tobool2.not27.i608.i.i.i = icmp eq ptr %add.ptr10.i607.i.i.i, null
  %tobool2.not.i609.i.i.i = or i1 %tobool6.not.i606.i.i.i, %tobool2.not27.i608.i.i.i
  br i1 %tobool2.not.i609.i.i.i, label %for.inc.i610.i.i.i.if.end355thread-pre-split.i.i.i_crit_edge, label %for.inc.i610.i.i.i.for.body.i604.i.i.i_crit_edge

for.inc.i610.i.i.i.for.body.i604.i.i.i_crit_edge: ; preds = %for.inc.i610.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i604.i.i.i

for.inc.i610.i.i.i.if.end355thread-pre-split.i.i.i_crit_edge: ; preds = %for.inc.i610.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end355thread-pre-split.i.i.i

if.then349.i.i.i:                                 ; preds = %for.body.i604.i.i.i
  %refcount351.i.i.i = getelementptr inbounds %struct.enetc_psfp_gate, ptr %g.024.i.i.i.i, i32 0, i32 6
  %call.i.i.i611.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount351.i.i.i, i32 noundef 4) #8
  %483 = ptrtoint ptr %refcount351.i.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load volatile i32, ptr %refcount351.i.i.i, align 4
  %add353.i.i.i = add i32 %484, 1
  %call.i.i.i612.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #8
  %485 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_store4_noabort(i32 %485)
  store volatile i32 %add353.i.i.i, ptr %refcount.i.i.i, align 4
  %node354.i.i.i = getelementptr inbounds %struct.enetc_psfp_gate, ptr %g.024.i.i.i.i, i32 0, i32 7
  %486 = ptrtoint ptr %node354.i.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %node354.i.i.i, align 4
  %pprev2.i.i613.i.i.i = getelementptr inbounds %struct.enetc_psfp_gate, ptr %g.024.i.i.i.i, i32 0, i32 7, i32 1
  %488 = ptrtoint ptr %pprev2.i.i613.i.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %pprev2.i.i613.i.i.i, align 4
  %490 = ptrtoint ptr %489 to i32
  call void @__asan_store4_noabort(i32 %490)
  store volatile ptr %487, ptr %489, align 4
  %tobool.not.i.i614.i.i.i = icmp eq ptr %487, null
  br i1 %tobool.not.i.i614.i.i.i, label %if.then349.i.i.i.hlist_del.exit617.i.i.i_crit_edge, label %do.body13.i.i616.i.i.i

if.then349.i.i.i.hlist_del.exit617.i.i.i_crit_edge: ; preds = %if.then349.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit617.i.i.i

do.body13.i.i616.i.i.i:                           ; preds = %if.then349.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i615.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %487, i32 0, i32 1
  %491 = ptrtoint ptr %pprev14.i.i615.i.i.i to i32
  call void @__asan_store4_noabort(i32 %491)
  store volatile ptr %489, ptr %pprev14.i.i615.i.i.i, align 4
  br label %hlist_del.exit617.i.i.i

hlist_del.exit617.i.i.i:                          ; preds = %do.body13.i.i616.i.i.i, %if.then349.i.i.i.hlist_del.exit617.i.i.i_crit_edge
  %492 = ptrtoint ptr %node354.i.i.i to i32
  call void @__asan_store4_noabort(i32 %492)
  store ptr inttoptr (i32 256 to ptr), ptr %node354.i.i.i, align 4
  %493 = ptrtoint ptr %pprev2.i.i613.i.i.i to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i613.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %g.024.i.i.i.i) #8
  br label %if.end355thread-pre-split.i.i.i

if.end355thread-pre-split.i.i.i:                  ; preds = %hlist_del.exit617.i.i.i, %for.inc.i610.i.i.i.if.end355thread-pre-split.i.i.i_crit_edge
  %.pr657.i.i.i = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 4), align 4
  br label %if.end355.i.i.i

if.end355.i.i.i:                                  ; preds = %if.end355thread-pre-split.i.i.i, %if.end345.i.i.i.if.end355.i.i.i_crit_edge
  %494 = phi ptr [ %.pr657.i.i.i, %if.end355thread-pre-split.i.i.i ], [ %478, %if.end345.i.i.i.if.end355.i.i.i_crit_edge ]
  %node356.i.i.i = getelementptr inbounds %struct.enetc_psfp_gate, ptr %call9.i.i.i.i.i, i32 0, i32 7
  %495 = ptrtoint ptr %node356.i.i.i to i32
  call void @__asan_store4_noabort(i32 %495)
  store volatile ptr %494, ptr %node356.i.i.i, align 8
  %tobool.not.i618.i.i.i = icmp eq ptr %494, null
  br i1 %tobool.not.i618.i.i.i, label %if.end355.i.i.i.hlist_add_head.exit622.i.i.i_crit_edge, label %do.body12.i620.i.i.i

if.end355.i.i.i.hlist_add_head.exit622.i.i.i_crit_edge: ; preds = %if.end355.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit622.i.i.i

do.body12.i620.i.i.i:                             ; preds = %if.end355.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i619.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %494, i32 0, i32 1
  %496 = ptrtoint ptr %pprev.i619.i.i.i to i32
  call void @__asan_store4_noabort(i32 %496)
  store volatile ptr %node356.i.i.i, ptr %pprev.i619.i.i.i, align 4
  br label %hlist_add_head.exit622.i.i.i

hlist_add_head.exit622.i.i.i:                     ; preds = %do.body12.i620.i.i.i, %if.end355.i.i.i.hlist_add_head.exit622.i.i.i_crit_edge
  store volatile ptr %node356.i.i.i, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 4), align 4
  %pprev34.i621.i.i.i = getelementptr inbounds %struct.enetc_psfp_gate, ptr %call9.i.i.i.i.i, i32 0, i32 7, i32 1
  %497 = ptrtoint ptr %pprev34.i621.i.i.i to i32
  call void @__asan_store4_noabort(i32 %497)
  store volatile ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 4), ptr %pprev34.i621.i.i.i, align 4
  br i1 %tobool291.not.i.i112120132.i, label %if.then358.i.i.i, label %if.else361.i.i.i

if.then358.i.i.i:                                 ; preds = %hlist_add_head.exit622.i.i.i
  %node359.i.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %call7.i.i582.i.i.i, i32 0, i32 7
  %498 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 3), align 4
  %499 = ptrtoint ptr %node359.i.i.i to i32
  call void @__asan_store4_noabort(i32 %499)
  store volatile ptr %498, ptr %node359.i.i.i, align 4
  %tobool.not.i623.i.i.i = icmp eq ptr %498, null
  br i1 %tobool.not.i623.i.i.i, label %if.then358.i.i.i.hlist_add_head.exit627.i.i.i_crit_edge, label %do.body12.i625.i.i.i

if.then358.i.i.i.hlist_add_head.exit627.i.i.i_crit_edge: ; preds = %if.then358.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit627.i.i.i

do.body12.i625.i.i.i:                             ; preds = %if.then358.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i624.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %498, i32 0, i32 1
  %500 = ptrtoint ptr %pprev.i624.i.i.i to i32
  call void @__asan_store4_noabort(i32 %500)
  store volatile ptr %node359.i.i.i, ptr %pprev.i624.i.i.i, align 4
  br label %hlist_add_head.exit627.i.i.i

hlist_add_head.exit627.i.i.i:                     ; preds = %do.body12.i625.i.i.i, %if.then358.i.i.i.hlist_add_head.exit627.i.i.i_crit_edge
  store volatile ptr %node359.i.i.i, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 3), align 4
  %pprev34.i626.i.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %call7.i.i582.i.i.i, i32 0, i32 7, i32 1
  %501 = ptrtoint ptr %pprev34.i626.i.i.i to i32
  call void @__asan_store4_noabort(i32 %501)
  store volatile ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 3), ptr %pprev34.i626.i.i.i, align 8
  %502 = ptrtoint ptr %call7.i.i582.i.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %call7.i.i582.i.i.i, align 8
  %504 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 1), align 4
  call void @_set_bit(i32 noundef %503, ptr noundef %504) #8
  br label %if.end363.i.i.i

if.else361.i.i.i:                                 ; preds = %hlist_add_head.exit622.i.i.i
  call void @kfree(ptr noundef nonnull %call7.i.i582.i.i.i) #8
  %refcount362.i.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %s.0.lcssa.i110122130.i, i32 0, i32 6
  %call.i.i.i.i.i43.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount362.i.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %refcount362.i.i.i, i32 1, i32 3, i32 1) #8
  %505 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount362.i.i.i, ptr %refcount362.i.i.i, i32 1, ptr elementtype(i32) %refcount362.i.i.i) #8, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %505, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else361.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !84

if.else361.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else361.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else361.i.i.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %506 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %506)
  %.not.i.i.i.i = icmp sgt i32 %506, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end363.i.i.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !78

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end363.i.i.i_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end363.i.i.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else361.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else361.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount362.i.i.i, i32 noundef %.sink.i.i.i.i) #8
  br label %if.end363.i.i.i

if.end363.i.i.i:                                  ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end363.i.i.i_crit_edge, %hlist_add_head.exit627.i.i.i
  %507 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %call7.i.i.i.i.i, align 8
  %509 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 2), align 4
  %tobool.not.i628.i.i.i = icmp eq ptr %509, null
  %add.ptr.i629.i.i.i = getelementptr i8, ptr %509, i32 -80
  %tobool2.not2326.i630.i.i.i = icmp eq ptr %add.ptr.i629.i.i.i, null
  %tobool2.not23.i631.i.i.i = or i1 %tobool.not.i628.i.i.i, %tobool2.not2326.i630.i.i.i
  br i1 %tobool2.not23.i631.i.i.i, label %if.end363.i.i.i.if.end369.i.i.i_crit_edge, label %if.end363.i.i.i.for.body.i633.i.i.i_crit_edge

if.end363.i.i.i.for.body.i633.i.i.i_crit_edge:    ; preds = %if.end363.i.i.i
  br label %for.body.i633.i.i.i

if.end363.i.i.i.if.end369.i.i.i_crit_edge:        ; preds = %if.end363.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369.i.i.i

for.body.i633.i.i.i:                              ; preds = %for.inc.i639.i.i.i.for.body.i633.i.i.i_crit_edge, %if.end363.i.i.i.for.body.i633.i.i.i_crit_edge
  %f.024.i.i.i.i = phi ptr [ %add.ptr10.i636.i.i.i, %for.inc.i639.i.i.i.for.body.i633.i.i.i_crit_edge ], [ %add.ptr.i629.i.i.i, %if.end363.i.i.i.for.body.i633.i.i.i_crit_edge ]
  %510 = ptrtoint ptr %f.024.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %f.024.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %511, i32 %508)
  %cmp.i632.i.i.i = icmp eq i32 %511, %508
  br i1 %cmp.i632.i.i.i, label %if.then368.i.i.i, label %for.inc.i639.i.i.i

for.inc.i639.i.i.i:                               ; preds = %for.body.i633.i.i.i
  %node.i634.i.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %f.024.i.i.i.i, i32 0, i32 6
  %512 = ptrtoint ptr %node.i634.i.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %node.i634.i.i.i, align 8
  %tobool6.not.i635.i.i.i = icmp eq ptr %513, null
  %add.ptr10.i636.i.i.i = getelementptr i8, ptr %513, i32 -80
  %tobool2.not27.i637.i.i.i = icmp eq ptr %add.ptr10.i636.i.i.i, null
  %tobool2.not.i638.i.i.i = or i1 %tobool6.not.i635.i.i.i, %tobool2.not27.i637.i.i.i
  br i1 %tobool2.not.i638.i.i.i, label %for.inc.i639.i.i.i.if.end369thread-pre-split.i.i.i_crit_edge, label %for.inc.i639.i.i.i.for.body.i633.i.i.i_crit_edge

for.inc.i639.i.i.i.for.body.i633.i.i.i_crit_edge: ; preds = %for.inc.i639.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i633.i.i.i

for.inc.i639.i.i.i.if.end369thread-pre-split.i.i.i_crit_edge: ; preds = %for.inc.i639.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369thread-pre-split.i.i.i

if.then368.i.i.i:                                 ; preds = %for.body.i633.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @remove_one_chain(ptr noundef %add.ptr.i, ptr noundef nonnull %f.024.i.i.i.i) #8
  br label %if.end369thread-pre-split.i.i.i

if.end369thread-pre-split.i.i.i:                  ; preds = %if.then368.i.i.i, %for.inc.i639.i.i.i.if.end369thread-pre-split.i.i.i_crit_edge
  %.pr658.i.i.i = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 2), align 4
  br label %if.end369.i.i.i

if.end369.i.i.i:                                  ; preds = %if.end369thread-pre-split.i.i.i, %if.end363.i.i.i.if.end369.i.i.i_crit_edge
  %514 = phi ptr [ %.pr658.i.i.i, %if.end369thread-pre-split.i.i.i ], [ %509, %if.end363.i.i.i.if.end369.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %515 = load volatile i32, ptr @jiffies, align 128
  %conv370.i.i.i = zext i32 %515 to i64
  %lastused.i.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 3
  %516 = ptrtoint ptr %lastused.i.i.i to i32
  call void @__asan_store8_noabort(i32 %516)
  store i64 %conv370.i.i.i, ptr %lastused.i.i.i, align 8
  %node371.i.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %517 = ptrtoint ptr %node371.i.i.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store volatile ptr %514, ptr %node371.i.i.i, align 8
  %tobool.not.i640.i.i.i = icmp eq ptr %514, null
  br i1 %tobool.not.i640.i.i.i, label %if.end369.i.i.i.enetc_psfp_parse_clsflower.exit.i.i_crit_edge, label %do.body12.i642.i.i.i

if.end369.i.i.i.enetc_psfp_parse_clsflower.exit.i.i_crit_edge: ; preds = %if.end369.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_psfp_parse_clsflower.exit.i.i

do.body12.i642.i.i.i:                             ; preds = %if.end369.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i641.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %514, i32 0, i32 1
  %518 = ptrtoint ptr %pprev.i641.i.i.i to i32
  call void @__asan_store4_noabort(i32 %518)
  store volatile ptr %node371.i.i.i, ptr %pprev.i641.i.i.i, align 4
  br label %enetc_psfp_parse_clsflower.exit.i.i

free_fmi.i.i.i:                                   ; preds = %revert_sid.i.i, %if.end322.i.i.thread.i.free_fmi.i.i.i_crit_edge, %if.end322.i.i.i.free_fmi.i.i.i_crit_edge, %if.then301.i.i.i, %do.body298.i.i.i.free_fmi.i.i.i_crit_edge
  %err.4.i.i.i = phi i32 [ -28, %if.then301.i.i.i ], [ -28, %do.body298.i.i.i.free_fmi.i.i.i_crit_edge ], [ %call.i117.i, %if.end322.i.i.thread.i.free_fmi.i.i.i_crit_edge ], [ %call.i.i, %if.end322.i.i.i.free_fmi.i.i.i_crit_edge ], [ %err.1.i.i, %revert_sid.i.i ]
  call void @kfree(ptr noundef %fmi.1.i.i.i) #8
  br label %free_sfi.i.i.i

free_sfi.i.i.i:                                   ; preds = %free_fmi.i.i.i, %if.then255.i.i.i.free_sfi.i.i.i_crit_edge, %if.then248.i.i.i, %do.body245.i.i.i.free_sfi.i.i.i_crit_edge
  %err.5.i.i.i = phi i32 [ %err.4.i.i.i, %free_fmi.i.i.i ], [ -95, %if.then248.i.i.i ], [ -95, %do.body245.i.i.i.free_sfi.i.i.i_crit_edge ], [ -12, %if.then255.i.i.i.free_sfi.i.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i582.i.i.i) #8
  br label %free_gate.i.i.i

free_gate.i.i.i:                                  ; preds = %free_sfi.i.i.i, %for.end233.i.i.i.free_gate.i.i.i_crit_edge
  %err.6.i.i.i = phi i32 [ %err.5.i.i.i, %free_sfi.i.i.i ], [ -12, %for.end233.i.i.i.free_gate.i.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i) #8
  br label %free_filter.i.i.i

free_filter.i.i.i:                                ; preds = %free_gate.i.i.i, %if.end8.i.i.i.i.i.free_filter.i.i.i_crit_edge, %if.then189.i.i.i, %do.body186.i.i.i.free_filter.i.i.i_crit_edge, %if.then175.i.i.i, %do.body172.i.i.i.free_filter.i.i.i_crit_edge, %cleanup161.thread.i.i.i, %if.then99.i.i.i, %do.body96.i.i.i.free_filter.i.i.i_crit_edge, %cleanup.thread.i.i.i
  %err.7.i.i.i = phi i32 [ %err.6.i.i.i, %free_gate.i.i.i ], [ -22, %if.then99.i.i.i ], [ -22, %do.body96.i.i.i.free_filter.i.i.i_crit_edge ], [ -28, %if.then175.i.i.i ], [ -28, %do.body172.i.i.i.free_filter.i.i.i_crit_edge ], [ -28, %if.then189.i.i.i ], [ -28, %do.body186.i.i.i.free_filter.i.i.i_crit_edge ], [ -12, %if.end8.i.i.i.i.i.free_filter.i.i.i_crit_edge ], [ -22, %cleanup.thread.i.i.i ], [ -22, %cleanup161.thread.i.i.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #8
  br label %do.body27.i.i

enetc_psfp_parse_clsflower.exit.i.i:              ; preds = %do.body12.i642.i.i.i, %if.end369.i.i.i.enetc_psfp_parse_clsflower.exit.i.i_crit_edge
  store volatile ptr %node371.i.i.i, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 2), align 4
  %pprev34.i643.i.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %call7.i.i.i.i.i, i32 0, i32 6, i32 1
  %519 = ptrtoint ptr %pprev34.i643.i.i.i to i32
  call void @__asan_store4_noabort(i32 %519)
  store volatile ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 2), ptr %pprev34.i643.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 6)) #8
  br label %cleanup

do.body27.i.i:                                    ; preds = %free_filter.i.i.i, %if.end20.i.i.i.do.body27.i.i_crit_edge, %for.end.i.i.i.do.body27.i.i_crit_edge
  %retval.0.i74.ph.i.i = phi i32 [ -12, %if.end20.i.i.i.do.body27.i.i_crit_edge ], [ -22, %for.end.i.i.i.do.body27.i.i_crit_edge ], [ %err.7.i.i.i, %free_filter.i.i.i ]
  call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_config_clsflower.__msg.16) #8
  %tobool29.not.i.i = icmp eq ptr %8, null
  br i1 %tobool29.not.i.i, label %do.body27.i.i.cleanup_crit_edge, label %do.body27.i.i.if.then30.i.i_crit_edge

do.body27.i.i.if.then30.i.i_crit_edge:            ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30.i.i

do.body27.i.i.cleanup_crit_edge:                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30.i.i:                                    ; preds = %do.body27.i.i.if.then30.i.i_crit_edge, %do.body27.thread83.i.i
  %retval.0.i74.ph86.i.i = phi i32 [ -28, %do.body27.thread83.i.i ], [ %retval.0.i74.ph.i.i, %do.body27.i.i.if.then30.i.i_crit_edge ]
  %520 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %520)
  store ptr @enetc_config_clsflower.__msg.16, ptr %8, align 4
  br label %cleanup

do.body36.i.i:                                    ; preds = %if.end21.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_config_clsflower.__msg.17) #8
  %tobool38.not.i.i = icmp eq ptr %8, null
  br i1 %tobool38.not.i.i, label %do.body36.i.i.cleanup_crit_edge, label %if.then39.i.i

do.body36.i.i.cleanup_crit_edge:                  ; preds = %do.body36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39.i.i:                                    ; preds = %do.body36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %521 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %521)
  store ptr @enetc_config_clsflower.__msg.17, ptr %8, align 4
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb
  %extack1.i.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %522 = ptrtoint ptr %extack1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %extack1.i.i.i, align 4
  %524 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %type_data, align 8
  %psfp_cap.i.i10.i = getelementptr i8, ptr %cb_priv, i32 2484
  %526 = ptrtoint ptr %psfp_cap.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %psfp_cap.i.i10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %525, i32 %527)
  %cmp.not.i.i11.i = icmp ult i32 %525, %527
  br i1 %cmp.not.i.i11.i, label %if.end4.i.i.i, label %do.body.i.i13.i

do.body.i.i13.i:                                  ; preds = %sw.bb1.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @enetc_psfp_destroy_clsflower.__msg) #8
  %tobool.not.i.i12.i = icmp eq ptr %523, null
  br i1 %tobool.not.i.i12.i, label %do.body.i.i13.i.cleanup_crit_edge, label %if.then3.i.i.i

do.body.i.i13.i.cleanup_crit_edge:                ; preds = %do.body.i.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i.i.i:                                   ; preds = %do.body.i.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  %528 = ptrtoint ptr %523 to i32
  call void @__asan_store4_noabort(i32 %528)
  store ptr @enetc_psfp_destroy_clsflower.__msg, ptr %523, align 4
  br label %cleanup

if.end4.i.i.i:                                    ; preds = %sw.bb1.i
  %529 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 2), align 4
  %tobool.not.i.i.i14.i = icmp eq ptr %529, null
  %add.ptr.i.i.i15.i = getelementptr i8, ptr %529, i32 -80
  %tobool2.not2326.i.i.i16.i = icmp eq ptr %add.ptr.i.i.i15.i, null
  %tobool2.not23.i.i.i17.i = or i1 %tobool.not.i.i.i14.i, %tobool2.not2326.i.i.i16.i
  br i1 %tobool2.not23.i.i.i17.i, label %if.end4.i.i.i.cleanup_crit_edge, label %if.end4.i.i.i.for.body.i.i.i20.i_crit_edge

if.end4.i.i.i.for.body.i.i.i20.i_crit_edge:       ; preds = %if.end4.i.i.i
  br label %for.body.i.i.i20.i

if.end4.i.i.i.cleanup_crit_edge:                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i.i20.i:                               ; preds = %for.inc.i.i.i26.i.for.body.i.i.i20.i_crit_edge, %if.end4.i.i.i.for.body.i.i.i20.i_crit_edge
  %f.024.i.i.i18.i = phi ptr [ %add.ptr10.i.i.i23.i, %for.inc.i.i.i26.i.for.body.i.i.i20.i_crit_edge ], [ %add.ptr.i.i.i15.i, %if.end4.i.i.i.for.body.i.i.i20.i_crit_edge ]
  %530 = ptrtoint ptr %f.024.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %f.024.i.i.i18.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %531, i32 %525)
  %cmp.i.i.i19.i = icmp eq i32 %531, %525
  br i1 %cmp.i.i.i19.i, label %if.end9.i.i.i, label %for.inc.i.i.i26.i

for.inc.i.i.i26.i:                                ; preds = %for.body.i.i.i20.i
  %node.i.i.i21.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %f.024.i.i.i18.i, i32 0, i32 6
  %532 = ptrtoint ptr %node.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %node.i.i.i21.i, align 8
  %tobool6.not.i.i.i22.i = icmp eq ptr %533, null
  %add.ptr10.i.i.i23.i = getelementptr i8, ptr %533, i32 -80
  %tobool2.not27.i.i.i24.i = icmp eq ptr %add.ptr10.i.i.i23.i, null
  %tobool2.not.i.i.i25.i = or i1 %tobool6.not.i.i.i22.i, %tobool2.not27.i.i.i24.i
  br i1 %tobool2.not.i.i.i25.i, label %for.inc.i.i.i26.i.cleanup_crit_edge, label %for.inc.i.i.i26.i.for.body.i.i.i20.i_crit_edge

for.inc.i.i.i26.i.for.body.i.i.i20.i_crit_edge:   ; preds = %for.inc.i.i.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i20.i

for.inc.i.i.i26.i.cleanup_crit_edge:              ; preds = %for.inc.i.i.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9.i.i.i:                                    ; preds = %for.body.i.i.i20.i
  %call10.i.i.i = tail call fastcc i32 @enetc_streamid_hw_set(ptr noundef %add.ptr.i, ptr noundef nonnull %f.024.i.i.i18.i, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.end13.i.i.i, label %if.end9.i.i.i.cleanup_crit_edge

if.end9.i.i.i.cleanup_crit_edge:                  ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.i.i.i:                                   ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @remove_one_chain(ptr noundef %add.ptr.i, ptr noundef nonnull %f.024.i.i.i18.i) #8
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb
  %534 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %type_data, align 8
  %536 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 2), align 4
  %tobool.not.i.i27.i = icmp eq ptr %536, null
  %add.ptr.i.i.i = getelementptr i8, ptr %536, i32 -80
  %tobool2.not2326.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not23.i.i.i = or i1 %tobool.not.i.i27.i, %tobool2.not2326.i.i.i
  br i1 %tobool2.not23.i.i.i, label %sw.bb3.i.cleanup_crit_edge, label %sw.bb3.i.for.body.i.i28.i_crit_edge

sw.bb3.i.for.body.i.i28.i_crit_edge:              ; preds = %sw.bb3.i
  br label %for.body.i.i28.i

sw.bb3.i.cleanup_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i28.i:                                 ; preds = %for.inc.i.i30.i.for.body.i.i28.i_crit_edge, %sw.bb3.i.for.body.i.i28.i_crit_edge
  %f.024.i.i.i = phi ptr [ %add.ptr10.i.i.i, %for.inc.i.i30.i.for.body.i.i28.i_crit_edge ], [ %add.ptr.i.i.i, %sw.bb3.i.for.body.i.i28.i_crit_edge ]
  %537 = ptrtoint ptr %f.024.i.i.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %f.024.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %538, i32 %535)
  %cmp.i.i.i = icmp eq i32 %538, %535
  br i1 %cmp.i.i.i, label %if.end.i.i, label %for.inc.i.i30.i

for.inc.i.i30.i:                                  ; preds = %for.body.i.i28.i
  %node.i.i29.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %f.024.i.i.i, i32 0, i32 6
  %539 = ptrtoint ptr %node.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %node.i.i29.i, align 8
  %tobool6.not.i.i.i = icmp eq ptr %540, null
  %add.ptr10.i.i.i = getelementptr i8, ptr %540, i32 -80
  %tobool2.not27.i.i.i = icmp eq ptr %add.ptr10.i.i.i, null
  %tobool2.not.i.i.i = or i1 %tobool6.not.i.i.i, %tobool2.not27.i.i.i
  br i1 %tobool2.not.i.i.i, label %for.inc.i.i30.i.cleanup_crit_edge, label %for.inc.i.i30.i.for.body.i.i28.i_crit_edge

for.inc.i.i30.i.for.body.i.i28.i_crit_edge:       ; preds = %for.inc.i.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i28.i

for.inc.i.i30.i.cleanup_crit_edge:                ; preds = %for.inc.i.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %for.body.i.i28.i
  %sfi_index.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %f.024.i.i.i, i32 0, i32 1
  %541 = ptrtoint ptr %sfi_index.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %sfi_index.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd.i.i.i) #8
  %543 = call ptr @memcpy(ptr %cbd.i.i.i, ptr @__const.enetc_streamcounter_hw_get.cbd, i32 32)
  %conv.i.i31.i = trunc i32 %542 to i16
  %544 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i31.i) #8
  %index1.i.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i.i, i32 0, i32 1
  %545 = ptrtoint ptr %index1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %545)
  store i16 %544, ptr %index1.i.i.i, align 4
  %cmd.i.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i.i, i32 0, i32 3
  %546 = ptrtoint ptr %cmd.i.i.i to i32
  call void @__asan_store1_noabort(i32 %546)
  store i8 2, ptr %cmd.i.i.i, align 4
  %cls.i.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i.i, i32 0, i32 4
  %547 = ptrtoint ptr %cls.i.i.i to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 8, ptr %cls.i.i.i, align 1
  %status_flags.i.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i.i, i32 0, i32 6
  %548 = ptrtoint ptr %status_flags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 0, ptr %status_flags.i.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %549 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i.i.i.i32.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %549, i32 noundef 3521, i32 noundef 32) #14
  %tobool.not.i42.i.i = icmp eq ptr %call7.i.i.i.i32.i, null
  br i1 %tobool.not.i42.i.i, label %enetc_streamcounter_hw_get.exit.thread.i.i, label %if.end.i.i.i

enetc_streamcounter_hw_get.exit.thread.i.i:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i.i.i) #8
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %si.i.i.i = getelementptr i8, ptr %cb_priv, i32 2312
  %550 = ptrtoint ptr %si.i.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %si.i.i.i, align 4
  %552 = ptrtoint ptr %551 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %551, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %553, i32 0, i32 44
  %call.i.i.i33.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i.i.i32.i) #8
  br i1 %call.i.i.i33.i, label %land.rhs.i.i.i.i, label %if.end39.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i.i.i
  %.b1.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.dma_map_single_attrs.exit.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.dma_map_single_attrs.exit.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i.i.i) #8
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %553, i32 0, i32 44, i32 3
  %554 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i34.i = icmp eq ptr %555, null
  br i1 %tobool.not.i.i.i.i34.i, label %if.end.i.i.i.i35.i, label %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge

if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge:  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i.i.i

if.end.i.i.i.i35.i:                               ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %556 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %dev.i.i.i, align 4
  br label %dev_name.exit.i.i.i.i

dev_name.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i35.i, %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %557, %if.end.i.i.i.i35.i ], [ %555, %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i) #8
  br label %dma_map_single_attrs.exit.i.i.i

if.end39.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %dev.i.i.i, ptr noundef nonnull %call7.i.i.i.i32.i, i32 noundef 32) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %558 = load ptr, ptr @mem_map, align 4
  %559 = ptrtoint ptr %call7.i.i.i.i32.i to i32
  %sub.i.i.i.i = add i32 %559, 1073741824
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 12
  %add.ptr.i.i.i36.i = getelementptr %struct.page, ptr %558, i32 %shr.i.i.i.i
  %and.i.i.i.i = and i32 %559, 4088
  %call41.i.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i.i.i, ptr noundef %add.ptr.i.i.i36.i, i32 noundef %and.i.i.i.i, i32 noundef 32, i32 noundef 2, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit.i.i.i

dma_map_single_attrs.exit.i.i.i:                  ; preds = %if.end39.i.i.i.i, %dev_name.exit.i.i.i.i, %land.rhs.i.i.i.i.dma_map_single_attrs.exit.i.i.i_crit_edge
  %retval.0.i.i.i37.i = phi i32 [ %call41.i.i.i.i, %if.end39.i.i.i.i ], [ -1, %dev_name.exit.i.i.i.i ], [ -1, %land.rhs.i.i.i.i.dma_map_single_attrs.exit.i.i.i_crit_edge ]
  %560 = ptrtoint ptr %si.i.i.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %si.i.i.i, align 4
  %562 = ptrtoint ptr %561 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %561, align 4
  %dev7.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %563, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev7.i.i.i, i32 noundef %retval.0.i.i.i37.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i37.i)
  %cmp.i.i.i38.i = icmp eq i32 %retval.0.i.i.i37.i, -1
  br i1 %cmp.i.i.i38.i, label %if.then10.i.i.i, label %if.end12.i.i.i

if.then10.i.i.i:                                  ; preds = %dma_map_single_attrs.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %564 = ptrtoint ptr %si.i.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %si.i.i.i, align 4
  %ndev.i.i.i = getelementptr inbounds %struct.enetc_si, ptr %565, i32 0, i32 3
  %566 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %ndev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %567, ptr noundef nonnull @.str.12) #12
  br label %enetc_streamcounter_hw_get.exit.thread52.i.i

if.end12.i.i.i:                                   ; preds = %dma_map_single_attrs.exit.i.i.i
  %568 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i.i37.i) #8
  %569 = ptrtoint ptr %cbd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 %568, ptr %cbd.i.i.i, align 4
  %arrayidx15.i.i.i = getelementptr inbounds [2 x i32], ptr %cbd.i.i.i, i32 0, i32 1
  %570 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 0, ptr %arrayidx15.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i.i, i32 0, i32 2
  %571 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store2_noabort(i32 %571)
  store i16 8192, ptr %length.i.i.i, align 2
  %572 = ptrtoint ptr %si.i.i.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %si.i.i.i, align 4
  %call17.i.i.i = call i32 @enetc_send_cmd(ptr noundef %573, ptr noundef nonnull %cbd.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i.i)
  %tobool18.not.i.i39.i = icmp eq i32 %call17.i.i.i, 0
  br i1 %tobool18.not.i.i39.i, label %if.end4.i.i, label %if.end12.i.i.i.enetc_streamcounter_hw_get.exit.thread52.i.i_crit_edge

if.end12.i.i.i.enetc_streamcounter_hw_get.exit.thread52.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_streamcounter_hw_get.exit.thread52.i.i

enetc_streamcounter_hw_get.exit.thread52.i.i:     ; preds = %if.end12.i.i.i.enetc_streamcounter_hw_get.exit.thread52.i.i_crit_edge, %if.then10.i.i.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i32.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i.i.i) #8
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %matchh.i.i.i = getelementptr inbounds %struct.sfi_counter_data, ptr %call7.i.i.i.i32.i, i32 0, i32 1
  %574 = ptrtoint ptr %matchh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %matchh.i.i.i, align 4
  %conv21.i.i.i = zext i32 %575 to i64
  %shl.i.i.i = shl nuw i64 %conv21.i.i.i, 32
  %576 = ptrtoint ptr %call7.i.i.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %call7.i.i.i.i32.i, align 8
  %conv22.i.i.i = zext i32 %577 to i64
  %add.i.i40.i = or i64 %shl.i.i.i, %conv22.i.i.i
  %msdu_droph.i.i.i = getelementptr inbounds %struct.sfi_counter_data, ptr %call7.i.i.i.i32.i, i32 0, i32 3
  %578 = ptrtoint ptr %msdu_droph.i.i.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %msdu_droph.i.i.i, align 4
  %conv23.i.i.i = zext i32 %579 to i64
  %shl24.i.i.i = shl nuw i64 %conv23.i.i.i, 32
  %msdu_dropl.i.i.i = getelementptr inbounds %struct.sfi_counter_data, ptr %call7.i.i.i.i32.i, i32 0, i32 2
  %580 = ptrtoint ptr %msdu_dropl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %msdu_dropl.i.i.i, align 8
  %conv25.i.i.i = zext i32 %581 to i64
  %add26.i.i.i = or i64 %shl24.i.i.i, %conv25.i.i.i
  %stream_gate_droph.i.i.i = getelementptr inbounds %struct.sfi_counter_data, ptr %call7.i.i.i.i32.i, i32 0, i32 5
  %582 = ptrtoint ptr %stream_gate_droph.i.i.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %stream_gate_droph.i.i.i, align 4
  %conv29.i.i.i = zext i32 %583 to i64
  %shl30.i.i.i = shl nuw i64 %conv29.i.i.i, 32
  %stream_gate_dropl.i.i.i = getelementptr inbounds %struct.sfi_counter_data, ptr %call7.i.i.i.i32.i, i32 0, i32 4
  %584 = ptrtoint ptr %stream_gate_dropl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %stream_gate_dropl.i.i.i, align 8
  %conv31.i.i.i = zext i32 %585 to i64
  %add32.i.i.i = or i64 %shl30.i.i.i, %conv31.i.i.i
  %flow_meter_droph.i.i.i = getelementptr inbounds %struct.sfi_counter_data, ptr %call7.i.i.i.i32.i, i32 0, i32 7
  %586 = ptrtoint ptr %flow_meter_droph.i.i.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %flow_meter_droph.i.i.i, align 4
  %conv38.i.i.i = zext i32 %587 to i64
  %shl39.i.i.i = shl nuw i64 %conv38.i.i.i, 32
  %flow_meter_dropl.i.i.i = getelementptr inbounds %struct.sfi_counter_data, ptr %call7.i.i.i.i32.i, i32 0, i32 6
  %588 = ptrtoint ptr %flow_meter_dropl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %flow_meter_dropl.i.i.i, align 8
  %conv40.i.i.i = zext i32 %589 to i64
  %add41.i.i.i = or i64 %shl39.i.i.i, %conv40.i.i.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i32.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i.i.i) #8
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 6)) #8
  %add.i.i = add i64 %add26.i.i.i, %add.i.i40.i
  %stats5.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %f.024.i.i.i, i32 0, i32 5
  %590 = ptrtoint ptr %stats5.i.i to i32
  call void @__asan_load8_noabort(i32 %590)
  %591 = load i64, ptr %stats5.i.i, align 8
  %sub.i.i = sub i64 %add.i.i, %591
  %add8.i.i = add i64 %add32.i.i.i, %add26.i.i.i
  %add9.i.i = add i64 %add8.i.i, %add41.i.i.i
  %drops.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %f.024.i.i.i, i32 0, i32 5, i32 2
  %592 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load8_noabort(i32 %592)
  %593 = load i64, ptr %drops.i.i, align 8
  %sub11.i.i = sub i64 %add9.i.i, %593
  %lastused.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %f.024.i.i.i, i32 0, i32 5, i32 3
  %594 = ptrtoint ptr %lastused.i.i to i32
  call void @__asan_load8_noabort(i32 %594)
  %595 = load i64, ptr %lastused.i.i, align 8
  store i64 %add.i.i, ptr %stats5.i.i, align 8
  store i64 %add9.i.i, ptr %drops.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 6)) #8
  %stats23.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 4
  %596 = ptrtoint ptr %stats23.i.i to i32
  call void @__asan_load8_noabort(i32 %596)
  %597 = load i64, ptr %stats23.i.i, align 8
  %add.i43.i.i = add i64 %sub.i.i, %597
  store i64 %add.i43.i.i, ptr %stats23.i.i, align 8
  %drops4.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 4, i32 2
  %598 = ptrtoint ptr %drops4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %598)
  %599 = load i64, ptr %drops4.i.i.i, align 8
  %add5.i.i.i = add i64 %sub11.i.i, %599
  store i64 %add5.i.i.i, ptr %drops4.i.i.i, align 8
  %lastused6.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 4, i32 3
  %600 = ptrtoint ptr %lastused6.i.i.i to i32
  call void @__asan_load8_noabort(i32 %600)
  %601 = load i64, ptr %lastused6.i.i.i, align 8
  %602 = call i64 @llvm.umax.i64(i64 %601, i64 %595) #8
  %603 = ptrtoint ptr %lastused6.i.i.i to i32
  call void @__asan_store8_noabort(i32 %603)
  store i64 %602, ptr %lastused6.i.i.i, align 8
  %used_hw_stats28.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 4, i32 4
  %604 = ptrtoint ptr %used_hw_stats28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %used_hw_stats28.i.i.i, align 8
  %or.i.i41.i = or i32 %605, 2
  store i32 %or.i.i41.i, ptr %used_hw_stats28.i.i.i, align 8
  %used_hw_stats_valid.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 4, i32 5
  %606 = ptrtoint ptr %used_hw_stats_valid.i.i.i to i32
  call void @__asan_store1_noabort(i32 %606)
  store i8 1, ptr %used_hw_stats_valid.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i.i, %enetc_streamcounter_hw_get.exit.thread52.i.i, %enetc_streamcounter_hw_get.exit.thread.i.i, %for.inc.i.i30.i.cleanup_crit_edge, %sw.bb3.i.cleanup_crit_edge, %if.end13.i.i.i, %if.end9.i.i.i.cleanup_crit_edge, %for.inc.i.i.i26.i.cleanup_crit_edge, %if.end4.i.i.i.cleanup_crit_edge, %if.then3.i.i.i, %do.body.i.i13.i.cleanup_crit_edge, %if.then39.i.i, %do.body36.i.i.cleanup_crit_edge, %if.then30.i.i, %do.body27.i.i.cleanup_crit_edge, %enetc_psfp_parse_clsflower.exit.i.i, %do.body27.thread.i.i, %if.then16.i.i, %for.inc.1.i.i.i.cleanup_crit_edge, %if.then6.i.i, %do.body.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ -22, %if.then6.i.i ], [ -22, %do.body.i.i.cleanup_crit_edge ], [ -95, %if.then16.i.i ], [ -95, %for.inc.1.i.i.i.cleanup_crit_edge ], [ %retval.0.i74.ph86.i.i, %if.then30.i.i ], [ %retval.0.i74.ph.i.i, %do.body27.i.i.cleanup_crit_edge ], [ -95, %if.then39.i.i ], [ -95, %do.body36.i.i.cleanup_crit_edge ], [ 0, %enetc_psfp_parse_clsflower.exit.i.i ], [ -28, %do.body27.thread.i.i ], [ 0, %if.end13.i.i.i ], [ -28, %if.then3.i.i.i ], [ -28, %do.body.i.i13.i.cleanup_crit_edge ], [ %call10.i.i.i, %if.end9.i.i.i.cleanup_crit_edge ], [ -22, %if.end4.i.i.i.cleanup_crit_edge ], [ 0, %if.end4.i.i ], [ -22, %enetc_streamcounter_hw_get.exit.thread.i.i ], [ -22, %enetc_streamcounter_hw_get.exit.thread52.i.i ], [ -22, %sw.bb3.i.cleanup_crit_edge ], [ -22, %for.inc.i.i.i26.i.cleanup_crit_edge ], [ -22, %for.inc.i.i30.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_psfp_init(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 1), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %max_psfp_filter = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 16, i32 1
  %1 = ptrtoint ptr %max_psfp_filter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_psfp_filter, align 4
  %call = tail call ptr @bitmap_zalloc(i32 noundef %2, i32 noundef 3264) #8
  store ptr %call, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 1), align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %do.body

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body:                                          ; preds = %if.end
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 6), ptr noundef nonnull @.str.11, ptr noundef nonnull @enetc_psfp_init.__key, i16 noundef signext 3) #8
  %3 = load volatile ptr, ptr @enetc_block_cb_list, align 4
  %cmp.i.not = icmp eq ptr %3, @enetc_block_cb_list
  br i1 %cmp.i.not, label %if.then7, label %do.body.return_crit_edge

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  store i32 0, ptr @epsfp, align 4
  br label %return

return:                                           ; preds = %if.then7, %do.body.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ], [ 0, %if.then7 ], [ 0, %do.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_psfp_clean(ptr nocapture noundef readnone %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @enetc_block_cb_list, align 4
  %cmp.i.not = icmp eq ptr %0, @enetc_block_cb_list
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @clean_psfp_all()
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clean_psfp_all() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 3), align 4
  %tobool.not.i = icmp eq ptr %0, null
  %add.ptr.i = getelementptr i8, ptr %0, i32 -28
  %tobool3.not2527.i = icmp eq ptr %add.ptr.i, null
  %tobool3.not25.i = or i1 %tobool.not.i, %tobool3.not2527.i
  br i1 %tobool3.not25.i, label %entry.clean_sfi_list.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.clean_sfi_list.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clean_sfi_list.exit

for.cond.backedge.thread.i:                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %2 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %sfi.026.i) #8
  br label %clean_sfi_list.exit

for.cond.backedge.i:                              ; preds = %land.rhs.i
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %3 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %9, ptr %pprev14.i.i.i, align 4
  %4 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %5 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %sfi.026.i) #8
  %add.ptr13.i = getelementptr i8, ptr %7, i32 -28
  %tobool3.not.i = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool3.not.i, label %for.cond.backedge.i.clean_sfi_list.exit_crit_edge, label %for.cond.backedge.i.land.rhs.i_crit_edge

for.cond.backedge.i.land.rhs.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

for.cond.backedge.i.clean_sfi_list.exit_crit_edge: ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clean_sfi_list.exit

land.rhs.i:                                       ; preds = %for.cond.backedge.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %sfi.026.i = phi ptr [ %add.ptr13.i, %for.cond.backedge.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %entry.land.rhs.i_crit_edge ]
  %node.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %sfi.026.i, i32 0, i32 7
  %6 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.enetc_psfp_filter, ptr %sfi.026.i, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev2.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %7, ptr %9, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %for.cond.backedge.thread.i, label %for.cond.backedge.i

clean_sfi_list.exit:                              ; preds = %for.cond.backedge.i.clean_sfi_list.exit_crit_edge, %for.cond.backedge.thread.i, %entry.clean_sfi_list.exit_crit_edge
  %11 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 4), align 4
  %tobool.not.i1 = icmp eq ptr %11, null
  %add.ptr.i2 = getelementptr i8, ptr %11, i32 -40
  %tobool3.not2527.i3 = icmp eq ptr %add.ptr.i2, null
  %tobool3.not25.i4 = or i1 %tobool.not.i1, %tobool3.not2527.i3
  br i1 %tobool3.not25.i4, label %clean_sfi_list.exit.clean_sgi_list.exit_crit_edge, label %clean_sfi_list.exit.land.rhs.i13_crit_edge

clean_sfi_list.exit.land.rhs.i13_crit_edge:       ; preds = %clean_sfi_list.exit
  br label %land.rhs.i13

clean_sfi_list.exit.clean_sgi_list.exit_crit_edge: ; preds = %clean_sfi_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %clean_sgi_list.exit

for.cond.backedge.thread.i5:                      ; preds = %land.rhs.i13
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %node.i10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i10, align 4
  %13 = ptrtoint ptr %pprev2.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i11, align 4
  tail call void @kfree(ptr noundef nonnull %sgi.026.i) #8
  br label %clean_sgi_list.exit

for.cond.backedge.i9:                             ; preds = %land.rhs.i13
  %pprev14.i.i.i6 = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i.i6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %20, ptr %pprev14.i.i.i6, align 4
  %15 = ptrtoint ptr %node.i10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i10, align 4
  %16 = ptrtoint ptr %pprev2.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i11, align 4
  tail call void @kfree(ptr noundef nonnull %sgi.026.i) #8
  %add.ptr13.i7 = getelementptr i8, ptr %18, i32 -40
  %tobool3.not.i8 = icmp eq ptr %add.ptr13.i7, null
  br i1 %tobool3.not.i8, label %for.cond.backedge.i9.clean_sgi_list.exit_crit_edge, label %for.cond.backedge.i9.land.rhs.i13_crit_edge

for.cond.backedge.i9.land.rhs.i13_crit_edge:      ; preds = %for.cond.backedge.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i13

for.cond.backedge.i9.clean_sgi_list.exit_crit_edge: ; preds = %for.cond.backedge.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %clean_sgi_list.exit

land.rhs.i13:                                     ; preds = %for.cond.backedge.i9.land.rhs.i13_crit_edge, %clean_sfi_list.exit.land.rhs.i13_crit_edge
  %sgi.026.i = phi ptr [ %add.ptr13.i7, %for.cond.backedge.i9.land.rhs.i13_crit_edge ], [ %add.ptr.i2, %clean_sfi_list.exit.land.rhs.i13_crit_edge ]
  %node.i10 = getelementptr inbounds %struct.enetc_psfp_gate, ptr %sgi.026.i, i32 0, i32 7
  %17 = ptrtoint ptr %node.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %node.i10, align 8
  %pprev2.i.i.i11 = getelementptr inbounds %struct.enetc_psfp_gate, ptr %sgi.026.i, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %pprev2.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pprev2.i.i.i11, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %18, ptr %20, align 4
  %tobool.not.i.i.i12 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i12, label %for.cond.backedge.thread.i5, label %for.cond.backedge.i9

clean_sgi_list.exit:                              ; preds = %for.cond.backedge.i9.clean_sgi_list.exit_crit_edge, %for.cond.backedge.thread.i5, %clean_sfi_list.exit.clean_sgi_list.exit_crit_edge
  %22 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 2), align 4
  %tobool.not.i14 = icmp eq ptr %22, null
  %add.ptr.i15 = getelementptr i8, ptr %22, i32 -80
  %tobool3.not2527.i16 = icmp eq ptr %add.ptr.i15, null
  %tobool3.not25.i17 = or i1 %tobool.not.i14, %tobool3.not2527.i16
  br i1 %tobool3.not25.i17, label %clean_sgi_list.exit.clean_stream_list.exit_crit_edge, label %clean_sgi_list.exit.land.rhs.i26_crit_edge

clean_sgi_list.exit.land.rhs.i26_crit_edge:       ; preds = %clean_sgi_list.exit
  br label %land.rhs.i26

clean_sgi_list.exit.clean_stream_list.exit_crit_edge: ; preds = %clean_sgi_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %clean_stream_list.exit

for.cond.backedge.thread.i18:                     ; preds = %land.rhs.i26
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %node.i23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i23, align 4
  %24 = ptrtoint ptr %pprev2.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i24, align 4
  tail call void @kfree(ptr noundef nonnull %s.026.i) #8
  br label %clean_stream_list.exit

for.cond.backedge.i22:                            ; preds = %land.rhs.i26
  %pprev14.i.i.i19 = getelementptr inbounds %struct.hlist_node, ptr %29, i32 0, i32 1
  %25 = ptrtoint ptr %pprev14.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %31, ptr %pprev14.i.i.i19, align 4
  %26 = ptrtoint ptr %node.i23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i23, align 4
  %27 = ptrtoint ptr %pprev2.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i24, align 4
  tail call void @kfree(ptr noundef nonnull %s.026.i) #8
  %add.ptr13.i20 = getelementptr i8, ptr %29, i32 -80
  %tobool3.not.i21 = icmp eq ptr %add.ptr13.i20, null
  br i1 %tobool3.not.i21, label %for.cond.backedge.i22.clean_stream_list.exit_crit_edge, label %for.cond.backedge.i22.land.rhs.i26_crit_edge

for.cond.backedge.i22.land.rhs.i26_crit_edge:     ; preds = %for.cond.backedge.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i26

for.cond.backedge.i22.clean_stream_list.exit_crit_edge: ; preds = %for.cond.backedge.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %clean_stream_list.exit

land.rhs.i26:                                     ; preds = %for.cond.backedge.i22.land.rhs.i26_crit_edge, %clean_sgi_list.exit.land.rhs.i26_crit_edge
  %s.026.i = phi ptr [ %add.ptr13.i20, %for.cond.backedge.i22.land.rhs.i26_crit_edge ], [ %add.ptr.i15, %clean_sgi_list.exit.land.rhs.i26_crit_edge ]
  %node.i23 = getelementptr inbounds %struct.enetc_stream_filter, ptr %s.026.i, i32 0, i32 6
  %28 = ptrtoint ptr %node.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %node.i23, align 8
  %pprev2.i.i.i24 = getelementptr inbounds %struct.enetc_stream_filter, ptr %s.026.i, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %pprev2.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pprev2.i.i.i24, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %29, ptr %31, align 4
  %tobool.not.i.i.i25 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i25, label %for.cond.backedge.thread.i18, label %for.cond.backedge.i22

clean_stream_list.exit:                           ; preds = %for.cond.backedge.i22.clean_stream_list.exit_crit_edge, %for.cond.backedge.thread.i18, %clean_sgi_list.exit.clean_stream_list.exit_crit_edge
  store i32 0, ptr @epsfp, align 4
  %33 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 1), align 4
  tail call void @bitmap_free(ptr noundef %33) #8
  store ptr null, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_setup_tc_psfp(ptr noundef %ndev, ptr noundef %type_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @flow_block_cb_setup_simple(ptr noundef %type_data, ptr noundef nonnull @enetc_block_cb_list, ptr noundef nonnull @enetc_setup_tc_block_cb, ptr noundef %ndev, ptr noundef %ndev, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_data, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %si = getelementptr i8, ptr %ndev, i32 2312
  %3 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %si, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %9 = icmp ult i32 %8, 7
  br i1 %9, label %switch.hole_check, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb
  %switch.maskindex = trunc i32 %8 to i8
  %switch.shifted = lshr i8 71, %switch.maskindex
  %10 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.lobit.not = icmp eq i8 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.enetc_setup_tc_psfp, i32 0, i32 %8
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void @_set_bit(i32 noundef %switch.load, ptr noundef nonnull @epsfp) #8
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %si6 = getelementptr i8, ptr %ndev, i32 2312
  %12 = ptrtoint ptr %si6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %si6, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %devfn.i26 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %devfn.i26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devfn.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %17)
  %18 = icmp ult i32 %17, 7
  br i1 %18, label %switch.hole_check40, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check40:                              ; preds = %sw.bb5
  %switch.maskindex42 = trunc i32 %17 to i8
  %switch.shifted43 = lshr i8 71, %switch.maskindex42
  %19 = and i8 %switch.shifted43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %switch.lobit44.not = icmp eq i8 %19, 0
  br i1 %switch.lobit44.not, label %switch.hole_check40.cleanup_crit_edge, label %switch.lookup41

switch.hole_check40.cleanup_crit_edge:            ; preds = %switch.hole_check40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup41:                                  ; preds = %switch.hole_check40
  %switch.gep45 = getelementptr inbounds [7 x i32], ptr @switch.table.enetc_setup_tc_psfp.29, i32 0, i32 %17
  %20 = ptrtoint ptr %switch.gep45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load46 = load i32, ptr %switch.gep45, align 4
  tail call void @_clear_bit(i32 noundef %switch.load46, ptr noundef nonnull @epsfp) #8
  %21 = load i32, ptr @epsfp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  br i1 %tobool12.not, label %if.then13, label %switch.lookup41.cleanup_crit_edge

switch.lookup41.cleanup_crit_edge:                ; preds = %switch.lookup41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %switch.lookup41
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @clean_psfp_all()
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %switch.lookup41.cleanup_crit_edge, %switch.hole_check40.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %switch.lookup, %switch.hole_check.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %switch.lookup41.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %switch.lookup ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ], [ -22, %switch.hole_check40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_setup_simple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_eth_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_one_chain(ptr nocapture noundef readonly %priv, ptr noundef %filter) unnamed_addr #0 align 64 {
entry:
  %cbd.i.i41 = alloca %struct.enetc_cbd, align 4
  %cbd.i.i8 = alloca %struct.enetc_cbd, align 4
  %cbd.i.i = alloca %struct.enetc_cbd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.enetc_stream_filter, ptr %filter, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %fmi_index = getelementptr inbounds %struct.enetc_stream_filter, ptr %filter, i32 0, i32 4
  %2 = ptrtoint ptr %fmi_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmi_index, align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 5), align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 -16
  %tobool2.not2326.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not23.i.i = or i1 %tobool.not.i.i, %tobool2.not2326.i.i
  br i1 %tobool2.not23.i.i, label %if.then.do.end.i_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %m.024.i.i = phi ptr [ %add.ptr10.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.then.for.body.i.i_crit_edge ]
  %5 = ptrtoint ptr %m.024.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %m.024.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp.i.i = icmp eq i32 %6, %3
  br i1 %cmp.i.i, label %for.body.i.i.if.end.i_crit_edge, label %for.inc.i.i

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %node.i.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %m.024.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %8, null
  %add.ptr10.i.i = getelementptr i8, ptr %8, i32 -16
  %tobool2.not27.i.i = icmp eq ptr %add.ptr10.i.i, null
  %tobool2.not.i.i = or i1 %tobool6.not.i.i, %tobool2.not27.i.i
  br i1 %tobool2.not.i.i, label %for.inc.i.i.do.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1002, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.i.if.end.i_crit_edge
  %m.0.lcssa.i33.i = phi ptr [ null, %do.end.i ], [ %m.024.i.i, %for.body.i.i.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %m.0.lcssa.i33.i, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then23.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !78

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %if.end

if.then23.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd.i.i) #8
  %10 = call ptr @memset(ptr %cbd.i.i, i32 0, i32 32)
  %11 = ptrtoint ptr %m.0.lcssa.i33.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m.0.lcssa.i33.i, align 4
  %conv.i.i = trunc i32 %12 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #8
  %index1.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %index1.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %index1.i.i, align 4
  %cls.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %cls.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %cls.i.i, align 1
  %status_flags.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %status_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -128, ptr %status_flags.i.i, align 1
  %si11.i.i = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 2
  %17 = ptrtoint ptr %si11.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %si11.i.i, align 4
  %call12.i.i = call i32 @enetc_send_cmd(ptr noundef %18, ptr noundef nonnull %cbd.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i.i) #8
  %node.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %m.0.lcssa.i33.i, i32 0, i32 4
  %19 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %node.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.enetc_psfp_meter, ptr %m.0.lcssa.i33.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pprev2.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %20, ptr %22, align 4
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %if.then23.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

if.then23.i.hlist_del.exit.i_crit_edge:           ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %if.then23.i.hlist_del.exit.i_crit_edge
  %25 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %26 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  call void @kfree(ptr noundef %m.0.lcssa.i33.i) #8
  br label %if.end

if.end:                                           ; preds = %hlist_del.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %sgi_index = getelementptr inbounds %struct.enetc_stream_filter, ptr %filter, i32 0, i32 2
  %27 = ptrtoint ptr %sgi_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sgi_index, align 8
  %29 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 4), align 4
  %tobool.not.i.i9 = icmp eq ptr %29, null
  %add.ptr.i.i10 = getelementptr i8, ptr %29, i32 -40
  %tobool2.not2326.i.i11 = icmp eq ptr %add.ptr.i.i10, null
  %tobool2.not23.i.i12 = or i1 %tobool.not.i.i9, %tobool2.not2326.i.i11
  br i1 %tobool2.not23.i.i12, label %if.end.do.end.i21_crit_edge, label %if.end.for.body.i.i14_crit_edge

if.end.for.body.i.i14_crit_edge:                  ; preds = %if.end
  br label %for.body.i.i14

if.end.do.end.i21_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i21

for.body.i.i14:                                   ; preds = %for.inc.i.i20.for.body.i.i14_crit_edge, %if.end.for.body.i.i14_crit_edge
  %g.024.i.i = phi ptr [ %add.ptr10.i.i17, %for.inc.i.i20.for.body.i.i14_crit_edge ], [ %add.ptr.i.i10, %if.end.for.body.i.i14_crit_edge ]
  %30 = ptrtoint ptr %g.024.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %g.024.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %28)
  %cmp.i.i13 = icmp eq i32 %31, %28
  br i1 %cmp.i.i13, label %for.body.i.i14.if.end.i26_crit_edge, label %for.inc.i.i20

for.body.i.i14.if.end.i26_crit_edge:              ; preds = %for.body.i.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i26

for.inc.i.i20:                                    ; preds = %for.body.i.i14
  %node.i.i15 = getelementptr inbounds %struct.enetc_psfp_gate, ptr %g.024.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %node.i.i15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %node.i.i15, align 8
  %tobool6.not.i.i16 = icmp eq ptr %33, null
  %add.ptr10.i.i17 = getelementptr i8, ptr %33, i32 -40
  %tobool2.not27.i.i18 = icmp eq ptr %add.ptr10.i.i17, null
  %tobool2.not.i.i19 = or i1 %tobool6.not.i.i16, %tobool2.not27.i.i18
  br i1 %tobool2.not.i.i19, label %for.inc.i.i20.do.end.i21_crit_edge, label %for.inc.i.i20.for.body.i.i14_crit_edge

for.inc.i.i20.for.body.i.i14_crit_edge:           ; preds = %for.inc.i.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i14

for.inc.i.i20.do.end.i21_crit_edge:               ; preds = %for.inc.i.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i21

do.end.i21:                                       ; preds = %for.inc.i.i20.do.end.i21_crit_edge, %if.end.do.end.i21_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 987, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i26

if.end.i26:                                       ; preds = %do.end.i21, %for.body.i.i14.if.end.i26_crit_edge
  %g.0.lcssa.i33.i = phi ptr [ null, %do.end.i21 ], [ %g.024.i.i, %for.body.i.i14.if.end.i26_crit_edge ]
  %refcount.i22 = getelementptr inbounds %struct.enetc_psfp_gate, ptr %g.0.lcssa.i33.i, i32 0, i32 6
  %call.i.i.i.i.i.i23 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i22, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  call void @llvm.prefetch.p0(ptr %refcount.i22, i32 1, i32 3, i32 1) #8
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i22, ptr %refcount.i22, i32 1, ptr elementtype(i32) %refcount.i22) #8, !srcloc !86
  %asmresult.i.i.i.i.i.i.i24 = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i24)
  %cmp.i.i.i.i25 = icmp eq i32 %asmresult.i.i.i.i.i.i.i24, 1
  br i1 %cmp.i.i.i.i25, label %if.then23.i37, label %if.end5.i.i.i.i28

if.end5.i.i.i.i28:                                ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i24)
  %.not.i.i.i.i27 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i24, 0
  br i1 %.not.i.i.i.i27, label %if.end5.i.i.i.i28.stream_gate_unref.exit_crit_edge, label %if.then10.i.i.i.i29, !prof !78

if.end5.i.i.i.i28.stream_gate_unref.exit_crit_edge: ; preds = %if.end5.i.i.i.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %stream_gate_unref.exit

if.then10.i.i.i.i29:                              ; preds = %if.end5.i.i.i.i28
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i22, i32 noundef 3) #8
  br label %stream_gate_unref.exit

if.then23.i37:                                    ; preds = %if.end.i26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd.i.i8) #8
  %35 = call ptr @memset(ptr %cbd.i.i8, i32 0, i32 32)
  %36 = ptrtoint ptr %g.0.lcssa.i33.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %g.0.lcssa.i33.i, align 8
  %conv.i.i30 = trunc i32 %37 to i16
  %38 = call i16 @llvm.bswap.i16(i16 %conv.i.i30) #8
  %index1.i.i31 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i8, i32 0, i32 1
  %39 = ptrtoint ptr %index1.i.i31 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %index1.i.i31, align 4
  %cls.i.i32 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i8, i32 0, i32 4
  %40 = ptrtoint ptr %cls.i.i32 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 9, ptr %cls.i.i32, align 1
  %status_flags.i.i33 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i8, i32 0, i32 6
  %41 = ptrtoint ptr %status_flags.i.i33 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -128, ptr %status_flags.i.i33, align 1
  %si.i.i = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 2
  %42 = ptrtoint ptr %si.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %si.i.i, align 4
  %call.i.i = call i32 @enetc_send_cmd(ptr noundef %43, ptr noundef nonnull %cbd.i.i8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i.i8) #8
  %node.i34 = getelementptr inbounds %struct.enetc_psfp_gate, ptr %g.0.lcssa.i33.i, i32 0, i32 7
  %44 = ptrtoint ptr %node.i34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %node.i34, align 4
  %pprev2.i.i.i35 = getelementptr inbounds %struct.enetc_psfp_gate, ptr %g.0.lcssa.i33.i, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %pprev2.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pprev2.i.i.i35, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %45, ptr %47, align 4
  %tobool.not.i.i.i36 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i36, label %if.then23.i37.hlist_del.exit.i40_crit_edge, label %do.body13.i.i.i39

if.then23.i37.hlist_del.exit.i40_crit_edge:       ; preds = %if.then23.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit.i40

do.body13.i.i.i39:                                ; preds = %if.then23.i37
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i38 = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  %49 = ptrtoint ptr %pprev14.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %pprev14.i.i.i38, align 4
  br label %hlist_del.exit.i40

hlist_del.exit.i40:                               ; preds = %do.body13.i.i.i39, %if.then23.i37.hlist_del.exit.i40_crit_edge
  %50 = ptrtoint ptr %node.i34 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i34, align 4
  %51 = ptrtoint ptr %pprev2.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i35, align 4
  call void @kfree(ptr noundef %g.0.lcssa.i33.i) #8
  br label %stream_gate_unref.exit

stream_gate_unref.exit:                           ; preds = %hlist_del.exit.i40, %if.then10.i.i.i.i29, %if.end5.i.i.i.i28.stream_gate_unref.exit_crit_edge
  %sfi_index = getelementptr inbounds %struct.enetc_stream_filter, ptr %filter, i32 0, i32 1
  %52 = ptrtoint ptr %sfi_index to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sfi_index, align 4
  %54 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 3), align 4
  %tobool.not.i.i42 = icmp eq ptr %54, null
  %add.ptr.i.i43 = getelementptr i8, ptr %54, i32 -28
  %tobool2.not2326.i.i44 = icmp eq ptr %add.ptr.i.i43, null
  %tobool2.not23.i.i45 = or i1 %tobool.not.i.i42, %tobool2.not2326.i.i44
  br i1 %tobool2.not23.i.i45, label %stream_gate_unref.exit.do.end.i54_crit_edge, label %stream_gate_unref.exit.for.body.i.i47_crit_edge

stream_gate_unref.exit.for.body.i.i47_crit_edge:  ; preds = %stream_gate_unref.exit
  br label %for.body.i.i47

stream_gate_unref.exit.do.end.i54_crit_edge:      ; preds = %stream_gate_unref.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i54

for.body.i.i47:                                   ; preds = %for.inc.i.i53.for.body.i.i47_crit_edge, %stream_gate_unref.exit.for.body.i.i47_crit_edge
  %s.024.i.i = phi ptr [ %add.ptr10.i.i50, %for.inc.i.i53.for.body.i.i47_crit_edge ], [ %add.ptr.i.i43, %stream_gate_unref.exit.for.body.i.i47_crit_edge ]
  %55 = ptrtoint ptr %s.024.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s.024.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %53)
  %cmp.i.i46 = icmp eq i32 %56, %53
  br i1 %cmp.i.i46, label %for.body.i.i47.if.end.i59_crit_edge, label %for.inc.i.i53

for.body.i.i47.if.end.i59_crit_edge:              ; preds = %for.body.i.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i59

for.inc.i.i53:                                    ; preds = %for.body.i.i47
  %node.i.i48 = getelementptr inbounds %struct.enetc_psfp_filter, ptr %s.024.i.i, i32 0, i32 7
  %57 = ptrtoint ptr %node.i.i48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %node.i.i48, align 4
  %tobool6.not.i.i49 = icmp eq ptr %58, null
  %add.ptr10.i.i50 = getelementptr i8, ptr %58, i32 -28
  %tobool2.not27.i.i51 = icmp eq ptr %add.ptr10.i.i50, null
  %tobool2.not.i.i52 = or i1 %tobool6.not.i.i49, %tobool2.not27.i.i51
  br i1 %tobool2.not.i.i52, label %for.inc.i.i53.do.end.i54_crit_edge, label %for.inc.i.i53.for.body.i.i47_crit_edge

for.inc.i.i53.for.body.i.i47_crit_edge:           ; preds = %for.inc.i.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i47

for.inc.i.i53.do.end.i54_crit_edge:               ; preds = %for.inc.i.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i54

do.end.i54:                                       ; preds = %for.inc.i.i53.do.end.i54_crit_edge, %stream_gate_unref.exit.do.end.i54_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 970, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i59

if.end.i59:                                       ; preds = %do.end.i54, %for.body.i.i47.if.end.i59_crit_edge
  %s.0.lcssa.i34.i = phi ptr [ null, %do.end.i54 ], [ %s.024.i.i, %for.body.i.i47.if.end.i59_crit_edge ]
  %refcount.i55 = getelementptr inbounds %struct.enetc_psfp_filter, ptr %s.0.lcssa.i34.i, i32 0, i32 6
  %call.i.i.i.i.i.i56 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i55, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  call void @llvm.prefetch.p0(ptr %refcount.i55, i32 1, i32 3, i32 1) #8
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i55, ptr %refcount.i55, i32 1, ptr elementtype(i32) %refcount.i55) #8, !srcloc !86
  %asmresult.i.i.i.i.i.i.i57 = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i57)
  %cmp.i.i.i.i58 = icmp eq i32 %asmresult.i.i.i.i.i.i.i57, 1
  br i1 %cmp.i.i.i.i58, label %if.then23.i64, label %if.end5.i.i.i.i61

if.end5.i.i.i.i61:                                ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i57)
  %.not.i.i.i.i60 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i57, 0
  br i1 %.not.i.i.i.i60, label %if.end5.i.i.i.i61.stream_filter_unref.exit_crit_edge, label %if.then10.i.i.i.i62, !prof !78

if.end5.i.i.i.i61.stream_filter_unref.exit_crit_edge: ; preds = %if.end5.i.i.i.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %stream_filter_unref.exit

if.then10.i.i.i.i62:                              ; preds = %if.end5.i.i.i.i61
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i55, i32 noundef 3) #8
  br label %stream_filter_unref.exit

if.then23.i64:                                    ; preds = %if.end.i59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd.i.i41) #8
  %60 = call ptr @memset(ptr %cbd.i.i41, i32 0, i32 32)
  %si.i.i63 = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 2
  %61 = ptrtoint ptr %si.i.i63 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %si.i.i63, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %devfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %devfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %devfn.i.i.i, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %66, label %if.then23.i64.enetc_streamfilter_hw_set.exit.i_crit_edge [
    i32 0, label %if.then23.i64.if.end.i.i_crit_edge
    i32 1, label %if.then23.i64.if.end.i.i_crit_edge94
    i32 2, label %if.then23.i64.if.end.i.i_crit_edge95
    i32 6, label %if.then23.i64.if.end.i.i_crit_edge96
  ]

if.then23.i64.if.end.i.i_crit_edge96:             ; preds = %if.then23.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then23.i64.if.end.i.i_crit_edge95:             ; preds = %if.then23.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then23.i64.if.end.i.i_crit_edge94:             ; preds = %if.then23.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then23.i64.if.end.i.i_crit_edge:               ; preds = %if.then23.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then23.i64.enetc_streamfilter_hw_set.exit.i_crit_edge: ; preds = %if.then23.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_streamfilter_hw_set.exit.i

if.end.i.i:                                       ; preds = %if.then23.i64.if.end.i.i_crit_edge, %if.then23.i64.if.end.i.i_crit_edge94, %if.then23.i64.if.end.i.i_crit_edge95, %if.then23.i64.if.end.i.i_crit_edge96
  %68 = ptrtoint ptr %s.0.lcssa.i34.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s.0.lcssa.i34.i, align 4
  %conv.i.i65 = trunc i32 %69 to i16
  %70 = call i16 @llvm.bswap.i16(i16 %conv.i.i65) #8
  %index1.i.i66 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i41, i32 0, i32 1
  %71 = ptrtoint ptr %index1.i.i66 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %index1.i.i66, align 4
  %cls.i.i67 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i41, i32 0, i32 4
  %72 = ptrtoint ptr %cls.i.i67 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 8, ptr %cls.i.i67, align 1
  %status_flags.i.i68 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i41, i32 0, i32 6
  %73 = ptrtoint ptr %status_flags.i.i68 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -128, ptr %status_flags.i.i68, align 1
  %length.i.i = getelementptr inbounds %struct.enetc_cbd, ptr %cbd.i.i41, i32 0, i32 2
  %74 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 256, ptr %length.i.i, align 2
  %call43.i.i = call i32 @enetc_send_cmd(ptr noundef %62, ptr noundef nonnull %cbd.i.i41) #8
  br label %enetc_streamfilter_hw_set.exit.i

enetc_streamfilter_hw_set.exit.i:                 ; preds = %if.end.i.i, %if.then23.i64.enetc_streamfilter_hw_set.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd.i.i41) #8
  %node.i69 = getelementptr inbounds %struct.enetc_psfp_filter, ptr %s.0.lcssa.i34.i, i32 0, i32 7
  %75 = ptrtoint ptr %node.i69 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %node.i69, align 4
  %pprev2.i.i.i70 = getelementptr inbounds %struct.enetc_psfp_filter, ptr %s.0.lcssa.i34.i, i32 0, i32 7, i32 1
  %77 = ptrtoint ptr %pprev2.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pprev2.i.i.i70, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %76, ptr %78, align 4
  %tobool.not.i.i.i71 = icmp eq ptr %76, null
  br i1 %tobool.not.i.i.i71, label %enetc_streamfilter_hw_set.exit.i.hlist_del.exit.i74_crit_edge, label %do.body13.i.i.i73

enetc_streamfilter_hw_set.exit.i.hlist_del.exit.i74_crit_edge: ; preds = %enetc_streamfilter_hw_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit.i74

do.body13.i.i.i73:                                ; preds = %enetc_streamfilter_hw_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i72 = getelementptr inbounds %struct.hlist_node, ptr %76, i32 0, i32 1
  %80 = ptrtoint ptr %pprev14.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %pprev14.i.i.i72, align 4
  br label %hlist_del.exit.i74

hlist_del.exit.i74:                               ; preds = %do.body13.i.i.i73, %enetc_streamfilter_hw_set.exit.i.hlist_del.exit.i74_crit_edge
  %81 = ptrtoint ptr %node.i69 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i69, align 4
  %82 = ptrtoint ptr %pprev2.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i70, align 4
  call void @kfree(ptr noundef %s.0.lcssa.i34.i) #8
  %83 = load ptr, ptr getelementptr inbounds (%struct.enetc_psfp, ptr @epsfp, i32 0, i32 1), align 4
  call void @_clear_bit(i32 noundef %53, ptr noundef %83) #8
  br label %stream_filter_unref.exit

stream_filter_unref.exit:                         ; preds = %hlist_del.exit.i74, %if.then10.i.i.i.i62, %if.end5.i.i.i.i61.stream_filter_unref.exit_crit_edge
  %node = getelementptr inbounds %struct.enetc_stream_filter, ptr %filter, i32 0, i32 6
  %84 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.enetc_stream_filter, ptr %filter, i32 0, i32 6, i32 1
  %86 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pprev2.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %85, ptr %87, align 4
  %tobool.not.i.i75 = icmp eq ptr %85, null
  br i1 %tobool.not.i.i75, label %stream_filter_unref.exit.hlist_del.exit_crit_edge, label %do.body13.i.i

stream_filter_unref.exit.hlist_del.exit_crit_edge: ; preds = %stream_filter_unref.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %stream_filter_unref.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %85, i32 0, i32 1
  %89 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %stream_filter_unref.exit.hlist_del.exit_crit_edge
  %90 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %91 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  call void @kfree(ptr noundef %filter) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enetc_streamid_hw_set(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %sid, i8 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %cbd = alloca %struct.enetc_cbd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd) #8
  %0 = call ptr @memset(ptr %cbd, i32 0, i32 32)
  %si = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %si, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devfn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %7 = icmp ult i32 %6, 7
  br i1 %7, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %6 to i8
  %switch.shifted = lshr i8 71, %switch.maskindex
  %8 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %switch.lobit.not = icmp eq i8 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.enetc_streamid_hw_set, i32 0, i32 %6
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %10 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sid, align 4
  %psfp_cap = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 16
  %12 = ptrtoint ptr %psfp_cap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %psfp_cap, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp1.not = icmp ult i32 %11, %13
  br i1 %cmp1.not, label %if.end3, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %switch.lookup
  %filtertype = getelementptr inbounds %struct.enetc_streamid, ptr %sid, i32 0, i32 2
  %14 = ptrtoint ptr %filtertype to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %filtertype, align 2
  %.off = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end11, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %conv13 = trunc i32 %11 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv13)
  %index14 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 1
  %17 = ptrtoint ptr %index14 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %index14, align 4
  %cls = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 4
  %18 = ptrtoint ptr %cls to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 7, ptr %cls, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3521, i32 noundef 8) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end18

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %length = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 2
  %20 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2048, ptr %length, align 2
  %21 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %si, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i) #8
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end18
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !78

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i ], [ %26, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef 8) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %29 = load ptr, ptr @mem_map, align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  %sub.i = add i32 %30, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %29, i32 %shr.i
  %and.i = and i32 %30, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 8, i32 noundef 2, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i182 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %31 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %si, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev25, i32 noundef %retval.0.i182) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i182)
  %cmp.i = icmp eq i32 %retval.0.i182, -1
  br i1 %cmp.i, label %if.then28, label %if.end30

if.then28:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %si, align 4
  %ndev = getelementptr inbounds %struct.enetc_si, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.12) #12
  br label %out

if.end30:                                         ; preds = %dma_map_single_attrs.exit
  %39 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i182)
  %40 = ptrtoint ptr %cbd to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %cbd, align 4
  %arrayidx33 = getelementptr inbounds [2 x i32], ptr %cbd, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx33, align 4
  %42 = call ptr @memset(ptr %call7.i.i, i32 255, i32 6)
  %vid_vidm_tg = getelementptr inbounds %struct.streamid_data, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %vid_vidm_tg to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -8193, ptr %vid_vidm_tg, align 2
  %44 = getelementptr inbounds %struct.anon.148, ptr %cbd, i32 0, i32 1
  %45 = shl nuw nsw i32 16777216, %switch.load
  %iports = getelementptr inbounds %struct.anon.148, ptr %cbd, i32 0, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %iports to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %iports, align 4
  %id_type = getelementptr inbounds %struct.anon.148, ptr %cbd, i32 0, i32 1, i32 0, i32 2
  %47 = ptrtoint ptr %id_type to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %id_type, align 4
  %oui = getelementptr inbounds %struct.streamid_conf, ptr %44, i32 0, i32 3
  %arrayidx34 = getelementptr inbounds %struct.streamid_conf, ptr %44, i32 0, i32 3, i32 2
  %48 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx34, align 1
  %arrayidx36 = getelementptr inbounds %struct.streamid_conf, ptr %44, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -128, ptr %arrayidx36, align 2
  %50 = ptrtoint ptr %oui to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -62, ptr %oui, align 1
  %51 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %si, align 4
  %call40 = call i32 @enetc_send_cmd(ptr noundef %52, ptr noundef nonnull %cbd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end43:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool44.not = icmp eq i8 %enable, 0
  br i1 %tobool44.not, label %if.end43.out_crit_edge, label %if.end46

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end46:                                         ; preds = %if.end43
  %53 = getelementptr inbounds i8, ptr %cbd, i32 20
  %54 = call ptr @memset(ptr %53, i32 0, i32 12)
  %55 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sid, align 4
  %conv48 = trunc i32 %56 to i16
  %57 = call i16 @llvm.bswap.i16(i16 %conv48)
  %58 = ptrtoint ptr %index14 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %index14, align 4
  %59 = ptrtoint ptr %cls to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 7, ptr %cls, align 1
  %en = getelementptr inbounds %struct.streamid_conf, ptr %44, i32 0, i32 5
  %60 = ptrtoint ptr %en to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -128, ptr %en, align 1
  %handle = getelementptr inbounds %struct.enetc_streamid, ptr %sid, i32 0, i32 5
  %61 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %handle, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  %64 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %44, align 4
  %65 = ptrtoint ptr %iports to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %45, ptr %iports, align 4
  %66 = ptrtoint ptr %filtertype to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %filtertype, align 2
  %68 = ptrtoint ptr %id_type to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %id_type, align 4
  %69 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx34, align 1
  %70 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -128, ptr %arrayidx36, align 2
  %71 = ptrtoint ptr %oui to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -62, ptr %oui, align 1
  %72 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %call7.i.i, align 8
  %73 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 2048, ptr %length, align 2
  %74 = ptrtoint ptr %cbd to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %39, ptr %cbd, align 4
  %75 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %arrayidx33, align 4
  %.off197 = add i8 %67, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off197)
  %switch198 = icmp ult i8 %.off197, 2
  br i1 %switch198, label %if.end106.sink.split, label %if.end46.if.end106_crit_edge

if.end46.if.end106_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.end106.sink.split:                             ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %76 = getelementptr inbounds %struct.enetc_streamid, ptr %sid, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %79 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %call7.i.i, align 8
  %add.ptr.i184 = getelementptr %struct.enetc_streamid, ptr %sid, i32 0, i32 1, i32 0, i32 4
  %80 = ptrtoint ptr %add.ptr.i184 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i184, align 2
  %add.ptr1.i185 = getelementptr i8, ptr %call7.i.i, i32 4
  %82 = ptrtoint ptr %add.ptr1.i185 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %add.ptr1.i185, align 4
  %vid93 = getelementptr inbounds %struct.enetc_streamid, ptr %sid, i32 0, i32 3
  %83 = ptrtoint ptr %vid93 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %vid93, align 4
  %85 = and i16 %84, 4095
  %tagged96 = getelementptr inbounds %struct.enetc_streamid, ptr %sid, i32 0, i32 4
  %86 = ptrtoint ptr %tagged96 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %tagged96, align 2
  %and99 = zext i8 %87 to i16
  %shl100 = shl i16 %and99, 14
  %or101 = or i16 %shl100, %85
  %add102 = or i16 %or101, 4096
  %88 = ptrtoint ptr %vid_vidm_tg to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %add102, ptr %vid_vidm_tg, align 2
  br label %if.end106

if.end106:                                        ; preds = %if.end106.sink.split, %if.end46.if.end106_crit_edge
  %89 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %si, align 4
  %call108 = call i32 @enetc_send_cmd(ptr noundef %90, ptr noundef nonnull %cbd) #8
  br label %out

out:                                              ; preds = %if.end106, %if.end43.out_crit_edge, %if.end30.out_crit_edge, %if.then28
  %err.0 = phi i32 [ -12, %if.then28 ], [ %call40, %if.end30.out_crit_edge ], [ %call108, %if.end106 ], [ 0, %if.end43.out_crit_edge ]
  %91 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %si, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  call void @debug_dma_mapping_error(ptr noundef %dev111, i32 noundef %retval.0.i182) #8
  br i1 %cmp.i, label %out.if.end119_crit_edge, label %if.then114

out.if.end119_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then114:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %si, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %dev117 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  call void @dma_unmap_page_attrs(ptr noundef %dev117, i32 noundef %retval.0.i182, i32 noundef 8, i32 noundef 2, i32 noundef 0) #8
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %out.if.end119_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %if.end11.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end119 ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -95, %if.end3.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 207, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @enetc_setup_tc_cbs._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @enetc_setup_tc_cbs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 232, i32 4}
!10 = !{ptr @enetc_setup_tc_cbs._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @enetc_setup_tc_cbs._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 241, i32 3}
!14 = !{ptr @enetc_setup_tc_cbs._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @enetc_setup_tc_cbs._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @enetc_psfp_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1542, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 116, i32 30}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @enetc_config_clsflower.__msg, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1359, i32 3}
!27 = !{ptr @enetc_config_clsflower.__msg.15, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1368, i32 3}
!29 = !{ptr @enetc_config_clsflower.__msg.16, !30, !"__msg", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1375, i32 4}
!31 = !{ptr @enetc_config_clsflower.__msg.17, !32, !"__msg", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1379, i32 3}
!33 = !{ptr @enetc_act_fwd, !34, !"enetc_act_fwd", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 432, i32 27}
!35 = !{ptr @enetc_psfp_parse_clsflower.__msg, !36, !"__msg", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1094, i32 3}
!37 = !{ptr @enetc_psfp_parse_clsflower.__msg.18, !38, !"__msg", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1121, i32 4}
!39 = !{ptr @enetc_psfp_parse_clsflower.__msg.19, !40, !"__msg", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1129, i32 5}
!41 = !{ptr @enetc_psfp_parse_clsflower.__msg.20, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1140, i32 5}
!43 = !{ptr @enetc_psfp_parse_clsflower.__msg.21, !44, !"__msg", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1149, i32 3}
!45 = !{ptr @enetc_psfp_parse_clsflower.__msg.22, !46, !"__msg", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1161, i32 5}
!47 = !{ptr @enetc_psfp_parse_clsflower.__msg.23, !48, !"__msg", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1169, i32 5}
!49 = !{ptr @enetc_psfp_parse_clsflower.__msg.24, !50, !"__msg", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1186, i32 3}
!51 = !{ptr @enetc_psfp_parse_clsflower.__msg.25, !52, !"__msg", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1192, i32 3}
!53 = !{ptr @enetc_psfp_parse_clsflower.__msg.26, !54, !"__msg", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1234, i32 4}
!55 = !{ptr @enetc_psfp_parse_clsflower.__msg.27, !56, !"__msg", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1269, i32 4}
!57 = !{ptr @enetc_psfp_destroy_clsflower.__msg, !58, !"__msg", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 1394, i32 3}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/net/flow_offload.h", i32 418, i32 2}
!61 = !{ptr @epsfp, !62, !"epsfp", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 452, i32 26}
!63 = !{ptr @enetc_block_cb_list, !64, !"enetc_block_cb_list", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_qos.c", i32 456, i32 8}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 5029392}
!75 = !{i64 2152569741}
!76 = !{i64 2152571096}
!77 = !{i64 5028974}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2148214299, i64 2148214579, i64 2148214913, i64 2148215247}
!80 = !{!"auto-init"}
!81 = !{i64 728755, i64 728782, i64 728804, i64 728832}
!82 = !{i64 729163, i64 729190, i64 729223, i64 729244, i64 729271, i64 729297}
!83 = !{i64 2148369405, i64 2148369437, i64 2148369466, i64 2148369500, i64 2148369531, i64 2148369554}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i64 2148457430}
!86 = !{i64 2148371870, i64 2148371902, i64 2148371931, i64 2148371965, i64 2148371996, i64 2148372019}
!87 = !{i64 2150188207}
